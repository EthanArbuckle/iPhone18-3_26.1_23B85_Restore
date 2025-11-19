uint64_t sub_1E47E5E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDateTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47E5EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47E5F58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E47E5FE8()
{
  sub_1E47E8F54(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1E47E8F54(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1E47E8F54(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1E48783DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E47E6150()
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

uint64_t sub_1E47E6290@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for AllDayCirclesView(0);
  sub_1E4773850(v1 + *(v12 + 20), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
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

uint64_t sub_1E47E6498@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  LODWORD(v79) = a2;
  v88 = a3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD00, &qword_1E487F538);
  v6 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v71 - v7;
  v86 = type metadata accessor for MultiColoredCircleImage(0);
  v8 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v10 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD08, &qword_1E487F540);
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v71 - v12;
  v13 = sub_1E4877B3C();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487875C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD10, &qword_1E487F548);
  v73 = *(v74 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCF0, &unk_1E487F528);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCE8, &qword_1E487F520);
  v28 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v30 = &v71 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCE0, &qword_1E487F518);
  v31 = *(*(v80 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v80);
  v34 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v75 = &v71 - v35;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD8, &qword_1E487F510);
  v36 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v71 - v37;
  v38 = type metadata accessor for Event();
  v39 = *(a1 + *(v38 + 56));
  if ((v39 & 0xFE) == 6)
  {
    if (v79)
    {
      v79 = a1;
      if (v39 == 6)
      {
        v40 = MEMORY[0x1E69932E0];
      }

      else
      {
        v40 = MEMORY[0x1E69932F8];
      }

      v41 = *v40;
      sub_1E4878BDC();
      sub_1E487874C();
      (*(v17 + 104))(v20, *MEMORY[0x1E6981638], v16);
      v42 = sub_1E487878C();

      (*(v17 + 8))(v20, v16);
      *&v89 = v42;
      sub_1E48785CC();

      (*(v73 + 32))(v27, v23, v74);
      v43 = &v27[*(v24 + 36)];
      *v43 = 0;
      *(v43 + 4) = 1;
      v44 = v76;
      sub_1E47E6290(v76);
      v45 = sub_1E4770A7C(v79, v44);
      (*(v77 + 8))(v44, v78);
      KeyPath = swift_getKeyPath();
      sub_1E477372C(v27, v30, &qword_1ECF7CCF0, &unk_1E487F528);
      v47 = &v30[*(v72 + 36)];
      *v47 = KeyPath;
      v47[1] = v45;
      sub_1E487889C();
      sub_1E4877BCC();
      sub_1E477372C(v30, v34, &qword_1ECF7CCE8, &qword_1E487F520);
      v48 = &v34[*(v80 + 36)];
      v49 = v90;
      *v48 = v89;
      *(v48 + 1) = v49;
      *(v48 + 2) = v91;
      v50 = v34;
      v51 = v75;
      sub_1E477372C(v50, v75, &qword_1ECF7CCE0, &qword_1E487F518);
      sub_1E4773850(v51, v83, &qword_1ECF7CCE0, &qword_1E487F518);
      swift_storeEnumTagMultiPayload();
      sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
      sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);
      v52 = v81;
      sub_1E487803C();
      sub_1E47738B8(v51, &qword_1ECF7CCE0, &qword_1E487F518);
    }

    else
    {
      v62 = v86;
      sub_1E47E8D50(a1, v10 + *(v86 + 20), type metadata accessor for Event);
      *v10 = 0xD000000000000017;
      v10[1] = 0x80000001E48A8100;
      *(v10 + v62[6]) = a4;
      v63 = v62[7];
      *(v10 + v63) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v64 = v62[8];
      *(v10 + v64) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      sub_1E47E8D50(v10, v83, type metadata accessor for MultiColoredCircleImage);
      swift_storeEnumTagMultiPayload();
      sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
      sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);
      v52 = v81;
      sub_1E487803C();
      sub_1E47E8DB8(v10, type metadata accessor for MultiColoredCircleImage);
    }

    sub_1E4773850(v52, v87, &qword_1ECF7CCD8, &qword_1E487F510);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8A8C();
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);
    v65 = v88;
    sub_1E487803C();
    sub_1E47738B8(v52, &qword_1ECF7CCD8, &qword_1E487F510);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
    return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  }

  else
  {
    v53 = (a1 + *(v38 + 64));
    v54 = v53[1];
    if (v54)
    {
      v55 = *v53;
      v56 = v86;
      sub_1E47E8D50(a1, v10 + *(v86 + 20), type metadata accessor for Event);
      *v10 = v55;
      v10[1] = v54;
      *(v10 + v56[6]) = a4;
      v57 = v56[7];
      *(v10 + v57) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v58 = v56[8];
      *(v10 + v58) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      sub_1E47E8D50(v10, v87, type metadata accessor for MultiColoredCircleImage);
      swift_storeEnumTagMultiPayload();
      sub_1E47E8A8C();
      sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);

      v59 = v88;
      sub_1E487803C();
      sub_1E47E8DB8(v10, type metadata accessor for MultiColoredCircleImage);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
      return (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    }

    else
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
      v68 = *(*(v67 - 8) + 56);
      v69 = v67;
      v70 = v88;

      return v68(v70, 1, 1, v69);
    }
  }
}

uint64_t sub_1E47E7088@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for AllDayCirclesView(0);
  v3 = (v2 - 8);
  v68 = *(v2 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v69 = v5;
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCA0, &qword_1E487F4C8);
  v6 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v67 = (&v60 - v7);
  v8 = sub_1E4877B3C();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCA8, &qword_1E487F4D0);
  v11 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v60 - v12;
  v13 = type metadata accessor for Event();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCB0, &qword_1E487F4D8);
  v16 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v63 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v60 - v24;
  v72 = sub_1E48783BC();
  v26 = *(v72 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3[9];
  v71 = v3[10];
  v31 = *(v1 + v30);
  v32 = sub_1E487842C();
  v34 = v33;
  v36 = v35;
  v37 = sub_1E487838C();
  (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
  v38 = sub_1E487843C();
  (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
  sub_1E48783AC();
  sub_1E487839C();
  v40 = v39;
  sub_1E477A3C8(v32, v34, v36 & 1);

  (*(v26 + 8))(v29, v72);
  v41 = *(v1 + v3[8]);
  if (*(v41 + 16) == 1)
  {
    v42 = v41 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v43 = v62;
    sub_1E47E8D50(v42, v62, type metadata accessor for Event);
    v44 = *(sub_1E47E6150() + 112);

    v45 = v63;
    sub_1E47E6498(v43, 1, v63, v40 * v44);
    sub_1E47E8DB8(v43, type metadata accessor for Event);
    v46 = &qword_1ECF7CCB0;
    v47 = &qword_1E487F4D8;
    sub_1E4773850(v45, v74, &qword_1ECF7CCB0, &qword_1E487F4D8);
    swift_storeEnumTagMultiPayload();
    sub_1E47E894C();
    sub_1E4773680(&qword_1EE2B1020, &qword_1ECF7CCA0, &qword_1E487F4C8);
    sub_1E487803C();
    v48 = v45;
  }

  else
  {
    v49 = v64;
    sub_1E47E6290(v64);
    v50 = sub_1E486AE54(v41, 3, v49);
    (*(v65 + 8))(v49, v66);
    v51 = sub_1E4877F6C();
    v52 = v67;
    *v67 = v51;
    *(v52 + 1) = v40 * -0.5;
    v53 = v52;
    *(v52 + 16) = 0;
    sub_1E4878D2C();
    sub_1E4878D1C();
    sub_1E4878D0C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCB8, &unk_1E487F4F0) + 44);
    v78 = v50;
    v55 = v70;
    sub_1E47E8D50(v1, v70, type metadata accessor for AllDayCirclesView);
    v56 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v57 = (v69 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    sub_1E47E883C(v55, v58 + v56);
    *(v58 + v57) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCC0, &qword_1E487F500);
    sub_1E487736C();
    sub_1E4773680(&qword_1ECF7CCC8, &qword_1ECF7CCC0, &qword_1E487F500);
    sub_1E47E894C();
    sub_1E47E8D08(&qword_1ECF7CCF8, type metadata accessor for Utils.EventWithColor);
    sub_1E487886C();

    v46 = &qword_1ECF7CCA0;
    v47 = &qword_1E487F4C8;
    sub_1E4773850(v53, v74, &qword_1ECF7CCA0, &qword_1E487F4C8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1020, &qword_1ECF7CCA0, &qword_1E487F4C8);
    sub_1E487803C();
    v48 = v53;
  }

  return sub_1E47738B8(v48, v46, v47);
}

uint64_t sub_1E47E796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD00, &qword_1E487F538);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD08, &qword_1E487F540);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for MultiColoredCircleImage(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD8, &qword_1E487F510);
  v16 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCB0, &qword_1E487F4D8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v34 - v21;
  sub_1E4878D2C();
  v36 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = type metadata accessor for Event();
  if ((*(a1 + *(v23 + 56)) & 0xFE) == 6)
  {
    sub_1E47E8D50(a1, v15 + v12[5], type metadata accessor for Event);
    *v15 = 0xD000000000000017;
    v15[1] = 0x80000001E48A8100;
    *(v15 + v12[6]) = a3;
    v24 = v12[7];
    *(v15 + v24) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v25 = v12[8];
    *(v15 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8D50(v15, v11, type metadata accessor for MultiColoredCircleImage);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCE0, &qword_1E487F518);
    sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);
    sub_1E487803C();
    sub_1E47E8DB8(v15, type metadata accessor for MultiColoredCircleImage);
    sub_1E4773850(v18, v7, &qword_1ECF7CCD8, &qword_1E487F510);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8A8C();
    sub_1E487803C();
    sub_1E47738B8(v18, &qword_1ECF7CCD8, &qword_1E487F510);
  }

  else
  {
    v26 = (a1 + *(v23 + 64));
    v27 = v26[1];
    if (!v27)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
      (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
      goto LABEL_8;
    }

    v28 = *v26;
    sub_1E47E8D50(a1, v15 + v12[5], type metadata accessor for Event);
    *v15 = v28;
    v15[1] = v27;
    *(v15 + v12[6]) = a3;
    v29 = v12[7];
    *(v15 + v29) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v30 = v12[8];
    *(v15 + v30) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8D50(v15, v7, type metadata accessor for MultiColoredCircleImage);
    swift_storeEnumTagMultiPayload();
    sub_1E47E8A8C();
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);

    sub_1E487803C();
    sub_1E47E8DB8(v15, type metadata accessor for MultiColoredCircleImage);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CCD0, &qword_1E487F508);
  (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
LABEL_8:
  sub_1E477372C(v22, v37, &qword_1ECF7CCB0, &qword_1E487F4D8);
}

uint64_t sub_1E47E7FF4@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_1E4877B3C();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD20, &qword_1E487F660);
  v5 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v71 = (&v62 - v6);
  v68 = sub_1E487875C();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD28, &qword_1E487F668);
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v62 - v12;
  v13 = sub_1E487893C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  v67 = type metadata accessor for MultiColoredCircleImage(0);
  v21 = v1;
  v22 = v1 + v67[8];
  sub_1E479B4DC(v20);
  sub_1E487891C();
  LOBYTE(v22) = sub_1E48788FC();
  v23 = *(v14 + 8);
  v23(v18, v13);
  v23(v20, v13);
  if (v22)
  {
    v24 = *v21;
    v25 = v21[1];

    sub_1E487874C();
    v26 = v68;
    (*(v7 + 104))(v10, *MEMORY[0x1E6981638], v68);
    v27 = sub_1E487878C();

    (*(v7 + 8))(v10, v26);
    v28 = *(v21 + v67[6]);
    sub_1E487889C();
    sub_1E4877BCC();
    *&v74[22] = v87;
    *&v74[38] = v88;
    *&v74[6] = v86;
    *&v84[2] = *v74;
    LOBYTE(v78) = 1;
    v83 = v27;
    *v84 = 1;
    *&v84[18] = *&v74[16];
    *&v84[34] = *&v74[32];
    *&v84[48] = *(&v88 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD38, &qword_1E487F678);
    sub_1E47E91B4(&qword_1EE2B13A8, &qword_1ECF7CD38, &qword_1E487F678, sub_1E47E9238);
    v29 = v66;
    sub_1E48784AC();
    v75[1] = *v84;
    v75[2] = *&v84[16];
    v75[3] = *&v84[32];
    v76 = *&v84[48];
    v75[0] = v83;
    sub_1E47738B8(v75, &qword_1ECF7CD38, &qword_1E487F678);
    v30 = sub_1E487869C();
    KeyPath = swift_getKeyPath();
    v32 = sub_1E487814C();
    sub_1E4877B0C();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v73[80] = 0;
    v41 = sub_1E487889C();
    *&v78 = KeyPath;
    *(&v78 + 1) = v30;
    LOBYTE(v79) = v32;
    *(&v79 + 1) = *v77;
    DWORD1(v79) = *&v77[3];
    *(&v79 + 1) = v34;
    *&v80 = v36;
    *(&v80 + 1) = v38;
    *&v81 = v40;
    BYTE8(v81) = 0;
    *&v82 = v41;
    *(&v82 + 1) = v42;
    v43 = (v29 + *(v70 + 36));
    v44 = v81;
    v43[2] = v80;
    v43[3] = v44;
    v43[4] = v82;
    v45 = v79;
    *v43 = v78;
    v43[1] = v45;
    *&v83 = KeyPath;
    *(&v83 + 1) = v30;
    v84[0] = v32;
    *&v84[4] = *&v77[3];
    *&v84[1] = *v77;
    *&v84[8] = v34;
    *&v84[16] = v36;
    *&v84[24] = v38;
    *&v84[32] = v40;
    v84[40] = 0;
    *&v84[48] = v41;
    v85 = v42;
    sub_1E4773850(&v78, v73, &qword_1ECF7CD48, &qword_1E487F688);
    sub_1E47738B8(&v83, &qword_1ECF7CD48, &qword_1E487F688);
    sub_1E4773850(v29, v71, &qword_1ECF7CD28, &qword_1E487F668);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD30, &qword_1E487F670);
    sub_1E47E908C();
    sub_1E47E91B4(&qword_1EE2B1300, &qword_1ECF7CD30, &qword_1E487F670, sub_1E47E92BC);
    sub_1E487803C();
    return sub_1E47738B8(v29, &qword_1ECF7CD28, &qword_1E487F668);
  }

  else
  {
    v47 = v21;
    v48 = *v21;
    v49 = v21[1];

    sub_1E487874C();
    v50 = v68;
    (*(v7 + 104))(v10, *MEMORY[0x1E6981638], v68);
    v51 = sub_1E487878C();

    (*(v7 + 8))(v10, v50);
    v52 = [objc_opt_self() cuik_systemBackgroundColor];
    v53 = sub_1E48785FC();
    v54 = v67;
    v55 = v67[5];
    v56 = v21 + v67[7];
    v57 = v63;
    sub_1E479B504(v63);
    v58 = sub_1E4770A7C(v47 + v55, v57);
    (*(v64 + 8))(v57, v65);
    v59 = *(v47 + v54[6]);
    sub_1E487889C();
    sub_1E4877BCC();
    v60 = v71;
    *v71 = v51;
    v60[1] = 0;
    *(v60 + 8) = 1;
    v60[3] = v53;
    v60[4] = v58;
    v61 = *v84;
    *(v60 + 5) = v83;
    *(v60 + 7) = v61;
    *(v60 + 9) = *&v84[16];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD30, &qword_1E487F670);
    sub_1E47E908C();
    sub_1E47E91B4(&qword_1EE2B1300, &qword_1ECF7CD30, &qword_1E487F670, sub_1E47E92BC);
    return sub_1E487803C();
  }
}

uint64_t sub_1E47E883C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllDayCirclesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47E88A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AllDayCirclesView(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E47E796C(a1, a2, v6);
}

unint64_t sub_1E47E894C()
{
  result = qword_1EE2B1150;
  if (!qword_1EE2B1150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCB0, &qword_1E487F4D8);
    sub_1E47E89D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1150);
  }

  return result;
}

unint64_t sub_1E47E89D0()
{
  result = qword_1EE2B1158;
  if (!qword_1EE2B1158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCD0, &qword_1E487F508);
    sub_1E47E8A8C();
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1158);
  }

  return result;
}

unint64_t sub_1E47E8A8C()
{
  result = qword_1EE2B11D8;
  if (!qword_1EE2B11D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCD8, &qword_1E487F510);
    sub_1E47E91B4(&qword_1EE2B1308, &qword_1ECF7CCE0, &qword_1E487F518, sub_1E47E8B74);
    sub_1E47E8D08(qword_1EE2B23D8, type metadata accessor for MultiColoredCircleImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11D8);
  }

  return result;
}

unint64_t sub_1E47E8B74()
{
  result = qword_1EE2B13D0;
  if (!qword_1EE2B13D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCE8, &qword_1E487F520);
    sub_1E47E8C2C();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13D0);
  }

  return result;
}

unint64_t sub_1E47E8C2C()
{
  result = qword_1EE2B1508;
  if (!qword_1EE2B1508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CCF0, &unk_1E487F528);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1508);
  }

  return result;
}

uint64_t sub_1E47E8D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47E8D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47E8DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E47E8E40()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E47E8F54(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1E47E8F54(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E47E8F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E47E8FB8()
{
  result = qword_1EE2B1118;
  if (!qword_1EE2B1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD18, &qword_1E487F608);
    sub_1E47E894C();
    sub_1E4773680(&qword_1EE2B1020, &qword_1ECF7CCA0, &qword_1E487F4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1118);
  }

  return result;
}

unint64_t sub_1E47E908C()
{
  result = qword_1EE2B1560;
  if (!qword_1EE2B1560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD28, &qword_1E487F668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD38, &qword_1E487F678);
    sub_1E47E91B4(&qword_1EE2B13A8, &qword_1ECF7CD38, &qword_1E487F678, sub_1E47E9238);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B1268, &qword_1ECF7CD48, &qword_1E487F688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1560);
  }

  return result;
}

uint64_t sub_1E47E91B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E47E9238()
{
  result = qword_1EE2B14E0;
  if (!qword_1EE2B14E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD40, &qword_1E487F680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14E0);
  }

  return result;
}

unint64_t sub_1E47E92BC()
{
  result = qword_1EE2B13A0;
  if (!qword_1EE2B13A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD50, &qword_1E487F690);
    sub_1E47E9238();
    sub_1E4773680(&qword_1EE2B10E0, &qword_1ECF7CD58, &qword_1E487F698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13A0);
  }

  return result;
}

unint64_t sub_1E47E9374()
{
  result = qword_1EE2B1200;
  if (!qword_1EE2B1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CD60, &unk_1E487F6A0);
    sub_1E47E908C();
    sub_1E47E91B4(&qword_1EE2B1300, &qword_1ECF7CD30, &qword_1E487F670, sub_1E47E92BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1200);
  }

  return result;
}

