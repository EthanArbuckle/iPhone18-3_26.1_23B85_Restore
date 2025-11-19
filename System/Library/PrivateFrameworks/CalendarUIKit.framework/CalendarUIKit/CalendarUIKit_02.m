void sub_1CABB7D3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CAD4E4D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1CABB7DCC(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4634D8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4634E0);
  v20 = MEMORY[0x1E6981848];
  v21 = *(a1 + 16);
  v3 = v21;
  swift_getTupleTypeMetadata();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  v4 = sub_1CAD4DA24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_1CAD4CC94();
  sub_1CAD4DA14();
  swift_getWitnessTable();
  sub_1CAC06984(v8);
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_1CAC06984(v10);
  return (v12)(v10, v4);
}

uint64_t sub_1CABB7FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v36 = *(a2 - 8);
  v37 = a2;
  v6 = MEMORY[0x1EEE9AC00](a1);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v30 - v8;
  v9 = sub_1CAD4D904();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 40);
  v38 = a3;
  if (v14 >> 60 == 15)
  {
    memset(v86, 0, 72);
    v15 = v37;
    v16 = a1;
  }

  else
  {
    v33 = v11;
    v17 = *(a1 + 32);
    v18 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1CABB8BB4(v17, v14);
    sub_1CABB8BB4(v17, v14);
    sub_1CABB8BB4(v17, v14);
    v19 = sub_1CAD4C014();
    v32 = a1;
    v20 = v19;
    v21 = [v18 initWithData_];

    sub_1CABB8C08(v17, v14);
    if (!v21)
    {
      [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    sub_1CAD4D8E4();
    sub_1CABB8C08(v17, v14);
    v22 = v33;
    (*(v10 + 104))(v13, *MEMORY[0x1E6981638], v33);
    v31 = sub_1CAD4D954();

    (*(v10 + 8))(v13, v22);
    v15 = v37;
    type metadata accessor for MemberItemView();
    v23 = v32;
    sub_1CAD4DC94();
    sub_1CAD4C744();
    sub_1CABB8C08(v17, v14);
    *&v40[6] = v83;
    *&v40[22] = v84;
    *&v40[38] = v85;
    *(&v86[1] + 2) = *v40;
    v86[0] = v31;
    LOWORD(v86[1]) = 1;
    *(&v86[2] + 2) = *&v40[16];
    *(&v86[3] + 2) = *&v40[32];
    *&v86[4] = *(&v85 + 1);
    v16 = v23;
  }

  v37 = sub_1CAD4CDA4();
  LOBYTE(v48) = 1;
  sub_1CABB86C4(v16, v79);
  v72 = v79[6];
  v73 = v79[7];
  v74 = v79[8];
  v75 = v79[9];
  v68 = v79[2];
  v69 = v79[3];
  v70 = v79[4];
  v71 = v79[5];
  v66 = v79[0];
  v67 = v79[1];
  v76[6] = v79[6];
  v76[7] = v79[7];
  v76[8] = v79[8];
  v76[9] = v79[9];
  v76[2] = v79[2];
  v76[3] = v79[3];
  v76[4] = v79[4];
  v76[5] = v79[5];
  v76[0] = v79[0];
  v76[1] = v79[1];
  sub_1CAB23A9C(&v66, &v77, &qword_1EC4634E8);
  sub_1CAB21B68(v76, &qword_1EC4634E8);
  *(&v79[3] + 7) = v69;
  *(&v79[2] + 7) = v68;
  *(&v79[6] + 7) = v72;
  *(&v79[7] + 7) = v73;
  *(&v79[8] + 7) = v74;
  *(&v79[9] + 7) = v75;
  *(&v79[4] + 7) = v70;
  *(&v79[5] + 7) = v71;
  *(v79 + 7) = v66;
  *(&v79[1] + 7) = v67;
  *&v78[113] = v79[7];
  *&v78[129] = v79[8];
  *&v78[145] = v79[9];
  *&v78[49] = v79[3];
  *&v78[65] = v79[4];
  *&v78[81] = v79[5];
  *&v78[97] = v79[6];
  *&v78[1] = v79[0];
  *&v78[17] = v79[1];
  v77 = v37;
  v78[0] = v48;
  *&v78[160] = *(&v75 + 1);
  *&v78[33] = v79[2];
  v24 = type metadata accessor for MemberItemView();
  v25 = v39;
  sub_1CAC06984(v16 + *(v24 + 44));
  v62 = v86[2];
  v63 = v86[3];
  v64 = *&v86[4];
  v60 = v86[0];
  v61 = v86[1];
  v56 = *&v78[112];
  v57 = *&v78[128];
  v58 = *&v78[144];
  v59 = *&v78[160];
  v52 = *&v78[48];
  v53 = *&v78[64];
  v54 = *&v78[80];
  v55 = *&v78[96];
  v48 = v77;
  v49 = *v78;
  v50 = *&v78[16];
  v51 = *&v78[32];
  v65[0] = &v60;
  v65[1] = &v48;
  v46 = 0;
  v47 = 1;
  v65[2] = &v46;
  v26 = v36;
  v27 = v34;
  (*(v36 + 16))(v34, v25, v15);
  v65[3] = v27;
  sub_1CAB23A9C(v86, v79, &qword_1EC4634D8);
  sub_1CAB23A9C(&v77, v79, &qword_1EC4634E0);
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4634D8);
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4634E0);
  v45[2] = MEMORY[0x1E6981848];
  v45[3] = v15;
  v41 = sub_1CABB89BC();
  v42 = sub_1CABB8B50();
  v43 = MEMORY[0x1E6981830];
  v44 = v38;
  sub_1CACDFC20(v65, 4uLL, v45);
  sub_1CAB21B68(&v77, &qword_1EC4634E0);
  sub_1CAB21B68(v86, &qword_1EC4634D8);
  v28 = *(v26 + 8);
  v28(v39, v15);
  v28(v27, v15);
  v79[8] = v56;
  v79[9] = v57;
  v79[10] = v58;
  v80 = v59;
  v79[4] = v52;
  v79[5] = v53;
  v79[6] = v54;
  v79[7] = v55;
  v79[0] = v48;
  v79[1] = v49;
  v79[2] = v50;
  v79[3] = v51;
  sub_1CAB21B68(v79, &qword_1EC4634E0);
  v81[2] = v62;
  v81[3] = v63;
  v82 = v64;
  v81[0] = v60;
  v81[1] = v61;
  return sub_1CAB21B68(v81, &qword_1EC4634D8);
}

uint64_t sub_1CABB86C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[1];
  v57 = *a1;
  v58 = v4;
  sub_1CABA6054();

  v5 = sub_1CAD4D444();
  v36 = v6;
  v37 = v5;
  v8 = v7;
  v35 = v9;
  KeyPath = swift_getKeyPath();
  v33 = sub_1CAD4D264();
  v32 = swift_getKeyPath();
  LOBYTE(v57) = v8 & 1;
  LOBYTE(v56[0]) = 0;
  v31 = sub_1CAD4D8A4();
  v10 = a1[3];
  if (v10)
  {
    v57 = a1[2];
    v58 = v10;

    v30 = sub_1CAD4D444();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = swift_getKeyPath();
    v18 = sub_1CAD4D254();
    v19 = swift_getKeyPath();
    LOBYTE(v57) = v14 & 1;
    LOBYTE(v56[0]) = 0;
    v20 = v14 & 1;
    v10 = sub_1CAD4D8B4();
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v12;
    v26 = v30;
    v27 = 1;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v27 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
  }

  *&v46 = v37;
  *(&v46 + 1) = v36;
  LOBYTE(v47) = v8 & 1;
  *(&v47 + 1) = v35;
  *&v48 = KeyPath;
  *(&v48 + 1) = 1;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = v32;
  *&v50 = v33;
  *(&v50 + 1) = v31;
  *&v51 = v26;
  v38 = v48;
  v39 = v49;
  *(&v51 + 1) = v25;
  *&v52 = v20;
  *(&v52 + 1) = v24;
  *&v53 = v23;
  *(&v53 + 1) = v27;
  *&v54 = 0;
  *(&v54 + 1) = v21;
  *&v55 = v22;
  *(&v55 + 1) = v10;
  v40 = v50;
  v41 = v51;
  v44 = v54;
  v45 = v55;
  v42 = v52;
  v43 = v53;
  v28 = v47;
  *a2 = v46;
  a2[1] = v28;
  a2[4] = v40;
  a2[5] = v41;
  a2[2] = v38;
  a2[3] = v39;
  a2[8] = v44;
  a2[9] = v45;
  a2[6] = v42;
  a2[7] = v43;
  v56[0] = v26;
  v56[1] = v25;
  v56[2] = v20;
  v56[3] = v24;
  v56[4] = v23;
  v56[5] = v27;
  v56[6] = 0;
  v56[7] = v21;
  v56[8] = v22;
  v56[9] = v10;
  sub_1CAB23A9C(&v46, &v57, &qword_1EC463520);
  sub_1CAB23A9C(&v51, &v57, &qword_1EC463528);
  sub_1CAB21B68(v56, &qword_1EC463528);
  v57 = v37;
  v58 = v36;
  v59 = v8 & 1;
  v60 = v35;
  v61 = KeyPath;
  v62 = 1;
  v63 = 0;
  v64 = v32;
  v65 = v33;
  v66 = v31;
  return sub_1CAB21B68(&v57, &qword_1EC463520);
}

unint64_t sub_1CABB89BC()
{
  result = qword_1EC4634F0;
  if (!qword_1EC4634F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4634D8);
    sub_1CABB8A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4634F0);
  }

  return result;
}

unint64_t sub_1CABB8A40()
{
  result = qword_1EC4634F8;
  if (!qword_1EC4634F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463500);
    sub_1CABB8ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4634F8);
  }

  return result;
}

unint64_t sub_1CABB8ACC()
{
  result = qword_1EC463508;
  if (!qword_1EC463508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463508);
  }

  return result;
}

unint64_t sub_1CABB8B50()
{
  result = qword_1EC463518;
  if (!qword_1EC463518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4634E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463518);
  }

  return result;
}

uint64_t sub_1CABB8BB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CABB8C08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CABB8C1C(a1, a2);
  }

  return a1;
}

