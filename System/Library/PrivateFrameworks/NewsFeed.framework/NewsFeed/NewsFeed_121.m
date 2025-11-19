uint64_t sub_1D6664598()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66645EC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664638()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664684()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66646D0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D666471C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664768()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66647B4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664800()
{
  v0 = sub_1D72641CC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D666484C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664898()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66648E4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664930()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D666497C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66649C8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664A14()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664A60()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664AAC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664AF8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1D6664B44()
{
  if (!qword_1EDF08848)
  {
    sub_1D6664BD8();
    sub_1D5B58B84(&qword_1EDF02A78, sub_1D6664BD8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08848);
    }
  }
}

void sub_1D6664BD8()
{
  if (!qword_1EDF02A70)
  {
    sub_1D5CC2354();
    sub_1D5B58B84(&qword_1EDF24BB8, sub_1D5CC2354);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02A70);
    }
  }
}

unint64_t sub_1D6664CE8()
{
  result = qword_1EDF10D18;
  if (!qword_1EDF10D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D18);
  }

  return result;
}

unint64_t sub_1D6664D3C()
{
  result = qword_1EDF10500;
  if (!qword_1EDF10500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10500);
  }

  return result;
}

unint64_t sub_1D6664D90()
{
  result = qword_1EC886288;
  if (!qword_1EC886288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886288);
  }

  return result;
}

unint64_t sub_1D6664DE4()
{
  result = qword_1EDF0E1E0;
  if (!qword_1EDF0E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E1E0);
  }

  return result;
}

uint64_t sub_1D6664E38(void *a1)
{
  sub_1D6704854();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6665BEC();
  sub_1D5B58B84(&qword_1EDF251E8, sub_1D6665BEC);
  sub_1D7264B0C();
  v10 = v1;
  if (v1)
  {
LABEL_23:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  v11 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v9 = v8;
  if (v13)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v16 - 2);
      v22 = *(v16 - 1);

      v24 = sub_1D661554C();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v5 + 8))(v9, v4);
      goto LABEL_23;
    }

LABEL_7:
  }

  v48 = 0uLL;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = 0uLL;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24768, sub_1D6666300, &type metadata for FormatFlexBoxNodeDisplay, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704C48();
    sub_1D726431C();
    v17 = v51;
    v18 = *(&v51 + 1);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v17 = 1;
  }

  v47 = xmmword_1D728CF30;
  v48 = xmmword_1D728CF30;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v47;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24758, sub_1D666621C, &type metadata for FormatFlexBoxNodeDirection, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704BB8();
    sub_1D726431C();
    v56 = v51;
    v19 = *(&v51 + 1);
  }

  else
  {
    v56 = 0;
    v19 = MEMORY[0x1E69E7CC0];
  }

  v47 = xmmword_1D7297410;
  v48 = xmmword_1D7297410;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v47;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EC8862B8, sub_1D6666138, &type metadata for FormatFlexBoxNodeWrap, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704B28();
    sub_1D726431C();
    v55 = v51;
    v20 = *(&v51 + 1);
  }

  else
  {
    v55 = 0;
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v47 = v20;
  v46 = xmmword_1D72BAA60;
  v48 = xmmword_1D72BAA60;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v46;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24738, sub_1D6666054, &type metadata for FormatFlexBoxNodeJustifyContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704A98();
    sub_1D726431C();
    v44 = v51;
    v21 = *(&v51 + 1);
  }

  else
  {
    v44 = 0;
    v21 = MEMORY[0x1E69E7CC0];
  }

  *&v46 = v21;
  v45 = xmmword_1D72BAA70;
  v48 = xmmword_1D72BAA70;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v45;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EC8862A0, sub_1D6665F70, &type metadata for FormatFlexBoxNodeAlignContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704A08();
    sub_1D726431C();
    v43 = v51;
    v27 = *(&v51 + 1);
  }

  else
  {
    v43 = 0;
    v27 = MEMORY[0x1E69E7CC0];
  }

  v45 = xmmword_1D72BAA80;
  v48 = xmmword_1D72BAA80;
  v49 = 0;
  if (sub_1D726434C())
  {
    v42 = v17;
    v53 = v45;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24748, sub_1D6665E8C, &type metadata for FormatFlexBoxNodeAlignItems, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704978();
    sub_1D726431C();
    v41 = v51;
    *&v45 = *(&v51 + 1);
    v17 = v42;
  }

  else
  {
    v41 = 0;
    *&v45 = MEMORY[0x1E69E7CC0];
  }

  sub_1D660BFEC(&v48);
  v42 = v17;
  v39 = *(&v48 + 1);
  v40 = v48;
  sub_1D660BFEC(&v48);
  v38 = v27;
  v36 = *(&v48 + 1);
  v37 = v48;
  v35 = xmmword_1D72BAAB0;
  v53 = xmmword_1D72BAAB0;
  v54 = 0;
  if (sub_1D726434C())
  {
    v51 = v35;
    v52 = 0;
    sub_1D5C30060(0, &qword_1EC886290, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D67048E8();
    sub_1D726431C();
    v28 = a1;
    (*(v11 + 8))(v9, v4);
    v29 = *(&v48 + 1);
    v30 = v48;
    v31 = v49;
    v32 = v50;
    sub_1D5C75A4C(v48, *(&v48 + 1), v49);

    LODWORD(v35) = v31;
    sub_1D5D2F2C8(v30, v29, v31);
  }

  else
  {
    v28 = a1;
    (*(v11 + 8))(v9, v4);
    LODWORD(v35) = 0;
    v29 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v30 = 1;
  }

  type metadata accessor for FormatFlexBoxNodeLayout();
  v9 = swift_allocObject();
  swift_beginAccess();
  *(v9 + 16) = v42;
  *(v9 + 24) = v18;
  swift_beginAccess();
  *(v9 + 32) = v56;
  *(v9 + 40) = v19;
  swift_beginAccess();
  *(v9 + 48) = v55;
  *(v9 + 56) = v47;
  swift_beginAccess();
  *(v9 + 64) = v44;
  *(v9 + 72) = v46;
  swift_beginAccess();
  *(v9 + 80) = v43;
  *(v9 + 88) = v38;
  swift_beginAccess();
  *(v9 + 96) = v41;
  *(v9 + 104) = v45;
  swift_beginAccess();
  v33 = v39;
  *(v9 + 112) = v40;
  *(v9 + 120) = v33;
  swift_beginAccess();
  v34 = v36;
  *(v9 + 128) = v37;
  *(v9 + 136) = v34;
  swift_beginAccess();
  *(v9 + 144) = v30;
  *(v9 + 152) = v29;
  *(v9 + 160) = v35;
  *(v9 + 168) = v32;
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v9;
}

void sub_1D6665AC4()
{
  if (!qword_1EDF08BE0)
  {
    sub_1D6665B58();
    sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08BE0);
    }
  }
}

void sub_1D6665B58()
{
  if (!qword_1EDF031A0)
  {
    sub_1D6665BEC();
    sub_1D5B58B84(&qword_1EDF251E8, sub_1D6665BEC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF031A0);
    }
  }
}

void sub_1D6665BEC()
{
  if (!qword_1EDF251E0)
  {
    sub_1D6665C70();
    sub_1D6665CC4();
    sub_1D6665D18();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF251E0);
    }
  }
}

unint64_t sub_1D6665C70()
{
  result = qword_1EDF27580;
  if (!qword_1EDF27580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27580);
  }

  return result;
}

unint64_t sub_1D6665CC4()
{
  result = qword_1EDF27588;
  if (!qword_1EDF27588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27588);
  }

  return result;
}

unint64_t sub_1D6665D18()
{
  result = qword_1EDF27590[0];
  if (!qword_1EDF27590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF27590);
  }

  return result;
}

unint64_t sub_1D6665DFC()
{
  result = qword_1EC886298;
  if (!qword_1EC886298)
  {
    sub_1D5C30060(255, &qword_1EC886290, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886298);
  }

  return result;
}

unint64_t sub_1D6665E8C()
{
  result = qword_1EDF226E8;
  if (!qword_1EDF226E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF226E8);
  }

  return result;
}

unint64_t sub_1D6665EE0()
{
  result = qword_1EDF0BFB0;
  if (!qword_1EDF0BFB0)
  {
    sub_1D5C30060(255, &qword_1EDF24748, sub_1D6665E8C, &type metadata for FormatFlexBoxNodeAlignItems, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFB0);
  }

  return result;
}

unint64_t sub_1D6665F70()
{
  result = qword_1EC8862A8;
  if (!qword_1EC8862A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862A8);
  }

  return result;
}

unint64_t sub_1D6665FC4()
{
  result = qword_1EC8862B0;
  if (!qword_1EC8862B0)
  {
    sub_1D5C30060(255, &qword_1EC8862A0, sub_1D6665F70, &type metadata for FormatFlexBoxNodeAlignContent, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862B0);
  }

  return result;
}

unint64_t sub_1D6666054()
{
  result = qword_1EDF1FB88;
  if (!qword_1EDF1FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FB88);
  }

  return result;
}

unint64_t sub_1D66660A8()
{
  result = qword_1EDF0BFA8;
  if (!qword_1EDF0BFA8)
  {
    sub_1D5C30060(255, &qword_1EDF24738, sub_1D6666054, &type metadata for FormatFlexBoxNodeJustifyContent, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFA8);
  }

  return result;
}

unint64_t sub_1D6666138()
{
  result = qword_1EC8862C0;
  if (!qword_1EC8862C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862C0);
  }

  return result;
}

unint64_t sub_1D666618C()
{
  result = qword_1EC8862C8;
  if (!qword_1EC8862C8)
  {
    sub_1D5C30060(255, &qword_1EC8862B8, sub_1D6666138, &type metadata for FormatFlexBoxNodeWrap, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862C8);
  }

  return result;
}

unint64_t sub_1D666621C()
{
  result = qword_1EDF233C8;
  if (!qword_1EDF233C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233C8);
  }

  return result;
}

unint64_t sub_1D6666270()
{
  result = qword_1EDF0BFB8;
  if (!qword_1EDF0BFB8)
  {
    sub_1D5C30060(255, &qword_1EDF24758, sub_1D666621C, &type metadata for FormatFlexBoxNodeDirection, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFB8);
  }

  return result;
}

unint64_t sub_1D6666300()
{
  result = qword_1EDF26150;
  if (!qword_1EDF26150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26150);
  }

  return result;
}

unint64_t sub_1D6666354()
{
  result = qword_1EDF0BFC0;
  if (!qword_1EDF0BFC0)
  {
    sub_1D5C30060(255, &qword_1EDF24768, sub_1D6666300, &type metadata for FormatFlexBoxNodeDisplay, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFC0);
  }

  return result;
}

unint64_t sub_1D66663E4()
{
  result = qword_1EDF297E8;
  if (!qword_1EDF297E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF297E8);
  }

  return result;
}

unint64_t sub_1D6666438()
{
  result = qword_1EC8862D8;
  if (!qword_1EC8862D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862D8);
  }

  return result;
}

unint64_t sub_1D666648C()
{
  result = qword_1EC8862E0;
  if (!qword_1EC8862E0)
  {
    sub_1D5C30060(255, &qword_1EC8862D0, sub_1D6666438, &type metadata for FormatOptionType, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862E0);
  }

  return result;
}

void sub_1D666651C()
{
  if (!qword_1EC8862E8)
  {
    sub_1D6666588();
    v0 = type metadata accessor for FormatUnboundValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8862E8);
    }
  }
}

unint64_t sub_1D6666588()
{
  result = qword_1EC8862F0;
  if (!qword_1EC8862F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862F0);
  }

  return result;
}

unint64_t sub_1D666668C()
{
  result = qword_1EC886308;
  if (!qword_1EC886308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886308);
  }

  return result;
}

void sub_1D66666E0()
{
  if (!qword_1EDF08868)
  {
    sub_1D5E1C3D8(255);
    sub_1D5B58B84(&qword_1EDF02AB8, sub_1D5E1C3D8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08868);
    }
  }
}

unint64_t sub_1D6666804()
{
  result = qword_1EDF32090;
  if (!qword_1EDF32090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32090);
  }

  return result;
}

unint64_t sub_1D6666858()
{
  result = qword_1EDF0FCB8;
  if (!qword_1EDF0FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FCB8);
  }

  return result;
}

unint64_t sub_1D66668AC()
{
  result = qword_1EDF27718;
  if (!qword_1EDF27718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27718);
  }

  return result;
}

unint64_t sub_1D6666900()
{
  result = qword_1EC886310;
  if (!qword_1EC886310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886310);
  }

  return result;
}

void sub_1D6666954()
{
  if (!qword_1EDF03D90)
  {
    sub_1D66669E8();
    sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03D90);
    }
  }
}

void sub_1D66669E8()
{
  if (!qword_1EDF0C4F8)
  {
    sub_1D6666A6C();
    sub_1D6666AC0();
    sub_1D6666B14();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C4F8);
    }
  }
}

unint64_t sub_1D6666A6C()
{
  result = qword_1EDF0DF18;
  if (!qword_1EDF0DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF18);
  }

  return result;
}

unint64_t sub_1D6666AC0()
{
  result = qword_1EDF0DF20;
  if (!qword_1EDF0DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF20);
  }

  return result;
}

unint64_t sub_1D6666B14()
{
  result = qword_1EDF0DF28;
  if (!qword_1EDF0DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF28);
  }

  return result;
}

unint64_t sub_1D6666B68()
{
  result = qword_1EDF0BF40;
  if (!qword_1EDF0BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF40);
  }

  return result;
}

void sub_1D6666BBC()
{
  if (!qword_1EDF08C48)
  {
    sub_1D6666C50();
    sub_1D5B58B84(&qword_1EDF03278, sub_1D6666C50);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08C48);
    }
  }
}

void sub_1D6666C50()
{
  if (!qword_1EDF03270)
  {
    sub_1D66669E8();
    sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03270);
    }
  }
}

unint64_t sub_1D6666CE4()
{
  result = qword_1EDF0BF48;
  if (!qword_1EDF0BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF48);
  }

  return result;
}

unint64_t sub_1D6666DB4()
{
  result = qword_1EDF1F860;
  if (!qword_1EDF1F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F860);
  }

  return result;
}

unint64_t sub_1D6666E08()
{
  result = qword_1EDF1DCB8[0];
  if (!qword_1EDF1DCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1DCB8);
  }

  return result;
}

unint64_t sub_1D6666E5C()
{
  result = qword_1EDF09B10;
  if (!qword_1EDF09B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09B10);
  }

  return result;
}

unint64_t sub_1D6666EB0()
{
  result = qword_1EDF12758;
  if (!qword_1EDF12758)
  {
    sub_1D5C30060(255, &qword_1EDF12750, sub_1D6666E5C, &type metadata for FormatSupplementaryNodePinEdge, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12758);
  }

  return result;
}

unint64_t sub_1D6666FBC()
{
  result = qword_1EC886318;
  if (!qword_1EC886318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886318);
  }

  return result;
}

void sub_1D6667010()
{
  if (!qword_1EC886320)
  {
    sub_1D66670A4();
    sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886320);
    }
  }
}

void sub_1D66670A4()
{
  if (!qword_1EC886328)
  {
    sub_1D6667128();
    sub_1D666717C();
    sub_1D66671D0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886328);
    }
  }
}

unint64_t sub_1D6667128()
{
  result = qword_1EC886330;
  if (!qword_1EC886330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886330);
  }

  return result;
}

unint64_t sub_1D666717C()
{
  result = qword_1EC886338;
  if (!qword_1EC886338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886338);
  }

  return result;
}

unint64_t sub_1D66671D0()
{
  result = qword_1EC886340;
  if (!qword_1EC886340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886340);
  }

  return result;
}