uint64_t type metadata accessor for WideMultidayEventsView()
{
  result = qword_1EE2B2518;
  if (!qword_1EE2B2518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47E94A0()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47E95BC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E47E95BC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E48783DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E47E95BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47E963C@<X0>(double *a1@<X8>)
{
  v243 = a1;
  v2 = type metadata accessor for WideReminderView();
  v3 = *(v2 - 8);
  v261 = v2;
  v262 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v242 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WideAllDayView();
  v263 = *(v6 - 8);
  v264 = v6;
  v7 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v226 = &v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v275 = &v226 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v274 = &v226 - v14;
  v273 = sub_1E48783BC();
  v244 = *(v273 - 8);
  v15 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v273);
  v272 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E4877F1C();
  v251 = *(v17 - 8);
  v252 = v17;
  v18 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v250 = &v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD98, &qword_1E487F768);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v235 = &v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v234 = &v226 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v266 = &v226 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDA0, &qword_1E487F770);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v239 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v237 = (&v226 - v32);
  MEMORY[0x1EEE9AC00](v31);
  v267 = &v226 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDA8, &qword_1E487F778);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v238 = &v226 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v231 = &v226 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v265 = &v226 - v40;
  v41 = type metadata accessor for WideEventDetailsView();
  v259 = *(v41 - 8);
  v260 = v41;
  v42 = *(v259 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v227 = &v226 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v258 = &v226 - v45;
  v271 = sub_1E48782AC();
  v269 = *(v271 - 1);
  v46 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v255 = &v226 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for WideXMoreView();
  v49 = (v48 - 8);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v226 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for WideTextHeaderView();
  v54 = (v53 - 8);
  v55 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v226 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for WideMultidayEventsView();
  v59 = *(v1 + *(v58 + 20));

  v257 = sub_1E479A9C8(v60);

  v61 = sub_1E487732C();
  v270 = v61;
  v62 = *(v61 - 8);
  v63 = *(v62 + 16);
  v279 = v62 + 16;
  v280 = v63;
  v281 = v1;
  v63(v57, v1, v61);
  v63(&v57[v54[7]], v1, v61);
  *&v57[v54[8]] = swift_getKeyPath();
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v65 = &v57[v54[9]];
  *v65 = KeyPath;
  v65[8] = 0;
  v66 = v54[10];
  v283 = 0x402A000000000000;
  sub_1E4773794();
  sub_1E4877B6C();
  v67 = &v57[v54[11]];
  *v67 = 0x4D4D202C45454545;
  *(v67 + 1) = 0xEB0000000064204DLL;
  v68 = &v57[v54[12]];
  strcpy(v68, "EEEE, MMMM d");
  v68[13] = 0;
  *(v68 + 7) = -5120;
  v69 = v54[13];
  sub_1E48782EC();
  v70 = sub_1E48781FC();

  v254 = v70;
  *&v57[v69] = v70;
  v71 = v54[14];

  sub_1E48782EC();
  sub_1E487827C();
  v72 = sub_1E487829C();

  *&v57[v71] = v72;
  v253 = v72;
  v73 = v54[15];
  v240 = v57;
  *&v57[v73] = 0x4018000000000000;
  v268 = type metadata accessor for FakeEvents();

  v74 = sub_1E480D21C();
  v277 = v58;
  v75 = v281;
  v76 = v281 + *(v58 + 28);
  v77 = *v76;
  LOBYTE(v72) = *(v76 + 8);
  LODWORD(v276) = v72;
  *&v52[v49[8]] = swift_getKeyPath();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v52 = v74;
  *(v52 + 1) = v77;
  v52[16] = v72;
  v79 = v49[9];
  swift_retain_n();
  v80 = sub_1E48782BC();
  *&v52[v79] = v80;
  v81 = v49[10];
  v241 = v52;
  *&v52[v81] = 0x4018000000000000;
  v82 = v258;
  v256 = v80;

  sub_1E48781BC();
  v83 = v269;
  v84 = v255;
  v85 = v271;
  (*(v269 + 104))(v255, *MEMORY[0x1E6980EA0], v271);
  v86 = sub_1E48782CC();

  (*(v83 + 8))(v84, v85);
  v255 = v86;

  sub_1E48063E0(v82);
  v87 = v260;
  v88 = v261;
  v280(&v82[v260[5]], v75, v270);
  v249 = type metadata accessor for CellDisplayContext(0);
  swift_storeEnumTagMultiPayload();
  *&v82[v87[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v82[v87[7]] = swift_getKeyPath();
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v82[v87[8]] = swift_getKeyPath();
  v247 = v78;
  swift_storeEnumTagMultiPayload();
  v89 = &v82[v87[9]];
  *v89 = v77;
  LOBYTE(v78) = v276;
  v89[8] = v276;
  v229 = *(v259 + 56);
  v230 = v259 + 56;
  v229(v265, 1, 1, v87);
  v236 = *(v263 + 56);
  v236(v267, 1, 1, v264);
  v232 = *(v262 + 56);
  v233 = v262 + 56;
  v232(v266, 1, 1, v88);
  v283 = MEMORY[0x1E69E7CD0];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  inited = swift_initStackObject();
  v245 = xmmword_1E487A7F0;
  *(inited + 16) = xmmword_1E487A7F0;
  v92 = v253;
  *(inited + 32) = v254;
  *(inited + 40) = v92;
  sub_1E47CC0AC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v271 = v90;
  v93 = swift_initStackObject();
  v228 = xmmword_1E487AC40;
  *(v93 + 16) = xmmword_1E487AC40;
  *(v93 + 32) = sub_1E47BDB78();

  v269 = v77;
  if ((v78 & 1) == 0)
  {
    sub_1E4878DDC();
    v94 = sub_1E48780FC();
    sub_1E4877AAC();

    v95 = v250;
    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v251 + 8))(v95, v252);
    v77 = v282;
  }

  v96 = v77[17];

  v97 = sub_1E48781CC();

  *(v93 + 40) = v97;
  *(v93 + 48) = sub_1E47BDCDC();
  sub_1E47CC0AC(v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  v98 = swift_initStackObject();
  v246 = xmmword_1E487A7E0;
  *(v98 + 16) = xmmword_1E487A7E0;
  *(v98 + 32) = v255;

  sub_1E47CC0AC(v98);
  swift_setDeallocating();
  sub_1E47CC118(v98 + 32);
  v99 = swift_initStackObject();
  *(v99 + 16) = v246;
  *(v99 + 32) = v256;
  v100 = v99 + 32;
  sub_1E47CC0AC(v99);
  swift_setDeallocating();
  sub_1E47CC118(v100);
  v101 = v270;
  v102 = v280;
  v103 = v257;
  if (v257)
  {
    v104 = sub_1E480D21C();
    v105 = v264;
    v106 = v237;
    v102(v237 + v264[5], v281, v101);
    swift_storeEnumTagMultiPayload();
    *(v106 + v105[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v106 + v105[7]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v106 + v105[8]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *v106 = v104;
    v107 = v106 + v105[9];
    *v107 = v269;
    v107[8] = v276;
    v236(v106, 0, 1, v105);

    v108 = v267;
    sub_1E47CC250(v106, v267, &qword_1ECF7CDA0, &qword_1E487F770);
    v109 = v108;
    v110 = v105;
    v111 = v239;
    sub_1E4773850(v109, v239, &qword_1ECF7CDA0, &qword_1E487F770);
    if ((*(v263 + 48))(v111, 1, v105) == 1)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v112 = swift_initStackObject();
    *(v112 + 16) = v245;
    *(v112 + 32) = sub_1E47A9F70();
    v113 = v111 + v110[9];
    v114 = *v113;
    v115 = *(v113 + 8);

    if ((v115 & 1) == 0)
    {
      sub_1E4878DDC();
      v116 = sub_1E48780FC();
      sub_1E4877AAC();

      v111 = v239;
      v117 = v250;
      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v251 + 8))(v117, v252);
      v114 = v282;
    }

    v118 = v114[17];

    v119 = sub_1E48781CC();

    *(v112 + 40) = v119;
    sub_1E47EBB40(v111, type metadata accessor for WideAllDayView);
    sub_1E47CC0AC(v112);
    swift_setDeallocating();
    swift_arrayDestroy();
    v88 = v261;
    v103 = v257;
    v102 = v280;
  }

  if ((v103 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

  v120 = v234;
  sub_1E48060FC(v234);
  v102(&v120[v88[5]], v281, v101);
  swift_storeEnumTagMultiPayload();
  *&v120[v88[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v120[v88[7]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v120[v88[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v120[v88[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v121 = &v120[v88[9]];
  *v121 = v269;
  v121[8] = v276;
  v232(v120, 0, 1, v88);

  v122 = v120;
  v123 = v266;
  sub_1E47CC250(v122, v266, &qword_1ECF7CD98, &qword_1E487F768);
  v124 = v235;
  sub_1E4773850(v123, v235, &qword_1ECF7CD98, &qword_1E487F768);
  if ((*(v262 + 48))(v124, 1, v88) == 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v125 = swift_initStackObject();
  *(v125 + 16) = v245;
  v126 = v124 + v88[9];
  v127 = *v126;
  v128 = *(v126 + 8);

  if ((v128 & 1) == 0)
  {
    sub_1E4878DDC();
    v129 = sub_1E48780FC();
    sub_1E4877AAC();

    v130 = v250;
    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v251 + 8))(v130, v252);
    v127 = v282;
  }

  v131 = v127[17];

  v132 = sub_1E48781CC();

  *(v125 + 32) = v132;
  *(v125 + 40) = sub_1E4833A10();
  sub_1E47EBB40(v124, type metadata accessor for WideReminderView);
  sub_1E47CC0AC(v125);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOWORD(v103) = v257;
LABEL_13:
  if ((v103 & 0x100) == 0)
  {
    goto LABEL_18;
  }

  v133 = v231;
  sub_1E48060F4(v231);
  v134 = v260;
  v102(&v133[v260[5]], v281, v101);
  swift_storeEnumTagMultiPayload();
  *&v133[v134[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v133[v134[7]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v133[v134[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v135 = &v133[v134[9]];
  *v135 = v269;
  v135[8] = v276;
  v229(v133, 0, 1, v134);

  v136 = v133;
  v137 = v265;
  sub_1E47CC250(v136, v265, &qword_1ECF7CDA8, &qword_1E487F778);
  v138 = v238;
  sub_1E4773850(v137, v238, &qword_1ECF7CDA8, &qword_1E487F778);
  if ((*(v259 + 48))(v138, 1, v134) == 1)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    result = sub_1E487912C();
    __break(1u);
    return result;
  }

  v139 = swift_initStackObject();
  *(v139 + 16) = v228;
  *(v139 + 32) = sub_1E47BDB78();
  v140 = v138 + v134[9];
  v141 = *v140;
  v142 = *(v140 + 8);

  if ((v142 & 1) == 0)
  {
    sub_1E4878DDC();
    v143 = sub_1E48780FC();
    sub_1E4877AAC();

    v138 = v238;
    v144 = v250;
    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v251 + 8))(v144, v252);
    v141 = v282;
  }

  v145 = v141[17];

  v146 = sub_1E48781CC();

  *(v139 + 40) = v146;
  *(v139 + 48) = sub_1E47BDCDC();
  sub_1E47EBB40(v138, type metadata accessor for WideEventDetailsView);
  sub_1E47CC0AC(v139);
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_18:
  v147 = 0;
  v271 = "w from model: %@";
  v149 = v283 + 56;
  v148 = *(v283 + 56);
  v276 = v283;
  v150 = 1 << *(v283 + 32);
  v151 = -1;
  if (v150 < 64)
  {
    v151 = ~(-1 << v150);
  }

  v152 = v151 & v148;
  v153 = (v150 + 63) >> 6;
  v270 = (v244 + 8);
  v154 = MEMORY[0x1E69E7CC8];
  v268 = v153;
  v269 = v283 + 56;
  while (v152)
  {
    v280 = v154;
    v155 = v147;
LABEL_29:
    v156 = *(*(v276 + 48) + ((v155 << 9) | (8 * __clz(__rbit64(v152)))));
    v279 = *(v277 + 32);
    swift_retain_n();
    v157 = sub_1E487842C();
    v159 = v158;
    v161 = v160;
    v278 = v162;

    v163 = sub_1E487838C();
    (*(*(v163 - 8) + 56))(v274, 1, 1, v163);
    v164 = sub_1E487843C();
    (*(*(v164 - 8) + 56))(v275, 1, 1, v164);
    v165 = v272;
    sub_1E48783AC();
    sub_1E487839C();
    v167 = v166;
    sub_1E477A3C8(v157, v159, v161 & 1);

    (*v270)(v165, v273);
    v168 = v280;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v282 = v168;
    v170 = sub_1E481DCC4(v156);
    v172 = v168[2];
    v173 = (v171 & 1) == 0;
    v174 = __OFADD__(v172, v173);
    v175 = v172 + v173;
    if (v174)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v176 = v171;
    if (v168[3] >= v175)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v180 = v170;
        sub_1E4861D9C();
        v170 = v180;
      }
    }

    else
    {
      sub_1E4861524(v175, isUniquelyReferenced_nonNull_native);
      v170 = sub_1E481DCC4(v156);
      if ((v176 & 1) != (v177 & 1))
      {
        goto LABEL_61;
      }
    }

    v152 &= v152 - 1;
    v154 = v282;
    if (v176)
    {
      *(v282[7] + 8 * v170) = v167;
    }

    else
    {
      v282[(v170 >> 6) + 8] |= 1 << v170;
      *(v154[6] + 8 * v170) = v156;
      *(v154[7] + 8 * v170) = v167;
      v178 = v154[2];
      v174 = __OFADD__(v178, 1);
      v179 = v178 + 1;
      if (v174)
      {
        goto LABEL_57;
      }

      v154[2] = v179;
    }

    v147 = v155;
    v153 = v268;
    v149 = v269;
  }

  while (1)
  {
    v155 = v147 + 1;
    if (__OFADD__(v147, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v155 >= v153)
    {
      break;
    }

    v152 = *(v149 + 8 * v155);
    ++v147;
    if (v152)
    {
      v280 = v154;
      goto LABEL_29;
    }
  }

  sub_1E487201C(v254, v154);
  v182 = v181;
  sub_1E487201C(v253, v154);
  v184 = v183;
  v185 = 0.0;
  v186 = 0.0;
  if (!(*(v263 + 48))(v267, 1, v264))
  {
    v187 = v226;
    sub_1E47EBAD8(v267, v226, type metadata accessor for WideAllDayView);
    v186 = sub_1E47ABBAC(v154);
    sub_1E47EBB40(v187, type metadata accessor for WideAllDayView);
  }

  v188 = v261;
  v189 = v266;
  v190 = (*(v262 + 48))(v266, 1, v261);
  v191 = v242;
  v192 = v258;
  if (!v190)
  {
    sub_1E47EBAD8(v189, v242, type metadata accessor for WideReminderView);
    v193 = v191 + v188[9];
    v194 = *v193;
    v195 = *(v193 + 8);

    v196 = v194;
    if ((v195 & 1) == 0)
    {
      sub_1E4878DDC();
      v197 = sub_1E48780FC();
      sub_1E4877AAC();

      v198 = v250;
      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v251 + 8))(v198, v252);
      v196 = v282;
    }

    v199 = v196[17];

    v200 = sub_1E48781CC();

    sub_1E487201C(v200, v154);
    v202 = v201;

    v203 = sub_1E4833A10();
    sub_1E487201C(v203, v154);
    v205 = v204;

    if (v202 > v205)
    {
      v206 = v202;
    }

    else
    {
      v206 = v205;
    }

    v207 = v206 + 0.0;

    if ((v195 & 1) == 0)
    {
      sub_1E4878DDC();
      v208 = sub_1E48780FC();
      sub_1E4877AAC();

      v209 = v250;
      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v251 + 8))(v209, v252);
      v194 = v282;
    }

    sub_1E47EBB40(v191, type metadata accessor for WideReminderView);
    v210 = *(v194 + 6);

    v185 = v207 + v210 + v210;
    v189 = v266;
    v192 = v258;
  }

  v211 = sub_1E47C3E30(v154);
  v212 = v265;
  v213 = 0.0;
  if (!(*(v259 + 48))(v265, 1, v260))
  {
    v214 = v227;
    sub_1E47EBAD8(v212, v227, type metadata accessor for WideEventDetailsView);
    v215 = sub_1E47C3E30(v154);
    v212 = v265;
    v213 = v215;
    sub_1E47EBB40(v214, type metadata accessor for WideEventDetailsView);
  }

  if (v182 > v184)
  {
    v216 = v182;
  }

  else
  {
    v216 = v184;
  }

  v217 = v216 + 6.0;

  sub_1E487201C(v256, v154);
  v219 = v218;

  v220 = v219 + 6.0;
  sub_1E487201C(v255, v154);
  v222 = v221;

  sub_1E47EBB40(v192, type metadata accessor for WideEventDetailsView);
  sub_1E47EBB40(v241, type metadata accessor for WideXMoreView);
  sub_1E47EBB40(v240, type metadata accessor for WideTextHeaderView);
  v223 = *(v281 + *(v277 + 24));
  sub_1E47738B8(v189, &qword_1ECF7CD98, &qword_1E487F768);
  sub_1E47738B8(v267, &qword_1ECF7CDA0, &qword_1E487F770);
  result = sub_1E47738B8(v212, &qword_1ECF7CDA8, &qword_1E487F778);
  v225 = v243;
  *v243 = v217;
  v225[1] = v186;
  v225[2] = v185;
  v225[3] = v211;
  v225[4] = v213;
  v225[5] = v220;
  v225[6] = v222 + 8.0 + 4.0;
  *(v225 + 7) = v223;
  v225[8] = 4.0;
  return result;
}

uint64_t sub_1E47EB2C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47E963C(v6);
  *a2 = sub_1E4877FAC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD68, &qword_1E487F718);
  sub_1E47EB3BC(a1, v6, a2 + *(v4 + 44));
}

uint64_t sub_1E47EB3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = a1;
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD70, &qword_1E487F720);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  sub_1E4878D2C();
  v33 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4877BEC();
  v15 = v14;
  v31 = type metadata accessor for WideMultidayLayout();
  v16 = type metadata accessor for WideMultidayEventsView();
  v17 = sub_1E484C7BC(*(v36 + *(v16 + 20)), a2, v15);
  v18 = sub_1E4877FBC();
  v19 = *(a2 + 56);
  *v13 = v18;
  *(v13 + 1) = v19;
  v13[16] = 0;
  v32 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD78, &qword_1E487F728) + 44);
  v37 = v17;
  v30[1] = swift_getKeyPath();
  (*(v5 + 16))(v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v4);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v20, v7, v4);
  *(v22 + v21) = v31;
  v23 = v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v23 + 64) = *(a2 + 64);
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD80, &qword_1E487F750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD88, &qword_1E487F758);
  sub_1E4773680(&qword_1EE2B0E00, &qword_1ECF7CD80, &qword_1E487F750);
  sub_1E4773680(&qword_1EE2B0F00, &qword_1ECF7CD88, &qword_1E487F758);
  sub_1E487885C();

  v26 = v34;
  sub_1E4773850(v13, v34, &qword_1ECF7CD70, &qword_1E487F720);
  v27 = v35;
  sub_1E4773850(v26, v35, &qword_1ECF7CD70, &qword_1E487F720);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CD90, &qword_1E487F760) + 48);
  *v28 = 0;
  *(v28 + 8) = 0;
  sub_1E47738B8(v13, &qword_1ECF7CD70, &qword_1E487F720);
  sub_1E47738B8(v26, &qword_1ECF7CD70, &qword_1E487F720);
}

uint64_t sub_1E47EB83C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E47EBAD8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WideMultidayEventsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E47EB93C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1E47EB9A0;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E47EB93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WideMultidayEventsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47EB9A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WideMultidayEventsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47EB2C8(v4, a1);
}

uint64_t sub_1E47EBA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E487732C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);

  return sub_1E484952C(a1, v2 + v6, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), a2);
}

uint64_t sub_1E47EBAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47EBB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for IconicDateHeader()
{
  result = qword_1EE2B3838;
  if (!qword_1EE2B3838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47EBC14()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47EBD2C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
    if (v1 <= 0x3F)
    {
      sub_1E47EBD2C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v2 <= 0x3F)
      {
        sub_1E478305C();
        if (v3 <= 0x3F)
        {
          sub_1E47EBD80();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E47EBD2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1E47EBD80()
{
  if (!qword_1EE2B1658)
  {
    sub_1E4773794();
    v0 = sub_1E4877B8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B1658);
    }
  }
}

uint64_t sub_1E47EBDF8@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for IconicDateHeader();
  sub_1E4773850(v1 + *(v12 + 20), v11, &qword_1ECF7C840, &qword_1E487ADF0);
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

uint64_t sub_1E47EC000@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for IconicDateHeader();
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

uint64_t sub_1E47EC208()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for IconicDateHeader() + 28);
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

uint64_t sub_1E47EC360(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - v4;
  v34 = sub_1E487757C();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487753C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E47EC000(v16);
  v18 = sub_1E487748C();
  v19 = *(v10 + 8);
  v19(v16, v9);
  [v17 setCalendar_];

  sub_1E47EC000(v16);
  sub_1E487750C();
  v19(v16, v9);
  v20 = sub_1E487756C();
  (*(v5 + 8))(v8, v34);
  [v17 setTimeZone_];

  sub_1E47EC000(v14);
  v21 = v35;
  sub_1E48774EC();
  v19(v14, v9);
  v22 = v21;
  v23 = sub_1E487744C();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v25 = sub_1E48773DC();
    (*(v24 + 8))(v22, v23);
  }

  [v17 setLocale_];

  v26 = sub_1E4878B9C();
  [v17 setLocalizedDateFormatFromTemplate_];

  v27 = sub_1E48772BC();
  v28 = [v17 stringFromDate_];

  v29 = sub_1E4878BDC();
  v31 = v30;

  v38 = v29;
  v39 = v31;
  sub_1E477A374();
  v32 = sub_1E4878E8C();

  return v32;
}

id sub_1E47EC744()
{
  v31 = sub_1E487751C();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_1E487753C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v29 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v30 = v0;
  sub_1E47EC000(v16);
  sub_1E48774EC();
  v17 = *(v10 + 8);
  v17(v16, v9);
  v18 = sub_1E487744C();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v8, 1, v18) != 1)
  {
    v20 = sub_1E48773DC();
    (*(v19 + 8))(v8, v18);
  }

  v21 = v29;
  [v29 setLocale_];

  sub_1E47EC000(v14);
  v22 = v31;
  (*(v1 + 104))(v4, *MEMORY[0x1E6969A48], v31);
  v23 = sub_1E487752C();
  (*(v1 + 8))(v4, v22);
  v17(v14, v9);
  v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  result = [v21 stringFromNumber_];
  if (result)
  {
    v26 = result;
    v27 = sub_1E4878BDC();

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47ECAAC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE70, &qword_1E487F9F0);
  v3 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v85 = &v78 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF50, &qword_1E487FB48);
  v5 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v78 - v6;
  v83 = sub_1E4877C5C();
  v82 = *(v83 - 8);
  v7 = *(v82 + 64);
  v8 = MEMORY[0x1EEE9AC00](v83);
  v80 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v78 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE48, &qword_1E487F9C8);
  v11 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v84 = &v78 - v12;
  v96 = sub_1E487838C();
  v95 = *(v96 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v78 - v17;
  v19 = sub_1E487753C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE88, &qword_1E487FA08);
  v91 = *(v93 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v78 - v25;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE80, &qword_1E487FA00);
  v90 = *(v92 - 8);
  v26 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v78 - v27;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF58, &qword_1E487FB50);
  v99 = *(v105 - 8);
  v28 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v98 = &v78 - v29;
  v86 = a1;
  v30 = sub_1E47EC360(*(a1 + 3), *(a1 + 4));
  v32 = v31;
  v79 = v30;
  v106 = v30;
  v107 = v31;
  sub_1E477A374();
  v97 = v32;

  v33 = sub_1E487848C();
  v35 = v34;
  LOBYTE(v32) = v36;
  sub_1E47EC000(v23);
  sub_1E48774EC();
  (*(v20 + 8))(v23, v19);
  MEMORY[0x1E6918080](v18);
  sub_1E47738B8(v18, &qword_1ECF7BE58, &unk_1E487DDB0);
  v37 = sub_1E48783FC();
  v39 = v38;
  LOBYTE(v19) = v40;

  sub_1E477A3C8(v33, v35, v32 & 1);

  v41 = v86;
  v42 = *(v86 + 2);
  v43 = sub_1E487842C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1E477A3C8(v37, v39, v19 & 1);

  KeyPath = swift_getKeyPath();
  v106 = v43;
  v107 = v45;
  v108 = v47 & 1;
  v87 = v49;
  v109 = v49;
  v110 = KeyPath;
  v111 = 1;
  v112 = 0;
  v113 = *v41;
  v51 = v94;
  if (v113)
  {
    sub_1E487836C();
  }

  else
  {
    sub_1E487837C();
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v53 = sub_1E477A490();
  v54 = v89;
  sub_1E487851C();
  (*(v95 + 8))(v51, v96);
  sub_1E477A3C8(v43, v45, v47 & 1);

  v55 = *(v41 + 6);
  v106 = v52;
  v107 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v88;
  v58 = v93;
  sub_1E48785DC();
  (*(v91 + 8))(v54, v58);
  v106 = v58;
  v107 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v59 = v98;
  v60 = v92;
  sub_1E48784AC();
  (*(v90 + 8))(v57, v60);
  if (v113)
  {

    v61 = v99;
    v62 = v85;
    v63 = v105;
    (*(v99 + 16))(v85, v59, v105);
    *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE78, &qword_1E487F9F8) + 36)) = 257;
    v64 = (v62 + *(v103 + 36));
    v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE90, &qword_1E487FA10) + 28);
    sub_1E4877CFC();
    *v64 = swift_getKeyPath();
    v66 = &qword_1ECF7CE70;
    v67 = &qword_1E487F9F0;
    sub_1E4773850(v62, v102, &qword_1ECF7CE70, &qword_1E487F9F0);
  }

  else
  {
    v61 = v99;
    v62 = v84;
    (*(v99 + 16))(v84, v59, v105);
    v68 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE58, &qword_1E487F9D8) + 52));
    v69 = v79;
    v70 = v97;
    *v68 = v79;
    v68[1] = v70;

    v71 = v81;
    sub_1E4877C4C();
    v72 = v82;
    v73 = v83;
    (*(v82 + 16))(v80, v71, v83);
    sub_1E47F2C98(&qword_1EE2B1600, MEMORY[0x1E697E468]);
    v74 = sub_1E4877BDC();
    (*(v72 + 8))(v71, v73);
    *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE50, &qword_1E487F9D0) + 36)) = v74;
    v75 = sub_1E48788AC();
    v76 = (v62 + *(v100 + 36));
    *v76 = v75;
    v76[1] = v69;
    v63 = v105;
    v76[2] = v70;
    v66 = &qword_1ECF7CE48;
    v67 = &qword_1E487F9C8;
    sub_1E4773850(v62, v102, &qword_1ECF7CE48, &qword_1E487F9C8);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E47F23D0();
  sub_1E47F256C();
  sub_1E487803C();
  sub_1E47738B8(v62, v66, v67);
  return (*(v61 + 8))(v59, v63);
}

