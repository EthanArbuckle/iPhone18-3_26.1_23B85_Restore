uint64_t sub_1E4795E14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C130, &qword_1E487C6D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C138, &qword_1E487C6E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  if ((*(a1 + *(type metadata accessor for Event() + 56)) & 0xFE) == 6)
  {
    v11 = sub_1E4877F6C();
    v12 = *(v1 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 24);
    v27 = 0;
    sub_1E4795A68(a1, v1, &v21);
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v28 = v21;
    v33[1] = v22;
    v33[2] = v23;
    v33[3] = v24;
    v34 = v25;
    v33[0] = v21;
    sub_1E4773850(&v28, &v20, &qword_1ECF7C158, &qword_1E487C700);
    sub_1E47738B8(v33, &qword_1ECF7C158, &qword_1E487C700);
    *(v26 + 7) = v28;
    *(&v26[4] + 7) = v32;
    *(&v26[3] + 7) = v31;
    *(&v26[2] + 7) = v30;
    *(&v26[1] + 7) = v29;
    v13 = v26[0];
    *(v10 + 33) = v26[1];
    v14 = v26[3];
    *(v10 + 49) = v26[2];
    *(v10 + 65) = v14;
    *(v10 + 5) = *(&v26[3] + 15);
    v15 = v27;
    *v10 = v11;
    *(v10 + 1) = v12;
    v10[16] = v15;
    *(v10 + 17) = v13;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C148, &qword_1E487C6F0);
    sub_1E4773680(&qword_1EE2B0FE0, &qword_1ECF7C148, &qword_1E487C6F0);
    sub_1E479A7F8();
    return sub_1E487803C();
  }

  else
  {
    v17 = *(v1 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 24);
    *v6 = sub_1E4877F6C();
    *(v6 + 1) = v17;
    v6[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C140, &qword_1E487C6E8);
    sub_1E4795568(a1, v1, &v6[*(v18 + 44)]);
    sub_1E4773850(v6, v10, &qword_1ECF7C130, &qword_1E487C6D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C148, &qword_1E487C6F0);
    sub_1E4773680(&qword_1EE2B0FE0, &qword_1ECF7C148, &qword_1E487C6F0);
    sub_1E479A7F8();
    sub_1E487803C();
    return sub_1E47738B8(v6, &qword_1ECF7C130, &qword_1E487C6D8);
  }
}

uint64_t sub_1E479619C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v39 = a3;
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  v12 = *(a1 + 16);
  v40 = a1;
  v43 = v12;
  if (v12)
  {
    v13 = *(v9 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    v44 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a1 + v44;
    v16 = v12;
    do
    {
      sub_1E4799530(v15, v11, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v17 = v11[*(v4 + 56)];

      if ((v17 & 0xFE) == 6)
      {
        sub_1E4799598(v11, v8, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v14 + 16) + 1, 1);
          v14 = v45[0];
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1E4858038(v19 > 1, v20 + 1, 1);
          v14 = v45[0];
        }

        *(v14 + 16) = v20 + 1;
        sub_1E4799598(v8, v14 + v44 + v20 * v13, type metadata accessor for Event);
      }

      else
      {
        sub_1E4799600(v11, type metadata accessor for Event);
      }

      v15 += v13;
      --v16;
    }

    while (v16);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v14 + 16);

  v22 = v43;
  v23 = v43 - v21;
  if (v42)
  {
    if (v43 != v21 || v21 == 0)
    {
      if (__OFADD__(v23, v21))
      {
        __break(1u);
      }

      else if (qword_1EE2B4848 == -1)
      {
        goto LABEL_25;
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
LABEL_25:
      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E6530];
      *(v28 + 16) = xmmword_1E487A7E0;
      v30 = MEMORY[0x1E69E65A8];
      *(v28 + 56) = v29;
      *(v28 + 64) = v30;
      *(v28 + 32) = v22;
      v25 = sub_1E4878BAC();
      v27 = v31;

      goto LABEL_26;
    }

    swift_once();
    goto LABEL_25;
  }

  v25 = sub_1E486CDD0(v43 - v21, v21);
  v27 = v26;
LABEL_26:
  v45[0] = v25;
  v45[1] = v27;
  EventContent = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  v33 = v41;
  v34 = *(v41 + *(EventContent + 36) + 24);
  v35 = sub_1E4877F6C();
  v36 = v39;
  *v39 = v35;
  v36[1] = v34;
  *(v36 + 16) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C108, &unk_1E487C6B0);
  sub_1E4796660(v40, v23, v33, v45, v36 + *(v37 + 44));
}

uint64_t sub_1E4796660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a4;
  v93 = a3;
  v84 = a2;
  v95 = a5;
  v90 = type metadata accessor for ConflictColorBarView();
  v6 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C110, &qword_1E487C6C0);
  v8 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = (&v82 - v9);
  v98 = type metadata accessor for Event();
  v10 = *(v98 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v98);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v83 = &v82 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C118, &qword_1E487C6C8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v94 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v82 - v25;
  sub_1E4878D2C();
  v92 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *(a1 + 16);
  v87 = a1;
  v82 = v10;
  if (v26)
  {
    v27 = *(v10 + 80);
    v28 = *(v10 + 72);
    v97 = (v27 + 32) & ~v27;
    v29 = a1 + v97;
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E4799530(v29, v19, type metadata accessor for Event);
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v31 = v19[*(v98 + 56)];

      if ((v31 & 0xFE) == 6)
      {
        sub_1E4799598(v19, v14, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v30 + 16) + 1, 1);
          v30 = v99;
        }

        v34 = *(v30 + 16);
        v33 = *(v30 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1E4858038(v33 > 1, v34 + 1, 1);
          v30 = v99;
        }

        *(v30 + 16) = v34 + 1;
        sub_1E4799598(v14, v30 + v97 + v34 * v28, type metadata accessor for Event);
      }

      else
      {
        sub_1E4799600(v19, type metadata accessor for Event);
      }

      v29 += v28;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v30 + 16))
  {

    v37 = v93;
    v38 = v87;
    goto LABEL_20;
  }

  v35 = v83;
  sub_1E4799530(v30 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v83, type metadata accessor for Event);

  v36 = v85;
  sub_1E4799598(v35, v85, type metadata accessor for Event);
  v37 = v93;
  v38 = v87;
  if (v84)
  {
    sub_1E4799600(v36, type metadata accessor for Event);
LABEL_20:
    v39 = v37 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36);
    v40 = *v39 * 0.5;
    v41 = *(v39 + 40);
    KeyPath = swift_getKeyPath();
    v43 = v86;
    *v86 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v45 = v89;
    v44 = v90;
    *(v43 + *(v90 + 20)) = v38;
    *(v43 + *(v44 + 24)) = v40;
    *(v43 + *(v44 + 28)) = v41;
    sub_1E4799530(v43, v45, type metadata accessor for ConflictColorBarView);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C020, &qword_1E487C590);
    sub_1E479A2F8();
    sub_1E479978C(&qword_1ECF7C120, type metadata accessor for ConflictColorBarView);
    sub_1E487803C();
    v46 = type metadata accessor for ConflictColorBarView;
    v47 = v43;
    goto LABEL_29;
  }

  if (*(v36 + *(v98 + 56)) == 6)
  {
    v48 = MEMORY[0x1E69932E0];
  }

  else
  {
    v48 = MEMORY[0x1E69932F8];
  }

  v49 = *v48;
  sub_1E4878BDC();
  v50 = sub_1E487874C();
  v51 = *(v37 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 64);
  sub_1E487822C();
  v52 = sub_1E487829C();
  v53 = swift_getKeyPath();
  v54 = 0;
  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C50 != -1)
    {
      swift_once();
    }

    v54 = qword_1EE2B3C58;
  }

  v55 = swift_getKeyPath();
  v56 = v89;
  *v89 = v50;
  v56[1] = v53;
  v56[2] = v52;
  v56[3] = v55;
  v56[4] = v54;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C020, &qword_1E487C590);
  sub_1E479A2F8();
  sub_1E479978C(&qword_1ECF7C120, type metadata accessor for ConflictColorBarView);
  sub_1E487803C();
  v46 = type metadata accessor for Event;
  v47 = v36;
LABEL_29:
  sub_1E4799600(v47, v46);
  v57 = v91[1];
  v99 = *v91;
  v100 = v57;
  sub_1E477A374();

  v58 = sub_1E487848C();
  v60 = v59;
  v62 = v61;
  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C50 != -1)
    {
      swift_once();
    }
  }

  v63 = sub_1E48783FC();
  v65 = v64;
  v67 = v66;

  sub_1E477A3C8(v58, v60, v62 & 1);

  v68 = *(v37 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 64);
  v69 = sub_1E487842C();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  sub_1E477A3C8(v63, v65, v67 & 1);

  v76 = swift_getKeyPath();
  v77 = v96;
  v78 = v94;
  sub_1E4773850(v96, v94, &qword_1ECF7C118, &qword_1E487C6C8);
  v79 = v95;
  sub_1E4773850(v78, v95, &qword_1ECF7C118, &qword_1E487C6C8);
  v80 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C128, &qword_1E487C6D0) + 48);
  sub_1E478B8E0(v69, v71, v73 & 1);

  sub_1E47738B8(v77, &qword_1ECF7C118, &qword_1E487C6C8);
  *v80 = v69;
  *(v80 + 8) = v71;
  *(v80 + 16) = v73 & 1;
  *(v80 + 24) = v75;
  *(v80 + 32) = v76;
  *(v80 + 40) = 1;
  *(v80 + 48) = 0;
  sub_1E477A3C8(v69, v71, v73 & 1);

  sub_1E47738B8(v78, &qword_1ECF7C118, &qword_1E487C6C8);
}

uint64_t sub_1E4797034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v271 = a1;
  v245 = a2;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C060, &qword_1E487C608);
  v2 = *(*(v229 - 8) + 64);
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v212 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C068, &qword_1E487C610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v215 = &v212 - v6;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C070, &qword_1E487C618);
  v7 = *(*(v220 - 8) + 64);
  MEMORY[0x1EEE9AC00](v220);
  v222 = &v212 - v8;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C078, &qword_1E487C620);
  v9 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v212 - v10;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C080, &qword_1E487C628);
  v11 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221);
  v218 = &v212 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C088, &qword_1E487C630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v226 = &v212 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C090, &qword_1E487C638);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v224 = &v212 - v18;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C098, &qword_1E487C640);
  v19 = *(*(v242 - 8) + 64);
  MEMORY[0x1EEE9AC00](v242);
  v228 = &v212 - v20;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0A0, &qword_1E487C648);
  v21 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238);
  v241 = &v212 - v22;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0A8, &qword_1E487C650);
  v23 = *(*(v240 - 8) + 64);
  MEMORY[0x1EEE9AC00](v240);
  v233 = &v212 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0B0, &qword_1E487C658);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v234 = &v212 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v232 = &v212 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v231 = &v212 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v236 = &v212 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v237 = &v212 - v35;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0B8, &qword_1E487C660);
  v36 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v239 = &v212 - v37;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0C0, &qword_1E487C668);
  v38 = *(*(v252 - 8) + 64);
  MEMORY[0x1EEE9AC00](v252);
  v254 = &v212 - v39;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0C8, &qword_1E487C670);
  v40 = *(*(v253 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v253);
  v225 = (&v212 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x1EEE9AC00](v41);
  v214 = &v212 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v213 = &v212 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v219 = (&v212 - v48);
  MEMORY[0x1EEE9AC00](v47);
  v244 = (&v212 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0D0, &qword_1E487C678);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v264 = &v212 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v266 = &v212 - v54;
  v274 = type metadata accessor for Event();
  v55 = *(v274 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x1EEE9AC00](v274);
  v265 = &v212 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v212 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v272 = &v212 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v273 = &v212 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v243 = &v212 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v212 - v68;
  v276 = sub_1E487719C();
  v260 = *(v276 - 8);
  v70 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v276);
  v259 = &v212 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0D8, &qword_1E487C680);
  v251 = *(v72 - 8);
  v73 = *(v251 + 64);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v263 = &v212 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v270 = &v212 - v76;
  sub_1E4878D2C();
  v250 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v267 = v61;
  v227 = v16;
  v261 = v72;
  EventContent = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  v78 = v271;
  v79 = (v271 + *(EventContent + 32));
  v80 = v79[1];
  v235 = v13;
  v275 = v55;
  v268 = EventContent;
  v223 = v4;
  v258 = v80;
  if (!v80)
  {
    v269 = 0;
    v249 = 0;
    v247 = 0;
    v262 = 0;
    v248 = 0;
    v246 = 0;
    goto LABEL_10;
  }

  v277 = *v79;
  v278 = v80;
  sub_1E477A374();

  v81 = sub_1E487848C();
  v83 = v82;
  v85 = v84;
  v86 = *(v78 + *(EventContent + 36) + 64);
  v87 = sub_1E487842C();
  v55 = v88;
  LOBYTE(EventContent) = v89;
  v269 = v90;
  sub_1E477A3C8(v81, v83, v85 & 1);

  if ((sub_1E4794C88() & 1) == 0)
  {
    sub_1E48786FC();
    goto LABEL_9;
  }

  if (qword_1EE2B3C50 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {

LABEL_9:
    v91 = sub_1E48783FC();
    v93 = v92;
    LODWORD(v262) = v94;
    v96 = v95;

    sub_1E477A3C8(v87, v55, EventContent & 1);

    KeyPath = swift_getKeyPath();
    v269 = v91;
    v249 = v93;
    v247 = v262 & 1;
    sub_1E478B8E0(v91, v93, v247);
    v262 = v96;

    v248 = KeyPath;

    v246 = 1;
    v78 = v271;
    v55 = v275;
    EventContent = v268;
LABEL_10:
    (*(v260 + 16))(v259, v78 + *(EventContent + 28), v276);
    v259 = sub_1E487847C();
    v257 = v98;
    v256 = v99;
    v260 = v100;
    v101 = *(v78 + *(EventContent + 24));
    v102 = *(v101 + 16);
    v276 = v101;
    if (v102)
    {
      v103 = 0;
      v87 = *(v274 + 56);
      v104 = v101 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v105 = v102 - 1;
      LOBYTE(EventContent) = MEMORY[0x1E69E85E0];
      while (v103 < *(v276 + 16))
      {
        sub_1E4799530(v104 + *(v55 + 72) * v103, v69, type metadata accessor for Event);
        sub_1E4878D1C();
        sub_1E4878D0C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v106 = *(v69 + v87);
        sub_1E4799600(v69, type metadata accessor for Event);

        if ((v106 - 3) <= 1)
        {
          v107 = v105 == v103++;
          v55 = v275;
          if (!v107)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_69;
    }

LABEL_18:
    v108 = v256;
    v109 = v259;
    v110 = v257;
    v111 = sub_1E48783EC();
    v113 = v112;
    v115 = v114;
    sub_1E477A3C8(v109, v110, v108 & 1);

    v116 = v271;
    sub_1E4795224();
    v117 = sub_1E48783FC();
    v119 = v118;
    LOBYTE(v110) = v120;
    v260 = v121;

    sub_1E477A3C8(v111, v113, v115 & 1);

    v122 = *(v116 + *(v268 + 36) + 56);
    v123 = sub_1E487842C();
    v125 = v124;
    LOBYTE(v109) = v126;
    EventContent = v127;
    sub_1E477A3C8(v117, v119, v110 & 1);

    v128 = swift_getKeyPath();
    v277 = v123;
    v278 = v125;
    v279 = v109 & 1;
    v280 = EventContent;
    v281 = v128;
    v282 = 1;
    v283 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E477A490();
    sub_1E48784AC();
    sub_1E477A3C8(v123, v125, v109 & 1);

    if (v258)
    {
      v129 = v244;
      sub_1E479619C(v276, 0, v244);
      sub_1E4773850(v129, v254, &qword_1ECF7C0C8, &qword_1E487C670);
      swift_storeEnumTagMultiPayload();
      sub_1E479A688();
      sub_1E479A740();
      v69 = v266;
      sub_1E487803C();
      sub_1E47738B8(v129, &qword_1ECF7C0C8, &qword_1E487C670);
      v130 = v245;
      v131 = v261;
      goto LABEL_67;
    }

    v132 = v276;
    v87 = *(v276 + 16);
    v69 = v266;
    if (v87 == 2)
    {
      v133 = v266;
      v134 = v275;
      v135 = v276;
      v136 = v276 + ((*(v275 + 80) + 32) & ~*(v275 + 80));
      v137 = v243;
      sub_1E4799530(v136, v243, type metadata accessor for Event);
      v138 = v237;
      sub_1E4795E14(v137);
      result = sub_1E4799600(v137, type metadata accessor for Event);
      if (*(v135 + 16) >= 2uLL)
      {
        sub_1E4799530(v136 + *(v134 + 72), v137, type metadata accessor for Event);
        v140 = v236;
        sub_1E4795E14(v137);
        sub_1E4799600(v137, type metadata accessor for Event);
        v141 = v231;
        sub_1E4773850(v138, v231, &qword_1ECF7C0B0, &qword_1E487C658);
        v142 = v232;
        sub_1E4773850(v140, v232, &qword_1ECF7C0B0, &qword_1E487C658);
        v143 = v233;
        sub_1E4773850(v141, v233, &qword_1ECF7C0B0, &qword_1E487C658);
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C100, &qword_1E487C6A8);
        sub_1E4773850(v142, v143 + *(v144 + 48), &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E47738B8(v142, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E47738B8(v141, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E4773850(v143, v241, &qword_1ECF7C0A8, &qword_1E487C650);
        swift_storeEnumTagMultiPayload();
        sub_1E4773680(&qword_1EE2B0E80, &qword_1ECF7C0A8, &qword_1E487C650);
        sub_1E479A5D0();
        v145 = v239;
        sub_1E487803C();
        sub_1E47738B8(v143, &qword_1ECF7C0A8, &qword_1E487C650);
        sub_1E47738B8(v140, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E47738B8(v138, &qword_1ECF7C0B0, &qword_1E487C658);
        v130 = v245;
        v131 = v261;
        v69 = v133;
        goto LABEL_66;
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v55 = v275;
    if (!v87)
    {
      break;
    }

    v146 = 0;
    v268 = MEMORY[0x1E69E7CC0];
    v147 = v273;
    while (v146 < *(v132 + 16))
    {
      v148 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v69 = *(v55 + 72);
      sub_1E4799530(v132 + v148 + v69 * v146, v147, type metadata accessor for Event);
      sub_1E4878D1C();
      LOBYTE(EventContent) = sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v147 = v273;
      v149 = v273[*(v274 + 56)];

      if ((v149 & 0xFE) == 6)
      {
        sub_1E4799598(v147, v272, type metadata accessor for Event);
        v150 = v268;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152 = v150;
        v277 = v150;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v150 + 16) + 1, 1);
          v152 = v277;
        }

        v153 = v152;
        v155 = *(v152 + 16);
        v154 = *(v152 + 24);
        EventContent = v155 + 1;
        if (v155 >= v154 >> 1)
        {
          sub_1E4858038(v154 > 1, v155 + 1, 1);
          v153 = v277;
        }

        *(v153 + 16) = EventContent;
        v268 = v153;
        sub_1E4799598(v272, v153 + v148 + v155 * v69, type metadata accessor for Event);
      }

      else
      {
        sub_1E4799600(v147, type metadata accessor for Event);
      }

      v132 = v276;
      if (v87 == ++v146)
      {
        v273 = *(v276 + 16);
        if (v273)
        {
          v55 = 0;
          v156 = v276 + v148;
          EventContent = MEMORY[0x1E69E7CC0];
          v87 = v267;
          while (v55 < *(v276 + 16))
          {
            sub_1E4799530(v156, v87, type metadata accessor for Event);
            sub_1E4878D1C();
            sub_1E4878D0C();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v87 = v267;
            v157 = v267[*(v274 + 56)];

            if ((v157 & 0xFE) == 6)
            {
              sub_1E4799600(v87, type metadata accessor for Event);
            }

            else
            {
              sub_1E4799598(v87, v265, type metadata accessor for Event);
              v158 = swift_isUniquelyReferenced_nonNull_native();
              v277 = EventContent;
              if ((v158 & 1) == 0)
              {
                sub_1E4858038(0, *(EventContent + 16) + 1, 1);
                EventContent = v277;
              }

              v160 = *(EventContent + 16);
              v159 = *(EventContent + 24);
              if (v160 >= v159 >> 1)
              {
                sub_1E4858038(v159 > 1, v160 + 1, 1);
                EventContent = v277;
              }

              *(EventContent + 16) = v160 + 1;
              sub_1E4799598(v265, EventContent + v148 + v160 * v69, type metadata accessor for Event);
            }

            ++v55;
            v156 += v69;
            if (v273 == v55)
            {
              v69 = v266;
              v55 = v275;
              goto LABEL_52;
            }
          }

          goto LABEL_70;
        }

        EventContent = MEMORY[0x1E69E7CC0];
        v69 = v266;
LABEL_52:
        v161 = v268;
        goto LABEL_53;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v161 = MEMORY[0x1E69E7CC0];
  EventContent = MEMORY[0x1E69E7CC0];
LABEL_53:
  v162 = v161;
  v163 = *(v161 + 16);
  v164 = v243;
  if (v163)
  {
    v165 = *(EventContent + 16);
    if (v165)
    {
      if (v163 == 1)
      {
        sub_1E4799530(v162 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v243, type metadata accessor for Event);

        v166 = v237;
        sub_1E4795E14(v164);
        sub_1E4799600(v164, type metadata accessor for Event);
        v167 = v244;
        sub_1E479619C(EventContent, 0, v244);

        v168 = v236;
        sub_1E4773850(v166, v236, &qword_1ECF7C0B0, &qword_1E487C658);
        v169 = v219;
        sub_1E4773850(v167, v219, &qword_1ECF7C0C8, &qword_1E487C670);
        v170 = v226;
        sub_1E4773850(v168, v226, &qword_1ECF7C0B0, &qword_1E487C658);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0E0, &qword_1E487C688);
        sub_1E4773850(v169, v170 + *(v171 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v169, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v168, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E4773850(v170, v217, &qword_1ECF7C088, &qword_1E487C630);
        swift_storeEnumTagMultiPayload();
        sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630);
        v172 = v218;
        sub_1E487803C();
        sub_1E4773850(v172, v222, &qword_1ECF7C080, &qword_1E487C628);
        swift_storeEnumTagMultiPayload();
        sub_1E479A520();
        sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610);
        v173 = v224;
        sub_1E487803C();
        v174 = v228;
        v69 = v266;
        sub_1E47738B8(v172, &qword_1ECF7C080, &qword_1E487C628);
        sub_1E47738B8(v170, &qword_1ECF7C088, &qword_1E487C630);
        sub_1E47738B8(v167, &qword_1ECF7C0C8, &qword_1E487C670);
        v175 = v166;
        goto LABEL_62;
      }

      if (v165 == 1)
      {
        sub_1E4799530(EventContent + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v243, type metadata accessor for Event);

        v186 = v237;
        sub_1E4795E14(v164);
        sub_1E4799600(v164, type metadata accessor for Event);
        v187 = v244;
        sub_1E479619C(v162, 0, v244);

        v188 = v236;
        sub_1E4773850(v186, v236, &qword_1ECF7C0B0, &qword_1E487C658);
        v189 = v219;
        sub_1E4773850(v187, v219, &qword_1ECF7C0C8, &qword_1E487C670);
        v190 = v226;
        sub_1E4773850(v188, v226, &qword_1ECF7C0B0, &qword_1E487C658);
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0E0, &qword_1E487C688);
        sub_1E4773850(v189, v190 + *(v191 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v189, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v188, &qword_1ECF7C0B0, &qword_1E487C658);
        sub_1E4773850(v190, v217, &qword_1ECF7C088, &qword_1E487C630);
        swift_storeEnumTagMultiPayload();
        sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630);
        v192 = v218;
        sub_1E487803C();
        sub_1E4773850(v192, v222, &qword_1ECF7C080, &qword_1E487C628);
        swift_storeEnumTagMultiPayload();
        sub_1E479A520();
        sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610);
        v173 = v224;
        sub_1E487803C();
        v174 = v228;
        v69 = v266;
        sub_1E47738B8(v192, &qword_1ECF7C080, &qword_1E487C628);
        sub_1E47738B8(v190, &qword_1ECF7C088, &qword_1E487C630);
        sub_1E47738B8(v187, &qword_1ECF7C0C8, &qword_1E487C670);
        v175 = v186;
LABEL_62:
        sub_1E47738B8(v175, &qword_1ECF7C0B0, &qword_1E487C658);
        v130 = v245;
        v131 = v261;
      }

      else
      {
        v193 = v244;
        sub_1E479619C(EventContent, 0, v244);

        v194 = v219;
        sub_1E479619C(v162, 0, v219);

        v195 = v193;
        v196 = v213;
        sub_1E4773850(v195, v213, &qword_1ECF7C0C8, &qword_1E487C670);
        v197 = v214;
        sub_1E4773850(v194, v214, &qword_1ECF7C0C8, &qword_1E487C670);
        v198 = v215;
        sub_1E4773850(v196, v215, &qword_1ECF7C0C8, &qword_1E487C670);
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0F8, &qword_1E487C6A0);
        sub_1E4773850(v197, v198 + *(v199 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v197, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v196, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E4773850(v198, v222, &qword_1ECF7C068, &qword_1E487C610);
        swift_storeEnumTagMultiPayload();
        sub_1E479A520();
        sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610);
        v173 = v224;
        sub_1E487803C();
        sub_1E47738B8(v198, &qword_1ECF7C068, &qword_1E487C610);
        sub_1E47738B8(v194, &qword_1ECF7C0C8, &qword_1E487C670);
        sub_1E47738B8(v244, &qword_1ECF7C0C8, &qword_1E487C670);
        v130 = v245;
        v131 = v261;
        v174 = v228;
      }

      sub_1E4773850(v173, v230, &qword_1ECF7C090, &qword_1E487C638);
      swift_storeEnumTagMultiPayload();
      sub_1E479A468();
      sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630);
      sub_1E487803C();
      sub_1E47738B8(v173, &qword_1ECF7C090, &qword_1E487C638);
      v145 = v239;
LABEL_65:
      sub_1E4773850(v174, v241, &qword_1ECF7C098, &qword_1E487C640);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B0E80, &qword_1ECF7C0A8, &qword_1E487C650);
      sub_1E479A5D0();
      sub_1E487803C();
      sub_1E47738B8(v174, &qword_1ECF7C098, &qword_1E487C640);
LABEL_66:
      sub_1E4773850(v145, v254, &qword_1ECF7C0B8, &qword_1E487C660);
      swift_storeEnumTagMultiPayload();
      sub_1E479A688();
      sub_1E479A740();
      sub_1E487803C();
      sub_1E47738B8(v145, &qword_1ECF7C0B8, &qword_1E487C660);
LABEL_67:
      v200 = v251;
      v276 = *(v251 + 16);
      v201 = v263;
      (v276)(v263, v270, v131);
      sub_1E4773850(v69, v264, &qword_1ECF7C0D0, &qword_1E487C678);
      v202 = v249;
      *v130 = v269;
      *(v130 + 8) = v202;
      v203 = v247;
      v204 = v262;
      *(v130 + 16) = v247;
      *(v130 + 24) = v204;
      v205 = v246;
      *(v130 + 32) = v248;
      *(v130 + 40) = v205;
      *(v130 + 48) = 0;
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0F0, &qword_1E487C698);
      (v276)(v130 + *(v206 + 48), v201, v131);
      v207 = v264;
      sub_1E4773850(v264, v130 + *(v206 + 64), &qword_1ECF7C0D0, &qword_1E487C678);
      v208 = v269;
      v209 = v262;
      sub_1E479A1A0(v269, v202, v203, v262);
      sub_1E479A1F0(v208, v202, v203, v209);
      sub_1E47738B8(v266, &qword_1ECF7C0D0, &qword_1E487C678);
      v210 = *(v200 + 8);
      v211 = v261;
      v210(v270, v261);
      sub_1E47738B8(v207, &qword_1ECF7C0D0, &qword_1E487C678);
      v210(v263, v211);
      sub_1E479A1F0(v269, v202, v203, v209);
    }
  }

  v176 = v276;
  if (!*(v276 + 16))
  {
    goto LABEL_73;
  }

  v177 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  sub_1E4799530(v276 + v177, v164, type metadata accessor for Event);
  v178 = v234;
  sub_1E4795E14(v164);
  result = sub_1E4799600(v164, type metadata accessor for Event);
  v179 = *(v176 + 16);
  if (v179)
  {
    sub_1E4860F20(v176, v176 + v177, 1, (2 * v179) | 1);
    v180 = v225;
    sub_1E479619C(v181, 1, v225);

    v182 = v237;
    sub_1E4773850(v178, v237, &qword_1ECF7C0B0, &qword_1E487C658);
    v183 = v244;
    sub_1E4773850(v180, v244, &qword_1ECF7C0C8, &qword_1E487C670);
    v184 = v226;
    sub_1E4773850(v182, v226, &qword_1ECF7C0B0, &qword_1E487C658);
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0E0, &qword_1E487C688);
    sub_1E4773850(v183, v184 + *(v185 + 48), &qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E47738B8(v183, &qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E47738B8(v182, &qword_1ECF7C0B0, &qword_1E487C658);
    sub_1E4773850(v184, v230, &qword_1ECF7C088, &qword_1E487C630);
    swift_storeEnumTagMultiPayload();
    sub_1E479A468();
    sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630);
    v174 = v228;
    sub_1E487803C();
    sub_1E47738B8(v184, &qword_1ECF7C088, &qword_1E487C630);
    sub_1E47738B8(v180, &qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E47738B8(v234, &qword_1ECF7C0B0, &qword_1E487C658);
    v130 = v245;
    v145 = v239;
    v131 = v261;
    v69 = v266;
    goto LABEL_65;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1E4799434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4877FBC();
  v6 = *(v2 + *(a1 + 36) + 16);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C058, &qword_1E487C600);
  return sub_1E4797034(v2, a2 + *(v7 + 44));
}

uint64_t sub_1E47994A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RectangularNextEventContentView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1E47902EC(v4, a1);
}

uint64_t sub_1E4799530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4799598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4799600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47996A0()
{
  result = qword_1EE2B1258;
  if (!qword_1EE2B1258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF50, &qword_1E487C1C0);
    sub_1E479978C(qword_1EE2B1CA8, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    sub_1E479978C(qword_1EE2B1D50, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1258);
  }

  return result;
}

uint64_t sub_1E479978C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E4799824()
{
  sub_1E47998AC();
  if (v0 <= 0x3F)
  {
    sub_1E4799944();
    if (v1 <= 0x3F)
    {
      sub_1E47999E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E47998AC()
{
  if (!qword_1EE2B46A0)
  {
    sub_1E487719C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF68, &qword_1E487C298);
    type metadata accessor for Event();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2B46A0);
    }
  }
}

void sub_1E4799944()
{
  if (!qword_1EE2B4698)
  {
    sub_1E487719C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF68, &qword_1E487C298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF70, &unk_1E487C2A0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2B4698);
    }
  }
}