unint64_t sub_1D6667224()
{
  result = qword_1EC886350;
  if (!qword_1EC886350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886350);
  }

  return result;
}

unint64_t sub_1D6667278()
{
  result = qword_1EC886358;
  if (!qword_1EC886358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886358);
  }

  return result;
}

void sub_1D66672CC()
{
  if (!qword_1EC886360)
  {
    sub_1D6667360();
    sub_1D5B58B84(&qword_1EC886370, sub_1D6667360);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886360);
    }
  }
}

void sub_1D6667360()
{
  if (!qword_1EC886368)
  {
    sub_1D66670A4();
    sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886368);
    }
  }
}

unint64_t sub_1D66673F4()
{
  result = qword_1EC886378;
  if (!qword_1EC886378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886378);
  }

  return result;
}

unint64_t sub_1D66674C4()
{
  result = qword_1EC886380;
  if (!qword_1EC886380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886380);
  }

  return result;
}

void sub_1D6667518()
{
  if (!qword_1EDF08E08)
  {
    sub_1D66675AC();
    sub_1D5B58B84(&qword_1EDF035F8, sub_1D66675AC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08E08);
    }
  }
}

void sub_1D66675AC()
{
  if (!qword_1EDF035F0)
  {
    sub_1D5CAFBB4();
    sub_1D5B58B84(&qword_1EDF25598, sub_1D5CAFBB4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF035F0);
    }
  }
}

unint64_t sub_1D66676BC()
{
  result = qword_1EDF04CF8;
  if (!qword_1EDF04CF8)
  {
    sub_1D5C34D84(255, &qword_1EDF1B030, &type metadata for FormatLocalizationString, MEMORY[0x1E69E62F8]);
    sub_1D6667758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CF8);
  }

  return result;
}

unint64_t sub_1D6667758()
{
  result = qword_1EDF0CEF8;
  if (!qword_1EDF0CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CEF8);
  }

  return result;
}

unint64_t sub_1D66677AC()
{
  result = qword_1EDF2AD50;
  if (!qword_1EDF2AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD50);
  }

  return result;
}

unint64_t sub_1D6667800()
{
  result = qword_1EC886388;
  if (!qword_1EC886388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886388);
  }

  return result;
}

unint64_t sub_1D6667854()
{
  result = qword_1EDF24818;
  if (!qword_1EDF24818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24818);
  }

  return result;
}

unint64_t sub_1D66678A8()
{
  result = qword_1EDF2DB38;
  if (!qword_1EDF2DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB38);
  }

  return result;
}

unint64_t sub_1D66678FC()
{
  result = qword_1EDF225D8;
  if (!qword_1EDF225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF225D8);
  }

  return result;
}

void sub_1D6667950()
{
  if (!qword_1EC886390)
  {
    sub_1D66679E4();
    sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886390);
    }
  }
}

void sub_1D66679E4()
{
  if (!qword_1EC886398)
  {
    sub_1D6667A68();
    sub_1D6667ABC();
    sub_1D6667B10();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886398);
    }
  }
}

unint64_t sub_1D6667A68()
{
  result = qword_1EC8863A0;
  if (!qword_1EC8863A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863A0);
  }

  return result;
}

unint64_t sub_1D6667ABC()
{
  result = qword_1EC8863A8;
  if (!qword_1EC8863A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863A8);
  }

  return result;
}

unint64_t sub_1D6667B10()
{
  result = qword_1EC8863B0;
  if (!qword_1EC8863B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863B0);
  }

  return result;
}

void sub_1D6667B64()
{
  if (!qword_1EC8863C0)
  {
    sub_1D6667BF8();
    sub_1D5B58B84(&qword_1EC8863D0, sub_1D6667BF8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8863C0);
    }
  }
}

void sub_1D6667BF8()
{
  if (!qword_1EC8863C8)
  {
    sub_1D66679E4();
    sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8863C8);
    }
  }
}

void sub_1D6667D08()
{
  if (!qword_1EC8863D8)
  {
    sub_1D6667D9C();
    sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8863D8);
    }
  }
}

void sub_1D6667D9C()
{
  if (!qword_1EC8863E0)
  {
    sub_1D6667E20();
    sub_1D6667E74();
    sub_1D6667EC8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8863E0);
    }
  }
}

unint64_t sub_1D6667E20()
{
  result = qword_1EC8863E8;
  if (!qword_1EC8863E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863E8);
  }

  return result;
}

unint64_t sub_1D6667E74()
{
  result = qword_1EC8863F0;
  if (!qword_1EC8863F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863F0);
  }

  return result;
}

unint64_t sub_1D6667EC8()
{
  result = qword_1EC8863F8;
  if (!qword_1EC8863F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863F8);
  }

  return result;
}

void sub_1D6667F1C()
{
  if (!qword_1EC886408)
  {
    sub_1D6667FB0();
    sub_1D5B58B84(&qword_1EC886418, sub_1D6667FB0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886408);
    }
  }
}

void sub_1D6667FB0()
{
  if (!qword_1EC886410)
  {
    sub_1D6667D9C();
    sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886410);
    }
  }
}

void sub_1D66680A8()
{
  if (!qword_1EDF19E30)
  {
    sub_1D666813C();
    sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E30);
    }
  }
}

void sub_1D666813C()
{
  if (!qword_1EDF24E40)
  {
    sub_1D66681C0();
    sub_1D6668214();
    sub_1D6668268();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E40);
    }
  }
}

unint64_t sub_1D66681C0()
{
  result = qword_1EDF1F270;
  if (!qword_1EDF1F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F270);
  }

  return result;
}

unint64_t sub_1D6668214()
{
  result = qword_1EDF1F278;
  if (!qword_1EDF1F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F278);
  }

  return result;
}

unint64_t sub_1D6668268()
{
  result = qword_1EDF1F280;
  if (!qword_1EDF1F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F280);
  }

  return result;
}

void sub_1D66682BC()
{
  if (!qword_1EDF089C8)
  {
    sub_1D6668350();
    sub_1D5B58B84(&qword_1EDF02D78, sub_1D6668350);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF089C8);
    }
  }
}

void sub_1D6668350()
{
  if (!qword_1EDF02D70)
  {
    sub_1D666813C();
    sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02D70);
    }
  }
}

void sub_1D6668448()
{
  if (!qword_1EDF03D20)
  {
    sub_1D66684DC();
    sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03D20);
    }
  }
}

void sub_1D66684DC()
{
  if (!qword_1EDF0C418)
  {
    sub_1D6668560();
    sub_1D66685B4();
    sub_1D6668608();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C418);
    }
  }
}

unint64_t sub_1D6668560()
{
  result = qword_1EDF082D0;
  if (!qword_1EDF082D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082D0);
  }

  return result;
}

unint64_t sub_1D66685B4()
{
  result = qword_1EDF082D8;
  if (!qword_1EDF082D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082D8);
  }

  return result;
}

unint64_t sub_1D6668608()
{
  result = qword_1EDF082E0;
  if (!qword_1EDF082E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082E0);
  }

  return result;
}

void sub_1D666865C()
{
  if (!qword_1EDF089D0)
  {
    sub_1D66686F0();
    sub_1D5B58B84(&qword_1EDF02D88, sub_1D66686F0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF089D0);
    }
  }
}

void sub_1D66686F0()
{
  if (!qword_1EDF02D80)
  {
    sub_1D66684DC();
    sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02D80);
    }
  }
}

void sub_1D6668800()
{
  if (!qword_1EDF1A080)
  {
    sub_1D6668894();
    sub_1D5B58B84(&qword_1EDF252E8, sub_1D6668894);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A080);
    }
  }
}

void sub_1D6668894()
{
  if (!qword_1EDF252E0)
  {
    sub_1D6668918();
    sub_1D666896C();
    sub_1D66689C0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF252E0);
    }
  }
}

unint64_t sub_1D6668918()
{
  result = qword_1EDF29A28;
  if (!qword_1EDF29A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A28);
  }

  return result;
}

unint64_t sub_1D666896C()
{
  result = qword_1EDF29A30;
  if (!qword_1EDF29A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A30);
  }

  return result;
}

unint64_t sub_1D66689C0()
{
  result = qword_1EDF29A48;
  if (!qword_1EDF29A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A48);
  }

  return result;
}

unint64_t sub_1D6668A14()
{
  result = qword_1EDF1B350;
  if (!qword_1EDF1B350)
  {
    sub_1D5B5BF78(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&unk_1EDF45930, type metadata accessor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B350);
  }

  return result;
}

void sub_1D6668AEC()
{
  if (!qword_1EDF08C88)
  {
    sub_1D6668B80();
    sub_1D5B58B84(&qword_1EDF032F8, sub_1D6668B80);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08C88);
    }
  }
}

void sub_1D6668B80()
{
  if (!qword_1EDF032F0)
  {
    sub_1D6668894();
    sub_1D5B58B84(&qword_1EDF252E8, sub_1D6668894);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF032F0);
    }
  }
}

unint64_t sub_1D6668C90()
{
  result = qword_1EDF2FB68;
  if (!qword_1EDF2FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB68);
  }

  return result;
}

unint64_t sub_1D6668CE4()
{
  result = qword_1EDF0F908;
  if (!qword_1EDF0F908)
  {
    sub_1D5C30060(255, &qword_1EDF0F900, sub_1D615B9E8, &type metadata for FormatVisibility, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F908);
  }

  return result;
}

uint64_t objectdestroy_13144Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D6668DBC(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF17EF8, sub_1D6669FF8, sub_1D6669C58);
  v60 = v2;
  v58 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v59 = &v48 - v4;
  sub_1D5C2E60C(0, &qword_1EDF17ED8, sub_1D615E8B4, sub_1D615E908);
  v6 = v5;
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v48 - v8;
  sub_1D6703A9C();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66699AC();
  sub_1D5B58B84(&qword_1EDF0C4A0, sub_1D66699AC);
  v14 = v82;
  sub_1D7264B0C();
  v15 = v14;
  if (v14)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  v82 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v63;
  if (v17)
  {
    v19 = sub_1D726433C();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 48);
      while (*v21 != 1)
      {
        v21 += 24;
        if (!--v20)
        {
          goto LABEL_7;
        }
      }

      v25 = *(v21 - 2);
      v24 = *(v21 - 1);

      v26 = sub_1D66163E4();
      sub_1D5E2D970();
      v27 = swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v24;
      *(v28 + 16) = v26;
      v15 = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v62 + 8))(v13, v18);
      goto LABEL_14;
    }

LABEL_7:
  }

  v22 = sub_1D5C31D18(v13, 0, 0, 0, sub_1D6703A9C);
  v57 = v23;
  v76 = xmmword_1D728CF30;
  LOBYTE(v77) = 0;
  v53 = sub_1D72642BC();
  v54 = v22;
  v56 = v29;
  v55 = xmmword_1D7297410;
  v76 = xmmword_1D7297410;
  LOBYTE(v77) = 0;
  v30 = sub_1D726434C();
  if (v30)
  {
    v68 = v55;
    LOBYTE(v69) = 0;
    sub_1D6703BC0();
    v31 = v82;
    sub_1D726431C();
    *&v55 = sub_1D725A74C();
    (*(v61 + 8))(v31, v6);
  }

  else
  {
    *&v55 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v76 = xmmword_1D72BAA60;
  LOBYTE(v77) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v33 = v68;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v76 = xmmword_1D72BAA70;
  LOBYTE(v77) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v82 = v33;
  v34 = v68;
  v68 = xmmword_1D72BAA80;
  LOBYTE(v69) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v61 = v34;
  v52 = *(&v76 + 1);
  v35 = v76;
  v36 = v77;
  v74 = xmmword_1D72BAA90;
  v75 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v50 = v35;
  v51 = v36;
  v71 = v79;
  v72 = v80;
  v73 = v81;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v66 = xmmword_1D72BAAA0;
  v67 = 0;
  v49 = sub_1D726423C();
  v48 = xmmword_1D72BAAB0;
  v66 = xmmword_1D72BAAB0;
  v67 = 0;
  v37 = v13;
  if (sub_1D726434C())
  {
    v64 = v48;
    v65 = 0;
    sub_1D6703B30();
    v39 = v59;
    v38 = v60;
    sub_1D726431C();
    v40 = sub_1D725A74C();
    (*(v58 + 8))(v39, v38);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  (*(v62 + 8))(v37, v63);
  type metadata accessor for FormatIssueCoverNodeStyle();
  v15 = swift_allocObject();
  swift_beginAccess();
  v41 = v57;
  *(v15 + 16) = v54;
  *(v15 + 24) = v41;
  v42 = v56;
  *(v15 + 32) = v53;
  *(v15 + 40) = v42;
  swift_beginAccess();
  v43 = v82;
  *(v15 + 48) = v55;
  *(v15 + 56) = v43;
  v44 = v50;
  *(v15 + 64) = v61;
  *(v15 + 72) = v44;
  *(v15 + 80) = v52;
  *(v15 + 88) = v51;
  v45 = v71;
  v46 = v72;
  *(v15 + 128) = v70;
  *(v15 + 144) = v45;
  *(v15 + 160) = v46;
  *(v15 + 176) = v73;
  v47 = v69;
  *(v15 + 96) = v68;
  *(v15 + 112) = v47;
  *(v15 + 177) = v49;
  swift_beginAccess();
  *(v15 + 184) = v40;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

void sub_1D6669884()
{
  if (!qword_1EDF08B10)
  {
    sub_1D6669918();
    sub_1D5B58B84(&qword_1EDF03008, sub_1D6669918);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B10);
    }
  }
}

void sub_1D6669918()
{
  if (!qword_1EDF03000)
  {
    sub_1D66699AC();
    sub_1D5B58B84(&qword_1EDF0C4A0, sub_1D66699AC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03000);
    }
  }
}

void sub_1D66699AC()
{
  if (!qword_1EDF0C498)
  {
    sub_1D6669A30();
    sub_1D6669A84();
    sub_1D6669AD8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C498);
    }
  }
}

unint64_t sub_1D6669A30()
{
  result = qword_1EDF0C320;
  if (!qword_1EDF0C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C320);
  }

  return result;
}

unint64_t sub_1D6669A84()
{
  result = qword_1EDF0C328;
  if (!qword_1EDF0C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C328);
  }

  return result;
}

unint64_t sub_1D6669AD8()
{
  result = qword_1EDF0C330;
  if (!qword_1EDF0C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C330);
  }

  return result;
}

unint64_t sub_1D6669BBC()
{
  result = qword_1EDF04DB8;
  if (!qword_1EDF04DB8)
  {
    sub_1D5C34D84(255, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
    sub_1D6669C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04DB8);
  }

  return result;
}

unint64_t sub_1D6669C58()
{
  result = qword_1EDF0DB10;
  if (!qword_1EDF0DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DB10);
  }

  return result;
}

unint64_t sub_1D6669CAC()
{
  result = qword_1EDF04CA0;
  if (!qword_1EDF04CA0)
  {
    sub_1D5C34D84(255, &qword_1EDF04CA8, &type metadata for FormatIssueCoverNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D615E908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CA0);
  }

  return result;
}

void sub_1D6669D48()
{
  if (!qword_1EDF03D58)
  {
    sub_1D6669DDC();
    sub_1D5B58B84(&qword_1EDF0C490, sub_1D6669DDC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03D58);
    }
  }
}

void sub_1D6669DDC()
{
  if (!qword_1EDF0C488)
  {
    sub_1D6669E60();
    sub_1D6669EB4();
    sub_1D6669F08();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C488);
    }
  }
}

unint64_t sub_1D6669E60()
{
  result = qword_1EDF0C2F8;
  if (!qword_1EDF0C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C2F8);
  }

  return result;
}