uint64_t sub_1E47ED570@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEC8, &qword_1E487FA48);
  v7 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v67 = &v66 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CED0, &qword_1E487FA50);
  v9 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v66 - v10;
  v11 = sub_1E4877C5C();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v66 - v15;
  v75 = sub_1E487838C();
  v71 = *(v75 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE88, &qword_1E487FA08);
  v70 = *(v73 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v20 = &v66 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CED8, &qword_1E487FA58);
  v21 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v66 - v22;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEE0, &qword_1E487FA60);
  v78 = *(v79 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v66 - v24;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEE8, &qword_1E487FA68);
  v25 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v66 - v26;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEF0, &qword_1E487FA70);
  v27 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v66 - v28;
  v86 = a2;
  v92 = a2;
  v93 = a3;
  sub_1E477A374();
  v89 = a3;

  v29 = sub_1E487848C();
  v31 = v30;
  v33 = v32;
  LODWORD(v92) = sub_1E487807C();
  v34 = sub_1E487840C();
  v36 = v35;
  v38 = v37;
  sub_1E477A3C8(v29, v31, v33 & 1);

  v39 = a1;
  v40 = *(a1 + 13);
  v41 = sub_1E487842C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1E477A3C8(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v92 = v41;
  v93 = v43;
  v94 = v45 & 1;
  v95 = v47;
  v96 = KeyPath;
  v97 = 1;
  v98 = 0;
  v99 = *v39;
  v49 = v69;
  if (v99)
  {
    sub_1E487836C();
  }

  else
  {
    sub_1E487837C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487851C();
  (*(v71 + 8))(v49, v75);
  sub_1E477A3C8(v41, v43, v45 & 1);

  v50 = v68;
  (*(v70 + 32))(v68, v20, v73);
  v51 = (v50 + *(v72 + 52));
  v52 = v86;
  v53 = v89;
  *v51 = v86;
  v51[1] = v53;
  v54 = *(v39 + 14);
  sub_1E4773680(&qword_1ECF7CEF8, &qword_1ECF7CED8, &qword_1E487FA58);

  v55 = v77;
  sub_1E48785DC();
  sub_1E47738B8(v50, &qword_1ECF7CED8, &qword_1E487FA58);
  v56 = v83;
  sub_1E4877C4C();
  v58 = v84;
  v57 = v85;
  (*(v84 + 16))(v82, v56, v85);
  sub_1E47F2C98(&qword_1EE2B1600, MEMORY[0x1E697E468]);
  v59 = sub_1E4877BDC();
  (*(v58 + 8))(v56, v57);
  v60 = v74;
  (*(v78 + 32))(v74, v55, v79);
  *(v60 + *(v76 + 36)) = v59;
  v61 = sub_1E48788AC();
  v62 = v81;
  sub_1E477372C(v60, v81, &qword_1ECF7CEE8, &qword_1E487FA68);
  v63 = (v62 + *(v80 + 36));
  *v63 = v61;
  v63[1] = v52;
  v63[2] = v53;
  if (v99)
  {
    v64 = v67;
    sub_1E4773850(v62, v67, &qword_1ECF7CEF0, &qword_1E487FA70);
    *(v64 + *(v90 + 36)) = 257;
    sub_1E4773850(v64, v88, &qword_1ECF7CEC8, &qword_1E487FA48);
    swift_storeEnumTagMultiPayload();
    sub_1E47F276C();
    sub_1E47F294C();

    sub_1E487803C();
    sub_1E47738B8(v64, &qword_1ECF7CEC8, &qword_1E487FA48);
  }

  else
  {
    sub_1E4773850(v62, v88, &qword_1ECF7CEF0, &qword_1E487FA70);
    swift_storeEnumTagMultiPayload();
    sub_1E47F276C();
    sub_1E47F294C();

    sub_1E487803C();
  }

  return sub_1E47738B8(v62, &qword_1ECF7CEF0, &qword_1E487FA70);
}

uint64_t sub_1E47EDEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_1E4877CCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF30, &qword_1E487FAC0);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v52 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF38, &qword_1E487FAC8);
  v13 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v15 = &v52 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF40, &qword_1E487FAD0);
  v16 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v18 = &v52 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF48, &qword_1E487FAD8);
  v19 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v21 = &v52 - v20;
  sub_1E47EBDF8(v9);
  sub_1E4877CAC();
  sub_1E47F2C98(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v22 = sub_1E4878EAC();
  v23 = *(v3 + 8);
  v23(v7, v2);
  v23(v9, v2);
  if (v22)
  {
    v24 = 0xA300000000000000;
    v25 = 9666786;
  }

  else
  {
    v25 = sub_1E47EC744();
  }

  v60 = v25;
  v61 = v24;
  sub_1E477A374();
  v26 = sub_1E487848C();
  v28 = v27;
  v60 = v26;
  v61 = v27;
  v30 = v29 & 1;
  v62 = v29 & 1;
  v63 = v31;
  v32 = v52;
  sub_1E48784FC();
  sub_1E477A3C8(v26, v28, v30);

  v33 = *(v58 + 8);
  KeyPath = swift_getKeyPath();
  (*(v56 + 32))(v15, v32, v57);
  v35 = &v15[*(v54 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = swift_getKeyPath();
  sub_1E477372C(v15, v18, &qword_1ECF7CF38, &qword_1E487FAC8);
  v37 = &v18[*(v53 + 36)];
  *v37 = v36;
  *(v37 + 1) = 1;
  v37[16] = 0;

  LOBYTE(v33) = sub_1E487815C();
  sub_1E4877B0C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1E477372C(v18, v21, &qword_1ECF7CF40, &qword_1E487FAD0);
  v46 = &v21[*(v55 + 36)];
  *v46 = v33;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE20, &qword_1E487F9A0);
  v48 = v59;
  v49 = (v59 + *(v47 + 36));
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE90, &qword_1E487FA10) + 28);
  sub_1E4877CFC();
  *v49 = swift_getKeyPath();
  return sub_1E477372C(v21, v48, &qword_1ECF7CF48, &qword_1E487FAD8);
}

uint64_t sub_1E47EE384@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v80 = sub_1E48780BC();
  v79 = *(v80 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDC0, &qword_1E487F908);
  v5 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = (&v65 - v6);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDC8, &qword_1E487F910);
  v85 = *(v86 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v65 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD0, &qword_1E487F918);
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v65 - v10;
  v76 = sub_1E487757C();
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E487732C();
  v69 = *(v70 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1E487753C();
  v71 = *(v72 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v65 - v20;
  v67 = sub_1E487740C();
  v21 = *(v67 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E487744C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for IconicDateHeader();
  v31 = v30[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  sub_1E4877B7C();
  v32 = *v90;
  v33 = v2 + v30[9];
  sub_1E4877B7C();
  v34 = *v90;
  v35 = v2 + v30[10];
  sub_1E4877B7C();
  v74 = v30;
  v36 = v2 + v30[11];
  sub_1E4877B7C();
  v37 = *v90;
  sub_1E48773EC();
  sub_1E487741C();
  (*(v26 + 8))(v29, v25);
  v38 = v66;
  sub_1E48773FC();
  (*(v21 + 8))(v24, v67);
  sub_1E47EC000(v17);
  v39 = v68;
  (*(v69 + 16))(v68, v2, v70);
  sub_1E47F07C0(v38, v17, v39, v90, v32, v34, v37);
  v40 = v90[11];
  v41 = v90[12];
  v42 = v91;
  sub_1E47EC000(v17);
  v43 = v73;
  sub_1E487750C();
  (*(v71 + 8))(v17, v72);
  v44 = sub_1E486E22C(v40, v41, v42);
  v46 = v45;
  (*(v75 + 8))(v43, v76);
  if (v46)
  {
    v88 = v44;
    v89 = v46;
    sub_1E477A374();
    v44 = sub_1E4878E8C();
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = sub_1E4877F5C();
  v50 = v77;
  *v77 = v49;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDE0, &unk_1E487F928);
  sub_1E47EECDC(v90, v44, v48, v2, v50 + *(v51 + 44));

  v52 = v78;
  sub_1E487809C();
  v53 = sub_1E4773680(&qword_1EE2B0FA0, &qword_1ECF7CDC0, &qword_1E487F908);
  v54 = v83;
  v55 = v81;
  sub_1E48785AC();
  (*(v79 + 8))(v52, v80);
  sub_1E47738B8(v50, &qword_1ECF7CDC0, &qword_1E487F908);
  v88 = sub_1E47EC360(*(v2 + v74[12]), *(v2 + v74[12] + 8));
  v89 = v56;
  sub_1E477A374();
  v57 = sub_1E487848C();
  v59 = v58;
  v61 = v60;
  v88 = v55;
  v89 = v53;
  swift_getOpaqueTypeConformance2();
  v62 = v82;
  v63 = v86;
  sub_1E487856C();
  sub_1E477A3C8(v57, v59, v61 & 1);

  (*(v85 + 8))(v54, v63);
  sub_1E4877C7C();
  sub_1E47F2274(v90);
  return sub_1E47738B8(v62, &qword_1ECF7CDD0, &qword_1E487F918);
}

uint64_t sub_1E47EECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v42 = a5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDE8, &qword_1E487F938);
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDF0, &qword_1E487F940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDF8, &qword_1E487F948);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE00, &qword_1E487F950);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  sub_1E4878D2C();
  v41 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v24 = *(a1 + 80);
    *v8 = sub_1E4877F6C();
    *(v8 + 1) = v24;
    v8[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE08, &qword_1E487F958);
    sub_1E47EFCB8(a1, v40, v37, v38, &v8[*(v25 + 44)]);
    sub_1E4773850(v8, v12, &qword_1ECF7CDE8, &qword_1E487F938);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED8, &qword_1ECF7CDF8, &qword_1E487F948);
    sub_1E4773680(&qword_1EE2B0F60, &qword_1ECF7CDE8, &qword_1E487F938);
    sub_1E487803C();
    v26 = v8;
    v27 = &qword_1ECF7CDE8;
    v28 = &qword_1E487F938;
  }

  else
  {
    *v16 = sub_1E4877FBC();
    *(v16 + 1) = 0;
    v16[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE18, &qword_1E487F998);
    sub_1E47EF238(v37, v38, a1, v40, &v16[*(v29 + 44)]);
    sub_1E4773850(v16, v12, &qword_1ECF7CDF8, &qword_1E487F948);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED8, &qword_1ECF7CDF8, &qword_1E487F948);
    sub_1E4773680(&qword_1EE2B0F60, &qword_1ECF7CDE8, &qword_1E487F938);
    sub_1E487803C();
    v26 = v16;
    v27 = &qword_1ECF7CDF8;
    v28 = &qword_1E487F948;
  }

  sub_1E47738B8(v26, v27, v28);
  if (sub_1E47EC208())
  {
    v30 = sub_1E487874C();
    v31 = sub_1E48786BC();
    KeyPath = swift_getKeyPath();

    v33 = 1;
  }

  else
  {
    v33 = 0;
    v30 = 0;
    KeyPath = 0;
    v31 = 0;
  }

  sub_1E4773850(v23, v21, &qword_1ECF7CE00, &qword_1E487F950);
  v34 = v42;
  sub_1E4773850(v21, v42, &qword_1ECF7CE00, &qword_1E487F950);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE10, &qword_1E487F960) + 48));
  sub_1E47F22A4(0, v33, v30);
  sub_1E47F22F4(0, v33, v30);
  *v35 = 0;
  v35[1] = v33;
  v35[2] = v30;
  v35[3] = KeyPath;
  v35[4] = v31;
  sub_1E47738B8(v23, &qword_1ECF7CE00, &qword_1E487F950);
  sub_1E47F22F4(0, v33, v30);
  sub_1E47738B8(v21, &qword_1ECF7CE00, &qword_1E487F950);
}

uint64_t sub_1E47EF238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a5;
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE20, &qword_1E487F9A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE28, &qword_1E487F9A8);
  v12 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE30, &qword_1E487F9B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE38, &qword_1E487F9B8);
  v19 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE40, &qword_1E487F9C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v40 - v27;
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v29 = *(a3 + 80);
    *v14 = sub_1E4877F6C();
    *(v14 + 1) = v29;
    v14[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEA0, &qword_1E487FA20);
    sub_1E47EF72C(a3, v40, a2, &v14[*(v30 + 44)]);
    v31 = a3;
    v32 = &qword_1ECF7CE28;
    v33 = &qword_1E487F9A8;
    sub_1E4773850(v14, v18, &qword_1ECF7CE28, &qword_1E487F9A8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0F58, &qword_1ECF7CE28, &qword_1E487F9A8);
    sub_1E47F2344();
    sub_1E487803C();
    v34 = v14;
  }

  else
  {
    sub_1E47ECAAC(a3, v21);
    v31 = a3;
    v32 = &qword_1ECF7CE38;
    v33 = &qword_1E487F9B8;
    sub_1E4773850(v21, v18, &qword_1ECF7CE38, &qword_1E487F9B8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0F58, &qword_1ECF7CE28, &qword_1E487F9A8);
    sub_1E47F2344();
    sub_1E487803C();
    v34 = v21;
  }

  sub_1E47738B8(v34, v32, v33);
  v35 = v44;
  sub_1E47EDEA8(v31, v44);
  sub_1E4773850(v28, v26, &qword_1ECF7CE40, &qword_1E487F9C0);
  v36 = v45;
  sub_1E4773850(v35, v45, &qword_1ECF7CE20, &qword_1E487F9A0);
  v37 = v47;
  sub_1E4773850(v26, v47, &qword_1ECF7CE40, &qword_1E487F9C0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE98, &qword_1E487FA18);
  sub_1E4773850(v36, v37 + *(v38 + 48), &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v35, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v28, &qword_1ECF7CE40, &qword_1E487F9C0);
  sub_1E47738B8(v36, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v26, &qword_1ECF7CE40, &qword_1E487F9C0);
}

uint64_t sub_1E47EF72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEA8, &qword_1E487FA28);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEB0, &qword_1E487FA30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + 72);
  *v19 = sub_1E4877F6C();
  *(v19 + 1) = v20;
  v19[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEB8, &qword_1E487FA38);
  sub_1E47EF9D0(a1, &v19[*(v21 + 44)]);
  sub_1E47ED570(a1, v24, v25, v12);
  sub_1E4773850(v19, v17, &qword_1ECF7CEB0, &qword_1E487FA30);
  sub_1E4773850(v12, v10, &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E4773850(v17, a4, &qword_1ECF7CEB0, &qword_1E487FA30);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CEC0, &qword_1E487FA40);
  sub_1E4773850(v10, a4 + *(v22 + 48), &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E47738B8(v12, &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E47738B8(v19, &qword_1ECF7CEB0, &qword_1E487FA30);
  sub_1E47738B8(v10, &qword_1ECF7CEA8, &qword_1E487FA28);
  sub_1E47738B8(v17, &qword_1ECF7CEB0, &qword_1E487FA30);
}

uint64_t sub_1E47EF9D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF18, &qword_1E487FAA8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE38, &qword_1E487F9B8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47ECAAC(a1, v16);
  sub_1E487883C();
  v17 = *(a1 + 56);
  sub_1E487889C();
  sub_1E4877BCC();
  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0) + 36)];
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  *(v18 + 2) = v29;
  v20 = *(a1 + 64);
  v21 = &v9[*(v3 + 36)];
  *v21 = 0;
  *(v21 + 1) = v20;
  sub_1E4773850(v16, v14, &qword_1ECF7CE38, &qword_1E487F9B8);
  sub_1E4773850(v9, v7, &qword_1ECF7CF18, &qword_1E487FAA8);
  v22 = v26;
  sub_1E4773850(v14, v26, &qword_1ECF7CE38, &qword_1E487F9B8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF28, &qword_1E487FAB8);
  sub_1E4773850(v7, v22 + *(v23 + 48), &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v9, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v16, &qword_1ECF7CE38, &qword_1E487F9B8);
  sub_1E47738B8(v7, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v14, &qword_1ECF7CE38, &qword_1E487F9B8);
}

uint64_t sub_1E47EFCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v81 = a2;
  v78 = a5;
  v79 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF60, &qword_1E487FB58);
  v6 = *(*(v72 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF68, &qword_1E487FB60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF18, &qword_1E487FAA8);
  v15 = *(*(v67 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v67);
  v71 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF70, &qword_1E487FB68);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v69 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF78, &qword_1E487FB70);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v75 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v66 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF80, &qword_1E487FB78);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v74 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v82 = (&v66 - v35);
  sub_1E4878D2C();
  v73 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = v79;
  v37 = *(v79 + 72);
  v38 = sub_1E4877F6C();
  v39 = v82;
  *v82 = v38;
  v39[1] = v37;
  *(v39 + 16) = 0;
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF88, &qword_1E487FB80) + 44);
  v41 = v36;
  sub_1E47F040C(v36, v40);
  v80 = v30;
  if (a4)
  {
    sub_1E47ED570(v36, v68, a4, v24);
    v42 = *(v36 + 128);
    v43 = &v24[*(v19 + 36)];
    *v43 = 0;
    *(v43 + 1) = v42;
    v44 = v70;
    sub_1E487883C();
    v45 = *(v41 + 56);
    sub_1E487889C();
    sub_1E4877BCC();
    v46 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0) + 36));
    v47 = v84;
    *v46 = v83;
    v46[1] = v47;
    v46[2] = v85;
    v48 = *(v41 + 64);
    v49 = (v44 + *(v67 + 36));
    *v49 = 0;
    v49[1] = v48;
    v50 = v69;
    sub_1E4773850(v24, v69, &qword_1ECF7CF70, &qword_1E487FB68);
    v68 = v11;
    v67 = v10;
    v51 = v71;
    sub_1E4773850(v44, v71, &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E4773850(v50, v14, &qword_1ECF7CF70, &qword_1E487FB68);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF98, &qword_1E487FB90);
    sub_1E4773850(v51, &v14[*(v52 + 48)], &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E47738B8(v44, &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E47738B8(v24, &qword_1ECF7CF70, &qword_1E487FB68);
    v53 = v51;
    v41 = v79;
    v30 = v80;
    v10 = v67;
    v11 = v68;
    sub_1E47738B8(v53, &qword_1ECF7CF18, &qword_1E487FAA8);
    sub_1E47738B8(v50, &qword_1ECF7CF70, &qword_1E487FB68);
    sub_1E477372C(v14, v30, &qword_1ECF7CF68, &qword_1E487FB60);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  (*(v11 + 56))(v30, v54, 1, v10);
  v55 = v30;
  v56 = v76;
  sub_1E47ECAAC(v41, v76);
  v57 = *(v41 + 40);
  v58 = (v56 + *(v72 + 36));
  *v58 = 0;
  v58[1] = v57;
  v59 = v82;
  v60 = v74;
  sub_1E4773850(v82, v74, &qword_1ECF7CF80, &qword_1E487FB78);
  v61 = v75;
  sub_1E4773850(v55, v75, &qword_1ECF7CF78, &qword_1E487FB70);
  v62 = v77;
  sub_1E4773850(v56, v77, &qword_1ECF7CF60, &qword_1E487FB58);
  v63 = v78;
  sub_1E4773850(v60, v78, &qword_1ECF7CF80, &qword_1E487FB78);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF90, &qword_1E487FB88);
  sub_1E4773850(v61, v63 + *(v64 + 48), &qword_1ECF7CF78, &qword_1E487FB70);
  sub_1E4773850(v62, v63 + *(v64 + 64), &qword_1ECF7CF60, &qword_1E487FB58);
  sub_1E47738B8(v56, &qword_1ECF7CF60, &qword_1E487FB58);
  sub_1E47738B8(v80, &qword_1ECF7CF78, &qword_1E487FB70);
  sub_1E47738B8(v59, &qword_1ECF7CF80, &qword_1E487FB78);
  sub_1E47738B8(v62, &qword_1ECF7CF60, &qword_1E487FB58);
  sub_1E47738B8(v61, &qword_1ECF7CF78, &qword_1E487FB70);
  sub_1E47738B8(v60, &qword_1ECF7CF80, &qword_1E487FB78);
}

uint64_t sub_1E47F040C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF18, &qword_1E487FAA8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CE20, &qword_1E487F9A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47EDEA8(a1, v16);
  sub_1E487883C();
  v17 = *(a1 + 56);
  sub_1E487889C();
  sub_1E4877BCC();
  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0) + 36)];
  v19 = v28;
  *v18 = v27;
  *(v18 + 1) = v19;
  *(v18 + 2) = v29;
  v20 = *(a1 + 64);
  v21 = &v9[*(v3 + 36)];
  *v21 = 0;
  *(v21 + 1) = v20;
  sub_1E4773850(v16, v14, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E4773850(v9, v7, &qword_1ECF7CF18, &qword_1E487FAA8);
  v22 = v26;
  sub_1E4773850(v14, v26, &qword_1ECF7CE20, &qword_1E487F9A0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA0, &qword_1E487FB98);
  sub_1E4773850(v7, v22 + *(v23 + 48), &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v9, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v16, &qword_1ECF7CE20, &qword_1E487F9A0);
  sub_1E47738B8(v7, &qword_1ECF7CF18, &qword_1E487FAA8);
  sub_1E47738B8(v14, &qword_1ECF7CE20, &qword_1E487F9A0);
}