uint64_t sub_1E47999E8()
{
  result = qword_1EE2B0DA8;
  if (!qword_1EE2B0DA8)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE2B0DA8);
  }

  return result;
}

void sub_1E4799A40()
{
  sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1E4799BBC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1E4799BBC(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1E487719C();
        if (v3 <= 0x3F)
        {
          sub_1E4799C20(319, &qword_1EE2B0E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E4799BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E4799C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E4799C98()
{
  sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1E4799BBC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Event();
      if (v2 <= 0x3F)
      {
        sub_1E487719C();
        if (v3 <= 0x3F)
        {
          sub_1E4799C20(319, &qword_1EE2B0E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E4799DFC()
{
  sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1E4877CCC();
    if (v1 <= 0x3F)
    {
      sub_1E4799F04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E4799F04()
{
  result = qword_1EE2B0D18;
  if (!qword_1EE2B0D18)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2B0D18);
  }

  return result;
}

unint64_t sub_1E4799FD0()
{
  result = qword_1EE2B1388;
  if (!qword_1EE2B1388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF88, &qword_1E487C408);
    sub_1E479A05C();
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1388);
  }

  return result;
}

unint64_t sub_1E479A05C()
{
  result = qword_1EE2B14C8;
  if (!qword_1EE2B14C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BFA0, &qword_1E487C420);
    sub_1E4773680(&qword_1EE2B1010, &qword_1ECF7BF98, &qword_1E487C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14C8);
  }

  return result;
}

unint64_t sub_1E479A114()
{
  result = qword_1EE2B11F0;
  if (!qword_1EE2B11F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BFA8, &qword_1E487C428);
    sub_1E4799FD0();
    sub_1E479A05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11F0);
  }

  return result;
}

uint64_t sub_1E479A1A0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E478B8E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E479A1F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E477A3C8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1E479A240()
{
  result = qword_1EE2B1400;
  if (!qword_1EE2B1400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C000, &unk_1E48825D0);
    sub_1E477A490();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1400);
  }

  return result;
}

unint64_t sub_1E479A2F8()
{
  result = qword_1EE2B1398;
  if (!qword_1EE2B1398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C020, &qword_1E487C590);
    sub_1E479A3B0();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1398);
  }

  return result;
}

unint64_t sub_1E479A3B0()
{
  result = qword_1EE2B14D8;
  if (!qword_1EE2B14D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C028, &qword_1E487C598);
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14D8);
  }

  return result;
}

unint64_t sub_1E479A468()
{
  result = qword_1EE2B1128;
  if (!qword_1EE2B1128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C090, &qword_1E487C638);
    sub_1E479A520();
    sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1128);
  }

  return result;
}

unint64_t sub_1E479A520()
{
  result = qword_1EE2B1170;
  if (!qword_1EE2B1170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C080, &qword_1E487C628);
    sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1170);
  }

  return result;
}

unint64_t sub_1E479A5D0()
{
  result = qword_1EE2B1110;
  if (!qword_1EE2B1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C098, &qword_1E487C640);
    sub_1E479A468();
    sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1110);
  }

  return result;
}

unint64_t sub_1E479A688()
{
  result = qword_1EE2B14B8;
  if (!qword_1EE2B14B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C0C8, &qword_1E487C670);
    sub_1E4773680(&qword_1EE2B0FA8, &qword_1ECF7C0E8, &qword_1E487C690);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14B8);
  }

  return result;
}

unint64_t sub_1E479A740()
{
  result = qword_1EE2B1178;
  if (!qword_1EE2B1178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C0B8, &qword_1E487C660);
    sub_1E4773680(&qword_1EE2B0E80, &qword_1ECF7C0A8, &qword_1E487C650);
    sub_1E479A5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1178);
  }

  return result;
}

unint64_t sub_1E479A7F8()
{
  result = qword_1EE2B14C0;
  if (!qword_1EE2B14C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C130, &qword_1E487C6D8);
    sub_1E4773680(&qword_1EE2B1018, &qword_1ECF7C150, &qword_1E487C6F8);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14C0);
  }

  return result;
}

uint64_t sub_1E479A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for RectangularNextEventContentView.RedactionProvider() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v11);
  return sub_1E4791B44(a1, v2 + v8, *(v2 + v9), *(v2 + (v9 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v9 & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + v10), *(v2 + v10 + 8), a2, *(v2 + v11 + 8), v5);
}

uint64_t sub_1E479A9C8(uint64_t a1)
{
  v2 = sub_1E487722C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v56[-v9];
  v11 = type metadata accessor for Event();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v58 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56[-v15];
  v70 = type metadata accessor for DayEvents();
  v17 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(a1 + 16);
  v69 = v21;
  if (!v21)
  {
    v53 = 0;
    LOBYTE(v25) = 0;
    return v21 | v53 | v25 & 1;
  }

  v59 = v16;
  v75 = v11;
  v60 = v10;
  v22 = 0;
  v57 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v67 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v26 = 0;
  v66 = (v3 + 8);
  v65 = *(v18 + 72);
  v68 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = v2;
  v61 = v6;
  do
  {
    v73 = v26;
    sub_1E479B13C(v67 + v65 * v26, v20, type metadata accessor for DayEvents);
    v27 = *(v70 + 20);
    v72 = *(*&v20[*(v70 + 24)] + 16) != 0;
    v28 = *&v20[v27];
    v29 = *(v28 + 16);
    v74 = v25;
    if (v29)
    {
      v30 = *(v63 + 80);
      v71 = v28;
      v31 = v28 + ((v30 + 32) & ~v30);
      v32 = *(v63 + 72);
      v64 = v31;
      v33 = v60;
      v34 = v75;
      v35 = v59;
      do
      {
        sub_1E479B13C(v31, v35, type metadata accessor for Event);
        v24 |= *(v35 + v34[7]) != 0.0;
        sub_1E479B1A4(v35 + v34[15], v33);
        v36 = type metadata accessor for Location();
        v23 |= (*(*(v36 - 8) + 48))(v33, 1, v36) != 1;
        sub_1E47738B8(v33, &qword_1ECF7C048, &qword_1E487C5F0);
        v37 = v32;
        v38 = *(v35 + v34[14]);
        sub_1E479B2E0(v35, type metadata accessor for Event);
        v39 = v38 & 0xFE;
        v32 = v37;
        v22 |= v39 == 6;
        v31 += v37;
        --v29;
      }

      while (v29);
      v40 = *(v71 + 16);
      if (v40)
      {
        *&v78 = MEMORY[0x1E69E7CC0];
        sub_1E48581AC(0, v40, 0);
        v41 = v78;
        v42 = v58;
        v43 = v64;
        do
        {
          sub_1E479B13C(v43, v42, type metadata accessor for Event);
          v44 = v75[5];
          v45 = sub_1E487732C();
          *(&v81 + 1) = v45;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
          (*(*(v45 - 8) + 16))(boxed_opaque_existential_0, v42 + v44, v45);
          sub_1E479B2E0(v42, type metadata accessor for Event);
          *&v78 = v41;
          v48 = *(v41 + 16);
          v47 = *(v41 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1E48581AC((v47 > 1), v48 + 1, 1);
            v41 = v78;
          }

          *(v41 + 16) = v48 + 1;
          sub_1E479B278(&v80, (v41 + 32 * v48 + 32));
          v43 += v37;
          --v40;
        }

        while (v40);
      }

      v2 = v62;
      v6 = v61;
    }

    v49 = objc_allocWithZone(MEMORY[0x1E696AB50]);
    v50 = sub_1E4878C9C();

    v51 = [v49 initWithArray_];

    sub_1E4878DFC();
    sub_1E479B288();
    while (1)
    {
      sub_1E4878E6C();
      if (!v79)
      {

        (*v66)(v6, v2);
        v80 = 0u;
        v81 = 0u;
        goto LABEL_4;
      }

      sub_1E479B278(&v78, v76);
      __swift_project_boxed_opaque_existential_0(v76, v77);
      v52 = [v51 countForObject_];
      swift_unknownObjectRelease();
      if (v52 > 1)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    (*v66)(v6, v2);
    sub_1E479B278(v76, &v80);
    v57 = 1;
LABEL_4:
    v26 = v73 + 1;
    v25 = v72 | v74;
    sub_1E47738B8(&v80, &qword_1ECF7C1B8, &unk_1E487C760);
    v20 = v68;
    sub_1E479B2E0(v68, type metadata accessor for DayEvents);
  }

  while (v26 != v69);
  v53 = 0x1000000;
  if (v22)
  {
    v53 = 0x101000000;
  }

  v54 = 0x100000000;
  if ((v22 & 1) == 0)
  {
    v54 = 0;
  }

  if ((v57 & 1) == 0)
  {
    v53 = v54;
  }

  if ((v23 & 1) == 0)
  {
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_32:
    v21 = 0;
    return v21 | v53 | v25 & 1;
  }

  v53 |= 0x10000uLL;
  if ((v24 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v21 = 256;
  return v21 | v53 | v25 & 1;
}

uint64_t sub_1E479B13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E479B1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1E479B278(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1E479B288()
{
  result = qword_1EE2B5A10;
  if (!qword_1EE2B5A10)
  {
    sub_1E487722C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A10);
  }

  return result;
}

uint64_t sub_1E479B2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E479B464(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E4877ACC();
}

uint64_t sub_1E479B52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1E4877F1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - v17);
  sub_1E4773850(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_1E4878DDC();
    v22 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t CalendarMonthWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1C0, &qword_1E487C770);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1C8, &qword_1E487C778);
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1D0, &qword_1E487C780);
  v32 = *(v35 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = v31 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1D8, &unk_1E487C788);
  v34 = *(v36 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v33 = v31 - v14;
  strcpy(v40, "month widget");
  BYTE5(v40[1]) = 0;
  HIWORD(v40[1]) = -5120;
  LOBYTE(v41) = 0;
  type metadata accessor for CalendarMonthWidget.WidgetView();
  sub_1E479D2AC(qword_1EE2B4338, type metadata accessor for CalendarMonthWidget.WidgetView);
  sub_1E479BF44();
  sub_1E487899C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1EE2BAF40;
  v40[0] = sub_1E48771EC();
  v40[1] = v15;
  v16 = sub_1E4773680(&qword_1EE2B0E40, &qword_1ECF7C1C0, &qword_1E487C770);
  v17 = sub_1E477A374();
  v18 = MEMORY[0x1E69E6158];
  sub_1E487800C();

  (*(v2 + 8))(v5, v1);
  v40[0] = v1;
  v40[1] = v18;
  v41 = v16;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E487801C();
  (*(v31[0] + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v20 = sub_1E487894C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E487A7E0;
  (*(v21 + 104))(v24 + v23, *MEMORY[0x1E69857F0], v20);
  v40[0] = v6;
  v40[1] = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  v27 = v35;
  sub_1E4877FFC();

  (*(v32 + 8))(v12, v27);
  v40[0] = sub_1E48771EC();
  v40[1] = v28;
  v38 = v27;
  v39 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_1E4877FEC();

  return (*(v34 + 8))(v26, v29);
}

uint64_t sub_1E479BD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E479D35C(a1, a2);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for CalendarMonthWidget.WidgetView();
  *(a2 + v5[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();
  *(a2 + v5[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();

  v9 = a2 + v5[6];
  *v9 = v6;
  *(v9 + 8) = 0;
  v10 = a2 + v5[8];
  *v10 = v7;
  *(v10 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for CalendarMonthWidget.WidgetView()
{
  result = qword_1EE2B4328;
  if (!qword_1EE2B4328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E479BF44()
{
  result = qword_1EE2B4938;
  if (!qword_1EE2B4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4938);
  }

  return result;
}

uint64_t sub_1E479BF98()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CalendarMonthWidget.WidgetView() + 24);
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

uint64_t sub_1E479C0F0@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for CalendarMonthWidget.WidgetView();
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7B7E8, &qword_1E487A700);
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

uint64_t sub_1E479C2F8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for CalendarMonthWidget.WidgetView() + 32));
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

uint64_t sub_1E479C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v80 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v78 = v58 - v4;
  v5 = sub_1E4877A1C();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v69 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E48782AC();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E487893C();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v63);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v58 - v17;
  v19 = sub_1E48779BC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E487732C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E48779CC();
  v71 = *(v73 - 8);
  v27 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v66 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C200, &qword_1E487C8B8);
  v74 = *(v29 - 8);
  v75 = v29;
  v30 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v72 = v58 - v31;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1F0, &qword_1E487C878);
  v32 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = v58 - v33;
  sub_1E4878D2C();
  v67 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v62 = *(type metadata accessor for CalendarDateTimelineEntry(0) + 20);
  v34 = *(v23 + 16);
  v61 = v26;
  v34(v26, v79 + v62, v22);
  v35 = v18;
  sub_1E479C0F0(v18);
  v60 = sub_1E4877A5C();
  sub_1E487892C();
  v58[1] = sub_1E48788FC();
  v59 = *(v12 + 8);
  v36 = v63;
  v59(v16, v63);
  sub_1E48782DC();
  v37 = v64;
  (*(v8 + 104))(v11, *MEMORY[0x1E6980EA0], v64);
  sub_1E48782CC();

  (*(v8 + 8))(v11, v37);
  sub_1E48781FC();

  sub_1E48782DC();
  sub_1E487827C();
  sub_1E487829C();

  (*(v76 + 104))(v69, *MEMORY[0x1E6993280], v77);
  sub_1E48779AC();
  v59(v35, v36);
  v38 = v66;
  sub_1E487799C();
  v39 = v78;
  sub_1E4877A6C();
  v40 = sub_1E487725C();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_1E479D2AC(&qword_1EE2B4620, MEMORY[0x1E6993268]);
  v42 = v72;
  v41 = v73;
  sub_1E48784BC();
  sub_1E479D2F4(v39);
  (*(v71 + 8))(v38, v41);
  v43 = sub_1E487813C();
  if (sub_1E479BF98())
  {
    v44 = sub_1E479C2F8();
    v45 = *(v44 + 16);
    v46 = *(v44 + 40);
  }

  sub_1E4877B0C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v68;
  (*(v74 + 32))(v68, v42, v75);
  v56 = v55 + *(v70 + 36);
  *v56 = v43;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  sub_1E4761F34(v55, v80);
}