uint64_t sub_1CABB8C1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for DateTimeEditorExpansionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DateTimeEditorExpansionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for DateTimeEditor()
{
  result = qword_1EC463538;
  if (!qword_1EC463538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CABB8E70()
{
  sub_1CABB8FE8(319, &qword_1EC463548, type metadata accessor for DateTimeViewModel);
  if (v0 <= 0x3F)
  {
    sub_1CABB8FE8(319, &qword_1EC463100, type metadata accessor for RepeatViewModel);
    if (v1 <= 0x3F)
    {
      sub_1CABB903C(319, &qword_1EC463108, MEMORY[0x1E69E6370], MEMORY[0x1E6981940]);
      if (v2 <= 0x3F)
      {
        sub_1CABB903C(319, &qword_1EC463550, &type metadata for DateTimeEditorExpansionState, MEMORY[0x1E6981788]);
        if (v3 <= 0x3F)
        {
          sub_1CABB903C(319, &qword_1EC463558, MEMORY[0x1E69E6370], MEMORY[0x1E6981788]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CABB8FE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4DC34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CABB903C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1CABB9090()
{
  result = qword_1EC463560;
  if (!qword_1EC463560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463560);
  }

  return result;
}

uint64_t _s13CalendarUIKit12CUIKDateViewV7StylingV15VerticalContentO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABB912C()
{
  v1 = *v0;
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABB918C()
{
  v1 = type metadata accessor for DateTimeEditor();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463568);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  *v7 = sub_1CAD4CD94();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463570);
  sub_1CABB9424(v0, &v7[*(v8 + 44)]);
  v9 = sub_1CAD4DCC4();
  v10 = v0 + *(v2 + 36);
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v23) = v11;
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463578);
  sub_1CAD4D994();
  v13 = v26;
  v14 = &v7[*(v5 + 36)];
  *v14 = v9;
  v14[8] = v13;
  v15 = v0 + *(v2 + 32);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v15) = v15[16];
  v23 = v16;
  v24 = v17;
  v25 = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v26, v18);
  LOBYTE(v23) = v26;
  sub_1CABC0DDC(v0, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeEditor);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  sub_1CABC0A6C(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1CABC0B50();
  sub_1CAD4D754();

  return sub_1CAB21B68(v7, &qword_1EC463568);
}

uint64_t sub_1CABB9424@<X0>(uint64_t (*a1)()@<X0>, char *a2@<X8>)
{
  v315 = a2;
  v314 = type metadata accessor for DefaultRepeatEditor();
  v3 = MEMORY[0x1EEE9AC00](v314);
  v348 = &v286 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v316 = &v286 - v5;
  v310 = sub_1CAD4BC94();
  v309 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v308 = &v286 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v311 = &v286 - v8;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635B0);
  MEMORY[0x1EEE9AC00](v337);
  v302 = &v286 - v9;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635B8);
  v326 = *(v313 - 8);
  v10 = MEMORY[0x1EEE9AC00](v313);
  v301 = &v286 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v312 = &v286 - v12;
  v299 = sub_1CAD4CF34();
  v296 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v293 = &v286 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635C0);
  v297 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v295 = &v286 - v14;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635C8);
  v15 = MEMORY[0x1EEE9AC00](v294);
  v300 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v327 = &v286 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v288 = &v286 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v290 = &v286 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v289 = &v286 - v23;
  v24 = sub_1CAD4C404();
  v328 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v305 = &v286 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v292 = &v286 - v28;
  v291 = v29;
  MEMORY[0x1EEE9AC00](v27);
  v306 = &v286 - v30;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D8);
  MEMORY[0x1EEE9AC00](v334);
  v336 = &v286 - v31;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E0);
  MEMORY[0x1EEE9AC00](v335);
  v323 = &v286 - v32;
  v322 = sub_1CAD4D024();
  v321 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v320 = &v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1CAD4CE64();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v332 = &v286 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463120);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v341 = &v286 - v37;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v339);
  v340 = &v286 - v38;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v39 = *(v351 - 1);
  MEMORY[0x1EEE9AC00](v351);
  v338 = &v286 - v40;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463128);
  v331 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v330 = &v286 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635F0);
  v318 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v317 = &v286 - v43;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635F8);
  v343 = *(v350 - 1);
  v44 = MEMORY[0x1EEE9AC00](v350);
  v319 = &v286 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v349 = &v286 - v46;
  v356 = sub_1CAD4DB54();
  v363 = *(v356 - 8);
  v47 = MEMORY[0x1EEE9AC00](v356);
  v347 = &v286 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v359 = &v286 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v360 = &v286 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v304 = &v286 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v362 = &v286 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v286 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v365 = &v286 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v286 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463600);
  v65 = MEMORY[0x1EEE9AC00](v64 - 8);
  v358 = &v286 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v346 = &v286 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v345 = &v286 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v361 = &v286 - v71;
  v72 = type metadata accessor for DateTimeEditor();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1CABC0DDC(a1, &v286 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeEditor);
  v75 = *(v73 + 80);
  v76 = (v75 + 16) & ~v75;
  v353 = v76 + v74;
  v352 = v75 | 7;
  v357 = swift_allocObject();
  v354 = v76;
  v355 = &v286 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CABC0A6C(v355, v357 + v76);
  v329 = v72;
  v77 = *(v72 + 28);
  v366 = a1;
  v78 = a1 + v77;
  v79 = *v78;
  v80 = *(v78 + 1);
  LOBYTE(v372) = *v78;
  v373 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463578);
  sub_1CAD4D994();
  v364 = v63;
  v342 = v24;
  v307 = v39;
  v303 = v42;
  v325 = v80;
  v324 = v81;
  if (v378 == 1)
  {
    LODWORD(v344) = v79;
    sub_1CAD4DB44();
    v82 = v63;
    if (qword_1EC462C78 != -1)
    {
      swift_once();
    }

    v372 = qword_1EC47DB28;
    v373 = unk_1EC47DB30;

    v83 = v338;
    v84 = v351;
    sub_1CAD4DC04();
    swift_getKeyPath();
    v85 = v340;
    sub_1CAD4DC24();

    (*(v39 + 8))(v83, v84);
    swift_getKeyPath();
    sub_1CAD4DAD4();

    sub_1CAB21B68(v85, &qword_1EC4635E8);
    sub_1CAD4CE54();
    sub_1CABA6054();
    v86 = v330;
    sub_1CAD4C5D4();
    v87 = sub_1CAB23B0C(&qword_1EC463238, &qword_1EC463128);
    v88 = v317;
    v89 = v333;
    sub_1CAD4D534();
    (*(v331 + 8))(v86, v89);
    v90 = v320;
    sub_1CAD4D014();
    v372 = v89;
    v373 = v87;
    swift_getOpaqueTypeConformance2();
    sub_1CABC13B4(&qword_1EC463240, MEMORY[0x1E697C908]);
    v91 = v349;
    v92 = v322;
    sub_1CAD4D5B4();
    (*(v321 + 8))(v90, v92);
    (*(v318 + 8))(v88, v42);
    v93 = v363;
    v94 = *(v363 + 16);
    v95 = v365;
    v96 = v82;
    v97 = v356;
    v94(v365, v96, v356);
    v98 = v343;
    v99 = *(v343 + 16);
    v100 = v319;
    v99(v319, v91, v350);
    v101 = v323;
    v94(v323, v95, v97);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463668);
    v103 = v350;
    v99((v101 + *(v102 + 48)), v100, v350);
    v104 = v95;
    v306 = *(v98 + 8);
    v105 = v103;
    (v306)(v100, v103);
    v106 = *(v93 + 8);
    v106(v104, v97);
    sub_1CAB23A9C(v101, v336, &qword_1EC4635E0);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC463658, &qword_1EC4635E0);
    sub_1CAB23B0C(&qword_1EC463660, &qword_1EC4635B0);
    v107 = v361;
    sub_1CAD4CE24();
    sub_1CAB21B68(v101, &qword_1EC4635E0);
    (v306)(v349, v105);
    v63 = v364;
    v106(v364, v97);
    v108 = 0;
  }

  else
  {
    LOBYTE(v372) = v79;
    v373 = v80;
    sub_1CAD4D994();
    if (v378 != 2)
    {
      LOBYTE(v372) = v79;
      v373 = v80;
      sub_1CAD4D994();
      if (v378 != 5)
      {
        v108 = 1;
        v107 = v361;
        v112 = v342;
        goto LABEL_19;
      }
    }

    LODWORD(v344) = v79;
    sub_1CAD4DBF4();
    v109 = *(v372 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
    v110 = *(v372 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
    v372 = *(v372 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
    v373 = v109;
    LOBYTE(v374) = v110;

    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](&v378, v111);

    if ((v378 & 1) == 0)
    {
      sub_1CAD4DB44();
      sub_1CAD4DBF4();
      v113 = v372;
      swift_getKeyPath();
      v372 = v113;
      sub_1CABC13B4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
      sub_1CAD4C424();

      v114 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
      swift_beginAccess();
      v115 = v289;
      sub_1CABC0EA0(v113 + v114, v289);

      v116 = v328;
      v117 = *(v328 + 48);
      v118 = v342;
      if (v117(v115, 1, v342) == 1)
      {
        sub_1CAD4C3F4();
        if (v117(v115, 1, v118) != 1)
        {
          sub_1CAB21B68(v115, &qword_1EC4635D0);
        }
      }

      else
      {
        (*(v116 + 32))(v306, v115, v118);
      }

      v289 = v59;
      if (qword_1EC462C78 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    v108 = 1;
    v107 = v361;
  }

  v112 = v342;
  while (1)
  {
    LOBYTE(v79) = v344;
LABEL_19:
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463608);
    (*(*(v160 - 8) + 56))(v107, v108, 1, v160);
    sub_1CAD4DB44();
    v161 = v355;
    sub_1CABC0DDC(v366, v355, type metadata accessor for DateTimeEditor);
    v162 = swift_allocObject();
    sub_1CABC0A6C(v161, v162 + v354);
    LOBYTE(v372) = v79;
    v163 = v325;
    v373 = v325;
    sub_1CAD4D994();
    v344 = v162;
    if (v378 != 3)
    {
      break;
    }

    sub_1CAD4DB44();
    v39 = v363;
    v164 = v351;
    if (qword_1EC462C80 != -1)
    {
      swift_once();
    }

    v372 = qword_1EC47DB38;
    v373 = unk_1EC47DB40;

    v165 = v338;
    sub_1CAD4DC04();
    swift_getKeyPath();
    v166 = v340;
    sub_1CAD4DC24();

    (*(v307 + 8))(v165, v164);
    swift_getKeyPath();
    sub_1CAD4DAD4();

    sub_1CAB21B68(v166, &qword_1EC4635E8);
    sub_1CAD4DBF4();
    v167 = v308;
    sub_1CAC5B87C(v308);

    sub_1CAD4BC74();
    (*(v309 + 8))(v167, v310);
    sub_1CAD4C0F4();
    sub_1CABC13B4(&unk_1EC465A80, MEMORY[0x1E6969530]);
    if (sub_1CAD4DED4())
    {
      sub_1CAD4CE54();
      sub_1CABA6054();
      v168 = v330;
      sub_1CAD4C5E4();
      v169 = sub_1CAB23B0C(&qword_1EC463238, &qword_1EC463128);
      v170 = v317;
      v171 = v333;
      sub_1CAD4D534();
      (*(v331 + 8))(v168, v171);
      v172 = v320;
      sub_1CAD4D014();
      v372 = v171;
      v373 = v169;
      swift_getOpaqueTypeConformance2();
      sub_1CABC13B4(&qword_1EC463240, MEMORY[0x1E697C908]);
      v173 = v349;
      v174 = v303;
      v175 = v322;
      sub_1CAD4D5B4();
      (*(v321 + 8))(v172, v175);
      (*(v318 + 8))(v170, v174);
      v176 = *(v39 + 16);
      v177 = v63;
      v178 = v365;
      v179 = v356;
      v176(v365, v177, v356);
      v180 = v343;
      v181 = *(v343 + 16);
      v182 = v319;
      v183 = v173;
      v184 = v350;
      v181(v319, v183, v350);
      v185 = v323;
      v176(v323, v178, v179);
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463668);
      v187 = v185;
      v181(&v185[*(v186 + 48)], v182, v184);
      v188 = *(v180 + 8);
      v343 = v180 + 8;
      v188(v182, v184);
      v189 = *(v363 + 8);
      v189(v178, v179);
      sub_1CAB23A9C(v187, v336, &qword_1EC4635E0);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC463658, &qword_1EC4635E0);
      sub_1CAB23B0C(&qword_1EC463660, &qword_1EC4635B0);
      v190 = v345;
      sub_1CAD4CE24();
      sub_1CAB21B68(v187, &qword_1EC4635E0);
      v188(v349, v350);
      v189(v364, v179);
      goto LABEL_41;
    }

    __break(1u);
LABEL_44:
    swift_once();
LABEL_17:
    v372 = qword_1EC47DB28;
    v373 = unk_1EC47DB30;

    v119 = v338;
    v120 = v351;
    v121 = v366;
    sub_1CAD4DC04();
    swift_getKeyPath();
    v122 = v340;
    sub_1CAD4DC24();

    (*(v39 + 8))(v119, v120);
    swift_getKeyPath();
    sub_1CAD4DAD4();

    sub_1CAB21B68(v122, &qword_1EC4635E8);
    sub_1CAD4CE44();
    sub_1CABA6054();
    v123 = v330;
    sub_1CAD4C5D4();
    v124 = v293;
    sub_1CAD4CF24();
    v125 = sub_1CAB23B0C(&qword_1EC463238, &qword_1EC463128);
    v126 = sub_1CABC13B4(&qword_1EC463628, MEMORY[0x1E697C6E0]);
    v127 = v295;
    v128 = v333;
    v129 = v299;
    sub_1CAD4D5B4();
    (*(v296 + 8))(v124, v129);
    (*(v331 + 8))(v123, v128);
    v372 = v128;
    v373 = v129;
    v374 = v125;
    v375 = v126;
    swift_getOpaqueTypeConformance2();
    v130 = v327;
    v131 = v298;
    sub_1CAD4D534();
    (*(v297 + 8))(v127, v131);
    KeyPath = swift_getKeyPath();
    v133 = (v130 + *(v294 + 36));
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463630);
    v135 = v328;
    v136 = *(v328 + 16);
    v137 = v306;
    v138 = v342;
    v136(v133 + *(v134 + 28), v306, v342);
    *v133 = KeyPath;
    v139 = v355;
    sub_1CABC0DDC(v121, v355, type metadata accessor for DateTimeEditor);
    v140 = v292;
    v136(v292, v137, v138);
    v141 = (v353 + *(v135 + 80)) & ~*(v135 + 80);
    v142 = swift_allocObject();
    v143 = v354;
    sub_1CABC0A6C(v139, v142 + v354);
    (*(v135 + 32))(v142 + v141, v140, v342);
    v372 = 0x65626F6C67;
    v373 = 0xE500000000000000;
    v374 = sub_1CABC1178;
    v375 = v142;
    v144 = v121 + *(v329 + 32);
    v145 = *v144;
    v146 = *(v144 + 1);
    v376 = v145;
    v377 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D9B4();
    LODWORD(v287) = v379;
    sub_1CABC0DDC(v121, v139, type metadata accessor for DateTimeEditor);
    v147 = swift_allocObject();
    sub_1CABC0A6C(v139, v147 + v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463638);
    type metadata accessor for TimeZoneChooser(0);
    sub_1CAB23B0C(&qword_1EC463640, &qword_1EC463638);
    sub_1CABC13B4(&qword_1EC463648, type metadata accessor for TimeZoneChooser);
    v148 = v312;
    sub_1CAD4D6E4();

    v149 = *(v363 + 16);
    v150 = v364;
    v151 = v356;
    v149(v364, v289, v356);
    v152 = v300;
    sub_1CAB23A9C(v327, v300, &qword_1EC4635C8);
    v153 = *(v326 + 16);
    v154 = v301;
    v155 = v313;
    v153(v301, v148, v313);
    v156 = v302;
    v149(v302, v150, v151);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463650);
    sub_1CAB23A9C(v152, v156 + *(v157 + 48), &qword_1EC4635C8);
    v153((v156 + *(v157 + 64)), v154, v155);
    v286 = *(v326 + 8);
    v286(v154, v155);
    sub_1CAB21B68(v152, &qword_1EC4635C8);
    v287 = *(v363 + 8);
    v63 = v150;
    v158 = v356;
    v287(v150, v356);
    sub_1CAB23A9C(v156, v336, &qword_1EC4635B0);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC463658, &qword_1EC4635E0);
    sub_1CAB23B0C(&qword_1EC463660, &qword_1EC4635B0);
    v159 = v361;
    sub_1CAD4CE24();
    v107 = v159;
    sub_1CAB21B68(v156, &qword_1EC4635B0);
    v112 = v342;
    v286(v312, v313);
    sub_1CAB21B68(v327, &qword_1EC4635C8);
    (*(v328 + 8))(v306, v112);
    v287(v289, v158);
    v108 = 0;
  }

  LOBYTE(v372) = v79;
  v373 = v163;
  sub_1CAD4D994();
  v191 = v351;
  if (v378 != 4 && (LOBYTE(v372) = v79, v373 = v163, sub_1CAD4D994(), v378 != 6) || (sub_1CAD4DBF4(), v192 = *(v372 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8), v193 = *(v372 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16), v372 = *(v372 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay), v373 = v192, LOBYTE(v374) = v193, , , v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0), MEMORY[0x1CCAA6D30](&v378, v194), , , , (v378 & 1) != 0))
  {
    v195 = 1;
    v190 = v345;
    goto LABEL_42;
  }

  sub_1CAD4DB44();
  sub_1CAD4DBF4();
  v196 = v372;
  swift_getKeyPath();
  v372 = v196;
  sub_1CABC13B4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v197 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone;
  swift_beginAccess();
  v198 = v290;
  sub_1CABC0EA0(v196 + v197, v290);

  v199 = v328;
  v200 = *(v328 + 48);
  if (v200(v198, 1, v112) == 1)
  {
    sub_1CAD4DBF4();
    v201 = v372;
    swift_getKeyPath();
    v372 = v201;
    sub_1CAD4C424();

    v202 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
    swift_beginAccess();
    v203 = v288;
    sub_1CABC0EA0(v201 + v202, v288);

    if (v200(v203, 1, v112) == 1)
    {
      sub_1CAD4C3F4();
      v204 = v200(v203, 1, v112);
      v205 = v290;
      if (v204 != 1)
      {
        sub_1CAB21B68(v203, &qword_1EC4635D0);
      }
    }

    else
    {
      (*(v328 + 32))(v305, v203, v112);
      v205 = v290;
    }

    if (v200(v205, 1, v112) != 1)
    {
      sub_1CAB21B68(v205, &qword_1EC4635D0);
    }
  }

  else
  {
    (*(v199 + 32))(v305, v198, v112);
  }

  v206 = v307;
  if (qword_1EC462C80 != -1)
  {
    swift_once();
  }

  v372 = qword_1EC47DB38;
  v373 = unk_1EC47DB40;

  v207 = v338;
  sub_1CAD4DC04();
  swift_getKeyPath();
  v208 = v340;
  sub_1CAD4DC24();

  (*(v206 + 8))(v207, v191);
  swift_getKeyPath();
  sub_1CAD4DAD4();

  sub_1CAB21B68(v208, &qword_1EC4635E8);
  sub_1CAD4DBF4();
  v209 = v308;
  sub_1CAC5B87C(v308);

  sub_1CAD4BC74();
  (*(v309 + 8))(v209, v310);
  sub_1CAD4C0F4();
  sub_1CABC13B4(&unk_1EC465A80, MEMORY[0x1E6969530]);
  result = sub_1CAD4DED4();
  if (result)
  {
    sub_1CAD4CE44();
    sub_1CABA6054();
    v211 = v330;
    sub_1CAD4C5E4();
    v212 = v293;
    sub_1CAD4CF24();
    v213 = sub_1CAB23B0C(&qword_1EC463238, &qword_1EC463128);
    v214 = sub_1CABC13B4(&qword_1EC463628, MEMORY[0x1E697C6E0]);
    v215 = v295;
    v216 = v333;
    v217 = v299;
    sub_1CAD4D5B4();
    (*(v296 + 8))(v212, v217);
    (*(v331 + 8))(v211, v216);
    v372 = v216;
    v373 = v217;
    v374 = v213;
    v375 = v214;
    swift_getOpaqueTypeConformance2();
    v218 = v327;
    v219 = v298;
    sub_1CAD4D534();
    (*(v297 + 8))(v215, v219);
    v220 = swift_getKeyPath();
    v221 = (v218 + *(v294 + 36));
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463630);
    v223 = v328;
    v224 = *(v328 + 16);
    v225 = v305;
    v226 = v342;
    v224(v221 + *(v222 + 28), v305, v342);
    *v221 = v220;
    v350 = type metadata accessor for DateTimeEditor;
    v227 = v366;
    v228 = v226;
    v229 = v355;
    sub_1CABC0DDC(v366, v355, type metadata accessor for DateTimeEditor);
    v230 = v292;
    v224(v292, v225, v228);
    v231 = (v353 + *(v223 + 80)) & ~*(v223 + 80);
    v232 = swift_allocObject();
    v233 = v354;
    sub_1CABC0A6C(v229, v232 + v354);
    (*(v223 + 32))(v232 + v231, v230, v228);
    v372 = 0x65626F6C67;
    v373 = 0xE500000000000000;
    v374 = sub_1CABC0F10;
    v375 = v232;
    v234 = v227 + *(v329 + 32);
    v235 = *v234;
    v236 = *(v234 + 1);
    v370 = v235;
    v371 = v236;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D9B4();
    LODWORD(v351) = v369;
    sub_1CABC0DDC(v227, v229, v350);
    v237 = swift_allocObject();
    sub_1CABC0A6C(v229, v237 + v233);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463638);
    type metadata accessor for TimeZoneChooser(0);
    sub_1CAB23B0C(&qword_1EC463640, &qword_1EC463638);
    sub_1CABC13B4(&qword_1EC463648, type metadata accessor for TimeZoneChooser);
    v238 = v312;
    sub_1CAD4D6E4();

    v239 = *(v363 + 16);
    v240 = v364;
    v241 = v356;
    v239(v364, v304, v356);
    v242 = v300;
    sub_1CAB23A9C(v327, v300, &qword_1EC4635C8);
    v243 = *(v326 + 16);
    v244 = v301;
    v245 = v238;
    v246 = v313;
    v243(v301, v245, v313);
    v247 = v302;
    v239(v302, v240, v241);
    v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463650);
    sub_1CAB23A9C(v242, v247 + *(v248 + 48), &qword_1EC4635C8);
    v243((v247 + *(v248 + 64)), v244, v246);
    v249 = *(v326 + 8);
    v326 += 8;
    v350 = v249;
    (v249)(v244, v246);
    sub_1CAB21B68(v242, &qword_1EC4635C8);
    v351 = *(v363 + 8);
    v250 = v356;
    (v351)(v364, v356);
    sub_1CAB23A9C(v247, v336, &qword_1EC4635B0);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC463658, &qword_1EC4635E0);
    sub_1CAB23B0C(&qword_1EC463660, &qword_1EC4635B0);
    v251 = v345;
    sub_1CAD4CE24();
    v190 = v251;
    sub_1CAB21B68(v247, &qword_1EC4635B0);
    (v350)(v312, v313);
    sub_1CAB21B68(v327, &qword_1EC4635C8);
    (*(v328 + 8))(v305, v342);
    (v351)(v304, v250);
LABEL_41:
    v195 = 0;
LABEL_42:
    v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463608);
    (*(*(v252 - 8) + 56))(v190, v195, 1, v252);
    v351 = 0x80000001CAD74260;
    sub_1CAD4DB44();
    v253 = v366;
    v254 = v355;
    sub_1CABC0DDC(v366, v355, type metadata accessor for DateTimeEditor);
    v350 = swift_allocObject();
    v255 = v354;
    sub_1CABC0A6C(v254, v350 + v354);
    sub_1CAD4DB44();
    v256 = v329;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
    sub_1CAD4DBF4();
    v349 = v372;
    v257 = v253 + *(v256 + 36);
    v258 = *v257;
    v259 = *(v257 + 1);
    LOBYTE(v367) = v258;
    v368 = v259;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D9B4();
    v343 = v372;
    v342 = v373;
    LODWORD(v341) = v374;
    v260 = v253 + *(v256 + 40);
    v261 = *v260;
    v262 = *(v260 + 1);
    LOBYTE(v367) = v261;
    v368 = v262;
    sub_1CAD4D9B4();
    v263 = v372;
    v340 = v373;
    LOBYTE(v256) = v374;
    sub_1CABC0DDC(v253, v254, type metadata accessor for DateTimeEditor);
    v264 = swift_allocObject();
    sub_1CABC0A6C(v254, v264 + v255);
    type metadata accessor for RepeatViewModel();
    sub_1CABC13B4(&qword_1EC463198, type metadata accessor for RepeatViewModel);
    v265 = v316;
    sub_1CAD4DC14();
    v266 = v314;
    v267 = v265 + *(v314 + 20);
    v268 = v342;
    *v267 = v343;
    *(v267 + 8) = v268;
    *(v267 + 16) = v341;
    v269 = v265 + *(v266 + 24);
    v270 = v340;
    *v269 = v263;
    *(v269 + 8) = v270;
    *(v269 + 16) = v256;
    v271 = (v265 + *(v266 + 28));
    *v271 = sub_1CABC0D78;
    v271[1] = v264;
    v272 = v346;
    sub_1CAB23A9C(v361, v346, &qword_1EC463600);
    v273 = v363;
    v274 = *(v363 + 16);
    v275 = v356;
    v274(v360, v362, v356);
    sub_1CAB23A9C(v190, v358, &qword_1EC463600);
    v274(v359, v364, v275);
    v274(v347, v365, v275);
    v366 = type metadata accessor for DefaultRepeatEditor;
    sub_1CABC0DDC(v265, v348, type metadata accessor for DefaultRepeatEditor);
    v276 = v315;
    *v315 = 0xD000000000000014;
    v277 = v351;
    *(v276 + 1) = v351;
    *(v276 + 2) = sub_1CABC0C34;
    *(v276 + 3) = v357;
    v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463618);
    sub_1CAB23A9C(v272, &v276[v278[12]], &qword_1EC463600);
    v274(&v276[v278[16]], v360, v275);
    v279 = &v276[v278[20]];
    *v279 = 0xD000000000000014;
    *(v279 + 1) = v277;
    v280 = v344;
    *(v279 + 2) = sub_1CABC0C60;
    *(v279 + 3) = v280;
    sub_1CAB23A9C(v358, &v276[v278[24]], &qword_1EC463600);
    v274(&v276[v278[28]], v359, v275);
    v281 = &v276[v278[32]];
    strcpy(v281, "calendar.day");
    v281[13] = 0;
    *(v281 + 7) = -5120;
    v282 = v350;
    *(v281 + 2) = sub_1CABC0D08;
    *(v281 + 3) = v282;
    v283 = v347;
    v274(&v276[v278[36]], v347, v275);
    v284 = v348;
    sub_1CABC0DDC(v348, &v276[v278[40]], v366);
    swift_bridgeObjectRetain_n();

    sub_1CABC0E44(v265);
    v285 = *(v273 + 8);
    v285(v365, v275);
    v285(v364, v275);
    sub_1CAB21B68(v345, &qword_1EC463600);
    v285(v362, v275);
    sub_1CAB21B68(v361, &qword_1EC463600);
    sub_1CABC0E44(v284);
    v285(v283, v275);

    v285(v359, v275);
    sub_1CAB21B68(v358, &qword_1EC463600);

    v285(v360, v275);
    sub_1CAB21B68(v346, &qword_1EC463600);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CABBCB88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636B8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v137 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v158 = v110 - v6;
  v150 = sub_1CAD4CD74();
  v157 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DateTimeEditor();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = v8;
  v148 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1CAD4C0F4();
  v154 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1CAD4BC94();
  v153 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v155 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = v110 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463268);
  v156 = *(v147 - 8);
  v12 = MEMORY[0x1EEE9AC00](v147);
  v121 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v151 = v110 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463270);
  v135 = *(v146 - 8);
  v15 = MEMORY[0x1EEE9AC00](v146);
  v136 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v120 = v110 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v119 = v110 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v110 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v152 = v110 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v118 = v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v110 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v30 = a1;
  sub_1CAD4DBF4();
  v31 = v165;
  swift_getKeyPath();
  v165 = v31;
  v117 = sub_1CABC13B4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v32 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  sub_1CABC0EA0(v31 + v32, v29);

  v33 = sub_1CAD4C404();
  LODWORD(v32) = (*(*(v33 - 8) + 48))(v29, 1, v33);
  sub_1CAB21B68(v29, &qword_1EC4635D0);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v139 = 0;
  v138 = 0;
  if (v32 == 1)
  {
    v34 = sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v35 = v165;
    v36 = v166;
    v37 = v167;
    v38 = v168;
    v139 = v169;
    v138 = v170;
  }

  v129 = v38;
  v130 = v37;
  v131 = v36;
  v132 = v35;
  v133 = v34;
  if (qword_1EC462C78 != -1)
  {
    swift_once();
  }

  v162 = qword_1EC47DB28;
  v163 = unk_1EC47DB30;
  v39 = sub_1CABA6054();

  v127 = sub_1CAD4D444();
  v126 = v40;
  v124 = v41;
  v128 = v42;
  sub_1CAD4DBF4();
  v43 = v140;
  sub_1CAC5B87C(v140);

  v44 = v142;
  sub_1CAD4BC74();
  v45 = *(v153 + 8);
  v153 += 8;
  v116 = v45;
  v45(v43, v141);
  v46 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v46 setTimeStyle_];
  [v46 setDateStyle_];
  v47 = sub_1CAD4C084();
  v48 = [v46 stringFromDate_];

  v49 = sub_1CAD4DF94();
  v51 = v50;

  v52 = *(v154 + 8);
  v154 += 8;
  v115 = v52;
  v52(v44, v144);
  v162 = v49;
  v163 = v51;
  v53 = v148;
  sub_1CABC0DDC(v30, v148, type metadata accessor for DateTimeEditor);
  v54 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v122 = v54 + v123;
  v55 = swift_allocObject();
  sub_1CABC0A6C(v53, v55 + v54);
  v56 = v143;
  v123 = v39;
  sub_1CAD4DA04();
  v57 = v149;
  sub_1CAD4CD64();
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  v58 = sub_1CABC13B4(&qword_1EC463280, MEMORY[0x1E697C548]);
  v59 = v145;
  v60 = v150;
  v114 = v58;
  sub_1CAD4D4E4();
  v61 = *(v157 + 8);
  v157 += 8;
  v113 = v61;
  v61(v57, v60);
  v62 = *(v155 + 8);
  v155 += 8;
  v112 = v62;
  v62(v56, v59);
  v63 = (v30 + *(v125 + 28));
  v64 = *v63;
  v65 = *(v63 + 1);
  LODWORD(v125) = v64;
  LOBYTE(v162) = v64;
  v111 = v65;
  v163 = v65;
  v110[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463578);
  sub_1CAD4D994();
  if (v160 == 1)
  {
    v66 = sub_1CAD4D804();
  }

  else
  {
    v66 = sub_1CAD4D8A4();
  }

  v67 = v66;
  v68 = *(v156 + 32);
  v69 = v151;
  v156 += 32;
  v151 = v68;
  (v68)(v23, v69, v147);
  v70 = v146;
  *&v23[*(v146 + 36)] = v67;
  v71 = v23;
  v72 = v70;
  sub_1CAB2AFF0(v71, v152);
  sub_1CAD4DBF4();
  v73 = *(v162 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
  v74 = *(v162 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
  v162 = *(v162 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
  v163 = v73;
  v164 = v74;

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v160, v75);

  v76 = 1;
  v77 = v158;
  if ((v160 & 1) == 0)
  {
    sub_1CAD4DBF4();
    sub_1CAD4DBF4();
    v78 = v140;
    sub_1CAC5B87C(v140);

    v79 = v142;
    sub_1CAD4BC74();
    v116(v78, v141);
    sub_1CAD4DBF4();
    v80 = v162;
    swift_getKeyPath();
    v162 = v80;
    sub_1CAD4C424();

    v81 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
    swift_beginAccess();
    v82 = v118;
    sub_1CABC0EA0(v80 + v81, v118);

    v83 = sub_1CAC63D0C(v79, v82);
    v85 = v84;

    sub_1CAB21B68(v82, &qword_1EC4635D0);
    v115(v79, v144);
    v160 = v83;
    v161 = v85;
    v86 = v148;
    sub_1CABC0DDC(v30, v148, type metadata accessor for DateTimeEditor);
    v87 = swift_allocObject();
    sub_1CABC0A6C(v86, v87 + v54);
    v88 = v143;
    sub_1CAD4DA04();
    v89 = v149;
    sub_1CAD4CD64();
    v90 = v121;
    v91 = v145;
    v92 = v150;
    sub_1CAD4D4E4();
    v113(v89, v92);
    v112(v88, v91);
    LOBYTE(v160) = v125;
    v161 = v111;
    sub_1CAD4D994();
    if (v159 == 2)
    {
      v93 = sub_1CAD4D804();
    }

    else
    {
      v93 = sub_1CAD4D8A4();
    }

    v94 = v93;
    v72 = v146;
    v95 = v120;
    (v151)(v120, v90, v147);
    *(v95 + *(v72 + 36)) = v94;
    v96 = v119;
    sub_1CAB2AFF0(v95, v119);
    v97 = v96;
    v77 = v158;
    sub_1CAB2AFF0(v97, v158);
    v76 = 0;
  }

  (*(v135 + 56))(v77, v76, 1, v72);
  v98 = v152;
  v99 = v136;
  sub_1CAB23A9C(v152, v136, &qword_1EC463270);
  v100 = v137;
  sub_1CAB23A9C(v77, v137, &qword_1EC4636B8);
  v101 = v134;
  v102 = v132;
  *v134 = v133;
  v101[1] = v102;
  v103 = v130;
  v101[2] = v131;
  v101[3] = v103;
  v104 = v139;
  v101[4] = v129;
  v101[5] = v104;
  v105 = v127;
  v101[6] = v138;
  v101[7] = v105;
  v106 = v126;
  v101[8] = v126;
  v107 = v124 & 1;
  *(v101 + 72) = v124 & 1;
  v101[10] = v128;
  v101[11] = 0;
  *(v101 + 96) = 1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4636C0);
  sub_1CAB23A9C(v99, v101 + *(v108 + 80), &qword_1EC463270);
  sub_1CAB23A9C(v100, v101 + *(v108 + 96), &qword_1EC4636B8);

  sub_1CABA4F48(v105, v106, v107);

  sub_1CAB21B68(v158, &qword_1EC4636B8);
  sub_1CAB21B68(v98, &qword_1EC463270);
  sub_1CAB21B68(v100, &qword_1EC4636B8);
  sub_1CAB21B68(v99, &qword_1EC463270);
  sub_1CABA6128(v105, v106, v107);
}