uint64_t sub_1E47F06F8(uint64_t a1)
{
  v2 = sub_1E4877D0C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877DFC();
}

uint64_t sub_1E47F07C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D3>)
{
  v210 = a3;
  v211 = a2;
  v214 = a1;
  v207 = a4;
  v10 = sub_1E487757C();
  v187 = *(v10 - 8);
  v188 = v10;
  v11 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v186 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v190 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v189 = &v181 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v181 - v19;
  v197 = sub_1E487751C();
  v199 = *(v197 - 8);
  v20 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E487739C();
  v23 = *(v22 - 8);
  v205 = v22;
  v206 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB0, &qword_1E487FBA8);
  v26 = *(*(v204 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v204);
  v200 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v191 = &v181 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v203 = &v181 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v194 = (&v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v201 = &v181 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v185 = &v181 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v195 = &v181 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v202 = &v181 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v198 = &v181 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB8, &qword_1E487FBB0);
  v46 = (v45 - 8);
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v181 - v48;
  v50 = sub_1E48782AC();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v181 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD38, &qword_1E48827C0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = &v181 - v57;
  sub_1E487826C();
  v59 = sub_1E487821C();
  v60 = *(v59 - 8);
  v182 = *(v60 + 56);
  v183 = v59;
  v181 = v60 + 56;
  v182(v58, 1, 1);
  v208 = sub_1E487828C();
  v184 = v58;
  sub_1E47738B8(v58, &qword_1ECF7BD38, &qword_1E48827C0);
  sub_1E48782DC();
  (*(v51 + 104))(v54, *MEMORY[0x1E6980EA0], v50);
  sub_1E48782CC();

  (*(v51 + 8))(v54, v50);
  v209 = sub_1E48781FC();

  sub_1E48782DC();
  sub_1E487827C();
  v213 = sub_1E487829C();

  v61 = _AXSPrefersHorizontalTextLayout();
  v62 = sub_1E4877A5C();
  v64 = v63;
  v65 = v63 != 0;
  v66 = v49;
  v67 = &v49[v46[14]];
  v68 = v46[18];
  v69 = v46[22];
  sub_1E4773850(v214, v66, &qword_1ECF7CDD8, &qword_1E487F920);
  v212 = v62;
  *v67 = v62;
  v67[1] = v64;
  v70 = v66;
  *(v66 + v68) = v61 != 0;
  *(v66 + v69) = v65;
  if (v64)
  {

    v71 = v213;
    if (!v61)
    {
      v72 = v201;
      sub_1E487738C();
      v73 = v205;
      v74 = v206;
      (*(v206 + 56))(v72, 0, 1, v205);
      v75 = *(v204 + 48);
      v76 = v200;
      sub_1E4773850(v72, v200, &qword_1ECF7CDD8, &qword_1E487F920);
      sub_1E4773850(v70, v76 + v75, &qword_1ECF7CDD8, &qword_1E487F920);
      v77 = *(v74 + 48);
      if (v77(v76, 1, v73) == 1)
      {
        sub_1E47738B8(v72, &qword_1ECF7CDD8, &qword_1E487F920);
        v78 = v77(v76 + v75, 1, v73);
        v71 = v213;
        if (v78 == 1)
        {
          sub_1E47738B8(v76, &qword_1ECF7CDD8, &qword_1E487F920);
          goto LABEL_24;
        }

        goto LABEL_13;
      }

      v99 = v194;
      sub_1E4773850(v76, v194, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v77(v76 + v75, 1, v73) == 1)
      {
        sub_1E47738B8(v201, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v206 + 8))(v99, v73);
        v71 = v213;
LABEL_13:
        sub_1E47738B8(v76, &qword_1ECF7CFB0, &qword_1E487FBA8);
        goto LABEL_14;
      }

      v117 = v76;
      v118 = v206;
      v119 = v193;
      (*(v206 + 32))(v193, v117 + v75, v73);
      sub_1E47F2C98(&qword_1EE2B4650, MEMORY[0x1E6969610]);
      LODWORD(v204) = sub_1E4878AFC();
      v120 = *(v118 + 8);
      v120(v119, v73);
      sub_1E47738B8(v201, &qword_1ECF7CDD8, &qword_1E487F920);
      v120(v99, v73);
      sub_1E47738B8(v117, &qword_1ECF7CDD8, &qword_1E487F920);
      v71 = v213;
      if (v204)
      {
LABEL_24:
        if (v212 == 0x6573656E696863 && v64 == 0xE700000000000000 || (sub_1E48790EC() & 1) != 0)
        {
          v201 = v64;

          v90 = 3.0;
          goto LABEL_32;
        }
      }
    }

LABEL_14:
    v100 = sub_1E487732C();
    (*(*(v100 - 8) + 8))(v210, v100);
    v101 = sub_1E487753C();
    (*(*(v101 - 8) + 8))(v211, v101);
    sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);

    sub_1E47738B8(v70, &qword_1ECF7CDD8, &qword_1E487F920);
    v83 = 0;
    v84 = 0;
    v90 = 4.0;
    v87 = 0xE200000000000000;
    v85 = 0.0;
    v88 = 17733;
    v86 = 0;
    v89 = 0.0;
    v91 = 4.0;
    goto LABEL_15;
  }

  v80 = v202;
  v79 = v203;
  v71 = v213;
  if (v61)
  {
LABEL_7:
    v81 = sub_1E487732C();
    (*(*(v81 - 8) + 8))(v210, v81);
    v82 = sub_1E487753C();
    (*(*(v82 - 8) + 8))(v211, v82);
    sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E47738B8(v70, &qword_1ECF7CFB8, &qword_1E487FBB0);
    v83 = 0;
    v84 = 0;
    v85 = 0.0;
    v86 = 0;
    v87 = 0xE400000000000000;
    v88 = 1162167621;
    a7 = 0.0;
    v89 = 0.0;
    v90 = 0.0;
    v91 = 0.0;
LABEL_15:
    v102 = 0;
    v103 = 0.0;
    v104 = v207;
    v105 = v208;
    v106 = v209;
    goto LABEL_16;
  }

  v201 = 0;
  v92 = v198;
  sub_1E487738C();
  v94 = v205;
  v93 = v206;
  v95 = *(v206 + 56);
  v200 = v206 + 56;
  v194 = v95;
  (v95)(v92, 0, 1, v205);
  v96 = *(v204 + 48);
  sub_1E4773850(v92, v79, &qword_1ECF7CDD8, &qword_1E487F920);
  v97 = v79;
  sub_1E4773850(v70, v79 + v96, &qword_1ECF7CDD8, &qword_1E487F920);
  v98 = *(v93 + 48);
  if (v98(v97, 1, v94) == 1)
  {
    sub_1E47738B8(v92, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v98(v97 + v96, 1, v94) == 1)
    {
      sub_1E47738B8(v97, &qword_1ECF7CDD8, &qword_1E487F920);
      v90 = 4.0;
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  sub_1E4773850(v97, v80, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v98(v97 + v96, 1, v94) == 1)
  {
    sub_1E47738B8(v198, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v206 + 8))(v80, v94);
LABEL_19:
    sub_1E47738B8(v97, &qword_1ECF7CFB0, &qword_1E487FBA8);
    goto LABEL_20;
  }

  v124 = v80;
  v125 = v206;
  v126 = v97 + v96;
  v127 = v193;
  (*(v206 + 32))(v193, v126, v94);
  sub_1E47F2C98(&qword_1EE2B4650, MEMORY[0x1E6969610]);
  v128 = sub_1E4878AFC();
  v129 = *(v125 + 8);
  v129(v127, v205);
  sub_1E47738B8(v198, &qword_1ECF7CDD8, &qword_1E487F920);
  v129(v124, v205);
  v94 = v205;
  sub_1E47738B8(v203, &qword_1ECF7CDD8, &qword_1E487F920);
  v90 = 4.0;
  if ((v128 & 1) == 0)
  {
LABEL_20:
    v112 = v195;
    sub_1E487738C();
    (v194)(v112, 0, 1, v94);
    v113 = *(v204 + 48);
    v114 = v191;
    sub_1E4773850(v112, v191, &qword_1ECF7CDD8, &qword_1E487F920);
    v115 = v114;
    sub_1E4773850(v70, v114 + v113, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v98(v114, 1, v94) == 1)
    {
      sub_1E47738B8(v112, &qword_1ECF7CDD8, &qword_1E487F920);
      v116 = v98(v114 + v113, 1, v94);
      v71 = v213;
      v64 = v201;
      if (v116 == 1)
      {
        sub_1E47738B8(v115, &qword_1ECF7CDD8, &qword_1E487F920);
        goto LABEL_49;
      }
    }

    else
    {
      v121 = v114;
      v122 = v185;
      sub_1E4773850(v121, v185, &qword_1ECF7CDD8, &qword_1E487F920);
      v123 = v98(v115 + v113, 1, v94);
      v71 = v213;
      if (v123 != 1)
      {
        v170 = v206;
        v171 = v193;
        (*(v206 + 32))(v193, v115 + v113, v94);
        sub_1E47F2C98(&qword_1EE2B4650, MEMORY[0x1E6969610]);
        v172 = sub_1E4878AFC();
        v173 = *(v170 + 8);
        v173(v171, v94);
        sub_1E47738B8(v195, &qword_1ECF7CDD8, &qword_1E487F920);
        v173(v122, v94);
        sub_1E47738B8(v191, &qword_1ECF7CDD8, &qword_1E487F920);
        v64 = v201;
        if ((v172 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_49:
        sub_1E487826C();
        v83 = 1;
        v174 = v184;
        (v182)(v184, 1, 1, v183);
        v175 = sub_1E487828C();
        sub_1E47738B8(v174, &qword_1ECF7BD38, &qword_1E48827C0);

        sub_1E48782DC();
        sub_1E487827C();
        v176 = sub_1E487829C();

        v177 = sub_1E487732C();
        (*(*(v177 - 8) + 8))(v210, v177);
        v178 = sub_1E487753C();
        (*(*(v178 - 8) + 8))(v211, v178);
        sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);

        sub_1E47738B8(v70, &qword_1ECF7CDD8, &qword_1E487F920);
        v84 = 0;
        v102 = 0;
        v90 = 4.0;
        v89 = -1.0;
        v87 = 0xE400000000000000;
        v85 = -1.5;
        v86 = 0x3FF6666666666666;
        v88 = 1162167621;
        v106 = v176;
        v105 = v175;
        a7 = a6;
        v91 = 4.0;
        v103 = 0.0;
        v104 = v207;
        goto LABEL_16;
      }

      sub_1E47738B8(v195, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v206 + 8))(v122, v94);
      v64 = v201;
    }

    sub_1E47738B8(v115, &qword_1ECF7CFB0, &qword_1E487FBA8);
    goto LABEL_7;
  }

LABEL_32:
  sub_1E47738B8(v70, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E48781AC();
  sub_1E487826C();
  v105 = sub_1E487829C();

  sub_1E48782DC();
  sub_1E487827C();
  v208 = sub_1E487829C();

  v209 = sub_1E481E288(&unk_1F5E7B248);
  v130 = *MEMORY[0x1E6969AB0];
  v131 = v199;
  v133 = v196;
  v132 = v197;
  v205 = *(v199 + 104);
  v205(v196, v130, v197);
  v134 = v210;
  v135 = sub_1E487752C();
  v138 = *(v131 + 8);
  v136 = v131 + 8;
  v137 = v138;
  v138(v133, v132);
  result = v135 - 1;
  if (!__OFSUB__(v135, 1))
  {
    v64 = v201;
    if (v201)
    {
      v204 = v135 - 1;
      v206 = v105;
      v139 = objc_opt_self();
      v140 = v64;
      v141 = sub_1E4878B9C();
      v142 = v186;
      sub_1E487750C();
      v143 = sub_1E487756C();
      (*(v187 + 8))(v142, v188);
      v144 = [v139 overlayCalendarForCalendarIdentifier:v141 timezone:v143];

      v199 = v136;
      if (v144)
      {
        v145 = v189;
        sub_1E487749C();

        v146 = 0;
        v147 = v192;
      }

      else
      {
        v146 = 1;
        v147 = v192;
        v145 = v189;
      }

      v105 = v206;
      v155 = sub_1E487753C();
      v156 = *(v155 - 8);
      (*(v156 + 56))(v145, v146, 1, v155);
      sub_1E47F2A10(v145, v147);
      v157 = v190;
      sub_1E4773850(v147, v190, &qword_1ECF7CFA8, &qword_1E487FBA0);
      v158 = v147;
      v64 = v140;
      if ((*(v156 + 48))(v157, 1, v155) == 1)
      {

        v159 = sub_1E487732C();
        (*(*(v159 - 8) + 8))(v210, v159);
        (*(v156 + 8))(v211, v155);
        sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E47738B8(v158, &qword_1ECF7CFA8, &qword_1E487FBA0);
        sub_1E47738B8(v157, &qword_1ECF7CFA8, &qword_1E487FBA0);
        v91 = 4.0;
        v89 = -2.0;
        v83 = 1;
        v87 = 0xE200000000000000;
        v85 = -0.5;
        v86 = 0x4006666666666666;
        v88 = 17733;
        v106 = v208;
      }

      else
      {
        v161 = v196;
        v160 = v197;
        v205(v196, *MEMORY[0x1E6969A48], v197);
        v162 = v210;
        v163 = v157;
        v164 = sub_1E487752C();
        v137(v161, v160);
        v165 = *(v156 + 8);
        v165(v163, v155);
        if (v204 == v164 % 10)
        {
          v166 = v209;
          v71 = v213;
          if (*(v209 + 16) && (v167 = sub_1E481DD30(v204), (v168 & 1) != 0))
          {
            v85 = *(*(v166 + 56) + 8 * v167);
            v169 = sub_1E487732C();
            (*(*(v169 - 8) + 8))(v162, v169);
            v165(v211, v155);
            sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);
            sub_1E47738B8(v192, &qword_1ECF7CFA8, &qword_1E487FBA0);

            v91 = 4.0;
            v83 = 1;
            v87 = 0xE200000000000000;
            v89 = -2.0;
            v86 = 0x4006666666666666;
            v88 = 17733;
            v104 = v207;
            v106 = v208;
            v105 = v206;
            a7 = a5;
            v102 = 0x4006666666666666;
            v84 = 1;
            v103 = v85;
          }

          else
          {

            v180 = sub_1E487732C();
            (*(*(v180 - 8) + 8))(v162, v180);
            v165(v211, v155);
            sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);
            sub_1E47738B8(v192, &qword_1ECF7CFA8, &qword_1E487FBA0);
            v91 = 4.0;
            v89 = -2.0;
            v83 = 1;
            v87 = 0xE200000000000000;
            v85 = -0.5;
            v86 = 0x4006666666666666;
            v88 = 17733;
            v104 = v207;
            v106 = v208;
            v105 = v206;
            a7 = a5;
            v102 = 0x4006666666666666;
            v84 = 1;
            v103 = -0.5;
          }

          goto LABEL_16;
        }

        v179 = sub_1E487732C();
        (*(*(v179 - 8) + 8))(v162, v179);
        v165(v211, v155);
        sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E47738B8(v192, &qword_1ECF7CFA8, &qword_1E487FBA0);
        v91 = 4.0;
        v89 = -2.0;
        v83 = 1;
        v87 = 0xE200000000000000;
        v85 = -0.5;
        v86 = 0x4006666666666666;
        v88 = 17733;
        v106 = v208;
        v105 = v206;
      }

      a7 = a5;
      v102 = 0x4006666666666666;
      v84 = 1;
      v103 = -0.5;
    }

    else
    {
      v148 = v209;
      if (*(v209 + 16) && (v149 = sub_1E481DD30(result), (v150 & 1) != 0))
      {
        v85 = *(*(v148 + 56) + 8 * v149);
        v151 = sub_1E487732C();
        (*(*(v151 - 8) + 8))(v134, v151);
        v152 = sub_1E487753C();
        (*(*(v152 - 8) + 8))(v211, v152);
        sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);

        v103 = 0.0;
        v91 = 4.0;
        v83 = 1;
        v87 = 0xE200000000000000;
        v86 = 0x4006666666666666;
        v88 = 17733;
        v106 = v208;
        v89 = -2.0;
      }

      else
      {

        v153 = sub_1E487732C();
        (*(*(v153 - 8) + 8))(v134, v153);
        v154 = sub_1E487753C();
        (*(*(v154 - 8) + 8))(v211, v154);
        sub_1E47738B8(v214, &qword_1ECF7CDD8, &qword_1E487F920);
        v103 = 0.0;
        v91 = 4.0;
        v89 = -2.0;
        v83 = 1;
        v87 = 0xE200000000000000;
        v86 = 0x4006666666666666;
        v88 = 17733;
        v106 = v208;
        v85 = -0.5;
      }

      a7 = a5;
      v102 = 0x4006666666666666;
      v84 = 1;
    }

    v104 = v207;
    v71 = v213;
LABEL_16:
    LOBYTE(v216) = v83;
    *(&v216 + 1) = v245[0];
    DWORD1(v216) = *(v245 + 3);
    *(&v216 + 1) = v105;
    *&v217 = v106;
    *(&v217 + 1) = v88;
    *&v218 = v87;
    *(&v218 + 1) = v85;
    *&v219 = v86;
    *(&v219 + 1) = a7;
    *&v220 = v89;
    *(&v220 + 1) = v90;
    *&v221 = v91;
    *(&v221 + 1) = v212;
    *&v222 = v64;
    *(&v222 + 1) = v71;
    *&v223 = v102;
    BYTE8(v223) = v84;
    *(&v223 + 9) = *v244;
    HIDWORD(v223) = *&v244[3];
    v224 = v103;
    v225 = v83;
    *v226 = v245[0];
    *&v226[3] = *(v245 + 3);
    v227 = v105;
    v228 = v106;
    v229 = v88;
    v230 = v87;
    v231 = v85;
    v232 = v86;
    v233 = a7;
    v234 = v89;
    v235 = v90;
    v236 = v91;
    v237 = v212;
    v238 = v64;
    v239 = v71;
    v240 = v102;
    v241 = v84;
    *&v242[3] = *&v244[3];
    *v242 = *v244;
    v243 = v103;
    sub_1E47F29D8(&v216, &v215);
    result = sub_1E47F2274(&v225);
    v108 = v223;
    *(v104 + 96) = v222;
    *(v104 + 112) = v108;
    *(v104 + 128) = v224;
    v109 = v219;
    *(v104 + 32) = v218;
    *(v104 + 48) = v109;
    v110 = v221;
    *(v104 + 64) = v220;
    *(v104 + 80) = v110;
    v111 = v217;
    *v104 = v216;
    *(v104 + 16) = v111;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47F22A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E47F22F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E47F2344()
{
  result = qword_1EE2B11E0;
  if (!qword_1EE2B11E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE38, &qword_1E487F9B8);
    sub_1E47F23D0();
    sub_1E47F256C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11E0);
  }

  return result;
}

unint64_t sub_1E47F23D0()
{
  result = qword_1EE2B1350;
  if (!qword_1EE2B1350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE48, &qword_1E487F9C8);
    sub_1E47F2488();
    sub_1E4773680(&qword_1EE2B1278, &qword_1ECF7CE68, &qword_1E487F9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1350);
  }

  return result;
}

unint64_t sub_1E47F2488()
{
  result = qword_1EE2B1468;
  if (!qword_1EE2B1468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE50, &qword_1E487F9D0);
    sub_1E4773680(&qword_1EE2B0F50, &qword_1ECF7CE58, &qword_1E487F9D8);
    sub_1E4773680(&qword_1EE2B1108, &qword_1ECF7CE60, &qword_1E487F9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1468);
  }

  return result;
}

unint64_t sub_1E47F256C()
{
  result = qword_1EE2B13F8;
  if (!qword_1EE2B13F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE70, &qword_1E487F9F0);
    sub_1E47F2624();
    sub_1E4773680(&qword_1EE2B10B8, &qword_1ECF7CE90, &qword_1E487FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13F8);
  }

  return result;
}

unint64_t sub_1E47F2624()
{
  result = qword_1EE2B1558;
  if (!qword_1EE2B1558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE78, &qword_1E487F9F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE80, &qword_1E487FA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CE88, &qword_1E487FA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E477A490();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1558);
  }

  return result;
}

unint64_t sub_1E47F276C()
{
  result = qword_1ECF7CF00;
  if (!qword_1ECF7CF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CEF0, &qword_1E487FA70);
    sub_1E47F2824();
    sub_1E4773680(&qword_1EE2B1278, &qword_1ECF7CE68, &qword_1E487F9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CF00);
  }

  return result;
}

unint64_t sub_1E47F2824()
{
  result = qword_1ECF7CF08;
  if (!qword_1ECF7CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CEE8, &qword_1E487FA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CED8, &qword_1E487FA58);
    sub_1E4773680(&qword_1ECF7CEF8, &qword_1ECF7CED8, &qword_1E487FA58);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B1108, &qword_1ECF7CE60, &qword_1E487F9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CF08);
  }

  return result;
}

unint64_t sub_1E47F294C()
{
  result = qword_1ECF7CF10;
  if (!qword_1ECF7CF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CEC8, &qword_1E487FA48);
    sub_1E47F276C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CF10);
  }

  return result;
}

uint64_t sub_1E47F2A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1E47F2AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1E47F2AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E47F2B6C()
{
  result = qword_1EE2B1520;
  if (!qword_1EE2B1520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CDD0, &qword_1E487F918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CDC0, &qword_1E487F908);
    sub_1E4773680(&qword_1EE2B0FA0, &qword_1ECF7CDC0, &qword_1E487F908);
    swift_getOpaqueTypeConformance2();
    sub_1E47F2C98(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1520);
  }

  return result;
}

uint64_t sub_1E47F2C98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E47F2CF4()
{
  result = qword_1ECF7CFC0;
  if (!qword_1ECF7CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7CFC0);
  }

  return result;
}

uint64_t type metadata accessor for DayEvents()
{
  result = qword_1EE2B47A0;
  if (!qword_1EE2B47A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47F2DBC()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47F2E50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E47F2E50()
{
  if (!qword_1EE2B0DE0)
  {
    type metadata accessor for Event();
    v0 = sub_1E4878CFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B0DE0);
    }
  }
}