unint64_t sub_1D6669EB4()
{
  result = qword_1EDF0C300;
  if (!qword_1EDF0C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C300);
  }

  return result;
}

unint64_t sub_1D6669F08()
{
  result = qword_1EDF0C308;
  if (!qword_1EDF0C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C308);
  }

  return result;
}

unint64_t sub_1D6669F5C()
{
  result = qword_1EDF04DB0;
  if (!qword_1EDF04DB0)
  {
    sub_1D5C34D84(255, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
    sub_1D6669FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04DB0);
  }

  return result;
}

unint64_t sub_1D6669FF8()
{
  result = qword_1EDF0DB00;
  if (!qword_1EDF0DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DB00);
  }

  return result;
}

void sub_1D666A04C()
{
  if (!qword_1EDF08B08)
  {
    sub_1D666A0E0();
    sub_1D5B58B84(&qword_1EDF02FF8, sub_1D666A0E0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B08);
    }
  }
}

void sub_1D666A0E0()
{
  if (!qword_1EDF02FF0)
  {
    sub_1D6669DDC();
    sub_1D5B58B84(&qword_1EDF0C490, sub_1D6669DDC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02FF0);
    }
  }
}

uint64_t sub_1D666A204(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BBD8, sub_1D618028C, sub_1D61802E0);
  v3 = v2;
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v41 - v5;
  sub_1D6703978();
  v8 = v7;
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666AA54();
  v13 = v12;
  sub_1D5B58B84(&qword_1EDF24F38, sub_1D666AA54);
  v14 = v52;
  sub_1D7264B0C();
  v15 = v14;
  if (v14)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v13;
  }

  v52 = v6;
  v16 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1D7264AFC();
  v18 = Dictionary<>.errorOnUnknownKeys.getter(v17);

  if (v18)
  {
    v19 = sub_1D726433C();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 48);
      while (*v21 != 1)
      {
        v21 += 24;
        if (!--v20)
        {
          goto LABEL_7;
        }
      }

      v25 = *(v21 - 2);
      v24 = *(v21 - 1);

      v13 = sub_1D6616890();
      sub_1D5E2D970();
      v15 = swift_allocError();
      *v26 = v25;
      *(v26 + 8) = v24;
      *(v26 + 16) = v13;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v16 + 8))(v11, v8);
      goto LABEL_10;
    }

LABEL_7:
  }

  v45 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D6703978);
  v23 = v22;
  v50 = xmmword_1D728CF30;
  v51 = 0;
  v42 = sub_1D72642BC();
  v44 = v28;
  v43 = xmmword_1D7297410;
  v50 = xmmword_1D7297410;
  v51 = 0;
  v29 = sub_1D726434C();
  if (v29)
  {
    v48 = v43;
    v49 = 0;
    sub_1D6703A0C();
    v30 = v52;
    sub_1D726431C();
    v31 = sub_1D725A74C();
    v32 = v30;
    v33 = v31;
    (*(v46 + 8))(v32, v3);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v50 = xmmword_1D72BAA60;
  v51 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v52 = v33;
  v34 = v11;
  v35 = v48;
  v50 = xmmword_1D72BAA70;
  v51 = 0;
  sub_1D5B570F8();
  v36 = v8;
  sub_1D726427C();
  v37 = v48;
  v50 = xmmword_1D72BAA80;
  v51 = 0;
  sub_1D726427C();
  v46 = v48;
  v50 = xmmword_1D72BAA90;
  v51 = 0;
  v38 = sub_1D726423C();
  MEMORY[8](v34, v36);
  type metadata accessor for FormatProgressViewNodeStyle();
  v13 = swift_allocObject();
  swift_beginAccess();
  *(v13 + 16) = v45;
  *(v13 + 24) = v23;
  v39 = v44;
  *(v13 + 32) = v42;
  *(v13 + 40) = v39;
  swift_beginAccess();
  *(v13 + 48) = v52;
  *(v13 + 56) = v35;
  v40 = v46;
  *(v13 + 64) = v37;
  *(v13 + 72) = v40;
  *(v13 + 80) = v38;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

void sub_1D666A92C()
{
  if (!qword_1EDF08A60)
  {
    sub_1D666A9C0();
    sub_1D5B58B84(&qword_1EDF02EA8, sub_1D666A9C0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A60);
    }
  }
}

void sub_1D666A9C0()
{
  if (!qword_1EDF02EA0)
  {
    sub_1D666AA54();
    sub_1D5B58B84(&qword_1EDF24F38, sub_1D666AA54);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02EA0);
    }
  }
}

void sub_1D666AA54()
{
  if (!qword_1EDF24F30)
  {
    sub_1D666AAD8();
    sub_1D666AB2C();
    sub_1D666AB80();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F30);
    }
  }
}

unint64_t sub_1D666AAD8()
{
  result = qword_1EDF22178;
  if (!qword_1EDF22178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22178);
  }

  return result;
}

unint64_t sub_1D666AB2C()
{
  result = qword_1EDF22180;
  if (!qword_1EDF22180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22180);
  }

  return result;
}

unint64_t sub_1D666AB80()
{
  result = qword_1EDF22188[0];
  if (!qword_1EDF22188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF22188);
  }

  return result;
}

unint64_t sub_1D666AC64()
{
  result = qword_1EDF04C10;
  if (!qword_1EDF04C10)
  {
    sub_1D5C34D84(255, &qword_1EDF04C18, &type metadata for FormatProgressViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D61802E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04C10);
  }

  return result;
}

void sub_1D666AD00()
{
  if (!qword_1EDF03D40)
  {
    sub_1D666AD94();
    sub_1D5B58B84(&qword_1EDF0C460, sub_1D666AD94);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03D40);
    }
  }
}

void sub_1D666AD94()
{
  if (!qword_1EDF0C458)
  {
    sub_1D666AE18();
    sub_1D666AE6C();
    sub_1D666AEC0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C458);
    }
  }
}

unint64_t sub_1D666AE18()
{
  result = qword_1EDF0AF68;
  if (!qword_1EDF0AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF68);
  }

  return result;
}

unint64_t sub_1D666AE6C()
{
  result = qword_1EDF0AF70;
  if (!qword_1EDF0AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF70);
  }

  return result;
}

unint64_t sub_1D666AEC0()
{
  result = qword_1EDF0AF78;
  if (!qword_1EDF0AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF78);
  }

  return result;
}

void sub_1D666AF14()
{
  if (!qword_1EDF08A58)
  {
    sub_1D666AFA8();
    sub_1D5B58B84(&qword_1EDF02E98, sub_1D666AFA8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A58);
    }
  }
}

void sub_1D666AFA8()
{
  if (!qword_1EDF02E90)
  {
    sub_1D666AD94();
    sub_1D5B58B84(&qword_1EDF0C460, sub_1D666AD94);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02E90);
    }
  }
}

unint64_t sub_1D666B0B8()
{
  result = qword_1EC886420;
  if (!qword_1EC886420)
  {
    sub_1D5CC11B8(255, &qword_1EDF3BB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886420);
  }

  return result;
}

unint64_t sub_1D666B130()
{
  result = qword_1EDF331D8;
  if (!qword_1EDF331D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331D8);
  }

  return result;
}

void sub_1D666B184()
{
  if (!qword_1EDF088D8)
  {
    sub_1D5E1C348(255);
    sub_1D5B58B84(&qword_1EDF02B98, sub_1D5E1C348);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF088D8);
    }
  }
}

unint64_t sub_1D666B294()
{
  result = qword_1EDF11D90;
  if (!qword_1EDF11D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11D90);
  }

  return result;
}

unint64_t sub_1D666B2E8()
{
  result = qword_1EC886428;
  if (!qword_1EC886428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886428);
  }

  return result;
}

unint64_t sub_1D666B33C()
{
  result = qword_1EC886430;
  if (!qword_1EC886430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886430);
  }

  return result;
}

unint64_t sub_1D666B390()
{
  result = qword_1EC886440;
  if (!qword_1EC886440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886440);
  }

  return result;
}

unint64_t sub_1D666B3E4()
{
  result = qword_1EC886448;
  if (!qword_1EC886448)
  {
    sub_1D5C30060(255, &qword_1EC886438, sub_1D666B390, &type metadata for FormatMediaTimingFunctionName, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886448);
  }

  return result;
}

void sub_1D666B474()
{
  if (!qword_1EDF03D88)
  {
    sub_1D666B508();
    sub_1D5B58B84(&qword_1EDF0C4F0, sub_1D666B508);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03D88);
    }
  }
}

void sub_1D666B508()
{
  if (!qword_1EDF0C4E8)
  {
    sub_1D666B58C();
    sub_1D666B5E0();
    sub_1D666B634();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C4E8);
    }
  }
}

unint64_t sub_1D666B58C()
{
  result = qword_1EDF0DEA0;
  if (!qword_1EDF0DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEA0);
  }

  return result;
}

unint64_t sub_1D666B5E0()
{
  result = qword_1EDF0DEA8;
  if (!qword_1EDF0DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEA8);
  }

  return result;
}

unint64_t sub_1D666B634()
{
  result = qword_1EDF0DEB0;
  if (!qword_1EDF0DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEB0);
  }

  return result;
}

unint64_t sub_1D666B688()
{
  result = qword_1EDF100A0;
  if (!qword_1EDF100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF100A0);
  }

  return result;
}

unint64_t sub_1D666B6DC()
{
  result = qword_1EDF0F880;
  if (!qword_1EDF0F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F880);
  }

  return result;
}

unint64_t sub_1D666B730()
{
  result = qword_1EDF104B0;
  if (!qword_1EDF104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF104B0);
  }

  return result;
}

unint64_t sub_1D666B784()
{
  result = qword_1EDF0EC20;
  if (!qword_1EDF0EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EC20);
  }

  return result;
}

void sub_1D666B7D8()
{
  if (!qword_1EC886450)
  {
    sub_1D666B86C();
    sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886450);
    }
  }
}

void sub_1D666B86C()
{
  if (!qword_1EC886458)
  {
    sub_1D666B508();
    sub_1D5B58B84(&qword_1EDF0C4F0, sub_1D666B508);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886458);
    }
  }
}

unint64_t sub_1D666B990()
{
  result = qword_1EC886468;
  if (!qword_1EC886468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886468);
  }

  return result;
}

unint64_t sub_1D666B9E4()
{
  result = qword_1EC886470;
  if (!qword_1EC886470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886470);
  }

  return result;
}

unint64_t sub_1D666BA38()
{
  result = qword_1EC886478;
  if (!qword_1EC886478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886478);
  }

  return result;
}

unint64_t sub_1D666BA8C()
{
  result = qword_1EC886480;
  if (!qword_1EC886480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886480);
  }

  return result;
}

void sub_1D666BAE0()
{
  if (!qword_1EDF08900)
  {
    sub_1D666BB74();
    sub_1D5B58B84(&qword_1EDF02BE8, sub_1D666BB74);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08900);
    }
  }
}

void sub_1D666BB74()
{
  if (!qword_1EDF02BE0)
  {
    sub_1D5CDF268();
    sub_1D5B58B84(&qword_1EDF24D08, sub_1D5CDF268);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02BE0);
    }
  }
}

unint64_t sub_1D666BC84()
{
  result = qword_1EDF0EC58;
  if (!qword_1EDF0EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EC58);
  }

  return result;
}

unint64_t sub_1D666BCD8()
{
  result = qword_1EC886488;
  if (!qword_1EC886488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886488);
  }

  return result;
}

uint64_t objectdestroy_3587Tm()
{

  return swift_deallocObject();
}

void sub_1D666BD7C()
{
  if (!qword_1EDF08B98)
  {
    sub_1D666BE10();
    sub_1D5B58B84(&qword_1EDF03118, sub_1D666BE10);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B98);
    }
  }
}

void sub_1D666BE10()
{
  if (!qword_1EDF03110)
  {
    sub_1D5CCC8E4();
    sub_1D5B58B84(&qword_1EDF25158, sub_1D5CCC8E4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03110);
    }
  }
}

unint64_t sub_1D666BF34()
{
  result = qword_1EDF04D50;
  if (!qword_1EDF04D50)
  {
    sub_1D5C34D84(255, &qword_1EDF04D58, &type metadata for FormatWebEmbedNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D5CCC7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04D50);
  }

  return result;
}

void sub_1D666BFD0()
{
  if (!qword_1EDF19FB0)
  {
    sub_1D666C064();
    sub_1D5B58B84(&qword_1EDF25148, sub_1D666C064);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FB0);
    }
  }
}

void sub_1D666C064()
{
  if (!qword_1EDF25140)
  {
    sub_1D666C0E8();
    sub_1D666C13C();
    sub_1D666C190();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25140);
    }
  }
}

unint64_t sub_1D666C0E8()
{
  result = qword_1EDF26DA8;
  if (!qword_1EDF26DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DA8);
  }

  return result;
}

unint64_t sub_1D666C13C()
{
  result = qword_1EDF26DB0;
  if (!qword_1EDF26DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DB0);
  }

  return result;
}

unint64_t sub_1D666C190()
{
  result = qword_1EDF26DB8;
  if (!qword_1EDF26DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DB8);
  }

  return result;
}

void sub_1D666C1E4()
{
  if (!qword_1EDF08B90)
  {
    sub_1D666C278();
    sub_1D5B58B84(&qword_1EDF03108, sub_1D666C278);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B90);
    }
  }
}

void sub_1D666C278()
{
  if (!qword_1EDF03100)
  {
    sub_1D666C064();
    sub_1D5B58B84(&qword_1EDF25148, sub_1D666C064);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03100);
    }
  }
}

unint64_t sub_1D666C388()
{
  result = qword_1EC886490;
  if (!qword_1EC886490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886490);
  }

  return result;
}

unint64_t sub_1D666C3DC()
{
  result = qword_1EDF27400;
  if (!qword_1EDF27400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27400);
  }

  return result;
}

unint64_t sub_1D666C430()
{
  result = qword_1EDF11550;
  if (!qword_1EDF11550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11550);
  }

  return result;
}

unint64_t sub_1D666C484()
{
  result = qword_1EC886498;
  if (!qword_1EC886498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886498);
  }

  return result;
}

void sub_1D666C4D8()
{
  if (!qword_1EDF03CC0)
  {
    sub_1D666C56C();
    sub_1D5B58B84(&qword_1EDF0C360, sub_1D666C56C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03CC0);
    }
  }
}

void sub_1D666C56C()
{
  if (!qword_1EDF0C358)
  {
    sub_1D666C5F0();
    sub_1D666C644();
    sub_1D666C698();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C358);
    }
  }
}

unint64_t sub_1D666C5F0()
{
  result = qword_1EDF16700;
  if (!qword_1EDF16700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16700);
  }

  return result;
}

unint64_t sub_1D666C644()
{
  result = qword_1EDF16708;
  if (!qword_1EDF16708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16708);
  }

  return result;
}

unint64_t sub_1D666C698()
{
  result = qword_1EDF16710[0];
  if (!qword_1EDF16710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF16710);
  }

  return result;
}

unint64_t sub_1D666C6EC()
{
  result = qword_1EDF166B8;
  if (!qword_1EDF166B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166B8);
  }

  return result;
}

unint64_t sub_1D666C740()
{
  result = qword_1EDF166D0;
  if (!qword_1EDF166D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166D0);
  }

  return result;
}

void sub_1D666C794()
{
  if (!qword_1EDF087E8)
  {
    sub_1D666C828();
    sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087E8);
    }
  }
}

void sub_1D666C828()
{
  if (!qword_1EDF029B0)
  {
    sub_1D666C56C();
    sub_1D5B58B84(&qword_1EDF0C360, sub_1D666C56C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF029B0);
    }
  }
}