uint64_t sub_1CABBDD10()
{
  type metadata accessor for DateTimeEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463578);
  sub_1CAD4D994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D9A4();
  sub_1CAD4D9A4();
  sub_1CAD4D9A4();
  return sub_1CAD4D9A4();
}

uint64_t sub_1CABBE030(uint64_t a1)
{
  v2 = sub_1CAD4BC94();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1CAC5C3B8(v4);
}

uint64_t sub_1CABBE0FC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1CAD4CC94();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636B0);
  return a2(a1);
}

uint64_t sub_1CABBE164@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v165 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636B8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v167 = v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v180 = v130 - v6;
  v179 = sub_1CAD4CD74();
  v186 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DateTimeEditor();
  v152 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v176 = v8;
  v9 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1CAD4C0F4();
  v183 = *(v172 - 8);
  v10 = MEMORY[0x1EEE9AC00](v172);
  v163 = v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v130 - v12;
  v168 = sub_1CAD4BC94();
  v182 = *(v168 - 8);
  v14 = MEMORY[0x1EEE9AC00](v168);
  v143 = v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v130 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v184 = *(v174 - 8);
  v18 = MEMORY[0x1EEE9AC00](v174);
  v147 = v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v151 = v130 - v20;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463268);
  v185 = *(v175 - 8);
  v21 = MEMORY[0x1EEE9AC00](v175);
  v148 = v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v153 = v130 - v23;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463270);
  v164 = *(v173 - 8);
  v24 = MEMORY[0x1EEE9AC00](v173);
  v166 = v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v146 = v130 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v145 = v130 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v130 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v187 = v130 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v150 = v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v144 = v130 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v130 - v39;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v178 = a1;
  sub_1CAD4DBF4();
  v41 = v195;
  swift_getKeyPath();
  v195 = v41;
  v141 = sub_1CABC13B4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v42 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
  swift_beginAccess();
  sub_1CABC0EA0(v41 + v42, v40);

  v43 = sub_1CAD4C404();
  v131 = *(v43 - 8);
  v44 = *(v131 + 48);
  v149 = v43;
  v140 = v44;
  v139 = v131 + 48;
  LODWORD(v42) = (v44)(v40, 1);
  sub_1CAB21B68(v40, &qword_1EC4635D0);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  if (v42 == 1)
  {
    v45 = sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v46 = v195;
    v47 = v196;
    v48 = v197;
    v171 = v198;
    v170 = v199;
    v169 = v200;
  }

  v49 = v9;
  v159 = v48;
  v160 = v47;
  v161 = v46;
  v162 = v45;
  if (qword_1EC462C80 != -1)
  {
    swift_once();
  }

  v192 = qword_1EC47DB38;
  v193 = unk_1EC47DB40;
  v50 = sub_1CABA6054();

  v157 = sub_1CAD4D444();
  v156 = v51;
  v155 = v52;
  v158 = v53;
  v54 = v178;
  sub_1CAD4DBF4();
  sub_1CAC5B87C(v17);

  sub_1CAD4BC44();
  v55 = *(v182 + 8);
  v182 += 8;
  v132 = v55;
  v55(v17, v168);
  v56 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v56 setTimeStyle_];
  [v56 setDateStyle_];
  v57 = sub_1CAD4C084();
  v58 = [v56 stringFromDate_];

  v59 = sub_1CAD4DF94();
  v61 = v60;

  v62 = *(v183 + 8);
  v183 += 8;
  v137 = v62;
  v62(v13, v172);
  v192 = v59;
  v193 = v61;
  sub_1CABC0DDC(v54, v49, type metadata accessor for DateTimeEditor);
  v63 = (*(v152 + 80) + 16) & ~*(v152 + 80);
  v64 = swift_allocObject();
  v138 = v63;
  sub_1CABC0A6C(v49, v64 + v63);
  v65 = v151;
  v152 = v50;
  sub_1CAD4DA04();
  v66 = v177;
  sub_1CAD4CD64();
  v67 = sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  v68 = sub_1CABC13B4(&qword_1EC463280, MEMORY[0x1E697C548]);
  v69 = v153;
  v70 = v174;
  v71 = v179;
  v136 = v67;
  v135 = v68;
  sub_1CAD4D4E4();
  v72 = *(v186 + 8);
  v186 += 8;
  v134 = v72;
  v72(v66, v71);
  v73 = v65;
  v74 = *(v184 + 8);
  v184 += 8;
  v74(v73, v70);
  v75 = (v54 + *(v154 + 28));
  v76 = *v75;
  v77 = *(v75 + 1);
  LODWORD(v154) = v76;
  LOBYTE(v192) = v76;
  v151 = v77;
  v193 = v77;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463578);
  sub_1CAD4D994();
  v142 = v49;
  if (v191 == 3)
  {
    v78 = sub_1CAD4D804();
  }

  else
  {
    v78 = sub_1CAD4D8A4();
  }

  v79 = v78;
  v80 = *(v185 + 32);
  v185 += 32;
  v80(v32, v69, v175);
  v81 = v173;
  *&v32[*(v173 + 36)] = v79;
  sub_1CAB2AFF0(v32, v187);
  sub_1CAD4DBF4();
  v82 = *(v192 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
  v83 = *(v192 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
  v192 = *(v192 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
  v193 = v82;
  v194 = v83;

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v191, v84);

  v85 = 1;
  if ((v191 & 1) == 0)
  {
    v153 = v80;
    sub_1CAD4DBF4();
    v130[1] = v192;
    sub_1CAD4DBF4();
    v86 = v143;
    sub_1CAC5B87C(v143);

    sub_1CAD4BC44();
    v132(v86, v168);
    sub_1CAD4DBF4();
    v87 = v192;
    swift_getKeyPath();
    v192 = v87;
    sub_1CAD4C424();

    v88 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone;
    swift_beginAccess();
    v89 = v87 + v88;
    v90 = v150;
    sub_1CABC0EA0(v89, v150);

    v91 = v149;
    v92 = v140;
    v93 = v140(v90, 1, v149);
    v94 = v142;
    if (v93 == 1)
    {
      sub_1CAD4DBF4();
      v95 = v191;
      swift_getKeyPath();
      v191 = v95;
      sub_1CAD4C424();

      v96 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone;
      swift_beginAccess();
      v97 = v95 + v96;
      v98 = v150;
      v99 = v144;
      sub_1CABC0EA0(v97, v144);

      v100 = v92(v98, 1, v149);
      v101 = v148;
      if (v100 != 1)
      {
        sub_1CAB21B68(v98, &qword_1EC4635D0);
      }
    }

    else
    {
      v102 = v131;
      v99 = v144;
      (*(v131 + 32))(v144, v90, v91);
      (*(v102 + 56))(v99, 0, 1, v91);
      v101 = v148;
    }

    v103 = v163;
    v104 = sub_1CAC63D0C(v163, v99);
    v106 = v105;

    sub_1CAB21B68(v99, &qword_1EC4635D0);
    v137(v103, v172);
    v189 = v104;
    v190 = v106;
    sub_1CABC0DDC(v178, v94, type metadata accessor for DateTimeEditor);
    v107 = v138;
    v108 = swift_allocObject();
    sub_1CABC0A6C(v94, v108 + v107);
    v109 = v147;
    sub_1CAD4DA04();
    v110 = v177;
    sub_1CAD4CD64();
    v111 = v174;
    v112 = v179;
    sub_1CAD4D4E4();
    v134(v110, v112);
    v74(v109, v111);
    LOBYTE(v189) = v154;
    v190 = v151;
    sub_1CAD4D994();
    v113 = v153;
    if (v188 == 4)
    {
      v114 = sub_1CAD4D804();
    }

    else
    {
      v114 = sub_1CAD4D8A4();
    }

    v115 = v114;
    v81 = v173;
    v116 = v146;
    v113(v146, v101, v175);
    *(v116 + *(v81 + 36)) = v115;
    v117 = v145;
    sub_1CAB2AFF0(v116, v145);
    sub_1CAB2AFF0(v117, v180);
    v85 = 0;
  }

  v118 = v180;
  (*(v164 + 56))(v180, v85, 1, v81);
  v119 = v166;
  sub_1CAB23A9C(v187, v166, &qword_1EC463270);
  v120 = v167;
  sub_1CAB23A9C(v118, v167, &qword_1EC4636B8);
  v121 = v165;
  v122 = v161;
  *v165 = v162;
  v121[1] = v122;
  v123 = v159;
  v121[2] = v160;
  v121[3] = v123;
  v124 = v170;
  v121[4] = v171;
  v121[5] = v124;
  v125 = v157;
  v121[6] = v169;
  v121[7] = v125;
  v126 = v156;
  v121[8] = v156;
  v127 = v155 & 1;
  *(v121 + 72) = v155 & 1;
  v121[10] = v158;
  v121[11] = 0;
  *(v121 + 96) = 1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4636C0);
  sub_1CAB23A9C(v119, v121 + *(v128 + 80), &qword_1EC463270);
  sub_1CAB23A9C(v120, v121 + *(v128 + 96), &qword_1EC4636B8);

  sub_1CABA4F48(v125, v126, v127);

  sub_1CAB21B68(v118, &qword_1EC4636B8);
  sub_1CAB21B68(v187, &qword_1EC463270);
  sub_1CAB21B68(v120, &qword_1EC4636B8);
  sub_1CAB21B68(v119, &qword_1EC463270);
  sub_1CABA6128(v125, v126, v127);
}

uint64_t sub_1CABBF564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1CABBF634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_1CAD4CC94();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463680);
  return sub_1CABBF6BC(a1, a2, a3, a4, a5, a6 + *(v12 + 44));
}

uint64_t sub_1CABBF6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v8 = type metadata accessor for DateTimeEditor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463688);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if (qword_1EC462C68 != -1)
  {
    swift_once();
  }

  v43 = qword_1EC47DB08;
  v44 = unk_1EC47DB10;
  sub_1CABA6054();

  v17 = sub_1CAD4D444();
  v34 = v18;
  v35 = v17;
  v36 = v19;
  v37 = v20;
  sub_1CABC0DDC(a1, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeEditor);
  v21 = a1;
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v24 = sub_1CABC0A6C(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  MEMORY[0x1EEE9AC00](v24);
  v25 = v39;
  *(&v33 - 2) = v21;
  *(&v33 - 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463690);
  sub_1CAB23B0C(&qword_1EC463698, &qword_1EC463690);
  sub_1CAD4D9E4();
  v26 = *(v12 + 16);
  v27 = v41;
  v26(v41, v16, v11);
  v28 = v35;
  v42 = v16;
  v29 = v34;
  *a6 = v35;
  *(a6 + 8) = v29;
  LOBYTE(v22) = v36 & 1;
  *(a6 + 16) = v36 & 1;
  *(a6 + 24) = v37;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A0);
  v26((a6 + *(v30 + 64)), v27, v11);
  sub_1CABA4F48(v28, v29, v22);
  v31 = *(v12 + 8);

  v31(v42, v11);
  v31(v27, v11);
  sub_1CABA6128(v28, v29, v22);
}

__n128 sub_1CABBFA60@<Q0>(uint64_t a1@<X1>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1CAD4CC94();
  v12 = 1;
  sub_1CABBFAF0(a1, a2, v11);
  result = v11[0];
  v8 = v11[1];
  v9 = v11[2];
  v10 = v12;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 24) = result;
  *(a3 + 40) = v8;
  *(a3 + 56) = v9;
  return result;
}

uint64_t sub_1CABBFAF0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_1CAD4C404();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  v15 = v46;
  swift_getKeyPath();
  v46 = v15;
  sub_1CABC13B4(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  v16 = *a2;
  swift_beginAccess();
  sub_1CABC0EA0(v15 + v16, v10);

  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    (*(v12 + 16))(v14, a1, v11);
    if (v17(v10, 1, v11) != 1)
    {
      sub_1CAB21B68(v10, &qword_1EC4635D0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v42 = v11;
  sub_1CAD4C184();
  v18 = sub_1CAD4C1D4();
  (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  v19 = sub_1CAD4C3B4();
  v21 = v20;
  sub_1CAB21B68(v7, &qword_1EC4636A8);
  if (v21)
  {
    v44 = v19;
    v45 = v21;
    sub_1CABA6054();
    v22 = sub_1CAD4D444();
    v41 = v12;
    v23 = v14;
    v25 = v24;
    v27 = v26;
    sub_1CAD4D8B4();
    v28 = sub_1CAD4D3D4();
    v30 = v29;
    v32 = v31;
    v21 = v33;

    v34 = v25;
    v14 = v23;
    v12 = v41;
    sub_1CABA6128(v22, v34, v27 & 1);

    v35 = v32 & 1;
    sub_1CABA4F48(v28, v30, v32 & 1);
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v35 = 0;
  }

  v36 = sub_1CAD4D8F4();
  v37 = sub_1CAD4D8B4();
  sub_1CABC12F0(v28, v30, v35, v21);

  sub_1CABC1334(v28, v30, v35, v21);
  (*(v12 + 8))(v14, v42);
  v38 = v43;
  *v43 = v28;
  v38[1] = v30;
  v38[2] = v35;
  v38[3] = v21;
  v38[4] = v36;
  v38[5] = v37;

  return sub_1CABC1334(v28, v30, v35, v21);
}

uint64_t sub_1CABBFF94@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v13 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v9 + 8))(v11, v8);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  return sub_1CABC7F88(v7, v4, a1);
}

uint64_t sub_1CABC0178()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  if (qword_1EC462C38 != -1)
  {
    swift_once();
  }

  v5[4] = qword_1EC47DAA8;
  v5[5] = unk_1EC47DAB0;

  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v1 + 8))(v3, v0);
  sub_1CABA6054();
  return sub_1CAD4DA74();
}

void *sub_1CABC02F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay;
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  result = MEMORY[0x1CCAA6D30](&v8, v6);
  *a2 = v8;
  return result;
}

void sub_1CABC03D4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for DateTimeEditor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463578);
    sub_1CAD4D9A4();
  }
}

uint64_t sub_1CABC0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v25 = a3;
  v26 = a4;
  v27 = a7;
  v22 = a1;
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463748);
  swift_getTupleTypeMetadata2();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  v8 = sub_1CAD4DA24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = sub_1CAD4C904();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v28 = a5;
  v29 = v24;
  v30 = v22;
  v31 = v23;
  v32 = v25;
  v33 = v26;
  sub_1CAD4CC94();
  sub_1CAD4DA14();
  sub_1CAD4D1C4();
  WitnessTable = swift_getWitnessTable();
  sub_1CAD4D724();
  (*(v9 + 8))(v11, v8);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697E5D0];
  swift_getWitnessTable();
  sub_1CAC06984(v16);
  v20 = *(v13 + 8);
  v20(v16, v12);
  sub_1CAC06984(v18);
  return (v20)(v18, v12);
}

uint64_t sub_1CABC0754@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v26 = a6;
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463750);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v24 - v15;

  sub_1CAD4D924();
  v17 = *MEMORY[0x1E6981690];
  v18 = sub_1CAD4D934();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  v20 = sub_1CAD4D914();

  sub_1CAB21B68(v16, &qword_1EC463750);
  v21 = sub_1CAD4D8B4();
  v25();
  sub_1CAC06984(v11);
  v22 = *(v8 + 8);
  v22(v11, a4);
  v30[0] = v20;
  v30[1] = v21;
  v31[0] = v30;
  (*(v8 + 16))(v11, v13, a4);
  v31[1] = v11;

  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463748);
  v29[1] = a4;
  v27 = sub_1CABC16EC();
  v28 = a5;
  sub_1CACDFC20(v31, 2uLL, v29);

  v22(v13, a4);
  v22(v11, a4);
}

uint64_t sub_1CABC0A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateTimeEditor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CABC0AD0(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for DateTimeEditor();

  sub_1CABC03D4(a1, a2);
}

unint64_t sub_1CABC0B50()
{
  result = qword_1EC463580;
  if (!qword_1EC463580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463568);
    sub_1CAB23B0C(&qword_1EC463588, &qword_1EC463590);
    sub_1CAB23B0C(&qword_1EC463598, &qword_1EC4635A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463580);
  }

  return result;
}

uint64_t sub_1CABC0D08()
{
  type metadata accessor for DateTimeEditor();

  return sub_1CABC0178();
}

uint64_t sub_1CABC0DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABC0E44(uint64_t a1)
{
  v2 = type metadata accessor for DefaultRepeatEditor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CABC0EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_36Tm()
{
  v1 = (type metadata accessor for DateTimeEditor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1CAD4C404();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = v1[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v14 - 8) + 8))(v11 + v13, v14);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1CABC11AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for DateTimeEditor() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1CAD4C404() - 8);
  return sub_1CABBF634(v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a1, a2, a3, a4);
}

uint64_t sub_1CABC12F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CABA4F48(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CABC1334(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CABA6128(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CABC13B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for DateTimeEditor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CABC15A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CABC15F8(uint64_t a1, int a2)
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

uint64_t sub_1CABC1640(uint64_t result, int a2, int a3)
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

unint64_t sub_1CABC16EC()
{
  result = qword_1EC463758;
  if (!qword_1EC463758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463748);
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463758);
  }

  return result;
}

id sub_1CABC17B0()
{
  v1 = [v0 location];
  v2 = [v1 mapKitHandle];

  if (v2)
  {
    v3 = sub_1CAD4C024();
    v5 = v4;

    v6 = objc_opt_self();
    v7 = sub_1CAD4C014();
    v8 = [v6 mapItemForMapKitHandle_];

    if (v8)
    {
      v9 = sub_1CABC18A0(v8);
      sub_1CABB8C1C(v3, v5);

      return v9;
    }

    sub_1CABB8C1C(v3, v5);
  }

  return 0;
}

id sub_1CABC18A0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  v5 = [v4 traitCollection];

  [v5 displayScale];
  v7 = v6;

  result = [v2 imageForMapItem:a1 forScale:0 fallbackToBundleIcon:v7];
  if (!result)
  {
    v9 = [objc_opt_self() markerStyleAttributes];
    v10 = [v3 mainScreen];
    v11 = [v10 traitCollection];

    [v11 displayScale];
    v13 = v12;

    v14 = [v2 imageForStyle:v9 size:4 forScale:0 format:v13];
    return v14;
  }

  return result;
}