uint64_t sub_1E47F2EA8()
{
  v1 = v0;
  v2 = type metadata accessor for DayEvents();
  v3 = v2;
  v4 = *(v0 + *(v2 + 20));
  if (*(v4 + 16) || *(*(v0 + *(v2 + 24)) + 16))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E4878F9C();
    v33 = 0;
    v34 = 0xE000000000000000;
    v32 = v3;
    v5 = __swift_allocate_boxed_opaque_existential_0(&v30);
    sub_1E47F3A28(v0, v5, type metadata accessor for DayEvents);
    __swift_project_boxed_opaque_existential_0(&v30, v32);
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    v6 = sub_1E4878BFC();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    MEMORY[0x1E69192D0](v6, v8);

    MEMORY[0x1E69192D0](0x5B20796164203ALL, 0xE700000000000000);
    if (qword_1EE2B1880 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE2B1888;
    v10 = sub_1E48772BC();
    v11 = [v9 stringFromDate_];

    v12 = sub_1E4878BDC();
    v14 = v13;

    MEMORY[0x1E69192D0](v12, v14);

    MEMORY[0x1E69192D0](1528835165, 0xE400000000000000);
    v30 = *(v4 + 16);
    v15 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v15);

    MEMORY[0x1E69192D0](0x73746E657665205DLL, 0xEB000000005B202CLL);
    v30 = *(*(v1 + *(v3 + 24)) + 16);
    v16 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v16);

    MEMORY[0x1E69192D0](0xD00000000000002ALL, 0x80000001E48A81D0);
    if (*(v1 + *(v3 + 28)))
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (*(v1 + *(v3 + 28)))
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E4878F9C();
    v33 = 0;
    v34 = 0xE000000000000000;
    v32 = v3;
    v20 = __swift_allocate_boxed_opaque_existential_0(&v30);
    sub_1E47F3A28(v0, v20, type metadata accessor for DayEvents);
    __swift_project_boxed_opaque_existential_0(&v30, v32);
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    v21 = sub_1E4878BFC();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    MEMORY[0x1E69192D0](v21, v23);

    MEMORY[0x1E69192D0](0x5B20796164203ALL, 0xE700000000000000);
    if (qword_1EE2B1880 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE2B1888;
    v25 = sub_1E48772BC();
    v26 = [v24 stringFromDate_];

    v27 = sub_1E4878BDC();
    v29 = v28;

    MEMORY[0x1E69192D0](v27, v29);

    MEMORY[0x1E69192D0](0xD000000000000026, 0x80000001E48A8200);
    if (*(v1 + *(v3 + 28)))
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (*(v1 + *(v3 + 28)))
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }
  }

  MEMORY[0x1E69192D0](v17, v18);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  return v33;
}

uint64_t sub_1E47F3320(int *a1)
{
  sub_1E487914C();
  sub_1E487732C();
  sub_1E47F35A0(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  sub_1E4878AAC();
  sub_1E47F3784(v5, *(v1 + a1[5]));
  sub_1E47F3784(v5, *(v1 + a1[6]));
  v3 = *(v1 + a1[7]);
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E47F33E4(uint64_t a1, int *a2)
{
  sub_1E487732C();
  sub_1E47F35A0(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  sub_1E4878AAC();
  sub_1E47F3784(a1, *(v2 + a2[5]));
  sub_1E47F3784(a1, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);
  return sub_1E487916C();
}

uint64_t sub_1E47F3490(uint64_t a1, int *a2)
{
  sub_1E487914C();
  sub_1E487732C();
  sub_1E47F35A0(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  sub_1E4878AAC();
  sub_1E47F3784(v6, *(v2 + a2[5]));
  sub_1E47F3784(v6, *(v2 + a2[6]));
  v4 = *(v2 + a2[7]);
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E47F35A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47F35E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v19 - v10);
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
        sub_1E47F3A28(v14, v11, type metadata accessor for Event);
        sub_1E47F3A28(v15, v8, type metadata accessor for Event);
        v17 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_1E47710AC(v8);
        sub_1E47710AC(v11);
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

uint64_t sub_1E47F3784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - v6;
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v26[1] = a1;
  result = MEMORY[0x1E6919800](v13);
  if (v13)
  {
    v26[0] = *(v8 + 44);
    v15 = *(v8 + 52);
    v16 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    do
    {
      sub_1E47F3A28(v16, v12, type metadata accessor for Event);
      v26[2] = 0;
      v26[3] = 0xE000000000000000;
      sub_1E4771108(&v12[v26[0]], v7);
      v22 = sub_1E487725C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v7, 1, v22) == 1)
      {
        sub_1E479D2F4(v7);
        v18 = 0;
        v19 = 0xE000000000000000;
      }

      else
      {
        v24 = sub_1E487723C();
        v19 = v25;
        (*(v23 + 8))(v7, v22);
        v18 = v24;
      }

      MEMORY[0x1E69192D0](v18, v19);

      MEMORY[0x1E69192D0](45, 0xE100000000000000);
      if (v12[v15])
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v12[v15])
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      MEMORY[0x1E69192D0](v20, v21);

      sub_1E4878C0C();

      result = sub_1E47710AC(v12);
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1E47F3A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47F3A90(uint64_t a1, uint64_t a2)
{
  if (sub_1E48772EC() & 1) != 0 && (v4 = type metadata accessor for DayEvents(), (sub_1E47F35E8(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_1E47F35E8(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1E47F3BC4(double a1, double a2)
{
  v4 = sub_1E487757C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487732C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v28 - v16;
  v18 = *(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v19 = *(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v20 = __OFSUB__(v18, v19);
  v21 = v18 - v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v28 = v15;
    v29 = result;
    v22 = a2 * 86400.0 / (*(v2 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24) / v21 * 24.0);
    sub_1E48772AC();
    sub_1E487750C();
    v23 = sub_1E487754C();
    v24 = *(v5 + 8);
    v24(v8, v4);
    sub_1E487750C();
    v25 = sub_1E487754C();
    result = (v24)(v8, v4);
    if (!__OFSUB__(v23, v25))
    {
      sub_1E48772AC();
      sub_1E487727C();
      v26 = v29;
      v27 = *(v28 + 8);
      v27(v13, v29);
      return (v27)(v17, v26);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47F3EA0()
{
  v1 = v0;
  v2 = sub_1E48770FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487757C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E487732C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v19 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v20 = __OFSUB__(v18, v19);
  v21 = v18 - v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_7;
  }

  v35 = v21;
  v36 = v15;
  v37 = result;
  v38 = v3;
  v39 = v2;
  v40 = v6;
  v22 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24);
  sub_1E487726C();
  sub_1E487750C();
  v23 = sub_1E487754C();
  v24 = *(v8 + 8);
  v24(v11, v7);
  sub_1E487750C();
  v25 = sub_1E487754C();
  result = (v24)(v11, v7);
  v20 = __OFSUB__(v23, v25);
  v26 = v23 - v25;
  if (v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v27 = sub_1E487751C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E487A7E0;
  (*(v28 + 104))(v31 + v30, *MEMORY[0x1E6969A98], v27);
  sub_1E486B81C(v31);
  swift_setDeallocating();
  (*(v28 + 8))(v31 + v30, v27);
  swift_deallocClassInstance();
  v32 = v40;
  sub_1E487746C();

  result = sub_1E48770DC();
  if (v33)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v34 = result;
  (*(v38 + 8))(v32, v39);
  result = (*(v36 + 8))(v17, v37);
  if (__OFSUB__(v34, v26))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1E47F4470()
{
  result = sub_1E487732C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1E487753C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double sub_1E47F4B30()
{
  v1 = v0;
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate);
  v8 = v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v9 = v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v10 = v9 + *(type metadata accessor for Event() + 20);
  sub_1E47A7308();
  if (sub_1E4878ADC())
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  (*(v3 + 16))(v6, v11, v2);
  sub_1E487727C();
  (*(v3 + 8))(v6, v2);
  sub_1E47F3EA0();
  v13 = v12 - CGRectGetMinY(*(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame));
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  return *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_lineHeight) + v13;
}

uint64_t sub_1E47F4E00()
{
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1E4878F9C();
  v15 = v13;
  *(&v14 + 1) = type metadata accessor for SpatialEventViewModel(0);
  *&v13 = v0;
  __swift_project_boxed_opaque_existential_0(&v13, *(&v14 + 1));
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v1 = v0;
  v2 = sub_1E4878BFC();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  MEMORY[0x1E69192D0](v2, v4);

  MEMORY[0x1E69192D0](2108704, 0xE300000000000000);
  v5 = sub_1E47CC708();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A86E0);
  v6 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight];
  v7 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v7);

  MEMORY[0x1E69192D0](0xD000000000000011, 0x80000001E48A8700);
  v8 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight];
  v9 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v9);

  MEMORY[0x1E69192D0](0x646567617473202CLL, 0xEF203A656D617246);
  v13 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  v14 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame + 16];
  type metadata accessor for CGRect(0);
  sub_1E487902C();
  MEMORY[0x1E69192D0](0x6548656E696C202CLL, 0xEE00203A74686769);
  v10 = *&v1[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_lineHeight];
  v11 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v11);

  return v15;
}

id sub_1E47F5088(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E47F51D0()
{
  result = type metadata accessor for Event();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1E487732C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeSpatialContentView()
{
  result = qword_1EE2B2470;
  if (!qword_1EE2B2470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E47F5378()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for LargeSpatialContentView() + 28);
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

uint64_t sub_1E47F54D0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for LargeSpatialContentView() + 32));
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

uint64_t sub_1E47F5620@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MultiDaySpatialView(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC00, &qword_1E487B5C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = sub_1E487732C();
  (*(*(v12 - 8) + 16))(v7, v1, v12);
  v13 = *(v1 + *(type metadata accessor for LargeSpatialContentView() + 20));
  *&v7[v4[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v7[v4[7]] = v13;
  *&v7[v4[8]] = 2;
  v7[v4[9]] = 0;
  v15 = &v7[v4[11]];
  *v15 = KeyPath;
  v15[8] = 0;

  v16 = sub_1E487813C();
  if (sub_1E47F5378())
  {
    v17 = *(sub_1E47F54D0() + 16);
  }

  sub_1E4877B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1E47836C4(v7, v11);
  v26 = &v11[*(v8 + 36)];
  *v26 = v16;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = *MEMORY[0x1E697F638];
  v28 = sub_1E4877F9C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(a1, v27, v28);
  (*(v29 + 56))(a1, 0, 1, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC08, &qword_1E487FE80);
  sub_1E4783728(v11, a1 + *(v30 + 36));
  *(a1 + *(v30 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E47F590C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E47F5954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E47F59A0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E48790EC();
  }
}

uint64_t type metadata accessor for WideTextHeaderView()
{
  result = qword_1EE2B2E80;
  if (!qword_1EE2B2E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47F5A44()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47F5B1C();
    if (v1 <= 0x3F)
    {
      sub_1E478305C();
      if (v2 <= 0x3F)
      {
        sub_1E47EBD80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E47F5B1C()
{
  if (!qword_1EE2B16B8)
  {
    sub_1E487753C();
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B16B8);
    }
  }
}

uint64_t sub_1E47F5B90@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WideTextHeaderView();
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

uint64_t sub_1E47F5D98()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for WideTextHeaderView() + 28);
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

uint64_t sub_1E47F5EF0()
{
  v1 = sub_1E4877F1C();
  v20 = *(v1 - 8);
  v21 = v1;
  v2 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v20 - v7);
  v9 = sub_1E487753C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WideTextHeaderView();
  sub_1E4773850(v0 + *(v14 + 24), v8, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v20 + 8))(v4, v21);
  }

  v17 = *(v14 + 20);
  v18 = sub_1E48774CC();
  (*(v10 + 8))(v13, v9);
  return v18 & 1;
}

uint64_t sub_1E47F6188(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v37 - v6;
  v37 = sub_1E487757C();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487753C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E47F5B90(v18);
  v20 = sub_1E487748C();
  v21 = *(v12 + 8);
  v21(v18, v11);
  [v19 setCalendar_];

  sub_1E47F5B90(v18);
  sub_1E487750C();
  v21(v18, v11);
  v22 = sub_1E487756C();
  (*(v7 + 8))(v10, v37);
  [v19 setTimeZone_];

  sub_1E47F5B90(v16);
  v23 = v38;
  sub_1E48774EC();
  v21(v16, v11);
  v24 = v23;
  v25 = sub_1E487744C();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    v27 = sub_1E48773DC();
    (*(v26 + 8))(v24, v25);
  }

  [v19 setLocale_];

  v28 = sub_1E4878B9C();
  [v19 setLocalizedDateFormatFromTemplate_];

  v29 = v3 + *(type metadata accessor for WideTextHeaderView() + 20);
  v30 = sub_1E48772BC();
  v31 = [v19 stringFromDate_];

  v32 = sub_1E4878BDC();
  v34 = v33;

  v41 = v32;
  v42 = v34;
  sub_1E477A374();
  v35 = sub_1E4878E8C();

  return v35;
}

uint64_t sub_1E47F6578(int a1)
{
  v3 = sub_1E487757C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487753C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v50 = v46 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v52 = v46 - v22;
  result = sub_1E4877A5C();
  if (v24)
  {
    v48 = a1;
    v25 = v3;
    v47 = objc_opt_self();
    v26 = sub_1E4878B9C();

    v27 = v1;
    sub_1E47F5B90(v12);
    sub_1E487750C();
    v28 = *(v9 + 8);
    v49 = v8;
    v46[0] = v28;
    v46[1] = v9 + 8;
    v28(v12, v8);
    v29 = sub_1E487756C();
    (*(v4 + 8))(v7, v25);
    v30 = [v47 overlayCalendarForCalendarIdentifier:v26 timezone:v29];

    if (v30)
    {
      sub_1E487749C();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v52;
    v33 = v49;
    (*(v9 + 56))(v21, v31, 1, v49);
    sub_1E47F2A10(v21, v32);
    v34 = v27 + *(type metadata accessor for WideTextHeaderView() + 20);
    v35 = sub_1E48772BC();
    v36 = (v9 + 48);
    if (v48)
    {
      v37 = v50;
      sub_1E4773850(v32, v50, &qword_1ECF7CFA8, &qword_1E487FBA0);
      if ((*v36)(v37, 1, v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = sub_1E487748C();
        (v46[0])(v37, v33);
      }

      v40 = [objc_opt_self() monthDayStringForDate:v35 inCalendar:v38];
    }

    else
    {
      v39 = v51;
      sub_1E4773850(v32, v51, &qword_1ECF7CFA8, &qword_1E487FBA0);
      if ((*v36)(v39, 1, v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = sub_1E487748C();
        (v46[0])(v39, v33);
      }

      v40 = [objc_opt_self() yearMonthDayStringForDate:v35 inCalendar:v38];
    }

    v41 = v40;

    if (v41)
    {
      v42 = sub_1E4878BDC();
      v44 = v43;

      v53 = v42;
      v54 = v44;
      sub_1E477A374();
      v45 = sub_1E4878E8C();
      sub_1E47738B8(v32, &qword_1ECF7CFA8, &qword_1E487FBA0);

      return v45;
    }

    else
    {
      sub_1E47738B8(v32, &qword_1ECF7CFA8, &qword_1E487FBA0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E47F6A74()
{
  v1 = type metadata accessor for WideTextHeaderView();
  v2 = *(v1 + 20);
  if (sub_1E4871B7C())
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    sub_1E477A374();
    v3 = sub_1E4878E8C();

    return v3;
  }

  else
  {
    v5 = (v0 + *(v1 + 36));
    v6 = *v5;
    v7 = v5[1];

    return sub_1E47F6188(v6, v7);
  }
}

uint64_t sub_1E47F6BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0C0, &qword_1E487FFA8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_1E4877FBC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0C8, &qword_1E487FFB0);
  sub_1E47F6E38(a1, &v10[*(v11 + 44)]);
  if (sub_1E47F5EF0() & 1) != 0 && (sub_1E47F5D98())
  {
    v12 = sub_1E487874C();
    v13 = sub_1E48786BC();
    KeyPath = swift_getKeyPath();

    v15 = 1;
  }

  else
  {
    v15 = 0;
    v12 = 0;
    KeyPath = 0;
    v13 = 0;
  }

  sub_1E4773850(v10, v8, &qword_1ECF7D0C0, &qword_1E487FFA8);
  sub_1E4773850(v8, a2, &qword_1ECF7D0C0, &qword_1E487FFA8);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0D0, &qword_1E487FFB8) + 48));
  sub_1E47F22A4(0, v15, v12);
  sub_1E47F22F4(0, v15, v12);
  *v16 = 0;
  v16[1] = v15;
  v16[2] = v12;
  v16[3] = KeyPath;
  v16[4] = v13;
  sub_1E47738B8(v10, &qword_1ECF7D0C0, &qword_1E487FFA8);
  sub_1E47F22F4(0, v15, v12);
  sub_1E47738B8(v8, &qword_1ECF7D0C0, &qword_1E487FFA8);
}

uint64_t sub_1E47F6E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0D8, &qword_1E487FFF8);
  v3 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v96 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0E0, &qword_1E4880000);
  v5 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v97 = (&v96 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0E8, &unk_1E4880008);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v114 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v96 - v11;
  v105 = sub_1E48780BC();
  v102 = *(v105 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v101 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v96 - v16;
  v98 = sub_1E487753C();
  v18 = *(v98 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F0, &qword_1E4880018);
  v106 = *(v108 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v104 = &v96 - v23;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  v24 = *(*(v116 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v116);
  v103 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v107 = &v96 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D100, &qword_1E4880028);
  v118 = *(v28 - 8);
  v29 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v96 - v30;
  sub_1E4878D2C();
  v109 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v123 = sub_1E47F6A74();
  v124 = v31;
  v100 = sub_1E477A374();
  v32 = sub_1E487848C();
  v34 = v33;
  v36 = v35;
  v37 = sub_1E47F5EF0();
  v119 = v28;
  if (v37)
  {
    sub_1E47F5B90(v21);
    sub_1E48774EC();
    (*(v18 + 8))(v21, v98);
    MEMORY[0x1E6918080](v17);
    sub_1E47738B8(v17, &qword_1ECF7BE58, &unk_1E487DDB0);
  }

  else
  {
    sub_1E48786FC();
  }

  v38 = sub_1E48783FC();
  v40 = v39;
  v42 = v41;

  sub_1E477A3C8(v32, v34, v36 & 1);

  v43 = type metadata accessor for WideTextHeaderView();
  v44 = *(v43 + 44);
  v99 = a1;
  v45 = *(a1 + v44);
  v46 = sub_1E487842C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v98 = v51;
  sub_1E477A3C8(v38, v40, v42 & 1);

  KeyPath = swift_getKeyPath();
  v123 = v46;
  v124 = v48;
  LOBYTE(v125) = v50 & 1;
  v126 = v52;
  v127 = KeyPath;
  v128 = 1;
  v129 = 0;
  v54 = v101;
  sub_1E487809C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v56 = sub_1E477A490();
  v57 = v104;
  sub_1E48785AC();
  (*(v102 + 8))(v54, v105);
  sub_1E477A3C8(v46, v48, v50 & 1);

  v105 = v43;
  v58 = *(v43 + 40);
  v59 = v99;
  v123 = sub_1E47F6188(*(v99 + v58), *(v99 + v58 + 8));
  v124 = v60;
  v61 = sub_1E487848C();
  v63 = v62;
  LOBYTE(v48) = v64;
  v123 = v55;
  v124 = v56;
  swift_getOpaqueTypeConformance2();
  v65 = v103;
  v66 = v108;
  sub_1E487856C();
  sub_1E477A3C8(v61, v63, v48 & 1);

  (*(v106 + 8))(v57, v66);
  v67 = v107;
  sub_1E4877C7C();
  sub_1E47738B8(v65, &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47F5EF0();
  v68 = sub_1E47F82D8();
  v69 = v117;
  sub_1E48784AC();
  sub_1E47738B8(v67, &qword_1ECF7D0F8, &qword_1E4880020);
  v70 = v59;
  v71 = sub_1E47F6578(1);
  v73 = v113;
  v74 = v118;
  v75 = v119;
  if (!v72)
  {
    goto LABEL_10;
  }

  v76 = v71;
  v77 = v72;
  v78 = sub_1E47F6578(0);
  if (!v79)
  {

LABEL_10:
    (*(v74 + 16))(v112, v69, v75);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0FF8, &qword_1ECF7D0E0, &qword_1E4880000);
    v123 = v116;
    v124 = v68;
    swift_getOpaqueTypeConformance2();
    sub_1E487803C();
    goto LABEL_11;
  }

  v80 = v78;
  v81 = v79;
  v82 = sub_1E4877F6C();
  v83 = v97;
  *v97 = v82;
  *(v83 + 8) = 0x4010000000000000;
  *(v83 + 16) = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D110, &unk_1E4880068);
  sub_1E47F79D8(v69, v76, v77, v80, v81, (v83 + *(v84 + 44)));

  sub_1E4773850(v83, v112, &qword_1ECF7D0E0, &qword_1E4880000);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B0FF8, &qword_1ECF7D0E0, &qword_1E4880000);
  v123 = v116;
  v124 = v68;
  swift_getOpaqueTypeConformance2();
  sub_1E487803C();
  sub_1E47738B8(v83, &qword_1ECF7D0E0, &qword_1E4880000);
LABEL_11:
  v85 = *(v70 + *(v105 + 52));
  sub_1E487889C();
  sub_1E4877BCC();
  v116 = v123;
  v112 = v125;
  v86 = v127;
  v87 = v128;
  v122 = 1;
  v121 = v124;
  v120 = v126;
  v88 = v114;
  sub_1E4773850(v73, v114, &qword_1ECF7D0E8, &unk_1E4880008);
  v89 = v73;
  v90 = v122;
  v91 = v121;
  v92 = v120;
  v93 = v115;
  sub_1E4773850(v88, v115, &qword_1ECF7D0E8, &unk_1E4880008);
  v94 = v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D108, &qword_1E4880060) + 48);
  *v94 = 0;
  *(v94 + 8) = v90;
  *(v94 + 16) = v116;
  *(v94 + 24) = v91;
  *(v94 + 32) = v112;
  *(v94 + 40) = v92;
  *(v94 + 48) = v86;
  *(v94 + 56) = v87;
  sub_1E47738B8(v89, &qword_1ECF7D0E8, &unk_1E4880008);
  sub_1E47738B8(v88, &qword_1ECF7D0E8, &unk_1E4880008);
  (*(v118 + 8))(v117, v119);
}

uint64_t sub_1E47F79D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, char *a6@<X8>)
{
  v76 = a5;
  v75 = a4;
  v80 = a1;
  v81 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D100, &qword_1E4880028);
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v66 - v10;
  v70 = sub_1E48780BC();
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F0, &qword_1E4880018);
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v15 = &v66 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  v16 = *(*(v72 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF20, &qword_1E487FAB0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v78 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v66 - v24;
  sub_1E4878D2C();
  v77 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E487883C();
  v26 = *(type metadata accessor for WideTextHeaderView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  sub_1E4877B7C();
  sub_1E487889C();
  sub_1E4877BCC();
  v27 = &v25[*(v20 + 36)];
  v28 = v93;
  *v27 = v92;
  *(v27 + 1) = v28;
  *(v27 + 2) = v94;
  v85 = a2;
  v86 = a3;
  v66 = sub_1E477A374();

  v29 = sub_1E487848C();
  v31 = v30;
  v33 = v32;
  sub_1E48786FC();
  v67 = v25;
  v34 = sub_1E48783FC();
  v36 = v35;
  v38 = v37;

  sub_1E477A3C8(v29, v31, v33 & 1);

  sub_1E48782EC();
  sub_1E487827C();
  sub_1E487829C();

  v39 = sub_1E487842C();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_1E477A3C8(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v85 = v39;
  v86 = v41;
  LOBYTE(v36) = v43 & 1;
  v87 = v43 & 1;
  v88 = v45;
  v89 = KeyPath;
  v90 = 1;
  v91 = 0;
  v47 = v68;
  sub_1E487809C();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v49 = sub_1E477A490();
  sub_1E48785AC();
  (*(v69 + 8))(v47, v70);
  sub_1E477A3C8(v39, v41, v36);

  v85 = v75;
  v86 = v76;

  v50 = sub_1E487848C();
  v52 = v51;
  LOBYTE(v36) = v53;
  v85 = v48;
  v86 = v49;
  swift_getOpaqueTypeConformance2();
  v54 = v71;
  v55 = v74;
  sub_1E487856C();
  sub_1E477A3C8(v50, v52, v36 & 1);

  (*(v73 + 8))(v15, v55);
  v56 = v79;
  sub_1E4877C7C();
  sub_1E47738B8(v54, &qword_1ECF7D0F8, &qword_1E4880020);
  v57 = v82;
  v58 = v83;
  v59 = *(v83 + 16);
  v60 = v84;
  v59(v82, v80, v84);
  v61 = v67;
  v62 = v78;
  sub_1E4773850(v67, v78, &qword_1ECF7CF20, &qword_1E487FAB0);
  sub_1E4773850(v56, v54, &qword_1ECF7D0F8, &qword_1E4880020);
  v63 = v81;
  v59(v81, v57, v60);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D118, &unk_1E4880078);
  sub_1E4773850(v62, &v63[*(v64 + 48)], &qword_1ECF7CF20, &qword_1E487FAB0);
  sub_1E4773850(v54, &v63[*(v64 + 64)], &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47738B8(v56, &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47738B8(v61, &qword_1ECF7CF20, &qword_1E487FAB0);
  sub_1E47738B8(v54, &qword_1ECF7D0F8, &qword_1E4880020);
  sub_1E47738B8(v62, &qword_1ECF7CF20, &qword_1E487FAB0);
  (*(v58 + 8))(v57, v60);
}

uint64_t sub_1E47F81E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4877FBC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0B0, &qword_1E487FF98) + 44);
  *v3 = sub_1E4877F5C();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0B8, &qword_1E487FFA0);
  sub_1E47F6BA4(v1, v3 + *(v4 + 44));
}