uint64_t sub_1E479CC70@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_1E479CD00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v17 = sub_1E48780DC();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1E0, &qword_1E487C868);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  sub_1E479C448(v2, &v16 - v9);
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E479D13C();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
  v11 = v16;
  sub_1E487859C();
  (*(v3 + 8))(v6, v17);
  sub_1E4761EC4(v10);
  KeyPath = swift_getKeyPath();
  v13 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1F8, &qword_1E487C8B0) + 36));
  v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80) + 28);
  result = sub_1E4877A7C();
  *v13 = KeyPath;
  return result;
}

void sub_1E479CFAC()
{
  type metadata accessor for CalendarDateTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_1E479D0CC(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8]);
    if (v1 <= 0x3F)
    {
      sub_1E478305C();
      if (v2 <= 0x3F)
      {
        sub_1E479D0CC(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
        if (v3 <= 0x3F)
        {
          sub_1E479D0CC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E479D0CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1E479D13C()
{
  result = qword_1ECF7C1E8;
  if (!qword_1ECF7C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1E0, &qword_1E487C868);
    sub_1E479D1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C1E8);
  }

  return result;
}

unint64_t sub_1E479D1C0()
{
  result = qword_1EE2B1548;
  if (!qword_1EE2B1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1F0, &qword_1E487C878);
    sub_1E48779CC();
    sub_1E479D2AC(&qword_1EE2B4620, MEMORY[0x1E6993268]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1548);
  }

  return result;
}

uint64_t sub_1E479D2AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E479D2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E479D35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDateTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E479D3C0()
{
  result = qword_1ECF7C208;
  if (!qword_1ECF7C208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1F8, &qword_1E487C8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1E0, &qword_1E487C868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E479D13C();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C208);
  }

  return result;
}

uint64_t EventListCellViewModel.init(eventStore:eventIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for Event();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_1E48779FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for EventListCellViewModel(0);
  v54 = *(v56 - 8);
  v23 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E4878B9C();
  v55 = a1;
  v27 = [a1 eventWithIdentifier_];

  if (!v27)
  {
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v33 = sub_1E4877ADC();
    __swift_project_value_buffer(v33, qword_1ECF7EA48);

    v34 = sub_1E4877ABC();
    v35 = sub_1E4878DCC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58[0] = v37;
      *v36 = 136315138;
      v38 = sub_1E47A0DEC(a2, a3, v58);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_1E475C000, v34, v35, "Unable to fetch EKEvent from identifier: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E6919FE0](v37, -1, -1);
      MEMORY[0x1E6919FE0](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_22;
  }

  v28 = v27;
  sub_1E4877A0C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1E47738B8(v17, &qword_1ECF7C210, &unk_1E4882DB0);
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v29 = sub_1E4877ADC();
    __swift_project_value_buffer(v29, qword_1ECF7EA48);
    v30 = sub_1E4877ABC();
    v31 = sub_1E4878DCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1E475C000, v30, v31, "Unable to convert fetched EKEvent to wrapper", v32, 2u);
      MEMORY[0x1E6919FE0](v32, -1, -1);
    }

LABEL_22:
    v49 = 1;
    v48 = v57;
    return (*(v54 + 56))(v48, v49, 1, v56);
  }

  (*(v19 + 32))(v22, v17, v18);
  v58[3] = v18;
  v58[4] = sub_1E47A13FC(&qword_1EE2B4618, MEMORY[0x1E6993278]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  (*(v19 + 16))(boxed_opaque_existential_0, v22, v18);
  sub_1E47CCD88(v58, v10);
  if ((*(v52 + 48))(v10, 1, v53) == 1)
  {
    sub_1E47738B8(v10, &qword_1ECF7B950, &unk_1E487AE90);
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v40 = sub_1E4877ADC();
    __swift_project_value_buffer(v40, qword_1ECF7EA48);
    v41 = sub_1E4877ABC();
    v42 = sub_1E4878DCC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1E475C000, v41, v42, "Unable to convert fetched EKEvent to internal representation", v43, 2u);
      MEMORY[0x1E6919FE0](v43, -1, -1);
    }

    else
    {
    }

    (*(v19 + 8))(v22, v18);
    goto LABEL_22;
  }

  (*(v19 + 8))(v22, v18);

  v44 = v10;
  v45 = v51;
  sub_1E47A1394(v44, v51, type metadata accessor for Event);
  sub_1E47A1394(v45, v25, type metadata accessor for Event);
  v46 = v25;
  v47 = v57;
  sub_1E47A1394(v46, v57, type metadata accessor for EventListCellViewModel);
  v48 = v47;
  v49 = 0;
  return (*(v54 + 56))(v48, v49, 1, v56);
}

uint64_t EventListCellViewModel.init(eventStore:title:startDate:endDate:calendarIdentifier:allDay:birthday:location:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v107) = a8;
  v120 = a5;
  v121 = a4;
  v109 = a2;
  v117 = a9;
  v112 = a3;
  v113 = a12;
  v15 = sub_1E487720C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v100 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v111 = &v100 - v23;
  v24 = sub_1E487732C();
  v118 = *(v24 - 8);
  v119 = v24;
  v25 = v118[8];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v100 - v29;
  v31 = sub_1E487706C();
  v105 = *(v31 - 8);
  v106 = v31;
  v32 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v110 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Event();
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E4877A3C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for EventListCellViewModel(0);
  v114 = *(v43 - 8);
  v115 = v43;
  v44 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v108 = &v100 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a6;
  v46 = a7;
  v47 = sub_1E4878B9C();
  v116 = a1;
  v48 = [a1 calendarWithIdentifier_];

  if (!v48)
  {

    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v62 = sub_1E4877ADC();
    __swift_project_value_buffer(v62, qword_1ECF7EA48);
    v63 = v46;

    v64 = sub_1E4877ABC();
    v65 = sub_1E4878DCC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v122[0] = v67;
      *v66 = 136315138;
      v68 = sub_1E47A0DEC(v104, v63, v122);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_1E475C000, v64, v65, "Unable to fetch EKCalendar from identifier: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1E6919FE0](v67, -1, -1);
      MEMORY[0x1E6919FE0](v66, -1, -1);
    }

    else
    {
    }

    goto LABEL_28;
  }

  v49 = v48;
  sub_1E4877A4C();
  sub_1E47A13FC(&qword_1ECF7C218, MEMORY[0x1E6993290]);
  v50 = sub_1E48775EC();
  (*(v39 + 8))(v42, v38);
  if (!v50)
  {

    v69 = v46;
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v70 = sub_1E4877ADC();
    __swift_project_value_buffer(v70, qword_1ECF7EA48);

    v64 = sub_1E4877ABC();
    v71 = sub_1E4878DCC();

    if (os_log_type_enabled(v64, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v122[0] = v73;
      *v72 = 136315138;
      v74 = sub_1E47A0DEC(v104, v69, v122);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_1E475C000, v64, v71, "Could not process event because event's calendar has no color, calendarIdentifier = %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1E6919FE0](v73, -1, -1);
      MEMORY[0x1E6919FE0](v72, -1, -1);
    }

    else
    {
    }

LABEL_28:
    v97 = v119;
    v98 = v118[1];
    v98(v120, v119);
    v98(v121, v97);
    v96 = 1;
    v95 = v117;
    return (*(v114 + 56))(v95, v96, 1, v115);
  }

  v104 = v50;

  v51 = v118[2];
  v52 = v49;
  v53 = v119;
  v51(v30, v121, v119);
  v51(v28, v120, v53);
  sub_1E487702C();
  v54 = sub_1E487725C();
  (*(*(v54 - 8) + 56))(v111, 1, 1, v54);
  v55 = v107;
  v101 = v107 | a10;
  v56 = v52;
  v57 = [v56 isHolidayCalendar];
  if (v55)
  {
    v58 = MEMORY[0x1E69932F0];
    v59 = MEMORY[0x1E69932C0];
    if ((a10 & 1) == 0)
    {
      v59 = MEMORY[0x1E69932B8];
    }

    if (!v57)
    {
      v58 = v59;
    }

    v60 = *v58;
    v107 = sub_1E4878BDC();
    v100 = v61;
  }

  else
  {

    v107 = 0;
    v100 = 0;
  }

  v75 = v112;
  v76 = v104;
  if (a10)
  {
    v77 = 5;
  }

  else
  {
    v77 = 0;
  }

  v78 = v34[15];
  v79 = type metadata accessor for Location();
  v80 = *(*(v79 - 8) + 56);
  v112 = v78;
  v80(&v37[v78], 1, 1, v79);
  v81 = v110;
  *v37 = v109;
  *(v37 + 1) = v75;
  v82 = &v37[v34[5]];
  sub_1E487704C();
  v83 = &v37[v34[6]];
  sub_1E487701C();
  (*(v105 + 8))(v81, v106);
  *&v37[v34[7]] = 0;
  *&v37[v34[8]] = 0;
  *&v37[v34[9]] = v76;
  v84 = &v37[v34[10]];
  *v84 = 0;
  v84[1] = 0;
  sub_1E47A1444(v111, &v37[v34[11]]);
  v37[v34[12]] = v101 & 1;
  v37[v34[13]] = 0;
  v85 = &v37[v34[16]];
  v86 = v100;
  *v85 = v107;
  v85[1] = v86;
  v37[v34[14]] = v77;
  v37[v34[17]] = 0;
  v37[v34[18]] = 0;
  v37[v34[19]] = 1;
  if (v113)
  {
    sub_1E48771FC();
    v87 = v103;
    sub_1E48771AC();

    v88 = v119;
    v89 = v118[1];
    v89(v120, v119);
    v89(v121, v88);
    v90 = (v87 + *(v79 + 20));
    *v90 = 0;
    v90[1] = 0;
    v80(v87, 0, 1, v79);
    sub_1E47A14B4(v87, &v37[v112]);
  }

  else
  {

    v91 = v119;
    v92 = v118[1];
    v92(v120, v119);
    v92(v121, v91);
  }

  v93 = v108;
  sub_1E47A1394(v37, v108, type metadata accessor for Event);
  v94 = v93;
  v95 = v117;
  sub_1E47A1394(v94, v117, type metadata accessor for EventListCellViewModel);
  v96 = 0;
  return (*(v114 + 56))(v95, v96, 1, v115);
}

uint64_t EventListCellViewModel.init(title:startDate:endDate:calendarIdentifier:allDay:birthday:location:calendarColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W6>, int a6@<W7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v68) = a6;
  LODWORD(v64) = a5;
  v74 = a4;
  v75 = a3;
  v69 = a1;
  v70 = a2;
  v73 = a7;
  v71 = a10;
  v72 = a9;
  v10 = sub_1E487720C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v60 - v18;
  v20 = sub_1E487732C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - v26;
  v63 = sub_1E487706C();
  v28 = *(v63 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Event();
  v33 = *(*(v32 - 1) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);

  v65 = v21;
  v36 = *(v21 + 16);
  v36(v27, v75, v20);
  v66 = v20;
  v36(v25, v74, v20);
  sub_1E487702C();
  v37 = sub_1E487725C();
  v38 = *(*(v37 - 8) + 56);
  v67 = v19;
  v38(v19, 1, 1, v37);
  if (v64)
  {
    v39 = MEMORY[0x1E69932C0];
    v40 = v68;
    if ((v68 & 1) == 0)
    {
      v39 = MEMORY[0x1E69932B8];
    }

    v41 = *v39;
    v64 = sub_1E4878BDC();
    v62 = v42;
    v43 = 1;
  }

  else
  {
    v64 = 0;
    v62 = 0;
    v40 = v68;
    v43 = v68;
  }

  if (v40)
  {
    v44 = 5;
  }

  else
  {
    v44 = 0;
  }

  v45 = v32[15];
  v46 = type metadata accessor for Location();
  v68 = *(*(v46 - 8) + 56);
  v68(&v35[v45], 1, 1, v46);
  v47 = v70;
  *v35 = v69;
  *(v35 + 1) = v47;
  v48 = &v35[v32[5]];
  sub_1E487704C();
  v49 = &v35[v32[6]];
  sub_1E487701C();
  (*(v28 + 8))(v31, v63);
  *&v35[v32[7]] = 0;
  *&v35[v32[8]] = 0;
  *&v35[v32[9]] = v71;
  v50 = &v35[v32[10]];
  *v50 = 0;
  *(v50 + 1) = 0;
  sub_1E47A1444(v67, &v35[v32[11]]);
  v35[v32[12]] = v43 & 1;
  v35[v32[13]] = 0;
  v51 = &v35[v32[16]];
  v52 = v62;
  *v51 = v64;
  v51[1] = v52;
  v35[v32[14]] = v44;
  v35[v32[17]] = 0;
  v35[v32[18]] = 0;
  v35[v32[19]] = 1;
  if (v72)
  {
    sub_1E48771FC();
    v53 = v61;
    sub_1E48771AC();
    v54 = v66;
    v55 = *(v65 + 8);
    v55(v74, v66);
    v55(v75, v54);
    v56 = (v53 + *(v46 + 20));
    *v56 = 0;
    v56[1] = 0;
    v68(v53, 0, 1, v46);
    sub_1E47A14B4(v53, &v35[v45]);
  }

  else
  {
    v57 = v66;
    v58 = *(v65 + 8);
    v58(v74, v66);
    v58(v75, v57);
  }

  return sub_1E47A1394(v35, v73, type metadata accessor for Event);
}

uint64_t EventListCellViewModel.init(eventModel:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-1] - v6;
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EventListCellViewModel(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47A1524(a1, v21);
  sub_1E47CCD88(v21, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E47738B8(v7, &qword_1ECF7B950, &unk_1E487AE90);
    v18 = 1;
  }

  else
  {
    sub_1E47A1394(v7, v12, type metadata accessor for Event);
    sub_1E47A1394(v12, v17, type metadata accessor for Event);
    sub_1E47A1394(v17, a2, type metadata accessor for EventListCellViewModel);
    v18 = 0;
  }

  return (*(v14 + 56))(a2, v18, 1, v13);
}

uint64_t EventListCellViewModel.hash(into:)()
{
  sub_1E47CDCB4();
  sub_1E4878C0C();
}

uint64_t EventListCellViewModel.hashValue.getter()
{
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  return sub_1E487917C();
}

uint64_t sub_1E479EFFC()
{
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  return sub_1E487917C();
}

uint64_t sub_1E479F058()
{
  sub_1E47CDCB4();
  sub_1E4878C0C();
}

uint64_t sub_1E479F0A8()
{
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  return sub_1E487917C();
}

uint64_t sub_1E479F110(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_1EE2B16E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_1EE2BAD00);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t EventListCell.init(viewModel:displayContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v95 = a3;
  v87 = sub_1E487706C();
  v89 = *(v87 - 8);
  v4 = *(v89 + 8);
  v5 = MEMORY[0x1EEE9AC00](v87);
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v88 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v86 = (&v81 - v9);
  v10 = sub_1E487753C();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CellDisplayContext(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E487732C();
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v81 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v81 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v90 = &v81 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v81 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v81 - v34;
  v36 = type metadata accessor for EventListCell(0);
  v93 = *(v36 - 8);
  v94 = v36;
  v37 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v96 = a1;
  v92 = &v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47A15C8(a1, v92, type metadata accessor for Event);
  sub_1E47A15C8(v97, v17, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1E47A1630(v96, type metadata accessor for EventListCellViewModel);
    sub_1E47A1630(v17, type metadata accessor for CellDisplayContext);
LABEL_5:
    v54 = v94;
    v55 = v92;
    sub_1E47A1394(v97, v92 + *(v94 + 20), type metadata accessor for CellDisplayContext);
    v56 = v95;
    sub_1E47A15C8(v55, v95, type metadata accessor for EventListCell);
    (*(v93 + 56))(v56, 0, 1, v54);
    return sub_1E47A1630(v55, type metadata accessor for EventListCell);
  }

  v82 = v22;
  v39 = v91;
  (*(v91 + 32))(v35, v17, v18);
  sub_1E48774FC();
  v40 = type metadata accessor for Event();
  v41 = v96;
  v42 = v96 + *(v40 + 20);
  sub_1E487745C();
  (*(v84 + 8))(v13, v85);
  type metadata accessor for Utils();
  v43 = v41 + *(v40 + 24);
  v44 = v86;
  sub_1E4870D68(v86);
  v45 = v18;
  v46 = v90;
  sub_1E487701C();
  v47 = v89 + 8;
  v48 = v44;
  v49 = v87;
  v86 = *(v89 + 1);
  (v86)(v48, v87);
  v50 = *(v39 + 16);
  v85 = v33;
  v50(v28, v33, v45);
  v51 = v50;
  v50(v25, v46, v45);
  v52 = v88;
  sub_1E487702C();
  if (sub_1E487705C())
  {
    sub_1E47A1630(v96, type metadata accessor for EventListCellViewModel);
    (v86)(v52, v49);
    v53 = *(v91 + 8);
    v53(v90, v45);
    v53(v85, v45);
    v53(v35, v45);
    goto LABEL_5;
  }

  v58 = v45;
  if (qword_1ECF7B650 != -1)
  {
    swift_once();
  }

  v59 = sub_1E4877ADC();
  __swift_project_value_buffer(v59, qword_1ECF7EA60);
  v60 = v83;
  (*(v89 + 2))(v83, v52, v49);
  v61 = v82;
  v51(v82, v35, v45);
  v62 = v49;
  v63 = sub_1E4877ABC();
  v64 = sub_1E4878DEC();
  v65 = v47;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = swift_slowAlloc();
    v89 = v35;
    v67 = v61;
    v68 = v66;
    v84 = swift_slowAlloc();
    v98 = v84;
    *v68 = 136315394;
    sub_1E47A13FC(&qword_1ECF7C220, MEMORY[0x1E6968130]);
    v69 = sub_1E48790CC();
    v71 = v70;
    (v86)(v60, v62);
    v72 = sub_1E47A0DEC(v69, v71, &v98);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    sub_1E47A13FC(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v73 = sub_1E48790CC();
    v75 = v74;
    v83 = v65;
    v76 = *(v91 + 8);
    v76(v67, v58);
    v77 = sub_1E47A0DEC(v73, v75, &v98);

    *(v68 + 14) = v77;
    _os_log_impl(&dword_1E475C000, v63, v64, "Event spanning %s does not belong under the header date %s, returning nil", v68, 0x16u);
    v78 = v84;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v78, -1, -1);
    MEMORY[0x1E6919FE0](v68, -1, -1);

    sub_1E47A1630(v97, type metadata accessor for CellDisplayContext);
    sub_1E47A1630(v96, type metadata accessor for EventListCellViewModel);
    (v86)(v88, v62);
    v76(v90, v58);
    v76(v85, v58);
    v76(v89, v58);
  }

  else
  {

    sub_1E47A1630(v97, type metadata accessor for CellDisplayContext);
    sub_1E47A1630(v96, type metadata accessor for EventListCellViewModel);
    v79 = *(v91 + 8);
    v79(v61, v58);
    v80 = v86;
    (v86)(v60, v62);
    v80(v88, v62);
    v79(v90, v58);
    v79(v85, v58);
    v79(v35, v58);
  }

  sub_1E47A1630(v92, type metadata accessor for Event);
  return (*(v93 + 56))(v95, 1, 1, v94);
}