unint64_t sub_1D666C94C()
{
  result = qword_1EDF166D8;
  if (!qword_1EDF166D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166D8);
  }

  return result;
}

unint64_t sub_1D666C9A0()
{
  result = qword_1EDF166C8;
  if (!qword_1EDF166C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF166C8);
  }

  return result;
}

void sub_1D666C9F4()
{
  if (!qword_1EC8864A0)
  {
    sub_1D666CA88();
    sub_1D5B58B84(&qword_1EC8864C8, sub_1D666CA88);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8864A0);
    }
  }
}

void sub_1D666CA88()
{
  if (!qword_1EC8864A8)
  {
    sub_1D666CB0C();
    sub_1D666CB60();
    sub_1D666CBB4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8864A8);
    }
  }
}

unint64_t sub_1D666CB0C()
{
  result = qword_1EC8864B0;
  if (!qword_1EC8864B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8864B0);
  }

  return result;
}

unint64_t sub_1D666CB60()
{
  result = qword_1EC8864B8;
  if (!qword_1EC8864B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8864B8);
  }

  return result;
}

unint64_t sub_1D666CBB4()
{
  result = qword_1EC8864C0;
  if (!qword_1EC8864C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8864C0);
  }

  return result;
}

void sub_1D666CC08()
{
  if (!qword_1EC8864D0)
  {
    sub_1D666CC9C();
    sub_1D5B58B84(&qword_1EC8864E0, sub_1D666CC9C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8864D0);
    }
  }
}

void sub_1D666CC9C()
{
  if (!qword_1EC8864D8)
  {
    sub_1D666CA88();
    sub_1D5B58B84(&qword_1EC8864C8, sub_1D666CA88);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8864D8);
    }
  }
}

unint64_t sub_1D666CDAC()
{
  result = qword_1EDF3BDA0;
  if (!qword_1EDF3BDA0)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BD98, sub_1D5B4C754, sub_1D5B4C7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BDA0);
  }

  return result;
}

void sub_1D666CE3C()
{
  if (!qword_1EDF08D60)
  {
    sub_1D5E1C2D8(255);
    sub_1D5B58B84(&qword_1EDF034A8, sub_1D5E1C2D8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D60);
    }
  }
}

void sub_1D666CF60()
{
  if (!qword_1EDF08E70)
  {
    sub_1D666CFF4();
    sub_1D5B58B84(&qword_1EDF036C8, sub_1D666CFF4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08E70);
    }
  }
}

void sub_1D666CFF4()
{
  if (!qword_1EDF036C0)
  {
    sub_1D5CCFACC();
    sub_1D5B58B84(&qword_1EDF25648, sub_1D5CCFACC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF036C0);
    }
  }
}

void sub_1D666D104()
{
  if (!qword_1EDF19E38)
  {
    sub_1D666D198();
    sub_1D5B58B84(&qword_1EDF24E58, sub_1D666D198);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E38);
    }
  }
}

void sub_1D666D198()
{
  if (!qword_1EDF24E50)
  {
    sub_1D666D21C();
    sub_1D666D270();
    sub_1D666D2C4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E50);
    }
  }
}

unint64_t sub_1D666D21C()
{
  result = qword_1EDF1F838;
  if (!qword_1EDF1F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F838);
  }

  return result;
}

unint64_t sub_1D666D270()
{
  result = qword_1EDF1F840;
  if (!qword_1EDF1F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F840);
  }

  return result;
}

unint64_t sub_1D666D2C4()
{
  result = qword_1EDF1F848;
  if (!qword_1EDF1F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F848);
  }

  return result;
}

void sub_1D666D318()
{
  if (!qword_1EDF089D8)
  {
    sub_1D666D3AC();
    sub_1D5B58B84(&qword_1EDF02D98, sub_1D666D3AC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF089D8);
    }
  }
}

void sub_1D666D3AC()
{
  if (!qword_1EDF02D90)
  {
    sub_1D666D198();
    sub_1D5B58B84(&qword_1EDF24E58, sub_1D666D198);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02D90);
    }
  }
}

unint64_t sub_1D666D440()
{
  result = qword_1EDF0BFD8;
  if (!qword_1EDF0BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFD8);
  }

  return result;
}

void sub_1D666D510()
{
  if (!qword_1EDF08BA0)
  {
    sub_1D666D5A4();
    sub_1D5B58B84(&qword_1EDF03128, sub_1D666D5A4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08BA0);
    }
  }
}

void sub_1D666D5A4()
{
  if (!qword_1EDF03120)
  {
    sub_1D5C5D130();
    sub_1D5B58B84(&qword_1EDF25168, sub_1D5C5D130);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03120);
    }
  }
}

void sub_1D666D6B4()
{
  if (!qword_1EDF08A10)
  {
    sub_1D666D748();
    sub_1D5B58B84(&qword_1EDF02E08, sub_1D666D748);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A10);
    }
  }
}

void sub_1D666D748()
{
  if (!qword_1EDF02E00)
  {
    sub_1D5CA1AFC();
    sub_1D5B58B84(&qword_1EDF24EA8, sub_1D5CA1AFC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02E00);
    }
  }
}

unint64_t sub_1D666D858()
{
  result = qword_1EDF0EAE0;
  if (!qword_1EDF0EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAE0);
  }

  return result;
}

unint64_t sub_1D666D8AC()
{
  result = qword_1EC8864E8;
  if (!qword_1EC8864E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8864E8);
  }

  return result;
}

unint64_t sub_1D666D900()
{
  result = qword_1EDF28958;
  if (!qword_1EDF28958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28958);
  }

  return result;
}

unint64_t sub_1D666D954()
{
  result = qword_1EDF1EED8;
  if (!qword_1EDF1EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EED8);
  }

  return result;
}

unint64_t sub_1D666D9A8()
{
  result = qword_1EC8864F0;
  if (!qword_1EC8864F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8864F0);
  }

  return result;
}

unint64_t sub_1D666D9FC()
{
  result = qword_1EDF11B50;
  if (!qword_1EDF11B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B50);
  }

  return result;
}

unint64_t sub_1D666DA50()
{
  result = qword_1EDF12728;
  if (!qword_1EDF12728)
  {
    sub_1D5C30060(255, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12728);
  }

  return result;
}

void sub_1D666DAE0()
{
  if (!qword_1EDF087D8)
  {
    sub_1D5E1C214(255);
    sub_1D5B58B84(&qword_1EDF02998, sub_1D5E1C214);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087D8);
    }
  }
}

void sub_1D666DBF0()
{
  if (!qword_1EDF087E0)
  {
    sub_1D666DC84();
    sub_1D5B58B84(&qword_1EDF029A8, sub_1D666DC84);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087E0);
    }
  }
}

void sub_1D666DC84()
{
  if (!qword_1EDF029A0)
  {
    sub_1D5C85C70();
    sub_1D5B58B84(&qword_1EDF24B38, sub_1D5C85C70);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF029A0);
    }
  }
}

unint64_t sub_1D666DD94()
{
  result = qword_1EDF052F8;
  if (!qword_1EDF052F8)
  {
    sub_1D5C34D84(255, &qword_1EDF1B558, &type metadata for FormatTextNodeFormat.Token, MEMORY[0x1E69E62F8]);
    sub_1D61FFC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF052F8);
  }

  return result;
}

unint64_t sub_1D666DE30()
{
  result = qword_1EC8864F8;
  if (!qword_1EC8864F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8864F8);
  }

  return result;
}

unint64_t sub_1D666DE84()
{
  result = qword_1EC886500;
  if (!qword_1EC886500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886500);
  }

  return result;
}

unint64_t sub_1D666DED8()
{
  result = qword_1EDF0EA58;
  if (!qword_1EDF0EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EA58);
  }

  return result;
}

unint64_t sub_1D666DF2C()
{
  result = qword_1EDF1D328;
  if (!qword_1EDF1D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D328);
  }

  return result;
}

void sub_1D666DF80()
{
  if (!qword_1EDF19DA8)
  {
    sub_1D666E014();
    sub_1D5B58B84(&qword_1EDF24D38, sub_1D666E014);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DA8);
    }
  }
}

void sub_1D666E014()
{
  if (!qword_1EDF24D30)
  {
    sub_1D666E098();
    sub_1D666E0EC();
    sub_1D666E140();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24D30);
    }
  }
}

unint64_t sub_1D666E098()
{
  result = qword_1EDF1C100;
  if (!qword_1EDF1C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C100);
  }

  return result;
}

unint64_t sub_1D666E0EC()
{
  result = qword_1EDF1C108;
  if (!qword_1EDF1C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C108);
  }

  return result;
}

unint64_t sub_1D666E140()
{
  result = qword_1EDF1C110;
  if (!qword_1EDF1C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C110);
  }

  return result;
}

void sub_1D666E194()
{
  if (!qword_1EDF08918)
  {
    sub_1D666E228();
    sub_1D5B58B84(&qword_1EDF02C18, sub_1D666E228);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08918);
    }
  }
}

void sub_1D666E228()
{
  if (!qword_1EDF02C10)
  {
    sub_1D666E014();
    sub_1D5B58B84(&qword_1EDF24D38, sub_1D666E014);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02C10);
    }
  }
}

unint64_t sub_1D666E338()
{
  result = qword_1EDF10BB8;
  if (!qword_1EDF10BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BB8);
  }

  return result;
}

unint64_t sub_1D666E38C()
{
  result = qword_1EDF12778;
  if (!qword_1EDF12778)
  {
    sub_1D5C30060(255, &qword_1EDF12770, sub_1D5F89B28, &type metadata for FormatPatternDirection, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12778);
  }

  return result;
}

unint64_t sub_1D666E41C()
{
  result = qword_1EDF127A8;
  if (!qword_1EDF127A8)
  {
    sub_1D5C30060(255, &qword_1EDF127A0, sub_1D607BC84, &type metadata for FormatPatternAnchor, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127A8);
  }

  return result;
}

void sub_1D666E4AC()
{
  if (!qword_1EDF08BA8)
  {
    sub_1D5E1C1A4(255);
    sub_1D5B58B84(&qword_1EDF03138, sub_1D5E1C1A4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08BA8);
    }
  }
}

unint64_t sub_1D666E5D0()
{
  result = qword_1EDF05170;
  if (!qword_1EDF05170)
  {
    sub_1D5B5BF78(255, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF342F8, type metadata accessor for FormatBlock);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05170);
  }

  return result;
}

unint64_t sub_1D666E6A8()
{
  result = qword_1EDF1E450;
  if (!qword_1EDF1E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E450);
  }

  return result;
}

unint64_t sub_1D666E6FC()
{
  result = qword_1EDF1E460;
  if (!qword_1EDF1E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E460);
  }

  return result;
}

unint64_t sub_1D666E750()
{
  result = qword_1EDF2C168;
  if (!qword_1EDF2C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C168);
  }

  return result;
}

void sub_1D666E7A4()
{
  if (!qword_1EC886508)
  {
    sub_1D666E838();
    sub_1D5B58B84(&qword_1EC886530, sub_1D666E838);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886508);
    }
  }
}

void sub_1D666E838()
{
  if (!qword_1EC886510)
  {
    sub_1D666E8BC();
    sub_1D666E910();
    sub_1D666E964();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886510);
    }
  }
}

unint64_t sub_1D666E8BC()
{
  result = qword_1EC886518;
  if (!qword_1EC886518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886518);
  }

  return result;
}

unint64_t sub_1D666E910()
{
  result = qword_1EC886520;
  if (!qword_1EC886520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886520);
  }

  return result;
}

unint64_t sub_1D666E964()
{
  result = qword_1EC886528;
  if (!qword_1EC886528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886528);
  }

  return result;
}

void sub_1D666E9B8()
{
  if (!qword_1EC886538)
  {
    sub_1D666EA4C();
    sub_1D5B58B84(&qword_1EC886548, sub_1D666EA4C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886538);
    }
  }
}

void sub_1D666EA4C()
{
  if (!qword_1EC886540)
  {
    sub_1D666E838();
    sub_1D5B58B84(&qword_1EC886530, sub_1D666E838);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886540);
    }
  }
}

unint64_t sub_1D666EB44()
{
  result = qword_1EDF29CC8;
  if (!qword_1EDF29CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CC8);
  }

  return result;
}

void sub_1D666EB98()
{
  if (!qword_1EC886550)
  {
    sub_1D666EC2C();
    sub_1D5B58B84(&qword_1EC886578, sub_1D666EC2C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886550);
    }
  }
}

void sub_1D666EC2C()
{
  if (!qword_1EC886558)
  {
    sub_1D666ECB0();
    sub_1D666ED04();
    sub_1D666ED58();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886558);
    }
  }
}

unint64_t sub_1D666ECB0()
{
  result = qword_1EC886560;
  if (!qword_1EC886560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886560);
  }

  return result;
}

unint64_t sub_1D666ED04()
{
  result = qword_1EC886568;
  if (!qword_1EC886568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886568);
  }

  return result;
}

unint64_t sub_1D666ED58()
{
  result = qword_1EC886570;
  if (!qword_1EC886570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886570);
  }

  return result;
}

void sub_1D666EDAC()
{
  if (!qword_1EC886580)
  {
    sub_1D666EE40();
    sub_1D5B58B84(&qword_1EC886590, sub_1D666EE40);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886580);
    }
  }
}

void sub_1D666EE40()
{
  if (!qword_1EC886588)
  {
    sub_1D666EC2C();
    sub_1D5B58B84(&qword_1EC886578, sub_1D666EC2C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886588);
    }
  }
}

unint64_t sub_1D666EF50()
{
  result = qword_1EDF1C798;
  if (!qword_1EDF1C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C798);
  }

  return result;
}

uint64_t sub_1D666EFA4(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v3 = v2;
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v46 - v5;
  sub_1D67026A0();
  v8 = v7;
  *&v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666FDB4();
  sub_1D5B58B84(&qword_1EDF256E8, sub_1D666FDB4);
  v12 = v62;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
    goto LABEL_10;
  }

  v62 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v8;
  if (v15)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v19 - 2);
      v23 = *(v19 - 1);

      v25 = sub_1D6618374();
      sub_1D5E2D970();
      v26 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v23;
      *(v27 + 16) = v25;
      v13 = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v55 + 8))(v11, v8);
      goto LABEL_10;
    }