unint64_t sub_1E47F82D8()
{
  result = qword_1EE2B1518;
  if (!qword_1EE2B1518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D0F8, &qword_1E4880020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E477A490();
    swift_getOpaqueTypeConformance2();
    sub_1E47F83A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1518);
  }

  return result;
}

unint64_t sub_1E47F83A0()
{
  result = qword_1EE2B10A8;
  if (!qword_1EE2B10A8)
  {
    sub_1E48780EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B10A8);
  }

  return result;
}

uint64_t CalendarEventsTimelineEntry.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v18 = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_1E47F8B5C(v0, boxed_opaque_existential_0, type metadata accessor for CalendarEventsTimelineEntry);
  __swift_project_boxed_opaque_existential_0(v17, v18);
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1E4878BFC();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v17);
  v17[0] = v4;
  v17[1] = v6;
  MEMORY[0x1E69192D0](23328, 0xE200000000000000);
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2B1870;
  v8 = sub_1E48772BC();
  v9 = [v7 stringFromDate_];

  v10 = sub_1E4878BDC();
  v12 = v11;

  MEMORY[0x1E69192D0](v10, v12);

  MEMORY[0x1E69192D0](2112093, 0xE300000000000000);
  v13 = *(v1 + *(v2 + 24));
  v14 = type metadata accessor for DayEvents();
  v15 = MEMORY[0x1E6919360](v13, v14);
  MEMORY[0x1E69192D0](v15);

  return v17[0];
}

uint64_t CalendarEventsTimelineEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E487732C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CalendarEventsTimelineEntry.date.setter(uint64_t a1)
{
  v3 = sub_1E487732C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1E47F86AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - v4;
  v6 = type metadata accessor for CalendarDateTimelineEntry(0);
  v21 = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_1E47F8B5C(v0, boxed_opaque_existential_0, type metadata accessor for CalendarDateTimelineEntry);
  __swift_project_boxed_opaque_existential_0(v20, v21);
  v19[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v8 = sub_1E4878BFC();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v20);
  v20[0] = v8;
  v20[1] = v10;
  MEMORY[0x1E69192D0](23328, 0xE200000000000000);
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2B1870;
  v12 = sub_1E48772BC();
  v13 = [v11 stringFromDate_];

  v14 = sub_1E4878BDC();
  v16 = v15;

  MEMORY[0x1E69192D0](v14, v16);

  MEMORY[0x1E69192D0](5972061, 0xE300000000000000);
  sub_1E47F8BC4(v1 + *(v6 + 24), v5);
  v17 = sub_1E4878BFC();
  MEMORY[0x1E69192D0](v17);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  return v20[0];
}

uint64_t sub_1E47F88AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E487732C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1E47F8940()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47F8AF8(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E47F8A44()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47F8AF8(319, &qword_1EE2B4640, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E47F8AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47F8B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47F8BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E47F8C54(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E47F8CFC(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v4 = *(a3(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1E47F8E3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v23 = v14;
    v24 = a6;
    v18 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    while (1)
    {
      sub_1E47FD4A8(v18, v16, a4);
      v20 = a1(v16);
      if (v6)
      {
        return sub_1E47FD510(v16, a4);
      }

      if (v20)
      {
        break;
      }

      sub_1E47FD510(v16, a4);
      v18 += v19;
      if (!--v17)
      {
        v21 = 1;
        a6 = v24;
        goto LABEL_10;
      }
    }

    a6 = v24;
    sub_1E47FD5D4(v16, v24, v25);
    v21 = 0;
LABEL_10:
    v14 = v23;
  }

  else
  {
    v21 = 1;
  }

  return (*(v12 + 56))(a6, v21, 1, v14);
}

uint64_t sub_1E47F8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  sub_1E47FA41C(a1, a3);
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v15 = sub_1E487732C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E487A7E0;
  (*(v16 + 16))(v19 + v18, a1, v15);
  v20 = *(v5 + 64);

  v21 = sub_1E47FBE3C(v19, v20, a2, v14);

  swift_setDeallocating();
  (*(v16 + 8))(v19 + v18, v15);
  result = swift_deallocClassInstance();
  if (v21[2])
  {
    v23 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    sub_1E47FD4A8(v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), a4, type metadata accessor for CalendarEventsTimelineEntry);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E47F9228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for CalendarEventsTimelineEntry(0);
  *&v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487753C();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  sub_1E47FA41C(a1, a4);
  v20 = sub_1E47FC9F4(a1, a2);
  v22 = a4[3];
  v21 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v22);
  v23 = (*(v21 + 8))(v22, v21);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 BOOLValue];
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v6 + 64);

  v27 = sub_1E47FBE3C(v20, v26, a3, v25);

  sub_1E4877A7C();
  if (!v27[2])
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  sub_1E47FD4A8(v27 + v28, v15, type metadata accessor for CalendarEventsTimelineEntry);
  sub_1E47F970C(v15, a5, v19);
  v30 = v29;
  v31 = sub_1E47FD510(v15, type metadata accessor for CalendarEventsTimelineEntry);
  v32 = v27[2];
  v33 = v32 != 0;
  v34 = (2 * v32) | 1;
  MEMORY[0x1EEE9AC00](v31);
  *(&v52 - 4) = v6;
  *(&v52 - 3) = a5;
  *(&v52 - 2) = v19;

  v35 = sub_1E4858EE0(sub_1E47FD570, (&v52 - 6), v27 + v28, v33, v34);

  v36 = 0;
  v37 = *(v35 + 16);
  while (1)
  {
    v38 = v30;
    if (v37 == v36)
    {
      break;
    }

    v39 = v36 + 1;
    v30 = v30 + *(v35 + 8 * v36++ + 32);
    if (v30 > 9000.0)
    {
      v37 = v39 - 1;
      break;
    }
  }

  sub_1E4878DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E63B0];
  v54 = xmmword_1E487A7E0;
  *(v40 + 16) = xmmword_1E487A7E0;
  v42 = MEMORY[0x1E69E6438];
  *(v40 + 56) = v41;
  *(v40 + 64) = v42;
  *(v40 + 32) = v38;
  sub_1E478E80C();
  v43 = sub_1E4878E4C();
  sub_1E4877AAC();

  v44 = v27[2] - 1;
  v45 = v44 - v37;
  if (__OFSUB__(v44, v37))
  {
    goto LABEL_19;
  }

  if (v45 >= 1)
  {
    sub_1E4878DEC();
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E6530];
    *(v46 + 16) = v54;
    v48 = MEMORY[0x1E69E65A8];
    *(v46 + 56) = v47;
    *(v46 + 64) = v48;
    *(v46 + 32) = v45;
    v49 = sub_1E4878E4C();
    sub_1E4877AAC();
  }

  v50 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    goto LABEL_20;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v27[2];
  if (v51 < v50)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v51 != v50)
  {
    sub_1E4861044(v27, v27 + v28, 0, (2 * v50) | 1);
  }

  (*(v52 + 8))(v19, v53);
}

