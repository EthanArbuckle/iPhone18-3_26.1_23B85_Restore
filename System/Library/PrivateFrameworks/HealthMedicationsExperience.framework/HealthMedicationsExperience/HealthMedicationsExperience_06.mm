uint64_t Array<A>.deviceIdentifiers()()
{
  sub_1D166FCF4();
  sub_1D166F1A4();
  swift_getWitnessTable();
  return sub_1D166FBF4();
}

uint64_t sub_1D16619C0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 hardwareIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_1D166F194();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D166F1A4();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_1D1661A68()
{
  v1 = [v0 freeTextMedicationName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D166FA04();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
    v6 = v5;

    if (!v6)
    {
      v7 = swift_getKeyPath();
      v3 = sub_1D161E974(v7, 0x53555F6E65, 0xE500000000000000);
      v9 = v8;

      if (!v9)
      {
        v10 = swift_getKeyPath();
        v3 = sub_1D161E974(v10, 0x53555F6E65, 0xE500000000000000);
        v12 = v11;

        if (!v12)
        {
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          return sub_1D166F004();
        }
      }
    }
  }

  return v3;
}

BOOL sub_1D1661C30(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1D16705D4() & 1;
    }
  }

  return result;
}

uint64_t sub_1D1661CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MedicationVisualizationConfig.backgroundColorValue.getter()
{
  v0 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  return sub_1D166F894();
}