uint64_t EventListCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v45 = type metadata accessor for WideModernEventDetailsView();
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for WideAllDayView();
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C228, &qword_1E487C990);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C230, &qword_1E487C998);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = &v41 - v16;
  v18 = type metadata accessor for WideReminderView();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Event();
  if ((*(v1 + *(v22 + 56)) & 0xFE) == 6)
  {
    sub_1E47A15C8(v1, v21, type metadata accessor for Event);
    v23 = type metadata accessor for EventListCell(0);
    sub_1E47A15C8(v1 + *(v23 + 20), &v21[v18[5]], type metadata accessor for CellDisplayContext);
    *&v21[v18[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v21[v18[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v21[v18[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v21[v18[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v25 = &v21[v18[9]];
    *v25 = KeyPath;
    v25[8] = 0;
    sub_1E47A15C8(v21, v14, type metadata accessor for WideReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E47A13FC(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E47A13FC(&qword_1ECF7C248, type metadata accessor for WideAllDayView);
    sub_1E487803C();
    sub_1E47A177C(v17, v10);
    swift_storeEnumTagMultiPayload();
    sub_1E47A1690();
    sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView);
    sub_1E487803C();
    sub_1E47738B8(v17, &qword_1ECF7C238, &qword_1E487C9A0);
    v26 = type metadata accessor for WideReminderView;
    v27 = v21;
  }

  else
  {
    v28 = v22;
    v42 = v14;
    v43 = v10;
    v29 = v44;
    v30 = v45;
    if (*(v1 + *(v22 + 48)) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
      v31 = *(*(v28 - 8) + 72);
      v32 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1E487A7E0;
      sub_1E47A15C8(v1, v33 + v32, type metadata accessor for Event);
      v34 = type metadata accessor for EventListCell(0);
      sub_1E47A15C8(v1 + *(v34 + 20), v7 + v29[5], type metadata accessor for CellDisplayContext);
      *(v7 + v29[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      *(v7 + v29[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *(v7 + v29[8]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      v35 = swift_getKeyPath();
      *v7 = v33;
      v36 = v7 + v29[9];
      *v36 = v35;
      v36[8] = 0;
      sub_1E47A15C8(v7, v42, type metadata accessor for WideAllDayView);
      swift_storeEnumTagMultiPayload();
      sub_1E47A13FC(qword_1EE2B3680, type metadata accessor for WideReminderView);
      sub_1E47A13FC(&qword_1ECF7C248, type metadata accessor for WideAllDayView);
      sub_1E487803C();
      sub_1E47A177C(v17, v43);
      swift_storeEnumTagMultiPayload();
      sub_1E47A1690();
      sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView);
      sub_1E487803C();
      sub_1E47738B8(v17, &qword_1ECF7C238, &qword_1E487C9A0);
      v26 = type metadata accessor for WideAllDayView;
      v27 = v7;
    }

    else
    {
      sub_1E47A15C8(v1, v4, type metadata accessor for Event);
      v37 = type metadata accessor for EventListCell(0);
      sub_1E47A15C8(v1 + *(v37 + 20), &v4[v30[5]], type metadata accessor for CellDisplayContext);
      *&v4[v30[6]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      *&v4[v30[7]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      *&v4[v30[8]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v38 = swift_getKeyPath();
      v39 = &v4[v30[9]];
      *v39 = v38;
      v39[8] = 0;
      sub_1E47A15C8(v4, v43, type metadata accessor for WideModernEventDetailsView);
      swift_storeEnumTagMultiPayload();
      sub_1E47A1690();
      sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView);
      sub_1E487803C();
      v26 = type metadata accessor for WideModernEventDetailsView;
      v27 = v4;
    }
  }

  return sub_1E47A1630(v27, v26);
}

uint64_t TCCDisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t TCCEventPreview.init(ekEvent:displayContext:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Event();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v38 - v14;
  v16 = sub_1E48779FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TCCEventPreview(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v27 = a1;
  sub_1E4877A0C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v28 = &qword_1ECF7C210;
    v29 = &unk_1E4882DB0;
    v30 = v15;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v43[3] = v16;
    v43[4] = sub_1E47A13FC(&qword_1EE2B4618, MEMORY[0x1E6993278]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(v17 + 16))(boxed_opaque_existential_0, v20, v16);
    sub_1E47CCD88(v43, v8);

    (*(v17 + 8))(v20, v16);
    if ((*(v40 + 48))(v8, 1, v41) != 1)
    {
      v34 = v8;
      v35 = v39;
      sub_1E47A1394(v34, v39, type metadata accessor for Event);
      sub_1E47A1394(v35, v25, type metadata accessor for Event);
      v25[*(v21 + 20)] = v26;
      v36 = v42;
      sub_1E47A1394(v25, v42, type metadata accessor for TCCEventPreview);
      v33 = v36;
      v32 = 0;
      return (*(v22 + 56))(v33, v32, 1, v21);
    }

    v28 = &qword_1ECF7B950;
    v29 = &unk_1E487AE90;
    v30 = v8;
  }

  sub_1E47738B8(v30, v28, v29);
  v32 = 1;
  v33 = v42;
  return (*(v22 + 56))(v33, v32, 1, v21);
}

uint64_t TCCEventPreview.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PlatterStackView();
  sub_1E47A15C8(v1, a1 + v3[5], type metadata accessor for Event);
  v4 = *(v1 + *(type metadata accessor for TCCEventPreview(0) + 20));
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v3[6]) = v4;
  *(a1 + v3[7]) = 0x4030000000000000;
  *(a1 + v3[8]) = 0x4020000000000000;
  *(a1 + v3[9]) = 0x3FEEB851EB851EB8;
  *(a1 + v3[10]) = 0x3FEE147AE147AE14;
  return result;
}

uint64_t sub_1E47A0B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for PlatterStackView();
  sub_1E47A15C8(v2, a2 + v5[5], type metadata accessor for Event);
  LOBYTE(a1) = *(v2 + *(a1 + 20));
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5[6]) = a1;
  *(a2 + v5[7]) = 0x4030000000000000;
  *(a2 + v5[8]) = 0x4020000000000000;
  *(a2 + v5[9]) = 0x3FEEB851EB851EB8;
  *(a2 + v5[10]) = 0x3FEE147AE147AE14;
  return result;
}

uint64_t sub_1E47A0D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1E47A0DEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E47A0EB8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E47A1CF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E47A0EB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E47A0FC4(a5, a6);
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
    result = sub_1E4878FCC();
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

uint64_t sub_1E47A0FC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E47A1010(a1, a2);
  sub_1E47A1140(&unk_1F5E7B220);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E47A1010(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E47A122C(v5, 0);
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

  result = sub_1E4878FCC();
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
        v10 = sub_1E4878C3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E47A122C(v10, 0);
        result = sub_1E4878F8C();
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

uint64_t sub_1E47A1140(uint64_t result)
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

  result = sub_1E47A12A0(result, v12, 1, v3);
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

void *sub_1E47A122C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2C8, &qword_1E487CCB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E47A12A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2C8, &qword_1E487CCB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E47A1394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A13FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47A1444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47A14B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47A1524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E47A15C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A1630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47A1690()
{
  result = qword_1ECF7C240;
  if (!qword_1ECF7C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C238, &qword_1E487C9A0);
    sub_1E47A13FC(qword_1EE2B3680, type metadata accessor for WideReminderView);
    sub_1E47A13FC(&qword_1ECF7C248, type metadata accessor for WideAllDayView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C240);
  }

  return result;
}

uint64_t sub_1E47A177C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E47A1874()
{
  result = qword_1ECF7C260;
  if (!qword_1ECF7C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C260);
  }

  return result;
}

void sub_1E47A18E4()
{
  sub_1E47A196C();
  if (v0 <= 0x3F)
  {
    sub_1E47A19D8();
    if (v1 <= 0x3F)
    {
      sub_1E47A1A08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E47A196C()
{
  if (!qword_1ECF7C268)
  {
    sub_1E487732C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECF7C268);
    }
  }
}

uint64_t sub_1E47A19D8()
{
  result = qword_1ECF7C270;
  if (!qword_1ECF7C270)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1ECF7C270);
  }

  return result;
}

void sub_1E47A1A08()
{
  if (!qword_1ECF7C278)
  {
    v0 = sub_1E487732C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF7C278);
    }
  }
}

uint64_t sub_1E47A1A78()
{
  result = type metadata accessor for Event();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E47A1B0C()
{
  result = type metadata accessor for Event();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CellDisplayContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E47A1BC8()
{
  result = type metadata accessor for Event();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E47A1C3C()
{
  result = qword_1ECF7C2B0;
  if (!qword_1ECF7C2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C2B8, &qword_1E487CCB0);
    sub_1E47A1690();
    sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C2B0);
  }

  return result;
}

uint64_t sub_1E47A1CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PlatterStackView()
{
  result = qword_1ECF7C2D0;
  if (!qword_1ECF7C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47A1DC8()
{
  sub_1E47801C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Event();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E47A1E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1E4773850(v2, &v17 - v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_1E47A208C()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(v0 + *(type metadata accessor for PlatterStackView() + 24));
  sub_1E47A1E8C(v8);
  (*(v2 + 104))(v6, *MEMORY[0x1E697DBC0], v1);
  v10 = sub_1E4877B2C();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v10)
  {
    v12 = 3.0;
  }

  else
  {
    v12 = 0.0;
  }

  result = 2.0;
  if (!v9)
  {
    return v12;
  }

  return result;
}

double sub_1E47A2228()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(v0 + *(type metadata accessor for PlatterStackView() + 24));
  sub_1E47A1E8C(v8);
  (*(v2 + 104))(v6, *MEMORY[0x1E697DBC0], v1);
  v10 = sub_1E4877B2C();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v10)
  {
    v12 = 3.0;
  }

  else
  {
    v12 = 0.0;
  }

  result = 2.0;
  if (!v9)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1E47A23C4()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *(v0 + *(type metadata accessor for PlatterStackView() + 24));
  sub_1E47A1E8C(v8);
  (*(v2 + 104))(v6, *MEMORY[0x1E697DBC0], v1);
  v10 = sub_1E4877B2C();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v9)
  {
    v12 = objc_opt_self();
    if (v10)
    {
      v13 = [v12 systemGray6Color];
    }

    else
    {
      v13 = [v12 systemGray5Color];
    }

    v15 = v13;
    return sub_1E48785FC();
  }

  else
  {
    if (v10)
    {
      v14 = [objc_opt_self() systemGray6Color];
      sub_1E48785FC();
    }

    else
    {
      sub_1E487866C();
    }

    v17 = sub_1E48786DC();

    return v17;
  }
}

uint64_t sub_1E47A25B8@<X0>(_BYTE *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2F8, &unk_1E487CD70);
  v4 = *(*(v40 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v40);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v39 - v7);
  v39 = type metadata accessor for PlatterStackView();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v41 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47A4758(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterStackView);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1E47A46F0(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PlatterStackView);
  sub_1E47A4758(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterStackView);
  v14 = swift_allocObject();
  sub_1E47A46F0(v11, v14 + v12, type metadata accessor for PlatterStackView);
  *v8 = sub_1E487889C();
  v8[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C300, &qword_1E487CD80);
  sub_1E47A3854(a1, v8 + *(v16 + 44));
  v17 = sub_1E487813C();
  v18 = v39;
  v19 = *&a1[*(v39 + 28)];
  sub_1E4877B0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C308, &qword_1E487CD88) + 36);
  *v28 = v17;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_1E487816C();
  v30 = *&a1[*(v18 + 32)] + *&a1[*(v18 + 32)];
  sub_1E4877B0C();
  v31 = v8 + *(v40 + 36);
  *v31 = v29;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = v42;
  sub_1E4773850(v8, v42, &qword_1ECF7C2F8, &unk_1E487CD70);
  *a2 = sub_1E47A4360;
  a2[1] = v13;
  a2[2] = sub_1E47A4644;
  a2[3] = v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C310, &qword_1E487CD90);
  sub_1E4773850(v36, a2 + *(v37 + 64), &qword_1ECF7C2F8, &unk_1E487CD70);

  sub_1E47738B8(v8, &qword_1ECF7C2F8, &unk_1E487CD70);
  sub_1E47738B8(v36, &qword_1ECF7C2F8, &unk_1E487CD70);
}

uint64_t sub_1E47A2980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = sub_1E4877B3C();
  v75 = *(v5 - 8);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - v10;
  v12 = sub_1E4877CDC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C318, &qword_1E487CD98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v66 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C320, &qword_1E487CDA0);
  v19 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v66 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C360, &qword_1E487CE70);
  v21 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v66 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C368, &qword_1E487CE78);
  v23 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v66 - v24;
  sub_1E4878D2C();
  v68 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v73 = a1;
  sub_1E4877BEC();
  v25 = type metadata accessor for PlatterStackView();
  v26 = v25[6];
  v27 = *(a2 + v25[7]);
  v28 = *(a2 + v25[9]);
  v29 = *(a2 + v25[10]);
  if (*(a2 + v26))
  {
    v30 = 6.0;
  }

  else
  {
    v30 = 18.0;
  }

  v31 = *(v12 + 20);
  v32 = *MEMORY[0x1E697F470];
  v33 = sub_1E4877F7C();
  (*(*(v33 - 8) + 104))(v15 + v31, v32, v33);
  *v15 = v30;
  v15[1] = v30;
  v34 = sub_1E47A23C4();
  v35 = v76;
  sub_1E47A46F0(v15, v76, MEMORY[0x1E697EAE8]);
  *(v35 + *(v16 + 36)) = v34;
  sub_1E487866C();
  v36 = MEMORY[0x1E697DBC0];
  if ((*(a2 + v26) & 1) == 0)
  {
    sub_1E47A1E8C(v11);
    v37 = v75;
    (*(v75 + 104))(v9, *v36, v5);
    sub_1E4877B2C();
    v38 = *(v37 + 8);
    v38(v9, v5);
    v38(v11, v5);
  }

  v39 = sub_1E48786DC();

  if (*(a2 + v26))
  {
    goto LABEL_10;
  }

  sub_1E47A1E8C(v11);
  v40 = v75;
  (*(v75 + 104))(v9, *v36, v5);
  v41 = sub_1E4877B2C();
  v42 = *(v40 + 8);
  v42(v9, v5);
  v42(v11, v5);
  v43 = 4.0;
  if ((v41 & 1) == 0)
  {
LABEL_10:
    v43 = 0.0;
  }

  if (*(a2 + v26))
  {
    goto LABEL_13;
  }

  sub_1E47A1E8C(v11);
  v44 = v75;
  (*(v75 + 104))(v9, *v36, v5);
  v45 = sub_1E4877B2C();
  v46 = *(v44 + 8);
  v46(v9, v5);
  v46(v11, v5);
  v47 = 3.0;
  if ((v45 & 1) == 0)
  {
LABEL_13:
    v47 = 0.0;
  }

  v48 = v69;
  sub_1E477372C(v76, v69, &qword_1ECF7C318, &qword_1E487CD98);
  v49 = (v48 + *(v66 + 36));
  *v49 = v39;
  *(v49 + 1) = v43;
  v49[2] = 0;
  *(v49 + 3) = v47;
  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v50 = v72;
  sub_1E477372C(v48, v72, &qword_1ECF7C320, &qword_1E487CDA0);
  v51 = (v50 + *(v67 + 36));
  v52 = v78;
  *v51 = v77;
  v51[1] = v52;
  v51[2] = v79;
  v53 = sub_1E487813C();
  sub_1E4877B0C();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v50;
  v63 = v70;
  sub_1E477372C(v62, v70, &qword_1ECF7C360, &qword_1E487CE70);
  v64 = v63 + *(v71 + 36);
  *v64 = v53;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  sub_1E477372C(v63, v74, &qword_1ECF7C368, &qword_1E487CE78);
}

uint64_t sub_1E47A3064@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4877BEC();
  v5 = v4;
  v6 = type metadata accessor for PlatterStackView();
  v7 = *(a1 + v6[7]);
  v8 = (v5 - (v7 + v7)) * *(a1 + v6[9]);
  *a2 = sub_1E487889C();
  a2[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C338, &qword_1E487CE48);
  sub_1E47A3294(a1, a2 + *(v10 + 44));
  sub_1E4877BEC();
  v11 = *(a1 + v6[8]);
  sub_1E487889C();
  sub_1E4877BCC();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C340, &qword_1E487CE50) + 36));
  *v12 = v34;
  v12[1] = v35;
  v12[2] = v36;
  v13 = sub_1E487813C();
  sub_1E4877B0C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C348, &qword_1E487CE58) + 36);
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_1E487816C();
  sub_1E4877B0C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C350, &qword_1E487CE60);
  v33 = a2 + *(result + 36);
  *v33 = v23;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  return result;
}

uint64_t sub_1E47A3294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C318, &qword_1E487CD98);
  v3 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v50 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C320, &qword_1E487CDA0);
  v5 = *(*(v58 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v50 - v10;
  v11 = sub_1E4877CDC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v50 - v15);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C328, &qword_1E487CDA8);
  v17 = *(*(v50 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v50);
  v57 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v50 - v23;
  sub_1E4878D2C();
  v54 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *(type metadata accessor for PlatterStackView() + 24);
  v60 = a1;
  v25 = 18.0;
  if (*(a1 + v24))
  {
    v26 = 6.0;
  }

  else
  {
    v26 = 18.0;
  }

  v51 = v11;
  v27 = *(v11 + 20);
  v28 = *MEMORY[0x1E697F470];
  v29 = sub_1E4877F7C();
  v30 = *(*(v29 - 8) + 104);
  v30(v16 + v27, v28, v29);
  *v16 = v26;
  v16[1] = v26;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = MEMORY[0x1E697EAE8];
  sub_1E47A46F0(v16, v22, MEMORY[0x1E697EAE8]);
  v32 = &v22[*(v50 + 36)];
  *v32 = 0x4049000000000000;
  v32[8] = 1;
  v33 = v53;
  sub_1E477372C(v22, v53, &qword_1ECF7C328, &qword_1E487CDA8);
  if (*(v60 + v24))
  {
    v25 = 6.0;
  }

  v34 = v52;
  v30(v52 + *(v51 + 20), v28, v29);
  *v34 = v25;
  v34[1] = v25;
  v35 = sub_1E47A23C4();
  v36 = v59;
  sub_1E47A46F0(v34, v59, v31);
  *(v36 + *(v55 + 36)) = v35;
  sub_1E487866C();
  sub_1E47A2228();
  v37 = sub_1E48786DC();

  sub_1E47A2228();
  v39 = v38;
  v40 = sub_1E47A2228();
  v41 = v36;
  v42 = v56;
  sub_1E477372C(v41, v56, &qword_1ECF7C318, &qword_1E487CD98);
  v43 = (v42 + *(v58 + 36));
  *v43 = v37;
  v43[1] = v39;
  v43[2] = 0;
  *(v43 + 3) = v40;
  v44 = v61;
  sub_1E477372C(v42, v61, &qword_1ECF7C320, &qword_1E487CDA0);
  v45 = v57;
  sub_1E4773850(v33, v57, &qword_1ECF7C328, &qword_1E487CDA8);
  v46 = v62;
  sub_1E4773850(v44, v62, &qword_1ECF7C320, &qword_1E487CDA0);
  v47 = v63;
  sub_1E4773850(v45, v63, &qword_1ECF7C328, &qword_1E487CDA8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C358, &qword_1E487CE68);
  sub_1E4773850(v46, v47 + *(v48 + 48), &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v44, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v33, &qword_1ECF7C328, &qword_1E487CDA8);
  sub_1E47738B8(v46, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v45, &qword_1ECF7C328, &qword_1E487CDA8);
}

uint64_t sub_1E47A3854@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_1E48782AC();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PlatterView();
  v6 = *(*(v92 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v92);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v77 - v9);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C318, &qword_1E487CD98);
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v77 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C320, &qword_1E487CDA0);
  v13 = *(*(v84 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v84);
  v93 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v83 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v77 - v18;
  v19 = sub_1E4877CDC();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v81 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v77 - v23);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C328, &qword_1E487CDA8);
  v25 = *(*(v78 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v78);
  v89 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v77 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v97 = &v77 - v31;
  sub_1E4878D2C();
  v87 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v79 = type metadata accessor for PlatterStackView();
  v32 = *(v79 + 24);
  v86 = a1;
  v77 = v32;
  v33 = 18.0;
  if (a1[v32])
  {
    v34 = 6.0;
  }

  else
  {
    v34 = 18.0;
  }

  v80 = v19;
  v35 = *(v19 + 20);
  v36 = *MEMORY[0x1E697F470];
  v37 = sub_1E4877F7C();
  v38 = *(*(v37 - 8) + 104);
  v38(v24 + v35, v36, v37);
  *v24 = v34;
  v24[1] = v34;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = MEMORY[0x1E697EAE8];
  sub_1E47A46F0(v24, v30, MEMORY[0x1E697EAE8]);
  v40 = &v30[*(v78 + 36)];
  *v40 = 0x4049000000000000;
  v40[8] = 1;
  sub_1E477372C(v30, v97, &qword_1ECF7C328, &qword_1E487CDA8);
  v41 = v86;
  if (v86[v77])
  {
    v33 = 6.0;
  }

  v42 = v81;
  v38(v81 + *(v80 + 20), v36, v37);
  *v42 = v33;
  v42[1] = v33;
  v43 = sub_1E47A23C4();
  v44 = v42;
  v45 = v85;
  sub_1E47A46F0(v44, v85, v39);
  *(v45 + *(v82 + 36)) = v43;
  sub_1E487866C();
  sub_1E47A208C();
  v46 = sub_1E48786DC();

  sub_1E47A208C();
  v48 = v47;
  v49 = sub_1E47A208C();
  v50 = v83;
  sub_1E477372C(v45, v83, &qword_1ECF7C318, &qword_1E487CD98);
  v51 = (v50 + *(v84 + 36));
  *v51 = v46;
  v51[1] = v48;
  v51[2] = 0;
  *(v51 + 3) = v49;
  sub_1E477372C(v50, v96, &qword_1ECF7C320, &qword_1E487CDA0);
  v52 = v92;
  sub_1E47A4758(&v41[*(v79 + 20)], v10 + *(v92 + 28), type metadata accessor for Event);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v10 + v52[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  v54 = v10 + v52[5];
  *v54 = KeyPath;
  v54[8] = 0;
  v55 = v52[8];
  sub_1E48782DC();
  v56 = *MEMORY[0x1E6980EA0];
  v58 = v90;
  v57 = v91;
  v86 = *(v90 + 104);
  v59 = v88;
  LODWORD(v85) = v56;
  (v86)(v88, v56, v91);
  sub_1E48782CC();

  v90 = *(v58 + 8);
  (v90)(v59, v57);
  sub_1E487827C();
  v60 = sub_1E487829C();

  *(v10 + v55) = v60;
  v61 = v52[9];
  *(v10 + v61) = sub_1E487863C();
  v84 = v52[10];
  sub_1E48782EC();
  v62 = v56;
  v63 = v86;
  (v86)(v59, v62, v57);
  v64 = sub_1E48782CC();

  v65 = v90;
  (v90)(v59, v57);
  *(v10 + v84) = v64;
  v66 = v52[11];
  sub_1E48782EC();
  v63(v59, v85, v57);
  sub_1E48782CC();

  v65(v59, v57);
  sub_1E487827C();
  v67 = sub_1E487829C();

  *(v10 + v66) = v67;
  v68 = v52[12];
  v69 = [objc_opt_self() secondaryLabelColor];
  *(v10 + v68) = sub_1E48785FC();
  *(v10 + v52[13]) = 0x4028000000000000;
  *(v10 + v52[14]) = 0x4024000000000000;
  v70 = v89;
  sub_1E4773850(v97, v89, &qword_1ECF7C328, &qword_1E487CDA8);
  v71 = v96;
  v72 = v93;
  sub_1E4773850(v96, v93, &qword_1ECF7C320, &qword_1E487CDA0);
  v73 = v94;
  sub_1E47A4758(v10, v94, type metadata accessor for PlatterView);
  v74 = v95;
  sub_1E4773850(v70, v95, &qword_1ECF7C328, &qword_1E487CDA8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C330, &qword_1E487CE40);
  sub_1E4773850(v72, v74 + *(v75 + 48), &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47A4758(v73, v74 + *(v75 + 64), type metadata accessor for PlatterView);
  sub_1E47A47C0(v10);
  sub_1E47738B8(v71, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v97, &qword_1ECF7C328, &qword_1E487CDA8);
  sub_1E47A47C0(v73);
  sub_1E47738B8(v72, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v70, &qword_1ECF7C328, &qword_1E487CDA8);
}

uint64_t sub_1E47A4218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2E0, &qword_1E487CD58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v22 - v7);
  *v8 = sub_1E487888C();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2E8, &qword_1E487CD60);
  sub_1E47A25B8(v2, (v8 + *(v10 + 44)));
  v11 = sub_1E487815C();
  v2[*(a1 + 24)];
  sub_1E4877B0C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1E477372C(v8, a2, &qword_1ECF7C2E0, &qword_1E487CD58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2F0, &qword_1E487CD68);
  v21 = a2 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for PlatterStackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E4877B3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *(v8 + 1);

  v10 = type metadata accessor for Event();
  v11 = v10[5];
  v12 = sub_1E487732C();
  v13 = *(*(v12 - 8) + 8);
  v13(&v8[v11], v12);
  v13(&v8[v10[6]], v12);
  v14 = *&v8[v10[9]];

  v15 = *&v8[v10[10] + 8];

  v16 = v10[11];
  v17 = sub_1E487725C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v8[v16], 1, v17))
  {
    (*(v18 + 8))(&v8[v16], v17);
  }

  v19 = &v8[v10[15]];
  v20 = type metadata accessor for Location();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = sub_1E487719C();
    (*(*(v21 - 8) + 8))(v19, v21);
    v22 = *&v19[*(v20 + 20) + 8];
  }

  v23 = *&v8[v10[16] + 8];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E47A465C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PlatterStackView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E47A46F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A4758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A47C0(uint64_t a1)
{
  v2 = type metadata accessor for PlatterView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E47A481C()
{
  result = qword_1ECF7C370;
  if (!qword_1ECF7C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C2F0, &qword_1E487CD68);
    sub_1E47A48A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C370);
  }

  return result;
}