LABEL_7:
  }

  v20 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D67026A0);
  v22 = v21;
  v57 = xmmword_1D728CF30;
  v58 = 0;
  sub_1D6702734();
  sub_1D726431C();
  v52 = a1;
  v29 = *v59;
  v53 = *&v59[8];
  *v59 = xmmword_1D7297410;
  v59[16] = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v50 = v29;
  v30 = v57;
  *v59 = xmmword_1D72BAA60;
  v59[16] = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  *&v51 = 0;
  v49 = v30;
  v31 = v57;
  v48 = xmmword_1D72BAA70;
  *v59 = xmmword_1D72BAA70;
  v59[16] = 0;
  if (sub_1D726434C())
  {
    v57 = v48;
    v58 = 0;
    sub_1D5C9EEC4();
    v32 = v62;
    v33 = v51;
    sub_1D726431C();
    *&v51 = v33;
    if (v33)
    {
      (*(v55 + 8))(v11, v8);

      sub_1D5C92A8C(v49);

      a1 = v52;
      v13 = v51;
LABEL_10:
      sub_1D61E4FBC(a1, v13);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v8;
    }

    *&v48 = v31;
    v47 = sub_1D725A74C();
    (*(v54 + 8))(v32, v3);
  }

  else
  {
    *&v48 = v31;
    v47 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatCustomNodeStyle();
  *v59 = xmmword_1D72BAA80;
  v59[16] = 0;
  sub_1D5B58B84(&qword_1EDF29A08, type metadata accessor for FormatCustomNodeStyle);
  v34 = v51;
  sub_1D726427C();
  v13 = v34;
  if (v34)
  {
    (*(v55 + 8))(v11, v8);
    sub_1D5C92A8C(v49);

    a1 = v52;
    goto LABEL_10;
  }

  v35 = v57;
  type metadata accessor for FormatAnimationNodeStyle();
  *v59 = xmmword_1D72BAA90;
  v59[16] = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v62 = v35;
  v54 = v57;
  v51 = xmmword_1D72BAAA0;
  *v59 = xmmword_1D72BAAA0;
  v59[16] = 0;
  if (sub_1D726434C())
  {
    v57 = v51;
    v58 = 0;
    sub_1D726431C();
    v36 = v11;
    v37 = v56;
  }

  else
  {
    v36 = v11;
    v37 = 0;
  }

  v51 = xmmword_1D72BAAB0;
  *v59 = xmmword_1D72BAAB0;
  v59[16] = 0;
  if (sub_1D726434C())
  {
    v57 = v51;
    v58 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v38 = v56;
    sub_1D5EB1500(v56);
    sub_1D5EB15C4(v38);
  }

  else
  {
    v38 = 0x8000000000000000;
  }

  v51 = xmmword_1D72BAAC0;
  *v59 = xmmword_1D72BAAC0;
  v59[16] = 0;
  if (sub_1D726434C())
  {
    v57 = v51;
    v58 = 0;
    sub_1D726431C();
    v39 = v36;
    v40 = v56;
  }

  else
  {
    v39 = v36;
    v40 = 1;
  }

  v57 = xmmword_1D72BAAD0;
  v58 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  v41 = v40;
  (*(v55 + 8))(v39, v16);
  v42 = v60;
  v43 = v61;
  type metadata accessor for FormatCustomNode();
  v55 = *v59;
  v51 = *&v59[16];
  v8 = swift_allocObject();
  swift_beginAccess();
  *(v8 + 16) = v20;
  *(v8 + 24) = v22;
  *(v8 + 32) = v50;
  *(v8 + 40) = v53;
  v44 = v48;
  *(v8 + 56) = v49;
  *(v8 + 64) = v44;
  swift_beginAccess();
  v45 = v62;
  *(v8 + 72) = v47;
  *(v8 + 80) = v45;
  *(v8 + 88) = v54;
  swift_beginAccess();
  *(v8 + 96) = v37;
  swift_beginAccess();
  *(v8 + 104) = v38;
  swift_beginAccess();
  *(v8 + 112) = v41;
  *(v8 + 136) = v51;
  *(v8 + 120) = v55;
  *(v8 + 152) = v42;
  *(v8 + 160) = v43;
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v8;
}

void sub_1D666FC8C()
{
  if (!qword_1EDF08ED8)
  {
    sub_1D666FD20();
    sub_1D5B58B84(&qword_1EDF03798, sub_1D666FD20);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08ED8);
    }
  }
}

void sub_1D666FD20()
{
  if (!qword_1EDF03790)
  {
    sub_1D666FDB4();
    sub_1D5B58B84(&qword_1EDF256E8, sub_1D666FDB4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03790);
    }
  }
}

void sub_1D666FDB4()
{
  if (!qword_1EDF256E0)
  {
    sub_1D666FE38();
    sub_1D666FE8C();
    sub_1D666FEE0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF256E0);
    }
  }
}

unint64_t sub_1D666FE38()
{
  result = qword_1EDF30650;
  if (!qword_1EDF30650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30650);
  }

  return result;
}

unint64_t sub_1D666FE8C()
{
  result = qword_1EDF30658;
  if (!qword_1EDF30658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30658);
  }

  return result;
}

unint64_t sub_1D666FEE0()
{
  result = qword_1EDF30670;
  if (!qword_1EDF30670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30670);
  }

  return result;
}

unint64_t sub_1D666FFC4()
{
  result = qword_1EDF0F160;
  if (!qword_1EDF0F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F160);
  }

  return result;
}

void sub_1D6670018()
{
  if (!qword_1EC886598)
  {
    sub_1D66700AC();
    sub_1D5B58B84(&qword_1EC8865C0, sub_1D66700AC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886598);
    }
  }
}

void sub_1D66700AC()
{
  if (!qword_1EC8865A0)
  {
    sub_1D6670130();
    sub_1D6670184();
    sub_1D66701D8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8865A0);
    }
  }
}

unint64_t sub_1D6670130()
{
  result = qword_1EC8865A8;
  if (!qword_1EC8865A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8865A8);
  }

  return result;
}

unint64_t sub_1D6670184()
{
  result = qword_1EC8865B0;
  if (!qword_1EC8865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8865B0);
  }

  return result;
}

unint64_t sub_1D66701D8()
{
  result = qword_1EC8865B8;
  if (!qword_1EC8865B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8865B8);
  }

  return result;
}

void sub_1D667022C()
{
  if (!qword_1EC8865C8)
  {
    sub_1D66702C0();
    sub_1D5B58B84(&qword_1EC8865D8, sub_1D66702C0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8865C8);
    }
  }
}

void sub_1D66702C0()
{
  if (!qword_1EC8865D0)
  {
    sub_1D66700AC();
    sub_1D5B58B84(&qword_1EC8865C0, sub_1D66700AC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8865D0);
    }
  }
}

unint64_t sub_1D66703D0()
{
  result = qword_1EC8865E0;
  if (!qword_1EC8865E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8865E0);
  }

  return result;
}

unint64_t sub_1D6670424()
{
  result = qword_1EC8865E8;
  if (!qword_1EC8865E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8865E8);
  }

  return result;
}

void sub_1D6670478()
{
  if (!qword_1EDF1A238)
  {
    sub_1D667050C();
    sub_1D5B58B84(&qword_1EDF25658, sub_1D667050C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A238);
    }
  }
}

void sub_1D667050C()
{
  if (!qword_1EDF25650)
  {
    sub_1D6670590();
    sub_1D66705E4();
    sub_1D6670638();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25650);
    }
  }
}

unint64_t sub_1D6670590()
{
  result = qword_1EDF2F918;
  if (!qword_1EDF2F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F918);
  }

  return result;
}

unint64_t sub_1D66705E4()
{
  result = qword_1EDF2F920;
  if (!qword_1EDF2F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F920);
  }

  return result;
}

unint64_t sub_1D6670638()
{
  result = qword_1EDF2F928;
  if (!qword_1EDF2F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F928);
  }

  return result;
}

void sub_1D667068C()
{
  if (!qword_1EDF08E78)
  {
    sub_1D6670720();
    sub_1D5B58B84(&qword_1EDF036D8, sub_1D6670720);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08E78);
    }
  }
}

void sub_1D6670720()
{
  if (!qword_1EDF036D0)
  {
    sub_1D667050C();
    sub_1D5B58B84(&qword_1EDF25658, sub_1D667050C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF036D0);
    }
  }
}

unint64_t sub_1D6670830()
{
  result = qword_1EDF04E80;
  if (!qword_1EDF04E80)
  {
    sub_1D5C34D84(255, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
    sub_1D5C683E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04E80);
  }

  return result;
}

unint64_t sub_1D66708CC()
{
  result = qword_1EC8865F0;
  if (!qword_1EC8865F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8865F0);
  }

  return result;
}

uint64_t sub_1D6670920(void *a1)
{
  v2 = v1;
  sub_1D67021D4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6670DA0();
  sub_1D5B58B84(&qword_1EC886628, sub_1D6670DA0);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v14 - 2);
      v19 = *(v14 - 1);

      v21 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = 0uLL;
  v26 = 0;
  v15 = sub_1D72642BC();
  v17 = v16;
  v18 = v15;
  v25 = xmmword_1D728CF30;
  v26 = 0;
  sub_1D62079F4();
  sub_1D726431C();
  (*(v6 + 8))(v9, v5);
  v24 = v27;
  type metadata accessor for FormatAccessibilityLayoutValue();
  v5 = swift_allocObject();
  *(v5 + 16) = v18;
  *(v5 + 24) = v17;
  *(v5 + 32) = v24;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D6670C78()
{
  if (!qword_1EC8865F8)
  {
    sub_1D6670D0C();
    sub_1D5B58B84(&qword_1EC886630, sub_1D6670D0C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8865F8);
    }
  }
}

void sub_1D6670D0C()
{
  if (!qword_1EC886600)
  {
    sub_1D6670DA0();
    sub_1D5B58B84(&qword_1EC886628, sub_1D6670DA0);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886600);
    }
  }
}

void sub_1D6670DA0()
{
  if (!qword_1EC886608)
  {
    sub_1D6670E24();
    sub_1D6670E78();
    sub_1D6670ECC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886608);
    }
  }
}

unint64_t sub_1D6670E24()
{
  result = qword_1EC886610;
  if (!qword_1EC886610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886610);
  }

  return result;
}

unint64_t sub_1D6670E78()
{
  result = qword_1EC886618;
  if (!qword_1EC886618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886618);
  }

  return result;
}

unint64_t sub_1D6670ECC()
{
  result = qword_1EC886620;
  if (!qword_1EC886620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886620);
  }

  return result;
}

unint64_t sub_1D6670F9C()
{
  result = qword_1EC886638;
  if (!qword_1EC886638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886638);
  }

  return result;
}

unint64_t sub_1D6670FF0()
{
  result = qword_1EC886640;
  if (!qword_1EC886640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886640);
  }

  return result;
}

unint64_t sub_1D6671044()
{
  result = qword_1EDF0E228;
  if (!qword_1EDF0E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E228);
  }

  return result;
}

unint64_t sub_1D6671098()
{
  result = qword_1EC886648;
  if (!qword_1EC886648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886648);
  }

  return result;
}

unint64_t sub_1D66710EC()
{
  result = qword_1EDF0B9C0;
  if (!qword_1EDF0B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9C0);
  }

  return result;
}

unint64_t sub_1D6671140()
{
  result = qword_1EDF16468;
  if (!qword_1EDF16468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16468);
  }

  return result;
}

uint64_t sub_1D6671194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D66712B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79747265706F7270 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEC0000006E6F6974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2019912806 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D667146C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73B7660 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A69736572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D7473756A6461 && a2 == 0xEB0000000073746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 2019912806 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D66717F4(void *a1)
{
  v2 = v1;
  sub_1D6701C84();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6671F28();
  sub_1D5B58B84(&qword_1EC886688, sub_1D6671F28);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v14 - 2);
      v17 = *(v14 - 1);

      v19 = sub_1D661861C();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D6701B24();
  v51 = 0uLL;
  v52 = 0;
  sub_1D726431C();
  v42 = v43;
  v15 = *(&v44 + 1);
  v53 = v44;
  v16 = *(&v45 + 1);
  v40 = v45;
  v41 = v46;
  v51 = xmmword_1D728CF30;
  v52 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v38 = v15;
  v39 = v16;
  v22 = v43;
  v37 = v44;
  v51 = xmmword_1D7297410;
  v52 = 0;
  sub_1D726427C();
  v36 = v22;
  v34 = v43;
  v35 = v44;
  v51 = xmmword_1D72BAA60;
  v52 = 0;
  sub_1D66A0918();
  sub_1D726427C();
  v23 = v41;
  v24 = v39;
  v25 = v40;
  v26 = v38;
  (*(v6 + 8))(v9, v5);
  type metadata accessor for FormatAnimationNodeBasicAnimation();
  v5 = swift_allocObject();
  v27 = v47;
  *(v5 + 200) = v48;
  v28 = v50[0];
  *(v5 + 216) = v49;
  *(v5 + 232) = v28;
  *(v5 + 241) = *(v50 + 9);
  v29 = v43;
  *(v5 + 136) = v44;
  v30 = v46;
  *(v5 + 152) = v45;
  *(v5 + 168) = v30;
  *(v5 + 184) = v27;
  v31 = *(&v42 + 1);
  *(v5 + 16) = v42;
  *(v5 + 24) = v31;
  *(v5 + 32) = v53;
  *(v5 + 40) = v26;
  *(v5 + 48) = v25;
  *(v5 + 56) = v24;
  *(v5 + 64) = v23;
  v32 = *(&v36 + 1);
  *(v5 + 72) = v36;
  *(v5 + 80) = v32;
  *(v5 + 88) = v37;
  v33 = *(&v34 + 1);
  *(v5 + 96) = v34;
  *(v5 + 104) = v33;
  *(v5 + 112) = v35;
  *(v5 + 120) = v29;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D6671E00()
{
  if (!qword_1EC886658)
  {
    sub_1D6671E94();
    sub_1D5B58B84(&qword_1EC886690, sub_1D6671E94);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886658);
    }
  }
}

void sub_1D6671E94()
{
  if (!qword_1EC886660)
  {
    sub_1D6671F28();
    sub_1D5B58B84(&qword_1EC886688, sub_1D6671F28);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886660);
    }
  }
}

void sub_1D6671F28()
{
  if (!qword_1EC886668)
  {
    sub_1D6671FAC();
    sub_1D6672000();
    sub_1D6672054();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886668);
    }
  }
}

unint64_t sub_1D6671FAC()
{
  result = qword_1EC886670;
  if (!qword_1EC886670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886670);
  }

  return result;
}

unint64_t sub_1D6672000()
{
  result = qword_1EC886678;
  if (!qword_1EC886678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886678);
  }

  return result;
}

unint64_t sub_1D6672054()
{
  result = qword_1EC886680;
  if (!qword_1EC886680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886680);
  }

  return result;
}

unint64_t sub_1D66720A8()
{
  result = qword_1EDF0B980;
  if (!qword_1EDF0B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B980);
  }

  return result;
}

unint64_t sub_1D6672178()
{
  result = qword_1EDF0B988;
  if (!qword_1EDF0B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B988);
  }

  return result;
}

void sub_1D66721CC()
{
  if (!qword_1EDF15FD8)
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D5C71E64();
    v0 = type metadata accessor for FormatAnimationNodeKeyPathAnimation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF15FD8);
    }
  }
}

unint64_t sub_1D6672268()
{
  result = qword_1EC8866A0;
  if (!qword_1EC8866A0)
  {
    sub_1D5C30060(255, &qword_1EC886698, sub_1D619B420, &type metadata for FormatSizeEquation, type metadata accessor for FormatAnimationNodeKeyPathAnimation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866A0);
  }

  return result;
}