uint64_t EventConferenceRoomModelObject.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1CABC1A50(v7, &v6);
}

__n128 EventConferenceRoomModelObject.location.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_1CABC1AFC(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t sub_1CABC1C04()
{
  v1 = *(v0 + 72);
  sub_1CAD4EA84();
  EventDirectoryRecordModelObject.hash(into:)();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

__n128 EventConferenceRoomModelObject.init(location:supportsAvailability:availabilityRequestInProgress:availability:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a5 + 32) = result;
  *(a5 + 48) = v7;
  *(a5 + 64) = a2;
  *(a5 + 65) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t EventConferenceRoomModelObject.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v32 - v6;
  (*(v4 + 24))(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = AssociatedConformanceWitness[1](AssociatedTypeWitness, AssociatedConformanceWitness);
  v33 = v9;
  v11 = v10;
  v12 = AssociatedConformanceWitness[2](AssociatedTypeWitness, AssociatedConformanceWitness);
  v34 = v13;
  v14 = AssociatedConformanceWitness[3](AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = v15;
  v17 = AssociatedConformanceWitness[4](AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = v18;
  *&v37 = v9;
  *(&v37 + 1) = v11;
  v20 = v34;
  *&v38 = v12;
  *(&v38 + 1) = v34;
  *&v39 = v14;
  *(&v39 + 1) = v16;
  *&v40 = v17;
  *(&v40 + 1) = v18;
  sub_1CABC1A50(&v37, v41);
  (*(v35 + 8))(v7, AssociatedTypeWitness);
  v41[0] = v33;
  v41[1] = v11;
  v41[2] = v12;
  v41[3] = v20;
  v41[4] = v14;
  v41[5] = v16;
  v41[6] = v17;
  v41[7] = v19;
  sub_1CABC1AFC(v41);
  v21 = v38;
  v22 = v36;
  *v36 = v37;
  v22[1] = v21;
  v23 = v40;
  v22[2] = v39;
  v22[3] = v23;
  v24 = v22;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  *(v24 + 64) = (*(v26 + 32))(v25, v26) & 1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  *(v24 + 65) = (*(v28 + 40))(v27, v28) & 1;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  *(v24 + 9) = (*(v30 + 48))(v29, v30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventConferenceRoomModelObject.hash(into:)()
{
  v1 = *(v0 + 72);
  EventDirectoryRecordModelObject.hash(into:)();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  return MEMORY[0x1CCAA7D10](v1);
}

uint64_t sub_1CABC2014@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1CABC1A50(v7, &v6);
}

uint64_t sub_1CABC206C@<X0>(uint64_t *a1@<X8>)
{
  result = EventConferenceRoomModelObject.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CABC2098()
{
  v1 = *(v0 + 72);
  EventDirectoryRecordModelObject.hash(into:)();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  return MEMORY[0x1CCAA7D10](v1);
}

uint64_t sub_1CABC2110()
{
  v1 = *(v0 + 72);
  sub_1CAD4EA84();
  EventDirectoryRecordModelObject.hash(into:)();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

void EventConferenceRoomModelObject.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  EventDirectoryRecordModelObject.init(_:)([a1 location], v9);
  v4 = v11;
  if (v11)
  {
    v5 = [a1 supportsAvailability];
    v6 = [a1 availabilityRequestInProgress];
    v7 = [a1 availability];

    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v10;
    *(a2 + 64) = v5;
    *(a2 + 65) = v6;
  }

  else
  {

    v7 = 0;
    *(a2 + 64) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  *(a2 + 56) = v4;
  *(a2 + 72) = v7;
}

unint64_t sub_1CABC2284()
{
  v1 = 0x6E6F697461636F6CLL;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x6962616C69617661;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1CABC2318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CABC3124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CABC2358(uint64_t a1)
{
  v2 = sub_1CABC2C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABC2394(uint64_t a1)
{
  v2 = sub_1CABC2C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventConferenceRoomModelObject.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463768);
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CABC2C30();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v30 = 0;
  sub_1CABC2C84();
  v9 = v41;
  sub_1CAD4E8C4();
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  LOBYTE(v22[0]) = 1;
  v19 = sub_1CAD4E894();
  LOBYTE(v22[0]) = 2;
  v18 = sub_1CAD4E834();
  type metadata accessor for EKAvailabilitySpanType(0);
  LOBYTE(v22[0]) = 3;
  sub_1CABC3298(&qword_1EC463780);
  sub_1CAD4E874();
  v19 &= 1u;
  v11 = v18 & 1;
  (*(v8 + 8))(v7, v9);
  if (v29)
  {
    v12 = 0;
  }

  else
  {
    v12 = v28;
  }

  v13 = v37;
  v14 = v38;
  v20[0] = v37;
  v20[1] = v38;
  v15 = v40;
  v20[2] = v39;
  v20[3] = v40;
  v16 = v19;
  LOBYTE(v21) = v19;
  BYTE1(v21) = v11;
  *(&v21 + 2) = v35;
  WORD3(v21) = v36;
  *(&v21 + 1) = v12;
  a2[2] = v39;
  a2[3] = v15;
  *a2 = v13;
  a2[1] = v14;
  a2[4] = v21;
  sub_1CABC2CD8(v20, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v22[0] = v37;
  v22[1] = v38;
  v22[2] = v39;
  v22[3] = v40;
  v23 = v16;
  v24 = v11;
  v25 = v35;
  v26 = v36;
  v27 = v12;
  return sub_1CABC2D10(v22);
}

uint64_t EventConferenceRoomModelObject.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463788);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v26 = *v1;
  v27 = v8;
  v9 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v10 = *(v1 + 64);
  v30 = *(v1 + 65);
  v31 = v10;
  v14 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CABC1A50(&v26, &v22);
  sub_1CABC2C30();
  sub_1CAD4EB04();
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v21 = 0;
  sub_1CABC2D40();
  sub_1CAD4E984();
  if (v2)
  {
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_1CABC1AFC(&v17);
  }

  else
  {
    v11 = v14;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_1CABC1AFC(&v17);
    LOBYTE(v16) = 1;
    sub_1CAD4E944();
    LOBYTE(v16) = 2;
    sub_1CAD4E944();
    v16 = v11;
    v15 = 3;
    type metadata accessor for EKAvailabilitySpanType(0);
    sub_1CABC3298(&qword_1EC463798);
    sub_1CAD4E984();
  }

  return (*(v5 + 8))(v7, v4);
}

BOOL _s13CalendarUIKit30EventConferenceRoomModelObjectV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v30[0] = *a1;
  v30[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v30[2] = a1[2];
  v30[3] = v3;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v31[2] = a2[2];
  v31[3] = v8;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a2;
  v31[0] = v6;
  v31[1] = v9;
  v26 = v5;
  v27 = v4;
  v12 = a1[3];
  v28 = a1[2];
  v29 = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 65);
  v15 = *(a1 + 9);
  v16 = *(a2 + 64);
  v17 = *(a2 + 65);
  v18 = *(a2 + 9);
  v22 = v11;
  v23 = v7;
  v19 = a2[3];
  v24 = v10;
  v25 = v19;
  v20 = _s13CalendarUIKit31EventDirectoryRecordModelObjectV2eeoiySbAC_ACtFZ_0(&v26, &v22);
  v32[0] = v22;
  v32[1] = v23;
  v32[2] = v24;
  v32[3] = v25;
  sub_1CABC1A50(v30, v33);
  sub_1CABC1A50(v31, v33);
  sub_1CABC1AFC(v32);
  v33[0] = v26;
  v33[1] = v27;
  v33[2] = v28;
  v33[3] = v29;
  sub_1CABC1AFC(v33);
  result = 0;
  if ((v20 & 1) != 0 && ((v13 ^ v16) & 1) == 0 && ((v14 ^ v17) & 1) == 0)
  {
    return v15 == v18;
  }

  return result;
}

unint64_t sub_1CABC2C30()
{
  result = qword_1EC463770;
  if (!qword_1EC463770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463770);
  }

  return result;
}

unint64_t sub_1CABC2C84()
{
  result = qword_1EC463778;
  if (!qword_1EC463778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463778);
  }

  return result;
}

unint64_t sub_1CABC2D40()
{
  result = qword_1EC463790;
  if (!qword_1EC463790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463790);
  }

  return result;
}

unint64_t sub_1CABC2DB0()
{
  result = qword_1EC4637A0;
  if (!qword_1EC4637A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4637A0);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1CABC2E20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CABC2E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventConferenceRoomModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventConferenceRoomModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CABC3020()
{
  result = qword_1EC4637A8;
  if (!qword_1EC4637A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4637A8);
  }

  return result;
}

unint64_t sub_1CABC3078()
{
  result = qword_1EC4637B0;
  if (!qword_1EC4637B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4637B0);
  }

  return result;
}

unint64_t sub_1CABC30D0()
{
  result = qword_1EC4637B8;
  if (!qword_1EC4637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4637B8);
  }

  return result;
}

uint64_t sub_1CABC3124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD742E0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001CAD74300 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CABC3298(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EKAvailabilitySpanType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CABC335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4D0D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4637C8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = (&v45 + *(v9 + 36) - v10);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4637D0) + 28);
  v14 = *MEMORY[0x1E697DC18];
  v15 = sub_1CAD4C6B4();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4637D8);
  (*(*(v16 - 8) + 16))(v11, a1, v16);
  sub_1CAD4D0C4();
  sub_1CABC36D0();
  sub_1CABC37B4();
  sub_1CAD4D4E4();
  (*(v5 + 8))(v7, v4);
  sub_1CABC380C(v11);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463800) + 36));
  v18 = *(sub_1CAD4C974() + 20);
  v19 = *MEMORY[0x1E697F470];
  v20 = sub_1CAD4CD24();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #14.0 }

  *v17 = _Q0;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808) + 36)] = 256;
  LOBYTE(v19) = sub_1CAD4D1C4();
  sub_1CAD4C5F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463810) + 36);
  *v34 = v19;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  LOBYTE(v19) = sub_1CAD4D1F4();
  sub_1CAD4C5F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463818);
  v44 = a2 + *(result + 36);
  *v44 = v19;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  return result;
}

unint64_t sub_1CABC36D0()
{
  result = qword_1EC4637E0;
  if (!qword_1EC4637E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4637C8);
    sub_1CAB23B0C(&qword_1EC4637E8, &qword_1EC4637D8);
    sub_1CAB23B0C(&qword_1EC4637F0, &qword_1EC4637D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4637E0);
  }

  return result;
}

unint64_t sub_1CABC37B4()
{
  result = qword_1EC4637F8;
  if (!qword_1EC4637F8)
  {
    sub_1CAD4D0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4637F8);
  }

  return result;
}

uint64_t sub_1CABC380C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4637C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CABC38A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CABC3928()
{
  result = qword_1EC463830;
  if (!qword_1EC463830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4637C8);
    sub_1CAD4D0D4();
    sub_1CABC36D0();
    sub_1CABC37B4();
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC463838, &qword_1EC463808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463830);
  }

  return result;
}

uint64_t sub_1CABC3A3C()
{
  swift_getKeyPath();
  sub_1CABC6394();
  sub_1CAD4C424();

  swift_beginAccess();
}

uint64_t sub_1CABC3ACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABC6394();
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentControllers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CABC3B64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentControllers;
  swift_beginAccess();

  sub_1CACFD8C8(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABC6394();
    sub_1CAD4C414();
  }
}

uint64_t sub_1CABC3C84(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentControllers;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1CABC3CF4()
{
  swift_getKeyPath();
  sub_1CABC6394();
  sub_1CAD4C424();

  return *(v0 + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController);
}

uint64_t sub_1CABC3D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABC6394();
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController);
  return result;
}

uint64_t sub_1CABC3E14(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABC6394();
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CABC3F6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentAlert;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v6, v5, &qword_1EC463938);
  v7 = sub_1CABC64CC(v5, a1);
  sub_1CAB21B68(v5, &qword_1EC463938);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CABC6394();
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v5, &qword_1EC463938);
    swift_beginAccess();
    sub_1CABC6AC8(v5, v1 + v6, &qword_1EC463938);
    swift_endAccess();
  }

  return sub_1CAB21B68(a1, &qword_1EC463938);
}

uint64_t sub_1CABC4168@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1CABC6394();
  sub_1CAD4C424();

  v7 = *a1;
  swift_beginAccess();
  return sub_1CAB23A9C(v9 + v7, a3, a2);
}

uint64_t sub_1CABC423C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1CABC6394();
  sub_1CAD4C424();

  v8 = *a2;
  swift_beginAccess();
  return sub_1CAB23A9C(v7 + v8, a4, a3);
}

uint64_t sub_1CABC4318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1CAB23A9C(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_1CABC43C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentItem;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v6, v5, &unk_1EC463940);
  v7 = sub_1CABC67B0(v5, a1);
  sub_1CAB21B68(v5, &unk_1EC463940);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CABC6394();
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v5, &unk_1EC463940);
    swift_beginAccess();
    sub_1CABC6AC8(v5, v1 + v6, &unk_1EC463940);
    swift_endAccess();
  }

  return sub_1CAB21B68(a1, &unk_1EC463940);
}

uint64_t sub_1CABC459C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  sub_1CAB23A9C(a2, &v14 - v10, a3);
  v12 = *a5;
  swift_beginAccess();
  sub_1CABC6AC8(v11, a1 + v12, a3);
  return swift_endAccess();
}

uint64_t sub_1CABC4680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463940);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v28 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - v16;
  sub_1CAB23A9C(a1, v28 - v16, &qword_1EC465450);
  v18 = sub_1CAD4BFF4();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = sub_1CAD4BFB4();
  result = (*(v19 + 8))(v17, v18);
  if (!a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v22 = objc_opt_self();
  v23 = sub_1CAD4DF54();
  v24 = [v22 canPreview:v21 fileName:v23];

  if (v24)
  {
    sub_1CACA07A0(a4, v14);
    v25 = type metadata accessor for EventAttachmentModelObject();
    (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
    result = sub_1CABC43C4(v14);
    if (*(v5 + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController) == 1)
    {
      *(v5 + OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v28[-2] = v5;
      LOBYTE(v28[-1]) = 1;
      v28[1] = v5;
      sub_1CABC6394();
      sub_1CAD4C414();
    }
  }

  else
  {
    v26 = type metadata accessor for AttachmentAlert(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
    return sub_1CABC3F6C(v11);
  }

  return result;
}

void sub_1CABC5244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v40 = a2;
  v42 = type metadata accessor for EventAttachmentModelObject();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel___observationRegistrar;
  v44 = v3;
  v10 = sub_1CABC6394();
  sub_1CAD4C424();

  v11 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentControllers;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_1CAC1628C(v39, v40);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      [v15 cellSelected];
LABEL_22:

      return;
    }
  }

  v37[0] = v11;
  v37[1] = v10;
  v37[2] = v9;
  v38 = v4;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return;
  }

  v17 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v41 = *(v6 + 72);
  while (1)
  {
    sub_1CABC63EC(v17, v8, type metadata accessor for EventAttachmentModelObject);
    v18 = v8[*(v42 + 40)];
    v19 = *&v8[*(v42 + 44)];
    v20 = objc_allocWithZone(MEMORY[0x1E6966960]);
    v21 = sub_1CAD4DF54();
    v22 = sub_1CAD4DF54();
    v23 = [v20 initWithUUID:v21 fileName:v22 autoArchived:v18 urlForPendingFileCopy:v19];

    if (!v23)
    {
      __break(1u);
      goto LABEL_25;
    }

    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 _keyForAttachment_];
    if (!v26)
    {

      sub_1CABC6454(v8, type metadata accessor for EventAttachmentModelObject);
      goto LABEL_8;
    }

    v27 = v26;
    v28 = sub_1CAD4DF94();
    v30 = v29;

    if (v28 == v39 && v30 == v40)
    {
      break;
    }

    v32 = sub_1CAD4E9E4();

    sub_1CABC6454(v8, type metadata accessor for EventAttachmentModelObject);
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_8:
    v17 += v41;
    if (!--v16)
    {
      return;
    }
  }

  sub_1CABC6454(v8, type metadata accessor for EventAttachmentModelObject);
LABEL_18:
  v15 = v25;
  if (([v24 _attachmentIsViewable_] & 1) == 0)
  {

    goto LABEL_22;
  }

  v33 = [objc_allocWithZone(CUIKAttachmentDownloadController) initWithAttachment_];

  if (v33)
  {
    v34 = v38;
    [v33 setDelegate_];
    swift_getKeyPath();
    v43 = v34;
    v35 = v40;

    v36 = v33;
    sub_1CAD4C424();

    v43 = v34;
    swift_getKeyPath();
    sub_1CAD4C444();

    swift_beginAccess();
    sub_1CABC56E0(v33, v39, v35);
    swift_endAccess();
    v43 = v34;
    swift_getKeyPath();
    sub_1CAD4C434();

    [v36 cellSelected];

    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1CABC56E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1CAC78CE4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1CAC1628C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1CAC791DC();
        v14 = v16;
      }

      result = sub_1CAC257C0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

id sub_1CABC5808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentsViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CABC595C()
{
  sub_1CABC5B28(319, &qword_1EC4638E8, type metadata accessor for AttachmentAlert);
  if (v0 <= 0x3F)
  {
    sub_1CABC5B28(319, &qword_1EC4638F0, type metadata accessor for EventAttachmentModelObject);
    if (v1 <= 0x3F)
    {
      sub_1CAD4C464();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1CABC5AF0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CABC5B28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4E4D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CABC5BCC()
{
  sub_1CABC5C40();
  if (v0 <= 0x3F)
  {
    sub_1CAD4BFF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CABC5C40()
{
  if (!qword_1EC463908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC463910);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC463908);
    }
  }
}

uint64_t sub_1CABC5CB4()
{
  v1 = v0;
  v2 = type metadata accessor for AttachmentAlert(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CABC63EC(v1, v4, type metadata accessor for AttachmentAlert);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (qword_1EC462E38 != -1)
      {
        swift_once();
      }

      v10 = qword_1EC47DEA8;

      sub_1CABC6454(v4, type metadata accessor for AttachmentAlert);
    }

    else
    {
      v7 = *v4;
      v8 = v4[1];

      if (qword_1EC462E50 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1CAD58380;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1CABC6340();
      *(v9 + 32) = v7;
      *(v9 + 40) = v8;
      v10 = sub_1CAD4DF64();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_1EC462E20 != -1)
      {
        swift_once();
      }

      v6 = &qword_1EC47DE78;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (qword_1EC462E60 != -1)
      {
        swift_once();
      }

      v6 = &qword_1EC47DEF8;
    }

    else
    {
      if (qword_1EC462E68 != -1)
      {
        swift_once();
      }

      v6 = &qword_1EC47DF08;
    }

    v10 = *v6;
  }

  return v10;
}

uint64_t sub_1CABC5F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentAlert(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  sub_1CABC63EC(a1, &v24 - v8, type metadata accessor for AttachmentAlert);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 3)
  {
    if (qword_1EC462E18 != -1)
    {
      swift_once();
    }

    v12 = qword_1EC47DE68;
    v11 = unk_1EC47DE70;
LABEL_9:

    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1CABC6454(v9, type metadata accessor for AttachmentAlert);
    if (qword_1EC462E48 != -1)
    {
      swift_once();
    }

    v12 = qword_1EC47DEC8;
    v11 = unk_1EC47DED0;
    goto LABEL_9;
  }

  if (qword_1EC462E30 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC47DE98;
  v11 = unk_1EC47DEA0;

  sub_1CABC6454(v9, type metadata accessor for AttachmentAlert);
LABEL_10:
  sub_1CABC63EC(a2, v7, type metadata accessor for AttachmentAlert);
  v13 = swift_getEnumCaseMultiPayload();
  if ((v13 - 2) < 3)
  {
    if (qword_1EC462E18 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC47DE68;
    v14 = unk_1EC47DE70;
    goto LABEL_18;
  }

  if (!v13)
  {
    sub_1CABC6454(v7, type metadata accessor for AttachmentAlert);
    if (qword_1EC462E48 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC47DEC8;
    v14 = unk_1EC47DED0;
LABEL_18:

    if (v12 != v15)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (qword_1EC462E30 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC47DE98;
  v14 = unk_1EC47DEA0;

  sub_1CABC6454(v7, type metadata accessor for AttachmentAlert);
  if (v12 != v16)
  {
LABEL_27:
    v17 = sub_1CAD4E9E4();

    v18 = 0;
    if ((v17 & 1) == 0)
    {
      return v18 & 1;
    }

    goto LABEL_28;
  }

LABEL_19:
  if (v11 != v14)
  {
    goto LABEL_27;
  }

LABEL_28:
  v19 = sub_1CABC5CB4();
  v21 = v20;
  if (v19 == sub_1CABC5CB4() && v21 == v22)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1CAD4E9E4();
  }

  return v18 & 1;
}

unint64_t sub_1CABC6340()
{
  result = qword_1EC463928;
  if (!qword_1EC463928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463928);
  }

  return result;
}

unint64_t sub_1CABC6394()
{
  result = qword_1EC463930;
  if (!qword_1EC463930)
  {
    type metadata accessor for AttachmentsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463930);
  }

  return result;
}

uint64_t sub_1CABC63EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABC6454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CABC64CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentAlert(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463958);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v20 - v13, &qword_1EC463938);
  sub_1CAB23A9C(a2, &v14[v15], &qword_1EC463938);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &qword_1EC463938);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1CABC6B64(&v14[v15], v7, type metadata accessor for AttachmentAlert);
      v18 = sub_1CABC5F5C(v10, v7);
      sub_1CABC6454(v7, type metadata accessor for AttachmentAlert);
      sub_1CABC6454(v10, type metadata accessor for AttachmentAlert);
      sub_1CAB21B68(v14, &qword_1EC463938);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1CABC6454(v10, type metadata accessor for AttachmentAlert);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CAB21B68(v14, &qword_1EC463958);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CAB21B68(v14, &qword_1EC463938);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CABC67B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463950);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1CAB23A9C(a1, &v20 - v13, &unk_1EC463940);
  sub_1CAB23A9C(a2, &v14[v15], &unk_1EC463940);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1CAB23A9C(v14, v10, &unk_1EC463940);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1CABC6B64(&v14[v15], v7, type metadata accessor for EventAttachmentModelObject);
      v18 = _s13CalendarUIKit26EventAttachmentModelObjectV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1CABC6454(v7, type metadata accessor for EventAttachmentModelObject);
      sub_1CABC6454(v10, type metadata accessor for EventAttachmentModelObject);
      sub_1CAB21B68(v14, &unk_1EC463940);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1CABC6454(v10, type metadata accessor for EventAttachmentModelObject);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CAB21B68(v14, &qword_1EC463950);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CAB21B68(v14, &unk_1EC463940);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CABC6AC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABC6B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABC6BE8(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 stringFromByteCount:objc_msgSend(a1 countStyle:{sel_longLongValue), 0}];
  v6 = sub_1CAD4DF94();
  v8 = v7;

  sub_1CABC6E18();
  v9 = sub_1CAD4E474();
  LOBYTE(a1) = [a1 isEqualToNumber_];

  if (a1)
  {

    return 0;
  }

  else
  {
    v10 = sub_1CAD4E474();
    v11 = [a2 isEqualToNumber_];

    if ((v11 & 1) == 0)
    {
      v12 = [v4 stringFromByteCount:objc_msgSend(a2 countStyle:{sel_longLongValue), 0}];
      v13 = sub_1CAD4DF94();
      v15 = v14;

      if ((v6 != v13 || v8 != v15) && (sub_1CAD4E9E4() & 1) == 0)
      {
        if (qword_1EC462E10 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1CAD5A0D0;
        v17 = MEMORY[0x1E69E6158];
        *(v16 + 56) = MEMORY[0x1E69E6158];
        v18 = sub_1CABC6340();
        *(v16 + 32) = v6;
        *(v16 + 40) = v8;
        *(v16 + 96) = v17;
        *(v16 + 104) = v18;
        *(v16 + 64) = v18;
        *(v16 + 72) = v13;
        *(v16 + 80) = v15;
        v6 = sub_1CAD4DF64();
      }
    }
  }

  return v6;
}