uint64_t sub_1D1661DD8()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D1661E44()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t MedicationVisualizationConfig.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicationVisualizationConfig.init(shapeName:fragmentsColors:backgroundColor:currentVersion:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t MedicationVisualizationConfig.init(shapeName:fragmentsColors:backgroundColor:currentVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (*(a2 + 16))
  {
    sub_1D1665024(0, &qword_1EC63DAE8, MEMORY[0x1E69E6EC8]);
    v8 = sub_1D1670484();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v14 = v8;
  sub_1D16642E0(a2, 1, &v14);
  v9 = v14;
  *a4 = v7;
  *(a4 + 8) = v9;
  v10 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t MedicationVisualizationConfig.init(shapeName:fragmentsColors:backgroundColor:currentVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  v14 = *a1;
  sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  v15 = a3;
  sub_1D166F8C4();
  if (*(a2 + 16))
  {
    sub_1D1665024(0, &qword_1EC63DAE8, MEMORY[0x1E69E6EC8]);
    v16 = sub_1D1670484();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  v21 = v16;
  sub_1D16642E0(a2, 1, &v21);

  v17 = v21;
  *a4 = v14;
  *(a4 + 8) = v17;
  v18 = type metadata accessor for MedicationVisualizationConfig(0);
  return (*(v10 + 32))(a4 + *(v18 + 24), v13, v9);
}

uint64_t MedicationVisualizationConfig.init(jsonString:)@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for MedicationVisualizationConfig(0);
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D166FA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D166EE84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1D166EE74();
  sub_1D166FA54();
  v13 = sub_1D166FA14();
  v15 = v14;

  (*(v6 + 8))(v9, v5);
  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  sub_1D166524C(&qword_1EDECB030);
  v17 = v22;
  sub_1D166EE64();
  sub_1D16370C4(v16, v15);

  if (!v17)
  {
    v19 = v21;
    sub_1D1665AEC(v4, v21, type metadata accessor for MedicationVisualizationConfig);
    return (*(v20 + 56))(v19, 0, 1, v1);
  }

  return result;
}

uint64_t MedicationVisualizationConfig.jsonDataString.getter()
{
  v0 = sub_1D166FA64();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1D166EEA4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1D166EEE4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D166EED4();
  sub_1D166EE94();
  sub_1D166EEB4();
  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D166524C(&qword_1EC63E2C8);
  v7 = sub_1D166EEC4();
  v9 = v8;
  sub_1D166FA54();
  v10 = sub_1D166FA24();

  sub_1D16370C4(v7, v9);
  return v10;
}

uint64_t sub_1D1662750(uint64_t a1, uint64_t a2)
{
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v78 - v8;
  sub_1D1665B54();
  v89 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1609304();
  v95 = *(v13 - 8);
  v14 = *(v95 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = &v78 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v93 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v78 - v21;
  sub_1D1665A94();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = (&v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v24);
  v90 = (&v78 - v28);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v29 = 0;
  v30 = *(a1 + 64);
  v79 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v78 = (v31 + 63) >> 6;
  v85 = (v6 + 48);
  v86 = v12;
  v80 = (v6 + 32);
  v81 = (v6 + 8);
  v87 = a2;
  v84 = v26;
  while (v33)
  {
    v94 = (v33 - 1) & v33;
    v34 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_16:
    v39 = (*(a1 + 48) + 32 * v34);
    v41 = *v39;
    v40 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    v44 = v88;
    sub_1D1665D28(*(a1 + 56) + *(v95 + 72) * v34, v88, sub_1D1609304);
    sub_1D15F2E34();
    v46 = v45;
    v47 = *(v45 + 48);
    *v26 = v41;
    v26[1] = v40;
    v26[2] = v42;
    v26[3] = v43;
    sub_1D1665AEC(v44, v26 + v47, sub_1D1609304);
    (*(*(v46 - 8) + 56))(v26, 0, 1, v46);

    sub_1D15F301C(v42, v43);
LABEL_17:
    v48 = v90;
    sub_1D1665AEC(v26, v90, sub_1D1665A94);
    sub_1D15F2E34();
    v49 = (*(*(v46 - 8) + 48))(v48, 1, v46) == 1;
    result = v49;
    if (v49)
    {
      return result;
    }

    v91 = v49;
    v50 = a1;
    v51 = v5;
    v52 = *(v46 + 48);
    v53 = v48;
    v54 = *v48;
    v55 = v48[1];
    v56 = v53[2];
    v57 = v53[3];
    v58 = v93;
    sub_1D1665AEC(v53 + v52, v93, sub_1D1609304);
    v59 = v54;
    v60 = v87;
    v61 = sub_1D1606100(v59, v55, v56, v57);
    v63 = v62;

    sub_1D15F3228(v56, v57);
    if ((v63 & 1) == 0)
    {
      v76 = sub_1D1609304;
      v77 = v58;
      goto LABEL_30;
    }

    v64 = *(v60 + 56) + *(v95 + 72) * v61;
    v65 = v92;
    sub_1D1665D28(v64, v92, sub_1D1609304);
    v66 = *(v89 + 48);
    v67 = v86;
    sub_1D1665D28(v65, v86, sub_1D1609304);
    sub_1D1665D28(v58, v67 + v66, sub_1D1609304);
    v68 = *v85;
    v5 = v51;
    if ((*v85)(v67, 1, v51) == 1)
    {
      sub_1D1665BB8(v65, sub_1D1609304);
      sub_1D1665BB8(v58, sub_1D1609304);
      if (v68(v67 + v66, 1, v51) != 1)
      {
        goto LABEL_29;
      }

      a1 = v50;
      result = sub_1D1665BB8(v67, sub_1D1609304);
      v26 = v84;
      v33 = v94;
    }

    else
    {
      v69 = v83;
      sub_1D1665D28(v67, v83, sub_1D1609304);
      if (v68(v67 + v66, 1, v51) == 1)
      {
        sub_1D1665BB8(v92, sub_1D1609304);
        sub_1D1665BB8(v93, sub_1D1609304);
        (*v81)(v69, v51);
LABEL_29:
        v76 = sub_1D1665B54;
        v77 = v67;
LABEL_30:
        sub_1D1665BB8(v77, v76);
        return 0;
      }

      a1 = v50;
      v70 = v67 + v66;
      v71 = v82;
      (*v80)(v82, v70, v51);
      sub_1D1665C18(&qword_1EC63E320, &qword_1EDEC9D88);
      v72 = v69;
      v73 = sub_1D166F9B4();
      v74 = *v81;
      (*v81)(v71, v5);
      sub_1D1665BB8(v92, sub_1D1609304);
      sub_1D1665BB8(v93, sub_1D1609304);
      v74(v72, v5);
      sub_1D1665BB8(v67, sub_1D1609304);
      v26 = v84;
      v33 = v94;
      result = v91;
      if ((v73 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (v78 <= v29 + 1)
  {
    v35 = v29 + 1;
  }

  else
  {
    v35 = v78;
  }

  v36 = v35 - 1;
  while (1)
  {
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v37 >= v78)
    {
      sub_1D15F2E34();
      v46 = v75;
      (*(*(v75 - 8) + 56))(v26, 1, 1, v75);
      v94 = 0;
      v29 = v36;
      goto LABEL_17;
    }

    v38 = *(v79 + 8 * v37);
    ++v29;
    if (v38)
    {
      v94 = (v38 - 1) & v38;
      v34 = __clz(__rbit64(v38)) | (v37 << 6);
      v29 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t MedicationVisualizationConfig.hash(into:)(__int128 *a1)
{
  v5 = *v1;
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(a1, *(v1 + 1));
  v3 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8);
  sub_1D166F984();
  return MEMORY[0x1D388D890](1);
}

uint64_t MedicationVisualizationConfig.hashValue.getter()
{
  sub_1D16706A4();
  v3 = *v0;
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(v4, *(v0 + 1));
  v1 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8);
  sub_1D166F984();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D16631B0(uint64_t a1)
{
  sub_1D16706A4();
  v5 = *v1;
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(v6, *(v1 + 1));
  v3 = *(a1 + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8);
  sub_1D166F984();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D16632CC(__int128 *a1, uint64_t a2)
{
  v7 = *v2;
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(a1, *(v2 + 1));
  v5 = *(a2 + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8);
  sub_1D166F984();
  return MEMORY[0x1D388D890](1);
}

uint64_t sub_1D16633D8(uint64_t a1, uint64_t a2)
{
  sub_1D16706A4();
  v6 = *v2;
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(v7, *(v2 + 1));
  v4 = *(a2 + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8);
  sub_1D166F984();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D16634F4()
{
  v1 = 0x6D614E6570616873;
  v2 = 0x756F72676B636162;
  if (*v0 != 2)
  {
    v2 = 0x56746E6572727563;
  }

  if (*v0)
  {
    v1 = 0x746E656D67617266;
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

uint64_t sub_1D1663598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1665698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D16635D8(uint64_t a1)
{
  v2 = sub_1D1664FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1663614(uint64_t a1)
{
  v2 = sub_1D1664FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1663650(void *a1)
{
  v3 = v1;
  sub_1D166581C(0, &qword_1EC63E2E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D1664FD0();
  sub_1D1670714();
  v18 = 3;
  sub_1D1670554();
  if (!v2)
  {
    v17 = *v3;
    MedicationShape.rawValue.getter();
    v16 = 0;
    sub_1D1670544();

    v15 = *(v3 + 1);
    v14[15] = 1;
    sub_1D1665024(0, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D1665098();
    sub_1D1670564();
    v13 = *(type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1(0) + 24);
    v14[14] = 2;
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    sub_1D1665880(&qword_1EC63E2E8);
    sub_1D1670564();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D16638FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  sub_1D166581C(0, &qword_1EDECABE8, MEMORY[0x1E69E6F48]);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D1664FD0();
  v16 = v31;
  sub_1D1670704();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = a1;
  v17 = v6;
  v18 = v28;
  v35 = 0;
  v19 = v30;
  v20._countAndFlagsBits = sub_1D16704F4();
  MedicationShape.init(rawValue:)(v20);
  v21 = v36;
  if (v36 == 48)
  {
    v21 = 0;
  }

  v25 = v14;
  *v14 = v21;
  v34 = 2;
  sub_1D1665880(&qword_1EDECA028);
  sub_1D1670504();
  (*(v27 + 32))(&v25[*(v11 + 24)], v17, v18);
  sub_1D1665024(0, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
  v33 = 1;
  sub_1D16658F0();
  sub_1D1670504();
  (*(v29 + 8))(v10, v19);
  v23 = v25;
  v22 = v26;
  *(v25 + 1) = v32;
  sub_1D1665D28(v23, v22, type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_1D1665BB8(v23, type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1);
}

uint64_t MedicationVisualizationConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D160BF60(a1, v25);
  sub_1D16638FC(v25, v8);
  if (v2)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v9 = sub_1D166F4E4();
    __swift_project_value_buffer(v9, qword_1EDECB360);
    v10 = v2;
    v11 = sub_1D166F4D4();
    v12 = sub_1D166FF44();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1D15F7A30(0xD00000000000001DLL, 0x80000001D1675510, v25);
      *(v13 + 12) = 2112;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1D15E6000, v11, v12, "[%s] Unable to decode MedicationVisualizationConfig with error: '%@'\nThis might be a newer config that we don't know how to decode.'", v13, 0x16u);
      sub_1D15FADE4(v14);
      MEMORY[0x1D388E250](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D388E250](v15, -1, -1);
      MEMORY[0x1D388E250](v13, -1, -1);
    }

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = *v8;
    v20 = *(v8 + 1);
    v21 = *(v5 + 24);
    v22 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    result = (*(*(v23 - 8) + 32))(a2 + v22, &v8[v21], v23);
    *a2 = v19;
    *(a2 + 8) = v20;
  }

  return result;
}

uint64_t MedicationVisualizationConfig.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D166581C(0, &qword_1EC63E2E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D1664FD0();
  sub_1D1670714();
  v19 = 3;
  sub_1D1670554();
  if (!v2)
  {
    v18 = *v3;
    MedicationShape.rawValue.getter();
    v17 = 0;
    sub_1D1670544();

    v13 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
    v16 = 2;
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    sub_1D1665880(&qword_1EC63E2E8);
    sub_1D1670564();
    v15 = *(v3 + 1);
    v14[15] = 1;
    sub_1D1665024(0, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D1665098();
    sub_1D1670564();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1D16642E0(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  sub_1D1609304();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1665CC0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *(a1 + 16);
  if (!v48)
  {
LABEL_13:

    return;
  }

  v42 = v3;
  v43 = v13;
  v15 = 0;
  v16 = *(v12 + 48);
  v46 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v47 = v16;
  v44 = a1;
  v45 = v9;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D1670634();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v50;
    sub_1D1665D28(v46 + *(v13 + 72) * v15, v50, sub_1D1665CC0);
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v54 = *v17;
    v18 = v54;
    v55 = v19;
    v56 = v20;
    v57 = v21;
    sub_1D1665AEC(v17 + v47, v9, sub_1D1609304);
    v22 = *v51;
    v24 = sub_1D1606100(v18, v19, v20, v21);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1D16487FC();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v51;
    *(*v51 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v34 = (v33[6] + 32 * v24);
    *v34 = v18;
    v34[1] = v19;
    v34[2] = v20;
    v34[3] = v21;
    v9 = v45;
    sub_1D1665AEC(v45, v33[7] + *(v49 + 72) * v24, sub_1D1609304);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v15;
    v33[2] = v37;
    a2 = 1;
    v13 = v43;
    a1 = v44;
    if (v48 == v15)
    {
      goto LABEL_13;
    }
  }

  v29 = v51;
  sub_1D16082DC(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_1D1606100(v18, v19, v20, v21);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();

  v58 = v38;
  v39 = v38;
  sub_1D15F9218();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1665BB8(v45, sub_1D1609304);
    v40 = v56;
    v41 = v57;

    sub_1D15F3228(v40, v41);

    return;
  }

LABEL_22:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D16702D4();
  MEMORY[0x1D388CCF0](0xD00000000000001BLL, 0x80000001D1679510);
  sub_1D1670414();
  MEMORY[0x1D388CCF0](39, 0xE100000000000000);
  sub_1D1670424();
  __break(1u);
}

uint64_t sub_1D1664760(__int128 *a1, uint64_t a2)
{
  v67 = a1;
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v66 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v56 - v6;
  sub_1D1609304();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v56 - v13;
  sub_1D1665A94();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v56 - v19);
  v21 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 64);
  v25 = (v22 + 63) >> 6;
  v63 = (v4 + 48);
  v57 = (v4 + 32);
  v56 = (v4 + 8);
  v62 = a2;

  v27 = 0;
  v28 = 0;
  v59 = v18;
  v64 = v21;
  while (1)
  {
    v68 = v27;
    if (!v24)
    {
      break;
    }

    v30 = v28;
LABEL_16:
    v33 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v34 = v33 | (v30 << 6);
    v35 = (*(v62 + 48) + 32 * v34);
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v39 = v35[3];
    v40 = v60;
    sub_1D1665D28(*(v62 + 56) + *(v61 + 72) * v34, v60, sub_1D1609304);
    sub_1D15F2E34();
    v42 = v41;
    v43 = *(v41 + 48);
    v44 = v59;
    *v59 = v37;
    *(v44 + 1) = v36;
    *(v44 + 2) = v38;
    *(v44 + 3) = v39;
    v45 = v40;
    v18 = v44;
    sub_1D1665AEC(v45, &v44[v43], sub_1D1609304);
    (*(*(v42 - 8) + 56))(v18, 0, 1, v42);

    sub_1D15F301C(v38, v39);
LABEL_17:
    sub_1D1665AEC(v18, v20, sub_1D1665A94);
    sub_1D15F2E34();
    if ((*(*(v42 - 8) + 48))(v20, 1, v42) == 1)
    {

      return MEMORY[0x1D388D890](v68);
    }

    v46 = *(v42 + 48);
    v47 = *v20;
    v48 = v20[1];
    v49 = v20[2];
    v50 = v20[3];
    sub_1D1665AEC(v20 + v46, v69, sub_1D1609304);
    v51 = v67[3];
    v72 = v67[2];
    v73 = v51;
    v74 = *(v67 + 8);
    v52 = v67[1];
    v70 = *v67;
    v71 = v52;
    sub_1D166FAE4();
    if (v50 == 1)
    {
      MEMORY[0x1D388D890](1);
      v53 = v66;
    }

    else
    {
      MEMORY[0x1D388D890](0);
      v53 = v66;
      sub_1D16706C4();
      if (v50)
      {
        sub_1D166FAE4();
      }
    }

    sub_1D15F3228(v49, v50);
    v55 = v65;
    sub_1D1665D28(v69, v65, sub_1D1609304);
    if ((*v63)(v55, 1, v53) == 1)
    {
      sub_1D16706C4();
    }

    else
    {
      v29 = v58;
      (*v57)(v58, v55, v53);
      sub_1D16706C4();
      sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8);
      sub_1D166F984();
      (*v56)(v29, v53);
    }

    v21 = v64;
    sub_1D1665BB8(v69, sub_1D1609304);
    result = sub_1D16706E4();
    v27 = result ^ v68;
  }

  if (v25 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v25;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v25)
    {
      sub_1D15F2E34();
      v42 = v54;
      (*(*(v54 - 8) + 56))(v18, 1, 1, v54);
      v24 = 0;
      v28 = v32;
      goto LABEL_17;
    }

    v24 = *(v21 + 8 * v30);
    ++v28;
    if (v24)
    {
      v28 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s27HealthMedicationsExperience29MedicationVisualizationConfigV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v13 = *a1;
  v12 = *a2;
  v4 = MedicationShape.rawValue.getter();
  v6 = v5;
  if (v4 == MedicationShape.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D16705D4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1D1662750(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  sub_1D1664EF4(&qword_1EDEC9D88);

  return sub_1D166F8A4();
}

uint64_t sub_1D1664EF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D15EE5A8(255, &qword_1EDECACA8, 0x1E69DC888);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1664F68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1664FD0()
{
  result = qword_1EDECB048;
  if (!qword_1EDECB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB048);
  }

  return result;
}

void sub_1D1665024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D1609304();
    v7 = v6;
    v8 = sub_1D16093F4();
    v9 = a3(a1, &type metadata for MedicationVisualizationFragment, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1665098()
{
  result = qword_1EC63E2F0;
  if (!qword_1EC63E2F0)
  {
    sub_1D1665024(255, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D166516C();
    sub_1D1665A18(&qword_1EC63E300, &qword_1EC63E2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E2F0);
  }

  return result;
}

unint64_t sub_1D166516C()
{
  result = qword_1EC63E2F8;
  if (!qword_1EC63E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E2F8);
  }

  return result;
}

unint64_t sub_1D16651C4()
{
  result = qword_1EC63E308;
  if (!qword_1EC63E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E308);
  }

  return result;
}

uint64_t sub_1D166524C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationVisualizationConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1D16654AC()
{
  sub_1D1665024(319, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
  if (v0 <= 0x3F)
  {
    sub_1D1664F68(319, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1665594()
{
  result = qword_1EC63E318;
  if (!qword_1EC63E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E318);
  }

  return result;
}

unint64_t sub_1D16655EC()
{
  result = qword_1EDECB038;
  if (!qword_1EDECB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB038);
  }

  return result;
}

unint64_t sub_1D1665644()
{
  result = qword_1EDECB040;
  if (!qword_1EDECB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB040);
  }

  return result;
}

uint64_t sub_1D1665698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6570616873 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D16705D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xEF73726F6C6F4373 || (sub_1D16705D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D16705D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D16705D4();

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

void sub_1D166581C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1664FD0();
    v7 = a3(a1, &type metadata for MedicationVisualizationConfig.MedicationVisualizationConfigV1.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D1665880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D1664F68(255, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D16658F0()
{
  result = qword_1EDECA008;
  if (!qword_1EDECA008)
  {
    sub_1D1665024(255, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D16659C4();
    sub_1D1665A18(&qword_1EDECA018, &qword_1EDECA028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA008);
  }

  return result;
}

unint64_t sub_1D16659C4()
{
  result = qword_1EDECAF18;
  if (!qword_1EDECAF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF18);
  }

  return result;
}

uint64_t sub_1D1665A18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D1609304();
    sub_1D1665880(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1665A94()
{
  if (!qword_1EDECA288)
  {
    sub_1D15F2E34();
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECA288);
    }
  }
}

uint64_t sub_1D1665AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1665B54()
{
  if (!qword_1EDECA020)
  {
    sub_1D1609304();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDECA020);
    }
  }
}

uint64_t sub_1D1665BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1665C18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D1664F68(255, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    sub_1D1664EF4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1665CC0()
{
  if (!qword_1EC63E328)
  {
    sub_1D1609304();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E328);
    }
  }
}

uint64_t sub_1D1665D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static MedicationsExperienceStore.shared.getter()
{
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }
}

uint64_t MedicationsExperienceStore.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MedicationsExperienceStore.init(healthStore:)(a1);
  return v2;
}

void *MedicationsExperienceStore.init(healthStore:)(uint64_t a1)
{
  sub_1D16669D4(0, &qword_1EDECAB70, MEMORY[0x1E69DF038]);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[3] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v1[4] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v1[5] = sub_1D166F3B4();
  sub_1D16669D4(0, &qword_1EDECAB68, MEMORY[0x1E69DF050]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v1[6] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v1[7] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v1[8] = sub_1D166F3B4();
  sub_1D16669D4(0, &qword_1EDECAB58, type metadata accessor for HealthStoreTimeZoneProvider);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v1[9] = sub_1D166F3B4();
  sub_1D16669D4(0, &qword_1EDECAB60, type metadata accessor for MedicationsScheduleIncompatibilityCache);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v1[10] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v1[11] = sub_1D166F3B4();
  v1[2] = a1;
  return v1;
}

void *sub_1D16661D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  type metadata accessor for MedicationsExperienceStore();
  v1 = swift_allocObject();
  result = MedicationsExperienceStore.init(healthStore:)(v0);
  off_1EDECB1C8 = v1;
  return result;
}

uint64_t sub_1D166622C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1D166F474();
  v4 = *(v3 + 16);
  result = sub_1D166F464();
  *a2 = result;
  return result;
}

uint64_t MedicationsExperienceStore.userDomainConceptStore.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1666324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v5;
  return result;
}

uint64_t sub_1D16663E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.userDomainConceptStore.setter()
{
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.userDomainConceptStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t MedicationsExperienceStore.ontologyStore.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D16666D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v5;
  return result;
}

uint64_t sub_1D1666794(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.ontologyStore.setter()
{
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.ontologyStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

void sub_1D16669D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for MedicationsExperienceStore();
    a3(255);
    v5 = sub_1D166F3A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1666A40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for MedicationsExperienceStore();
    sub_1D15EE5A8(255, a3, a4);
    v7 = sub_1D166F3A4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t (*MedicationsExperienceStore.listManager.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D16669D4(0, &qword_1EDECAB68, MEMORY[0x1E69DF050]);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t sub_1D1666BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_1D16669D4(0, &qword_1EDECAB70, MEMORY[0x1E69DF038]);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  v4 = HKStringFromListUserDomainType();
  sub_1D166FA04();

  sub_1D1638628();
  v5 = sub_1D166F4B4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = v3;
  result = sub_1D166F494();
  *a2 = result;
  return result;
}

uint64_t MedicationsExperienceStore.medicationControl.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1666DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v5;
  return result;
}

uint64_t sub_1D1666E94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.medicationControl.setter()
{
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.medicationControl.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t MedicationsExperienceStore.scheduleControl.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1667184@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v5;
  return result;
}

uint64_t sub_1D1667244(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.scheduleControl.setter()
{
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.scheduleControl.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t sub_1D16674E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D16669D4(0, &qword_1EDECAB58, type metadata accessor for HealthStoreTimeZoneProvider);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.timeZoneProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D16669D4(0, &qword_1EDECAB58, type metadata accessor for HealthStoreTimeZoneProvider);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

void sub_1D16676B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  type metadata accessor for HealthStoreTimeZoneProvider();
  swift_allocObject();
  v4 = v3;
  v5 = sub_1D1658B7C(v4);

  *a2 = v5;
}

uint64_t sub_1D1667748(unint64_t *a1, void (*a2)(uint64_t))
{
  sub_1D16669D4(0, a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v3;
}

uint64_t sub_1D1667878(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D16669D4(0, a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.scheduleIncompatibilityCache.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D16669D4(0, &qword_1EDECAB60, type metadata accessor for MedicationsScheduleIncompatibilityCache);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

void sub_1D16679F4(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = objc_allocWithZone(type metadata accessor for MedicationsScheduleIncompatibilityCache());
  v5 = v3;
  v6 = sub_1D1636914(v5);

  *a2 = v6;
}

uint64_t MedicationsExperienceStore.authorizationStore.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1667AFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v5;
  return result;
}

uint64_t sub_1D1667BBC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.authorizationStore.setter()
{
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.authorizationStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D1667DF0;
}

void sub_1D1667DF4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);

  v4 = v1[4];

  free(v1);
}

id sub_1D1667E70@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(*a2) initWithHealthStore_];
  *a3 = result;
  return result;
}

uint64_t MedicationsExperienceStore.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  return v0;
}

uint64_t MedicationsExperienceStore.__deallocating_deinit()
{
  MedicationsExperienceStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1667F7C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, void (*a3)(uint64_t)@<X4>, void *a4@<X8>)
{
  v5 = *a1;
  sub_1D16669D4(0, a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a4 = v7;
  return result;
}

uint64_t sub_1D1668030(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  sub_1D16669D4(0, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = v6;
  return sub_1D166F394();
}

void sub_1D1668174(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1D166F314();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MedicationGradientBackground();
  v25.receiver = v4;
  v25.super_class = v14;
  objc_msgSendSuper2(&v25, sel_drawRect_, a1, a2, a3, a4);
  v15 = UIGraphicsGetCurrentContext();
  if (v15)
  {
    v16 = v15;
    sub_1D15F2860();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D1672930;
    v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:1.0];
    v19 = [v18 CGColor];

    *(v17 + 32) = v19;
    v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.4 alpha:1.0];
    v21 = [v20 CGColor];

    *(v17 + 40) = v21;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    type metadata accessor for CGColor(0);
    v23 = sub_1D166FC44();
    v24 = CGGradientCreateWithColors(DeviceRGB, v23, dbl_1F4D4B258);

    if (v24)
    {

      CGContextSetBlendMode(v16, kCGBlendModeOverlay);
      (*(v10 + 104))(v13, *MEMORY[0x1E695EEB8], v9);
      sub_1D166FF14();
      (*(v10 + 8))(v13, v9);
      v28.origin.x = a1;
      v28.origin.y = a2;
      v28.size.width = a3;
      v28.size.height = a4;
      v27.y = CGRectGetHeight(v28);
      v26.x = 0.0;
      v26.y = 0.0;
      v27.x = 0.0;
      CGContextDrawLinearGradient(v16, v24, v26, v27, 3u);
      CGContextRestoreGState(v16);
    }

    else
    {
      __break(1u);
    }
  }
}

id MedicationGradientBackground.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationGradientBackground();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D166854C(uint64_t a1)
{
  v2 = HKLogMedication();
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v2 healthDataSource:*(off_1EDECB1C8 + 2)];

  sub_1D1668A58(a1);
  v5 = v4;
  v6 = *(a1 + 136);
  v7 = *(a1 + 80);
  swift_beginAccess();

  v8 = *(v6 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + 32);
  *(v6 + 32) = 0x8000000000000000;
  sub_1D1609064(0, v7, isUniquelyReferenced_nonNull_native);
  *(v6 + 32) = v13;
  swift_endAccess();

  aBlock[4] = sub_1D1668B90;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D15FABB0;
  aBlock[3] = &block_descriptor_15;
  v10 = _Block_copy(aBlock);

  [v3 submitEvent:v5 completion:v10];
  _Block_release(v10);
}

void sub_1D1668724(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v4 = sub_1D166F4E4();
    __swift_project_value_buffer(v4, qword_1EDECB360);

    oslog = sub_1D166F4D4();
    v5 = sub_1D166FF64();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      v9 = *(a3 + 32);
      v8 = *(a3 + 40);

      v10 = sub_1D15F7A30(v9, v8, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1D15E6000, oslog, v5, "[MedicationListOnboardingAnalytics] Successfully submitted analytics for step: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1D388E250](v7, -1, -1);
      v11 = v6;
LABEL_16:
      MEMORY[0x1D388E250](v11, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v13 = sub_1D166F4E4();
    __swift_project_value_buffer(v13, qword_1EDECB360);

    v14 = a2;
    oslog = sub_1D166F4D4();
    v15 = sub_1D166FF44();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      v20 = *(a3 + 32);
      v19 = *(a3 + 40);

      v21 = sub_1D15F7A30(v20, v19, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      if (a2)
      {
        v22 = a2;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v16 + 14) = v23;
      *v17 = v24;
      _os_log_impl(&dword_1D15E6000, oslog, v15, "[MedicationListOnboardingAnalytics] Failed to submit analytics for step: %s with error: %@.", v16, 0x16u);
      sub_1D15FADE4(v17);
      MEMORY[0x1D388E250](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1D388E250](v18, -1, -1);
      v11 = v16;
      goto LABEL_16;
    }
  }
}

__n128 sub_1D1668A58(uint64_t a1)
{
  v20 = *(a1 + 72);
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  v3 = *(a1 + 64);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v22 = *(a1 + 200);
  v21 = *(a1 + 208);
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  v19 = *(a1 + 209);
  v18 = *(a1 + 120);
  v16 = *(a1 + 66);
  v17 = *(a1 + 128);
  v15 = *(a1 + 232);
  v13 = *(a1 + 241);
  v14 = *(a1 + 240);
  type metadata accessor for MedicationListOnboardingEvent();
  v11 = swift_allocObject();
  result = v20;
  *(v11 + 16) = v20;
  *(v11 + 32) = v1;
  *(v11 + 40) = v2;
  *(v11 + 41) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v5;
  *(v11 + 57) = v6;
  *(v11 + 64) = v7;
  *(v11 + 72) = v8;
  *(v11 + 96) = v9;
  *(v11 + 104) = v10;
  *(v11 + 80) = v22;
  *(v11 + 88) = v21;
  *(v11 + 105) = v19;
  *(v11 + 112) = v18;
  *(v11 + 120) = v17;
  *(v11 + 121) = v16;
  *(v11 + 128) = v15;
  *(v11 + 136) = v14;
  *(v11 + 137) = v13;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1668C00()
{
  v0 = *MEMORY[0x1E69A3A10];
  result = sub_1D166FA04();
  qword_1EDEC9EE0 = result;
  *algn_1EDEC9EE8 = v2;
  return result;
}

id sub_1D1668C58(uint64_t a1)
{
  v2 = *MEMORY[0x1E69A3A08];
  if (qword_1EDEC9ED8 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v4 = sub_1D166F9C4();
  v5 = [v3 initWithCategory:v2 domainName:v4 healthStore:a1];

  return v5;
}

uint64_t sub_1D1668D34()
{
  v0 = *MEMORY[0x1E69A39C0];
  result = sub_1D166FA04();
  qword_1EDEC9EC8 = result;
  unk_1EDEC9ED0 = v2;
  return result;
}

uint64_t sub_1D1668D8C()
{
  v0 = *MEMORY[0x1E69A3A18];
  result = sub_1D166FA04();
  qword_1EDEC9E90 = result;
  *algn_1EDEC9E98 = v2;
  return result;
}

uint64_t sub_1D1668DE4()
{
  v0 = *MEMORY[0x1E69A3A80];
  result = sub_1D166FA04();
  qword_1EDEC9EA8 = result;
  *algn_1EDEC9EB0 = v2;
  return result;
}

uint64_t sub_1D1668E3C()
{
  v0 = *MEMORY[0x1E69A3A00];
  result = sub_1D166FA04();
  qword_1EC63E330 = result;
  *algn_1EC63E338 = v2;
  return result;
}

uint64_t MedicationScheduleItemDose.scheduleItemIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MedicationScheduleItemDose.init(_:scheduleItemIdentifier:medication:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static MedicationScheduleItemDose.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v4 == v8;
  if (!v10 && (sub_1D16705D4() & 1) == 0)
  {
    return 0;
  }

  v11 = v5;
  v12 = v9;
  v13 = sub_1D16700A4();

  return v13 & 1;
}

uint64_t sub_1D1668FA4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v4 == v8;
  if (!v10 && (sub_1D16705D4() & 1) == 0)
  {
    return 0;
  }

  v11 = v5;
  v12 = v9;
  v13 = sub_1D16700A4();

  return v13 & 1;
}

uint64_t MedicationScheduleItem.__allocating_init(_:scheduleItemDoses:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MedicationScheduleItem.init(_:scheduleItemDoses:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MedicationScheduleItem.description.getter()
{
  v1 = v0;
  sub_1D16702D4();

  strcpy(v9, "scheduleItem: ");
  HIBYTE(v9[1]) = -18;
  v2 = *(v0 + 16);
  v3 = [v2 description];
  v4 = sub_1D166FA04();
  v6 = v5;

  MEMORY[0x1D388CCF0](v4, v6);

  MEMORY[0x1D388CCF0](0xD000000000000014, 0x80000001D1679770);
  v7 = MEMORY[0x1D388CE40](*(v1 + 24), &type metadata for MedicationScheduleItemDose);
  MEMORY[0x1D388CCF0](v7);

  return v9[0];
}

uint64_t MedicationScheduleItem.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MedicationScheduleItem.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void static MedicationScheduleItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D15FAE98();
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (sub_1D16700A4())
  {
    v6 = *(a1 + 24);
    v7 = *(a2 + 24);

    sub_1D1620818(v6, v7);
  }
}

void sub_1D16692D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D15FAE98();
  v4 = *(v2 + 16);
  v5 = *(v3 + 16);
  if (sub_1D16700A4())
  {
    v6 = *(v2 + 24);
    v7 = *(v3 + 24);

    sub_1D1620818(v6, v7);
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D1669354(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D166939C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1669440()
{
  if (*v0)
  {
    result = 1701736302;
  }

  else
  {
    result = 0x726F6C6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1D1669470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D16705D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D16705D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1669548(uint64_t a1)
{
  v2 = sub_1D166AE50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1669584(uint64_t a1)
{
  v2 = sub_1D166AE50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D16695E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D16705D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D166966C(uint64_t a1)
{
  v2 = sub_1D166ADFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D16696A8(uint64_t a1)
{
  v2 = sub_1D166ADFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D16696F0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D1669720(uint64_t a1)
{
  v2 = sub_1D166ADA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D166975C(uint64_t a1)
{
  v2 = sub_1D166ADA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MedicationVisualizationFragment.FragmentModification.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D166B0B8(0, &qword_1EC63E340, sub_1D166ADA8, &type metadata for MedicationVisualizationFragment.FragmentModification.NoneCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v23 - v6;
  sub_1D166B0B8(0, &qword_1EC63E348, sub_1D166ADFC, &type metadata for MedicationVisualizationFragment.FragmentModification.ColorCodingKeys, v3);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  sub_1D166B0B8(0, &qword_1EC63E350, sub_1D166AE50, &type metadata for MedicationVisualizationFragment.FragmentModification.CodingKeys, v3);
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = v1[1];
  v23 = *v1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166AE50();
  sub_1D1670714();
  if (v16 == 1)
  {
    v31 = 1;
    sub_1D166ADA8();
    v18 = v24;
    v19 = v29;
    sub_1D1670524();
    (*(v27 + 8))(v18, v28);
    return (*(v12 + 8))(v15, v19);
  }

  else
  {
    v30 = 0;
    sub_1D166ADFC();
    v21 = v29;
    sub_1D1670524();
    v22 = v26;
    sub_1D1670534();
    (*(v25 + 8))(v10, v22);
    return (*(v12 + 8))(v15, v21);
  }
}

uint64_t MedicationVisualizationFragment.FragmentModification.hash(into:)()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  v3 = *v0;
  MEMORY[0x1D388D890](0);
  if (!v1)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t MedicationVisualizationFragment.FragmentModification.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D16706A4();
  if (v1 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v1)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t MedicationVisualizationFragment.FragmentModification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D166B0B8(0, &qword_1EDECABD8, sub_1D166ADA8, &type metadata for MedicationVisualizationFragment.FragmentModification.NoneCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v7;
  sub_1D166B0B8(0, &qword_1EDECABD0, sub_1D166ADFC, &type metadata for MedicationVisualizationFragment.FragmentModification.ColorCodingKeys, v3);
  v9 = v8;
  v40 = *(v8 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  sub_1D166B0B8(0, &qword_1EDECABE0, sub_1D166AE50, &type metadata for MedicationVisualizationFragment.FragmentModification.CodingKeys, v3);
  v14 = v13;
  v43 = *(v13 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166AE50();
  v19 = v46;
  sub_1D1670704();
  if (v19)
  {
    goto LABEL_9;
  }

  v21 = v43;
  v20 = v44;
  v39 = v9;
  v46 = a1;
  v22 = v45;
  v23 = v17;
  v24 = sub_1D1670514();
  if (*(v24 + 16) != 1)
  {
    v29 = sub_1D1670334();
    swift_allocError();
    v31 = v30;
    sub_1D166AEA4();
    v33 = *(v32 + 48);
    *v31 = &type metadata for MedicationVisualizationFragment.FragmentModification;
    sub_1D16704D4();
    sub_1D1670314();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v21 + 8))(v23, v14);
    swift_unknownObjectRelease();
    a1 = v46;
LABEL_9:
    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  if (*(v24 + 32))
  {
    v48 = 1;
    sub_1D166ADA8();
    v25 = v20;
    sub_1D16704C4();
    v26 = v22;
    (*(v42 + 8))(v25, v41);
    (*(v21 + 8))(v23, v14);
    swift_unknownObjectRelease();
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v47 = 0;
    sub_1D166ADFC();
    v34 = v12;
    sub_1D16704C4();
    v26 = v22;
    v44 = v23;
    v37 = v39;
    v27 = sub_1D16704E4();
    v28 = v38;
    (*(v40 + 8))(v34, v37);
    (*(v21 + 8))(v44, v14);
    swift_unknownObjectRelease();
  }

  *v26 = v27;
  v26[1] = v28;
  v35 = v46;
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_1D166A114()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D16706A4();
  if (v1 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v1)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t sub_1D166A1A4()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  v3 = *v0;
  MEMORY[0x1D388D890](0);
  if (!v1)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t sub_1D166A234()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D16706A4();
  if (v1 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v1)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t MedicationVisualizationFragment.assetName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicationVisualizationFragment.modification.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D15F301C(v2, v3);
}

uint64_t MedicationVisualizationFragment.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 16);
  }

  if (v2 != 1)
  {
    v4 = *(v0 + 24);
  }

  sub_1D15F301C(v1, v2);
  return v3;
}

uint64_t sub_1D166A378()
{
  if (*v0)
  {
    result = 0x6163696669646F6DLL;
  }

  else
  {
    result = 0x6D614E7465737361;
  }

  *v0;
  return result;
}

uint64_t sub_1D166A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D16705D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6163696669646F6DLL && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D16705D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D166A4A8(uint64_t a1)
{
  v2 = sub_1D166B010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D166A4E4(uint64_t a1)
{
  v2 = sub_1D166B010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MedicationVisualizationFragment.encode(to:)(void *a1)
{
  sub_1D166B0B8(0, &qword_1EC63E368, sub_1D166B010, &type metadata for MedicationVisualizationFragment.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166B010();
  sub_1D1670714();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_1D1670544();
  if (!v13)
  {
    v19 = v17;
    v20 = v16;
    v21 = 1;
    sub_1D15F301C(v17, v16);
    sub_1D166B064();
    sub_1D1670564();
    sub_1D15F3228(v19, v20);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MedicationVisualizationFragment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D166FAE4();
  if (v3 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  MEMORY[0x1D388D890](0);
  if (!v3)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t MedicationVisualizationFragment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D16706A4();
  sub_1D166FAE4();
  if (v3 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v3)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t MedicationVisualizationFragment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  sub_1D166B0B8(0, &qword_1EDECABC8, sub_1D166B010, &type metadata for MedicationVisualizationFragment.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166B010();
  sub_1D1670704();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v20;
  LOBYTE(v21) = 0;
  v12 = sub_1D16704F4();
  v14 = v13;
  v15 = v12;
  v23 = 1;
  sub_1D166B120();
  sub_1D1670504();
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  v17 = v22;
  *v11 = v15;
  v11[1] = v14;
  v11[2] = v16;
  v11[3] = v17;

  sub_1D15F301C(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_1D15F3228(v16, v17);
}

uint64_t sub_1D166AA8C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D166FAE4();
  if (v3 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  MEMORY[0x1D388D890](0);
  if (!v3)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t sub_1D166AB2C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D16706A4();
  sub_1D166FAE4();
  if (v3 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v3)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t _s27HealthMedicationsExperience31MedicationVisualizationFragmentV0F12ModificationO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 != 1)
    {
      if (v3)
      {
        if (!v5)
        {
          sub_1D15F301C(*a2, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_6;
        }

        if (v2 == v4 && v3 == v5)
        {
          sub_1D15F301C(*a1, v3);
          sub_1D15F301C(v2, v3);
          sub_1D15F3228(v2, v3);
          sub_1D15F3228(v2, v3);
          return 1;
        }

        v10 = *a1;
        v11 = sub_1D16705D4();
        sub_1D15F301C(v4, v5);
        sub_1D15F301C(v2, v3);
        sub_1D15F3228(v2, v3);
        sub_1D15F3228(v4, v5);
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v9 = a2[1];

        sub_1D15F301C(v4, v5);
        sub_1D15F301C(v2, 0);
        sub_1D15F3228(v2, 0);
        sub_1D15F3228(v4, v5);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_5:
    v6 = *a2;
    v7 = a2[1];
LABEL_6:
    sub_1D15F301C(v6, v7);
    sub_1D15F301C(v2, v3);
    sub_1D15F3228(v2, v3);
LABEL_7:
    sub_1D15F3228(v4, v5);
    return 0;
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

  sub_1D15F3228(*a1, 1);
  sub_1D15F3228(v4, 1);
  return v5;
}

unint64_t sub_1D166ADA8()
{
  result = qword_1EDECAF78;
  if (!qword_1EDECAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF78);
  }

  return result;
}

unint64_t sub_1D166ADFC()
{
  result = qword_1EDECAF60;
  if (!qword_1EDECAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF60);
  }

  return result;
}

unint64_t sub_1D166AE50()
{
  result = qword_1EDECAF90[0];
  if (!qword_1EDECAF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDECAF90);
  }

  return result;
}

void sub_1D166AEA4()
{
  if (!qword_1EC63E358)
  {
    sub_1D166AF14();
    sub_1D1670324();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E358);
    }
  }
}

unint64_t sub_1D166AF14()
{
  result = qword_1EC63E360;
  if (!qword_1EC63E360)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC63E360);
  }

  return result;
}

uint64_t _s27HealthMedicationsExperience31MedicationVisualizationFragmentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_1D16705D4() & 1) != 0))
  {
    v11 = v2;
    v12 = v3;
    v9 = v4;
    v10 = v5;
    sub_1D15F301C(v2, v3);
    sub_1D15F301C(v4, v5);
    v7 = _s27HealthMedicationsExperience31MedicationVisualizationFragmentV0F12ModificationO2eeoiySbAE_AEtFZ_0(&v11, &v9);
    sub_1D15F3228(v9, v10);
    sub_1D15F3228(v11, v12);
  }

  return v7 & 1;
}

unint64_t sub_1D166B010()
{
  result = qword_1EDECAF40;
  if (!qword_1EDECAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF40);
  }

  return result;
}

unint64_t sub_1D166B064()
{
  result = qword_1EC63E370;
  if (!qword_1EC63E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E370);
  }

  return result;
}

void sub_1D166B0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D166B120()
{
  result = qword_1EDECAF48;
  if (!qword_1EDECAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF48);
  }

  return result;
}

unint64_t sub_1D166B178()
{
  result = qword_1EC63E378;
  if (!qword_1EC63E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E378);
  }

  return result;
}

unint64_t sub_1D166B1D0()
{
  result = qword_1EDECAF20;
  if (!qword_1EDECAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27HealthMedicationsExperience31MedicationVisualizationFragmentV0F12ModificationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D166B248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D166B290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D166B2E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D166B33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D166B398(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1D166B3E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D166B474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D166B558()
{
  result = qword_1EC63E380;
  if (!qword_1EC63E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E380);
  }

  return result;
}

unint64_t sub_1D166B5B0()
{
  result = qword_1EC63E388;
  if (!qword_1EC63E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E388);
  }

  return result;
}

unint64_t sub_1D166B608()
{
  result = qword_1EC63E390;
  if (!qword_1EC63E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E390);
  }

  return result;
}

unint64_t sub_1D166B660()
{
  result = qword_1EDECAF30;
  if (!qword_1EDECAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF30);
  }

  return result;
}

unint64_t sub_1D166B6B8()
{
  result = qword_1EDECAF38;
  if (!qword_1EDECAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF38);
  }

  return result;
}

unint64_t sub_1D166B710()
{
  result = qword_1EDECAF80;
  if (!qword_1EDECAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF80);
  }

  return result;
}

unint64_t sub_1D166B768()
{
  result = qword_1EDECAF88;
  if (!qword_1EDECAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF88);
  }

  return result;
}

unint64_t sub_1D166B7C0()
{
  result = qword_1EDECAF50;
  if (!qword_1EDECAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF50);
  }

  return result;
}

unint64_t sub_1D166B818()
{
  result = qword_1EDECAF58;
  if (!qword_1EDECAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF58);
  }

  return result;
}

unint64_t sub_1D166B870()
{
  result = qword_1EDECAF68;
  if (!qword_1EDECAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF68);
  }

  return result;
}

unint64_t sub_1D166B8C8()
{
  result = qword_1EDECAF70;
  if (!qword_1EDECAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF70);
  }

  return result;
}

uint64_t MedicationShape.accessibilityLabel.getter()
{
  switch(*v0)
  {
    case 1:
    case 3:
    case 0xC:
    case 0x14:
    case 0x21:
    case 0x27:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 2:
    case 5:
    case 0xB:
    case 0x17:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 4:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 6:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 7:
    case 0x1E:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 8:
    case 0x11:
    case 0x13:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 9:
    case 0x10:
    case 0x12:
    case 0x20:
    case 0x25:
    case 0x2B:
    case 0x2F:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0xA:
    case 0xF:
    case 0x15:
    case 0x16:
    case 0x1C:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0xD:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0xE:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x18:
    case 0x26:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x19:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x1B:
    case 0x24:
    case 0x2E:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x1D:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x22:
    case 0x28:
    case 0x2A:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    default:
      if (qword_1EDECB050 != -1)
      {
LABEL_34:
        swift_once();
      }

      break;
  }

  return sub_1D166F004();
}

uint64_t sub_1D166C0D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_1D162E824();
      v6 = sub_1D166FC54();
    }

    **(*(v5 + 64) + 40) = v6;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t MedicationScheduleProvider.__allocating_init(scheduleControl:scheduleControlObserver:)(void *a1, char *a2)
{
  v4 = swift_allocObject();
  MedicationScheduleProvider.init(scheduleControl:scheduleControlObserver:)(a1, a2);
  return v4;
}

void *MedicationScheduleProvider.init(scheduleControl:scheduleControlObserver:)(void *a1, char *a2)
{
  v3 = v2;
  v2[4] = 0;
  sub_1D166C378();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v2[5] = sub_1D166F674();
  v2[2] = a1;
  v2[3] = a2;
  v17 = *&a2[OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D166C548;
  *(v11 + 24) = v10;
  sub_1D165A76C();
  sub_1D166C998();
  v12 = a1;
  v13 = a2;

  v14 = sub_1D166F7B4();

  v15 = v3[4];
  v3[4] = v14;

  return v3;
}

void sub_1D166C378()
{
  if (!qword_1EC63E398)
  {
    sub_1D166CAC8(255, &qword_1EDEC9FD0, sub_1D162E7F0, MEMORY[0x1E69E6720]);
    v0 = sub_1D166F664();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E398);
    }
  }
}

uint64_t sub_1D166C410(void *a1, uint64_t a2)
{
  sub_1D166CAC8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1D166FD84();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a1;

  sub_1D1632CAC(0, 0, v7, &unk_1D1676418, v9);
}

uint64_t sub_1D166C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D166C570, 0, 0);
}

uint64_t sub_1D166C570()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D166C680;
  v2 = swift_continuation_init();
  sub_1D16440EC();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D166C0D0;
  v0[13] = &block_descriptor_16;
  v0[14] = v2;
  [v1 fetchAllSchedulesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D166C680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D166C8B0;
  }

  else
  {
    v3 = sub_1D166C790;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D166C790()
{
  v1 = v0[18];
  v2 = v0 + 10;
  if (v1)
  {
    v3 = v0[25];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + 40);

      *v2 = v1;
      sub_1D166F654();
    }
  }

  else
  {
    v6 = v0[25];
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = *(v7 + 40);

      *v2 = 0;
      sub_1D166F654();
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D166C8B0()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = v0[26];
  if (Strong)
  {
    v5 = *(Strong + 40);

    v0[18] = 0;
    sub_1D166F654();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D166C970()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1D166C998()
{
  result = qword_1EC63E3A0;
  if (!qword_1EC63E3A0)
  {
    sub_1D165A76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E3A0);
  }

  return result;
}

uint64_t MedicationScheduleProvider.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t MedicationScheduleProvider.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_1D166CAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D166CB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D15FFFCC;

  return sub_1D166C550(a1, v4, v5, v7, v6);
}

UIColor __swiftcall UIColor.init(hex:)(Swift::Int hex)
{
  v1 = BYTE2(hex) / 255.0;
  v2 = BYTE1(hex) / 255.0;
  v3 = hex / 255.0;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithRed:v1 green:v2 blue:v3 alpha:1.0];
}

CGColorRef __swiftcall UIColor.cgColor(with:)(UITraitCollection with)
{
  v2 = [v1 resolvedColorWithTraitCollection_];
  v3 = [v2 CGColor];

  return v3;
}

uint64_t MedicationUserFacingTitleProviding.userFacingTitle.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 72))();
  if (!v5)
  {
    return (*(a2 + 24))(a1, a2);
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return (*(a2 + 24))(a1, a2);
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.expandedTitle.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  sub_1D166E15C(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = a2[9](a1, a2);
  if (!v9)
  {
    return a2[2](a1, a2);
  }

  v10 = v8;
  v11 = v9;
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = a2[5](a1, a2), !v14))
  {

    return a2[2](a1, a2);
  }

  v15 = v13;
  v16 = v14;
  v24[1] = "ion";
  v17 = sub_1D166F1F4();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D166E15C(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D16721B0;
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D15F3174();
  *(v18 + 32) = v10;
  *(v18 + 40) = v11;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = v15;
  *(v18 + 80) = v16;
  v21 = sub_1D166F004();
  if (*(v18 + 16))
  {
    v22 = sub_1D166FA34();
  }

  else
  {
    v22 = v21;
  }

  sub_1D166E1C0(v7, &unk_1EDECAB90, MEMORY[0x1E6969770]);
  return v22;
}

uint64_t MedicationUserFacingTitleProviding.nonUserSpecifiedName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 128))();
  if (!v5)
  {
    result = (*(a2 + 40))(a1, a2);
    if (!v6)
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      return sub_1D166F004();
    }
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.userFacingSubtitle.getter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D166F004();
  (*(a2 + 56))(a1, a2);
  v20[0] = v4;
  v5 = 0;
  v20[1] = (*(a2 + 64))(a1, a2);
  v20[2] = v6;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = &v20[2 * v5];
  while (++v5 != 3)
  {
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D15ECAB4(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D15ECAB4((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      goto LABEL_4;
    }
  }

  sub_1D165BB60(0, &qword_1EDECAE20, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  sub_1D165BB60(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v15 = sub_1D166F9A4();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    return 0;
  }

  return v15;
}

uint64_t MedicationUserFacingTitleProviding.brandOrGenericOrPreferred.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 88))();
  if (!v5)
  {
    result = (*(a2 + 96))(a1, a2);
    if (!v6)
    {
      return (*(a2 + 80))(a1, a2);
    }
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.manufacturedOrBasicDoseForm.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 104))();
  if (!v5)
  {
    return (*(a2 + 112))(a1, a2);
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.doseForm.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 136))();
  if (v5)
  {
    return (*(a2 + 48))(a1, a2);
  }

  HKMedicationFreeTextFormTypeCode.localizationKey.getter(v4);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  v7 = sub_1D166F004();

  return v7;
}