uint64_t sub_1D6672310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874615079656BLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616C756D7563 && a2 == 0xEA00000000006576 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697469646461 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6954616964656DLL && a2 == 0xEB00000000676E69 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D66724CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974616D696E61 && a2 == 0xEA0000000000736ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6954616964656DLL && a2 == 0xEB00000000676E69 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D66725F0(void *a1)
{
  v2 = v1;
  sub_1D6701A90();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6673130();
  sub_1D5B58B84(&qword_1EDF0C380, sub_1D6673130);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v2;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v14 - 2);
      v17 = *(v14 - 1);

      v19 = sub_1D6618808();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D6701B24();
  v65 = 0uLL;
  v66 = 0;
  sub_1D726431C();
  v56 = *(&v57 + 1);
  v53 = v57;
  v15 = *(&v58 + 1);
  v54 = v58;
  v16 = *(&v59 + 1);
  v55 = v59;
  v68 = v60;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v51 = v15;
  v52 = v16;
  v22 = *(&v57 + 1);
  v50 = v57;
  LODWORD(v15) = v58;
  v65 = xmmword_1D7297410;
  v66 = 0;
  sub_1D726427C();
  v67 = v15;
  v49 = v22;
  v23 = v57;
  LODWORD(v22) = v58;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v25 = v24;
  v57 = xmmword_1D72BAA60;
  LOBYTE(v58) = 0;
  v26 = sub_1D5C35368();
  v48 = v25;
  v47 = v26;
  sub_1D726427C();
  v45 = v23;
  v46 = v22;
  v27 = v65;
  v57 = xmmword_1D72BAA70;
  LOBYTE(v58) = 0;
  sub_1D726427C();
  v28 = v52;
  v29 = v67;
  v44 = v27;
  v30 = v65;
  v57 = xmmword_1D72BAA80;
  LOBYTE(v58) = 0;
  sub_1D726427C();
  v43 = v30;
  v31 = v65;
  v57 = xmmword_1D72BAA90;
  LOBYTE(v58) = 0;
  sub_1D726427C();
  v48 = v65;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  sub_1D66A0918();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for FormatAnimationNodeSpringAnimation();
  v2 = swift_allocObject();
  *(v2 + 273) = *&v64[9];
  v32 = v63;
  *(v2 + 264) = *v64;
  *(v2 + 248) = v32;
  v33 = v61;
  *(v2 + 232) = v62;
  *(v2 + 216) = v33;
  v34 = v59;
  *(v2 + 200) = v60;
  *(v2 + 184) = v34;
  v35 = v57;
  *(v2 + 168) = v58;
  v36 = v56;
  *(v2 + 16) = v53;
  *(v2 + 24) = v36;
  v37 = v51;
  *(v2 + 32) = v54;
  *(v2 + 40) = v37;
  *(v2 + 48) = v55;
  *(v2 + 56) = v28;
  *(v2 + 64) = v68;
  v38 = v49;
  *(v2 + 72) = v50;
  *(v2 + 80) = v38;
  *(v2 + 88) = v29;
  v39 = *(&v45 + 1);
  *(v2 + 96) = v45;
  *(v2 + 104) = v39;
  *(v2 + 112) = v46;
  v40 = v43;
  *(v2 + 120) = v44;
  *(v2 + 128) = v40;
  v41 = v48;
  *(v2 + 136) = v31;
  *(v2 + 144) = v41;
  *(v2 + 152) = v35;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

void sub_1D6673008()
{
  if (!qword_1EDF08800)
  {
    sub_1D667309C();
    sub_1D5B58B84(&qword_1EDF029E8, sub_1D667309C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08800);
    }
  }
}

void sub_1D667309C()
{
  if (!qword_1EDF029E0)
  {
    sub_1D6673130();
    sub_1D5B58B84(&qword_1EDF0C380, sub_1D6673130);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF029E0);
    }
  }
}

void sub_1D6673130()
{
  if (!qword_1EDF0C378)
  {
    sub_1D66731B4();
    sub_1D6673208();
    sub_1D667325C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C378);
    }
  }
}

unint64_t sub_1D66731B4()
{
  result = qword_1EDF16400;
  if (!qword_1EDF16400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16400);
  }

  return result;
}

unint64_t sub_1D6673208()
{
  result = qword_1EDF16408;
  if (!qword_1EDF16408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16408);
  }

  return result;
}

unint64_t sub_1D667325C()
{
  result = qword_1EDF16410;
  if (!qword_1EDF16410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16410);
  }

  return result;
}

uint64_t sub_1D6673340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874615079656BLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616C756D7563 && a2 == 0xEA00000000006576 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697469646461 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1936941421 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656E6666697473 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69706D6164 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x566C616974696E69 && a2 == 0xEF797469636F6C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6954616964656DLL && a2 == 0xEB00000000676E69 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D667363C(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF17EE8, sub_1D6701918, sub_1D6674084);
  v3 = v2;
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - v5;
  sub_1D670196C();
  v8 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6673DEC();
  sub_1D5B58B84(&qword_1EDF0C4D0, sub_1D6673DEC);
  v12 = v50;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v8;
  }

  v14 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v45;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v20 - 2);
      v23 = *(v20 - 1);

      v25 = sub_1D6618A84();
      sub_1D5E2D970();
      v13 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v11, v8);
      goto LABEL_10;
    }

LABEL_7:
  }

  v21 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D670196C);
  v50 = v22;
  v48 = xmmword_1D728CF30;
  v49 = 0;
  v42 = sub_1D72642BC();
  v43 = v27;
  v46 = xmmword_1D7297410;
  v47 = 0;
  sub_1D5C7B870();
  sub_1D726427C();
  v40 = *(&v48 + 1);
  v41 = v48;
  v39 = v49;
  sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
  v48 = xmmword_1D72BAA60;
  v49 = 0;
  sub_1D667443C();
  sub_1D726427C();
  v38 = v46;
  v48 = xmmword_1D72BAA70;
  v49 = 0;
  sub_1D667452C();
  sub_1D726427C();
  v37 = BYTE4(v46);
  v36 = v46;
  v35 = xmmword_1D72BAA80;
  v48 = xmmword_1D72BAA80;
  v49 = 0;
  if (sub_1D726434C())
  {
    v46 = v35;
    v47 = 0;
    sub_1D6701A00();
    sub_1D726431C();
    v29 = sub_1D725A74C();
    (*(v44 + 8))(v14, v3);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = v38;
  v31 = v36 | (v37 << 32);
  (*(v45 + 8))(v11, v8);
  type metadata accessor for FormatAnimationNodeStyle();
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  swift_beginAccess();
  v32 = v50;
  *(v8 + 16) = v21;
  *(v8 + 24) = v32;
  v33 = v43;
  *(v8 + 32) = v42;
  *(v8 + 40) = v33;
  v34 = v40;
  *(v8 + 48) = v41;
  *(v8 + 56) = v34;
  *(v8 + 64) = v39;
  swift_beginAccess();
  *(v8 + 72) = v30;

  *(v8 + 84) = BYTE4(v31);
  *(v8 + 80) = v31;
  swift_beginAccess();
  *(v8 + 88) = v29;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_1D6673CC4()
{
  if (!qword_1EDF08B88)
  {
    sub_1D6673D58();
    sub_1D5B58B84(&qword_1EDF030F8, sub_1D6673D58);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B88);
    }
  }
}

void sub_1D6673D58()
{
  if (!qword_1EDF030F0)
  {
    sub_1D6673DEC();
    sub_1D5B58B84(&qword_1EDF0C4D0, sub_1D6673DEC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF030F0);
    }
  }
}

void sub_1D6673DEC()
{
  if (!qword_1EDF0C4C8)
  {
    sub_1D6673E70();
    sub_1D6673EC4();
    sub_1D6673F18();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C4C8);
    }
  }
}

unint64_t sub_1D6673E70()
{
  result = qword_1EDF0D0F8;
  if (!qword_1EDF0D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D0F8);
  }

  return result;
}

unint64_t sub_1D6673EC4()
{
  result = qword_1EDF0D100;
  if (!qword_1EDF0D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D100);
  }

  return result;
}

unint64_t sub_1D6673F18()
{
  result = qword_1EDF0D108;
  if (!qword_1EDF0D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D108);
  }

  return result;
}

unint64_t sub_1D6673FE8()
{
  result = qword_1EDF04D30;
  if (!qword_1EDF04D30)
  {
    sub_1D5C34D84(255, &unk_1EDF04D38, &type metadata for FormatAnimationNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D6674084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04D30);
  }

  return result;
}

unint64_t sub_1D6674084()
{
  result = qword_1EDF0D0B8;
  if (!qword_1EDF0D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D0B8);
  }

  return result;
}

unint64_t sub_1D66740D8()
{
  result = qword_1EDF11D30;
  if (!qword_1EDF11D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11D30);
  }

  return result;
}

void sub_1D667412C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5C34D84(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D6674198()
{
  result = qword_1EC8866B0;
  if (!qword_1EC8866B0)
  {
    sub_1D667412C(255, &qword_1EC8866A8, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation);
    sub_1D66628CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866B0);
  }

  return result;
}

void sub_1D6674228()
{
  if (!qword_1EDF03D70)
  {
    sub_1D66742BC();
    sub_1D5B58B84(&qword_1EDF0C4C0, sub_1D66742BC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03D70);
    }
  }
}

void sub_1D66742BC()
{
  if (!qword_1EDF0C4B8)
  {
    sub_1D6674340();
    sub_1D6674394();
    sub_1D66743E8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C4B8);
    }
  }
}

unint64_t sub_1D6674340()
{
  result = qword_1EDF0D0D0;
  if (!qword_1EDF0D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D0D0);
  }

  return result;
}

unint64_t sub_1D6674394()
{
  result = qword_1EDF0D0D8;
  if (!qword_1EDF0D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D0D8);
  }

  return result;
}

unint64_t sub_1D66743E8()
{
  result = qword_1EDF0D0E0;
  if (!qword_1EDF0D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D0E0);
  }

  return result;
}

unint64_t sub_1D667443C()
{
  result = qword_1EDF052E0;
  if (!qword_1EDF052E0)
  {
    sub_1D5C34D84(255, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
    sub_1D66744D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF052E0);
  }

  return result;
}

unint64_t sub_1D66744D8()
{
  result = qword_1EDF16458;
  if (!qword_1EDF16458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16458);
  }

  return result;
}

unint64_t sub_1D667452C()
{
  result = qword_1EDF11D28;
  if (!qword_1EDF11D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11D28);
  }

  return result;
}

void sub_1D6674580()
{
  if (!qword_1EDF08B80)
  {
    sub_1D6674614();
    sub_1D5B58B84(&qword_1EDF030E8, sub_1D6674614);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B80);
    }
  }
}

void sub_1D6674614()
{
  if (!qword_1EDF030E0)
  {
    sub_1D66742BC();
    sub_1D5B58B84(&qword_1EDF0C4C0, sub_1D66742BC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF030E0);
    }
  }
}

void sub_1D6674724()
{
  if (!qword_1EDF1A290)
  {
    sub_1D66747B8();
    sub_1D5B58B84(&qword_1EDF25708, sub_1D66747B8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A290);
    }
  }
}

void sub_1D66747B8()
{
  if (!qword_1EDF25700)
  {
    sub_1D667483C();
    sub_1D6674890();
    sub_1D66748E4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25700);
    }
  }
}

unint64_t sub_1D667483C()
{
  result = qword_1EDF309C8;
  if (!qword_1EDF309C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF309C8);
  }

  return result;
}

unint64_t sub_1D6674890()
{
  result = qword_1EDF309D0;
  if (!qword_1EDF309D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF309D0);
  }

  return result;
}

unint64_t sub_1D66748E4()
{
  result = qword_1EDF309D8;
  if (!qword_1EDF309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF309D8);
  }

  return result;
}

void sub_1D6674938()
{
  if (!qword_1EDF08EF8[0])
  {
    sub_1D66749CC();
    sub_1D5B58B84(&qword_1EDF037D8, sub_1D66749CC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF08EF8);
    }
  }
}

void sub_1D66749CC()
{
  if (!qword_1EDF037D0)
  {
    sub_1D66747B8();
    sub_1D5B58B84(&qword_1EDF25708, sub_1D66747B8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF037D0);
    }
  }
}

void sub_1D6674AF4()
{
  if (!qword_1EDF3C680)
  {
    sub_1D6674B88();
    sub_1D5B58B84(&qword_1EDF3ED58, sub_1D6674B88);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C680);
    }
  }
}

void sub_1D6674B88()
{
  if (!qword_1EDF3ED50)
  {
    sub_1D6674C0C();
    sub_1D6674C60();
    sub_1D6674CB4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3ED50);
    }
  }
}

unint64_t sub_1D6674C0C()
{
  result = qword_1EDF41600;
  if (!qword_1EDF41600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41600);
  }

  return result;
}

unint64_t sub_1D6674C60()
{
  result = qword_1EDF41608;
  if (!qword_1EDF41608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41608);
  }

  return result;
}

unint64_t sub_1D6674CB4()
{
  result = qword_1EDF41610;
  if (!qword_1EDF41610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41610);
  }

  return result;
}

void sub_1D6674D08()
{
  if (!qword_1EDF088A0)
  {
    sub_1D6674D9C();
    sub_1D5B58B84(&qword_1EDF02B28, sub_1D6674D9C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF088A0);
    }
  }
}

void sub_1D6674D9C()
{
  if (!qword_1EDF02B20)
  {
    sub_1D6674B88();
    sub_1D5B58B84(&qword_1EDF3ED58, sub_1D6674B88);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02B20);
    }
  }
}

unint64_t sub_1D6674E94()
{
  result = qword_1EDF2C118;
  if (!qword_1EDF2C118)
  {
    sub_1D5C30060(255, &qword_1EDF2C110, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C118);
  }

  return result;
}

unint64_t sub_1D6674F24()
{
  result = qword_1EDF25C18;
  if (!qword_1EDF25C18)
  {
    sub_1D5C30060(255, &qword_1EDF25C10, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatUserInterfaceValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25C18);
  }

  return result;
}

unint64_t sub_1D6674FB4()
{
  result = qword_1EDF2EDC0;
  if (!qword_1EDF2EDC0)
  {
    sub_1D5C30060(255, &qword_1EDF2EDB8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EDC0);
  }

  return result;
}

unint64_t sub_1D66750F4()
{
  result = qword_1EC8866B8;
  if (!qword_1EC8866B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866B8);
  }

  return result;
}

unint64_t sub_1D6675148()
{
  result = qword_1EC8866C0;
  if (!qword_1EC8866C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866C0);
  }

  return result;
}

unint64_t sub_1D667519C()
{
  result = qword_1EDF165C8;
  if (!qword_1EDF165C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF165C8);
  }

  return result;
}

uint64_t sub_1D66751F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373616C63 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F50726F68636E61 && a2 == 0xEB00000000746E69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xEA0000000000736ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F4D6E7572 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D667544C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50726F68636E61 && a2 == 0xEB00000000746E69 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xEA0000000000736ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F4D6E7572 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D6675608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6675724(void *a1)
{
  sub_1D5C2E528();
  v53 = v2;
  v57 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v55 = v5;
  v52 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v9 = v8;
  *&v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v50 - v11;
  sub_1D6701434();
  v14 = v13;
  *&v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1BFF0();
  sub_1D5B58B84(&qword_1EDF25508, sub_1D5E1BFF0);
  v19 = v65;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v18;
  }

  v21 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  if (v23)
  {
    v24 = sub_1D726433C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v25)
        {
          goto LABEL_7;
        }
      }

      v31 = *(v26 - 2);
      v18 = *(v26 - 1);

      v32 = sub_1D6618E7C();
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v33 = v31;
      *(v33 + 8) = v18;
      *(v33 + 16) = v32;
      *(v33 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v59 + 8))(v17, v14);
      goto LABEL_10;
    }