unint64_t sub_1CABC6E18()
{
  result = qword_1EC463960;
  if (!qword_1EC463960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC463960);
  }

  return result;
}

uint64_t sub_1CABC6E64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t EKAlarmModelWrapper.trigger.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1CAD4C0F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = [*v1 absoluteDate];
  if (v11)
  {
    v12 = v11;
    sub_1CAD4C0B4();

    v13 = *(v4 + 32);
    v13(v9, v7, v3);
    v13(a1, v9, v3);
    type metadata accessor for EventAlarmTrigger();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    [v10 relativeOffset];
    *a1 = v15;
    type metadata accessor for EventAlarmTrigger();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1CABC70EC(uint64_t *a1, int a2)
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

uint64_t sub_1CABC7134(uint64_t result, int a2, int a3)
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

BOOL EventAttendeeModel.hasRealComment.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CAD4DF54();

  v4 = [v3 CalStringByRemovingAutoComment];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1CAD4DF94();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return v8 != 0;
}

unint64_t EventAttendeeModel.statusImageName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000013;
  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 4)
  {
    v3 = v4;
  }

  if (v2 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v3;
  }
}

uint64_t EventAttendeeModel.statusColor.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  switch(v2)
  {
    case 4:

      return sub_1CAD4D884();
    case 3:

      return sub_1CAD4D804();
    case 2:

      return sub_1CAD4D864();
    default:

      return sub_1CAD4D824();
  }
}

id sub_1CABC739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463978);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  if (!a4 || (v17 = [objc_opt_self() defaultProvider], v18 = sub_1CAD4DF54(), v19 = objc_msgSend(v17, sel_unifiedContactWithIdentifier_, v18), v17, v18, !v19))
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    v20 = objc_opt_self();
    v21 = sub_1CAD4DF54();
    v22 = [v20 personNameComponentsFromString_];

    if (v22)
    {
      sub_1CAD4BF24();

      v23 = sub_1CAD4BF34();
      (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
    }

    else
    {
      v23 = sub_1CAD4BF34();
      (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    }

    sub_1CABC7E40(v14, v16);
    sub_1CABC7EB0(v16, v11);
    sub_1CAD4BF34();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v11, 1, v23) == 1)
    {
      sub_1CABC7F20(v11);
    }

    else
    {
      sub_1CAD4BF14();
      v27 = v26;
      (*(v24 + 8))(v11, v23);
      if (v27)
      {
        v28 = sub_1CAD4DF54();

        [v19 setFamilyName_];
      }
    }

    sub_1CABC7EB0(v16, v8);
    if (v25(v8, 1, v23) == 1)
    {
      sub_1CABC7F20(v16);
      v16 = v8;
    }

    else
    {
      sub_1CAD4BF04();
      v30 = v29;
      (*(v24 + 8))(v8, v23);
      if (v30)
      {
        v31 = sub_1CAD4DF54();

        [v19 setGivenName_];
      }
    }

    sub_1CABC7F20(v16);
  }

  return v19;
}

uint64_t sub_1CABC776C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1CABC739C(a1, a2, a4, a5);
  v7 = v6;
  if (a3)
  {
    v8 = &selRef_givenName;
  }

  else
  {
    v8 = &selRef_familyName;
  }

  if (a3)
  {
    v9 = &selRef_familyName;
  }

  else
  {
    v9 = &selRef_givenName;
  }

  v10 = [v6 *v8];
  v11 = sub_1CAD4DF94();

  v12 = [v7 *v9];
  sub_1CAD4DF94();

  return v11;
}

uint64_t _s13CalendarUIKit21compareDisplayPersons7person17person2SbAA0D6PersonV_AFtF_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttendeeModelObject(0);
  v27[3] = v4;
  v5 = sub_1CABC79C4();
  v27[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1CABC7A1C(a1, boxed_opaque_existential_1);
  v26[3] = v4;
  v26[4] = v5;
  v7 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1CABC7A1C(a2, v7);
  v8 = *(v4 + 48);
  v9 = *(boxed_opaque_existential_1 + v8);
  v10 = *(v7 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_19;
    }
  }

  else if (v10 == 2)
  {
    v11 = 1;
    goto LABEL_19;
  }

  v12 = *boxed_opaque_existential_1;
  v13 = boxed_opaque_existential_1[1];
  v15 = *v7;
  v14 = v7[1];
  sub_1CAB299C0(v27, v25);
  sub_1CAB299C0(v26, v24);
  if (v13)
  {
    if (v14)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v17 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v11 = sub_1CABC7A80(v12, v13, v15, v14, v16, v17);
    }

    else
    {
      v11 = 1;
    }
  }

  else if (v14 || boxed_opaque_existential_1[3] || ((v18 = *(v4 + 32), v19 = *(boxed_opaque_existential_1 + v18), v20 = *(boxed_opaque_existential_1 + v18 + 8), v21 = (v7 + v18), v19 == *v21) ? (v22 = v20 == v21[1]) : (v22 = 0), v22))
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1CAD4E9E4();
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v11 & 1;
}

unint64_t sub_1CABC79C4()
{
  result = qword_1EC463970;
  if (!qword_1EC463970)
  {
    type metadata accessor for EventAttendeeModelObject(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463970);
  }

  return result;
}

uint64_t sub_1CABC7A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttendeeModelObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABC7A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v11 = type metadata accessor for EventAttendeeModelObject(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  sub_1CABC7A1C(a5, &v53 - v15);
  sub_1CABC7A1C(a6, v14);
  v17 = [objc_opt_self() sharedDefaults];
  v18 = [v17 sortOrder];

  v19 = v18 == 2;
  v20 = *(v11 + 40);
  v56 = v16;
  v21 = &v16[v20];
  v23 = *v21;
  v22 = v21[1];

  v24 = sub_1CABC776C(a1, a2, v18 == 2, v23, v22);
  v26 = v25;
  v28 = v27;
  v55 = v29;

  v30 = *(v11 + 40);
  v53 = v14;
  v31 = &v14[v30];
  v32 = *v31;
  v33 = v31[1];

  v34 = sub_1CABC776C(a3, v54, v19, v32, v33);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  if (!v26)
  {
    if (!v36)
    {
      if (v55)
      {
        v42 = v53;
        if (!v40)
        {

          v43 = 1;
          goto LABEL_14;
        }

        v46 = v28 == v38 && v55 == v40;
        v47 = v56;
        if (!v46)
        {
          v43 = sub_1CAD4E9E4();

          v44 = v47;
          goto LABEL_15;
        }
      }

      else
      {
        v42 = v53;
        if (v40)
        {
          goto LABEL_13;
        }

        v44 = v56;
        if (*(v56 + 3))
        {
          v43 = 0;
          goto LABEL_15;
        }

        v48 = *(v11 + 32);
        v47 = v56;
        v49 = *&v56[v48];
        v50 = *&v56[v48 + 8];
        v51 = &v53[v48];
        if (v49 != *v51 || v50 != *(v51 + 1))
        {
          v43 = sub_1CAD4E9E4();
          v44 = v47;
          goto LABEL_15;
        }
      }

      v43 = 0;
      v44 = v47;
      goto LABEL_15;
    }

    v43 = 0;
LABEL_11:
    v42 = v53;
    goto LABEL_14;
  }

  if (!v36)
  {

    v43 = 1;
    goto LABEL_11;
  }

  v41 = v24 == v34 && v26 == v36;
  v42 = v53;
  if (v41)
  {

LABEL_13:

    v43 = 0;
    goto LABEL_14;
  }

  v43 = sub_1CAD4E9E4();

LABEL_14:
  v44 = v56;
LABEL_15:
  sub_1CABC7DE4(v44);
  sub_1CABC7DE4(v42);
  return v43 & 1;
}

uint64_t sub_1CABC7DE4(uint64_t a1)
{
  v2 = type metadata accessor for EventAttendeeModelObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CABC7E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABC7EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABC7F20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CABC7F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  type metadata accessor for TimeZoneDataModel(0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = 0;
  *(v9 + 24) = v10;
  sub_1CAD4C454();
  sub_1CAD4E2D4();
  v11 = sub_1CAD4E304();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;

  sub_1CACA6D34(0, 0, v8, &unk_1CAD5A410, v12);

  sub_1CABC9AC0();
  sub_1CAD4DC14();
  v13 = type metadata accessor for TimeZoneChooser(0);
  sub_1CABA62E4(a1, a3 + v13[5], &qword_1EC463678);
  v14 = a3 + v13[6];
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  sub_1CAD4D984();
  v15 = v19;
  *v14 = v18;
  *(v14 + 16) = v15;
  return sub_1CABA62E4(a2, a3 + v13[7], &qword_1EC463670);
}

uint64_t sub_1CABC8188@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1CABC8194()
{
  swift_getKeyPath();
  sub_1CABC9AC0();
  sub_1CAD4C424();
}

uint64_t sub_1CABC8208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABC9AC0();
  sub_1CAD4C424();

  *a2 = *(v3 + 16);
}

uint64_t sub_1CABC8284()
{
  swift_getKeyPath();
  sub_1CABC9AC0();
  sub_1CAD4C424();
}

uint64_t sub_1CABC82F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABC9AC0();
  sub_1CAD4C424();

  *a2 = *(v3 + 24);
}

uint64_t sub_1CABC8374()
{
  swift_getKeyPath();
  sub_1CABC9AC0();
  sub_1CAD4C414();
}

uint64_t sub_1CABC8420()
{
  *(v0 + 32) = sub_1CAD4E2C4();
  *(v0 + 40) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABC84B8, v2, v1);
}

uint64_t sub_1CABC84B8()
{
  v1 = v0[3];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v0[6] = OBJC_IVAR____TtC13CalendarUIKit17TimeZoneDataModel___observationRegistrar;
  v0[2] = v1;
  v0[7] = sub_1CABC9AC0();
  sub_1CAD4C414();
  v0[8] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1CABC85C0, 0, 0);
}

uint64_t sub_1CABC85C0()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_1CABC8834();
  v4 = v3;
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v0[2] = v2;
  sub_1CAD4C414();
  v0[9] = v1;

  swift_getKeyPath();
  v0[2] = v2;
  sub_1CAD4C424();

  v0[10] = *(v2 + 24);

  v0[11] = sub_1CAD4E2B4();
  v7 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABC873C, v7, v6);
}

uint64_t sub_1CABC873C()
{
  v1 = v0[10];
  v2 = v0[3];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[2] = v2;
  sub_1CAD4C414();

  v4 = v0[1];

  return v4();
}

void sub_1CABC8834()
{
  v58 = sub_1CAD4C0F4();
  v0 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1CAD4C404();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedManager];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 allCities];

    if (v13)
    {
      v62 = v6;
      v14 = sub_1CAD4E214();

      v15 = sub_1CACC3518(v14);

      if (v15 >> 62)
      {
LABEL_25:
        v63 = v15 & 0xFFFFFFFFFFFFFF8;
        v16 = sub_1CAD4E604();
        if (v16)
        {
LABEL_5:
          v17 = 0;
          v60 = (v8 + 48);
          v61 = v15 & 0xC000000000000001;
          v54 = (v0 + 8);
          v55 = (v8 + 32);
          v53 = (v8 + 8);
          v59 = MEMORY[0x1E69E7CC0];
          do
          {
            v18 = v17;
            while (1)
            {
              if (v61)
              {
                v19 = MEMORY[0x1CCAA7940](v18, v15);
              }

              else
              {
                if (v18 >= *(v63 + 16))
                {
                  goto LABEL_24;
                }

                v19 = *(v15 + 8 * v18 + 32);
              }

              v8 = v19;
              v17 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v20 = [v19 timeZone];
              if (!v20)
              {
                __break(1u);
                goto LABEL_29;
              }

              v21 = v20;
              sub_1CAD4DF94();
              v0 = v22;

              v23 = v62;
              sub_1CAD4C384();

              if ((*v60)(v23, 1, v7) != 1)
              {
                break;
              }

              sub_1CAB21B68(v23, &qword_1EC4635D0);
              ++v18;
              if (v17 == v16)
              {
                goto LABEL_27;
              }
            }

            (*v55)(v10, v23, v7);
            v24 = sub_1CAD4C394();
            v26 = v25;
            v27 = [v8 displayNameIncludingCountry_];
            if (!v27)
            {
              goto LABEL_31;
            }

            v28 = v27;
            v52 = v26;
            v29 = sub_1CAD4DF94();
            v50 = v30;
            v51 = v29;

            v31 = v56;
            sub_1CAD4C184();
            v32 = sub_1CAD4C1D4();
            (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
            v33 = sub_1CAD4C3B4();
            v48 = v34;
            v49 = v33;
            sub_1CAB21B68(v31, &qword_1EC4636A8);
            v35 = v57;
            sub_1CAD4C0E4();
            v36 = sub_1CAD4C3A4();
            v46 = v37;
            v47 = v36;

            (*v54)(v35, v58);
            (*v53)(v10, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1CAD3440C(0, *(v59 + 2) + 1, 1, v59);
            }

            v0 = *(v59 + 2);
            v38 = *(v59 + 3);
            v8 = (v0 + 1);
            if (v0 >= v38 >> 1)
            {
              v59 = sub_1CAD3440C((v38 > 1), v0 + 1, 1, v59);
            }

            v39 = v59;
            *(v59 + 2) = v8;
            v40 = &v39[64 * v0];
            v42 = v51;
            v41 = v52;
            *(v40 + 4) = v24;
            *(v40 + 5) = v41;
            v43 = v49;
            v44 = v50;
            *(v40 + 6) = v42;
            *(v40 + 7) = v44;
            *(v40 + 8) = v43;
            v45 = v47;
            *(v40 + 9) = v48;
            *(v40 + 10) = v45;
            *(v40 + 11) = v46;
          }

          while (v17 != v16);
          goto LABEL_27;
        }
      }

      else
      {
        v63 = v15 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_5;
        }
      }

      v59 = MEMORY[0x1E69E7CC0];
LABEL_27:

      return;
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1CABC8DC0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CABC8DE4, 0, 0);
}

uint64_t sub_1CABC8DE4()
{
  v1 = v0[5];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC13CalendarUIKit17TimeZoneDataModel___observationRegistrar;
  v0[2] = v1;
  v0[6] = v2;
  v0[7] = sub_1CABC9AC0();
  sub_1CAD4C424();

  if (*(*(v1 + 24) + 16))
  {
    v0[8] = sub_1CAD4E2C4();
    v0[9] = sub_1CAD4E2B4();
    v4 = sub_1CAD4E2A4();

    return MEMORY[0x1EEE6DFA0](sub_1CABC8F10, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1CABC8F10()
{
  v1 = v0[5];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v0[2] = v1;
  sub_1CAD4C414();
  v0[10] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1CABC9004, 0, 0);
}

uint64_t sub_1CABC9004()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = sub_1CABC91F8(v1, v2);
  }

  else
  {
    v5 = v0[5];
    swift_getKeyPath();
    v0[2] = v5;
    sub_1CAD4C424();
  }

  v0[11] = v4;
  v0[12] = sub_1CAD4E2B4();
  v7 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABC9100, v7, v6);
}

uint64_t sub_1CABC9100()
{
  v1 = v0[11];
  v2 = v0[5];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[2] = v2;
  sub_1CAD4C414();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CABC91F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *&v25 = v2;
  sub_1CABC9AC0();
  sub_1CAD4C424();

  v5 = *(v2 + 24);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = (v5 + 32 + (v8 << 6));
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v10[3];
        v13 = *v10;
        v14 = v10[1];
        v27 = v10[2];
        v28 = v12;
        v25 = v13;
        v26 = v14;
        v8 = v11 + 1;
        v24 = v14;
        v22 = a1;
        v23 = a2;
        sub_1CABC9B18(&v25, v21);
        sub_1CABA6054();
        if (sub_1CAD4E574())
        {
          break;
        }

        if (*(&v27 + 1))
        {
          v21[0] = v27;
          *&v24 = a1;
          *(&v24 + 1) = a2;
          if (sub_1CAD4E574())
          {
            break;
          }
        }

        if (*(&v28 + 1))
        {
          v21[0] = v28;
          *&v24 = a1;
          *(&v24 + 1) = a2;
          if (sub_1CAD4E574())
          {
            break;
          }
        }

        result = sub_1CABC9B50(&v25);
        v10 += 4;
        ++v11;
        if (v6 == v8)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1CACB9DF4(0, *(v9 + 16) + 1, 1);
        v9 = v29;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1CACB9DF4((v15 > 1), v16 + 1, 1);
        v9 = v29;
      }

      *(v9 + 16) = v16 + 1;
      v17 = (v9 + (v16 << 6));
      v18 = v25;
      v19 = v26;
      v20 = v28;
      v17[4] = v27;
      v17[5] = v20;
      v17[2] = v18;
      v17[3] = v19;
    }

    while (v6 - 1 != v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  return v9;
}