uint64_t sub_1E47F970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v95 = a2;
  v98 = a1;
  v106 = type metadata accessor for Event();
  v3 = *(v106 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v106);
  v99 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v100 = &v88 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v101 = &v88 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = &v88 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v103 = &v88 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v88 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88 - v19;
  v97 = type metadata accessor for DayEvents();
  v93 = *(v97 - 8);
  v21 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E487894C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v96) = *MEMORY[0x1E6985810];
  v28 = v24[13];
  v28(v27);
  v29 = sub_1E47FD63C(&qword_1EE2B4708, MEMORY[0x1E6985840]);
  sub_1E4878C7C();
  sub_1E4878C7C();
  v30 = v24[1];
  v30(v27, v23);
  v31 = 2;
  if (v108 == v107)
  {
    v31 = 4;
  }

  v91 = v31;
  (v28)(v27, v96, v23);
  v32 = v98;
  sub_1E4878C7C();
  v33 = v27;
  sub_1E4878C7C();
  v30(v27, v23);
  if (v108 == v107)
  {
    v34 = 77.0;
  }

  else
  {
    v34 = 73.0;
  }

  v35 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v36 = *(v32 + *(v35 + 24));
  if (!*(v36 + 16))
  {
    goto LABEL_82;
  }

  v37 = *(v35 + 20);
  v38 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v90 = *(v32 + *(v35 + 24));
  v89 = v38;
  v39 = v94;
  sub_1E47FD4A8(v36 + v38, v94, type metadata accessor for DayEvents);
  v33 = sub_1E4842D5C(v32 + v37, v39, v92);
  sub_1E47FD510(v39, type metadata accessor for DayEvents);
  v96 = *(v33 + 16);
  if (v96)
  {
    v40 = 0;
    v41 = *(type metadata accessor for TimeScalingEngine.SpatialViewParameters() - 8);
    v94 = v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v95 = v41;
    v29 = v104;
    v93 = v33;
    do
    {
      if (v40 >= *(v33 + 16))
      {
        goto LABEL_80;
      }

      v45 = *(v95 + 72);
      v98 = v40;
      v23 = *(v94 + v45 * v40 + *(v97 + 20));
      v46 = *(v23 + 16);
      if (v46)
      {
        v47 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        while (v47 < *(v23 + 16))
        {
          v48 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v49 = *(v3 + 72);
          sub_1E47FD4A8(v23 + v48 + v49 * v47, v20, type metadata accessor for Event);
          if (v20[*(v106 + 56)] - 1 < 2)
          {
            sub_1E47FD510(v20, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v20, v105, type metadata accessor for Event);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108 = v33;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E4858038(0, *(v33 + 16) + 1, 1);
              v33 = v108;
            }

            v52 = *(v33 + 16);
            v51 = *(v33 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_1E4858038(v51 > 1, v52 + 1, 1);
              v33 = v108;
            }

            *(v33 + 16) = v52 + 1;
            sub_1E47FD5D4(v105, v33 + v48 + v52 * v49, type metadata accessor for Event);
            v29 = v104;
          }

          if (v46 == ++v47)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_77;
      }

      v33 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v53 = *(v33 + 16);

      v54 = *(v23 + 16);

      if (v54)
      {
        v55 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        while (v55 < *(v23 + 16))
        {
          v56 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v57 = *(v3 + 72);
          sub_1E47FD4A8(v23 + v56 + v57 * v55, v29, type metadata accessor for Event);
          if (*(v29 + *(v106 + 56)) - 1 > 1)
          {
            sub_1E47FD510(v29, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v29, v103, type metadata accessor for Event);
            v58 = swift_isUniquelyReferenced_nonNull_native();
            v108 = v33;
            if ((v58 & 1) == 0)
            {
              sub_1E4858038(0, *(v33 + 16) + 1, 1);
              v33 = v108;
            }

            v60 = *(v33 + 16);
            v59 = *(v33 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_1E4858038(v59 > 1, v60 + 1, 1);
              v33 = v108;
            }

            *(v33 + 16) = v60 + 1;
            sub_1E47FD5D4(v103, v33 + v56 + v60 * v57, type metadata accessor for Event);
            v29 = v104;
          }

          if (v54 == ++v55)
          {
            goto LABEL_10;
          }
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v33 = MEMORY[0x1E69E7CC0];
LABEL_10:
      v40 = v98 + 1;
      v42 = v34 + v53 * 22.0;

      v43 = *(v33 + 16);

      v34 = v42 + v43 * 26.0;
      v44 = v102;
      v33 = v93;
    }

    while (v40 != v96);
    v61 = *(v93 + 16);
  }

  else
  {
    v61 = 0;
    v44 = v102;
  }

  v29 = sub_1E47F8C54(v91 - v61, v90, v90 + v89, *(v90 + 16) != 0, (2 * *(v90 + 16)) | 1);
  v33 = v62;
  v20 = v63;
  v23 = v64;
  if (v64)
  {
    sub_1E487910C();
    swift_unknownObjectRetain_n();

    v67 = swift_dynamicCastClass();
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = MEMORY[0x1E69E7CC0];
    }

    v68 = *(v67 + 16);

    if (__OFSUB__(v23 >> 1, v20))
    {
      goto LABEL_83;
    }

    if (v68 != (v23 >> 1) - v20)
    {
      goto LABEL_84;
    }

    v33 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v44 = v102;
    v66 = v92;
    if (v33)
    {
      goto LABEL_47;
    }

    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  while (1)
  {
    sub_1E4860ED0(v29, v33, v20, v23);
    v33 = v65;
    v66 = v92;
LABEL_46:
    swift_unknownObjectRelease();
LABEL_47:
    v69 = sub_1E483F168(v33, v66);

    v105 = *(v69 + 16);
    if (!v105)
    {
      break;
    }

    v70 = 0;
    v71 = *(type metadata accessor for TimeScalingEngine.SpatialViewParameters() - 8);
    v103 = v69 + ((v71[80] + 32) & ~v71[80]);
    v104 = v71;
    v29 = v100;
    v98 = v69;
    while (v70 < *(v69 + 16))
    {
      v23 = *(v103 + *(v104 + 9) * v70 + *(v97 + 20));
      v20 = *(v23 + 16);
      if (v20)
      {
        v74 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        while (v74 < *(v23 + 16))
        {
          v75 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v76 = *(v3 + 72);
          sub_1E47FD4A8(v23 + v75 + v76 * v74, v44, type metadata accessor for Event);
          if (*(v44 + *(v106 + 56)) - 1 < 2)
          {
            sub_1E47FD510(v44, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v44, v101, type metadata accessor for Event);
            v77 = swift_isUniquelyReferenced_nonNull_native();
            v108 = v33;
            if ((v77 & 1) == 0)
            {
              sub_1E4858038(0, *(v33 + 16) + 1, 1);
              v33 = v108;
            }

            v79 = *(v33 + 16);
            v78 = *(v33 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_1E4858038(v78 > 1, v79 + 1, 1);
              v33 = v108;
            }

            *(v33 + 16) = v79 + 1;
            sub_1E47FD5D4(v101, v33 + v75 + v79 * v76, type metadata accessor for Event);
            v29 = v100;
            v44 = v102;
          }

          if (v20 == ++v74)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_78;
      }

      v33 = MEMORY[0x1E69E7CC0];
LABEL_64:
      v80 = *(v33 + 16);

      v20 = *(v23 + 16);

      if (v20)
      {
        v81 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        while (v81 < *(v23 + 16))
        {
          v82 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v83 = *(v3 + 72);
          sub_1E47FD4A8(v23 + v82 + v83 * v81, v29, type metadata accessor for Event);
          if (*(v29 + *(v106 + 56)) - 1 > 1)
          {
            sub_1E47FD510(v29, type metadata accessor for Event);
          }

          else
          {
            sub_1E47FD5D4(v29, v99, type metadata accessor for Event);
            v84 = swift_isUniquelyReferenced_nonNull_native();
            v108 = v33;
            if ((v84 & 1) == 0)
            {
              sub_1E4858038(0, *(v33 + 16) + 1, 1);
              v33 = v108;
            }

            v86 = *(v33 + 16);
            v85 = *(v33 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_1E4858038(v85 > 1, v86 + 1, 1);
              v33 = v108;
            }

            *(v33 + 16) = v86 + 1;
            sub_1E47FD5D4(v99, v33 + v82 + v86 * v83, type metadata accessor for Event);
            v29 = v100;
            v44 = v102;
          }

          if (v20 == ++v81)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_79;
      }

      v33 = MEMORY[0x1E69E7CC0];
LABEL_50:
      ++v70;
      v72 = v34 + v80 * 22.0;

      v73 = *(v33 + 16);

      v34 = v72 + v73 * 26.0;
      v69 = v98;
      if (v70 == v105)
      {
        goto LABEL_75;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_unknownObjectRelease();
    v44 = v102;
  }

LABEL_75:

  *(v88 + 56);
  return result;
}

uint64_t sub_1E47FA41C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E487753C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E487732C();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v34);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  sub_1E48772AC();
  sub_1E4877A7C();
  sub_1E487745C();
  v17 = *__swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
  v19 = a2[3];
  v18 = a2[4];
  v20 = __swift_project_boxed_opaque_existential_0(a2, v19);
  v21 = sub_1E4847E44(v14, v16, v20, v17, v19, v18);
  v38 = a1;

  v22 = sub_1E48560AC(sub_1E47A72B0, v37, v21);
  type metadata accessor for Utils();
  v23 = sub_1E485B794(v22, v16);
  v24 = v3[8];
  v3[8] = v23;

  v25 = *(v21 + 16);

  v26 = *(v22 + 16);

  v27 = v3[8];

  v28 = sub_1E486C514(v25 != v26, v14, v27);

  v29 = *(v10 + 8);
  v30 = v34;
  v29(v14, v34);
  (*(v35 + 8))(v9, v36);
  v29(v16, v30);
  v31 = v3[8];
  v3[8] = v28;
}

uint64_t sub_1E47FA6E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E47FA7F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47FA8A4(void **a1)
{
  v2 = *(sub_1E487732C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E48478A0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E47FA94C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E47FA94C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E48790BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E487732C();
        v6 = sub_1E4878CDC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E487732C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E47FAD3C(v8, v9, a1, v4);
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
    return sub_1E47FAA78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E47FAA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E487732C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
      v27 = sub_1E4878ACC();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E47FAD3C(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E4847788(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1E47FB764(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E4847788(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1E48476FC(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
      LODWORD(v134) = sub_1E4878ACC();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_1E4878ACC() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E484779C(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1E484779C((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1E47FB764(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E4847788(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1E48476FC(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
    v110 = sub_1E4878ACC();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1E47FB764(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1E487732C();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
          LOBYTE(v36) = sub_1E4878ACC();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1E47FD63C(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
        LOBYTE(v23) = sub_1E4878ACC();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1E47FBD58(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_1E47FBD58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E487732C();
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

void *sub_1E47FBE3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v103 = a3;
  v100 = a2;
  v99 = sub_1E487751C();
  v6 = *(v99 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v75 - v15;
  v97 = type metadata accessor for DayEvents();
  v101 = *(v97 - 8);
  v17 = *(v101 + 64);
  v18 = MEMORY[0x1EEE9AC00](v97);
  v96 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v75 - v22;
  v105 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v80 = *(v105 - 8);
  v23 = *(v80 + 64);
  v24 = MEMORY[0x1EEE9AC00](v105);
  v82 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v107 = &v75 - v29;
  v30 = sub_1E487732C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v93 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v75 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v106 = &v75 - v38;
  v76 = sub_1E487753C();
  v75 = *(v76 - 8);
  v39 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  if ((a4 & 1) != 0 && (v42 = [objc_opt_self() unselectedCalendarIdentifiersForFocusMode]) != 0)
  {

    v104 = 1;
  }

  else
  {
    v104 = 0;
  }

  v79 = *(a1 + 16);
  if (v79)
  {
    v110 = 0;
    v44 = *(v31 + 16);
    v43 = v31 + 16;
    v108 = v44;
    v78 = a1 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v91 = (v101 + 48);
    v84 = (v43 - 8);
    v90 = *MEMORY[0x1E6969A48];
    v89 = (v6 + 104);
    v88 = (v6 + 8);
    v87 = (v43 + 32);
    v85 = (v43 + 24);
    v109 = v43;
    v77 = *(v43 + 56);
    v83 = MEMORY[0x1E69E7CC0];
    v92 = v12;
    v45 = 0;
    v86 = v16;
    v46 = v106;
    v47 = v107;
    while (1)
    {
      v81 = v45;
      v48 = v108;
      v108(v46, (v78 + v77 * v45), v30);
      v48(v47, v46, v30);
      v49 = v105;
      v48(v47 + *(v105 + 20), v46, v30);
      v102 = *(v49 + 24);
      *(v47 + v102) = MEMORY[0x1E69E7CC0];
      *(v47 + *(v49 + 28)) = v104;
      v50 = (v48)(v37, v46, v30);
      if (v103 >= 1)
      {
        break;
      }

LABEL_23:
      sub_1E47FD4A8(v47, v82, type metadata accessor for CalendarEventsTimelineEntry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_1E4860B5C(0, v83[2] + 1, 1, v83);
      }

      v72 = v83[2];
      v71 = v83[3];
      v102 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v83 = sub_1E4860B5C(v71 > 1, v72 + 1, 1, v83);
      }

      v45 = v81 + 1;
      v73 = *v84;
      v46 = v106;
      (*v84)(v106, v30);
      v74 = v83;
      v83[2] = v102;
      sub_1E47FD5D4(v82, v74 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v72, type metadata accessor for CalendarEventsTimelineEntry);
      v47 = v107;
      sub_1E47FD510(v107, type metadata accessor for CalendarEventsTimelineEntry);
      v73(v37, v30);
      if (v45 == v79)
      {
        goto LABEL_30;
      }
    }

    v51 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      MEMORY[0x1EEE9AC00](v50);
      *(&v75 - 2) = v41;
      *(&v75 - 1) = v37;
      v52 = v110;
      sub_1E47F8E3C(sub_1E47FD5B4, v100, type metadata accessor for DayEvents, type metadata accessor for DayEvents, type metadata accessor for DayEvents, v16);
      v110 = v52;
      v53 = v97;
      if ((*v91)(v16, 1, v97) == 1)
      {
        sub_1E47738B8(v16, &qword_1ECF7C380, &qword_1E4882C20);
        v54 = v93;
        sub_1E487745C();
        v55 = v96;
        v108(v96, v54, v30);
        v56 = MEMORY[0x1E69E7CC0];
        *&v55[v53[5]] = MEMORY[0x1E69E7CC0];
        *&v55[v53[6]] = v56;
        v55[v53[7]] = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1E4860B34(0, v51[2] + 1, 1, v51);
        }

        v57 = v106;
        v59 = v51[2];
        v58 = v51[3];
        v60 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          v51 = sub_1E4860B34(v58 > 1, v59 + 1, 1, v51);
        }

        (*v84)(v93, v30);
        v61 = v96;
      }

      else
      {
        v62 = v94;
        sub_1E47FD5D4(v16, v94, type metadata accessor for DayEvents);
        sub_1E47FD4A8(v62, v95, type metadata accessor for DayEvents);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1E4860B34(0, v51[2] + 1, 1, v51);
        }

        v57 = v106;
        v59 = v51[2];
        v63 = v51[3];
        v60 = v59 + 1;
        if (v59 >= v63 >> 1)
        {
          v51 = sub_1E4860B34(v63 > 1, v59 + 1, 1, v51);
        }

        sub_1E47FD510(v94, type metadata accessor for DayEvents);
        v61 = v95;
      }

      v51[2] = v60;
      sub_1E47FD5D4(v61, v51 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v59, type metadata accessor for DayEvents);
      v64 = v108;
      v108(v28, v57, v30);
      v65 = v105;
      v64(&v28[*(v105 + 20)], v57, v30);
      *&v28[*(v65 + 24)] = v51;
      v28[*(v65 + 28)] = v104;

      v66 = v107;
      sub_1E47FD510(v107, type metadata accessor for CalendarEventsTimelineEntry);
      sub_1E47FD5D4(v28, v66, type metadata accessor for CalendarEventsTimelineEntry);
      v67 = v98;
      v68 = v99;
      (*v89)(v98, v90, v99);
      v69 = v92;
      sub_1E48774BC();
      (*v88)(v67, v68);
      result = (*v87)(v69, 1, v30);
      if (result == 1)
      {
        break;
      }

      v50 = (*v85)(v37, v69, v30);
      v16 = v86;
      if (*(*(v66 + v102) + 16) >= v103)
      {

        v47 = v107;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v83 = MEMORY[0x1E69E7CC0];
LABEL_30:
    (*(v75 + 8))(v41, v76);
    return v83;
  }

  return result;
}

uint64_t sub_1E47FC9F4(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v107 = sub_1E487751C();
  v113 = *(v107 - 8);
  v3 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v90 - v9;
  v110 = sub_1E487706C();
  v10 = *(v110 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v112 = &v90 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v90 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v90 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v90 - v30;
  v94 = sub_1E487753C();
  v90 = *(v94 - 8);
  v32 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v115 = MEMORY[0x1E69E7CD0];
  v111 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  v104 = type metadata accessor for Utils();
  v92 = a1;
  sub_1E4870D68(v13);
  sub_1E487701C();
  (*(v10 + 8))(v13, v110);
  v34 = v15 + 2;
  v35 = v15[2];
  v35(v26, a1, v14);
  sub_1E4862374(v29, v26);
  v36 = v15;
  v37 = v15 + 1;
  v38 = v15[1];
  v38(v29, v14);
  v108 = v31;
  v39 = v31;
  v40 = v34;
  v41 = v36;
  v35(v26, v39, v14);
  v99 = v26;
  sub_1E4862374(v29, v26);
  v98 = v29;
  v109 = v38;
  v110 = v37;
  v38(v29, v14);
  v42 = v92;
  v43 = v102;
  sub_1E48711A4(v92, 600, v102);
  v44 = v43;
  v45 = v41[6];
  v46 = v45(v43, 1, v14);
  v103 = v45;
  v104 = (v41 + 6);
  if (v46 == 1)
  {
    v47 = v95;
    v35(v95, v42, v14);
    v48 = v47;
    if (v45(v44, 1, v14) != 1)
    {
      sub_1E47738B8(v44, &unk_1ECF7C880, &qword_1E4882710);
    }
  }

  else
  {
    v48 = v95;
    (v41[4])(v95, v44, v14);
  }

  v97 = v40;
  v96 = v35;
  v35(v112, v48, v14);
  LODWORD(v102) = *MEMORY[0x1E6969A98];
  v101 = *(v113 + 104);
  v113 += 104;
  v49 = (v113 - 96);
  v93 = v41;
  v100 = (v41 + 4);
  v50 = v105;
  while (1)
  {
    v52 = v106;
    v51 = v107;
    v101(v106, v102, v107);
    sub_1E48774BC();
    (*v49)(v52, v51);
    if (v103(v50, 1, v14) == 1)
    {
      break;
    }

    (*v100)(v19, v50, v14);
    if ((sub_1E48772CC() & 1) == 0 || (sub_1E48772DC() & 1) == 0)
    {
      v109(v19, v14);
      goto LABEL_12;
    }

    v53 = v112;
    v54 = v42;
    v55 = v109;
    v109(v112, v14);
    v56 = v96;
    v96(v53, v19, v14);
    v57 = v99;
    v56(v99, v19, v14);
    v58 = v14;
    v59 = v98;
    sub_1E4862374(v98, v57);
    v60 = v59;
    v14 = v58;
    v55(v60, v58);
    v55(v19, v58);
    v50 = v105;
    v42 = v54;
  }

  sub_1E47738B8(v50, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E4878DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1E487AC40;
  v62 = MEMORY[0x1E69E65A8];
  *(v61 + 56) = MEMORY[0x1E69E6530];
  *(v61 + 64) = v62;
  *(v61 + 32) = 600;
  sub_1E47FD63C(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
  v63 = sub_1E48790CC();
  v65 = v64;
  v66 = MEMORY[0x1E69E6158];
  *(v61 + 96) = MEMORY[0x1E69E6158];
  v67 = sub_1E478B950();
  *(v61 + 104) = v67;
  *(v61 + 72) = v63;
  *(v61 + 80) = v65;
  sub_1E47FD63C(&qword_1ECF7CC98, MEMORY[0x1E6969AE8]);
  v68 = sub_1E48790CC();
  *(v61 + 136) = v66;
  *(v61 + 144) = v67;
  *(v61 + 112) = v68;
  *(v61 + 120) = v69;
  sub_1E478E80C();
  v70 = sub_1E4878E4C();
  sub_1E4877AAC();

LABEL_12:
  v71 = v115;
  v72 = *(v115 + 16);
  v73 = v93;
  if (v72)
  {
    v74 = sub_1E4846B50(*(v115 + 16), 0);
    v75 = sub_1E4869E88(&v114, &v74[(*(v73 + 80) + 32) & ~*(v73 + 80)], v72, v71);

    sub_1E47A7300();
    if (v75 == v72)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v74 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v114 = v74;
  sub_1E47FA8A4(&v114);
  v76 = v95;

  v80 = sub_1E47F8CFC(v91, v114, MEMORY[0x1E6969530]);
  if ((v79 & 1) == 0)
  {
LABEL_17:
    sub_1E4860EF8(v80, v77, v78, v79);
    v82 = v81;
LABEL_24:
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v83 = v79;
  v84 = v78;
  v85 = v77;
  sub_1E487910C();
  swift_unknownObjectRetain_n();
  v86 = swift_dynamicCastClass();
  if (!v86)
  {
    swift_unknownObjectRelease();
    v86 = MEMORY[0x1E69E7CC0];
  }

  v87 = *(v86 + 16);

  if (__OFSUB__(v83 >> 1, v84))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v87 != (v83 >> 1) - v84)
  {
LABEL_27:
    swift_unknownObjectRelease();
    v79 = v83;
    v78 = v84;
    v77 = v85;
    goto LABEL_17;
  }

  v82 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v82)
  {
    v82 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_25:
  v88 = v109;
  v109(v112, v14);
  v88(v76, v14);
  v88(v108, v14);
  (*(v90 + 8))(v111, v94);
  return v82;
}

uint64_t sub_1E47FD4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47FD510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47FD570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[2];
  result = sub_1E47F970C(a1, v4, v5);
  *a2 = v8;
  return result;
}

uint64_t sub_1E47FD5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47FD63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47FD684@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for SpatialEventView();
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

double sub_1E47FD88C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialEventView() + 40));
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

uint64_t sub_1E47FD9E8@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for SpatialEventView();
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

uint64_t sub_1E47FDBF0@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for SpatialEventView();
  sub_1E4773850(v1 + *(v12 + 48), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
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

uint64_t sub_1E47FDDF8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialEventView() + 52));
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

uint64_t sub_1E47FDF48()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48782DC();
  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA0], v0);
  sub_1E48782CC();

  (*(v1 + 8))(v4, v0);
  v5 = sub_1E48781FC();

  qword_1EE2BAEE0 = v5;
  return result;
}

uint64_t type metadata accessor for SpatialEventView()
{
  result = qword_1EE2B3728;
  if (!qword_1EE2B3728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47FE0E0()
{
  type metadata accessor for SpatialEventViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1E47BD3A0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v1 <= 0x3F)
    {
      sub_1E477D33C();
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

double sub_1E47FE274()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialEventView() + 52));
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

uint64_t sub_1E47FE3E0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_1E487753C();
  v25 = *(v27 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v24 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - v6;
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  v23[1] = type metadata accessor for Utils();
  v16 = *v1;
  v17 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v18 = type metadata accessor for Event();
  v19 = *(v9 + 16);
  v19(v15, v16 + *(v18 + 20) + v17, v8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v19(v13, *(v16 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startDate, v8);
  v20 = v24;
  sub_1E47FD684(v24);
  sub_1E485CFF8(v15, v7, v13, v1[4], v26);
  (*(v25 + 8))(v20, v27);
  v21 = *(v9 + 8);
  v21(v13, v8);
  sub_1E47738B8(v7, &unk_1ECF7C880, &qword_1E4882710);
  return (v21)(v15, v8);
}

uint64_t sub_1E47FE6B8()
{
  v1 = sub_1E487753C();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - v8);
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = *v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v17 = type metadata accessor for Event();
  v18 = *(v11 + 16);
  v18(v14, v16 + *(v17 + 20), v10);
  v18(v9, v16 + *(v17 + 24), v10);
  v19 = *(v11 + 56);
  v19(v9, 0, 1, v10);
  v20 = *(v15 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startDate;
  v21 = v26;
  v18(v26, v20, v10);
  v22 = v21;
  v19(v21, 0, 1, v10);
  v23 = v27;
  sub_1E47FD684(v27);
  v24 = sub_1E486D148(v14, v9, v22, v23);
  (*(v28 + 8))(v23, v29);
  sub_1E47738B8(v22, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v9, &unk_1ECF7C880, &qword_1E4882710);
  (*(v11 + 8))(v14, v10);
  return v24;
}

void sub_1E47FE9CC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate);
  v2 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v3 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame;
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v10 = *v6;
    v9 = *(v6 + 8);
    r2 = vmulq_n_f64(vcvtq_f64_s64(*(v0 + 8)), *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24) / v5);
    v16.origin.x = *v6;
    v16.origin.y = v9;
    v16.size.width = v8;
    v16.size.height = v7;
    v20.size.width = CGRectGetWidth(v16);
    *&v20.size.height = *&vsubq_f64(vdupq_laneq_s64(r2, 1), r2);
    v20.origin.y = r2.f64[0];
    v17.origin.x = v10;
    v17.origin.y = v9;
    v17.size.width = v8;
    v17.size.height = v7;
    v20.origin.x = v10;
    v18 = CGRectIntersection(v17, v20);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    CGRectGetWidth(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGRectGetHeight(v19);
    sub_1E47FD88C();
  }
}

BOOL sub_1E47FEB64()
{
  v1 = v0[3];
  v2 = v1 + sub_1E47FE274();
  v3 = *v0;
  v4 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v13);
  if (Height >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = Height;
  }

  sub_1E47FE9CC();
  v7 = CGRectGetHeight(v14);
  v8 = *(*&v3 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v9 = sub_1E47FD88C();
  v10 = round(v8 * v9) / v9;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = v6 - v10;
  return vabdd_f64(v11, v2) <= 1.0 || v2 <= v11;
}

BOOL sub_1E47FEC10()
{
  v1 = v0[3] + v0[3];
  v2 = v1 + sub_1E47FE274();
  v3 = *v0;
  v4 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v13);
  if (Height >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = Height;
  }

  sub_1E47FE9CC();
  v7 = CGRectGetHeight(v14);
  v8 = *(*&v3 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v9 = sub_1E47FD88C();
  v10 = round(v8 * v9) / v9;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = v6 - v10;
  return vabdd_f64(v11, v2) <= 1.0 || v2 <= v11;
}

BOOL sub_1E47FECC0()
{
  v1 = v0[3] * 3.0;
  v2 = v1 + sub_1E47FE274();
  v3 = *v0;
  v4 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v13);
  if (Height >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = Height;
  }

  sub_1E47FE9CC();
  v7 = CGRectGetHeight(v14);
  v8 = *(*&v3 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v9 = sub_1E47FD88C();
  v10 = round(v8 * v9) / v9;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = v6 - v10;
  return vabdd_f64(v11, v2) <= 1.0 || v2 <= v11;
}

uint64_t sub_1E47FED74@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = sub_1E487732C();
  v99 = *(v2 - 8);
  v3 = *(v99 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v88 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v85 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v85 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v97 = v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v85 - v15;
  v87 = type metadata accessor for EventBackgroundView();
  v17 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v19 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D170, &qword_1E4880298);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v85 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D168, &qword_1E4880290);
  v25 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v92 = v85 - v26;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D160, &qword_1E4880288);
  v27 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v94 = v85 - v28;
  v29 = *(sub_1E47FDDF8() + 72);

  *v24 = sub_1E4877F6C();
  *(v24 + 1) = v29;
  v24[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D188, &qword_1E48802C0);
  sub_1E47FF58C(v1, &v24[*(v30 + 44)]);
  v31 = sub_1E487817C();
  v32 = *(sub_1E47FDDF8() + 48);

  sub_1E4877B0C();
  v33 = *(v21 + 44);
  v91 = v24;
  v34 = &v24[v33];
  *v34 = v31;
  v35 = v11;
  *(v34 + 1) = v36;
  *(v34 + 2) = v37;
  *(v34 + 3) = v38;
  *(v34 + 4) = v39;
  v34[40] = 0;
  v95 = v1;
  v40 = *v1;
  v41 = *v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v41, v16);
  v42 = type metadata accessor for Event();
  v43 = *(*(v42 - 8) + 56);
  v90 = v16;
  v43(v16, 0, 1, v42);
  v44 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v45 = *(v42 + 20);
  v98 = v42;
  v46 = -*(v41 + *(v42 + 28));
  sub_1E48772AC();
  v85[1] = sub_1E4803648(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  if (sub_1E4878ADC())
  {
    v47 = v2;
    (*(v99 + 32))(v97, v35, v2);
  }

  else
  {
    v48 = v99;
    (*(v99 + 8))(v35, v2);
    v47 = v2;
    (*(v48 + 16))(v97, *&v40 + v44, v2);
  }

  sub_1E48772AC();
  v49 = v97;
  v50 = sub_1E48772EC();
  v51 = v41;
  v86 = v41;
  v52 = v99;
  v53 = *(v99 + 8);
  v54 = v47;
  v53(v8, v47);
  v53(v49, v47);
  v55 = *&v40 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v56 = v51 + *(v98 + 24);
  if (sub_1E4878ACC())
  {
    v57 = v56;
  }

  else
  {
    v57 = v55;
  }

  v58 = v88;
  (*(v52 + 16))(v88, v57, v54);
  v59 = v50 & 1;
  v60 = sub_1E48772EC();
  v53(v58, v54);
  if (v60)
  {
    v59 = v50 & 1 | 2;
  }

  KeyPath = swift_getKeyPath();
  v62 = swift_getKeyPath();
  v63 = v87;
  *&v19[*(v87 + 32)] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v19[v63[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v19[v63[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v64 = swift_getKeyPath();
  sub_1E477372C(v90, v19, &qword_1ECF7B950, &unk_1E487AE90);
  *&v19[v63[5]] = v59;
  v19[v63[6]] = 1;
  v65 = &v19[v63[7]];
  *v65 = KeyPath;
  v65[8] = 0;
  v66 = &v19[v63[11]];
  *v66 = v64;
  v66[8] = 0;
  v67 = sub_1E487889C();
  v69 = v68;
  v70 = v92;
  v71 = &v92[*(v89 + 36)];
  sub_1E48035E0(v19, v71, type metadata accessor for EventBackgroundView);
  v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v72 = v67;
  v72[1] = v69;
  sub_1E477372C(v91, v70, &qword_1ECF7D170, &qword_1E4880298);
  v73 = sub_1E487889C();
  v75 = v74;
  v76 = v94;
  v77 = &v94[*(v93 + 36)];
  sub_1E4802258(v95, v77);
  v78 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D180, &unk_1E48802B0) + 36));
  *v78 = v73;
  v78[1] = v75;
  sub_1E477372C(v70, v76, &qword_1ECF7D168, &qword_1E4880290);
  v100 = sub_1E47CC9E8(*(v86 + *(v98 + 56)));
  v101 = v79;
  sub_1E477A374();
  v80 = sub_1E487848C();
  v82 = v81;
  LOBYTE(v77) = v83;
  sub_1E48033B0();
  sub_1E487857C();
  sub_1E477A3C8(v80, v82, v77 & 1);

  return sub_1E47738B8(v76, &qword_1ECF7D160, &qword_1E4880288);
}

uint64_t sub_1E47FF58C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1A8, &unk_1E48803F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v105 = (&v89 - v7);
  v8 = sub_1E487732C();
  v108 = *(v8 - 8);
  v9 = *(v108 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v96 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v89 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v89 - v18;
  v92 = sub_1E4877B3C();
  v19 = *(v92 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Event();
  v23 = *(*(v109 - 1) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ColorBarView.Styling(0);
  v26 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ColorBarView(0);
  v28 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CBF8, &qword_1E487F000);
  v30 = *(*(v99 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v99);
  v103 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v98 = &v89 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v101 = &v89 - v35;
  sub_1E4878D2C();
  v102 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *a1;
  v37 = *a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v37, v25);
  sub_1E47FDBF0(v22);
  v91 = sub_1E4770A7C(v25, v22);
  (*(v19 + 8))(v22, v92);
  sub_1E4803690(v25, type metadata accessor for Event);
  v38 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v39 = v109[5];
  v40 = -*(v37 + v109[7]);
  sub_1E48772AC();
  sub_1E4803648(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  v41 = sub_1E4878ADC();
  v104 = a1;
  if (v41)
  {
    v42 = v93;
    (*(v108 + 32))(v93, v17, v8);
  }

  else
  {
    v43 = v108;
    (*(v108 + 8))(v17, v8);
    v44 = *&v36 + v38;
    v42 = v93;
    (*(v43 + 16))(v93, v44, v8);
  }

  v45 = v36;
  sub_1E48772AC();
  v46 = sub_1E48772EC();
  v47 = v108;
  v48 = *(v108 + 8);
  v48(v14, v8);
  v48(v42, v8);
  v90 = v45;
  v49 = *&v45 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v50 = v37 + v109[6];
  if (sub_1E4878ACC())
  {
    v51 = v50;
  }

  else
  {
    v51 = v49;
  }

  v52 = v96;
  (*(v47 + 16))(v96, v51, v8);
  v53 = sub_1E48772EC();
  v48(v52, v8);
  if (v53)
  {
    v54 = v46 & 1 | 2;
  }

  else
  {
    v54 = v46 & 1;
  }

  v55 = v104;
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v110);
  v57 = *(*&v90 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v58 = sub_1E47FD88C();
  v59 = round(v57 * v58) / v58;
  if (v59 >= Height)
  {
    v59 = Height;
  }

  v60 = v59 + -2.0;
  if (v60 < 0.0)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v60;
  }

  v62 = v95;
  v63 = &v95[*(v94 + 40)];
  sub_1E487735C();
  *(v62 + 48) = 1;
  *v62 = v91;
  *(v62 + 8) = 0;
  *(v62 + 16) = 1;
  *(v62 + 24) = v54;
  *(v62 + 32) = v61;
  *(v62 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v65 = v97;
  v66 = v100;
  *&v100[*(v97 + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v67 = swift_getKeyPath();
  sub_1E48035E0(v62, v66, type metadata accessor for ColorBarView.Styling);
  v68 = v66 + *(v65 + 24);
  *v68 = v67;
  *(v68 + 8) = 0;
  LOBYTE(v67) = sub_1E487819C();
  v69 = *(sub_1E47FDDF8() + 48);

  sub_1E4877B0C();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v98;
  sub_1E48035E0(v66, v98, type metadata accessor for ColorBarView);
  v79 = v78 + *(v99 + 36);
  *v79 = v67;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  v80 = v101;
  sub_1E477372C(v78, v101, &qword_1ECF7CBF8, &qword_1E487F000);
  v81 = sub_1E4877F6C();
  v82 = v105;
  *v105 = v81;
  *(v82 + 8) = 0;
  *(v82 + 16) = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1B0, &qword_1E4880400);
  sub_1E47FFEA0(v55, v82 + *(v83 + 44));
  v84 = v103;
  sub_1E4773850(v80, v103, &qword_1ECF7CBF8, &qword_1E487F000);
  v85 = v107;
  sub_1E4773850(v82, v107, &qword_1ECF7D1A8, &unk_1E48803F0);
  v86 = v106;
  sub_1E4773850(v84, v106, &qword_1ECF7CBF8, &qword_1E487F000);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1B8, &qword_1E4880408);
  sub_1E4773850(v85, v86 + *(v87 + 48), &qword_1ECF7D1A8, &unk_1E48803F0);
  sub_1E47738B8(v82, &qword_1ECF7D1A8, &unk_1E48803F0);
  sub_1E47738B8(v80, &qword_1ECF7CBF8, &qword_1E487F000);
  sub_1E47738B8(v85, &qword_1ECF7D1A8, &unk_1E48803F0);
  sub_1E47738B8(v84, &qword_1ECF7CBF8, &qword_1E487F000);
}

uint64_t sub_1E47FFEA0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1C0, &qword_1E4880410);
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

  *v10 = sub_1E4877FBC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1C8, &qword_1E4880418);
  sub_1E480005C(a1, &v10[*(v11 + 44)]);
  sub_1E4773850(v10, v8, &qword_1ECF7D1C0, &qword_1E4880410);
  sub_1E4773850(v8, a2, &qword_1ECF7D1C0, &qword_1E4880410);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1D0, &qword_1E4880420) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1E47738B8(v10, &qword_1ECF7D1C0, &qword_1E4880410);
  sub_1E47738B8(v8, &qword_1ECF7D1C0, &qword_1E4880410);
}

uint64_t sub_1E480005C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1D8, &qword_1E4880428);
  v3 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v5 = &v78 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1E0, &qword_1E4880430);
  v6 = *(*(v84 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v84);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v83 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v78 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1E8, &qword_1E4880438);
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1F0, &qword_1E4880440);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1F8, &qword_1E4880448);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v82 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v78 - v27;
  sub_1E4878D2C();
  v81 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47FE9CC();
  Height = CGRectGetHeight(v95);
  v29 = *a1;
  v88 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight;
  v30 = *(*&v29 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v31 = sub_1E47FD88C();
  v32 = round(v30 * v31) / v31;
  if (v32 >= Height)
  {
    v32 = Height;
  }

  if (v32 <= 0.0)
  {
    v44 = v80;
    (*(v16 + 56))(v80, 1, 1, v15);
  }

  else
  {
    *v14 = sub_1E4877FBC();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D218, &qword_1E4880468);
    sub_1E480080C(a1, &v14[*(v33 + 44)]);
    v34 = sub_1E487818C();
    v35 = *(sub_1E47FDDF8() + 48);

    sub_1E4877B0C();
    v36 = &v14[*(v78 + 36)];
    *v36 = v34;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    sub_1E47FE9CC();
    CGRectGetHeight(v96);
    v41 = *(*&v29 + v88);
    sub_1E47FD88C();
    sub_1E487889C();
    sub_1E4877BCC();
    sub_1E477372C(v14, v20, &qword_1ECF7D1E8, &qword_1E4880438);
    v42 = &v20[*(v15 + 36)];
    v43 = v90;
    *v42 = v89;
    *(v42 + 1) = v43;
    *(v42 + 2) = v91;
    sub_1E477372C(v20, v22, &qword_1ECF7D1F0, &qword_1E4880440);
    v44 = v80;
    sub_1E477372C(v22, v80, &qword_1ECF7D1F0, &qword_1E4880440);
    (*(v16 + 56))(v44, 0, 1, v15);
  }

  *v5 = sub_1E4877FBC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D200, &qword_1E4880450);
  sub_1E4800F3C(a1, &v5[*(v45 + 44)]);
  v46 = sub_1E487819C();
  v47 = *(sub_1E47FDDF8() + 48);

  sub_1E4877B0C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D208, &qword_1E4880458) + 36)];
  *v56 = v46;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = sub_1E487818C();
  v58 = *(sub_1E47FDDF8() + 48);

  sub_1E4877B0C();
  v59 = &v5[*(v79 + 36)];
  *v59 = v57;
  *(v59 + 1) = v60;
  *(v59 + 2) = v61;
  *(v59 + 3) = v62;
  *(v59 + 4) = v63;
  v59[40] = 0;
  v64 = *(*&v29 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  CGRectGetHeight(v97);
  sub_1E47FE9CC();
  CGRectGetHeight(v98);
  v65 = *(*&v29 + v88);
  sub_1E47FD88C();
  sub_1E487889C();
  sub_1E4877BCC();
  v66 = v83;
  sub_1E477372C(v5, v83, &qword_1ECF7D1D8, &qword_1E4880428);
  v67 = v85;
  v68 = (v66 + *(v84 + 36));
  v69 = v93;
  *v68 = v92;
  v68[1] = v69;
  v68[2] = v94;
  sub_1E477372C(v66, v67, &qword_1ECF7D1E0, &qword_1E4880430);
  v70 = v44;
  v71 = v44;
  v72 = v82;
  sub_1E4773850(v70, v82, &qword_1ECF7D1F8, &qword_1E4880448);
  v73 = v86;
  sub_1E4773850(v67, v86, &qword_1ECF7D1E0, &qword_1E4880430);
  v74 = v87;
  sub_1E4773850(v72, v87, &qword_1ECF7D1F8, &qword_1E4880448);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D210, &qword_1E4880460);
  sub_1E4773850(v73, v74 + *(v75 + 48), &qword_1ECF7D1E0, &qword_1E4880430);
  v76 = v74 + *(v75 + 64);
  *v76 = 0;
  *(v76 + 8) = 0;
  sub_1E47738B8(v67, &qword_1ECF7D1E0, &qword_1E4880430);
  sub_1E47738B8(v71, &qword_1ECF7D1F8, &qword_1E4880448);
  sub_1E47738B8(v73, &qword_1ECF7D1E0, &qword_1E4880430);
  sub_1E47738B8(v72, &qword_1ECF7D1F8, &qword_1E4880448);
}