LABEL_7:
  }

  v51 = sub_1D5C31D18(v17, 0, 0, 0, sub_1D6701434);
  v65 = v27;
  v63 = xmmword_1D728CF30;
  v64 = 0;
  sub_1D5C51470();
  v28 = v17;
  v29 = v9;
  v30 = v28;
  sub_1D726431C();
  v35 = sub_1D725A74C();
  (*(v58 + 8))(v21, v29);
  v58 = xmmword_1D7297410;
  v63 = xmmword_1D7297410;
  v64 = 0;
  v36 = sub_1D726434C();
  v50 = v35;
  if (v36)
  {
    v61 = v58;
    v62 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v37 = v54;
    v38 = v55;
    sub_1D726431C();
    v39 = v57;
    v40 = v30;
    v41 = v56;
    *&v58 = sub_1D725A74C();
    (*(v52 + 8))(v37, v38);
    v42 = v59;
  }

  else
  {
    *&v58 = MEMORY[0x1E69E7CD0];
    v42 = v59;
    v39 = v57;
    v40 = v30;
    v41 = v56;
  }

  v59 = xmmword_1D72BAA60;
  v63 = xmmword_1D72BAA60;
  v64 = 0;
  if (sub_1D726434C())
  {
    v61 = v59;
    v62 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v43 = v53;
    sub_1D726431C();
    v44 = sub_1D725A74C();
    v45 = v41;
    v46 = v44;
    (*(v39 + 8))(v45, v43);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v59 = xmmword_1D72BAA70;
  v63 = xmmword_1D72BAA70;
  v64 = 0;
  if (sub_1D726434C())
  {
    v61 = v59;
    v62 = 0;
    sub_1D726431C();
    v47 = v50;
    (*(v42 + 8))(v40, v14);
    v48 = v60;
  }

  else
  {
    (*(v42 + 8))(v40, v14);
    v48 = 1;
    v47 = v50;
  }

  type metadata accessor for FormatAuxiliaryNode();
  v18 = swift_allocObject();
  swift_beginAccess();
  v49 = v65;
  *(v18 + 16) = v51;
  *(v18 + 24) = v49;
  swift_beginAccess();
  *(v18 + 32) = v47;
  swift_beginAccess();
  *(v18 + 40) = v58;
  swift_beginAccess();
  *(v18 + 48) = v46;
  swift_beginAccess();
  *(v18 + 56) = v48;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

void sub_1D6676004()
{
  if (!qword_1EDF08DB0)
  {
    sub_1D5E1BFB4(255);
    sub_1D5B58B84(&qword_1EDF03548, sub_1D5E1BFB4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08DB0);
    }
  }
}

unint64_t sub_1D6676114()
{
  result = qword_1EC8866C8;
  if (!qword_1EC8866C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866C8);
  }

  return result;
}

unint64_t sub_1D6676168()
{
  result = qword_1EDF296B8;
  if (!qword_1EDF296B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296B8);
  }

  return result;
}

uint64_t sub_1D66761BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {

    return sub_1D5CDE22C(a7);
  }

  else
  {
  }
}

unint64_t sub_1D6676230()
{
  result = qword_1EDF2ACF0;
  if (!qword_1EDF2ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ACF0);
  }

  return result;
}

void sub_1D6676284()
{
  if (!qword_1EDF03E10)
  {
    sub_1D6676318();
    sub_1D5B58B84(&qword_1EDF0C600, sub_1D6676318);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03E10);
    }
  }
}

void sub_1D6676318()
{
  if (!qword_1EDF0C5F8)
  {
    sub_1D667639C();
    sub_1D66763F0();
    sub_1D6676444();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C5F8);
    }
  }
}

unint64_t sub_1D667639C()
{
  result = qword_1EDF11570;
  if (!qword_1EDF11570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11570);
  }

  return result;
}

unint64_t sub_1D66763F0()
{
  result = qword_1EDF11578;
  if (!qword_1EDF11578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11578);
  }

  return result;
}

unint64_t sub_1D6676444()
{
  result = qword_1EDF11580;
  if (!qword_1EDF11580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11580);
  }

  return result;
}

unint64_t sub_1D6676498()
{
  result = qword_1EDF04CC0;
  if (!qword_1EDF04CC0)
  {
    sub_1D5C34D84(255, &qword_1EDF04CD0, &type metadata for FormatBezierPathComponent, MEMORY[0x1E69E62F8]);
    sub_1D6676534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CC0);
  }

  return result;
}

unint64_t sub_1D6676534()
{
  result = qword_1EDF0C608;
  if (!qword_1EDF0C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C608);
  }

  return result;
}

void sub_1D6676588()
{
  if (!qword_1EDF08EF0)
  {
    sub_1D667661C();
    sub_1D5B58B84(&qword_1EDF037C8, sub_1D667661C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08EF0);
    }
  }
}

void sub_1D667661C()
{
  if (!qword_1EDF037C0)
  {
    sub_1D6676318();
    sub_1D5B58B84(&qword_1EDF0C600, sub_1D6676318);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF037C0);
    }
  }
}

unint64_t sub_1D667672C()
{
  result = qword_1EDF04CC8;
  if (!qword_1EDF04CC8)
  {
    sub_1D5C34D84(255, &qword_1EDF04CD0, &type metadata for FormatBezierPathComponent, MEMORY[0x1E69E62F8]);
    sub_1D66767C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CC8);
  }

  return result;
}

unint64_t sub_1D66767C8()
{
  result = qword_1EDF0C610;
  if (!qword_1EDF0C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C610);
  }

  return result;
}

void sub_1D667681C()
{
  if (!qword_1EC8866D0)
  {
    sub_1D66768B0();
    sub_1D5B58B84(&qword_1EC8866F8, sub_1D66768B0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8866D0);
    }
  }
}

void sub_1D66768B0()
{
  if (!qword_1EC8866D8)
  {
    sub_1D6676934();
    sub_1D6676988();
    sub_1D66769DC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8866D8);
    }
  }
}

unint64_t sub_1D6676934()
{
  result = qword_1EC8866E0;
  if (!qword_1EC8866E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866E0);
  }

  return result;
}

unint64_t sub_1D6676988()
{
  result = qword_1EC8866E8;
  if (!qword_1EC8866E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866E8);
  }

  return result;
}

unint64_t sub_1D66769DC()
{
  result = qword_1EC8866F0;
  if (!qword_1EC8866F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8866F0);
  }

  return result;
}

void sub_1D6676A30()
{
  if (!qword_1EC886700)
  {
    sub_1D6676AC4();
    sub_1D5B58B84(&qword_1EC886710, sub_1D6676AC4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886700);
    }
  }
}

void sub_1D6676AC4()
{
  if (!qword_1EC886708)
  {
    sub_1D66768B0();
    sub_1D5B58B84(&qword_1EC8866F8, sub_1D66768B0);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886708);
    }
  }
}

unint64_t sub_1D6676B58()
{
  result = qword_1EDF0F9F0;
  if (!qword_1EDF0F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F9F0);
  }

  return result;
}

unint64_t sub_1D6676C28()
{
  result = qword_1EDF0C618;
  if (!qword_1EDF0C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C618);
  }

  return result;
}

unint64_t sub_1D6676C7C()
{
  result = qword_1EC886718;
  if (!qword_1EC886718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886718);
  }

  return result;
}

unint64_t sub_1D6676CD0()
{
  result = qword_1EC886720;
  if (!qword_1EC886720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886720);
  }

  return result;
}

unint64_t sub_1D6676D24()
{
  result = qword_1EC886728;
  if (!qword_1EC886728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886728);
  }

  return result;
}

void sub_1D6676D78()
{
  if (!qword_1EC886730)
  {
    sub_1D6676E0C();
    sub_1D5B58B84(&qword_1EC886758, sub_1D6676E0C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886730);
    }
  }
}

void sub_1D6676E0C()
{
  if (!qword_1EC886738)
  {
    sub_1D6676E90();
    sub_1D6676EE4();
    sub_1D6676F38();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886738);
    }
  }
}

unint64_t sub_1D6676E90()
{
  result = qword_1EC886740;
  if (!qword_1EC886740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886740);
  }

  return result;
}

unint64_t sub_1D6676EE4()
{
  result = qword_1EC886748;
  if (!qword_1EC886748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886748);
  }

  return result;
}

unint64_t sub_1D6676F38()
{
  result = qword_1EC886750;
  if (!qword_1EC886750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886750);
  }

  return result;
}

void sub_1D6676F8C()
{
  if (!qword_1EC886760)
  {
    sub_1D6677020();
    sub_1D5B58B84(&qword_1EC886770, sub_1D6677020);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886760);
    }
  }
}

void sub_1D6677020()
{
  if (!qword_1EC886768)
  {
    sub_1D6676E0C();
    sub_1D5B58B84(&qword_1EC886758, sub_1D6676E0C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886768);
    }
  }
}

void sub_1D6677130()
{
  if (!qword_1EC886778)
  {
    sub_1D66771C4();
    sub_1D5B58B84(&qword_1EC8867A0, sub_1D66771C4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886778);
    }
  }
}

void sub_1D66771C4()
{
  if (!qword_1EC886780)
  {
    sub_1D6677248();
    sub_1D667729C();
    sub_1D66772F0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886780);
    }
  }
}

unint64_t sub_1D6677248()
{
  result = qword_1EC886788;
  if (!qword_1EC886788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886788);
  }

  return result;
}

unint64_t sub_1D667729C()
{
  result = qword_1EC886790;
  if (!qword_1EC886790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886790);
  }

  return result;
}

unint64_t sub_1D66772F0()
{
  result = qword_1EC886798;
  if (!qword_1EC886798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886798);
  }

  return result;
}

void sub_1D6677344()
{
  if (!qword_1EC8867A8)
  {
    sub_1D66773D8();
    sub_1D5B58B84(&qword_1EC8867B8, sub_1D66773D8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8867A8);
    }
  }
}

void sub_1D66773D8()
{
  if (!qword_1EC8867B0)
  {
    sub_1D66771C4();
    sub_1D5B58B84(&qword_1EC8867A0, sub_1D66771C4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8867B0);
    }
  }
}

void sub_1D66774E8()
{
  if (!qword_1EDF08D38)
  {
    sub_1D5E1BF78(255);
    sub_1D5B58B84(&qword_1EDF03458, sub_1D5E1BF78);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D38);
    }
  }
}

unint64_t sub_1D66775F8()
{
  result = qword_1EDF05008;
  if (!qword_1EDF05008)
  {
    sub_1D5C34D84(255, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
    sub_1D5C50AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05008);
  }

  return result;
}

void sub_1D6677694()
{
  if (!qword_1EDF08A88)
  {
    sub_1D6677728();
    sub_1D5B58B84(&qword_1EDF02EF8, sub_1D6677728);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A88);
    }
  }
}

void sub_1D6677728()
{
  if (!qword_1EDF02EF0)
  {
    sub_1D5C785D0();
    sub_1D5B58B84(&qword_1EDF24F78, sub_1D5C785D0);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02EF0);
    }
  }
}

unint64_t sub_1D66777BC()
{
  result = qword_1EDF10CF8;
  if (!qword_1EDF10CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CF8);
  }

  return result;
}

void sub_1D667788C()
{
  if (!qword_1EDF19E40)
  {
    sub_1D6677920();
    sub_1D5B58B84(&qword_1EDF24E68, sub_1D6677920);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E40);
    }
  }
}

void sub_1D6677920()
{
  if (!qword_1EDF24E60)
  {
    sub_1D66779A4();
    sub_1D66779F8();
    sub_1D6677A4C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E60);
    }
  }
}

unint64_t sub_1D66779A4()
{
  result = qword_1EDF1FD38;
  if (!qword_1EDF1FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD38);
  }

  return result;
}

unint64_t sub_1D66779F8()
{
  result = qword_1EDF1FD40;
  if (!qword_1EDF1FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD40);
  }

  return result;
}

unint64_t sub_1D6677A4C()
{
  result = qword_1EDF1FD48;
  if (!qword_1EDF1FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD48);
  }

  return result;
}

void sub_1D6677AA0()
{
  if (!qword_1EDF089E0)
  {
    sub_1D6677B34();
    sub_1D5B58B84(&qword_1EDF02DA8, sub_1D6677B34);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF089E0);
    }
  }
}

void sub_1D6677B34()
{
  if (!qword_1EDF02DA0)
  {
    sub_1D6677920();
    sub_1D5B58B84(&qword_1EDF24E68, sub_1D6677920);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02DA0);
    }
  }
}

unint64_t sub_1D6677C44()
{
  result = qword_1EDF21B48;
  if (!qword_1EDF21B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B48);
  }

  return result;
}

unint64_t sub_1D6677C98()
{
  result = qword_1EDF1FD20;
  if (!qword_1EDF1FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD20);
  }

  return result;
}

unint64_t sub_1D6677CEC()
{
  result = qword_1EDF23690;
  if (!qword_1EDF23690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23690);
  }

  return result;
}

unint64_t sub_1D6677D40()
{
  result = qword_1EDF1C7A8;
  if (!qword_1EDF1C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C7A8);
  }

  return result;
}

unint64_t sub_1D6677D94()
{
  result = qword_1EDF1DA10;
  if (!qword_1EDF1DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DA10);
  }

  return result;
}

void sub_1D6677DE8()
{
  if (!qword_1EDF19E98)
  {
    sub_1D6677E7C();
    sub_1D5B58B84(&qword_1EDF24F18, sub_1D6677E7C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E98);
    }
  }
}

void sub_1D6677E7C()
{
  if (!qword_1EDF24F10)
  {
    sub_1D6677F00();
    sub_1D6677F54();
    sub_1D6677FA8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24F10);
    }
  }
}

unint64_t sub_1D6677F00()
{
  result = qword_1EDF21B60;
  if (!qword_1EDF21B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B60);
  }

  return result;
}

unint64_t sub_1D6677F54()
{
  result = qword_1EDF21B68;
  if (!qword_1EDF21B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B68);
  }

  return result;
}

unint64_t sub_1D6677FA8()
{
  result = qword_1EDF21B70;
  if (!qword_1EDF21B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21B70);
  }

  return result;
}

unint64_t sub_1D6677FFC()
{
  result = qword_1EDF2E140;
  if (!qword_1EDF2E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E140);
  }

  return result;
}

void sub_1D6678050()
{
  if (!qword_1EDF08A48)
  {
    sub_1D66780E4();
    sub_1D5B58B84(&qword_1EDF02E78, sub_1D66780E4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A48);
    }
  }
}

void sub_1D66780E4()
{
  if (!qword_1EDF02E70)
  {
    sub_1D6677E7C();
    sub_1D5B58B84(&qword_1EDF24F18, sub_1D6677E7C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02E70);
    }
  }
}

unint64_t sub_1D6678178()
{
  result = qword_1EDF10568;
  if (!qword_1EDF10568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10568);
  }

  return result;
}

unint64_t sub_1D6678230()
{
  result = qword_1EDF1E6B8;
  if (!qword_1EDF1E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E6B8);
  }

  return result;
}

unint64_t sub_1D6678284()
{
  result = qword_1EDF1C480;
  if (!qword_1EDF1C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C480);
  }

  return result;
}

void sub_1D66782D8()
{
  if (!qword_1EDF19DB0)
  {
    sub_1D667836C();
    sub_1D5B58B84(&qword_1EDF24D48, sub_1D667836C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DB0);
    }
  }
}

void sub_1D667836C()
{
  if (!qword_1EDF24D40)
  {
    sub_1D66783F0();
    sub_1D6678444();
    sub_1D6678498();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24D40);
    }
  }
}

unint64_t sub_1D66783F0()
{
  result = qword_1EDF1C498;
  if (!qword_1EDF1C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C498);
  }

  return result;
}

unint64_t sub_1D6678444()
{
  result = qword_1EDF1C4A0;
  if (!qword_1EDF1C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C4A0);
  }

  return result;
}

unint64_t sub_1D6678498()
{
  result = qword_1EDF1C4A8;
  if (!qword_1EDF1C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C4A8);
  }

  return result;
}

void sub_1D66784EC()
{
  if (!qword_1EDF08920)
  {
    sub_1D6678580();
    sub_1D5B58B84(&qword_1EDF02C28, sub_1D6678580);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08920);
    }
  }
}

void sub_1D6678580()
{
  if (!qword_1EDF02C20)
  {
    sub_1D667836C();
    sub_1D5B58B84(&qword_1EDF24D48, sub_1D667836C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02C20);
    }
  }
}

void sub_1D6678690()
{
  if (!qword_1EDF03DB0)
  {
    sub_1D6678724();
    sub_1D5B58B84(&qword_1EDF0C540, sub_1D6678724);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03DB0);
    }
  }
}