uint64_t sub_1CABC9454()
{

  v1 = OBJC_IVAR____TtC13CalendarUIKit17TimeZoneDataModel___observationRegistrar;
  v2 = sub_1CAD4C464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CABC9528()
{
  result = sub_1CAD4C464();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CABC95E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1CABC962C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CABC9694()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1CABC96F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1CABC9870(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_1CABC9AC0()
{
  result = qword_1EC463A18;
  if (!qword_1EC463A18)
  {
    type metadata accessor for TimeZoneDataModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463A18);
  }

  return result;
}

uint64_t sub_1CABC9B80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TimeZoneChooser(0);
  sub_1CAB23A9C(v1 + *(v10 + 28), v9, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1CABC9D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for TimeZoneChooser(0);
  v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v76 = v4;
  v77 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4CC34();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1CAD4CE94();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1CAD4CEA4();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A88);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A80);
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v51 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A78);
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v57 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A68);
  v70 = *(v16 - 8);
  v71 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v51 - v17;
  sub_1CABCA6D0(a1, v12);
  if (qword_1EC462C70 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC47DB18;
  v19 = unk_1EC47DB20;
  v79 = qword_1EC47DB18;
  v80 = unk_1EC47DB20;
  v20 = sub_1CABCC8F4();
  v53 = sub_1CABA6054();

  sub_1CAD4D5D4();
  sub_1CAB21B68(v12, &qword_1EC463A88);
  v21 = (a1 + *(v3 + 24));
  v61 = *v21;
  v23 = v21[1];
  v22 = v21[2];
  v60 = v23;
  v59 = v22;
  v83 = v61;
  v84 = v23;
  v85 = v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
  sub_1CAD4D9B4();
  v52 = v14;
  v51 = v81;
  v54 = a1;
  sub_1CAD4CE84();
  v24 = v55;
  sub_1CAD4CE74();
  (*(v62 + 8))(v8, v63);
  v83 = v18;
  v84 = v19;
  v79 = v10;
  v80 = MEMORY[0x1E69E6158];
  v81 = v20;
  v25 = v53;
  v82 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v57;
  v28 = v65;
  v29 = v52;
  sub_1CAD4D4C4();

  (*(v66 + 8))(v24, v68);
  (*(v58 + 8))(v29, v28);
  v31 = v72;
  v30 = v73;
  v32 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x1E697C430], v74);
  v79 = v28;
  v80 = MEMORY[0x1E69E6158];
  v81 = OpaqueTypeConformance2;
  v82 = v25;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v69;
  v35 = v67;
  sub_1CAD4D694();
  (*(v30 + 8))(v31, v32);
  v36 = (*(v64 + 8))(v27, v35);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A70);
  v79 = v35;
  v80 = v33;
  swift_getOpaqueTypeConformance2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
  v39 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  v79 = v38;
  v80 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v78;
  v41 = v71;
  sub_1CAD4D734();
  (*(v70 + 8))(v34, v41);
  v79 = v61;
  v80 = v60;
  v81 = v59;
  sub_1CAD4D994();
  v42 = v83;
  v43 = v84;
  v44 = v77;
  sub_1CABCCB1C(v37, v77);
  v45 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v46 = swift_allocObject();
  sub_1CABCCB80(v44, v46 + v45);
  v47 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A58) + 36));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B00);
  result = sub_1CAD4E2E4();
  v50 = (v47 + *(v48 + 40));
  *v50 = v42;
  v50[1] = v43;
  *v47 = &unk_1CAD5A510;
  v47[1] = v46;
  return result;
}

uint64_t sub_1CABCA6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v36 = type metadata accessor for TimeZoneChooser(0);
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v42 = v3;
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AE0);
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v34 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B18);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v34 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AD0);
  v37 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v35 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AC0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B20);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AB0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A20);
  v16 = a1;
  sub_1CAD4DBF4();
  v17 = v52;
  swift_getKeyPath();
  *&v52 = v17;
  sub_1CABC9AC0();
  sub_1CAD4C424();

  v18 = *(v17 + 16);

  if (v18)
  {
    v38 = v11;
    v39 = v12;
    v40 = v9;
    if (*(v18 + 16))
    {
      v19 = v43;
      sub_1CABCCB1C(v16, v43);
      v20 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v21 = swift_allocObject();
      v22 = sub_1CABCCB80(v19, v21 + v20);
      *&v52 = v18;
      MEMORY[0x1EEE9AC00](v22);
      *(&v34 - 4) = &v52;
      *(&v34 - 3) = sub_1CABCD030;
      *(&v34 - 2) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B28);
      sub_1CABCD214();
      v23 = v44;
      sub_1CAD4D374();

      v24 = v45;
      v25 = v50;
      (*(v45 + 16))(v47, v23, v50);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC463AC8, &qword_1EC463AD0);
      sub_1CAB23B0C(&qword_1EC463AD8, &qword_1EC463AE0);
      v26 = v49;
      sub_1CAD4CE24();
      (*(v24 + 8))(v23, v25);
    }

    else
    {

      v28 = v16 + *(v36 + 24);
      v29 = *v28;
      v30 = *(v28 + 16);
      v52 = v29;
      v53 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
      sub_1CAD4D994();
      v31 = v35;
      sub_1CAD4CFA4();

      v32 = v37;
      v33 = v48;
      (*(v37 + 16))(v47, v31, v48);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC463AC8, &qword_1EC463AD0);
      sub_1CAB23B0C(&qword_1EC463AD8, &qword_1EC463AE0);
      v26 = v49;
      sub_1CAD4CE24();
      (*(v32 + 8))(v31, v33);
    }

    sub_1CAB23A9C(v26, v38, &qword_1EC463AC0);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC463AA8, &qword_1EC463AB0);
    sub_1CABCCA30();
    sub_1CAD4CE24();
    return sub_1CAB21B68(v26, &qword_1EC463AC0);
  }

  else
  {
    sub_1CAD4C6F4();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC463AA8, &qword_1EC463AB0);
    sub_1CABCCA30();
    sub_1CAD4CE24();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1CABCAEE4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  *a3 = sub_1CAD4CC94();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B60);
  return sub_1CABCAF58(v9, a2, a3 + *(v7 + 44));
}

uint64_t sub_1CABCAF58@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TimeZoneChooser(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B68);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v32 = sub_1CAD4CDA4();
  LOBYTE(v39[0]) = 1;
  sub_1CABCB31C(a1, v36);
  *&v35[7] = v36[0];
  *&v35[23] = v36[1];
  *&v35[39] = v36[2];
  *&v35[55] = v36[3];
  v31 = LOBYTE(v39[0]);
  sub_1CABCCB1C(a2, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1CABCCB80(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = a1[1];
  *v17 = *a1;
  v17[1] = v18;
  v19 = a1[3];
  v17[2] = a1[2];
  v17[3] = v19;
  v34 = a1;
  sub_1CABC9B18(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B70);
  sub_1CABCD3F0();
  v30 = v14;
  sub_1CAD4D9E4();
  v20 = *(v10 + 16);
  v21 = v33;
  v20(v33, v14, v9);
  v22 = v32;
  v37[0] = v32;
  v37[1] = 0;
  LOBYTE(v14) = v31;
  v38[0] = v31;
  *&v38[1] = *v35;
  *&v38[17] = *&v35[16];
  *&v38[33] = *&v35[32];
  *&v38[49] = *&v35[48];
  v23 = *&v35[63];
  *&v38[64] = *&v35[63];
  v24 = *v38;
  *a3 = v32;
  *(a3 + 16) = v24;
  v25 = *&v38[16];
  v26 = *&v38[48];
  *(a3 + 48) = *&v38[32];
  *(a3 + 64) = v26;
  *(a3 + 32) = v25;
  *(a3 + 80) = v23;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B80);
  v20((a3 + *(v27 + 64)), v21, v9);
  sub_1CAB23A9C(v37, v39, &qword_1EC463B88);
  v28 = *(v10 + 8);
  v28(v30, v9);
  v28(v21, v9);
  v39[0] = v22;
  v39[1] = 0;
  v40 = v14;
  v42 = *&v35[16];
  v43 = *&v35[32];
  *v44 = *&v35[48];
  *&v44[15] = *&v35[63];
  v41 = *v35;
  return sub_1CAB21B68(v39, &qword_1EC463B88);
}

uint64_t sub_1CABCB31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CABA6054();

  v4 = sub_1CAD4D444();
  v6 = v5;
  v8 = v7;
  sub_1CAD4D334();
  v9 = sub_1CAD4D424();
  v29 = v10;
  v28 = v11;
  v13 = v12;

  sub_1CABA6128(v4, v6, v8 & 1);

  if (*(a1 + 40))
  {

    v14 = sub_1CAD4D444();
    v16 = v15;
    v18 = v17;
    sub_1CAD4D254();
    v19 = sub_1CAD4D424();
    v21 = v20;
    v27 = v22;
    v24 = v23;

    sub_1CABA6128(v14, v16, v18 & 1);

    v25 = v27 & 1;
    sub_1CABA4F48(v19, v21, v27 & 1);
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v25 = 0;
    v24 = 0;
  }

  sub_1CABA4F48(v9, v29, v28 & 1);

  sub_1CABC12F0(v19, v21, v25, v24);
  sub_1CABC1334(v19, v21, v25, v24);
  *a2 = v9;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v25;
  *(a2 + 56) = v24;
  sub_1CABC1334(v19, v21, v25, v24);
  sub_1CABA6128(v9, v29, v28 & 1);
}

uint64_t sub_1CABCB548()
{
  v0 = sub_1CAD4C784();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1CAD4C384();
  type metadata accessor for TimeZoneChooser(0);
  sub_1CAB23A9C(v9, v7, &qword_1EC4635D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  sub_1CAD4DAC4();
  sub_1CAB21B68(v9, &qword_1EC4635D0);
  sub_1CABC9B80(v3);
  sub_1CAD4C774();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CABCB70C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 56);
  if (v3)
  {
    sub_1CABA6054();

    v4 = sub_1CAD4D444();
    v6 = v5;
    v8 = v7;
    sub_1CAD4D304();
    v9 = sub_1CAD4D424();
    v11 = v10;
    v13 = v12;

    sub_1CABA6128(v4, v6, v8 & 1);

    sub_1CAD4D8B4();
    v3 = sub_1CAD4D3D4();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    sub_1CABA6128(v9, v11, v13 & 1);

    v20 = v17 & 1;
  }

  else
  {
    v15 = 0;
    v20 = 0;
    v19 = 0;
  }

  *a2 = v3;
  a2[1] = v15;
  a2[2] = v20;
  a2[3] = v19;
  return result;
}

uint64_t sub_1CABCB84C(uint64_t a1)
{
  v2 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1CAD4CEE4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CAD4C6E4();
  v7 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  MEMORY[0x1CCAA6200](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CABCBA38(uint64_t a1)
{
  v2 = type metadata accessor for TimeZoneChooser(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  if (qword_1EC462DF8 != -1)
  {
    swift_once();
  }

  v12[0] = qword_1EC47DE28;
  v12[1] = unk_1EC47DE30;

  sub_1CAD4C5B4();
  v8 = sub_1CAD4C5C4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1CABCCB1C(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1CABCCB80(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1CABA6054();
  return sub_1CAD4D9F4();
}

uint64_t sub_1CABCBC30(uint64_t a1)
{
  v16 = sub_1CAD4CC04();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1CAD4C784();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeZoneChooser(0);
  sub_1CAB23A9C(a1 + *(v12 + 28), v7, &qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1CAD4C774();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CABCBEB8(uint64_t a1)
{
  v1[8] = a1;
  sub_1CAD4E2C4();
  v1[9] = sub_1CAD4E2B4();
  v3 = sub_1CAD4E2A4();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CABCBF50, v3, v2);
}

uint64_t sub_1CABCBF50()
{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A20);
  sub_1CAD4DBF4();
  *(v0 + 96) = *(v0 + 56);
  v2 = (v1 + *(type metadata accessor for TimeZoneChooser(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 2);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B08);
  sub_1CAD4D994();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1CABCC060;

  return sub_1CABC8DC0(v5, v6);
}

uint64_t sub_1CABCC060()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1CABCC1C0, v3, v2);
}

uint64_t sub_1CABCC1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CABCC220()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A58);
  sub_1CABCC684();
  return sub_1CAD4C924();
}

uint64_t sub_1CABCC2C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CABCD46C;

  return sub_1CABC8400(a1, v4, v5, v6);
}

uint64_t sub_1CABCC394()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1CABCC3D0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_1CABCC434()
{
  sub_1CABCC5FC(319, &qword_1EC463A38, type metadata accessor for TimeZoneDataModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    sub_1CABCC548();
    if (v1 <= 0x3F)
    {
      sub_1CABCC5AC();
      if (v2 <= 0x3F)
      {
        sub_1CABCC5FC(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CABCC548()
{
  if (!qword_1EC463A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4635D0);
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC463A40);
    }
  }
}

void sub_1CABCC5AC()
{
  if (!qword_1EC463A48)
  {
    v0 = sub_1CAD4D9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC463A48);
    }
  }
}

void sub_1CABCC5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CABCC684()
{
  result = qword_1EC463A60;
  if (!qword_1EC463A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A88);
    sub_1CABCC8F4();
    sub_1CABA6054();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
    sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC463AF8, &qword_1EC463B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463A60);
  }

  return result;
}

unint64_t sub_1CABCC8F4()
{
  result = qword_1EC463A90;
  if (!qword_1EC463A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A88);
    sub_1CABCC978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463A90);
  }

  return result;
}

unint64_t sub_1CABCC978()
{
  result = qword_1EC463A98;
  if (!qword_1EC463A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AA0);
    sub_1CAB23B0C(&qword_1EC463AA8, &qword_1EC463AB0);
    sub_1CABCCA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463A98);
  }

  return result;
}

unint64_t sub_1CABCCA30()
{
  result = qword_1EC463AB8;
  if (!qword_1EC463AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AC0);
    sub_1CAB23B0C(&qword_1EC463AC8, &qword_1EC463AD0);
    sub_1CAB23B0C(&qword_1EC463AD8, &qword_1EC463AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463AB8);
  }

  return result;
}

uint64_t sub_1CABCCB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneChooser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABCCB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneChooser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABCCBE4()
{
  v2 = *(type metadata accessor for TimeZoneChooser(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CABCCCB0;

  return sub_1CABCBEB8(v0 + v3);
}

uint64_t sub_1CABCCCB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for TimeZoneChooser(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A20);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678) + 32);
  v8 = sub_1CAD4C404();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CABCCFD0()
{
  v1 = *(type metadata accessor for TimeZoneChooser(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CABCBC30(v2);
}

uint64_t sub_1CABCD030@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimeZoneChooser(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CABCAEE4(a1, v6, a2);
}

uint64_t sub_1CABCD0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B40);
  sub_1CAB23B0C(&qword_1EC463B50, &qword_1EC463B48);
  sub_1CAB23B0C(&qword_1EC463B38, &qword_1EC463B40);
  sub_1CABCD308();
  return sub_1CAD4DB74();
}

unint64_t sub_1CABCD214()
{
  result = qword_1EC463B30;
  if (!qword_1EC463B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463B28);
    sub_1CAB23B0C(&qword_1EC463B38, &qword_1EC463B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463B30);
  }

  return result;
}

uint64_t sub_1CABCD2C4(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

unint64_t sub_1CABCD308()
{
  result = qword_1EC463B58;
  if (!qword_1EC463B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463B58);
  }

  return result;
}

uint64_t sub_1CABCD35C()
{
  type metadata accessor for TimeZoneChooser(0);

  return sub_1CABCB548();
}

unint64_t sub_1CABCD3F0()
{
  result = qword_1EC463B78;
  if (!qword_1EC463B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463B78);
  }

  return result;
}

double sub_1CABCD4A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v5[1] = v0[2];
  v5[2] = v1;
  v5[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C28);
  MEMORY[0x1CCAA6D30](v5, v3);
  return *v5;
}

double sub_1CABCD4F8()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  return *(v0 + 480);
}

double sub_1CABCD598@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  result = *(v3 + 480);
  *a2 = result;
  return result;
}