unint64_t sub_1E47A48A8()
{
  result = qword_1ECF7C378;
  if (!qword_1ECF7C378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C2E0, &qword_1E487CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C378);
  }

  return result;
}

uint64_t sub_1E47A490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_project_boxed_opaque_existential_0(a3, v10);
  sub_1E47A50CC(a1, v12, v5, v10, v11);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 BOOLValue];
  }

  else
  {
    v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v18 = sub_1E487732C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E487A7E0;
  (*(v19 + 16))(v22 + v21, a1, v18);
  v23 = v5[8];

  v24 = sub_1E47A5614(v22, v23, a2, v17);

  swift_setDeallocating();
  (*(v19 + 8))(v22 + v21, v18);
  result = swift_deallocClassInstance();
  if (*(v24 + 16))
  {
    v26 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    sub_1E47A7408(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), a4, type metadata accessor for CalendarEventsTimelineEntry);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47A4BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a3, v4);
  LOBYTE(a3) = sub_1E48774CC();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1E47A4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v25 = sub_1E487751C();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_1E487732C();
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Event();
  v17 = *(v16 + 20);
  v18 = *(v16 + 24);
  if ((sub_1E48774CC() & 1) == 0)
  {
    return sub_1E48772CC() & 1;
  }

  v23 = a1;
  v19 = v25;
  (*(v4 + 104))(v7, *MEMORY[0x1E6969A88], v25);
  sub_1E48774BC();
  (*(v4 + 8))(v7, v19);
  v20 = v24;
  result = (*(v24 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v15, v11, v12);
    if (sub_1E48772CC())
    {
      v22 = sub_1E48772CC();
    }

    else
    {
      v22 = 0;
    }

    (*(v20 + 8))(v15, v12);
    return v22 & 1;
  }

  return result;
}

uint64_t sub_1E47A4FB4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1E47A5044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *v5;
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_project_boxed_opaque_existential_0(a4, v11);

  return sub_1E47A5448(a1, a2, a3, v13, a5, v10, v11, v12);
}

uint64_t sub_1E47A50CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_1E487753C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E487732C();
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v44);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  v21 = *(a4 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v21 + 16);
  v42 = a4;
  v25(v24, a2, a4);
  sub_1E48772AC();
  v41 = v12;
  sub_1E4877A7C();
  sub_1E487745C();
  v26 = __swift_project_boxed_opaque_existential_0(a3 + 2, a3[5]);
  v27 = sub_1E4847E44(v17, v20, v24, *v26, a4, v43);
  v48 = a1;

  v28 = sub_1E48560AC(sub_1E47A72B0, v47, v27);
  v29 = a3[7];
  a3[7] = v28;

  type metadata accessor for Utils();
  v30 = a3[7];

  v32 = sub_1E485B794(v31, v20);

  v33 = a3[8];
  a3[8] = v32;

  v34 = *(v27 + 16);

  v35 = a3[8];
  LOBYTE(v34) = v34 != *(a3[7] + 16);

  v36 = sub_1E486C514(v34, v17, v35);

  v37 = *(v13 + 8);
  v38 = v44;
  v37(v17, v44);
  (*(v45 + 8))(v41, v46);
  v37(v20, v38);
  v39 = a3[8];
  a3[8] = v36;

  return (*(v21 + 8))(v24, v42);
}

uint64_t sub_1E47A5448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v19);
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  sub_1E47A50CC(a1, v17, a6, a7, a8);
  v20 = a6[7];

  v22 = sub_1E47A6300(v21, a1, a2);

  v23 = (*(a8 + 8))(a7, a8);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 BOOLValue];
  }

  else
  {
    v25 = 0;
  }

  v26 = a6[8];

  v27 = sub_1E47A5614(v22, v26, a3, v25);

  (*(v14 + 8))(v17, a7);
  return v27;
}

uint64_t sub_1E47A5614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v112 = a3;
  v109 = a2;
  v108 = sub_1E487751C();
  v122 = *(v108 - 8);
  v6 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v83 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v83 - v14;
  v16 = type metadata accessor for DayEvents();
  v110 = *(v16 - 1);
  v17 = *(v110 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v106 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v83 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v104 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v83 - v24;
  v114 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v90 = *(v114 - 8);
  v25 = *(v90 + 64);
  v26 = MEMORY[0x1EEE9AC00](v114);
  v92 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v83 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v83 - v31;
  v32 = sub_1E487732C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v103 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v83 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v83 - v40;
  v85 = sub_1E487753C();
  v84 = *(v85 - 8);
  v42 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v120 = &v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  if ((a4 & 1) != 0 && (v44 = [objc_opt_self() unselectedCalendarIdentifiersForFocusMode]) != 0)
  {

    v113 = 1;
  }

  else
  {
    v113 = 0;
  }

  v89 = *(a1 + 16);
  if (v89)
  {
    v91 = 0;
    v46 = *(v33 + 16);
    v45 = v33 + 16;
    v121 = v46;
    v88 = a1 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v102 = (v110 + 48);
    v95 = (v45 + 16);
    v101 = *MEMORY[0x1E6969A48];
    v100 = (v122 + 104);
    v99 = (v122 + 8);
    v98 = (v45 + 32);
    v96 = (v45 + 24);
    v86 = (v45 - 8);
    v122 = v45;
    v87 = *(v45 + 56);
    v47 = 0;
    v93 = MEMORY[0x1E69E7CC0];
    v118 = v11;
    v97 = v15;
    v48 = v115;
    v116 = v39;
    v117 = v41;
    while (1)
    {
      v94 = v47;
      v49 = v121;
      v121(v41, (v88 + v87 * v47), v32);
      v49(v48, v117, v32);
      v50 = v114;
      v49(v48 + *(v114 + 20), v117, v32);
      v111 = *(v50 + 24);
      *(v48 + v111) = MEMORY[0x1E69E7CC0];
      *(v48 + *(v50 + 28)) = v113;
      v51 = (v49)(v116, v117, v32);
      if (v112 >= 1)
      {
        break;
      }

      v54 = v91;
LABEL_27:
      sub_1E47A7408(v48, v92, type metadata accessor for CalendarEventsTimelineEntry);
      v77 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1E4860B5C(0, v77[2] + 1, 1, v77);
      }

      v78 = v116;
      v80 = v77[2];
      v79 = v77[3];
      v91 = v54;
      if (v80 >= v79 >> 1)
      {
        v77 = sub_1E4860B5C(v79 > 1, v80 + 1, 1, v77);
      }

      ++v94;
      v77[2] = v80 + 1;
      v81 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v93 = v77;
      sub_1E47A7380(v92, v77 + v81 + *(v90 + 72) * v80, type metadata accessor for CalendarEventsTimelineEntry);
      v48 = v115;
      sub_1E47A7470(v115, type metadata accessor for CalendarEventsTimelineEntry);
      v82 = *v86;
      (*v86)(v78, v32);
      v41 = v117;
      v82(v117, v32);
      v47 = v94;
      if (v94 == v89)
      {
        goto LABEL_34;
      }
    }

    v52 = MEMORY[0x1E69E7CC0];
    v53 = v116;
    v54 = v91;
    while (1)
    {
      MEMORY[0x1EEE9AC00](v51);
      v55 = v120;
      *(&v83 - 2) = v120;
      *(&v83 - 1) = v53;
      sub_1E47F8D94(sub_1E47A7360, v109, v15);
      if ((*v102)(v15, 1, v16) == 1)
      {
        sub_1E47738B8(v15, &qword_1ECF7C380, &qword_1E4882C20);
        v56 = v106;
        v121(v106, v53, v32);
        v57 = MEMORY[0x1E69E7CC0];
        *(v56 + v16[5]) = MEMORY[0x1E69E7CC0];
        *(v56 + v16[6]) = v57;
        *(v56 + v16[7]) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1E4860B34(0, v52[2] + 1, 1, v52);
        }

        v59 = v52[2];
        v58 = v52[3];
        v60 = v117;
        if (v59 >= v58 >> 1)
        {
          v52 = sub_1E4860B34(v58 > 1, v59 + 1, 1, v52);
        }

        v52[2] = v59 + 1;
        sub_1E47A7380(v106, v52 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v59, type metadata accessor for DayEvents);
      }

      else
      {
        v61 = v119;
        v62 = sub_1E47A7380(v15, v119, type metadata accessor for DayEvents);
        v63 = *(v61 + v16[5]);
        MEMORY[0x1EEE9AC00](v62);
        v60 = v117;
        *(&v83 - 2) = v55;
        *(&v83 - 1) = v60;

        v64 = sub_1E48560AC(sub_1E47A73E8, (&v83 - 4), v63);
        v121(v103, v61, v32);
        v65 = (*(v61 + v16[7]) & 1) != 0 || *(v63 + 16) != *(v64 + 16);
        v66 = *(v119 + v16[6]);
        v67 = v104;
        (*v95)(v104, v103, v32);
        *(v67 + v16[5]) = v64;
        *(v67 + v16[6]) = v66;
        *(v67 + v16[7]) = v65;
        sub_1E47A7408(v67, v105, type metadata accessor for DayEvents);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1E4860B34(0, v52[2] + 1, 1, v52);
        }

        v69 = v52[2];
        v68 = v52[3];
        if (v69 >= v68 >> 1)
        {
          v52 = sub_1E4860B34(v68 > 1, v69 + 1, 1, v52);
        }

        sub_1E47A7470(v104, type metadata accessor for DayEvents);
        v52[2] = v69 + 1;
        sub_1E47A7380(v105, v52 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v69, type metadata accessor for DayEvents);
        sub_1E47A7470(v119, type metadata accessor for DayEvents);
      }

      v70 = v121;
      v121(v30, v60, v32);
      v71 = v114;
      v70(&v30[*(v114 + 20)], v60, v32);
      *&v30[*(v71 + 24)] = v52;
      v30[*(v71 + 28)] = v113;

      v72 = v115;
      sub_1E47A7470(v115, type metadata accessor for CalendarEventsTimelineEntry);
      sub_1E47A7380(v30, v72, type metadata accessor for CalendarEventsTimelineEntry);
      v74 = v107;
      v73 = v108;
      (*v100)(v107, v101, v108);
      v53 = v116;
      sub_1E48774BC();
      v75 = v118;
      (*v99)(v74, v73);
      result = (*v98)(v75, 1, v32);
      if (result == 1)
      {
        break;
      }

      v51 = (*v96)(v53, v75, v32);
      v15 = v97;
      if (*(*(v72 + v111) + 16) >= v112)
      {

        v48 = v115;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v93 = MEMORY[0x1E69E7CC0];
LABEL_34:
    (*(v84 + 8))(v120, v85);
    return v93;
  }

  return result;
}