uint64_t sub_1E480080C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = sub_1E4877B3C();
  v68 = *(v70 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E48782AC();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC28, &unk_1E4880470);
  v13 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CC30, &qword_1E487F030);
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D220, &qword_1E4880480);
  v76 = *(v19 - 8);
  v77 = v19;
  v20 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D228, &qword_1E4880488);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v63 - v27;
  sub_1E4878D2C();
  v75 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = a1[3];
  v30 = v29 + sub_1E47FE274();
  sub_1E47FE9CC();
  Height = CGRectGetHeight(v80);
  v32 = *a1;
  v33 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v34 = sub_1E47FD88C();
  v35 = round(v33 * v34) / v34;
  if (v35 >= Height)
  {
    v35 = Height;
  }

  v37 = v30 > v35;
  v36 = vabdd_f64(v35, v30);
  v37 = v37 && v36 > 1.0;
  if (v37)
  {
    (*(v76 + 56))(v28, 1, 1, v77);
  }

  else
  {
    v64 = v26;
    v38 = a2;
    v39 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    sub_1E47707EC(*&v32 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v15);
    sub_1E48782DC();
    v40 = v9;
    v41 = *(v9 + 104);
    v42 = v65;
    v41(v12, *MEMORY[0x1E6980EA0], v65);
    v63 = sub_1E48782CC();

    (*(v40 + 8))(v12, v42);
    v43 = *&v32 + v39;
    a2 = v38;
    v44 = v66;
    sub_1E47707EC(v43, v66);
    v45 = v67;
    sub_1E47FDBF0(v67);
    sub_1E476F0D0(v44, v45);
    v46 = sub_1E48785FC();
    (*(v68 + 8))(v45, v70);
    sub_1E4803690(v44, type metadata accessor for Event);
    KeyPath = swift_getKeyPath();
    v48 = type metadata accessor for NarrowEventTravelTimeText(0);
    *&v15[v48[8]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v15[v48[5]] = v63;
    *&v15[v48[6]] = v46;
    v49 = &v15[v48[7]];
    *v49 = 0;
    v49[8] = 1;
    LOBYTE(KeyPath) = sub_1E487819C();
    v50 = *(sub_1E47FDDF8() + 48);

    sub_1E4877B0C();
    v51 = v72;
    v52 = &v15[*(v72 + 36)];
    *v52 = KeyPath;
    v26 = v64;
    *(v52 + 1) = v53;
    *(v52 + 2) = v54;
    *(v52 + 3) = v55;
    *(v52 + 4) = v56;
    v52[40] = 0;
    v57 = sub_1E47E348C();
    v58 = v71;
    sub_1E48784AC();
    sub_1E47738B8(v15, &qword_1ECF7CC28, &unk_1E4880470);
    v78 = v51;
    v79 = v57;
    swift_getOpaqueTypeConformance2();
    v59 = v69;
    v60 = v74;
    sub_1E48785BC();
    (*(v73 + 8))(v58, v60);
    sub_1E477372C(v59, v28, &qword_1ECF7D220, &qword_1E4880480);
    (*(v76 + 56))(v28, 0, 1, v77);
  }

  sub_1E4773850(v28, v26, &qword_1ECF7D228, &qword_1E4880488);
  sub_1E4773850(v26, a2, &qword_1ECF7D228, &qword_1E4880488);
  v61 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D230, &unk_1E4880490) + 48);
  *v61 = 0;
  *(v61 + 8) = 0;
  sub_1E47738B8(v28, &qword_1ECF7D228, &qword_1E4880488);
  sub_1E47738B8(v26, &qword_1ECF7D228, &qword_1E4880488);
}

uint64_t sub_1E4800F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v152 = sub_1E48782AC();
  v151 = *(v152 - 8);
  v3 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for LocationView();
  v5 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CAF0, &qword_1E487ED30);
  v157 = *(v158 - 8);
  v7 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v128 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D238, &qword_1E48804A0);
  v168 = *(v9 - 8);
  v169 = v9;
  v10 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v128 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D240, &unk_1E48804A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v171 = &v128 - v16;
  v17 = sub_1E4877B3C();
  v165 = *(v17 - 8);
  v166 = v17;
  v18 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v163 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1E487846C();
  v142 = *(v143 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Event();
  v22 = *(*(v134 - 1) + 64);
  v23 = MEMORY[0x1EEE9AC00](v134);
  v162 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v128 - v25;
  v26 = sub_1E487719C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v132 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v137 = *(v138 - 8);
  v29 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v128 - v30;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  v31 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v139 = &v128 - v32;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  v33 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v140 = &v128 - v34;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D248, &qword_1E48804B8);
  v148 = *(v149 - 8);
  v35 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v128 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D250, &qword_1E48804C0);
  v159 = *(v37 - 8);
  v38 = *(v159 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v145 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v144 = &v128 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D258, &qword_1E48804C8);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v164 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v128 - v46;
  v48 = type metadata accessor for NarrowEventTitleText();
  v49 = *(*(v48 - 1) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D260, &qword_1E48804D0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v128 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D268, &qword_1E48804D8);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8);
  v161 = &v128 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v172 = &v128 - v61;
  sub_1E4878D2C();
  v160 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_1E47FEB64())
  {
    sub_1E47707EC(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v51);
    if (qword_1EE2B3748 != -1)
    {
      swift_once();
    }

    v62 = qword_1EE2BAEE0;
    *&v51[v48[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v51[v48[5]] = v62;
    v63 = &v51[v48[6]];
    *v63 = 0;
    v63[8] = 1;
    *&v51[v48[7]] = 0;
    sub_1E4803648(&qword_1EE2B2A10, type metadata accessor for NarrowEventTitleText);

    sub_1E48785BC();
    sub_1E4803690(v51, type metadata accessor for NarrowEventTitleText);
    v64 = v172;
    sub_1E477372C(v56, v172, &qword_1ECF7D260, &qword_1E48804D0);
    (*(v53 + 56))(v64, 0, 1, v52);
  }

  else
  {
    (*(v53 + 56))(v172, 1, 1, v52);
  }

  v65 = sub_1E47FEC10();
  v173 = v47;
  if (v65)
  {
    sub_1E47FE3E0(v132);
    v66 = sub_1E487847C();
    v129 = v66;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v130 = v71;
    KeyPath = swift_getKeyPath();
    v174 = v66;
    v175 = v68;
    LOBYTE(v66) = v70 & 1;
    v176 = v70 & 1;
    v177 = v72;
    v178 = KeyPath;
    v179 = 0;
    v132 = *a1;
    v131 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v74 = v133;
    sub_1E47707EC(v132 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v133);
    LODWORD(v72) = *(v74 + *(v134 + 14));
    v134 = type metadata accessor for Event;
    sub_1E4803690(v74, type metadata accessor for Event);
    v75 = v141;
    sub_1E487845C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
    sub_1E4780E40();
    v76 = v136;
    sub_1E487853C();
    (*(v142 + 8))(v75, v143);
    sub_1E477A3C8(v129, v68, v66);

    v77 = a1[4];
    v78 = swift_getKeyPath();
    v79 = v139;
    (*(v137 + 32))(v139, v76, v138);
    v80 = (v79 + *(v135 + 36));
    *v80 = v78;
    v80[1] = v77;
    v81 = v162;
    sub_1E47707EC(v132 + v131, v162);

    v82 = v163;
    sub_1E47FDBF0(v163);
    sub_1E476F0D0(v81, v82);
    v83 = sub_1E48785FC();
    (*(v165 + 8))(v82, v166);
    sub_1E4803690(v81, v134);
    v84 = swift_getKeyPath();
    v85 = v140;
    sub_1E477372C(v79, v140, &qword_1ECF7BB38, &qword_1E487B138);
    v86 = v146;
    v87 = (v85 + *(v146 + 36));
    *v87 = v84;
    v87[1] = v83;
    v88 = sub_1E4780FB0();
    v89 = v147;
    sub_1E48784AC();
    sub_1E47738B8(v85, &qword_1ECF7BB40, &qword_1E487B140);
    v174 = sub_1E47FE6B8();
    v175 = v90;
    sub_1E477A374();
    v91 = sub_1E487848C();
    v93 = v92;
    LOBYTE(v79) = v94;
    v174 = v86;
    v175 = v88;
    swift_getOpaqueTypeConformance2();
    v95 = v145;
    v96 = v149;
    sub_1E487856C();
    v97 = v93;
    v47 = v173;
    sub_1E477A3C8(v91, v97, v79 & 1);

    (*(v148 + 8))(v89, v96);
    v98 = v144;
    sub_1E4877C8C();
    sub_1E47738B8(v95, &qword_1ECF7D250, &qword_1E48804C0);
    sub_1E477372C(v98, v47, &qword_1ECF7D250, &qword_1E48804C0);
    v99 = 0;
  }

  else
  {
    v99 = 1;
  }

  v100 = v171;
  v101 = 1;
  (*(v159 + 56))(v47, v99, 1, v37);
  if (sub_1E47FECC0())
  {
    v102 = *a1;
    v103 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v104 = v156;
    v105 = v154;
    sub_1E47707EC(v102 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, &v154[*(v156 + 20)]);
    sub_1E48782DC();
    v106 = v151;
    v107 = v150;
    v108 = v152;
    (*(v151 + 104))(v150, *MEMORY[0x1E6980EA0], v152);
    v159 = sub_1E48782CC();

    (*(v106 + 8))(v107, v108);
    v109 = v102 + v103;
    v110 = v162;
    sub_1E47707EC(v109, v162);
    v111 = v163;
    sub_1E47FDBF0(v163);
    sub_1E476F0D0(v110, v111);
    v112 = sub_1E48785FC();
    (*(v165 + 8))(v111, v166);
    sub_1E4803690(v110, type metadata accessor for Event);
    *v105 = swift_getKeyPath();
    *(v105 + 8) = 0;
    v113 = v104[11];
    *(v105 + v113) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v105 + v104[6]) = v159;
    *(v105 + v104[7]) = 1;
    *(v105 + v104[8]) = v112;
    *(v105 + v104[9]) = 1;
    *(v105 + v104[10]) = 0;
    v114 = sub_1E4803648(qword_1EE2B3E90, type metadata accessor for LocationView);
    v115 = v155;
    sub_1E48784AC();
    sub_1E4803690(v105, type metadata accessor for LocationView);
    v174 = v104;
    v175 = v114;
    swift_getOpaqueTypeConformance2();
    v116 = v153;
    v117 = v158;
    sub_1E48785BC();
    v118 = v115;
    v100 = v171;
    (*(v157 + 8))(v118, v117);
    v119 = v116;
    v47 = v173;
    sub_1E477372C(v119, v100, &qword_1ECF7D238, &qword_1E48804A0);
    v101 = 0;
  }

  (*(v168 + 56))(v100, v101, 1, v169);
  v120 = v172;
  v121 = v161;
  sub_1E4773850(v172, v161, &qword_1ECF7D268, &qword_1E48804D8);
  v122 = v164;
  sub_1E4773850(v47, v164, &qword_1ECF7D258, &qword_1E48804C8);
  v123 = v170;
  sub_1E4773850(v100, v170, &qword_1ECF7D240, &unk_1E48804A8);
  v124 = v167;
  sub_1E4773850(v121, v167, &qword_1ECF7D268, &qword_1E48804D8);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D270, &qword_1E48804E0);
  sub_1E4773850(v122, v124 + v125[12], &qword_1ECF7D258, &qword_1E48804C8);
  sub_1E4773850(v123, v124 + v125[16], &qword_1ECF7D240, &unk_1E48804A8);
  v126 = v124 + v125[20];
  *v126 = 0;
  *(v126 + 8) = 0;
  sub_1E47738B8(v100, &qword_1ECF7D240, &unk_1E48804A8);
  sub_1E47738B8(v173, &qword_1ECF7D258, &qword_1E48804C8);
  sub_1E47738B8(v120, &qword_1ECF7D268, &qword_1E48804D8);
  sub_1E47738B8(v123, &qword_1ECF7D240, &unk_1E48804A8);
  sub_1E47738B8(v122, &qword_1ECF7D258, &qword_1E48804C8);
  sub_1E47738B8(v121, &qword_1ECF7D268, &qword_1E48804D8);
}

uint64_t sub_1E4802258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1E4877B3C();
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D190, &qword_1E48803C8);
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v62 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D198, &qword_1E48803D0);
  v13 = *(v69 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v66 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D1A0, &qword_1E48803D8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v62 - v20;
  sub_1E4878D2C();
  v68 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47FE9CC();
  Height = CGRectGetHeight(v78);
  v23 = *a1;
  v24 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight;
  v25 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_travelTimeHeight);
  v26 = sub_1E47FD88C();
  v27 = round(v25 * v26) / v26;
  if (v27 >= Height)
  {
    v27 = Height;
  }

  if (v27 <= 0.0)
  {
    goto LABEL_21;
  }

  v28 = *(v23 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E47FE9CC();
  v29 = CGRectGetHeight(v79);
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  sub_1E47FE9CC();
  v31 = CGRectGetHeight(v80);
  v32 = *(v23 + v24);
  v33 = sub_1E47FD88C();
  v34 = round(v32 * v33) / v33;
  if (v34 >= v31)
  {
    v34 = v31;
  }

  if (v30 <= v34)
  {
LABEL_21:
    (*(v13 + 56))(v21, 1, 1, v69);
  }

  else
  {
    sub_1E47707EC(v23 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v10);
    sub_1E47FDBF0(v6);
    v35 = sub_1E4770A7C(v10, v6);
    (*(v63 + 8))(v6, v3);
    sub_1E4803690(v10, type metadata accessor for Event);
    *&v71 = v35;
    WORD4(v71) = 256;
    *&v72 = 0x3FE0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAE0, &unk_1E48803E0);
    sub_1E477F484();
    v36 = v67;
    sub_1E48784AC();

    sub_1E487889C();
    sub_1E4877CEC();
    v37 = (v36 + *(v64 + 36));
    v38 = v76;
    v37[4] = v75;
    v37[5] = v38;
    v37[6] = v77;
    v39 = v72;
    *v37 = v71;
    v37[1] = v39;
    v40 = v74;
    v37[2] = v73;
    v37[3] = v40;
    sub_1E47FE9CC();
    Width = CGRectGetWidth(v81);
    sub_1E47FE9CC();
    MaxX = CGRectGetMaxX(v82);
    if (MaxX == CGRectGetMaxX(*(*(v23 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect)))
    {
      v43 = 0.0;
    }

    else
    {
      v43 = 2.0;
    }

    sub_1E47FE9CC();
    v44 = CGRectGetHeight(v83);
    v45 = *(v23 + v24);
    v46 = sub_1E47FD88C();
    v47 = round(v45 * v46) / v46;
    if (v47 >= v44)
    {
      v47 = v44;
    }

    v48 = v47 + -2.0;
    if (v48 < 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = v48;
    }

    v50 = (Width - v43) * 0.5;
    v51 = *(sub_1E47FDDF8() + 48);

    v52 = v51 + v49;
    v53 = *(sub_1E47FDDF8() + 64);

    v54 = sub_1E47FD88C();
    v55 = round(v54 * (v52 - v53 * 0.5)) / v54;
    v56 = v66;
    sub_1E477372C(v36, v66, &qword_1ECF7D190, &qword_1E48803C8);
    v57 = v69;
    v58 = (v56 + *(v69 + 36));
    *v58 = v50;
    v58[1] = v55;
    v59 = v56;
    v60 = v65;
    sub_1E477372C(v59, v65, &qword_1ECF7D198, &qword_1E48803D0);
    sub_1E477372C(v60, v21, &qword_1ECF7D198, &qword_1E48803D0);
    (*(v13 + 56))(v21, 0, 1, v57);
  }

  sub_1E477372C(v21, v70, &qword_1ECF7D1A0, &qword_1E48803D8);
}