uint64_t MedicationUserFacingTitleProviding.unitStrength.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() medicationDoseEventType];
  v5 = (*(a2 + 144))(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _unit];
    sub_1D1630C70();
    v8 = [objc_opt_self() percentUnit];
    v9 = sub_1D16700A4();

    v10 = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
    v11 = v10;
    if (v9)
    {
      [v10 setHasSpaceBetweenValueAndUnit_];
    }

    v12 = [v6 localizedStringForType:v4 parameters:v11];
    v13 = sub_1D166FA04();
  }

  else
  {
    v13 = (*(a2 + 120))(a1, a2);
  }

  return v13;
}

uint64_t sub_1D166D764()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);

  return v1;
}

uint64_t sub_1D166D7D4(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D166FA04();

  return v4;
}

id HKMedicationUserDomainConcept.__freeTextMedicationForm.getter()
{
  v1 = [v0 freeTextMedicationFormCode];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 longLongValue];

  return v3;
}

id HKMedicationUserDomainConcept.__freeTextMedicationStrengthQuantity.getter()
{
  v1 = [v0 freeTextMedicationStrengthQuantity];

  return v1;
}

uint64_t sub_1D166D920()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);

  return v3;
}

uint64_t sub_1D166D998(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D166FA04();

  return v6;
}