void sub_1CABCD668(double a1)
{
  if (*(v1 + 480) == a1)
  {
    *(v1 + 480) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CABCD788()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v2 = floor(*(v0 + 480) / 86400.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CABCD884(uint64_t a1)
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v4 = *(v1 + 480);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = 86400 * a1;
  if ((a1 * 86400) >> 64 != (86400 * a1) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4 % 86400;
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v4 == v8)
  {
    *(v1 + 480) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CABCDA6C()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v2 = *(v0 + 480);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2 % 86400 / 3600;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CABCDB9C(uint64_t a1)
{
  if (a1 >= 23)
  {
    v2 = 23;
  }

  else
  {
    v2 = a1;
  }

  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v4 = floor(*(v1 + 480) / 86400.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = 86400 * v4;
  if ((v4 * 86400) >> 64 != v5 >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  swift_getKeyPath();
  sub_1CAD4C424();

  v6 = *(v1 + 480);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v6, v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = 3600 * v2;
  if ((v2 * 3600) >> 64 != (3600 * v2) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = __OFADD__(v7, v5);
  v9 = v7 + v5;
  if (v8)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = (v6 - v5) % 3600;
  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (v6 == v11)
  {
    *(v1 + 480) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CABCDE4C()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v2 = *(v0 + 480);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return ((((34953 * (v2 % 3600)) >> 16) >> 5) + (((v2 % 3600 + ((-30583 * (v2 % 3600)) >> 16)) & 0x8000) >> 15));
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CABCDF7C(uint64_t a1)
{
  if (a1 >= 59)
  {
    v2 = 59;
  }

  else
  {
    v2 = a1;
  }

  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v4 = *(v1 + 480);
  v5 = floor(v4 / 3600.0);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = 60 * v2;
  if ((v2 * 60) >> 64 != (60 * v2) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 3600 * v5;
  if ((v5 * 3600) >> 64 != v7 >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (v4 == v9)
  {
    *(v1 + 480) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CABCE170()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  return *(v0 + 488);
}

uint64_t sub_1CABCE210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + 488);
  return result;
}

uint64_t sub_1CABCE2E0(uint64_t result)
{
  if (*(v1 + 488) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CABCE3EC()
{
  v0[2] = sub_1CAD4E2C4();
  v0[3] = sub_1CAD4E2B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CABCE498;

  return sub_1CABD21D4();
}

uint64_t sub_1CABCE498()
{

  v1 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABCE5D4, v1, v0);
}

uint64_t sub_1CABCE5D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CABCE634@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v19[0] = v1;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v3 = v1[38];
  v4 = v1[40];
  v26 = v1[39];
  v27 = v4;
  v5 = v1[40];
  v28 = v1[41];
  v6 = v1[34];
  v7 = v1[36];
  v22 = v1[35];
  v8 = v22;
  v23 = v7;
  v9 = v1[36];
  v10 = v1[38];
  v24 = v1[37];
  v11 = v24;
  v25 = v10;
  v12 = v1[32];
  v19[0] = v1[31];
  v19[1] = v12;
  v13 = v1[34];
  v15 = v1[31];
  v14 = v1[32];
  v20 = v1[33];
  v16 = v20;
  v21 = v13;
  a1[8] = v26;
  a1[9] = v5;
  a1[10] = v1[41];
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v3;
  *a1 = v15;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v6;
  return sub_1CAB23A9C(v19, &v18, &qword_1EC463C00);
}

uint64_t sub_1CABCE758@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v4 = v3[38];
  v5 = v3[40];
  v27 = v3[39];
  v28 = v5;
  v6 = v3[40];
  v29 = v3[41];
  v7 = v3[34];
  v8 = v3[36];
  v23 = v3[35];
  v9 = v23;
  v24 = v8;
  v10 = v3[36];
  v11 = v3[38];
  v25 = v3[37];
  v12 = v25;
  v26 = v11;
  v13 = v3[32];
  v20[0] = v3[31];
  v20[1] = v13;
  v14 = v3[34];
  v16 = v3[31];
  v15 = v3[32];
  v21 = v3[33];
  v17 = v21;
  v22 = v14;
  a2[8] = v27;
  a2[9] = v6;
  a2[10] = v3[41];
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v4;
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CABCE87C(__int128 *a1)
{
  v2 = a1[9];
  v9[8] = a1[8];
  v9[9] = v2;
  v9[10] = a1[10];
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  sub_1CAB23A9C(v9, &v8, &qword_1EC463C00);
  return sub_1CABCE904(a1);
}

uint64_t sub_1CABCE904(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39[-v4];
  v6 = a1[9];
  v49 = a1[8];
  v50 = v6;
  v7 = a1[5];
  v45 = a1[4];
  v46 = v7;
  v8 = a1[7];
  v47 = a1[6];
  v48 = v8;
  v9 = a1[1];
  v41 = *a1;
  v42 = v9;
  v10 = a1[3];
  v43 = a1[2];
  v44 = v10;
  v11 = v1[39];
  v12 = v1[40];
  v13 = v1[37];
  v52[7] = v1[38];
  v52[8] = v11;
  v14 = v1[41];
  v52[9] = v12;
  v52[10] = v14;
  v15 = v1[35];
  v16 = v1[36];
  v17 = v1[33];
  v52[3] = v1[34];
  v52[4] = v15;
  v18 = a1[10];
  v52[5] = v16;
  v52[6] = v13;
  v19 = v1[31];
  v20 = v1[32];
  v51 = v18;
  v52[0] = v19;
  v52[1] = v20;
  v52[2] = v17;
  sub_1CAB23A9C(v52, v40, &qword_1EC463C00);
  v21 = sub_1CABD431C(v52, &v41);
  sub_1CAB21B68(v52, &qword_1EC463C00);
  if (v21)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v39[-16] = v1;
    *&v39[-8] = &v41;
    *&v40[0] = v1;
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
    sub_1CAB21B68(&v41, &qword_1EC463C00);
  }

  else
  {
    v24 = v1[40];
    v40[8] = v1[39];
    v40[9] = v24;
    v40[10] = v1[41];
    v25 = v1[36];
    v40[4] = v1[35];
    v40[5] = v25;
    v26 = v1[38];
    v40[6] = v1[37];
    v40[7] = v26;
    v27 = v1[32];
    v40[0] = v1[31];
    v40[1] = v27;
    v28 = v1[34];
    v40[2] = v1[33];
    v40[3] = v28;
    v29 = v50;
    v1[39] = v49;
    v1[40] = v29;
    v1[41] = v51;
    v30 = v46;
    v1[35] = v45;
    v1[36] = v30;
    v31 = v48;
    v1[37] = v47;
    v1[38] = v31;
    v32 = v42;
    v1[31] = v41;
    v1[32] = v32;
    v33 = v44;
    v1[33] = v43;
    v1[34] = v33;
    sub_1CAB21B68(v40, &qword_1EC463C00);
    v34 = sub_1CAD4E304();
    (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
    sub_1CAD4E2C4();

    v35 = v1;
    v36 = sub_1CAD4E2B4();
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v35;
    sub_1CACA6D34(0, 0, v5, &unk_1CAD5A838, v37);
  }
}

uint64_t sub_1CABCEC50(_OWORD *a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = a1[40];
  v23[8] = a1[39];
  v23[9] = v7;
  v23[10] = a1[41];
  v8 = a1[36];
  v23[4] = a1[35];
  v23[5] = v8;
  v9 = a1[38];
  v23[6] = a1[37];
  v23[7] = v9;
  v10 = a1[32];
  v23[0] = a1[31];
  v23[1] = v10;
  v11 = a1[34];
  v23[2] = a1[33];
  v23[3] = v11;
  v12 = a2[9];
  a1[39] = a2[8];
  a1[40] = v12;
  a1[41] = a2[10];
  v13 = a2[5];
  a1[35] = a2[4];
  a1[36] = v13;
  v14 = a2[7];
  a1[37] = a2[6];
  a1[38] = v14;
  v15 = a2[1];
  a1[31] = *a2;
  a1[32] = v15;
  v16 = a2[3];
  a1[33] = a2[2];
  a1[34] = v16;
  sub_1CAB23A9C(a2, v22, &qword_1EC463C00);
  sub_1CAB21B68(v23, &qword_1EC463C00);
  v17 = sub_1CAD4E304();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_1CAD4E2C4();

  v18 = sub_1CAD4E2B4();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a1;
  sub_1CACA6D34(0, 0, v6, &unk_1CAD5A840, v19);
}

uint64_t sub_1CABCEE2C()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  return *(v0 + 672);
}

uint64_t sub_1CABCEECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + 672);
  return result;
}

uint64_t sub_1CABCEF9C(uint64_t result)
{
  if (*(v1 + 672) == (result & 1))
  {
    *(v1 + 672) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CABCF0AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  swift_beginAccess();
  v4 = sub_1CAD4C0F4();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1CABCF1A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  swift_beginAccess();
  v5 = sub_1CAD4C0F4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CABCF29C(uint64_t a1)
{
  v2 = sub_1CAD4C0F4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1CABCF368(v4);
}

uint64_t sub_1CABCF368(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1CABD42B8(&unk_1EC465A80, MEMORY[0x1E6969530]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1CAD4DED4();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1CABCF608(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  swift_beginAccess();
  v5 = sub_1CAD4C0F4();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1CABCF6A4(uint64_t a1)
{
  v3 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__startLocationFromChooser;
  swift_beginAccess();
  sub_1CABD4254(a1, v1 + v6);
  swift_endAccess();
  swift_getKeyPath();
  *&v32 = v1;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  sub_1CABD4178(v1 + v6, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CABD41DC(a1);
    v7 = v5;
  }

  else
  {
    v8 = v5[7];
    v9 = v5[9];
    v29 = v5[8];
    v30 = v9;
    v10 = v5[9];
    v31 = v5[10];
    v11 = v5[3];
    v12 = v5[5];
    v25 = v5[4];
    v26 = v12;
    v13 = v5[5];
    v14 = v5[7];
    v27 = v5[6];
    v28 = v14;
    v15 = v5[1];
    v22[0] = *v5;
    v22[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v23 = v5[2];
    v24 = v16;
    v40 = v29;
    v41 = v10;
    v42 = v5[10];
    v36 = v25;
    v37 = v13;
    v38 = v27;
    v39 = v8;
    v32 = v18;
    v33 = v17;
    v34 = v23;
    v35 = v11;
    nullsub_1(&v32);
    v21[8] = v40;
    v21[9] = v41;
    v21[10] = v42;
    v21[4] = v36;
    v21[5] = v37;
    v21[6] = v38;
    v21[7] = v39;
    v21[0] = v32;
    v21[1] = v33;
    v21[2] = v34;
    v21[3] = v35;
    sub_1CABD3C1C(v22, v20);
    sub_1CABCE904(v21);
    sub_1CABD3C78(v22);
    v7 = a1;
  }

  return sub_1CABD41DC(v7);
}

uint64_t sub_1CABCF8C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__startLocationFromChooser;
  swift_beginAccess();
  return sub_1CABD4178(v5 + v3, a1);
}

uint64_t sub_1CABCF990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__startLocationFromChooser;
  swift_beginAccess();
  return sub_1CABD4178(v3 + v4, a2);
}

uint64_t sub_1CABCFA58(uint64_t a1)
{
  v2 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CABD4178(a1, v4);
  return sub_1CABCFAE4(v4);
}

uint64_t sub_1CABCFAE4(uint64_t a1)
{
  v3 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__startLocationFromChooser;
  swift_beginAccess();
  sub_1CABD4178(v1 + v6, v5);
  LOBYTE(v6) = sub_1CAD1B078(v5, a1);
  sub_1CABD41DC(v5);
  if (v6)
  {
    sub_1CABD4178(a1, v5);
    sub_1CABCF6A4(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }

  return sub_1CABD41DC(a1);
}

uint64_t sub_1CABCFC84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CABD4178(a2, v5);
  return sub_1CABCF6A4(v5);
}

uint64_t sub_1CABCFD18()
{
  v0[2] = sub_1CAD4E2C4();
  v0[3] = sub_1CAD4E2B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CABCFDC4;

  return sub_1CABD012C();
}

uint64_t sub_1CABCFDC4()
{

  v1 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD4D10, v1, v0);
}

uint64_t sub_1CABCFF00()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();
}

uint64_t sub_1CABCFFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__travelTimeEstimatedValues);
}

uint64_t sub_1CABD0060()
{
  swift_getKeyPath();
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C414();
}

uint64_t sub_1CABD012C()
{
  v1[28] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  v1[29] = swift_task_alloc();
  v2 = sub_1CAD4C0F4();
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = *(v3 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = sub_1CAD4E2C4();
  v1[36] = sub_1CAD4E2B4();
  v5 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD0270, v5, v4);
}

uint64_t sub_1CABD0270()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);

  swift_getKeyPath();
  *(v0 + 216) = v4;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  swift_beginAccess();
  v33 = *(v3 + 16);
  v33(v1, &v4[v5], v2);
  v7 = *(v4 + 17);
  v6 = *(v4 + 18);
  *(v0 + 16) = *(v4 + 16);
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v8 = *(v4 + 21);
  v9 = *(v4 + 22);
  v10 = *(v4 + 20);
  *(v0 + 64) = *(v4 + 19);
  *(v0 + 112) = v9;
  *(v0 + 96) = v8;
  *(v0 + 80) = v10;
  v11 = *(v4 + 25);
  v12 = *(v4 + 26);
  v13 = *(v4 + 24);
  *(v0 + 128) = *(v4 + 23);
  *(v0 + 176) = v12;
  *(v0 + 160) = v11;
  *(v0 + 144) = v13;
  v14 = 0;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 16) == 1 || (v15 = *(v0 + 32)) == 0)
  {
    v32 = 1;
    v18 = 0;
  }

  else
  {
    [v15 coordinate];
    v14 = v16;
    v18 = v17;
    v32 = 0;
  }

  v19 = *(v0 + 272);
  v20 = *(v0 + 264);
  v21 = *(v0 + 240);
  v22 = *(v0 + 248);
  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  sub_1CAD4E2D4();
  v25 = sub_1CAD4E304();
  (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
  v33(v20, v19, v21);

  v26 = sub_1CAD4E2B4();
  v27 = (*(v22 + 80) + 57) & ~*(v22 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  *(v28 + 16) = v26;
  *(v28 + 24) = v29;
  *(v28 + 32) = v24;
  *(v28 + 40) = v14;
  *(v28 + 48) = v18;
  *(v28 + 56) = v32;
  (*(v22 + 32))(v28 + v27, v20, v21);
  sub_1CACA6D34(0, 0, v23, &unk_1CAD5A7D0, v28);

  (*(v22 + 8))(v19, v21);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1CABD0580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 1088) = a8;
  *(v8 + 1337) = a7;
  *(v8 + 1080) = a6;
  *(v8 + 1072) = a5;
  *(v8 + 1064) = a4;
  v9 = sub_1CAD4BC94();
  *(v8 + 1096) = v9;
  *(v8 + 1104) = *(v9 - 8);
  *(v8 + 1112) = swift_task_alloc();
  v10 = sub_1CAD4C354();
  *(v8 + 1120) = v10;
  *(v8 + 1128) = *(v10 - 8);
  *(v8 + 1136) = swift_task_alloc();
  v11 = sub_1CAD4C374();
  *(v8 + 1144) = v11;
  *(v8 + 1152) = *(v11 - 8);
  *(v8 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  v12 = sub_1CAD4C0F4();
  *(v8 + 1184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1192) = v13;
  *(v8 + 1200) = *(v13 + 64);
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  *(v8 + 1224) = swift_task_alloc();
  *(v8 + 1232) = swift_task_alloc();
  *(v8 + 1240) = sub_1CAD4E2C4();
  *(v8 + 1248) = sub_1CAD4E2B4();
  v15 = sub_1CAD4E2A4();
  *(v8 + 1256) = v15;
  *(v8 + 1264) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1CABD0810, v15, v14);
}

uint64_t sub_1CABD0810()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v52 = *(v0 + 1160);
  v54 = *(v0 + 1176);
  v56 = *(v0 + 1144);
  v57 = *(v0 + 1152);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1120);
  v55 = v6;
  v7 = *(v0 + 1064);
  sub_1CAD4C324();
  v50 = *(v5 + 104);
  v50(v4, *MEMORY[0x1E6969A58], v6);
  swift_getKeyPath();
  *(v0 + 1048) = v7;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C424();

  v8 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  swift_beginAccess();
  v9 = v2[2];
  *(v0 + 1272) = v9;
  *(v0 + 1280) = (v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v48 = v7;
  v49 = v8;
  v51 = v9;
  v9(v1, v7 + v8, v3);
  sub_1CAD4C2C4();
  v10 = v2[1];
  *(v0 + 1288) = v10;
  *(v0 + 1296) = (v2 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  v11 = *(v5 + 8);
  v11(v4, v55);
  v12 = *(v57 + 8);
  v12(v52, v56);
  v13 = v2[6];
  if (v13(v54, 1, v3) == 1)
  {
    v14 = *(v0 + 1176);
    goto LABEL_5;
  }

  v15 = *(v0 + 1184);
  v45 = *(v0 + 1224);
  v46 = *(v0 + 1168);
  v44 = *(v0 + 1160);
  v53 = *(v0 + 1144);
  v16 = *(v0 + 1136);
  v17 = *(v0 + 1120);
  v47 = v10;
  v18 = *(v0 + 1064);
  v43 = *(*(v0 + 1192) + 32);
  v43(*(v0 + 1232), *(v0 + 1176), v15);
  sub_1CAD4C324();
  v50(v16, *MEMORY[0x1E6969A88], v17);
  swift_getKeyPath();
  *(v0 + 1056) = v18;
  sub_1CAD4C424();

  v51(v45, v48 + v49, v15);
  sub_1CAD4C2C4();
  v47(v45, v15);
  v11(v16, v17);
  v12(v44, v53);
  v19 = v13(v46, 1, v15);
  v20 = *(v0 + 1232);
  if (v19 == 1)
  {
    v21 = *(v0 + 1168);
    v47(*(v0 + 1232), *(v0 + 1184));
    v14 = v21;
LABEL_5:
    sub_1CAB21B68(v14, &unk_1EC465A70);
    if (*(v0 + 1337))
    {
LABEL_6:

      v22 = *(v0 + 8);

      return v22();
    }

    goto LABEL_11;
  }

  v24 = *(v0 + 1224);
  v25 = *(v0 + 1216);
  v26 = *(v0 + 1208);
  v27 = *(v0 + 1184);
  v28 = *(v0 + 1112);
  v29 = *(v0 + 1064);
  v43(v25, *(v0 + 1168), v27);
  v51(v24, v20, v27);
  v51(v26, v25, v27);
  sub_1CAD4BC54();
  v31 = v29[57];
  v30 = v29[58];
  __swift_project_boxed_opaque_existential_1(v29 + 54, v31);
  (*(v30 + 8))(v28, v31, v30);
  v32 = *(v0 + 464);
  *(v0 + 272) = *(v0 + 448);
  *(v0 + 288) = v32;
  *(v0 + 304) = *(v0 + 480);
  v33 = *(v0 + 400);
  *(v0 + 208) = *(v0 + 384);
  *(v0 + 224) = v33;
  v34 = *(v0 + 432);
  *(v0 + 240) = *(v0 + 416);
  *(v0 + 256) = v34;
  v35 = *(v0 + 336);
  *(v0 + 144) = *(v0 + 320);
  *(v0 + 160) = v35;
  v36 = *(v0 + 368);
  *(v0 + 176) = *(v0 + 352);
  *(v0 + 192) = v36;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 144) == 1)
  {
    v37 = *(v0 + 1232);
    v38 = *(v0 + 1216);
    v39 = *(v0 + 1184);
    (*(*(v0 + 1104) + 8))(*(v0 + 1112), *(v0 + 1096));
    v47(v38, v39);
    v47(v37, v39);
    if (*(v0 + 1337))
    {
      goto LABEL_6;
    }

LABEL_11:
    v40 = objc_opt_self();
    *(v0 + 1312) = v40;
    v41 = *MEMORY[0x1E69930E8];
    *(v0 + 1320) = *MEMORY[0x1E69930E8];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1328;
    *(v0 + 24) = sub_1CABD120C;
    v42 = swift_continuation_init();
    *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C08);
    *(v0 + 880) = v42;
    *(v0 + 848) = MEMORY[0x1E69E9820];
    *(v0 + 856) = 1107296256;
    *(v0 + 864) = sub_1CABD17D8;
    *(v0 + 872) = &block_descriptor_91;
    [v40 authorizationStatusForBundleIdentifier:v41 completion:v0 + 848];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  return MEMORY[0x1EEE6DFA0](sub_1CABD0F58, 0, 0);
}

uint64_t sub_1CABD0F58()
{
  *(v0 + 1304) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD0FE4, v2, v1);
}

uint64_t sub_1CABD0FE4()
{
  v28 = v0;

  v1 = *(v0 + 432);
  v2 = *(v0 + 464);
  v25 = *(v0 + 448);
  v26 = v2;
  v3 = *(v0 + 464);
  v27 = *(v0 + 480);
  v4 = *(v0 + 368);
  v5 = *(v0 + 400);
  v21 = *(v0 + 384);
  v6 = v21;
  v22 = v5;
  v7 = *(v0 + 400);
  v8 = *(v0 + 432);
  v23 = *(v0 + 416);
  v9 = v23;
  v24 = v8;
  v10 = *(v0 + 336);
  v18[0] = *(v0 + 320);
  v18[1] = v10;
  v11 = *(v0 + 368);
  v13 = *(v0 + 320);
  v12 = *(v0 + 336);
  v19 = *(v0 + 352);
  v14 = v19;
  v20 = v11;
  *(v0 + 624) = v25;
  *(v0 + 640) = v3;
  *(v0 + 656) = *(v0 + 480);
  *(v0 + 560) = v6;
  *(v0 + 576) = v7;
  *(v0 + 592) = v9;
  *(v0 + 608) = v1;
  *(v0 + 496) = v13;
  *(v0 + 512) = v12;
  *(v0 + 528) = v14;
  *(v0 + 544) = v4;
  sub_1CABD3C1C(v0 + 496, v0 + 672);
  sub_1CABCE904(v18);
  v15 = *(v0 + 1264);
  v16 = *(v0 + 1256);

  return MEMORY[0x1EEE6DFA0](sub_1CABD10C4, v16, v15);
}

uint64_t sub_1CABD10C4()
{
  v1 = v0[161];
  v2 = v0[154];
  v3 = v0[152];
  v4 = v0[148];
  v5 = v0[139];
  v6 = v0[138];
  v7 = v0[137];

  sub_1CAB21B68((v0 + 40), &qword_1EC463C00);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  v1(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CABD120C()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 1256);

  return MEMORY[0x1EEE6DFA0](sub_1CABD1314, v2, v1);
}

uint64_t sub_1CABD1314()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  *(v0 + 1332) = *(v0 + 1328);

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 1336;
  *(v0 + 88) = sub_1CABD1454;
  v3 = swift_continuation_init();
  *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C10);
  *(v0 + 944) = v3;
  *(v0 + 912) = MEMORY[0x1E69E9820];
  *(v0 + 920) = 1107296256;
  *(v0 + 928) = sub_1CABD1834;
  *(v0 + 936) = &block_descriptor_94;
  [v2 preciseLocationAuthorizedForBundleIdentifier:v1 completion:v0 + 912];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1CABD1454()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 1256);

  return MEMORY[0x1EEE6DFA0](sub_1CABD155C, v2, v1);
}

uint64_t sub_1CABD155C()
{
  v1 = *(v0 + 1332);
  v2 = *(v0 + 1320);

  v3 = *(v0 + 1336);

  if (v3 == 1 && (v1 - 3) <= 1)
  {
    v5 = *(v0 + 1272);
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1200);
    v8 = *(v0 + 1192);
    v9 = *(v0 + 1184);
    v10 = *(v0 + 1088);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1080);
    v21 = *(v0 + 1064);
    v11 = [objc_allocWithZone(MEMORY[0x1E6999090]) init];
    v5(v6, v10, v9);
    v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v8 + 32))(v13 + v12, v6, v9);
    v14 = v13 + ((v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = 0;
    *(v13 + ((v12 + v7 + 31) & 0xFFFFFFFFFFFFFFF8)) = v21;
    *(v0 + 1008) = sub_1CABD3F84;
    *(v0 + 1016) = v13;
    *(v0 + 976) = MEMORY[0x1E69E9820];
    *(v0 + 984) = 1107296256;
    *(v0 + 992) = sub_1CABD215C;
    *(v0 + 1000) = &block_descriptor_100;
    v15 = _Block_copy((v0 + 976));
    v16 = v11;

    [v16 fetchRoutineStateWithHandler_];
    _Block_release(v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1CABD17D8(uint64_t a1, int a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_1CABD1834(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void sub_1CABD1890(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a1 == 2)
  {
    v18[14] = v8;
    v18[15] = v9;
    v15 = sub_1CAD4C084();
    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a6;
    *(v16 + 32) = a7 & 1;
    *(v16 + 40) = a8;
    v18[4] = sub_1CABD4048;
    v18[5] = v16;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1CABD20B8;
    v18[3] = &block_descriptor_106;
    v17 = _Block_copy(v18);

    [a3 fetchPredictedLocationsOfInterestOnDate:v15 withHandler:v17];
    _Block_release(v17);
  }
}

void sub_1CABD19B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  if (!a1)
  {
    return;
  }

  if (a1 >> 62)
  {
    if (!sub_1CAD4E604())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1CCAA7940](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v14 = *(a1 + 32);
  }

  v39 = v14;
  [v14 confidence];
  if (v15 <= 0.5)
  {
    v31 = v39;
    goto LABEL_14;
  }

  v16 = [v39 locationOfInterest];
  if (a5)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&a3 longitude:*&a4];
  v19 = [v17 location];
  [v19 latitude];
  v21 = v20;

  v22 = [v17 location];
  [v22 longitude];
  v24 = v23;

  v38 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v21 longitude:v24];
  [v38 distanceFromLocation_];
  if (v25 > 10.0)
  {
    v26 = [v17 mapItem];
    v27 = [v26 name];

    if (v27)
    {
      v28 = sub_1CAD4DF94();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v37 = v38;
    sub_1CABB8C08(0, 0xF000000000000000);
    v41[0] = 0;
    v41[1] = 0;
    v41[2] = 1;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    sub_1CAB21B68(v41, &qword_1EC463C20);
    *&v46 = v28;
    *(&v46 + 1) = v30;
    *(v47 + 8) = 0u;
    *(&v47[1] + 8) = 0u;
    *(&v47[2] + 8) = 0u;
    *&v47[0] = v38;
    *(&v47[3] + 1) = 0xF000000000000000;
    LOBYTE(v48) = 0;
    *(&v48 + 1) = 0;
    *&v49 = 0;
    *(&v49 + 1) = 1;
    v32 = sub_1CAD4E304();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    sub_1CAD4E2C4();

    sub_1CABD3C1C(&v46, &v40);
    v33 = sub_1CAD4E2B4();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = a6;
    *(v34 + 152) = v50;
    *(v34 + 168) = v51;
    *(v34 + 184) = v52;
    *(v34 + 200) = v53;
    *(v34 + 88) = v47[2];
    *(v34 + 104) = v47[3];
    *(v34 + 120) = v48;
    *(v34 + 136) = v49;
    *(v34 + 40) = v46;
    *(v34 + 56) = v47[0];
    *(v34 + 72) = v47[1];
    sub_1CACA6D34(0, 0, v13, &unk_1CAD5A800, v34);

    sub_1CABD3C78(&v46);

    return;
  }

  v31 = v38;
LABEL_14:
}

uint64_t sub_1CABD1E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 368) = a4;
  *(v5 + 376) = a5;
  v6 = a5[9];
  *(v5 + 144) = a5[8];
  *(v5 + 160) = v6;
  *(v5 + 176) = a5[10];
  v7 = a5[5];
  *(v5 + 80) = a5[4];
  *(v5 + 96) = v7;
  v8 = a5[7];
  *(v5 + 112) = a5[6];
  *(v5 + 128) = v8;
  v9 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v9;
  v10 = a5[3];
  *(v5 + 48) = a5[2];
  *(v5 + 64) = v10;
  *(v5 + 384) = sub_1CAD4E2C4();
  *(v5 + 392) = sub_1CAD4E2B4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD1EE4, 0, 0);
}