uint64_t sub_1E47A6300(char *a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v137 = a1;
  v115 = sub_1E48770FC();
  v114 = *(v115 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v123 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1E487751C();
  v121 = *(v135 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v117 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v119 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v111 - v14;
  v15 = type metadata accessor for Event();
  v136 = *(v15 - 1);
  v16 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E487706C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1E487732C();
  v124 = *(v144 - 8);
  v24 = *(v124 + 64);
  v25 = MEMORY[0x1EEE9AC00](v144);
  v120 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v122 = &v111 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v118 = &v111 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v111 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v133 = &v111 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v125 = &v111 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v138 = &v111 - v38;
  v113 = sub_1E487753C();
  v112 = *(v113 - 8);
  v39 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v148 = MEMORY[0x1E69E7CD0];
  v141 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  type metadata accessor for Utils();
  sub_1E4870D68(v23);
  sub_1E487704C();
  v41 = *(v20 + 8);
  v41(v23, v19);
  v140 = a2;
  sub_1E4870D68(v23);
  sub_1E487701C();
  v41(v23, v19);
  v42 = v124;
  v43 = v124 + 8;
  v146 = *(v124 + 8);
  v44 = v125;
  v45 = v144;
  v146(v125, v144);
  v46 = *(v42 + 16);
  v47 = v133;
  v46(v133, a2, v45);
  sub_1E4862374(v44, v47);
  v48 = v144;
  v146(v44, v144);
  v142 = v46;
  v143 = v42 + 16;
  v46(v47, v138, v48);
  v49 = v118;
  sub_1E4862374(v44, v133);
  v145 = v43;
  v146(v44, v48);
  v50 = *(v137 + 2);
  if (v50)
  {
    v51 = &v137[(*(v136 + 80) + 32) & ~*(v136 + 80)];
    v52 = *(v136 + 72);
    v131 = *MEMORY[0x1E6969A88];
    v130 = (v121 + 104);
    v129 = (v121 + 8);
    v128 = (v124 + 48);
    v136 = v52;
    v137 = v33;
    v132 = v15;
    v127 = (v124 + 32);
    do
    {
      sub_1E47A7408(v51, v18, type metadata accessor for Event);
      if ((v18[v15[12]] & 1) == 0)
      {
        v54 = v15[5];
        v53 = v15[6];
        v55 = sub_1E48774CC();
        v56 = &v18[v53];
        if (v55)
        {
          v57 = v144;
          v142(v49, v56, v144);
          v58 = v139;
          v59 = v134;
          v60 = v49;
          v61 = v135;
          (*v130)(v134, v131, v135);
          sub_1E48774BC();
          (*v129)(v59, v61);
          if ((*v128)(v58, 1, v57) == 1)
          {
            sub_1E47738B8(v139, &unk_1ECF7C880, &qword_1E4882710);
            v33 = v137;
            (*v127)(v137, v60, v57);
            v15 = v132;
            v49 = v60;
          }

          else
          {
            v62 = v122;
            v126 = *v127;
            v126(v122, v139, v57);
            sub_1E47A7308();
            v63 = sub_1E4878ACC();
            v49 = v60;
            v33 = v137;
            if (v63)
            {
              v146(v62, v57);
              v64 = v33;
              v65 = v60;
            }

            else
            {
              v146(v60, v57);
              v64 = v33;
              v65 = v62;
            }

            v126(v64, v65, v57);
            v15 = v132;
          }

          v52 = v136;
        }

        else
        {
          v57 = v144;
          v142(v33, v56, v144);
        }

        if (sub_1E48772CC() & 1) != 0 && (sub_1E48772DC())
        {
          v66 = v133;
          v142(v133, v33, v57);
          v67 = v49;
          v68 = v125;
          v69 = v66;
          v52 = v136;
          sub_1E4862374(v125, v69);
          v70 = v68;
          v49 = v67;
          v33 = v137;
          v146(v70, v57);
        }

        v146(v33, v57);
      }

      sub_1E47A7470(v18, type metadata accessor for Event);
      v51 += v52;
      --v50;
    }

    while (v50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v71 = v121;
  v72 = *(v121 + 72);
  v73 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1E487BC70;
  v75 = v74 + v73;
  v76 = *(v71 + 104);
  v77 = v135;
  v76(v75, *MEMORY[0x1E6969A50], v135);
  v76(v75 + v72, *MEMORY[0x1E6969A68], v77);
  v76(v75 + 2 * v72, *MEMORY[0x1E6969A78], v77);
  v76(v75 + 3 * v72, *MEMORY[0x1E6969A48], v77);
  v78 = sub_1E486B81C(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v79 = v141;
  sub_1E487747C();

  sub_1E48770BC();
  v80 = v119;
  sub_1E48774AC();
  v81 = v124;
  v82 = *(v124 + 48);
  v83 = v144;
  if (v82(v80, 1, v144) == 1)
  {
    __break(1u);
  }

  else
  {
    v78 = *(v81 + 32);
    v84 = v120;
    v78(v120, v80, v83);
    if (sub_1E48772CC() & 1) != 0 && (sub_1E48772DC())
    {
      v85 = v133;
      v142(v133, v84, v83);
      v86 = v125;
      sub_1E4862374(v125, v85);
      v87 = v86;
      v79 = v141;
      v146(v87, v83);
    }

    sub_1E48770BC();
    v88 = v117;
    sub_1E48774AC();
    if (v82(v88, 1, v83) != 1)
    {
      v146(v84, v83);
      v78(v84, v88, v83);
      if (sub_1E48772CC() & 1) != 0 && (sub_1E48772DC())
      {
        v89 = v133;
        v142(v133, v84, v83);
        v90 = v125;
        sub_1E4862374(v125, v89);
        v146(v90, v83);
      }

      sub_1E4878DEC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1E487A7E0;
      v92 = v148;
      v93 = *(v148 + 16);
      v94 = MEMORY[0x1E69E65A8];
      *(v91 + 56) = MEMORY[0x1E69E6530];
      *(v91 + 64) = v94;
      *(v91 + 32) = v93;
      sub_1E478E80C();
      v95 = sub_1E4878E4C();
      sub_1E4877AAC();

      v96 = *(v92 + 16);
      if (v96)
      {
        v97 = sub_1E4846B50(*(v92 + 16), 0);
        v98 = sub_1E4869E88(v147, &v97[(*(v124 + 80) + 32) & ~*(v124 + 80)], v96, v92);
        v99 = v147[0];
        v79 = v147[2];
        v84 = v147[3];

        sub_1E47A7300();
        if (v98 != v96)
        {
          __break(1u);
          goto LABEL_41;
        }

        v83 = v123;
        v84 = v120;
        v79 = v141;
      }

      else
      {
        v97 = MEMORY[0x1E69E7CC0];
        v83 = v123;
      }

      v147[0] = v97;
      sub_1E47FA8A4(v147);
      v100 = v144;

      v92 = sub_1E47F8CCC(v116, v147[0]);
      if ((v103 & 1) == 0)
      {
LABEL_31:
        sub_1E4860EF8(v92, v101, v102, v103);
        v105 = v104;
        v106 = v115;
        goto LABEL_38;
      }

      v99 = v103;
      v98 = v102;
      v96 = v101;
      sub_1E487910C();
      swift_unknownObjectRetain_n();
      v107 = swift_dynamicCastClass();
      if (!v107)
      {
        swift_unknownObjectRelease();
        v107 = MEMORY[0x1E69E7CC0];
      }

      v108 = *(v107 + 16);

      if (!__OFSUB__(v99 >> 1, v98))
      {
        if (v108 == (v99 >> 1) - v98)
        {
          v105 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v106 = v115;
          v100 = v144;
          if (v105)
          {
LABEL_39:
            v109 = v146;
            v146(v84, v100);
            (*(v114 + 8))(v83, v106);
            v109(v138, v100);
            (*(v112 + 8))(v79, v113);
            return v105;
          }

          v105 = MEMORY[0x1E69E7CC0];
LABEL_38:
          swift_unknownObjectRelease();
          goto LABEL_39;
        }

        goto LABEL_42;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      swift_unknownObjectRelease();
      v103 = v99;
      v102 = v98;
      v101 = v96;
      v100 = v144;
      goto LABEL_31;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E47A72B0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Event() + 24);
  return sub_1E48772CC() & 1;
}

unint64_t sub_1E47A7308()
{
  result = qword_1EE2B5A00;
  if (!qword_1EE2B5A00)
  {
    sub_1E487732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A00);
  }

  return result;
}

uint64_t sub_1E47A7380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A7408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A7470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WideAllDayView()
{
  result = qword_1EE2B3B58;
  if (!qword_1EE2B3B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47A7544()
{
  sub_1E47A7718(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CellDisplayContext(319);
    if (v1 <= 0x3F)
    {
      sub_1E47A7718(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E47A7718(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E47A7718(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            sub_1E47A7718(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
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

void sub_1E47A7718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47A7798@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideAllDayView();
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7C840, &qword_1E487ADF0);
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

uint64_t sub_1E47A79A0@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideAllDayView();
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
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

uint64_t sub_1E47A7BA8@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideAllDayView();
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

uint64_t sub_1E47A7DB0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideAllDayView() + 36));
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

uint64_t sub_1E47A7F00()
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
      sub_1E47ABC84(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v7[*(v19 + 56)];

      if (v13 == 5)
      {
        sub_1E47ABD4C(v7, v18, type metadata accessor for Event);
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
        result = sub_1E47ABD4C(v18, v10 + v11 + v16 * v12, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E47ABCEC(v7, type metadata accessor for Event);
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

uint64_t sub_1E47A8198()
{
  v19 = type metadata accessor for Event();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v0;
  v18 = *(*v0 + 16);
  if (v18)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_1E47ABC84(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v7[*(v19 + 56)];
      if (v13 == 5)
      {
        sub_1E47ABCEC(v7, type metadata accessor for Event);
      }

      else
      {

        if ((v13 & 0xFE) == 6)
        {
          result = sub_1E47ABCEC(v7, type metadata accessor for Event);
        }

        else
        {
          sub_1E47ABD4C(v7, v17, type metadata accessor for Event);
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
          result = sub_1E47ABD4C(v17, v10 + v11 + v16 * v12, type metadata accessor for Event);
        }
      }

      if (v18 == ++v9)
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

uint64_t sub_1E47A8464()
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
      sub_1E47ABC84(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
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
        sub_1E47ABD4C(v7, v18, type metadata accessor for Event);
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
        result = sub_1E47ABD4C(v18, v10 + v11 + v16 * v12, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E47ABCEC(v7, type metadata accessor for Event);
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

uint64_t sub_1E47A8700()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(*v0 + 16) == 1)
  {
    sub_1E47ABC84(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Event);
    v7 = sub_1E47CC708();
    sub_1E47ABCEC(v5, type metadata accessor for Event);
    return v7;
  }

  v9 = *(sub_1E47A8198() + 16);

  if (!v9)
  {
    v10 = *(sub_1E47A8464() + 16);

    if (!v10)
    {
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1E487A7E0;
      v18 = sub_1E47A7F00();
      goto LABEL_16;
    }
  }

  v11 = *(sub_1E47A8198() + 16);

  if (!v11)
  {
    v12 = *(sub_1E47A7F00() + 16);

    if (!v12)
    {
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1E487A7E0;
      v18 = sub_1E47A8464();
LABEL_16:
      v19 = *(v18 + 16);

      v20 = MEMORY[0x1E69E65A8];
      *(v17 + 56) = MEMORY[0x1E69E6530];
      *(v17 + 64) = v20;
      *(v17 + 32) = v19;
      v21 = sub_1E4878BAC();

      return v21;
    }
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E487A7E0;
  v14 = *(v6 + 16);
  v15 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  v16 = sub_1E4878BAC();

  return v16;
}

uint64_t sub_1E47A8B28()
{
  v0 = type metadata accessor for Event();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_1E47A7F00() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_1E47A8464() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_1E47A8198() + 16);

  if (v7 != 1)
  {
    return 0;
  }

  result = sub_1E47A8198();
  if (*(result + 16))
  {
    sub_1E47ABC84(result + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for Event);

    v9 = v4[*(v0 + 56)];
    sub_1E47ABCEC(v4, type metadata accessor for Event);
    return v9 == 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47A8C80@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for Event();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E487732C();
  v55 = *(v50 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v11;
  v12 = sub_1E487725C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CellDisplayContext(0);
  v16 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4877CCC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v25;
  v27 = v1;
  sub_1E47A7798(&v45 - v25);
  sub_1E4877CAC();
  sub_1E477F9E8();
  v28 = sub_1E4878EAC();
  v29 = *(v20 + 8);
  v29(v24, v19);
  v29(v26, v19);
  if (v28)
  {
    return (*(v13 + 56))(v56, 1, 1, v12);
  }

  v31 = v13;
  v32 = v12;
  v33 = v56;
  v34 = type metadata accessor for WideAllDayView();
  sub_1E47ABC84(v27 + *(v34 + 20), v18, type metadata accessor for CellDisplayContext);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v35 = v55;
    if (result != 1)
    {
      v39 = v47;
      v40 = v50;
      result = (*(v55 + 32))(v47, v18, v50);
      v41 = *(*v27 + 16);
      if (v41 < 2)
      {
        v42 = v48;
        if (v41 != 1)
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v44 = v46;
        sub_1E47ABC84(*v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v46, type metadata accessor for Event);
        (*(v35 + 8))(v39, v40);
        sub_1E4773850(v44 + *(v53 + 44), v42, &unk_1ECF7B688, &qword_1E487C160);
        sub_1E47ABCEC(v44, type metadata accessor for Event);
      }

      else
      {
        v42 = v48;
        sub_1E4877A6C();
        (*(v35 + 8))(v39, v40);
        (*(v31 + 56))(v42, 0, 1, v12);
      }

      return sub_1E477372C(v42, v33, &unk_1ECF7B688, &qword_1E487C160);
    }

    v36 = *v18;
  }

  else
  {
    v36 = v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    result = (*(v55 + 8))(v18, v50);
  }

  v37 = v51;
  if (!*(*v27 + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v38 = v49;
  sub_1E4773850(*v27 + *(v53 + 44) + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v49, &unk_1ECF7B688, &qword_1E487C160);
  if ((*(v31 + 48))(v38, 1, v32) == 1)
  {
    sub_1E47738B8(v38, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v43 = *(v31 + 32);
    v43(v37, v38, v32);
    if (v36)
    {
      v43(v33, v37, v32);
      return (*(v31 + 56))(v33, 0, 1, v32);
    }

    (*(v31 + 8))(v37, v32);
  }

  return (*(v31 + 56))(v33, 1, 1, v32);
}

uint64_t sub_1E47A9310()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v60 - v4;
  v5 = sub_1E487757C();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E487753C();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v15 = type metadata accessor for Event();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v23 = type metadata accessor for CellDisplayContext(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WideAllDayView();
  sub_1E47ABC84(v1 + *(v27 + 20), v26, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v46 = sub_1E487732C();
    (*(*(v46 - 8) + 8))(v26, v46);
    v47 = *(*v1 + 16);
    if (v47)
    {
      sub_1E47ABC84(*v1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v22, type metadata accessor for Event);
      if (v47 == 1)
      {
        sub_1E47A7BA8(v14);
        v49 = *(v15 + 20);
        v48 = *(v15 + 24);
        v50 = sub_1E48774CC();
        (*(v9 + 8))(v14, v65);
        if ((v50 & 1) == 0)
        {
          v56 = sub_1E47A9AB4();
          v57 = sub_1E48772BC();
          v58 = sub_1E48772BC();
          v59 = [v56 stringFromDate:v57 toDate:v58];

          v45 = sub_1E4878BDC();
          goto LABEL_14;
        }
      }

      if (qword_1EE2B4848 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v45 = sub_1E48771EC();
    goto LABEL_14;
  }

  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1E47ABC84(*v1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v20, type metadata accessor for Event);
  sub_1E47A7BA8(v14);
  v28 = *(v15 + 20);
  v29 = *(v15 + 24);
  v30 = sub_1E48774CC();
  v31 = *(v9 + 8);
  v32 = v65;
  v31(v14, v65);
  if (v30)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E47A7BA8(v14);
    v34 = sub_1E487748C();
    v31(v14, v32);
    [v33 setCalendar_];

    sub_1E47A7BA8(v14);
    sub_1E487750C();
    v31(v14, v32);
    v35 = sub_1E487756C();
    (*(v62 + 8))(v8, v63);
    [v33 setTimeZone_];

    v36 = v61;
    sub_1E47A7BA8(v61);
    v37 = v32;
    v38 = v64;
    sub_1E48774EC();
    v31(v36, v37);
    v39 = sub_1E487744C();
    v40 = *(v39 - 8);
    v41 = 0;
    if ((*(v40 + 48))(v38, 1, v39) != 1)
    {
      v41 = sub_1E48773DC();
      (*(v40 + 8))(v38, v39);
    }

    [v33 setLocale_];

    v42 = sub_1E4878B9C();
    [v33 setLocalizedDateFormatFromTemplate_];

    v43 = sub_1E48772BC();
    v44 = [v33 stringFromDate_];

    v45 = sub_1E4878BDC();
  }

  else
  {
    v51 = sub_1E47A9AB4();
    v52 = sub_1E48772BC();
    v53 = sub_1E48772BC();
    v54 = [v51 stringFromDate:v52 toDate:v53];

    v45 = sub_1E4878BDC();
  }

  v22 = v20;
LABEL_14:
  sub_1E47ABCEC(v22, type metadata accessor for Event);
  return v45;
}

id sub_1E47A9AB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v25 - v2;
  v25 = sub_1E487757C();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  sub_1E47A7BA8(v14);
  v16 = sub_1E487748C();
  v17 = *(v8 + 8);
  v17(v14, v7);
  [v15 setCalendar_];

  sub_1E47A7BA8(v14);
  sub_1E487750C();
  v17(v14, v7);
  v18 = sub_1E487756C();
  (*(v3 + 8))(v6, v25);
  [v15 setTimeZone_];

  v19 = v26;
  sub_1E47A7BA8(v12);
  sub_1E48774EC();
  v17(v12, v7);
  v20 = sub_1E487744C();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v22 = sub_1E48773DC();
    (*(v21 + 8))(v19, v20);
  }

  [v15 setLocale_];

  v23 = sub_1E4878B9C();
  [v15 setDateTemplate_];

  return v15;
}

uint64_t sub_1E47A9E20()
{
  v1 = type metadata accessor for Event();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_1E47A7F00() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_1E47A8464() + 16);

  if (v7)
  {
    return 0;
  }

  v8 = *(sub_1E47A8198() + 16);

  if (v8 != 1)
  {
    return 0;
  }

  if (*(*v0 + 16))
  {
    sub_1E47ABC84(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for Event);
    v10 = v5[*(v1 + 56)];
    sub_1E47ABCEC(v5, type metadata accessor for Event);
    return (v10 - 3) < 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47A9F70()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideAllDayView() + 36));
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

uint64_t sub_1E47AA0D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v60 = type metadata accessor for CellDisplayContext(0);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v59 - v8;
  v9 = type metadata accessor for EventBackgroundView();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3B8, &qword_1E487CF58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3C0, &qword_1E487CF60);
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v59 - v18;
  sub_1E4878D2C();
  v62 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_1E4877F6C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3C8, &qword_1E487CF68);
  sub_1E47AA6D0(a1, &v16[*(v20 + 44)]);
  v21 = *(sub_1E47A7DB0() + 48);

  v22 = sub_1E487814C();
  sub_1E4877B0C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3D0, &qword_1E487CF70) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_1E487818C();
  v33 = *(sub_1E47A7DB0() + 48);

  sub_1E4877B0C();
  v34 = &v16[*(v13 + 36)];
  *v34 = v32;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = *a1;
  v40 = *(*a1 + 16);
  v41 = type metadata accessor for Event();
  v42 = *(v41 - 8);
  if (v40 == 1)
  {
    v43 = v63;
    sub_1E47ABC84(v39 + ((*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80)), v63, type metadata accessor for Event);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v63;
  }

  (*(v42 + 56))(v43, v44, 1, v41);
  v45 = type metadata accessor for WideAllDayView();
  sub_1E47ABC84(a1 + *(v45 + 20), v5, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v47 = sub_1E487732C();
    (*(*(v47 - 8) + 8))(v5, v47);
  }

  else
  {
    sub_1E47ABCEC(v5, type metadata accessor for CellDisplayContext);
  }

  v48 = EnumCaseMultiPayload != 2;
  KeyPath = swift_getKeyPath();
  *&v12[v9[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v12[v9[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v12[v9[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v50 = swift_getKeyPath();
  sub_1E477372C(v43, v12, &qword_1ECF7B950, &unk_1E487AE90);
  *&v12[v9[5]] = 3;
  v12[v9[6]] = v48;
  v51 = &v12[v9[7]];
  *v51 = KeyPath;
  v51[8] = 0;
  v52 = &v12[v9[11]];
  *v52 = v50;
  v52[8] = 0;
  v53 = sub_1E487889C();
  v55 = v54;
  v56 = &v19[*(v61 + 36)];
  sub_1E47ABD4C(v12, v56, type metadata accessor for EventBackgroundView);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v57 = v53;
  v57[1] = v55;
  sub_1E477372C(v16, v19, &qword_1ECF7C3B8, &qword_1E487CF58);
  sub_1E477372C(v19, v64, &qword_1ECF7C3C0, &qword_1E487CF60);
}

uint64_t sub_1E47AA6D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3D8, &qword_1E487D060);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AllDayCirclesView(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  sub_1E4878D2C();
  v38 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *a1;

  v17 = sub_1E47A9F70();
  KeyPath = swift_getKeyPath();
  *&v15[v9[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v15 = KeyPath;
  v15[8] = 0;
  *&v15[v9[6]] = v16;
  *&v15[v9[7]] = v17;
  v19 = &v15[v9[8]];
  sub_1E48783CC();
  v20 = *(sub_1E47A7DB0() + 72);

  sub_1E487889C();
  sub_1E4877BCC();
  v36 = v46;
  v37 = v44;
  v34 = v49;
  v35 = v48;
  v43 = 1;
  v42 = v45;
  v41 = v47;
  *v8 = sub_1E4877F4C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3E0, &qword_1E487D068);
  sub_1E47AAA90(a1, &v8[*(v21 + 44)]);
  sub_1E47ABC84(v15, v13, type metadata accessor for AllDayCirclesView);
  v22 = v43;
  v23 = v42;
  v24 = v8;
  v25 = v13;
  v26 = v41;
  v27 = v40;
  sub_1E4773850(v24, v40, &qword_1ECF7C3D8, &qword_1E487D060);
  v28 = v39;
  sub_1E47ABC84(v25, v39, type metadata accessor for AllDayCirclesView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3E8, &qword_1E487D070);
  v30 = v28 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = v22;
  v31 = v36;
  *(v30 + 16) = v37;
  *(v30 + 24) = v23;
  *(v30 + 32) = v31;
  *(v30 + 40) = v26;
  v32 = v34;
  *(v30 + 48) = v35;
  *(v30 + 56) = v32;
  sub_1E4773850(v27, v28 + *(v29 + 64), &qword_1ECF7C3D8, &qword_1E487D060);
  sub_1E47738B8(v24, &qword_1ECF7C3D8, &qword_1E487D060);
  sub_1E47ABCEC(v15, type metadata accessor for AllDayCirclesView);
  sub_1E47738B8(v27, &qword_1ECF7C3D8, &qword_1E487D060);
  sub_1E47ABCEC(v25, type metadata accessor for AllDayCirclesView);
}

uint64_t sub_1E47AAA90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v119 = sub_1E4877B3C();
  v118 = *(v119 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Event();
  v115 = *(v5 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v116 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v122 = *(v8 - 8);
  v123 = v8;
  v9 = *(v122 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v121 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v128 = v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F0, &qword_1E487D078);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v114 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F8, &qword_1E487DDC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v127 = v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v114 - v22;
  sub_1E4878D2C();
  v120 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_1E47A8B28();
  v126 = v23;
  if (v24)
  {
    v25 = sub_1E487874C();
    v26 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v27 = a1;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v29 = *MEMORY[0x1E69816D0];
    v30 = sub_1E487877C();
    v31 = v26 + v28;
    a1 = v27;
    (*(*(v30 - 8) + 104))(v31, v29, v30);
    *v26 = swift_getKeyPath();
    *v17 = v25;
    v32 = sub_1E47A9F70();
    KeyPath = swift_getKeyPath();
    v34 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v34 = KeyPath;
    v34[1] = v32;
    v35 = sub_1E487864C();
    v36 = swift_getKeyPath();
    v37 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v37 = v36;
    v37[1] = v35;
    LOBYTE(v35) = sub_1E487818C();
    sub_1E4877B0C();
    v38 = v17 + *(v13 + 36);
    *v38 = v35;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    sub_1E477372C(v17, v23, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v14 + 56))(v23, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v23, 1, 1, v13);
  }

  v129 = sub_1E47A8700();
  v130 = v43;
  v114[1] = sub_1E477A374();
  v44 = sub_1E487848C();
  v46 = v45;
  v48 = v47;
  sub_1E47A9E20();
  v49 = sub_1E48783EC();
  v51 = v50;
  v53 = v52;
  sub_1E477A3C8(v44, v46, v48 & 1);

  sub_1E47A9F70();
  v54 = sub_1E487842C();
  v56 = v55;
  v58 = v57;
  v114[0] = v59;

  sub_1E477A3C8(v49, v51, v53 & 1);

  v60 = *a1;
  v61 = *(*a1 + 16);
  v125 = *a1;
  if (v61 == 1)
  {
    v62 = v116;
    sub_1E47ABC84(v60 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v116, type metadata accessor for Event);
    v63 = v117;
    sub_1E47A79A0(v117);
    sub_1E476EA20(v62, v63);
    (*(v118 + 8))(v63, v119);
    sub_1E47ABCEC(v62, type metadata accessor for Event);
  }

  else
  {
    sub_1E48786EC();
  }

  v64 = sub_1E48783FC();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_1E477A3C8(v54, v56, v58 & 1);

  v71 = swift_getKeyPath();
  v129 = v64;
  v130 = v66;
  v72 = v68 & 1;
  v131 = v68 & 1;
  v132 = v70;
  v133 = v71;
  v134 = 1;
  v135 = 0;
  v73 = *(sub_1E47A7DB0() + 120);

  if (v73 == 1)
  {
    v74 = *(v125 + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v64, v66, v72);

  v129 = sub_1E47A9310();
  v130 = v75;
  v76 = sub_1E487848C();
  v78 = v77;
  v80 = v79;
  sub_1E47A9E20();
  v81 = sub_1E48783EC();
  v83 = v82;
  v85 = v84;
  sub_1E477A3C8(v76, v78, v80 & 1);

  v86 = *(sub_1E47A7DB0() + 136);

  sub_1E48781CC();

  v87 = sub_1E487842C();
  v89 = v88;
  v91 = v90;

  sub_1E477A3C8(v81, v83, v85 & 1);

  if (*(v125 + 16) == 1)
  {
    v92 = v116;
    sub_1E47ABC84(v125 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v116, type metadata accessor for Event);
    v93 = v117;
    sub_1E47A79A0(v117);
    sub_1E476EA20(v92, v93);
    (*(v118 + 8))(v93, v119);
    sub_1E47ABCEC(v92, type metadata accessor for Event);
  }

  else
  {
    sub_1E48786EC();
  }

  v118 = sub_1E48783FC();
  v117 = v94;
  LODWORD(v119) = v95;
  v125 = v96;

  sub_1E477A3C8(v87, v89, v91 & 1);

  v97 = swift_getKeyPath();
  v98 = v127;
  sub_1E4773850(v126, v127, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v100 = v121;
  v99 = v122;
  v101 = *(v122 + 16);
  v102 = v128;
  v103 = v123;
  v101(v121, v128, v123);
  v104 = v98;
  v105 = v124;
  sub_1E4773850(v104, v124, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C400, &qword_1E487D0B0);
  v101((v105 + v106[12]), v100, v103);
  v107 = v105 + v106[16];
  *v107 = 0;
  *(v107 + 8) = 1;
  v108 = v105 + v106[20];
  v109 = v118;
  v110 = v117;
  *v108 = v118;
  *(v108 + 8) = v110;
  v111 = v119;
  LOBYTE(v106) = v119 & 1;
  *(v108 + 16) = v119 & 1;
  *(v108 + 24) = v125;
  *(v108 + 32) = v97;
  *(v108 + 40) = 1;
  *(v108 + 48) = 0;
  sub_1E478B8E0(v109, v110, v111 & 1);
  v112 = *(v99 + 8);

  v112(v102, v103);
  sub_1E47738B8(v126, &qword_1ECF7C3F8, &qword_1E487DDC0);
  sub_1E477A3C8(v109, v110, v106);

  v112(v100, v103);
  sub_1E47738B8(v127, &qword_1ECF7C3F8, &qword_1E487DDC0);
}

uint64_t sub_1E47AB5C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C388, &qword_1E487CF38);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v28 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C390, &qword_1E487CF40);
  v5 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v28 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C398, &qword_1E487CF48);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_1E487725C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v28 - v22;
  sub_1E47A8C80(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E47738B8(v15, &unk_1ECF7B688, &qword_1E487C160);
    *v4 = sub_1E4877FBC();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3A0, &qword_1E487CF50);
    sub_1E47AA0D4(v1, &v4[*(v24 + 44)]);
    sub_1E4773850(v4, v7, &qword_1ECF7C388, &qword_1E487CF38);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C3A8, &qword_1ECF7C398, &qword_1E487CF48);
    sub_1E4773680(&qword_1ECF7C3B0, &qword_1ECF7C388, &qword_1E487CF38);
    sub_1E487803C();
    return sub_1E47738B8(v4, &qword_1ECF7C388, &qword_1E487CF38);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    v26 = (*(v17 + 16))(v21, v23, v16);
    MEMORY[0x1EEE9AC00](v26);
    *(&v28 - 2) = v1;
    sub_1E4773680(&qword_1ECF7C3B0, &qword_1ECF7C388, &qword_1E487CF38);
    sub_1E487831C();
    v27 = v29;
    (*(v8 + 16))(v7, v11, v29);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C3A8, &qword_1ECF7C398, &qword_1E487CF48);
    sub_1E487803C();
    (*(v8 + 8))(v11, v27);
    return (*(v17 + 8))(v23, v16);
  }
}

uint64_t sub_1E47ABAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3A0, &qword_1E487CF50);
  sub_1E47AA0D4(a1, a2 + *(v4 + 44));
}

double sub_1E47ABBAC(uint64_t a1)
{
  v2 = *(sub_1E47A7DB0() + 112);

  v3 = fmax(v2, 1.0);
  v4 = *(sub_1E47A7DB0() + 48);

  v5 = v4 + v4 + 0.0;
  v6 = sub_1E47A9F70();
  sub_1E487201C(v6, a1);
  v8 = v7;

  v9 = v3 * v8;
  v10 = *(sub_1E47A7DB0() + 136);

  v11 = sub_1E48781CC();

  sub_1E487201C(v11, a1);
  v13 = v12;

  if (v9 > v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  return v5 + v14;
}

uint64_t sub_1E47ABC84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47ABCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47ABD4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47ABDB4()
{
  result = qword_1ECF7C410;
  if (!qword_1ECF7C410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C418, &unk_1E487D148);
    sub_1E4773680(&qword_1ECF7C3A8, &qword_1ECF7C398, &qword_1E487CF48);
    sub_1E4773680(&qword_1ECF7C3B0, &qword_1ECF7C388, &qword_1E487CF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C410);
  }

  return result;
}

uint64_t sub_1E47ABE98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_10:
    v12 = sub_1E4878F0C();
    result = sub_1E47B53A0(0, 0, v5, v12, 0, v3);
    if (v13)
    {
      v14 = sub_1E4878F0C();
      v15 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v3 = a2;
  v5 = a1;
  v4 = a3;
  if (a2 >> 62)
  {
    goto LABEL_10;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  result = sub_1E47B53A0(0, 0, a1, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), 0, a2);
  if (v9)
  {
    v8 = 0;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = result;
LABEL_8:
    *v4 = result;
    v4[1] = v8;
    v4[2] = v10;
    v4[3] = 0;
    v4[4] = v3;
    return result;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 < result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v6 + 16);
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < v10)
    {
LABEL_13:
      __break(1u);
LABEL_14:
      v15 = v8;
      v14 = result;
LABEL_15:
      result = sub_1E4878F0C();
      if (result < v14)
      {
        goto LABEL_20;
      }

      v10 = result;
      result = sub_1E4878F0C();
      if (result < 0)
      {
        goto LABEL_19;
      }

      v11 = result;
      result = v14;
      v8 = v15;
      if (v14 < 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_8;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E47AC06C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E4866DD0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1E47B488C(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E47AC108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v29 = a2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C448, &qword_1E487D640);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - v13;
  sub_1E4878D2C();
  v35 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a1 + 40);
  sub_1E487889C();
  sub_1E4877BCC();
  v32 = v43;
  v33 = v41;
  v30 = v46;
  v31 = v45;
  v40 = 0;
  v39 = v42;
  v38 = v44;
  v16 = sub_1E4877FBC();
  v17 = *(v29 + 112);
  *v14 = v16;
  *(v14 + 1) = v17;
  v14[16] = 0;
  v29 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C450, &qword_1E487D648) + 44);
  swift_beginAccess();
  v37 = *(a1 + 32);
  swift_getKeyPath();
  (*(v7 + 16))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C458, &qword_1E487D678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C460, &qword_1E487D680);
  sub_1E4773680(&qword_1EE2B46E8, &qword_1ECF7C458, &qword_1E487D678);
  sub_1E4773680(&qword_1EE2B0F20, &qword_1ECF7C460, &qword_1E487D680);
  sub_1E487885C();

  v20 = v40;
  v21 = v39;
  v22 = v38;
  v23 = v36;
  sub_1E4773850(v14, v36, &qword_1ECF7C448, &qword_1E487D640);
  *a4 = 0;
  *(a4 + 8) = v20;
  v24 = v32;
  *(a4 + 16) = v33;
  *(a4 + 24) = v21;
  *(a4 + 32) = v24;
  *(a4 + 40) = v22;
  v25 = v30;
  *(a4 + 48) = v31;
  *(a4 + 56) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C468, &qword_1E487D688);
  sub_1E4773850(v23, a4 + *(v26 + 48), &qword_1ECF7C448, &qword_1E487D640);
  sub_1E47738B8(v14, &qword_1ECF7C448, &qword_1E487D640);
  sub_1E47738B8(v23, &qword_1ECF7C448, &qword_1E487D640);
}

uint64_t sub_1E47AC5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877FBC();
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C470, &qword_1E487D690);
  sub_1E47AC67C(v5, a2, a3 + *(v6 + 44));
}

uint64_t sub_1E47AC67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_1E4877C5C();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1E487732C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1E4878D2C();
  v30 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v34 = *(a1 + v14);
  swift_getKeyPath();
  v28 = *(v12 + 16);
  v28(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v15 = *(v12 + 80);
  v27 = a2;
  v16 = (v15 + 24) & ~v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v12 + 32))(v17 + v16, &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C478, &qword_1E487D6C0);
  v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C480, &qword_1E487D6C8);
  sub_1E4773680(&qword_1EE2B46E0, &qword_1ECF7C478, &qword_1E487D6C0);
  sub_1E4773680(&qword_1EE2B0EA0, &qword_1ECF7C480, &qword_1E487D6C8);
  v18 = v33;
  sub_1E487885C();
  sub_1E4877C4C();
  v20 = v31;
  v19 = v32;
  (*(v31 + 16))(v29, v10, v32);
  sub_1E47B45D0(&qword_1EE2B1600, 255, MEMORY[0x1E697E468]);
  v21 = sub_1E4877BDC();
  (*(v20 + 8))(v10, v19);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C488, &qword_1E487D6D0) + 36)) = v21;
  v22 = sub_1E48788AC();
  v23 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C490, &qword_1E487D6D8) + 36));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C498, &qword_1E487D6E0);
  v28(v23 + *(v24 + 36), v27, v26);

  *v23 = v22;
  return result;
}