id sub_1D166D9FC()
{
  v1 = [*v0 freeTextMedicationFormCode];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 longLongValue];

  return v3;
}

id sub_1D166DA64()
{
  v1 = [*v0 freeTextMedicationStrengthQuantity];

  return v1;
}

uint64_t HKMedicationUserDomainConcept.medmojiConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D166E15C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = [v2 userVisualizationConfigJSONString];
  if (v8)
  {
    v9 = v8;
    sub_1D166FA04();

    MedicationVisualizationConfig.init(jsonString:)(v7);
    v10 = type metadata accessor for MedicationVisualizationConfig(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      sub_1D15F2F38(v7, a1);
      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    sub_1D166E1C0(v7, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  v12 = type metadata accessor for MedicationVisualizationConfig(0);
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t HKMedicationUserDomainConcept.resolvedMedicationName.getter()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
  v4 = v3;

  if (!v4)
  {
    v5 = swift_getKeyPath();
    v2 = sub_1D161E974(v5, 0x53555F6E65, 0xE500000000000000);
    v7 = v6;

    if (!v7)
    {
      v8 = swift_getKeyPath();
      v2 = sub_1D161E974(v8, 0x53555F6E65, 0xE500000000000000);
      v10 = v9;

      if (!v10)
      {
        v11 = [v0 freeTextMedicationName];
        if (v11 || (v11 = [v0 userSpecifiedName]) != 0)
        {
          v12 = v11;
          v2 = sub_1D166FA04();
        }

        else
        {
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          return sub_1D166F004();
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1D166DE84(char a1)
{
  v3 = [v1 userSpecifiedName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D166FA04();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      KeyPath = swift_getKeyPath();
      v10 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
      v12 = v11;

      if (v12)
      {
        goto LABEL_8;
      }

      v13 = swift_getKeyPath();
      v10 = sub_1D161E974(v13, 0x53555F6E65, 0xE500000000000000);
      v12 = v14;

      if (v12 || (v15 = swift_getKeyPath(), v10 = sub_1D161E974(v15, 0x53555F6E65, 0xE500000000000000), v12 = v16, , v12))
      {
LABEL_8:
        v17 = sub_1D15ECAB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = sub_1D15ECAB4((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        v20 = &v17[16 * v19];
        *(v20 + 4) = v10;
        *(v20 + 5) = v12;
        if ((a1 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        v21 = swift_getKeyPath();
        v22 = sub_1D161E974(v21, 0x53555F6E65, 0xE500000000000000);
        v24 = v23;

        if (v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v25 = HKMedicationUserDomainConcept.localizedResolvedForm.getter();
  if (!v26)
  {
    goto LABEL_21;
  }

  v22 = v25;
  v24 = v26;
LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D15ECAB4(0, *(v17 + 2) + 1, 1, v17);
  }

  v28 = *(v17 + 2);
  v27 = *(v17 + 3);
  if (v28 >= v27 >> 1)
  {
    v17 = sub_1D15ECAB4((v27 > 1), v28 + 1, 1, v17);
  }

  *(v17 + 2) = v28 + 1;
  v29 = &v17[16 * v28];
  *(v29 + 4) = v22;
  *(v29 + 5) = v24;
LABEL_21:
  if (*(v17 + 2))
  {
    sub_1D165BB60(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    sub_1D160172C();
    v30 = sub_1D166F9A4();
  }

  else
  {

    return 0;
  }

  return v30;
}

void sub_1D166E15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D166E1C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D166E15C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D166E3B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = HKStringFromMedicationListOnboardingProvenanceType();
  v3 = sub_1D166FA04();

  return v3;
}

uint64_t sub_1D166E458(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D166E4E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_1D166E548()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1D166E580(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1D166E618()
{
  swift_beginAccess();
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_1D166E650(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1D166E728(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t sub_1D166E7B8()
{
  swift_beginAccess();
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_1D166E7F0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t MedicationListOnboardingContext.__allocating_init(provenance:firstTimeMedFlow:medsDetailsEntryPoint:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 40) = 0;
  *(v8 + 48) = 513;
  *(v8 + 56) = 0;
  *(v8 + 64) = 1;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  *(v8 + 40) = a3;
  *(v8 + 48) = a4 & 1;
  *(v8 + 32) = sub_1D162B888(&unk_1F4D4B268);
  return v8;
}

uint64_t MedicationListOnboardingContext.init(provenance:firstTimeMedFlow:medsDetailsEntryPoint:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 40) = 0;
  *(v4 + 48) = 513;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  *(v4 + 40) = a3;
  *(v4 + 48) = a4 & 1;
  *(v4 + 32) = sub_1D162B888(&unk_1F4D4B268);
  return v4;
}

uint64_t sub_1D166E9D0()
{
  swift_beginAccess();
  result = 0;
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *(v0 + 40);
    v3 = HKStringFromMedicationListOnboardingDetailsEntryType();
    v4 = sub_1D166FA04();

    return v4;
  }

  return result;
}

uint64_t MedicationListOnboardingContext.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t MedicationListOnboardingContext.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}