uint64_t sub_1CABD1EE4()
{
  *(v0 + 400) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD1F70, v2, v1);
}

uint64_t sub_1CABD1F70()
{
  v11 = v0;
  v1 = *(v0 + 376);

  nullsub_1(v0 + 16);
  v2 = *(v0 + 160);
  v10[8] = *(v0 + 144);
  v10[9] = v2;
  v10[10] = *(v0 + 176);
  v3 = *(v0 + 96);
  v10[4] = *(v0 + 80);
  v10[5] = v3;
  v4 = *(v0 + 128);
  v10[6] = *(v0 + 112);
  v10[7] = v4;
  v5 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v5;
  v6 = *(v0 + 64);
  v10[2] = *(v0 + 48);
  v10[3] = v6;
  sub_1CABD3C1C(v1, v0 + 192);
  sub_1CABCE904(v10);
  v8 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD2058, v8, v7);
}

uint64_t sub_1CABD2058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CABD20B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1CABD4070(0, &qword_1EC463C18);
    v4 = sub_1CAD4E214();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1CABD215C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1CABD21D4()
{
  v1[265] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  v1[266] = swift_task_alloc();
  v2 = sub_1CAD4C0F4();
  v1[267] = v2;
  v1[268] = *(v2 - 8);
  v1[269] = swift_task_alloc();
  v1[270] = sub_1CAD4E2C4();
  v1[271] = sub_1CAD4E2B4();
  v3 = sub_1CAD4E2A4();
  v1[272] = v3;
  v1[273] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CABD233C, v3, v4);
}

uint64_t sub_1CABD233C()
{
  v1 = *(v0 + 2120);
  if (*(v1 + 672) == 1)
  {
    *(v1 + 672) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    *(v0 + 2056) = v1;
    sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
    sub_1CAD4C414();
  }

  v89 = v0 + 2080;
  v3 = *(v0 + 2120);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v0 + 2192) = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel___observationRegistrar;
  *(v0 + 2104) = v3;
  *(v0 + 2200) = sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
  sub_1CAD4C414();
  *(v0 + 2208) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463BE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CAD5A590;
  *(v5 + 32) = xmmword_1CAD58380;
  *(v5 + 48) = 4;
  if ([objc_opt_self() transitTTLSupportedInCurrentCountry])
  {
    v6 = 4;
    v5 = sub_1CAD34728(1, 4, 1, v5);
    *(v5 + 16) = 4;
    *(v5 + 56) = 3;
  }

  else
  {
    v6 = 3;
  }

  v92 = (v0 + 1136);
  v94 = (v0 + 960);
  v90 = (v0 + 1488);
  v91 = (v0 + 1312);
  v7 = objc_opt_self();
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 32;
  v10 = v5;
  do
  {
    v12 = [v7 routeTypeStringForCalLocationRoutingMode_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1CAD4DF94();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1CAD3461C(0, *(v8 + 2) + 1, 1, v8);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_1CAD3461C((v17 > 1), v18 + 1, 1, v8);
      }

      *(v8 + 2) = v18 + 1;
      v11 = &v8[16 * v18];
      *(v11 + 4) = v14;
      *(v11 + 5) = v16;
      v5 = v10;
    }

    v9 += 8;
    --v6;
  }

  while (v6);
  *(v0 + 2224) = v8;
  *(v0 + 2216) = v5;
  v19 = *(v0 + 2120);
  swift_getKeyPath();
  *(v0 + 2096) = v19;
  sub_1CAD4C424();

  v20 = v19[31];
  v21 = v19[33];
  *(v0 + 272) = v19[32];
  *(v0 + 288) = v21;
  *(v0 + 256) = v20;
  v22 = v19[34];
  v23 = v19[35];
  v24 = v19[37];
  *(v0 + 336) = v19[36];
  *(v0 + 352) = v24;
  *(v0 + 304) = v22;
  *(v0 + 320) = v23;
  v25 = v19[38];
  v26 = v19[39];
  v27 = v19[41];
  *(v0 + 400) = v19[40];
  *(v0 + 416) = v27;
  *(v0 + 368) = v25;
  *(v0 + 384) = v26;
  v28 = v19[31];
  v29 = v19[33];
  *(v0 + 96) = v19[32];
  *(v0 + 112) = v29;
  *(v0 + 80) = v28;
  v30 = v19[34];
  v31 = v19[35];
  v32 = v19[37];
  *(v0 + 160) = v19[36];
  *(v0 + 176) = v32;
  *(v0 + 128) = v30;
  *(v0 + 144) = v31;
  v33 = v19[38];
  v34 = v19[39];
  v35 = v19[41];
  *(v0 + 224) = v19[40];
  *(v0 + 240) = v35;
  *(v0 + 192) = v33;
  *(v0 + 208) = v34;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 80) == 1 || (v36 = *(v0 + 368), v38 = *(v0 + 384), v37 = *(v0 + 400), *(v0 + 736) = v38, *(v0 + 752) = v37, v39 = *(v0 + 400), *(v0 + 768) = *(v0 + 416), v40 = *(v0 + 304), v42 = *(v0 + 320), v41 = *(v0 + 336), *(v0 + 672) = v42, *(v0 + 688) = v41, v43 = *(v0 + 336), v45 = *(v0 + 352), v44 = *(v0 + 368), *(v0 + 704) = v45, *(v0 + 720) = v44, v46 = *(v0 + 272), *(v0 + 608) = *(v0 + 256), *(v0 + 624) = v46, v47 = *(v0 + 304), v49 = *(v0 + 256), v48 = *(v0 + 272), v50 = *(v0 + 288), *(v0 + 640) = v50, *(v0 + 656) = v47, v112 = v38, v114 = v39, v116 = *(v0 + 416), v104 = v42, v106 = v43, v108 = v45, v110 = v36, v96 = v49, v98 = v48, v100 = v50, v102 = v40, sub_1CABD3C1C(v0 + 608, v0 + 784), v51 = sub_1CAD0F1FC(), *(v0 + 560) = v112, *(v0 + 576) = v114, *(v0 + 592) = v116, *(v0 + 496) = v104, *(v0 + 512) = v106, *(v0 + 528) = v108, *(v0 + 544) = v110, *(v0 + 432) = v96, *(v0 + 448) = v98, *(v0 + 464) = v100, *(v0 + 480) = v102, sub_1CABD3C78(v0 + 432), v52 = [v51 calLocation], *(v0 + 2232) = v52, v51, !v52))
  {
  }

  else
  {
    v53 = *(v0 + 2120);
    v55 = v53[17];
    v54 = v53[18];
    *v92 = v53[16];
    *(v0 + 1152) = v55;
    *(v0 + 1168) = v54;
    v56 = v53[22];
    v58 = v53[19];
    v57 = v53[20];
    *(v0 + 1216) = v53[21];
    *(v0 + 1232) = v56;
    *(v0 + 1184) = v58;
    *(v0 + 1200) = v57;
    v59 = v53[26];
    v61 = v53[23];
    v60 = v53[24];
    *(v0 + 1280) = v53[25];
    *(v0 + 1296) = v59;
    *(v0 + 1248) = v61;
    *(v0 + 1264) = v60;
    v62 = v53[23];
    v63 = v53[24];
    v64 = v53[26];
    *(v0 + 1104) = v53[25];
    *(v0 + 1120) = v64;
    *(v0 + 1072) = v62;
    *(v0 + 1088) = v63;
    v65 = v53[19];
    v66 = v53[20];
    v67 = v53[22];
    *(v0 + 1040) = v53[21];
    *(v0 + 1056) = v67;
    *(v0 + 1008) = v65;
    *(v0 + 1024) = v66;
    v68 = v53[16];
    v69 = v53[18];
    *(v0 + 976) = v53[17];
    *(v0 + 992) = v69;
    *v94 = v68;
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v94) != 1)
    {
      v70 = *(v0 + 1280);
      *(v0 + 1616) = *(v0 + 1264);
      *(v0 + 1632) = v70;
      *(v0 + 1648) = *(v0 + 1296);
      v71 = *(v0 + 1216);
      *(v0 + 1552) = *(v0 + 1200);
      *(v0 + 1568) = v71;
      v72 = *(v0 + 1248);
      *(v0 + 1584) = *(v0 + 1232);
      *(v0 + 1600) = v72;
      v73 = *(v0 + 1152);
      *v90 = *v92;
      *(v0 + 1504) = v73;
      v74 = *(v0 + 1184);
      *(v0 + 1520) = *(v0 + 1168);
      *(v0 + 1536) = v74;
      v113 = *(v0 + 1088);
      v115 = *(v0 + 1104);
      v117 = *(v0 + 1120);
      v105 = *(v0 + 1024);
      v107 = *(v0 + 1040);
      v109 = *(v0 + 1056);
      v111 = *(v0 + 1072);
      v97 = *v94;
      v99 = *(v0 + 976);
      v101 = *(v0 + 992);
      v103 = *(v0 + 1008);
      sub_1CABD3C1C(v90, v0 + 1664);
      v75 = sub_1CAD0F1FC();
      *(v0 + 1440) = v113;
      *(v0 + 1456) = v115;
      *(v0 + 1472) = v117;
      *(v0 + 1376) = v105;
      *(v0 + 1392) = v107;
      *(v0 + 1408) = v109;
      *(v0 + 1424) = v111;
      *v91 = v97;
      *(v0 + 1328) = v99;
      *(v0 + 1344) = v101;
      *(v0 + 1360) = v103;
      sub_1CABD3C78(v91);
      v76 = [v75 calLocation];
      *(v0 + 2240) = v76;

      if (v76)
      {
        v77 = [objc_opt_self() defaultManager];
        *(v0 + 2248) = v77;
        v95 = v77;
        if (v77)
        {
          v78 = *(v0 + 2152);
          v79 = *(v0 + 2144);
          v80 = *(v0 + 2136);
          v81 = *(v0 + 2120);
          swift_getKeyPath();
          *(v0 + 2072) = v81;
          v93 = v52;
          v82 = v76;
          sub_1CAD4C424();

          v83 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
          swift_beginAccess();
          (*(v79 + 16))(v78, v81 + v83, v80);
          v84 = sub_1CAD4C084();
          *(v0 + 2256) = v84;
          (*(v79 + 8))(v78, v80);
          v85 = sub_1CAD4E1F4();
          *(v0 + 2264) = v85;
          *(v0 + 16) = v0;
          *(v0 + 56) = v89;
          *(v0 + 24) = sub_1CABD2C28;
          v86 = swift_continuation_init();
          *(v0 + 1896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463BE8);
          *(v0 + 1872) = v86;
          *(v0 + 1840) = MEMORY[0x1E69E9820];
          *(v0 + 1848) = 1107296256;
          *(v0 + 1856) = sub_1CABD345C;
          *(v0 + 1864) = &block_descriptor;
          [v95 travelTimeFrom:v93 to:v82 arrivalDate:v84 withRouteTypes:v85 withCompletionBlock:?];
          v77 = (v0 + 16);
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x1EEE6DEC8](v77);
      }
    }
  }

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_1CABD2C28()
{
  v1 = *(*v0 + 2184);
  v2 = *(*v0 + 2176);

  return MEMORY[0x1EEE6DFA0](sub_1CABD2D5C, v2, v1);
}

uint64_t sub_1CABD2D5C()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2240);
  v4 = *(v0 + 2232);
  v5 = *(v0 + 2080);

  if (v5)
  {
    v46 = v0 + 2000;
    v43 = (v0 + 2112);
    v44 = swift_allocObject();
    *(v44 + 16) = MEMORY[0x1E69E7CC0];
    v6 = v5 + 64;
    v7 = -1;
    v8 = -1 << *(v5 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v5 + 64);
    v10 = (63 - v8) >> 6;

    v11 = 0;
    v45 = v5;
    while (1)
    {
      if (!v9)
      {
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            v32 = *(v0 + 2128);
            v33 = *(v0 + 2120);

            v34 = sub_1CAD4E304();
            (*(*(v34 - 8) + 56))(v32, 1, 1, v34);

            v35 = sub_1CAD4E2B4();
            v36 = swift_allocObject();
            v37 = MEMORY[0x1E69E85E0];
            v36[2] = v35;
            v36[3] = v37;
            v36[4] = v33;
            v36[5] = v44;
            sub_1CACA6D34(0, 0, v32, &unk_1CAD5A7B8, v36);

            goto LABEL_40;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            v11 = v12;
            goto LABEL_11;
          }
        }

        __break(1u);
        return sub_1CAD4E794();
      }

LABEL_11:
      v13 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = *v13;
      v14 = v13[1];
      v16 = objc_opt_self();

      v17 = sub_1CAD4DF54();
      v18 = [v16 routingModeEnumForCalRouteType_];

      if (!*(v5 + 16))
      {
        break;
      }

      v19 = sub_1CAC1628C(v15, v14);
      v20 = (v0 + 2000);
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_1CABD3CDC(*(v5 + 56) + 32 * v19, v46);
LABEL_16:
      v9 &= v9 - 1;
      sub_1CAB23A9C(v20, v0 + 1968, &qword_1EC463BF0);
      if (*(v0 + 1992))
      {
        sub_1CABD4070(0, &qword_1EC463BF8);
        if (swift_dynamicCast())
        {

          result = sub_1CAB23A9C(v20, v0 + 1904, &qword_1EC463BF0);
          if (!*(v0 + 1928))
          {
            __break(1u);
            return result;
          }

          sub_1CABD3D54((v0 + 1904), (v0 + 1936));
          swift_dynamicCast();
          v23 = *v43;
          [*v43 duration];
          v25 = ceil(v24 / 300.0) * 300.0;
          if (v25 <= 0.0)
          {
            v26 = v20;
            goto LABEL_25;
          }

          if (v25 < 18000.0)
          {
            if ((v18 + 1) >= 6)
            {
              return sub_1CAD4E794();
            }

            goto LABEL_33;
          }

          if (v18 > 1)
          {
            if (v18 != 2)
            {
              if (v18 == 3)
              {
                goto LABEL_33;
              }

              if (v18 != 4)
              {
                return sub_1CAD4E794();
              }
            }

            v26 = v20;
LABEL_25:
            sub_1CAB21B68(v26, &qword_1EC463BF0);

            v5 = v45;
          }

          else
          {
            if ((v18 + 1) >= 3)
            {
              return sub_1CAD4E794();
            }

LABEL_33:
            v27 = *(v44 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v44 + 16) = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v27 = sub_1CAD34518(0, *(v27 + 2) + 1, 1, v27);
              *(v44 + 16) = v27;
            }

            v30 = *(v27 + 2);
            v29 = *(v27 + 3);
            if (v30 >= v29 >> 1)
            {
              v27 = sub_1CAD34518((v29 > 1), v30 + 1, 1, v27);
            }

            sub_1CAB21B68(v46, &qword_1EC463BF0);
            *(v27 + 2) = v30 + 1;
            v31 = &v27[16 * v30];
            *(v31 + 4) = v18;
            *(v31 + 5) = v25;
            v5 = v45;
            *(v44 + 16) = v27;
          }
        }

        else
        {
          sub_1CAB21B68(v20, &qword_1EC463BF0);

          v5 = v45;
        }
      }

      else
      {
        sub_1CAB21B68(v20, &qword_1EC463BF0);

        sub_1CAB21B68(v0 + 1968, &qword_1EC463BF0);
        v5 = v45;
      }
    }

    v20 = (v0 + 2000);
LABEL_15:
    *v20 = 0u;
    v20[1] = 0u;
    goto LABEL_16;
  }

LABEL_40:
  v38 = *(v0 + 2120);
  v39 = *(v0 + 2240);
  v40 = *(v0 + 2232);
  if (*(v38 + 672))
  {
    swift_getKeyPath();
    v41 = swift_task_alloc();
    *(v41 + 16) = v38;
    *(v41 + 24) = 0;
    *(v0 + 2064) = v38;
    sub_1CAD4C414();
  }

  else
  {

    *(v38 + 672) = 0;
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1CABD345C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1CAD4DE94();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

uint64_t sub_1CABD34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = sub_1CAD4E2C4();
  v5[9] = sub_1CAD4E2B4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD3568, 0, 0);
}

uint64_t sub_1CABD3568()
{
  *(v0 + 80) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABD35F4, v2, v1);
}

uint64_t sub_1CABD35F4()
{
  v1 = v0[7];
  v2 = v0[6];

  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v0[5] = v2;
  sub_1CABD42B8(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);

  sub_1CAD4C414();

  v6 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABCC1C0, v6, v5);
}

_OWORD *sub_1CABD377C()
{

  v1 = *(v0 + 184);
  v22[8] = *(v0 + 168);
  v22[9] = v1;
  v2 = *(v0 + 216);
  v22[10] = *(v0 + 200);
  v22[11] = v2;
  v3 = *(v0 + 120);
  v22[4] = *(v0 + 104);
  v22[5] = v3;
  v4 = *(v0 + 152);
  v22[6] = *(v0 + 136);
  v22[7] = v4;
  v5 = *(v0 + 56);
  v22[0] = *(v0 + 40);
  v22[1] = v5;
  v6 = *(v0 + 88);
  v22[2] = *(v0 + 72);
  v22[3] = v6;
  sub_1CAB21B68(v22, &qword_1EC463C30);

  v7 = v0[25];
  v23[8] = v0[24];
  v23[9] = v7;
  v23[10] = v0[26];
  v8 = v0[21];
  v23[4] = v0[20];
  v23[5] = v8;
  v9 = v0[23];
  v23[6] = v0[22];
  v23[7] = v9;
  v10 = v0[17];
  v23[0] = v0[16];
  v23[1] = v10;
  v11 = v0[19];
  v23[2] = v0[18];
  v23[3] = v11;
  sub_1CAB21B68(v23, &qword_1EC463C00);
  __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  v12 = v0[40];
  v24[8] = v0[39];
  v24[9] = v12;
  v24[10] = v0[41];
  v13 = v0[36];
  v24[4] = v0[35];
  v24[5] = v13;
  v14 = v0[38];
  v24[6] = v0[37];
  v24[7] = v14;
  v15 = v0[32];
  v24[0] = v0[31];
  v24[1] = v15;
  v16 = v0[34];
  v24[2] = v0[33];
  v24[3] = v16;
  sub_1CAB21B68(v24, &qword_1EC463C00);
  v17 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate;
  v18 = sub_1CAD4C0F4();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  sub_1CABD41DC(v0 + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__startLocationFromChooser);

  v19 = OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel___observationRegistrar;
  v20 = sub_1CAD4C464();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  return v0;
}

uint64_t sub_1CABD3964()
{
  sub_1CABD377C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TravelTimeViewModel()
{
  result = qword_1EC463BC8;
  if (!qword_1EC463BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CABD3A10()
{
  result = sub_1CAD4C0F4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationModelObject(319);
    if (v2 <= 0x3F)
    {
      result = sub_1CAD4C464();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1CABD3B74()
{
  v1 = CUIKDisplayStringForTravelTimeUsingShortFormat(0, dbl_1CAD5A998[*v0]);
  v2 = sub_1CAD4DF94();

  return v2;
}

double sub_1CABD3BDC@<D0>(double *a1@<X8>)
{
  result = dbl_1CAD5A998[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_1CABD3CDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1CABD3D54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CABD3D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CABCD46C;

  return sub_1CABD34EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1CABD3E24()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__travelTimeEstimatedValues) = *(v0 + 24);
}

uint64_t sub_1CABD3E68(uint64_t a1)
{
  v4 = *(sub_1CAD4C0F4() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1CABCD46C;

  return sub_1CABD0580(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

void sub_1CABD3F84(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1CAD4C0F4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));

  sub_1CABD1890(a1, a2, v8, v2 + v6, v10, v11, v12, v13);
}