void sub_1D6678724()
{
  if (!qword_1EDF0C538)
  {
    sub_1D66787A8();
    sub_1D66787FC();
    sub_1D6678850();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C538);
    }
  }
}

unint64_t sub_1D66787A8()
{
  result = qword_1EDF0E448;
  if (!qword_1EDF0E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E448);
  }

  return result;
}

unint64_t sub_1D66787FC()
{
  result = qword_1EDF0E450;
  if (!qword_1EDF0E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E450);
  }

  return result;
}

unint64_t sub_1D6678850()
{
  result = qword_1EDF0E458[0];
  if (!qword_1EDF0E458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0E458);
  }

  return result;
}

void sub_1D66788A4()
{
  if (!qword_1EDF08CB8)
  {
    sub_1D6678938();
    sub_1D5B58B84(&qword_1EDF03358, sub_1D6678938);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CB8);
    }
  }
}

void sub_1D6678938()
{
  if (!qword_1EDF03350)
  {
    sub_1D6678724();
    sub_1D5B58B84(&qword_1EDF0C540, sub_1D6678724);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03350);
    }
  }
}

void sub_1D6678A48()
{
  if (!qword_1EDF08A40)
  {
    sub_1D6678ADC();
    sub_1D5B58B84(&qword_1EDF02E68, sub_1D6678ADC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A40);
    }
  }
}

void sub_1D6678ADC()
{
  if (!qword_1EDF02E60)
  {
    sub_1D5CBD978();
    sub_1D5B58B84(&qword_1EDF24F08, sub_1D5CBD978);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02E60);
    }
  }
}

unint64_t sub_1D6678B70()
{
  result = qword_1EDF0DB20;
  if (!qword_1EDF0DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DB20);
  }

  return result;
}

void sub_1D6678C28()
{
  if (!qword_1EDF19DD8)
  {
    sub_1D6678CBC();
    sub_1D5B58B84(&qword_1EDF24D98, sub_1D6678CBC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DD8);
    }
  }
}

void sub_1D6678CBC()
{
  if (!qword_1EDF24D90)
  {
    sub_1D6678D40();
    sub_1D6678D94();
    sub_1D6678DE8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24D90);
    }
  }
}

unint64_t sub_1D6678D40()
{
  result = qword_1EDF1DA28;
  if (!qword_1EDF1DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DA28);
  }

  return result;
}

unint64_t sub_1D6678D94()
{
  result = qword_1EDF1DA30;
  if (!qword_1EDF1DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DA30);
  }

  return result;
}

unint64_t sub_1D6678DE8()
{
  result = qword_1EDF1DA38[0];
  if (!qword_1EDF1DA38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1DA38);
  }

  return result;
}

void sub_1D6678E3C()
{
  if (!qword_1EDF08958)
  {
    sub_1D6678ED0();
    sub_1D5B58B84(&qword_1EDF02C98, sub_1D6678ED0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08958);
    }
  }
}

void sub_1D6678ED0()
{
  if (!qword_1EDF02C90)
  {
    sub_1D6678CBC();
    sub_1D5B58B84(&qword_1EDF24D98, sub_1D6678CBC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02C90);
    }
  }
}

void sub_1D6678FC8()
{
  if (!qword_1EDF19DB8)
  {
    sub_1D667905C();
    sub_1D5B58B84(&qword_1EDF24D58, sub_1D667905C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DB8);
    }
  }
}

void sub_1D667905C()
{
  if (!qword_1EDF24D50)
  {
    sub_1D66790E0();
    sub_1D6679134();
    sub_1D6679188();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24D50);
    }
  }
}

unint64_t sub_1D66790E0()
{
  result = qword_1EDF1C7C0;
  if (!qword_1EDF1C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C7C0);
  }

  return result;
}

unint64_t sub_1D6679134()
{
  result = qword_1EDF1C7C8;
  if (!qword_1EDF1C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C7C8);
  }

  return result;
}

unint64_t sub_1D6679188()
{
  result = qword_1EDF1C7D0;
  if (!qword_1EDF1C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C7D0);
  }

  return result;
}

void sub_1D66791DC()
{
  if (!qword_1EDF08928)
  {
    sub_1D6679270();
    sub_1D5B58B84(&qword_1EDF02C38, sub_1D6679270);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08928);
    }
  }
}

void sub_1D6679270()
{
  if (!qword_1EDF02C30)
  {
    sub_1D667905C();
    sub_1D5B58B84(&qword_1EDF24D58, sub_1D667905C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02C30);
    }
  }
}

unint64_t sub_1D6679304()
{
  result = qword_1EDF07D40;
  if (!qword_1EDF07D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D40);
  }

  return result;
}

unint64_t sub_1D66793BC()
{
  result = qword_1EDF1C0D8;
  if (!qword_1EDF1C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C0D8);
  }

  return result;
}

void sub_1D6679410()
{
  if (!qword_1EDF08A80)
  {
    sub_1D66794A4();
    sub_1D5B58B84(&qword_1EDF02EE8, sub_1D66794A4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A80);
    }
  }
}

void sub_1D66794A4()
{
  if (!qword_1EDF02EE0)
  {
    sub_1D5C77030();
    sub_1D5B58B84(&qword_1EDF24F68, sub_1D5C77030);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02EE0);
    }
  }
}

void sub_1D667959C()
{
  if (!qword_1EDF19F28)
  {
    sub_1D6679630();
    sub_1D5B58B84(&qword_1EDF25038, sub_1D6679630);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F28);
    }
  }
}

void sub_1D6679630()
{
  if (!qword_1EDF25030)
  {
    sub_1D66796B4();
    sub_1D6679708();
    sub_1D667975C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25030);
    }
  }
}

unint64_t sub_1D66796B4()
{
  result = qword_1EDF236A8;
  if (!qword_1EDF236A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236A8);
  }

  return result;
}

unint64_t sub_1D6679708()
{
  result = qword_1EDF236B0;
  if (!qword_1EDF236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236B0);
  }

  return result;
}

unint64_t sub_1D667975C()
{
  result = qword_1EDF236B8;
  if (!qword_1EDF236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236B8);
  }

  return result;
}

void sub_1D66797B0()
{
  if (!qword_1EDF08AE8)
  {
    sub_1D6679844();
    sub_1D5B58B84(&qword_1EDF02FB8, sub_1D6679844);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08AE8);
    }
  }
}

void sub_1D6679844()
{
  if (!qword_1EDF02FB0)
  {
    sub_1D6679630();
    sub_1D5B58B84(&qword_1EDF25038, sub_1D6679630);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02FB0);
    }
  }
}

unint64_t sub_1D6679954()
{
  result = qword_1EDF1FD10;
  if (!qword_1EDF1FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FD10);
  }

  return result;
}

uint64_t sub_1D66799A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73776F726874 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D6679BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E417472617473 && a2 == 0xEA0000000000656CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C676E41646E65 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D6679DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x506C6F72746E6F63 && a2 == 0xED000031746E696FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506C6F72746E6F63 && a2 == 0xED000032746E696FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6679F24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x506C6F72746E6F63 && a2 == 0xEC000000746E696FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667A03C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646E696BLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D667A1E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667A2FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D667A4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695465746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667A5CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74617265706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695465746164 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667A6E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74617265706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667A7F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C616373 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667A910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F74617265706FLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D667AA28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1D667AB3C(void *a1)
{
  sub_1D5C8CD38();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  v53 = v5;
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  *&v58 = v8;
  *&v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49 - v10;
  sub_1D6700D1C();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1BDC4();
  v19 = v18;
  sub_1D5B58B84(&qword_1EDF24CF8, sub_1D5E1BDC4);
  v20 = v63;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v19;
  }

  v63 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v24 = v13;
  v25 = v58;
  if (v23)
  {
    v26 = sub_1D726433C();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 48);
      while (*v28 != 1)
      {
        v28 += 24;
        if (!--v27)
        {
          goto LABEL_7;
        }
      }

      v33 = *(v28 - 2);
      v32 = *(v28 - 1);

      v19 = sub_1D6619570();
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v34 = v33;
      *(v34 + 8) = v32;
      *(v34 + 16) = v19;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      v63[1](v17, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  v61 = 0uLL;
  v62 = 0;
  v29 = sub_1D72642BC();
  v31 = v30;
  v50 = v29;
  v61 = xmmword_1D728CF30;
  v62 = 0;
  sub_1D5C51470();
  sub_1D726431C();
  v49 = v31;
  v36 = sub_1D725A74C();
  (*(v57 + 8))(v11, v25);
  v58 = xmmword_1D7297410;
  v61 = xmmword_1D7297410;
  v62 = 0;
  if (sub_1D726434C())
  {
    *&v57 = v36;
    v59 = v58;
    v60 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v37 = v52;
    v38 = v53;
    sub_1D726431C();
    v39 = v56;
    *&v58 = a1;
    v40 = sub_1D725A74C();
    v41 = v37;
    v42 = v40;
    (*(v51 + 8))(v41, v38);
    v36 = v57;
  }

  else
  {
    *&v58 = a1;
    v42 = MEMORY[0x1E69E7CC0];
    v39 = v56;
  }

  v57 = xmmword_1D72BAA60;
  v61 = xmmword_1D72BAA60;
  v62 = 0;
  v43 = sub_1D726434C();
  v44 = v17;
  v46 = v54;
  v45 = v55;
  if (v43)
  {
    v59 = v57;
    v60 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v47 = sub_1D725A74C();
    (*(v45 + 8))(v46, v39);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CD0];
  }

  v63[1](v44, v24);
  type metadata accessor for FormatBlock();
  v19 = swift_allocObject();
  v48 = v49;
  v19[2] = v50;
  v19[3] = v48;
  swift_beginAccess();
  v19[4] = v36;
  swift_beginAccess();
  v19[5] = v42;
  swift_beginAccess();
  v19[6] = v47;
  __swift_destroy_boxed_opaque_existential_1(v58);
  return v19;
}

void sub_1D667B2DC()
{
  if (!qword_1EDF088F8)
  {
    sub_1D5E1BD88(255);
    sub_1D5B58B84(&qword_1EDF02BD8, sub_1D5E1BD88);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF088F8);
    }
  }
}

void sub_1D667B3EC()
{
  if (!qword_1EDF1A0A8)
  {
    sub_1D667B480();
    sub_1D5B58B84(&qword_1EDF25338, sub_1D667B480);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0A8);
    }
  }
}

void sub_1D667B480()
{
  if (!qword_1EDF25330)
  {
    sub_1D667B504();
    sub_1D667B558();
    sub_1D667B5AC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25330);
    }
  }
}

unint64_t sub_1D667B504()
{
  result = qword_1EDF29CF0;
  if (!qword_1EDF29CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CF0);
  }

  return result;
}

unint64_t sub_1D667B558()
{
  result = qword_1EDF29CF8;
  if (!qword_1EDF29CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CF8);
  }

  return result;
}

unint64_t sub_1D667B5AC()
{
  result = qword_1EDF29D00;
  if (!qword_1EDF29D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29D00);
  }

  return result;
}

void sub_1D667B600()
{
  if (!qword_1EDF08CB0)
  {
    sub_1D667B694();
    sub_1D5B58B84(&qword_1EDF03348, sub_1D667B694);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CB0);
    }
  }
}

void sub_1D667B694()
{
  if (!qword_1EDF03340)
  {
    sub_1D667B480();
    sub_1D5B58B84(&qword_1EDF25338, sub_1D667B480);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03340);
    }
  }
}

uint64_t sub_1D667B7A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D667B964(void *a1)
{
  sub_1D5C8CD38();
  *&v52 = v2;
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  v6 = v5;
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6700C88();
  v11 = v10;
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1BBD4();
  v16 = v15;
  sub_1D5B58B84(&qword_1EDF24BC8, sub_1D5E1BBD4);
  v17 = v53;
  sub_1D7264B0C();
  v18 = v17;
  if (v17)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v18);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v16;
  }

  *&v53 = v6;
  v19 = v52;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  if (v21)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v16 = sub_1D6619758();
      sub_1D5E2D970();
      v18 = swift_allocError();
      *v29 = v28;
      *(v29 + 8) = v27;
      *(v29 + 16) = v16;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v59 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D6700C88);
  v48 = v26;
  v57 = xmmword_1D728CF30;
  v58 = 0;
  v44 = sub_1D72642BC();
  v45 = v25;
  v47 = v31;
  v46 = xmmword_1D7297410;
  v57 = xmmword_1D7297410;
  v58 = 0;
  v32 = sub_1D726434C();
  if (v32)
  {
    v55 = v46;
    v56 = 0;
    sub_1D726431C();
    v33 = v19;
    v34 = v9;
    LODWORD(v46) = v54;
  }

  else
  {
    LODWORD(v46) = 1;
    v33 = v19;
    v34 = v9;
  }

  v52 = xmmword_1D72BAA60;
  v57 = xmmword_1D72BAA60;
  v58 = 0;
  v35 = sub_1D726434C();
  v36 = v51;
  if (v35)
  {
    v55 = v52;
    v56 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v37 = v53;
    sub_1D726431C();
    v38 = sub_1D725A74C();
    v39 = v34;
    v40 = v38;
    (*(v50 + 8))(v39, v37);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  v53 = xmmword_1D72BAA70;
  v57 = xmmword_1D72BAA70;
  v58 = 0;
  if (sub_1D726434C())
  {
    v55 = v53;
    v56 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v41 = sub_1D725A74C();
    (*(v49 + 8))(v36, v33);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CD0];
  }

  (*(v59 + 8))(v14, v11);
  type metadata accessor for FormatBlockNode();
  v16 = swift_allocObject();
  swift_beginAccess();
  v42 = v48;
  *(v16 + 16) = v45;
  *(v16 + 24) = v42;
  v43 = v47;
  *(v16 + 32) = v44;
  *(v16 + 40) = v43;
  swift_beginAccess();
  *(v16 + 48) = v46;
  swift_beginAccess();
  *(v16 + 56) = v40;
  swift_beginAccess();
  *(v16 + 64) = v41;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

void sub_1D667C0F0()
{
  if (!qword_1EDF08850)
  {
    sub_1D5E1BB98(255);
    sub_1D5B58B84(&qword_1EDF02A88, sub_1D5E1BB98);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08850);
    }
  }
}

void sub_1D667C200()
{
  if (!qword_1EC8867C0)
  {
    sub_1D667C294();
    sub_1D5B58B84(&qword_1EC8867E8, sub_1D667C294);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8867C0);
    }
  }
}

void sub_1D667C294()
{
  if (!qword_1EC8867C8)
  {
    sub_1D667C318();
    sub_1D667C36C();
    sub_1D667C3C0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8867C8);
    }
  }
}

unint64_t sub_1D667C318()
{
  result = qword_1EC8867D0;
  if (!qword_1EC8867D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8867D0);
  }

  return result;
}

unint64_t sub_1D667C36C()
{
  result = qword_1EC8867D8;
  if (!qword_1EC8867D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8867D8);
  }

  return result;
}

unint64_t sub_1D667C3C0()
{
  result = qword_1EC8867E0;
  if (!qword_1EC8867E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8867E0);
  }

  return result;
}

unint64_t sub_1D667C414()
{
  result = qword_1EDF0E400;
  if (!qword_1EDF0E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E400);
  }

  return result;
}

unint64_t sub_1D667C468()
{
  result = qword_1EC8867F0;
  if (!qword_1EC8867F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8867F0);
  }

  return result;
}

void sub_1D667C4BC()
{
  if (!qword_1EC8867F8)
  {
    sub_1D667C550();
    sub_1D5B58B84(&qword_1EC886808, sub_1D667C550);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8867F8);
    }
  }
}