uint64_t sub_1E47ACADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v191 = a3;
  v206 = a2;
  v207 = a1;
  v204 = a4;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4A0, &qword_1E487D6E8);
  v4 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v187 = &v175[-v5];
  v186 = type metadata accessor for NoEventsView();
  v6 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v178 = &v175[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4A8, &qword_1E487D6F0);
  v200 = *(v201 - 8);
  v8 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v185 = &v175[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4B0, &qword_1E487D6F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v203 = &v175[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v215 = &v175[-v14];
  v190 = sub_1E48782AC();
  v189 = *(v190 - 8);
  v15 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v175[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v205 = type metadata accessor for NarrowTextHeaderView();
  v198 = *(v205 - 8);
  v17 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v183 = &v175[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4B8, &qword_1E487D700);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v202 = &v175[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v213 = &v175[-v23];
  v182 = type metadata accessor for NarrowXMoreView();
  v181 = *(v182 - 8);
  v24 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v177 = &v175[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4C0, &qword_1E487D708);
  v196 = *(v197 - 8);
  v26 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v180 = &v175[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4C8, &qword_1E487D710);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v212 = &v175[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v219 = &v175[-v32];
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4D0, &qword_1E487D718);
  v194 = *(v195 - 8);
  v33 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v179 = &v175[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4D8, &qword_1E487D720);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v211 = &v175[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v175[-v39];
  v41 = type metadata accessor for NarrowConflictsView(0);
  v193 = *(v41 - 1);
  v42 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v175[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4E0, &qword_1E487D728);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v210 = &v175[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v47);
  v217 = &v175[-v49];
  v50 = type metadata accessor for NarrowReminderView();
  v192 = *(v50 - 1);
  v51 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v175[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4E8, &qword_1E487D730);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v209 = &v175[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v56);
  v218 = &v175[-v58];
  v59 = type metadata accessor for NarrowEventDetailsView(0);
  v60 = *(v59 - 1);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v175[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4F0, &qword_1E487D738);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v208 = &v175[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v66);
  v220 = &v175[-v68];
  sub_1E4878D2C();
  v199 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47A1524(v207, v223);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
  v216 = v69;
  v70 = swift_dynamicCast();
  v214 = v40;
  if (v70)
  {
    v71 = v221;
    sub_1E47B4C1C(v221 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, v63, type metadata accessor for Event);
    v72 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v73 = v59[5];
    v74 = sub_1E487732C();
    (*(*(v74 - 8) + 16))(&v63[v73], v206 + v72, v74);
    v176 = *(v71 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime);
    LOBYTE(v72) = *(v71 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation);

    *&v63[v59[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v63[v59[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v63[v59[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v63[v59[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    v40 = v214;
    swift_storeEnumTagMultiPayload();
    v76 = swift_getKeyPath();
    v63[v59[6]] = v176;
    v63[v59[7]] = v72;
    v77 = &v63[v59[11]];
    *v77 = KeyPath;
    v77[8] = 0;
    v78 = &v63[v59[13]];
    *v78 = v76;
    v78[8] = 0;
    v79 = v220;
    sub_1E47B49FC(v63, v220, type metadata accessor for NarrowEventDetailsView);
    v80 = 0;
    v81 = v218;
  }

  else
  {
    v80 = 1;
    v81 = v218;
    v79 = v220;
  }

  (*(v60 + 56))(v79, v80, 1, v59);
  v82 = v207;
  sub_1E47A1524(v207, v223);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
  if (swift_dynamicCast())
  {
    sub_1E47B4C1C(v221 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, v53, type metadata accessor for Event);

    v83 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v84 = v50[5];
    v85 = sub_1E487732C();
    (*(*(v85 - 8) + 16))(&v53[v84], v206 + v83, v85);
    *&v53[v50[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v53[v50[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v53[v50[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v86 = swift_getKeyPath();
    *&v53[v50[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    *&v53[v50[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v87 = swift_getKeyPath();
    v88 = &v53[v50[9]];
    *v88 = v86;
    v88[8] = 0;
    v89 = &v53[v50[12]];
    *v89 = v87;
    v89[8] = 0;
    sub_1E47B49FC(v53, v81, type metadata accessor for NarrowReminderView);
    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  v91 = v205;
  (*(v192 + 56))(v81, v90, 1, v50);
  sub_1E47A1524(v82, v223);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  if (swift_dynamicCast())
  {
    v92 = v221;
    v93 = *(v221 + 32);
    v94 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v95 = v41[5];
    v96 = sub_1E487732C();
    (*(*(v96 - 8) + 16))(&v44[v95], v206 + v94, v96);
    v97 = *(v92 + 40);

    *&v44[v41[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v44[v41[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v98 = swift_getKeyPath();
    *&v44[v41[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v99 = swift_getKeyPath();
    *&v44[v41[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v44 = v93;
    *&v44[v41[6]] = v97;
    v100 = &v44[v41[9]];
    *v100 = v98;
    v100[8] = 0;
    v101 = &v44[v41[11]];
    *v101 = v99;
    v101[8] = 0;
    v102 = v44;
    v103 = v217;
    sub_1E47B49FC(v102, v217, type metadata accessor for NarrowConflictsView);
    v104 = 0;
    v105 = v213;
  }

  else
  {
    v104 = 1;
    v105 = v213;
    v103 = v217;
  }

  v106 = v219;
  (*(v193 + 56))(v103, v104, 1, v41);
  sub_1E47A1524(v82, v223);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
  if (swift_dynamicCast())
  {
    v107 = v221;
    v108 = sub_1E4877FBC();
    v109 = v179;
    *v179 = v108;
    *(v109 + 8) = 0x4010000000000000;
    *(v109 + 16) = 0;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C500, &qword_1E487D840);
    sub_1E47AE7E0(v107, v206, v109 + *(v110 + 44));

    sub_1E477372C(v109, v40, &qword_1ECF7C4D0, &qword_1E487D718);
    v111 = 0;
  }

  else
  {
    v111 = 1;
  }

  (*(v194 + 56))(v40, v111, 1, v195);
  sub_1E47A1524(v82, v223);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
  if (swift_dynamicCast())
  {
    v112 = v221;
    if (*(v221 + 48) == 1 && (swift_beginAccess(), v113 = *(v112 + 32), *(v113 + 16)))
    {
      v114 = *(v112 + 32);

      v206 = swift_getKeyPath();
      v115 = v103;
      v116 = v105;
      v117 = swift_getKeyPath();
      v118 = swift_getKeyPath();
      v119 = v182;
      v120 = v177;
      *&v177[*(v182 + 32)] = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *v120 = v113;
      *(v120 + 8) = 0;
      *(v120 + 16) = v206;
      *(v120 + 24) = 0;
      *(v120 + 32) = v117;
      v105 = v116;
      v103 = v115;
      *(v120 + 40) = 0;
      v121 = v180;
      sub_1E47B49FC(v120, v180, type metadata accessor for NarrowXMoreView);
      v122 = v119;
      v123 = 0;
    }

    else
    {

      v123 = 1;
      v122 = v182;
      v121 = v180;
    }

    (*(v181 + 56))(v121, v123, 1, v122);
    sub_1E477372C(v121, v106, &qword_1ECF7C4C0, &qword_1E487D708);
    v124 = 0;
  }

  else
  {
    v124 = 1;
  }

  (*(v196 + 56))(v106, v124, 1, v197);
  sub_1E47A1524(v82, v223);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel(0);
  if (swift_dynamicCast())
  {
    v125 = v222;
    v126 = sub_1E487732C();
    v127 = *(*(v126 - 8) + 16);
    v128 = v183;
    v127(v183, v191, v126);
    v127((v128 + v91[5]), v125 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date, v126);
    *(v128 + v91[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *(v128 + v91[6]) = 0;
    v129 = (v128 + v91[8]);
    *v129 = 0x4D4D202C45454545;
    v129[1] = 0xEB0000000064204DLL;
    v130 = v128 + v91[9];
    strcpy(v130, "EEEE, MMMM d");
    *(v130 + 13) = 0;
    *(v130 + 14) = -5120;
    v131 = (v128 + v91[10]);
    *v131 = 1162167621;
    v131[1] = 0xE400000000000000;
    v132 = v91[11];
    sub_1E48782DC();
    v133 = v189;
    v134 = v188;
    v135 = v190;
    (*(v189 + 104))(v188, *MEMORY[0x1E6980EA0], v190);
    sub_1E48782CC();

    v136 = v135;
    v91 = v205;
    (*(v133 + 8))(v134, v136);
    v137 = sub_1E48781FC();
    v103 = v217;

    *(v128 + v132) = v137;
    sub_1E47B49FC(v128, v105, type metadata accessor for NarrowTextHeaderView);
    v138 = 0;
  }

  else
  {
    v138 = 1;
  }

  v139 = v220;
  (*(v198 + 56))(v105, v138, 1, v91);
  sub_1E47A1524(v82, v223);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
  if (swift_dynamicCast())
  {
    v140 = v222;
    if (*(v222 + 33) == 1)
    {
      v141 = sub_1E487732C();
      v142 = v178;
      (*(*(v141 - 8) + 16))(v178, v191, v141);
      LODWORD(v207) = *(v140 + 32);
      sub_1E48781BC();
      v143 = *MEMORY[0x1E6980EA0];
      v144 = v189;
      v145 = *(v189 + 104);
      v216 = v140;
      v146 = v188;
      v147 = v190;
      v145(v188, v143, v190);
      sub_1E48782CC();

      v148 = *(v144 + 8);
      v148(v146, v147);
      sub_1E487827C();
      v149 = sub_1E487829C();

      sub_1E48781BC();
      v145(v146, v143, v147);
      v150 = sub_1E48782CC();

      v148(v146, v147);
      v151 = swift_getKeyPath();
      v152 = swift_getKeyPath();
      v153 = v186;
      *(v142 + *(v186 + 40)) = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      *(v142 + v153[11]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      v154 = v213;
      *(v142 + v153[5]) = (v207 & 1) == 0;
      *(v142 + v153[6]) = 1;
      *(v142 + v153[7]) = v149;
      *(v142 + v153[8]) = v150;
      v155 = v142 + v153[9];
      *v155 = v151;
      *(v155 + 8) = 0;
      sub_1E47B4C1C(v142, v187, type metadata accessor for NoEventsView);
      swift_storeEnumTagMultiPayload();
      sub_1E47B45D0(qword_1EE2B3DE0, 255, type metadata accessor for NoEventsView);
      sub_1E47B49A8();
      v156 = v185;
      v103 = v217;
      sub_1E487803C();

      sub_1E47B4C84(v142, type metadata accessor for NoEventsView);
    }

    else
    {
      v154 = v105;
      v158 = *(v222 + 32);
      v159 = swift_getKeyPath();
      v160 = v187;
      *v187 = v158;
      v160[1] = 1;
      *(v160 + 1) = v159;
      v160[16] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1E47B45D0(qword_1EE2B3DE0, 255, type metadata accessor for NoEventsView);
      sub_1E47B49A8();
      swift_retain_n();
      v156 = v185;
      sub_1E487803C();
    }

    sub_1E477372C(v156, v215, &qword_1ECF7C4A8, &qword_1E487D6F0);
    v157 = 0;
    v139 = v220;
  }

  else
  {
    v154 = v105;
    v157 = 1;
  }

  v161 = v215;
  (*(v200 + 56))(v215, v157, 1, v201);
  v162 = v208;
  sub_1E4773850(v139, v208, &qword_1ECF7C4F0, &qword_1E487D738);
  v163 = v209;
  sub_1E4773850(v218, v209, &qword_1ECF7C4E8, &qword_1E487D730);
  v164 = v210;
  sub_1E4773850(v103, v210, &qword_1ECF7C4E0, &qword_1E487D728);
  v165 = v211;
  sub_1E4773850(v214, v211, &qword_1ECF7C4D8, &qword_1E487D720);
  v166 = v161;
  v167 = v212;
  sub_1E4773850(v219, v212, &qword_1ECF7C4C8, &qword_1E487D710);
  v168 = v202;
  sub_1E4773850(v154, v202, &qword_1ECF7C4B8, &qword_1E487D700);
  v169 = v166;
  v170 = v203;
  sub_1E4773850(v169, v203, &qword_1ECF7C4B0, &qword_1E487D6F8);
  v171 = v162;
  v172 = v204;
  sub_1E4773850(v171, v204, &qword_1ECF7C4F0, &qword_1E487D738);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4F8, &qword_1E487D740);
  sub_1E4773850(v163, v172 + v173[12], &qword_1ECF7C4E8, &qword_1E487D730);
  sub_1E4773850(v164, v172 + v173[16], &qword_1ECF7C4E0, &qword_1E487D728);
  sub_1E4773850(v165, v172 + v173[20], &qword_1ECF7C4D8, &qword_1E487D720);
  sub_1E4773850(v167, v172 + v173[24], &qword_1ECF7C4C8, &qword_1E487D710);
  sub_1E4773850(v168, v172 + v173[28], &qword_1ECF7C4B8, &qword_1E487D700);
  sub_1E4773850(v170, v172 + v173[32], &qword_1ECF7C4B0, &qword_1E487D6F8);
  sub_1E47738B8(v215, &qword_1ECF7C4B0, &qword_1E487D6F8);
  sub_1E47738B8(v213, &qword_1ECF7C4B8, &qword_1E487D700);
  sub_1E47738B8(v219, &qword_1ECF7C4C8, &qword_1E487D710);
  sub_1E47738B8(v214, &qword_1ECF7C4D8, &qword_1E487D720);
  sub_1E47738B8(v217, &qword_1ECF7C4E0, &qword_1E487D728);
  sub_1E47738B8(v218, &qword_1ECF7C4E8, &qword_1E487D730);
  sub_1E47738B8(v220, &qword_1ECF7C4F0, &qword_1E487D738);
  sub_1E47738B8(v170, &qword_1ECF7C4B0, &qword_1E487D6F8);
  sub_1E47738B8(v168, &qword_1ECF7C4B8, &qword_1E487D700);
  sub_1E47738B8(v212, &qword_1ECF7C4C8, &qword_1E487D710);
  sub_1E47738B8(v211, &qword_1ECF7C4D8, &qword_1E487D720);
  sub_1E47738B8(v210, &qword_1ECF7C4E0, &qword_1E487D728);
  sub_1E47738B8(v209, &qword_1ECF7C4E8, &qword_1E487D730);
  sub_1E47738B8(v208, &qword_1ECF7C4F0, &qword_1E487D738);
}

uint64_t sub_1E47AE7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v84 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C508, &qword_1E487D8B8);
  v4 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v73 = &v68 - v5;
  v68 = type metadata accessor for NarrowXMoreView();
  v6 = *(*(v68 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v68);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C510, &qword_1E487D8C0);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v68 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C518, &qword_1E487D8C8);
  v74 = *(v76 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v18 = &v68 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C520, &qword_1E487D8D0);
  v19 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C528, &qword_1E487D8D8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C530, &qword_1E487D8E0);
  v25 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v27 = &v68 - v26;
  v28 = type metadata accessor for NarrowAllDayView();
  v29 = *(*(v28 - 1) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C538, &qword_1E487D8E8);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v80 = &v68 - v34;
  sub_1E4878D2C();
  v79 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 40) == 1)
  {
    v35 = *(a1 + 32);
    v36 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v37 = v28[5];
    v38 = sub_1E487732C();
    (*(*(v38 - 8) + 16))(&v31[v37], v84 + v36, v38);
    *&v31[v28[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v31[v28[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v31[v28[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v31[v28[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v40 = swift_getKeyPath();
    *v31 = v35;
    *&v31[v28[6]] = 0;
    v31[v28[7]] = 0;
    v41 = &v31[v28[11]];
    *v41 = KeyPath;
    v41[8] = 0;
    v42 = &v31[v28[13]];
    *v42 = v40;
    v42[8] = 0;
    sub_1E47B4C1C(v31, v24, type metadata accessor for NarrowAllDayView);
    swift_storeEnumTagMultiPayload();
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView);
    sub_1E47B4B44();

    sub_1E487803C();
    sub_1E4773850(v27, v81, &qword_1ECF7C530, &qword_1E487D8E0);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4A84();
    sub_1E4773680(&qword_1EE2B0E68, &qword_1ECF7C508, &qword_1E487D8B8);
    v43 = v80;
    sub_1E487803C();
    sub_1E47738B8(v27, &qword_1ECF7C530, &qword_1E487D8E0);
    sub_1E47B4C84(v31, type metadata accessor for NarrowAllDayView);
LABEL_9:
    sub_1E477372C(v43, v83, &qword_1ECF7C538, &qword_1E487D8E8);
  }

  v44 = *(a1 + 48);
  if (v44 == *(*(a1 + 32) + 16))
  {
    v85 = *(a1 + 32);
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF70, &unk_1E487C2A0);
    sub_1E4773680(&qword_1EE2B0DD8, &qword_1ECF7BF70, &unk_1E487C2A0);
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView);
    sub_1E487885C();
    v45 = v74;
    v46 = v76;
    (*(v74 + 16))(v24, v18, v76);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4B44();
    sub_1E487803C();
    sub_1E4773850(v27, v81, &qword_1ECF7C530, &qword_1E487D8E0);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4A84();
    sub_1E4773680(&qword_1EE2B0E68, &qword_1ECF7C508, &qword_1E487D8B8);
    v43 = v80;
    sub_1E487803C();
    sub_1E47738B8(v27, &qword_1ECF7C530, &qword_1E487D8E0);
    (*(v45 + 8))(v18, v46);
    goto LABEL_9;
  }

  v85 = sub_1E47F8CE4(v44, *(a1 + 32));
  v86 = v47;
  v87 = v48;
  v88 = v49;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C540, &qword_1E4881C50);
  sub_1E4773680(&qword_1EE2B46B0, &qword_1ECF7C540, &qword_1E4881C50);
  sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView);
  v50 = v75;
  result = sub_1E487885C();
  v52 = *(a1 + 32);
  v53 = *(v52 + 16);
  v54 = *(a1 + 48);
  v55 = v53 - v54;
  if (!__OFSUB__(v53, v54))
  {

    v56 = sub_1E47AF728(v55, v52);
    v57 = swift_getKeyPath();
    v58 = swift_getKeyPath();
    *&v10[*(v68 + 32)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v10 = v56;
    v10[8] = 1;
    *(v10 + 2) = v57;
    v10[24] = 0;
    *(v10 + 4) = v58;
    v10[40] = 0;
    v59 = v71;
    v60 = v72;
    v61 = *(v71 + 16);
    v62 = v69;
    v61(v69, v50, v72);
    v63 = v70;
    sub_1E47B4C1C(v10, v70, type metadata accessor for NarrowXMoreView);
    v64 = v73;
    v61(v73, v62, v60);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C548, &qword_1E487D920);
    sub_1E47B4C1C(v63, v64 + *(v65 + 48), type metadata accessor for NarrowXMoreView);
    sub_1E47B4C84(v63, type metadata accessor for NarrowXMoreView);
    v66 = *(v59 + 8);
    v66(v62, v60);
    v67 = v50;
    sub_1E4773850(v64, v81, &qword_1ECF7C508, &qword_1E487D8B8);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4A84();
    sub_1E4773680(&qword_1EE2B0E68, &qword_1ECF7C508, &qword_1E487D8B8);
    v43 = v80;
    sub_1E487803C();
    sub_1E47738B8(v64, &qword_1ECF7C508, &qword_1E487D8B8);
    sub_1E47B4C84(v10, type metadata accessor for NarrowXMoreView);
    v66(v67, v60);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47AF450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v6 = *(type metadata accessor for Event() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E487A7E0;
  sub_1E47B4C1C(a1, v9 + v8, type metadata accessor for Event);
  v10 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
  v11 = type metadata accessor for NarrowAllDayView();
  v12 = v11[5];
  v13 = sub_1E487732C();
  (*(*(v13 - 8) + 16))(a3 + v12, a2 + v10, v13);
  *(a3 + v11[8]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
  *(a3 + v11[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v11[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(a3 + v11[12]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v15 = swift_getKeyPath();

  *a3 = v9;
  *(a3 + v11[6]) = 0;
  *(a3 + v11[7]) = 0;
  v17 = a3 + v11[11];
  *v17 = KeyPath;
  v17[8] = 0;
  v18 = a3 + v11[13];
  *v18 = v15;
  v18[8] = 0;
  return result;
}

uint64_t sub_1E47AF728(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  if (*(a2 + 16) >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, v10, 0);
  v11 = v24;
  v12 = *(a2 + 16);
  if (!v12)
  {

    return v11;
  }

  v13 = 0;
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22[1] = a2;
  v15 = a2 + v14;
  v16 = *(v5 + 72);
  do
  {
    result = sub_1E47B4C1C(v15, v9, type metadata accessor for Event);
    v18 = *(v11 + 16);
    if (v18 < a1)
    {
      v24 = v11;
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E4858038(v17 > 1, v18 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v18 + 1;
      sub_1E47B49FC(v9, v11 + v14 + v18 * v16, type metadata accessor for Event);
    }

    else
    {
      if (v13 >= v18)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_1E47B4CE4(v9, v11 + v14 + v16 * v13);
      if ((v13 + 1) < a1)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    v15 += v16;
    --v12;
  }

  while (v12);

  if (!v13)
  {
    return v11;
  }

  v19 = *(v11 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1E4858038(0, v19, 0);
  if (v19 >= v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v20 = *(v11 + 16);
    if (v20 >= v13 && v20 >= v19)
    {

      sub_1E47B4D48(v21, v11 + v14, v13, (2 * v19) | 1);
      sub_1E47B4D48(v11, v11 + v14, 0, (2 * v13) | 1);
      return v23;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E47AF9D4()
{
  v1 = *(v0 + 40);
  v2 = sub_1E47AFE3C();
  v3 = v2;
  v25 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4878F0C())
  {
    v5 = 0;
    v26 = i;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6919650](v5, v3);
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_27;
      }

LABEL_10:
      v8 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;

        v12 = 0;
        v13 = 0.0;
        do
        {
          sub_1E47A1524(v11, v27);
          v16 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_0(v27, v28);
          if ((*(v17 + 16))(v16, v17) > 0.0)
          {
            v7 = __OFADD__(v12++, 1);
            if (v7)
            {
              __break(1u);
              goto LABEL_27;
            }
          }

          v14 = v28;
          v15 = v29;
          __swift_project_boxed_opaque_existential_0(v27, v28);
          v13 = v13 + (*(v15 + 16))(v14, v15);
          __swift_destroy_boxed_opaque_existential_1(v27);
          v11 += 40;
          --v10;
        }

        while (v10);

        i = v26;
        v18 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = 0.0;
        v18 = -1;
      }

      v19 = (v18 & ~(v18 >> 63));
      v20 = *(v6 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v1 = v1 + v13 + v20 * v19;
      if (v5 == i)
      {
        goto LABEL_22;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    v6 = *(v3 + 32 + 8 * v5);

    v7 = __OFADD__(v5++, 1);
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_22:
  if (v25)
  {
    v21 = sub_1E4878F0C();
  }

  else
  {
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v1 + *(v24 + 56) * ((v21 - 1) & ~((v21 - 1) >> 63));
  }

  return result;
}

uint64_t sub_1E47AFC68()
{
  v20 = type metadata accessor for NarrowMultidayLayout.MultiDayViewModel();
  v18 = v0;
  __swift_project_boxed_opaque_existential_0(&v18, v20);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1E4878F9C();

  v18 = 0xD00000000000001DLL;
  v19 = 0x80000001E48A75A0;
  v4 = v0[5];
  v5 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](0x203A78616D202CLL, 0xE700000000000000);
  v6 = v0[6];
  v7 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v7);

  MEMORY[0x1E69192D0](2653, 0xE200000000000000);
  v8 = v18;
  v9 = v19;
  v18 = v1;
  v19 = v3;

  MEMORY[0x1E69192D0](v8, v9);

  v10 = v18;
  swift_beginAccess();
  v11 = v0[4];
  v12 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel(0);

  v14 = MEMORY[0x1E6919360](v13, v12);
  v16 = v15;

  MEMORY[0x1E69192D0](v14, v16);

  return v10;
}

uint64_t sub_1E47AFE3C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_43:
    v2 = sub_1E4878F0C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    v20 = v1 & 0xC000000000000001;
    v17 = v1;
    v18 = v1 + 32;
    while (1)
    {
      if (v20)
      {
        v4 = MEMORY[0x1E6919650](v3, v17);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v3 >= *(v19 + 16))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v4 = *(v18 + 8 * v3);

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          v15 = v24;
          goto LABEL_39;
        }
      }

      v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v6 = *(v4 + v1);
      v7 = *(v6 + 16);

      if (!v7)
      {
LABEL_44:

        __break(1u);
        return result;
      }

      v8 = v6 + 40 * v7 - 8;
      while (1)
      {
        if (v7 > *(v6 + 16))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        sub_1E47A1524(v8, v23);
        sub_1E47B488C(v23, v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        v8 -= 40;
        if (!--v7)
        {
          goto LABEL_44;
        }
      }

      sub_1E47A1524(v8, v22);

      sub_1E47B488C(v22, v23);
      swift_dynamicCast();
      if (*(v21 + 48) != 1)
      {
        break;
      }

      swift_beginAccess();
      v9 = *(v21 + 32);

      v10 = *(v9 + 16);

      if (!v10)
      {
        goto LABEL_20;
      }

LABEL_32:
      sub_1E4878FDC();
      v14 = *(v24 + 16);
      sub_1E487900C();
      sub_1E487901C();
      sub_1E4878FEC();
LABEL_6:
      if (v3 == v2)
      {
        goto LABEL_37;
      }
    }

LABEL_20:
    v11 = *(v4 + v1);
    v12 = *(v11 + 16);

    if (v12)
    {
      v1 = 0;
      v13 = v11 + 32;
      while (1)
      {
        if (v1 >= *(v11 + 16))
        {
          goto LABEL_41;
        }

        sub_1E47A1524(v13, v23);
        sub_1E47A1524(v23, v22);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47A1524(v23, v22);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47A1524(v23, v22);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47A1524(v23, v22);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47B488C(v23, v22);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
        if (swift_dynamicCast())
        {

          goto LABEL_31;
        }

        ++v1;
        v13 += 40;
        if (v12 == v1)
        {
          goto LABEL_5;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_31:

      goto LABEL_32;
    }

LABEL_5:

    goto LABEL_6;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_39:

  return v15;
}

uint64_t sub_1E47B025C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v9 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1E4878F0C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6919650](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v7 = v9;
          goto LABEL_15;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      v6 = sub_1E47B2FC4();

      sub_1E4844EC4(v6);
      ++v3;
      if (v5 == v2)
      {
        goto LABEL_13;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v7;
}

uint64_t sub_1E47B0400()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
  v18 = v0;
  __swift_project_boxed_opaque_existential_0(&v18, v20);
  v17[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v6 = sub_1E4878BFC();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1E4878F9C();

  v18 = 0xD000000000000012;
  v19 = 0x80000001E48A7580;
  v9 = v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event;
  v10 = type metadata accessor for Event();
  (*(v2 + 16))(v5, v9 + *(v10 + 20), v1);
  sub_1E47B45D0(&qword_1EE2B59F0, 255, MEMORY[0x1E6969530]);
  v11 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v11);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1E69192D0](0x656C706D6F63202CLL, 0xED0000203A646574);
  if (*(v9 + *(v10 + 56)) == 6)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v9 + *(v10 + 56)) == 6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v12, v13);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v14 = v18;
  v15 = v19;
  v18 = v6;
  v19 = v8;

  MEMORY[0x1E69192D0](v14, v15);

  return v18;
}

uint64_t sub_1E47B06A4()
{
  sub_1E47B4C84(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, type metadata accessor for Event);
  v1 = *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B073C()
{
  v1 = (*v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1E47B07AC(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 0;
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 0;
  v4 = a1[3];
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithTwoLines) = a1[2];
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithThreeLines) = v4;
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithFourLines) = a1[4];
  sub_1E47B4C1C(a2, v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, type metadata accessor for Event);
  sub_1E4878F9C();

  v5 = sub_1E47CDCB4();
  MEMORY[0x1E69192D0](v5);

  sub_1E47B4C84(a2, type metadata accessor for Event);
  *(v2 + 16) = 0xD000000000000023;
  *(v2 + 24) = 0x80000001E48A76C0;
  return v2;
}

double sub_1E47B08C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event;
  v9 = type metadata accessor for Event();
  sub_1E4773850(v8 + *(v9 + 60), v7, &qword_1ECF7C048, &qword_1E487C5F0);
  v10 = type metadata accessor for Location();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v7, 1, v10);
  sub_1E47738B8(v7, &qword_1ECF7C048, &qword_1E487C5F0);
  if (v12 == 1 || (*(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) & 1) != 0 || *(v8 + *(v9 + 28)) == 0.0 || *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) == 1)
  {
    sub_1E4773850(v8 + *(v9 + 60), v5, &qword_1ECF7C048, &qword_1E487C5F0);
    v13 = v11(v5, 1, v10);
    sub_1E47738B8(v5, &qword_1ECF7C048, &qword_1E487C5F0);
    if ((v13 == 1 || *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) == 1) && (*(v8 + *(v9 + 28)) == 0.0 || *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) == 1))
    {
      v14 = &OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithTwoLines;
    }

    else
    {
      v14 = &OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithThreeLines;
    }
  }

  else
  {
    v14 = &OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithFourLines;
  }

  return *(v0 + *v14);
}

uint64_t sub_1E47B0AF8()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
  v21 = v0;
  __swift_project_boxed_opaque_existential_0(&v21, v23);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v6 = sub_1E4878BFC();
  v18 = v7;
  v19 = v6;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1E4878F9C();

  v21 = 0xD000000000000013;
  v22 = 0x80000001E48A7560;
  v8 = v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event;
  v9 = type metadata accessor for Event();
  v10 = v2[2];
  v10(v5, v8 + *(v9 + 20), v1);
  sub_1E47B45D0(&qword_1EE2B59F0, 255, MEMORY[0x1E6969530]);
  v11 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v11);

  v12 = v2[1];
  v12(v5, v1);
  MEMORY[0x1E69192D0](0x676E69646E65202CLL, 0xEA0000000000203ALL);
  v10(v5, v8 + *(v9 + 24), v1);
  v13 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v13);

  v12(v5, v1);
  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v14 = v21;
  v15 = v22;
  v21 = v19;
  v22 = v18;

  MEMORY[0x1E69192D0](v14, v15);

  return v21;
}

uint64_t sub_1E47B0DAC()
{
  v1 = v0[3];

  sub_1E47B4C84(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, type metadata accessor for Event);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B0E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v6 = (type metadata accessor for DayEvents() - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E487A7E0;
  v10 = v9 + v8;
  sub_1E487731C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v11 = *(type metadata accessor for Event() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E487A7E0;
  sub_1E47B4C1C(v5 + *a3, v14 + v13, type metadata accessor for Event);
  *(v10 + v6[7]) = v14;
  *(v10 + v6[8]) = MEMORY[0x1E69E7CC0];
  *(v10 + v6[9]) = 0;
  return v9;
}

uint64_t sub_1E47B1034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Event();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 80);
  *(v3 + 48) = *(a1 + 72);
  *(v3 + 56) = *(a1 + 88);
  *(v3 + 72) = v16;
  *(v3 + 32) = a2;
  *(v3 + 40) = *(a2 + 16);
  v25 = 0;
  v26 = 0xE000000000000000;

  sub_1E4878F9C();

  v25 = 0xD00000000000002FLL;
  v26 = 0x80000001E48A76F0;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1E47B4C1C(a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15, type metadata accessor for Event);

  (*(v7 + 16))(v10, &v15[*(v11 + 20)], v6);
  sub_1E47B4C84(v15, type metadata accessor for Event);
  if (qword_1EE2B2888 != -1)
  {
LABEL_5:
    swift_once();
  }

  v17 = qword_1EE2B2890;
  v18 = sub_1E48772BC();
  v19 = [v17 stringFromDate_];

  v20 = sub_1E4878BDC();
  v22 = v21;

  (*(v7 + 8))(v10, v6);
  MEMORY[0x1E69192D0](v20, v22);

  v23 = v26;
  *(v3 + 16) = v25;
  *(v3 + 24) = v23;
  return v3;
}

uint64_t sub_1E47B1300()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v23 - v3;
  v5 = *(v0 + 72) + *(v0 + 48);
  result = sub_1E47F8CE4(*(v0 + 40), *(v0 + 32));
  v10 = v8 - (v9 >> 1);
  if (v8 != v9 >> 1)
  {
    if (v8 >= (v9 >> 1))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v7;
    v13 = v8;
    v23[1] = result;
    v14 = type metadata accessor for Event();
    v15 = *(*(v14 - 8) + 72);
    v16 = (*(v14 - 8) + 56);

    v17 = v12 + v13 * v15;
    v18 = 2;
    while (1)
    {
      sub_1E47B4C1C(v17, v4, type metadata accessor for Event);
      result = (*v16)(v4, 0, 1, v14);
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v5 = v5 + *(v0 + 56);
      sub_1E47738B8(v4, &qword_1ECF7B950, &unk_1E487AE90);
      ++v18;
      v17 += v15;
      if (v10 + v18 == 2)
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v11 = 2;
LABEL_8:
  v19 = type metadata accessor for Event();
  result = (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = *(v0 + 40);
  if (v20 < 1 || v20 >= *(*(v0 + 32) + 16))
  {
LABEL_12:
    if (!__OFSUB__(v11, 1))
    {
      v22 = v5 + *(v0 + 64) * (v11 - 1);
      return result;
    }

    goto LABEL_15;
  }

  if (!__OFADD__(v11++, 1))
  {
    v5 = v5 + *(v0 + 56);
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E47B1568()
{
  v13 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  v11 = v0;
  __swift_project_boxed_opaque_existential_0(&v11, v13);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v11);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1E4878F9C();

  v11 = 0x456C61746F74203ALL;
  v12 = 0xEF5B2073746E6576;
  v9 = *(*(v0 + 32) + 16);
  v4 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v4);

  MEMORY[0x1E69192D0](0x536F546D756E205DLL, 0xED00005B20776F68);
  v10 = *(v0 + 40);
  v5 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v6 = v11;
  v7 = v12;
  v11 = v1;
  v12 = v3;

  MEMORY[0x1E69192D0](v6, v7);

  return v11;
}

uint64_t sub_1E47B1744()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v2 = (type metadata accessor for DayEvents() - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E487A7E0;
  v6 = v5 + v4;
  sub_1E487731C();
  *(v6 + v2[7]) = *(v1 + 32);
  *(v6 + v2[8]) = MEMORY[0x1E69E7CC0];
  *(v6 + v2[9]) = 0;

  return v5;
}

uint64_t sub_1E47B1858(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Event();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 40) = 0;
  v16 = a1[13];
  *(v3 + 56) = a1[1];
  *(v3 + 64) = v16;
  *(v3 + 72) = a1[6];
  *(v3 + 32) = a2;
  *(v3 + 48) = *(a2 + 16);
  v25 = 0;
  v26 = 0xE000000000000000;

  sub_1E4878F9C();

  v25 = 0xD000000000000024;
  v26 = 0x80000001E48A7740;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1E47B4C1C(a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15, type metadata accessor for Event);

  (*(v7 + 16))(v10, &v15[*(v11 + 20)], v6);
  sub_1E47B4C84(v15, type metadata accessor for Event);
  if (qword_1EE2B28A0 != -1)
  {
LABEL_5:
    swift_once();
  }

  v17 = qword_1EE2B28A8;
  v18 = sub_1E48772BC();
  v19 = [v17 stringFromDate_];

  v20 = sub_1E4878BDC();
  v22 = v21;

  (*(v7 + 8))(v10, v6);
  MEMORY[0x1E69192D0](v20, v22);

  v23 = v26;
  *(v3 + 16) = v25;
  *(v3 + 24) = v23;
  return v3;
}

void sub_1E47B1B28()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 48);
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else if (v2 != *(*(v0 + 32) + 16))
    {
      v3 = *(v0 + 56) * v2 + *(v0 + 64) * ((v2 - 1) & ~((v2 - 1) >> 63)) + *(v0 + 64) + *(v0 + 72);
    }
  }
}

uint64_t sub_1E47B1B88()
{
  v15 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
  v13 = v0;
  __swift_project_boxed_opaque_existential_0(&v13, v15);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1E4878F9C();
  MEMORY[0x1E69192D0](0x6576456D756E203ALL, 0xED00005B2073746ELL);
  v11 = *(*(v0 + 32) + 16);
  v4 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v4);

  MEMORY[0x1E69192D0](0x70616C6C6F63205DLL, 0xED00005B20646573);
  if (*(v0 + 40))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v5, v6);

  MEMORY[0x1E69192D0](0xD000000000000021, 0x80000001E48A7530);
  v12 = *(v0 + 48);
  v7 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v7);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v8 = v13;
  v9 = v14;
  v13 = v1;
  v14 = v3;

  MEMORY[0x1E69192D0](v8, v9);

  return v13;
}

uint64_t sub_1E47B1DC0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v2 = (type metadata accessor for DayEvents() - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E487A7E0;
  v6 = v5 + v4;
  sub_1E487731C();
  v7 = *(v1 + 32);
  *(v6 + v2[7]) = MEMORY[0x1E69E7CC0];
  *(v6 + v2[8]) = v7;
  *(v6 + v2[9]) = 0;

  return v5;
}

uint64_t sub_1E47B1ED4()
{
  v8 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
  v7[0] = v0;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1E4878F9C();

  swift_beginAccess();
  v6 = *(*(v0 + 32) + 16);
  v2 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v2);

  MEMORY[0x1E69192D0](0x6C6269736976205DLL, 0xEB000000005B2065);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v3, v4);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);

  MEMORY[0x1E69192D0](0x2065726F4D78203ALL, 0xE90000000000005BLL);

  return v1;
}

uint64_t sub_1E47B2090()
{
  if (*(v0 + 48) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  result = MEMORY[0x1E69E7CC0];
  if (*(*(v0 + 32) + 16))
  {
    v2 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
    v3 = (type metadata accessor for DayEvents() - 8);
    v4 = *(*v3 + 72);
    v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E487A7E0;
    v7 = v6 + v5;
    sub_1E487731C();
    *(v7 + v3[7]) = *(v0 + 32);
    *(v7 + v3[8]) = v2;
    *(v7 + v3[9]) = 0;

    return v6;
  }

  return result;
}

uint64_t sub_1E47B21D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

double sub_1E47B2220()
{
  v1 = *v0;
  v2 = 0.0;
  if (*(*v0 + 48) == 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 32) + 16))
    {
      return *(v1 + 40);
    }
  }

  return v2;
}

uint64_t sub_1E47B22D0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_1E47B2308()
{
  v1 = 40;
  if (*(*v0 + 33))
  {
    v1 = 48;
  }

  return *(*v0 + v1);
}

uint64_t sub_1E47B2334()
{
  v1 = *v0;
  v5 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
  v4[0] = v1;
  __swift_project_boxed_opaque_existential_0(v4, v5);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v2 = sub_1E4878BFC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_1E47B23BC(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_height) = *a1;
  v5 = OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3 + v5, a2, v6);
  sub_1E4878F9C();

  if (qword_1EE2B28A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2B28A8;
  v9 = sub_1E48772BC();
  v10 = [v8 stringFromDate_];

  v11 = sub_1E4878BDC();
  v13 = v12;

  MEMORY[0x1E69192D0](v11, v13);

  (*(v7 + 8))(a2, v6);
  *(v3 + 16) = 0xD000000000000024;
  *(v3 + 24) = 0x80000001E48A7770;
  return v3;
}

uint64_t sub_1E47B255C()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel(0);
  v14 = v0;
  __swift_project_boxed_opaque_existential_0(&v14, v16);
  v13[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v6 = sub_1E4878BFC();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v14 = 0x5B2065746164203ALL;
  v15 = 0xE800000000000000;
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date, v1);
  sub_1E47B45D0(&qword_1EE2B59F0, 255, MEMORY[0x1E6969530]);
  v9 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v9);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v10 = v14;
  v11 = v15;
  v14 = v6;
  v15 = v8;

  MEMORY[0x1E69192D0](v10, v11);

  return v14;
}

uint64_t sub_1E47B275C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date;
  v3 = sub_1E487732C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B2838(uint64_t a1, char a2, _OWORD *a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a1, v9);
  v11 = (v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights);
  v12 = a3[5];
  v11[4] = a3[4];
  v11[5] = v12;
  v13 = a3[7];
  v11[6] = a3[6];
  v11[7] = v13;
  v14 = a3[1];
  *v11 = *a3;
  v11[1] = v14;
  v15 = a3[3];
  v11[2] = a3[2];
  v11[3] = v15;
  *(v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_eventsExistBeforeFirst) = a2;
  sub_1E4878F9C();

  if (qword_1EE2B28A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2B28A8;
  v17 = sub_1E48772BC();
  v18 = [v16 stringFromDate_];

  v19 = sub_1E4878BDC();
  v21 = v20;

  MEMORY[0x1E69192D0](v19, v21);

  (*(v10 + 8))(a1, v9);
  v22 = (v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  *v22 = 0xD000000000000014;
  v22[1] = 0x80000001E48A77A0;
  return v4;
}