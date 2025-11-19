id sub_1CAC0D034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B48);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  v7 = sub_1CAD4DB34();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B18);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v66 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B08);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AF8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  sub_1CAD4DBF4();
  v16 = v77;
  swift_getKeyPath();
  *&v77 = v16;
  sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel);
  sub_1CAD4C424();

  v17 = v16 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v18 = *(v17 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 48));
  if (v18)
  {
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v18 + 16);
  v20 = 32;
  do
  {
    if (!v19)
    {

      if (a1 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a1 <= 0x7FFFFFFF)
      {
        result = CUIKStringAbbreviationForMonth(a1);
        if (result)
        {
          v55 = result;
          v56 = sub_1CAD4DF94();
          v58 = v57;

          *&v77 = v56;
          *(&v77 + 1) = v58;
          sub_1CABA6054();
          v59 = sub_1CAD4D444();
          v61 = v60;
          LOBYTE(v58) = v62;
          v64 = v63;
          sub_1CAD4DC94();
          sub_1CAD4C744();
          v76 = v58 & 1;
          *v6 = v59;
          *(v6 + 1) = v61;
          v6[16] = v58 & 1;
          *(v6 + 3) = v64;
          v65 = v78;
          *(v6 + 2) = v77;
          *(v6 + 3) = v65;
          *(v6 + 4) = v79;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B40);
          sub_1CAC0FB50();
          sub_1CAC0FDC4();
          return sub_1CAD4CE24();
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_18;
    }

    v21 = *(v18 + v20);
    v20 += 8;
    --v19;
  }

  while (v21 != a1);

  v22 = *MEMORY[0x1E697F470];
  v23 = sub_1CAD4CD24();
  result = (*(*(v23 - 8) + 104))(v75, v22, v23);
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v66 = v15;
  v67 = v11;
  v68 = v4;
  v69 = a2;
  result = CUIKStringAbbreviationForMonth(a1);
  if (result)
  {
    v25 = result;
    v26 = sub_1CAD4DF94();
    v28 = v27;

    *&v77 = v26;
    *(&v77 + 1) = v28;
    sub_1CABA6054();
    v29 = sub_1CAD4D444();
    v31 = v30;
    LOBYTE(v28) = v32;
    sub_1CAD4D874();
    v33 = sub_1CAD4D3D4();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_1CABA6128(v29, v31, v28 & 1);

    v40 = sub_1CAD4DC94();
    v42 = v41;
    v43 = v72;
    sub_1CAC10448(v75, v72, MEMORY[0x1E69819A0]);
    v44 = v43 + *(v70 + 36);
    *v44 = v33;
    *(v44 + 8) = v35;
    *(v44 + 16) = v37 & 1;
    *(v44 + 24) = v39;
    *(v44 + 32) = v40;
    *(v44 + 40) = v42;
    v45 = sub_1CAD4D804();
    KeyPath = swift_getKeyPath();
    v47 = v43;
    v48 = v74;
    sub_1CABA62E4(v47, v74, &qword_1EC464B18);
    v49 = (v48 + *(v71 + 36));
    *v49 = KeyPath;
    v49[1] = v45;
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v50 = v48;
    v51 = v73;
    sub_1CABA62E4(v50, v73, &qword_1EC464B08);
    v52 = v66;
    v53 = (v51 + *(v67 + 36));
    v54 = v78;
    *v53 = v77;
    v53[1] = v54;
    v53[2] = v79;
    sub_1CABA62E4(v51, v52, &qword_1EC464AF8);
    sub_1CAB23A9C(v52, v6, &qword_1EC464AF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B40);
    sub_1CAC0FB50();
    sub_1CAC0FDC4();
    sub_1CAD4CE24();
    return sub_1CAB21B68(v52, &qword_1EC464AF8);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CAC0D718@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC462DC8 != -1)
  {
    swift_once();
  }

  sub_1CABA6054();

  result = sub_1CAD4D444();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAC0D7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v81 = a1;
  v82 = a2;
  v86 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B50) - 8;
  v3 = MEMORY[0x1EEE9AC00](v84);
  v85 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v74 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B58);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v83 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v74 - v15;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v17 = *(v8 + 8);
  v79 = v8 + 8;
  v80 = v17;
  v17(v10, v7);
  v87 = v90;
  v88 = v91;
  v89 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B60);
  sub_1CAC0FE48();
  sub_1CAC0FEF0(&qword_1EC464B70, &qword_1EC464B60);
  sub_1CAD4DA34();
  v18 = sub_1CAD4D844();
  KeyPath = swift_getKeyPath();
  v90 = v18;
  v20 = sub_1CAD4C754();
  v21 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B78) + 36)];
  *v21 = KeyPath;
  v21[1] = v20;
  LOBYTE(v20) = sub_1CAD4D214();
  sub_1CAD4C5F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B80) + 36)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v77 = objc_opt_self();
  v31 = [v77 quaternarySystemFillColor];
  v32 = sub_1CAD4D7D4();
  v33 = sub_1CAD4D1D4();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B88) + 36);
  v78 = v16;
  v35 = &v16[v34];
  *v35 = v32;
  v35[8] = v33;
  v36 = &v16[*(v12 + 44)];
  v76 = sub_1CAD4C974();
  v37 = *(v76 + 20);
  v75 = *MEMORY[0x1E697F470];
  v38 = v75;
  v39 = sub_1CAD4CD24();
  v40 = *(*(v39 - 8) + 104);
  v40(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #8.0 }

  v74 = _Q0;
  *v36 = _Q0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808);
  *&v36[*(v46 + 36)] = 256;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v80(v10, v7);
  v87 = v90;
  v88 = v91;
  v89 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B90);
  sub_1CAC0FE9C();
  sub_1CAC0FEF0(&qword_1EC464BA0, &qword_1EC464B90);
  sub_1CAD4DA34();
  v47 = sub_1CAD4D844();
  v48 = swift_getKeyPath();
  v90 = v47;
  v49 = sub_1CAD4C754();
  v50 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BA8) + 36)];
  *v50 = v48;
  v50[1] = v49;
  LOBYTE(v49) = sub_1CAD4D214();
  sub_1CAD4C5F4();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BB0) + 36)];
  *v59 = v49;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = [v77 quaternarySystemFillColor];
  v61 = sub_1CAD4D7D4();
  LOBYTE(v48) = sub_1CAD4D1D4();
  v62 = v6;
  v63 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BB8) + 36)];
  *v63 = v61;
  v63[8] = v48;
  v64 = &v6[*(v84 + 44)];
  v40(&v64[*(v76 + 20)], v75, v39);
  *v64 = v74;
  *&v64[*(v46 + 36)] = 256;
  v65 = v78;
  v66 = v83;
  sub_1CAB23A9C(v78, v83, &qword_1EC464B58);
  v67 = v85;
  sub_1CAB23A9C(v62, v85, &qword_1EC464B50);
  v68 = v86;
  *v86 = 0;
  *(v68 + 8) = 1;
  v69 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BC0);
  sub_1CAB23A9C(v66, v69 + v70[12], &qword_1EC464B58);
  v71 = v69 + v70[16];
  *v71 = 0;
  *(v71 + 8) = 1;
  sub_1CAB23A9C(v67, v69 + v70[20], &qword_1EC464B50);
  v72 = v69 + v70[24];
  *v72 = 0;
  *(v72 + 8) = 1;
  sub_1CAB21B68(v62, &qword_1EC464B50);
  sub_1CAB21B68(v65, &qword_1EC464B58);
  sub_1CAB21B68(v67, &qword_1EC464B50);
  return sub_1CAB21B68(v66, &qword_1EC464B58);
}

uint64_t sub_1CAC0DF30()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BE0);
  sub_1CAB23B0C(&qword_1EC464BE8, &qword_1EC464BE0);
  sub_1CAC0FFB0();
  return sub_1CAD4DB74();
}

uint64_t sub_1CAC0E004@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        if (qword_1EC462D98 == -1)
        {
          goto LABEL_20;
        }
      }

      else if (qword_1EC462DA0 == -1)
      {
        goto LABEL_20;
      }
    }

    else if (qword_1EC462D90 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (*a1 <= 4u)
  {
    if (v3 == 3)
    {
      if (qword_1EC462DA8 == -1)
      {
        goto LABEL_20;
      }
    }

    else if (qword_1EC462DB0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v3 == 5)
  {
    if (qword_1EC462DB8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (qword_1EC462DC0 != -1)
  {
LABEL_21:
    swift_once();
  }

LABEL_20:

  sub_1CABA6054();
  result = sub_1CAD4D444();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1CAC0E230()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BC8);
  sub_1CAB23B0C(&qword_1EC464BD0, &qword_1EC464BC8);
  sub_1CAC0FF5C();
  return sub_1CAD4DB74();
}

uint64_t sub_1CAC0E304@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC82980(*a1);
  sub_1CABA6054();
  result = sub_1CAD4D444();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1CAC0E360@<X0>(uint64_t a1@<X8>)
{
  sub_1CABA6054();

  result = sub_1CAD4D444();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAC0E3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464948);
  MEMORY[0x1EEE9AC00](v17[0]);
  v4 = v17 - v3;
  v5 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AE8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  sub_1CAD4CED4();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CAD4C6E4();
  sub_1CAD4CEE4();
  v17[4] = a1;
  sub_1CAD4C6E4();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_1CAD4CDF4();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_1CAC0E68C(uint64_t a1)
{
  v2 = type metadata accessor for CustomRepeatEditor();
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
  sub_1CAC0F518(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomRepeatEditor);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1CAC10448(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CustomRepeatEditor);
  sub_1CABA6054();
  return sub_1CAD4D9F4();
}

uint64_t sub_1CAC0E8AC(uint64_t a1)
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
  v12 = type metadata accessor for CustomRepeatEditor();
  sub_1CAB23A9C(a1 + *(v12 + 20), v7, &qword_1EC4632B0);
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

uint64_t sub_1CAC0EB34(uint64_t a1)
{
  v2 = type metadata accessor for CustomRepeatEditor();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EC462DF0 != -1)
  {
    swift_once();
  }

  v8[0] = qword_1EC47DE18;
  v8[1] = unk_1EC47DE20;
  sub_1CAC0F518(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomRepeatEditor);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1CAC10448(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CustomRepeatEditor);
  sub_1CABA6054();

  return sub_1CAD4DA04();
}

uint64_t sub_1CAC0ECC4(uint64_t a1)
{
  v2 = sub_1CAD4C784();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v19);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v18[1] = a1;
  sub_1CAD4DBF4();
  v13 = v22;
  sub_1CAD4DBF4();
  v14 = v22;
  swift_getKeyPath();
  v22 = v14;
  sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel);
  sub_1CAD4C424();

  v15 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  sub_1CAC0F518(v14 + v15, v12, type metadata accessor for EventRecurrenceRuleModelObject);

  v16 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  sub_1CAB23A9C(v13 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v6, &qword_1EC463168);
  sub_1CAB23A9C(v12, v10, &qword_1EC463170);
  sub_1CAD4DAC4();

  sub_1CAB21B68(v6, &qword_1EC463168);
  sub_1CAB21B68(v12, &qword_1EC463170);
  sub_1CAC07540(v4);
  sub_1CAD4C774();
  return (*(v20 + 8))(v4, v21);
}

uint64_t sub_1CAC0F024()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648C0);
  sub_1CAC0F1D4();
  sub_1CABA6054();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1CAB23B0C(&qword_1EC464930, &qword_1EC4648B0);
  swift_getOpaqueTypeConformance2();
  return sub_1CAD4C924();
}

unint64_t sub_1CAC0F1D4()
{
  result = qword_1EC4648C8;
  if (!qword_1EC4648C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648C0);
    sub_1CAC0F28C();
    sub_1CAB23B0C(&qword_1EC464920, &qword_1EC464928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4648C8);
  }

  return result;
}

unint64_t sub_1CAC0F28C()
{
  result = qword_1EC4648D0;
  if (!qword_1EC4648D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648D8);
    sub_1CAC0F344();
    sub_1CAB23B0C(&qword_1EC464920, &qword_1EC464928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4648D0);
  }

  return result;
}

unint64_t sub_1CAC0F344()
{
  result = qword_1EC4648E0;
  if (!qword_1EC4648E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648E8);
    sub_1CAC0F3FC();
    sub_1CAB23B0C(&qword_1EC464910, &qword_1EC464918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4648E0);
  }

  return result;
}

unint64_t sub_1CAC0F3FC()
{
  result = qword_1EC4648F0;
  if (!qword_1EC4648F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4648F8);
    sub_1CAB23B0C(&qword_1EC464900, &qword_1EC464908);
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4648F0);
  }

  return result;
}

uint64_t sub_1CAC0F518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC0F598(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CustomRepeatEditor() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1CAC0F65C()
{
  result = qword_1EC464A08;
  if (!qword_1EC464A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464A10);
    sub_1CAD4CF64();
    sub_1CAB23B0C(&qword_1EC464A18, &qword_1EC464A10);
    sub_1CAC0FD7C(&qword_1EC464380, MEMORY[0x1E697C728]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464A08);
  }

  return result;
}

unint64_t sub_1CAC0F7E8()
{
  result = qword_1EC464A68;
  if (!qword_1EC464A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464A60);
    sub_1CAC0F86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464A68);
  }

  return result;
}

unint64_t sub_1CAC0F86C()
{
  result = qword_1EC464A70;
  if (!qword_1EC464A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464A78);
    sub_1CAB23B0C(&qword_1EC464A80, &qword_1EC464A88);
    sub_1CAB23B0C(&qword_1EC464A90, &qword_1EC464A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464A70);
  }

  return result;
}

uint64_t sub_1CAC0F950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustomRepeatEditor() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CAC0AF18(a1, v6, a2);
}

uint64_t sub_1CAC0F9F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CAC0FA30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1CAC0FAC4()
{
  result = qword_1EC464AE8;
  if (!qword_1EC464AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464AE0);
    sub_1CAC0FB50();
    sub_1CAC0FDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464AE8);
  }

  return result;
}

unint64_t sub_1CAC0FB50()
{
  result = qword_1EC464AF0;
  if (!qword_1EC464AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464AF8);
    sub_1CAC0FBDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464AF0);
  }

  return result;
}

unint64_t sub_1CAC0FBDC()
{
  result = qword_1EC464B00;
  if (!qword_1EC464B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464B08);
    sub_1CAC0FC94();
    sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464B00);
  }

  return result;
}

unint64_t sub_1CAC0FC94()
{
  result = qword_1EC464B10;
  if (!qword_1EC464B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464B18);
    sub_1CAC0FD7C(&qword_1EC464B20, MEMORY[0x1E69819A0]);
    sub_1CAB23B0C(&qword_1EC464B28, &qword_1EC464B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464B10);
  }

  return result;
}

uint64_t sub_1CAC0FD7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CAC0FDC4()
{
  result = qword_1EC464B38;
  if (!qword_1EC464B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464B38);
  }

  return result;
}

unint64_t sub_1CAC0FE48()
{
  result = qword_1EC464B68;
  if (!qword_1EC464B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464B68);
  }

  return result;
}

unint64_t sub_1CAC0FE9C()
{
  result = qword_1EC464B98;
  if (!qword_1EC464B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464B98);
  }

  return result;
}

uint64_t sub_1CAC0FEF0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAC0FF5C()
{
  result = qword_1EC464BD8;
  if (!qword_1EC464BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464BD8);
  }

  return result;
}

unint64_t sub_1CAC0FFB0()
{
  result = qword_1EC464BF0;
  if (!qword_1EC464BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464BF0);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for CustomRepeatEditor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CAD4C784();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for CustomRepeatEditor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CAD4C784();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CAC103A0(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CustomRepeatEditor() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1CAC10448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC10504(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1CAD4C564();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1CAD4C554();
}

uint64_t static LocationDescriptionGenerator.locationString(for:options:incomplete:leadingImageName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void **a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48[-v13];
  sub_1CAB23A9C(a1, &v60, &qword_1EC464C30);
  if (!*(&v61 + 1))
  {
    sub_1CAB21B68(&v60, &qword_1EC464C30);
    v20 = sub_1CAD4BE24();
    return (*(*(v20 - 8) + 56))(a5, 1, 1, v20);
  }

  v51 = a4;
  v52 = a3;
  sub_1CAB284E0(&v60, v63);
  v15 = v64;
  v16 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v55 = (*(v16 + 256))(v15, v16);
  v56 = v17;
  v18 = sub_1CAB28CB8(v63);
  if (v18[2])
  {
    v19 = v18[5];
    v58 = v18[4];
    v59 = v19;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v53 = v6;
  v54 = a5;
  v57 = v14;
  if ((a2 & 0x10) == 0)
  {
    goto LABEL_28;
  }

  v22 = v64;
  v23 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  if (!(*(v23 + 416))(v22, v23))
  {
    goto LABEL_28;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C40);
  v24 = sub_1CAD4E784();

  v25 = *(v24 + 16);
  if (!v25)
  {

LABEL_28:
    sub_1CAB299C0(v63, &v60);
    v50 = a2;
    v49 = sub_1CAB27A8C(v14, &v60, a2);
    sub_1CAB21B68(&v60, &qword_1EC464C30);
    v37 = v64;
    v38 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v39 = *(v38 + 296);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41 = sub_1CAD4E4D4();
    v42 = *(v41 - 8);
    MEMORY[0x1EEE9AC00](v41);
    v44 = &v48[-v43];
    v39(v37, v38);
    v45 = *(AssociatedTypeWitness - 8);
    if ((*(v45 + 48))(v44, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v44, v41);
      AssociatedConformanceWitness = 0;
      v60 = 0u;
      v61 = 0u;
    }

    else
    {
      *(&v61 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
      (*(v45 + 32))(boxed_opaque_existential_1, v44, AssociatedTypeWitness);
    }

    v47 = v57;
    sub_1CAB21BC8(v55, v56, v58, v59, &v60, v57, v49 & 1, v50, v54, v52, v51);

    sub_1CAB21B68(v47, &qword_1EC465450);
    sub_1CAB21B68(&v60, &qword_1EC464C38);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v26 = 0;
  v27 = v24 + 32;
  while (v26 < *(v24 + 16))
  {
    sub_1CAB299C0(v27, &v60);
    v28 = *(&v61 + 1);
    v29 = AssociatedConformanceWitness;
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    if ((*(v29 + 32))(v28, v29) == 2)
    {
      v30 = *(&v61 + 1);
      v31 = AssociatedConformanceWitness;
      __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
      v32 = (*(*(v31 + 8) + 24))(v30);
      if (v33)
      {
        if (v59)
        {
          if (v32 == v58 && v33 == v59)
          {

LABEL_26:

LABEL_27:
            v14 = v57;

            v36 = v56;

            __swift_destroy_boxed_opaque_existential_1(&v60);
            v58 = v55;
            v59 = v36;
            goto LABEL_28;
          }

          v35 = sub_1CAD4E9E4();

          if (v35)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      else if (!v59)
      {
        goto LABEL_27;
      }
    }

    ++v26;
    result = __swift_destroy_boxed_opaque_existential_1(&v60);
    v27 += 40;
    if (v25 == v26)
    {

      v14 = v57;
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC10B88(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 == a2 && v7 == a3;
  if (!v8 && (sub_1CAD4E9E4() & 1) == 0)
  {
    return 1;
  }

  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v9);
  if (!(*(v10 + 416))(v9, v10))
  {
    return 1;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C40);
  v11 = sub_1CAD4E784();

  v13 = *(v11 + 16);
  if (v13)
  {
    v27 = v4;
    v14 = 0;
    v15 = v11 + 32;
    while (v14 < *(v11 + 16))
    {
      sub_1CAB299C0(v15, v24);
      v16 = v25;
      v17 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      if ((*(v17 + 32))(v16, v17) == 2)
      {
        v19 = v25;
        v18 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v20 = (*(*(v18 + 8) + 24))(v19);
        if (v21)
        {
          if (v6 == v20 && v21 == v7)
          {

LABEL_23:

            __swift_destroy_boxed_opaque_existential_1(v24);
            return 0;
          }

          v23 = sub_1CAD4E9E4();

          if (v23)
          {
            goto LABEL_23;
          }
        }
      }

      ++v14;
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      v15 += 40;
      if (v13 == v14)
      {

        return 1;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

id LocationDescriptionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationDescriptionGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationDescriptionGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocationDescriptionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationDescriptionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static LocationDescriptionGenerator.locationString(for:locationWithoutPrediction:preferredLocation:conferenceURL:conferenceURLIsBroadcast:options:incomplete:leadingImageName:)(void *a1, void *a2, void *a3, void *a4, int a5, void (**a6)(char *, uint64_t), _BYTE *a7, void **a8)
{
  v40 = a6;
  v36 = a8;
  v37 = a7;
  v38 = a5;
  v39 = a4;
  v11 = sub_1CAD4BE24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v35 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C48);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  if (a1)
  {
    v23 = a1;
    a1 = sub_1CAD4DFE4();
    v25 = v24;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v25 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = a2;
  v27 = sub_1CAD4DFE4();
  a2 = v28;
  if (a3)
  {
LABEL_4:
    v29 = &protocol witness table for EKLocationModelWrapper;
    v30 = &type metadata for EKLocationModelWrapper;
    v31 = a3;
    goto LABEL_8;
  }

LABEL_7:
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v41[1] = 0;
  v41[2] = 0;
LABEL_8:
  v41[0] = v31;
  v41[3] = v30;
  v41[4] = v29;
  v32 = a3;
  sub_1CAB21BC8(a1, v25, v27, a2, v41, v39, v38 & 1, v40, v22, v37, v36);

  sub_1CAB21B68(v41, &qword_1EC464C38);
  sub_1CAB23A9C(v22, v20, &qword_1EC464C48);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    sub_1CAB21B68(v22, &qword_1EC464C48);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v16, v20, v11);
    sub_1CAB23BA4();
    (*(v12 + 16))(v35, v16, v11);
    v34 = sub_1CAD4E454();
    (*(v12 + 8))(v16, v11);
    sub_1CAB21B68(v22, &qword_1EC464C48);
    return v34;
  }
}

uint64_t static LocationDescriptionGenerator.conferenceString(for:conferenceURLIsBroadcast:options:outImageName:incomplete:)(uint64_t a1, int a2, uint64_t a3, void **a4, _BYTE *a5)
{
  v24 = a4;
  v25 = a5;
  v23 = a3;
  v7 = sub_1CAD4BE24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C48);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  sub_1CAB23120(a1, a2, v23, v24, v25, &v22 - v18);
  sub_1CAB23A9C(v19, v17, &qword_1EC464C48);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    sub_1CAB21B68(v19, &qword_1EC464C48);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v13, v17, v7);
    sub_1CAB23BA4();
    (*(v8 + 16))(v11, v13, v7);
    v21 = sub_1CAD4E454();
    (*(v8 + 8))(v13, v7);
    sub_1CAB21B68(v19, &qword_1EC464C48);
    return v21;
  }
}

uint64_t sub_1CAC117DC(uint64_t a1)
{
  v2 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a1, v35, &qword_1EC464C38);
  v8 = v36;
  if (!v36)
  {
    sub_1CAB21B68(v35, &qword_1EC464C38);
    v32 = 0u;
    v33 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_9:
    sub_1CAB21B68(&v32, &qword_1EC464C60);
    return 0;
  }

  v31[1] = v7;
  v31[2] = v4;
  v9 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v10 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CAD4E4D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - v14;
  v10(v8, v9);
  v16 = *(AssociatedTypeWitness - 8);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v12);
    AssociatedConformanceWitness = 0;
    v32 = 0u;
    v33 = 0u;
  }

  else
  {
    *(&v33 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
    (*(v16 + 32))(boxed_opaque_existential_1, v15, AssociatedTypeWitness);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  if (!*(&v33 + 1))
  {
    goto LABEL_9;
  }

  sub_1CAB284E0(&v32, v35);
  v18 = v36;
  v19 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v19 + 16))(v18, v19);
  if (!v20)
  {
    v25 = v36;
    v26 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v27 = (*(v26 + 8))(v25, v26);
    if (v27 > 1)
    {
      if (v27 == 2 || v27 == 3)
      {
        goto LABEL_16;
      }
    }

    else if (v27 <= 1)
    {
LABEL_16:
      sub_1CAD4DEE4();
      CUIKBundle();
      sub_1CAD4C184();
      v23 = sub_1CAD4DFC4();
      goto LABEL_17;
    }

    v28 = v36;
    v29 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v23 = (*(v29 + 24))(v28, v29);
    goto LABEL_17;
  }

  v21 = v36;
  v22 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v23 = (*(v22 + 16))(v21, v22);
LABEL_17:
  v30 = v23;
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v30;
}

uint64_t _s13CalendarUIKit28LocationDescriptionGeneratorC5label3forSo8NSStringCSgSo012EKStructuredC0CSg_tFZ_0(void *a1)
{
  if (a1)
  {
    v1 = &protocol witness table for EKLocationModelWrapper;
    v2 = &type metadata for EKLocationModelWrapper;
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v3;
  v9[3] = v2;
  v9[4] = v1;
  v4 = a1;
  sub_1CAC117DC(v9);
  v6 = v5;
  sub_1CAB21B68(v9, &qword_1EC464C38);
  if (!v6)
  {
    return 0;
  }

  v7 = sub_1CAD4DF54();

  return v7;
}

uint64_t sub_1CAC11DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC11E64()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v1 = sub_1CAD4DF54();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = sub_1CAD4DF54();
    v4 = [v2 classNamed_];

    if (v4)
    {
      swift_getObjCClassMetadata();
      v5 = &unk_1F4AF8620;
      class_addProtocol(v4, v5);

      return swift_dynamicCastTypeToObjCProtocolConditional();
    }
  }

  if (qword_1EC462F10 != -1)
  {
    swift_once();
  }

  v7 = sub_1CAD4C564();
  __swift_project_value_buffer(v7, qword_1EC47E040);
  v8 = sub_1CAD4C544();
  v9 = sub_1CAD4E3D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CAB19000, v8, v9, "FAProfilePictureStore not available", v10, 2u);
    MEMORY[0x1CCAA9440](v10, -1, -1);
  }

  return 0;
}

uint64_t EventCalendarModelObject.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventCalendarModelObject.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventCalendarModelObject.externalID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EventCalendarModelObject.externalID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EventCalendarModelObject.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EventCalendarModelObject.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 EventCalendarModelObject.color.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u64[0];
  v3 = v1[5].n128_u8[8];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 EventCalendarModelObject.color.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v2;
  v1[5].n128_u8[8] = v3;
  return result;
}

uint64_t EventCalendarModelObject.source.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v12[6] = *(v1 + 200);
  v13[0] = v3;
  *(v13 + 10) = *(v1 + 226);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v12[2] = *(v1 + 136);
  v12[3] = v5;
  v12[4] = *(v1 + 168);
  v12[5] = v2;
  v12[0] = *(v1 + 104);
  v12[1] = v4;
  v6 = *(v1 + 184);
  v7 = *(v1 + 216);
  a1[6] = *(v1 + 200);
  a1[7] = v7;
  *(a1 + 122) = *(v1 + 226);
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  a1[2] = *(v1 + 136);
  a1[3] = v9;
  a1[4] = *(v1 + 168);
  a1[5] = v6;
  *a1 = *(v1 + 104);
  a1[1] = v8;
  return sub_1CAB23A9C(v12, &v11, &unk_1EC4679A0);
}

__n128 EventCalendarModelObject.source.setter(__int128 *a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v12[6] = *(v1 + 200);
  v13[0] = v4;
  *(v13 + 10) = *(v1 + 226);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v12[2] = *(v1 + 136);
  v12[3] = v6;
  v12[4] = *(v1 + 168);
  v12[5] = v3;
  v12[0] = *(v1 + 104);
  v12[1] = v5;
  sub_1CAB21B68(v12, &unk_1EC4679A0);
  v7 = a1[4];
  *(v1 + 184) = a1[5];
  v8 = a1[7];
  *(v1 + 200) = a1[6];
  *(v1 + 216) = v8;
  *(v1 + 226) = *(a1 + 122);
  v9 = *a1;
  *(v1 + 120) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 136) = result;
  *(v1 + 152) = v11;
  *(v1 + 168) = v7;
  *(v1 + 104) = v9;
  return result;
}

uint64_t EventCalendarModelObject.sharedOwnerName.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t EventCalendarModelObject.sharedOwnerName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t EventCalendarModelObject.sharedOwnerAddress.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t EventCalendarModelObject.sharedOwnerAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t EventCalendarModelObject.sharedOwnerAddresses.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t type metadata accessor for EventCalendarModelObject()
{
  result = qword_1EDA5F880;
  if (!qword_1EDA5F880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventCalendarModelObject.ownerIdentityAddress.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EventCalendarModelObject() + 92);

  return sub_1CABD4E34(a1, v3);
}

uint64_t EventCalendarModelObject.ownerIdentityEmail.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventCalendarModelObject() + 96));

  return v1;
}

uint64_t EventCalendarModelObject.ownerIdentityEmail.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EventCalendarModelObject() + 96));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EventCalendarModelObject.ownerIdentityPhoneNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventCalendarModelObject() + 100));

  return v1;
}

uint64_t EventCalendarModelObject.ownerIdentityPhoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EventCalendarModelObject() + 100));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EventCalendarModelObject.isDefaultCalendarForNewEvents.setter(char a1)
{
  result = type metadata accessor for EventCalendarModelObject();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t EventCalendarModelObject.constraints.getter@<X0>(int8x16_t *a1@<X8>)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v13[6] = *(v1 + 200);
  *v14 = v4;
  *&v14[10] = *(v1 + 226);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v13[2] = *(v1 + 136);
  v13[3] = v6;
  v13[4] = *(v1 + 168);
  v13[5] = v3;
  v13[0] = *(v1 + 104);
  v13[1] = v5;
  result = sub_1CABED4EC(v13);
  v8.i32[0] = 1;
  v9.i32[0] = result;
  v10 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v9, v8), 0), xmmword_1CAD5D940, *v14);
  v11 = *&v14[16];
  v12 = *&v14[24];
  if (result == 1)
  {
    v11 = 0;
    v12 = 0;
  }

  *a1 = v10;
  a1[1].i64[0] = v11;
  a1[1].i16[4] = v12;
  return result;
}

uint64_t EventCalendarModelObject.init(id:type:externalID:title:displayOrder:color:allowsContentModifications:sharingStatus:source:isSubscribed:isHolidayCalendar:isSubscribedHolidayCalendar:isSuggestedEventCalendar:isPublished:allowsEvents:allowsScheduling:sharedOwnerName:sharedOwnerAddress:sharedOwnerAddresses:ownerIdentityAddress:ownerIdentityEmail:ownerIdentityPhoneNumber:isDefaultCalendarForNewEvents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, char a11, uint64_t a12, __int128 *a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v50 = *a10;
  v31 = *(a10 + 2);
  v32 = *(a10 + 24);
  v64 = a13[6];
  *v65 = a13[7];
  *&v65[10] = *(a13 + 122);
  v60 = a13[2];
  v61 = a13[3];
  v62 = a13[4];
  v63 = a13[5];
  v58 = *a13;
  v59 = a13[1];
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = -1;
  sub_1CAC12E1C(v66);
  v33 = v66[4];
  *(a9 + 184) = v66[5];
  v34 = v67[0];
  *(a9 + 200) = v66[6];
  *(a9 + 216) = v34;
  *(a9 + 226) = *(v67 + 10);
  v35 = v66[0];
  *(a9 + 120) = v66[1];
  v36 = v66[3];
  *(a9 + 136) = v66[2];
  *(a9 + 152) = v36;
  *(a9 + 168) = v33;
  *(a9 + 104) = v35;
  v37 = type metadata accessor for EventCalendarModelObject();
  v38 = v37[23];
  v39 = sub_1CAD4BFF4();
  (*(*(v39 - 8) + 56))(a9 + v38, 1, 1, v39);
  v40 = (a9 + v37[24]);
  v41 = (a9 + v37[25]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v50;
  *(a9 + 80) = v31;
  *(a9 + 88) = v32;
  *(a9 + 89) = a11;
  *(a9 + 96) = a12;
  v42 = *(a9 + 104);
  v43 = *(a9 + 120);
  v44 = *(a9 + 152);
  v45 = *(a9 + 168);
  v68[2] = *(a9 + 136);
  v68[3] = v44;
  v68[0] = v42;
  v68[1] = v43;
  v46 = *(a9 + 184);
  v47 = *(a9 + 200);
  *&v69[10] = *(a9 + 226);
  v48 = *(a9 + 216);
  v68[6] = v47;
  *v69 = v48;
  v68[4] = v45;
  v68[5] = v46;
  sub_1CAB21B68(v68, &unk_1EC4679A0);
  *(a9 + 184) = v63;
  *(a9 + 200) = v64;
  *(a9 + 216) = *v65;
  *(a9 + 226) = *&v65[10];
  *(a9 + 120) = v59;
  *(a9 + 136) = v60;
  *(a9 + 152) = v61;
  *(a9 + 168) = v62;
  *(a9 + 104) = v58;
  *(a9 + 242) = a14;
  *(a9 + 243) = a15;
  *(a9 + 244) = a16;
  *(a9 + 245) = a17;
  *(a9 + 246) = a18;
  *(a9 + 247) = a19;
  *(a9 + 248) = a20;
  *(a9 + 256) = a21;
  *(a9 + 272) = a22;
  *(a9 + 288) = a23;
  result = sub_1CABD4E34(a24, a9 + v38);
  *v40 = a25;
  v40[1] = a26;
  *v41 = a27;
  v41[1] = a28;
  *(a9 + v37[26]) = a29;
  return result;
}

double sub_1CAC12E1C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 122) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t EventCalendarModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v90 - v4;
  v5 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 8) = 0;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  v7[88] = -1;
  sub_1CAC12E1C(&v119);
  v8 = v125;
  *(v7 + 184) = v124;
  *(v7 + 200) = v8;
  *(v7 + 216) = v126[0];
  *(v7 + 226) = *(v126 + 10);
  v9 = v119;
  *(v7 + 120) = v120;
  v10 = v122;
  *(v7 + 136) = v121;
  *(v7 + 152) = v10;
  *(v7 + 168) = v123;
  *(v7 + 104) = v9;
  v95 = v5;
  v11 = *(v5 + 92);
  v12 = sub_1CAD4BFF4();
  v13 = *(*(v12 - 8) + 56);
  v93 = v11;
  v13(&v7[v11], 1, 1, v12);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *v7 = (*(v15 + 40))(v14, v15);
  *(v7 + 1) = v16;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  *(v7 + 2) = (*(v18 + 48))(v17, v18);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(v7 + 3) = (*(v20 + 56))(v19, v20);
  *(v7 + 4) = v21;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  *(v7 + 5) = (*(v23 + 64))(v22, v23);
  *(v7 + 6) = v24;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  *(v7 + 7) = (*(v26 + 72))(v25, v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 80))(&v108, v27, v28);
  v29 = v109;
  v30 = BYTE8(v109);
  *(v7 + 4) = v108;
  *(v7 + 10) = v29;
  v7[88] = v30;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v7[89] = (*(v32 + 88))(v31, v32) & 1;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  *(v7 + 12) = (*(v34 + 96))(v33, v34);
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v92 = *(v35 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = sub_1CAD4E4D4();
  v38 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v40 = &v90 - v39;
  v92(v36, v35);
  v41 = *(AssociatedTypeWitness - 8);
  if ((*(v41 + 48))(v40, 1, AssociatedTypeWitness) == 1)
  {
    (*(v38 + 8))(v40, v91);
    AssociatedConformanceWitness = 0;
    v116 = 0u;
    v117 = 0u;
  }

  else
  {
    *(&v117 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v116);
    (*(v41 + 32))(boxed_opaque_existential_1, v40, AssociatedTypeWitness);
  }

  sub_1CAB23A9C(&v116, &v106, &qword_1EC464C80);
  if (v107)
  {
    sub_1CAB284E0(&v106, &v108);
    sub_1CAB299C0(&v108, v97);
    EventSourceModelObject.init(_:)(v97, &v98);
    nullsub_1(&v98);
    __swift_destroy_boxed_opaque_existential_1(&v108);
    v113 = v103;
    v114 = v104;
    v115[0] = v105[0];
    *(v115 + 10) = *(v105 + 10);
    v110 = v100;
    v111 = v101;
    v112 = v102;
    v44 = v98;
    v43 = v99;
  }

  else
  {
    v114 = v125;
    v115[0] = v126[0];
    *(v115 + 10) = *(v126 + 10);
    v110 = v121;
    v111 = v122;
    v112 = v123;
    v113 = v124;
    v44 = v119;
    v43 = v120;
  }

  v108 = v44;
  v109 = v43;
  v45 = v95;
  v46 = &v7[*(v95 + 96)];
  v47 = &v7[*(v95 + 100)];
  sub_1CAB21B68(&v116, &qword_1EC464C80);
  v48 = *(v7 + 184);
  v49 = *(v7 + 216);
  v104 = *(v7 + 200);
  v105[0] = v49;
  *(v105 + 10) = *(v7 + 226);
  v50 = *(v7 + 120);
  v51 = *(v7 + 152);
  v100 = *(v7 + 136);
  v101 = v51;
  v102 = *(v7 + 168);
  v103 = v48;
  v98 = *(v7 + 104);
  v99 = v50;
  sub_1CAB21B68(&v98, &unk_1EC4679A0);
  v52 = v112;
  *(v7 + 184) = v113;
  v53 = v115[0];
  *(v7 + 200) = v114;
  *(v7 + 216) = v53;
  *(v7 + 226) = *(v115 + 10);
  v54 = v108;
  *(v7 + 120) = v109;
  v55 = v111;
  *(v7 + 136) = v110;
  *(v7 + 152) = v55;
  *(v7 + 168) = v52;
  *(v7 + 104) = v54;
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  v7[242] = (*(v57 + 112))(v56, v57) & 1;
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  v7[243] = (*(v59 + 120))(v58, v59) & 1;
  v60 = a1[3];
  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v60);
  v7[244] = (*(v61 + 128))(v60, v61) & 1;
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  v7[245] = (*(v63 + 136))(v62, v63) & 1;
  v64 = a1[3];
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v64);
  v7[246] = (*(v65 + 144))(v64, v65) & 1;
  v66 = a1[3];
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v66);
  v7[247] = (*(v67 + 152))(v66, v67) & 1;
  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  v7[248] = (*(v69 + 160))(v68, v69) & 1;
  v70 = a1[3];
  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v70);
  *(v7 + 32) = (*(v71 + 168))(v70, v71);
  *(v7 + 33) = v72;
  v73 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v73);
  *(v7 + 34) = (*(v74 + 176))(v73, v74);
  *(v7 + 35) = v75;
  v76 = a1[3];
  v77 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v76);
  *(v7 + 36) = (*(v77 + 184))(v76, v77);
  v78 = a1[3];
  v79 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v78);
  v80 = v94;
  (*(v79 + 192))(v78, v79);
  sub_1CABD4E34(v80, &v7[v93]);
  v81 = a1[3];
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v81);
  *v46 = (*(v82 + 200))(v81, v82);
  *(v46 + 1) = v83;
  v84 = a1[3];
  v85 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v84);
  *v47 = (*(v85 + 208))(v84, v85);
  *(v47 + 1) = v86;
  v87 = a1[3];
  v88 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v87);
  v7[*(v45 + 104)] = (*(v88 + 216))(v87, v88) & 1;
  sub_1CAC137BC(v7, v96);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CAC13820(v7);
}

uint64_t sub_1CAC137BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventCalendarModelObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC13820(uint64_t a1)
{
  v2 = type metadata accessor for EventCalendarModelObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventCalendarModelObject.hash(into:)(uint64_t a1)
{
  v3 = sub_1CAD4BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  sub_1CAD4E054();
  MEMORY[0x1CCAA7D10](*(v1 + 16));
  if (*(v1 + 32))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  sub_1CAD4E054();
  MEMORY[0x1CCAA7D10](*(v1 + 56));
  v9 = *(v1 + 88);
  if (v9 == 255)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v10 = *(v1 + 80);
    v47 = *(v1 + 64);
    *&v48 = v10;
    BYTE8(v48) = v9 & 1;
    sub_1CAD4EAA4();
    CalendarColor.hash(into:)();
  }

  sub_1CAD4EAA4();
  MEMORY[0x1CCAA7D10](*(v1 + 96));
  v11 = *(v1 + 184);
  v12 = *(v1 + 216);
  v45 = *(v1 + 200);
  v46[0] = v12;
  *(v46 + 10) = *(v1 + 226);
  v13 = *(v1 + 120);
  v14 = *(v1 + 152);
  v41 = *(v1 + 136);
  v42 = v14;
  v43 = *(v1 + 168);
  v44 = v11;
  v39 = *(v1 + 104);
  v40 = v13;
  v15 = *(v1 + 184);
  v16 = *(v1 + 216);
  v53 = *(v1 + 200);
  v54[0] = v16;
  *(v54 + 10) = *(v1 + 226);
  v17 = *(v1 + 120);
  v18 = *(v1 + 152);
  v49 = *(v1 + 136);
  v50 = v18;
  v51 = *(v1 + 168);
  v52 = v15;
  v47 = *(v1 + 104);
  v48 = v17;
  if (sub_1CABED4EC(&v47) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v33 = v45;
    v34[0] = v46[0];
    *(v34 + 10) = *(v46 + 10);
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v27 = v39;
    v28 = v40;
    sub_1CAD4EAA4();
    v35[6] = v45;
    v36[0] = v46[0];
    *(v36 + 10) = *(v46 + 10);
    v35[2] = v41;
    v35[3] = v42;
    v35[4] = v43;
    v35[5] = v44;
    v35[0] = v39;
    v35[1] = v40;
    sub_1CAC17240(v35, v37);
    EventSourceModelObject.hash(into:)(a1);
    v37[6] = v33;
    v38[0] = v34[0];
    *(v38 + 10) = *(v34 + 10);
    v37[2] = v29;
    v37[3] = v30;
    v37[4] = v31;
    v37[5] = v32;
    v37[0] = v27;
    v37[1] = v28;
    sub_1CAC1729C(v37);
  }

  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  if (*(v1 + 264))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (*(v1 + 280))
    {
LABEL_12:
      sub_1CAD4EAA4();
      sub_1CAD4E054();
      goto LABEL_15;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    if (*(v1 + 280))
    {
      goto LABEL_12;
    }
  }

  sub_1CAD4EAA4();
LABEL_15:
  v19 = *(v1 + 288);
  MEMORY[0x1CCAA7D10](*(v19 + 16));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 40;
    do
    {

      sub_1CAD4E054();

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  v22 = type metadata accessor for EventCalendarModelObject();
  sub_1CAB23A9C(v1 + v22[23], v8, &qword_1EC465450);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    v23 = v26;
    (*(v4 + 32))(v26, v8, v3);
    sub_1CAD4EAA4();
    sub_1CAC18334(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v4 + 8))(v23, v3);
  }

  if (*(v1 + v22[24] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  if (*(v1 + v22[25] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  return sub_1CAD4EAA4();
}

uint64_t EventCalendarModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventCalendarModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

unint64_t sub_1CAC13E60(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6C616E7265747865;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x4F79616C70736964;
      break;
    case 5:
      result = 0x726F6C6F63;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x53676E6972616873;
      break;
    case 8:
      result = 0x656372756F73;
      break;
    case 9:
      result = 0x4449656372756F73;
      break;
    case 10:
      result = 0x7263736275537369;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
    case 22:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x73696C6275507369;
      break;
    case 15:
      result = 0x764573776F6C6C61;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x774F646572616873;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CAC1410C()
{
  v1 = *(v0 + 24);

  return v1;
}

__n128 sub_1CAC14144@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u64[0];
  v3 = v1[5].n128_u8[8];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_1CAC14170@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v12[6] = *(v1 + 200);
  v13[0] = v3;
  *(v13 + 10) = *(v1 + 226);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v12[2] = *(v1 + 136);
  v12[3] = v5;
  v12[4] = *(v1 + 168);
  v12[5] = v2;
  v12[0] = *(v1 + 104);
  v12[1] = v4;
  v6 = *(v1 + 184);
  v7 = *(v1 + 216);
  a1[6] = *(v1 + 200);
  a1[7] = v7;
  *(a1 + 122) = *(v1 + 226);
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  a1[2] = *(v1 + 136);
  a1[3] = v9;
  a1[4] = *(v1 + 168);
  a1[5] = v6;
  *a1 = *(v1 + 104);
  a1[1] = v8;
  return sub_1CAB23A9C(v12, &v11, &unk_1EC4679A0);
}

uint64_t sub_1CAC1425C()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t sub_1CAC1428C()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t sub_1CAC142F8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 96));

  return v2;
}

uint64_t sub_1CAC14330(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));

  return v2;
}

uint64_t sub_1CAC14374()
{
  sub_1CAD4EA84();
  EventCalendarModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC143B8()
{
  sub_1CAD4EA84();
  EventCalendarModelObject.hash(into:)(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC143F4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CAC14400@<X0>(int8x16_t *a1@<X8>)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v13[6] = *(v1 + 200);
  *v14 = v4;
  *&v14[10] = *(v1 + 226);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v13[2] = *(v1 + 136);
  v13[3] = v6;
  v13[4] = *(v1 + 168);
  v13[5] = v3;
  v13[0] = *(v1 + 104);
  v13[1] = v5;
  result = sub_1CABED4EC(v13);
  v8.i32[0] = 1;
  v9.i32[0] = result;
  v10 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v9, v8), 0), xmmword_1CAD5D940, *v14);
  v11 = *&v14[16];
  v12 = *&v14[24];
  if (result == 1)
  {
    v11 = 0;
    v12 = 0;
  }

  *a1 = v10;
  a1[1].i64[0] = v11;
  a1[1].i16[4] = v12;
  return result;
}

uint64_t sub_1CAC144B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC17BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC144EC(uint64_t a1)
{
  v2 = sub_1CAC172F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC14528(uint64_t a1)
{
  v2 = sub_1CAC172F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventCalendarModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v87 = &v84 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C88);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v6 = &v84 - v5;
  v7 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 8) = 0;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  v9[88] = -1;
  sub_1CAC12E1C(v115);
  v10 = v115[6];
  *(v9 + 184) = v115[5];
  *(v9 + 200) = v10;
  *(v9 + 216) = v116[0];
  *(v9 + 226) = *(v116 + 10);
  v11 = v115[0];
  *(v9 + 120) = v115[1];
  v12 = v115[3];
  *(v9 + 136) = v115[2];
  *(v9 + 152) = v12;
  *(v9 + 168) = v115[4];
  *(v9 + 104) = v11;
  v13 = *(v7 + 92);
  v14 = sub_1CAD4BFF4();
  v15 = *(*(v14 - 8) + 56);
  v93 = v13;
  v15(&v9[v13], 1, 1, v14);
  v16 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CAC172F0();
  v90 = v6;
  v17 = v117;
  sub_1CAD4EAE4();
  if (!v17)
  {
    v86 = v7;
    v19 = v89;
    v18 = v90;
    LOBYTE(v107) = 0;
    v20 = v91;
    v21 = sub_1CAD4E884();
    v117 = 0;
    *v9 = v21;
    *(v9 + 1) = v22;
    type metadata accessor for EKCalendarType(0);
    LOBYTE(v104[0]) = 1;
    sub_1CAC18334(&qword_1EC464C98, type metadata accessor for EKCalendarType);
    v29 = v117;
    sub_1CAD4E8C4();
    if (v29)
    {
      v117 = v29;
      (*(v19 + 8))(v18, v20);
      v30 = 0;
      v85 = 0;
    }

    else
    {
      *(v9 + 2) = v107;
      LOBYTE(v107) = 2;
      *(v9 + 3) = sub_1CAD4E824();
      *(v9 + 4) = v31;
      v85 = v31;
      LOBYTE(v107) = 3;
      *(v9 + 5) = sub_1CAD4E884();
      *(v9 + 6) = v32;
      LOBYTE(v107) = 4;
      v33 = sub_1CAD4E854();
      v117 = 0;
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      *(v9 + 7) = v35;
      LOBYTE(v104[0]) = 5;
      sub_1CAC17344();
      v36 = v117;
      sub_1CAD4E874();
      if (v36)
      {
        v117 = v36;
LABEL_23:
        (*(v19 + 8))(v18, v20);
        v30 = 1;
        goto LABEL_11;
      }

      v37 = v108;
      v38 = BYTE8(v108);
      *(v9 + 4) = v107;
      *(v9 + 10) = v37;
      v9[88] = v38;
      LOBYTE(v107) = 6;
      v39 = sub_1CAD4E834();
      v117 = 0;
      v9[89] = (v39 == 2) | v39 & 1;
      type metadata accessor for EKSharingStatus(0);
      LOBYTE(v104[0]) = 7;
      sub_1CAC18334(&qword_1EC464CA8, type metadata accessor for EKSharingStatus);
      v40 = v117;
      sub_1CAD4E874();
      v117 = v40;
      if (v40)
      {
        goto LABEL_23;
      }

      v41 = v107;
      if (BYTE8(v107))
      {
        v41 = 0;
      }

      *(v9 + 12) = v41;
      v106 = 8;
      sub_1CAC17398();
      v42 = v117;
      sub_1CAD4E874();
      v117 = v42;
      if (v42)
      {
        goto LABEL_23;
      }

      v102 = v113;
      v103[0] = v114[0];
      *(v103 + 10) = *(v114 + 10);
      v98 = v109;
      v99 = v110;
      v100 = v111;
      v101 = v112;
      v96 = v107;
      v97 = v108;
      v43 = *(v9 + 200);
      v104[5] = *(v9 + 184);
      v104[6] = v43;
      *v105 = *(v9 + 216);
      *&v105[10] = *(v9 + 226);
      v44 = *(v9 + 120);
      v45 = *(v9 + 152);
      v104[2] = *(v9 + 136);
      v104[3] = v45;
      v104[4] = *(v9 + 168);
      v104[0] = *(v9 + 104);
      v104[1] = v44;
      sub_1CAB21B68(v104, &unk_1EC4679A0);
      v46 = v100;
      *(v9 + 184) = v101;
      v47 = v103[0];
      *(v9 + 200) = v102;
      *(v9 + 216) = v47;
      *(v9 + 226) = *(v103 + 10);
      v48 = v96;
      *(v9 + 120) = v97;
      v49 = v99;
      *(v9 + 136) = v98;
      *(v9 + 152) = v49;
      *(v9 + 168) = v46;
      *(v9 + 104) = v48;
      LOBYTE(v95) = 10;
      v50 = v117;
      v51 = sub_1CAD4E834();
      v117 = v50;
      if (!v50)
      {
        v9[242] = v51 & 1;
        LOBYTE(v95) = 11;
        v52 = v117;
        v53 = sub_1CAD4E834();
        v117 = v52;
        if (!v52)
        {
          v9[243] = v53 & 1;
          LOBYTE(v95) = 12;
          v54 = v117;
          v55 = sub_1CAD4E834();
          v117 = v54;
          if (!v54)
          {
            v9[244] = v55 & 1;
            LOBYTE(v95) = 13;
            v56 = v117;
            v57 = sub_1CAD4E834();
            v117 = v56;
            if (!v56)
            {
              v9[245] = v57 & 1;
              LOBYTE(v95) = 14;
              v58 = v117;
              v59 = sub_1CAD4E834();
              v117 = v58;
              if (!v58)
              {
                v9[246] = v59 & 1;
                LOBYTE(v95) = 15;
                v60 = v117;
                v61 = sub_1CAD4E834();
                v117 = v60;
                if (!v60)
                {
                  v9[247] = (v61 == 2) | v61 & 1;
                  LOBYTE(v95) = 16;
                  v62 = v117;
                  v63 = sub_1CAD4E834();
                  v117 = v62;
                  if (!v62)
                  {
                    v9[248] = (v63 == 2) | v63 & 1;
                    LOBYTE(v95) = 17;
                    v64 = v117;
                    v65 = sub_1CAD4E824();
                    v117 = v64;
                    if (!v64)
                    {
                      *(v9 + 32) = v65;
                      *(v9 + 33) = v66;
                      LOBYTE(v95) = 18;
                      v67 = v117;
                      v68 = sub_1CAD4E824();
                      v117 = v67;
                      if (v67 || (*(v9 + 34) = v68, *(v9 + 35) = v69, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730), v94 = 19, sub_1CAC17494(&qword_1EC464CB8), v70 = v117, sub_1CAD4E874(), (v117 = v70) != 0))
                      {
                        (*(v19 + 8))(v90, v91);
                        __swift_destroy_boxed_opaque_existential_1(v92);
                        v23 = 0;
                        v30 = 1;
                      }

                      else
                      {
                        v71 = MEMORY[0x1E69E7CC0];
                        if (v95)
                        {
                          v71 = v95;
                        }

                        *(v9 + 36) = v71;
                        LOBYTE(v95) = 20;
                        sub_1CAC18334(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
                        v72 = v117;
                        sub_1CAD4E874();
                        v117 = v72;
                        if (!v72)
                        {
                          sub_1CABD4E34(v87, &v9[v93]);
                          LOBYTE(v95) = 21;
                          v73 = v117;
                          v74 = sub_1CAD4E824();
                          v117 = v73;
                          if (!v73)
                          {
                            v76 = &v9[v86[24]];
                            *v76 = v74;
                            v76[1] = v75;
                            LOBYTE(v95) = 22;
                            v77 = v117;
                            v78 = sub_1CAD4E824();
                            v117 = v77;
                            if (!v77)
                            {
                              v80 = &v9[v86[25]];
                              *v80 = v78;
                              v80[1] = v79;
                              LOBYTE(v95) = 23;
                              v81 = v117;
                              v82 = sub_1CAD4E834();
                              v117 = v81;
                              if (!v81)
                              {
                                v83 = v82;
                                (*(v19 + 8))(v90, v91);
                                v9[v86[26]] = v83 & 1;
                                sub_1CAC137BC(v9, v88);
                                __swift_destroy_boxed_opaque_existential_1(v92);
                                return sub_1CAC13820(v9);
                              }
                            }
                          }
                        }

                        (*(v19 + 8))(v90, v91);
                        __swift_destroy_boxed_opaque_existential_1(v92);
                        v30 = 1;
                        v23 = 1;
                      }

LABEL_12:

                      if (!v30)
                      {
                        goto LABEL_5;
                      }

                      goto LABEL_4;
                    }
                  }
                }
              }
            }
          }
        }
      }

      (*(v19 + 8))(v90, v91);
      v30 = 1;
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v92);
    v23 = 0;
    goto LABEL_12;
  }

  v117 = v17;
  __swift_destroy_boxed_opaque_existential_1(v92);
  v23 = 0;
LABEL_4:

LABEL_5:
  v24 = *(v9 + 184);
  v25 = *(v9 + 216);
  v113 = *(v9 + 200);
  v114[0] = v25;
  *(v114 + 10) = *(v9 + 226);
  v26 = *(v9 + 120);
  v27 = *(v9 + 152);
  v109 = *(v9 + 136);
  v110 = v27;
  v111 = *(v9 + 168);
  v112 = v24;
  v107 = *(v9 + 104);
  v108 = v26;
  sub_1CAB21B68(&v107, &unk_1EC4679A0);

  if (v23)
  {
  }

  sub_1CAB21B68(&v9[v93], &qword_1EC465450);
}

uint64_t EventCalendarModelObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464CC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC172F0();
  sub_1CAD4EB04();
  LOBYTE(v31) = 0;
  sub_1CAD4E934();
  if (!v2)
  {
    *&v31 = *(v3 + 16);
    LOBYTE(v23) = 1;
    type metadata accessor for EKCalendarType(0);
    sub_1CAC18334(&qword_1EC464CC8, type metadata accessor for EKCalendarType);
    sub_1CAD4E984();
    LOBYTE(v31) = 2;
    sub_1CAD4E904();
    LOBYTE(v31) = 3;
    sub_1CAD4E934();
    LOBYTE(v31) = 4;
    sub_1CAD4E964();
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v31 = *(v3 + 64);
    *&v32 = v9;
    BYTE8(v32) = v10;
    LOBYTE(v23) = 5;
    sub_1CAC173EC();
    sub_1CAD4E924();
    LOBYTE(v31) = 6;
    sub_1CAD4E944();
    v40 = *(v3 + 96);
    v39 = 7;
    type metadata accessor for EKSharingStatus(0);
    sub_1CAC18334(&qword_1EC464CD8, type metadata accessor for EKSharingStatus);
    sub_1CAD4E984();
    v11 = *(v3 + 200);
    v36 = *(v3 + 184);
    v37 = v11;
    v38[0] = *(v3 + 216);
    *(v38 + 10) = *(v3 + 226);
    v12 = *(v3 + 120);
    v13 = *(v3 + 152);
    v33 = *(v3 + 136);
    v34 = v13;
    v35 = *(v3 + 168);
    v31 = *(v3 + 104);
    v32 = v12;
    v14 = *(v3 + 200);
    v28 = *(v3 + 184);
    v29 = v14;
    v30[0] = *(v3 + 216);
    *(v30 + 10) = *(v3 + 226);
    v15 = *(v3 + 120);
    v16 = *(v3 + 152);
    v25 = *(v3 + 136);
    v26 = v16;
    v27 = *(v3 + 168);
    v23 = *(v3 + 104);
    v24 = v15;
    v22 = 8;
    sub_1CAB23A9C(&v31, v20, &unk_1EC4679A0);
    sub_1CAC17440();
    sub_1CAD4E924();
    v20[6] = v29;
    *v21 = v30[0];
    *&v21[10] = *(v30 + 10);
    v20[2] = v25;
    v20[3] = v26;
    v20[4] = v27;
    v20[5] = v28;
    v20[0] = v23;
    v20[1] = v24;
    sub_1CAB21B68(v20, &unk_1EC4679A0);
    LOBYTE(v19) = 10;
    sub_1CAD4E944();
    LOBYTE(v19) = 11;
    sub_1CAD4E944();
    LOBYTE(v19) = 12;
    sub_1CAD4E944();
    LOBYTE(v19) = 13;
    sub_1CAD4E944();
    LOBYTE(v19) = 14;
    sub_1CAD4E944();
    LOBYTE(v19) = 15;
    sub_1CAD4E944();
    LOBYTE(v19) = 16;
    sub_1CAD4E944();
    LOBYTE(v19) = 17;
    sub_1CAD4E904();
    LOBYTE(v19) = 18;
    sub_1CAD4E904();
    v19 = *(v3 + 288);
    v18[7] = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
    sub_1CAC17494(&qword_1EC464CE8);
    sub_1CAD4E984();
    type metadata accessor for EventCalendarModelObject();
    LOBYTE(v19) = 20;
    sub_1CAD4BFF4();
    sub_1CAC18334(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    LOBYTE(v19) = 21;
    sub_1CAD4E904();
    LOBYTE(v19) = 22;
    sub_1CAD4E904();
    LOBYTE(v19) = 23;
    sub_1CAD4E944();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EventCalendarModelObject.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C88);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = type metadata accessor for EventCalendarModelObject();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  sub_1CAB299C0(a1, v60);
  EventCalendarModelObject.init(from:)(v60, v13);
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v7;
  v43 = a2;
  sub_1CAC17500(v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC172F0();
  sub_1CAD4EAE4();
  v41 = a1;
  LOBYTE(v60[0]) = 9;
  v17 = v6;
  v18 = sub_1CAD4E824();
  v20 = v42;
  if (v19)
  {
    v21 = *(v43 + 16);
    if (*(v21 + 16))
    {
      v40 = sub_1CAC1628C(v18, v19);
      v23 = v22;

      if (v23)
      {
        v24 = (*(v21 + 56) + 144 * v40);
        v44 = *v24;
        v25 = v24[3];
        v26 = v24[4];
        v27 = v24[2];
        v45 = v24[1];
        v46 = v27;
        v47 = v25;
        v48 = v26;
        v28 = v24[5];
        v29 = v24[6];
        v30 = v24[7];
        *(v51 + 10) = *(v24 + 122);
        v50 = v29;
        v51[0] = v30;
        v49 = v28;
        sub_1CAC17240(&v44, v60);
        (*(v20 + 8))(v9, v17);

        v58 = v50;
        v59[0] = v51[0];
        *(v59 + 10) = *(v51 + 10);
        v54 = v46;
        v55 = v47;
        v56 = v48;
        v57 = v49;
        v52 = v44;
        v53 = v45;
        nullsub_1(&v52);
        v31 = *(v15 + 184);
        v32 = *(v15 + 216);
        v60[6] = *(v15 + 200);
        v61[0] = v32;
        *(v61 + 10) = *(v15 + 226);
        v33 = *(v15 + 120);
        v34 = *(v15 + 152);
        v60[2] = *(v15 + 136);
        v60[3] = v34;
        v60[4] = *(v15 + 168);
        v60[5] = v31;
        v60[0] = *(v15 + 104);
        v60[1] = v33;
        sub_1CAB21B68(v60, &unk_1EC4679A0);
        v35 = v56;
        *(v15 + 184) = v57;
        v36 = v59[0];
        *(v15 + 200) = v58;
        *(v15 + 216) = v36;
        *(v15 + 226) = *(v59 + 10);
        v37 = v52;
        *(v15 + 120) = v53;
        v38 = v55;
        *(v15 + 136) = v54;
        *(v15 + 152) = v38;
        *(v15 + 168) = v35;
        *(v15 + 104) = v37;
LABEL_11:
        v39 = v62;
        goto LABEL_12;
      }

      (*(v20 + 8))(v9, v17);
    }

    else
    {

      (*(v20 + 8))(v9, v17);
    }

    goto LABEL_11;
  }

  (*(v42 + 8))(v9, v17);

  v39 = v62;
LABEL_12:
  sub_1CAC137BC(v15, v39);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1CAC13820(v15);
}

uint64_t EventCalendarModelObject.encode(to:configuration:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464CC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC137BC(v4, v13);
  if ((*(a2 + 16) & 1) == 0)
  {
    sub_1CAC12E1C(v31);
    v14 = *(v13 + 184);
    v15 = *(v13 + 216);
    v39 = *(v13 + 200);
    v40[0] = v15;
    *(v40 + 10) = *(v13 + 226);
    v16 = *(v13 + 120);
    v17 = *(v13 + 152);
    v35 = *(v13 + 136);
    v36 = v17;
    v37 = *(v13 + 168);
    v38 = v14;
    v33 = *(v13 + 104);
    v34 = v16;
    sub_1CAB21B68(&v33, &unk_1EC4679A0);
    v18 = v31[4];
    *(v13 + 184) = v31[5];
    v19 = v32[0];
    *(v13 + 200) = v31[6];
    *(v13 + 216) = v19;
    *(v13 + 226) = *(v32 + 10);
    v20 = v31[0];
    *(v13 + 120) = v31[1];
    v21 = v31[3];
    *(v13 + 136) = v31[2];
    *(v13 + 152) = v21;
    *(v13 + 168) = v18;
    *(v13 + 104) = v20;
  }

  EventCalendarModelObject.encode(to:)(a1);
  if (!v3)
  {
    v30 = v8;
    v41 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CAC172F0();
    sub_1CAD4EB04();
    v22 = *(v4 + 184);
    v23 = *(v4 + 216);
    v39 = *(v4 + 200);
    v40[0] = v23;
    *(v40 + 10) = *(v4 + 226);
    v24 = *(v4 + 120);
    v25 = *(v4 + 152);
    v35 = *(v4 + 136);
    v36 = v25;
    v37 = *(v4 + 168);
    v38 = v22;
    v33 = *(v4 + 104);
    v34 = v24;
    if (sub_1CABED4EC(&v33) != 1)
    {
    }

    v26 = v41;
    v27 = v30;
    LOBYTE(v31[0]) = 9;
    sub_1CAD4E904();
    (*(v27 + 8))(v10, v26);
  }

  return sub_1CAC13820(v13);
}

uint64_t EventCalendarModelObject.EncodingConfiguration.__allocating_init(includeSource:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t EventCalendarModelObject.DecodingConfiguration.__allocating_init(sourcesById:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t EventCalendarModelObject.DecodingConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1CAC1628C(uint64_t a1, uint64_t a2)
{
  sub_1CAD4EA84();
  sub_1CAD4E054();
  v4 = sub_1CAD4EAC4();

  return sub_1CAC1642C(a1, a2, v4);
}

unint64_t sub_1CAC16304(uint64_t a1)
{
  sub_1CAD4DF94();
  sub_1CAD4EA84();
  sub_1CAD4E054();
  v2 = sub_1CAD4EAC4();

  return sub_1CAC164E4(a1, v2);
}

unint64_t sub_1CAC16398(uint64_t a1, uint64_t a2)
{
  sub_1CAD4EA84();
  sub_1CAD4EAA4();
  if (a2)
  {
    sub_1CAD4E054();
  }

  v4 = sub_1CAD4EAC4();

  return sub_1CAC165E8(a1, a2, v4);
}

unint64_t sub_1CAC1642C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CAD4E9E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CAC164E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1CAD4DF94();
      v8 = v7;
      if (v6 == sub_1CAD4DF94() && v8 == v9)
      {
        break;
      }

      v11 = sub_1CAD4E9E4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1CAC165E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1CAD4E9E4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t _s13CalendarUIKit05EventA11ModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1CAD4E9E4() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_45;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  if (v14)
  {
    if (!v15 || (*(a1 + 24) != *(a2 + 24) || v14 != v15) && (sub_1CAD4E9E4() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v15)
  {
    goto LABEL_45;
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1CAD4E9E4() & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    goto LABEL_45;
  }

  v16 = *(a1 + 88);
  v17 = *(a2 + 88);
  if (v16 == 255)
  {
    if (v17 != 255)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  if (v17 == 255)
  {
    goto LABEL_45;
  }

  v18 = *(a1 + 64);
  v19 = *(a2 + 64);
  if ((v16 & 1) == 0)
  {
    if ((v17 & 1) != 0 || (sub_1CACA05C4(LOBYTE(v18), LOBYTE(v19)) & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_45;
  }

  v20 = 0;
  if (v18 == v19 && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
LABEL_28:
    if (*(a1 + 89) != *(a2 + 89) || *(a1 + 96) != *(a2 + 96))
    {
      goto LABEL_45;
    }

    v21 = *(a1 + 184);
    v22 = *(a1 + 216);
    v101[6] = *(a1 + 200);
    v102[0] = v22;
    *(v102 + 10) = *(a1 + 226);
    v23 = *(a1 + 120);
    v24 = *(a1 + 152);
    v101[2] = *(a1 + 136);
    v101[3] = v24;
    v25 = *(a1 + 168);
    v101[5] = v21;
    v101[4] = v25;
    v26 = *(a1 + 104);
    v101[1] = v23;
    v101[0] = v26;
    v27 = *(a2 + 184);
    v28 = *(a2 + 216);
    v103[6] = *(a2 + 200);
    v104[0] = v28;
    *(v104 + 10) = *(a2 + 226);
    v29 = *(a2 + 120);
    v30 = *(a2 + 152);
    v103[2] = *(a2 + 136);
    v103[3] = v30;
    v31 = *(a2 + 168);
    v103[5] = v27;
    v103[4] = v31;
    v32 = *(a2 + 104);
    v103[1] = v29;
    v103[0] = v32;
    v33 = *(a1 + 184);
    v34 = *(a1 + 216);
    v100[6] = *(a1 + 200);
    v100[7] = v34;
    *(&v100[7] + 10) = *(a1 + 226);
    v35 = *(a1 + 120);
    v36 = *(a1 + 152);
    v100[2] = *(a1 + 136);
    v100[3] = v36;
    v37 = *(a1 + 168);
    v100[5] = v33;
    v100[4] = v37;
    v38 = *(a1 + 104);
    v100[1] = v35;
    v100[0] = v38;
    *(&v100[16] + 10) = *(a2 + 226);
    v39 = *(a2 + 184);
    v40 = *(a2 + 216);
    v100[15] = *(a2 + 200);
    v100[16] = v40;
    v41 = *(a2 + 120);
    v42 = *(a2 + 152);
    v100[11] = *(a2 + 136);
    v100[12] = v42;
    v43 = *(a2 + 168);
    v100[14] = v39;
    v100[13] = v43;
    v44 = *(a2 + 104);
    v100[10] = v41;
    v100[9] = v44;
    v45 = *(a1 + 184);
    v46 = *(a1 + 216);
    v105[6] = *(a1 + 200);
    v106[0] = v46;
    *(v106 + 10) = *(a1 + 226);
    v47 = *(a1 + 120);
    v48 = *(a1 + 152);
    v105[2] = *(a1 + 136);
    v105[3] = v48;
    v105[4] = *(a1 + 168);
    v105[5] = v45;
    v105[0] = *(a1 + 104);
    v105[1] = v47;
    if (sub_1CABED4EC(v105) == 1)
    {
      v91[6] = v100[15];
      v91[7] = v100[16];
      *(&v91[7] + 10) = *(&v100[16] + 10);
      v91[2] = v100[11];
      v91[3] = v100[12];
      v91[4] = v100[13];
      v91[5] = v100[14];
      v91[0] = v100[9];
      v91[1] = v100[10];
      if (sub_1CABED4EC(v91) == 1)
      {
        v98 = v100[6];
        v99[0] = v100[7];
        *(v99 + 10) = *(&v100[7] + 10);
        v94 = v100[2];
        v95 = v100[3];
        v96 = v100[4];
        v97 = v100[5];
        v92 = v100[0];
        v93 = v100[1];
        sub_1CAB23A9C(v101, &v83, &unk_1EC4679A0);
        sub_1CAB23A9C(v103, &v83, &unk_1EC4679A0);
        sub_1CAB21B68(&v92, &unk_1EC4679A0);
        goto LABEL_38;
      }

      sub_1CAB23A9C(v101, &v92, &unk_1EC4679A0);
      sub_1CAB23A9C(v103, &v92, &unk_1EC4679A0);
    }

    else
    {
      v98 = v100[6];
      v99[0] = v100[7];
      *(v99 + 10) = *(&v100[7] + 10);
      v94 = v100[2];
      v95 = v100[3];
      v96 = v100[4];
      v97 = v100[5];
      v92 = v100[0];
      v93 = v100[1];
      v89 = v100[6];
      v90[0] = v100[7];
      *(v90 + 10) = *(&v100[7] + 10);
      v85 = v100[2];
      v86 = v100[3];
      v87 = v100[4];
      v88 = v100[5];
      v83 = v100[0];
      v84 = v100[1];
      v91[6] = v100[15];
      v91[7] = v100[16];
      *(&v91[7] + 10) = *(&v100[16] + 10);
      v91[2] = v100[11];
      v91[3] = v100[12];
      v91[4] = v100[13];
      v91[5] = v100[14];
      v91[0] = v100[9];
      v91[1] = v100[10];
      if (sub_1CABED4EC(v91) != 1)
      {
        v81 = v100[15];
        v82[0] = v100[16];
        *(v82 + 10) = *(&v100[16] + 10);
        v77 = v100[11];
        v78 = v100[12];
        v79 = v100[13];
        v80 = v100[14];
        v75 = v100[9];
        v76 = v100[10];
        sub_1CAB23A9C(v101, v73, &unk_1EC4679A0);
        sub_1CAB23A9C(v103, v73, &unk_1EC4679A0);
        sub_1CAB23A9C(&v92, v73, &unk_1EC4679A0);
        LODWORD(v70) = _s13CalendarUIKit22EventSourceModelObjectV2eeoiySbAC_ACtFZ_0(&v83, &v75);
        v71[6] = v81;
        v72[0] = v82[0];
        *(v72 + 10) = *(v82 + 10);
        v71[2] = v77;
        v71[3] = v78;
        v71[4] = v79;
        v71[5] = v80;
        v71[0] = v75;
        v71[1] = v76;
        sub_1CAC1729C(v71);
        v73[6] = v89;
        v74[0] = v90[0];
        *(v74 + 10) = *(v90 + 10);
        v73[2] = v85;
        v73[3] = v86;
        v73[4] = v87;
        v73[5] = v88;
        v73[0] = v83;
        v73[1] = v84;
        sub_1CAC1729C(v73);
        v81 = v100[6];
        v82[0] = v100[7];
        *(v82 + 10) = *(&v100[7] + 10);
        v77 = v100[2];
        v78 = v100[3];
        v79 = v100[4];
        v80 = v100[5];
        v75 = v100[0];
        v76 = v100[1];
        sub_1CAB21B68(&v75, &unk_1EC4679A0);
        if ((v70 & 1) == 0)
        {
          goto LABEL_45;
        }

LABEL_38:
        if (*(a1 + 242) != *(a2 + 242) || *(a1 + 243) != *(a2 + 243) || *(a1 + 244) != *(a2 + 244) || *(a1 + 245) != *(a2 + 245) || *(a1 + 246) != *(a2 + 246) || *(a1 + 247) != *(a2 + 247) || *(a1 + 248) != *(a2 + 248))
        {
          goto LABEL_45;
        }

        v50 = *(a1 + 264);
        v51 = *(a2 + 264);
        if (v50)
        {
          if (!v51 || (*(a1 + 256) != *(a2 + 256) || v50 != v51) && (sub_1CAD4E9E4() & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v51)
        {
          goto LABEL_45;
        }

        v52 = *(a1 + 280);
        v53 = *(a2 + 280);
        if (v52)
        {
          if (!v53 || (*(a1 + 272) != *(a2 + 272) || v52 != v53) && (sub_1CAD4E9E4() & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v53)
        {
          goto LABEL_45;
        }

        if ((sub_1CACA7BB4(*(a1 + 288), *(a2 + 288)) & 1) == 0)
        {
          goto LABEL_45;
        }

        v69 = type metadata accessor for EventCalendarModelObject();
        v54 = v69[23];
        v55 = *(v11 + 48);
        sub_1CAB23A9C(a1 + v54, v13, &qword_1EC465450);
        v70 = v55;
        sub_1CAB23A9C(a2 + v54, &v13[v55], &qword_1EC465450);
        v56 = *(v5 + 48);
        if (v56(v13, 1, v4) == 1)
        {
          if (v56(&v13[v70], 1, v4) == 1)
          {
            sub_1CAB21B68(v13, &qword_1EC465450);
LABEL_69:
            v59 = v69[24];
            v60 = (a1 + v59);
            v61 = *(a1 + v59 + 8);
            v62 = (a2 + v59);
            v63 = v62[1];
            if (v61)
            {
              if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_1CAD4E9E4() & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            else if (v63)
            {
              goto LABEL_45;
            }

            v64 = v69[25];
            v65 = (a1 + v64);
            v66 = *(a1 + v64 + 8);
            v67 = (a2 + v64);
            v68 = v67[1];
            if (v66)
            {
              if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1CAD4E9E4() & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_83:
              v20 = *(a1 + v69[26]) ^ *(a2 + v69[26]) ^ 1;
              return v20 & 1;
            }

            if (!v68)
            {
              goto LABEL_83;
            }

LABEL_45:
            v20 = 0;
            return v20 & 1;
          }
        }

        else
        {
          sub_1CAB23A9C(v13, v10, &qword_1EC465450);
          if (v56(&v13[v70], 1, v4) != 1)
          {
            (*(v5 + 32))(v7, &v13[v70], v4);
            sub_1CAC18334(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
            v57 = sub_1CAD4DED4();
            v58 = *(v5 + 8);
            v58(v7, v4);
            v58(v10, v4);
            sub_1CAB21B68(v13, &qword_1EC465450);
            if ((v57 & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_69;
          }

          (*(v5 + 8))(v10, v4);
        }

        sub_1CAB21B68(v13, &qword_1EC463DA0);
        goto LABEL_45;
      }

      v81 = v100[6];
      v82[0] = v100[7];
      *(v82 + 10) = *(&v100[7] + 10);
      v77 = v100[2];
      v78 = v100[3];
      v79 = v100[4];
      v80 = v100[5];
      v75 = v100[0];
      v76 = v100[1];
      sub_1CAB23A9C(v101, v73, &unk_1EC4679A0);
      sub_1CAB23A9C(v103, v73, &unk_1EC4679A0);
      sub_1CAB23A9C(&v92, v73, &unk_1EC4679A0);
      sub_1CAC1729C(&v75);
    }

    memcpy(v91, v100, 0x11AuLL);
    sub_1CAB21B68(v91, &qword_1EC464D30);
    goto LABEL_45;
  }

  return v20 & 1;
}

unint64_t sub_1CAC172F0()
{
  result = qword_1EC464C90;
  if (!qword_1EC464C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464C90);
  }

  return result;
}

unint64_t sub_1CAC17344()
{
  result = qword_1EC464CA0;
  if (!qword_1EC464CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464CA0);
  }

  return result;
}

unint64_t sub_1CAC17398()
{
  result = qword_1EC464CB0;
  if (!qword_1EC464CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464CB0);
  }

  return result;
}

unint64_t sub_1CAC173EC()
{
  result = qword_1EC464CD0;
  if (!qword_1EC464CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464CD0);
  }

  return result;
}

unint64_t sub_1CAC17440()
{
  result = qword_1EC464CE0;
  if (!qword_1EC464CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464CE0);
  }

  return result;
}

uint64_t sub_1CAC17494(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464730);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CAC17500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventCalendarModelObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAC17568()
{
  result = qword_1EC464CF0;
  if (!qword_1EC464CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464CF0);
  }

  return result;
}

uint64_t sub_1CAC175BC(uint64_t a1)
{
  result = sub_1CAC18334(&qword_1EC464CF8, type metadata accessor for EventCalendarModelObject);
  *(a1 + 16) = result;
  return result;
}

void sub_1CAC17690()
{
  type metadata accessor for EKCalendarType(319);
  if (v0 <= 0x3F)
  {
    sub_1CAC1787C(319, &qword_1EC461F88, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1CAC1787C(319, &qword_1EC4623C8, &type metadata for CalendarColor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for EKSharingStatus(319);
        if (v3 <= 0x3F)
        {
          sub_1CAC1787C(319, &qword_1EC4622C8, &type metadata for EventSourceModelObject, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1CAC1787C(319, &qword_1EC461F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1CABDB300();
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

void sub_1CAC1787C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for EventCalendarModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventCalendarModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CAC17AC0()
{
  result = qword_1EC464D08;
  if (!qword_1EC464D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464D08);
  }

  return result;
}

unint64_t sub_1CAC17B18()
{
  result = qword_1EC464D10;
  if (!qword_1EC464D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464D10);
  }

  return result;
}

unint64_t sub_1CAC17B70()
{
  result = qword_1EC464D18;
  if (!qword_1EC464D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464D18);
  }

  return result;
}

uint64_t sub_1CAC17BC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000004449 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xEC00000072656472 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CAD75460 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53676E6972616873 && a2 == 0xED00007375746174 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD75480 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001CAD754A0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CAD754C0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x73696C6275507369 && a2 == 0xEB00000000646568 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x764573776F6C6C61 && a2 == 0xEC00000073746E65 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD754E0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x774F646572616873 && a2 == 0xEF656D614E72656ELL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD75500 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD75520 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD75540 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD75560 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CAD75580 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001CAD755A0 == a2)
  {

    return 23;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_1CAC18334(unint64_t *a1, void (*a2)(uint64_t))
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

void EKEventIntegrationModelWrapper.color.getter(uint64_t *a1@<X8>)
{
  v3 = [*v1 color];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 providerIdentifier];
    v6 = sub_1CAD4DF94();
    v8 = v7;

    v9 = [v4 data];
    v10 = sub_1CAD4C024();
    v12 = v11;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
}

CalendarUIKit::EKEventIntegrationModelWrapper_optional __swiftcall EKEventIntegrationModelWrapper.init(_:)(EKEvent a1)
{
  isa = a1.super.super.super.isa;
  v3 = v1;
  v4 = [(objc_class *)a1.super.super.super.isa isIntegrationEvent];
  if (!v4)
  {

    isa = 0;
  }

  *v3 = isa;
  result.value.ekEvent.super.super.super.isa = v4;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1CAC18554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CAC185B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1CAC18630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v49 = a2;
  v56 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DA8) - 8;
  v7 = MEMORY[0x1EEE9AC00](v54);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DB0);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  sub_1CAD4CD04();
  v17 = CUIKBundle();
  v62 = sub_1CAD4D434();
  v63 = v18;
  v64 = v19 & 1;
  v65 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DB8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DC0);
  v22 = sub_1CAD4CDC4();
  v23 = sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0);
  v24 = sub_1CAC1AE74(&qword_1EC464DD0, MEMORY[0x1E697C5B8]);
  v72 = v21;
  v73 = v22;
  v74 = v23;
  v75 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1CAD4DBA4();
  v25 = objc_opt_self();
  v26 = [v25 cuik_tertiaryGroupedBackgroundColor];
  v62 = sub_1CAD4D7D4();
  *&v16[*(v12 + 44)] = sub_1CAD4DAA4();
  v57 = v49;
  v58 = v50 & 1;
  v59 = v51;
  v60 = v52;
  v61 = a1;
  sub_1CAD4CD04();
  v27 = CUIKBundle();
  v28 = sub_1CAD4D434();
  v30 = v29;
  LOBYTE(v23) = v31;
  v33 = v32;
  LOBYTE(v21) = sub_1CAD4D1E4();
  sub_1CAD4C5F4();
  LOBYTE(v72) = 0;
  v62 = v28;
  v63 = v30;
  v64 = v23 & 1;
  v65 = v33;
  v66 = v21;
  v67 = v34;
  v68 = v35;
  v69 = v36;
  v70 = v37;
  v71 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DE0);
  sub_1CAC1ADF0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DF0);
  v39 = type metadata accessor for FamilyCalendarColorSelectionView();
  v40 = sub_1CAB23B0C(&qword_1EC464DF8, &qword_1EC464DF0);
  v41 = sub_1CAC1AE74(&qword_1EC464E00, type metadata accessor for FamilyCalendarColorSelectionView);
  v72 = v38;
  v73 = v39;
  v74 = v40;
  v75 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1CAD4DBA4();
  v42 = [v25 cuik_tertiaryGroupedBackgroundColor];
  v62 = sub_1CAD4D7D4();
  *&v10[*(v54 + 44)] = sub_1CAD4DAA4();
  v43 = v53;
  sub_1CAB23A9C(v16, v53, &qword_1EC464DB0);
  v44 = v55;
  sub_1CAB23A9C(v10, v55, &qword_1EC464DA8);
  v45 = v56;
  sub_1CAB23A9C(v43, v56, &qword_1EC464DB0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E08);
  sub_1CAB23A9C(v44, v45 + *(v46 + 48), &qword_1EC464DA8);
  sub_1CAB21B68(v10, &qword_1EC464DA8);
  sub_1CAB21B68(v16, &qword_1EC464DB0);
  sub_1CAB21B68(v44, &qword_1EC464DA8);
  return sub_1CAB21B68(v43, &qword_1EC464DB0);
}

uint64_t sub_1CAC18CB0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1CAD4CDC4();
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D78);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DC0);
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v26 - v14;
  sub_1CAD4DEE4();
  v16 = CUIKBundle();
  sub_1CAD4C184();
  v17 = sub_1CAD4DFC4();
  v19 = v18;
  v20 = swift_projectBox();
  (*(v5 + 16))(v8, v20, v4);
  sub_1CAD4DC04();
  v21 = *(v5 + 8);
  v21(v8, v4);
  swift_getKeyPath();
  sub_1CAD4DC24();

  v21(v10, v4);
  v31 = v17;
  v32 = v19;
  sub_1CABA6054();
  sub_1CAD4DD24();
  v22 = v27;
  sub_1CAD4CDB4();
  sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0);
  sub_1CAC1AE74(&qword_1EC464DD0, MEMORY[0x1E697C5B8]);
  v23 = v26;
  v24 = v28;
  sub_1CAD4D594();
  (*(v29 + 8))(v22, v24);
  return (*(v13 + 8))(v15, v23);
}

uint64_t sub_1CAC19158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC1AE74(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1CAC19204(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CAC3671C(v1, v2);
}

uint64_t sub_1CAC19244@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E10);
  sub_1CAB23B0C(&qword_1EC464E18, &qword_1EC464E10);
  sub_1CAD4D9E4();
  v16 = a3;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D9B4();
  type metadata accessor for FamilyCalendarColorSelectionView();
  sub_1CAB23B0C(&qword_1EC464DF8, &qword_1EC464DF0);
  sub_1CAC1AE74(&qword_1EC464E00, type metadata accessor for FamilyCalendarColorSelectionView);
  sub_1CAD4D6E4();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1CAC194FC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_1CAD4DBF4();
  (*(v3 + 8))(v5, v2);
  v7 = v18;
  swift_getKeyPath();
  v18 = v7;
  sub_1CAC1AE74(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v8 = v7[9];
  v9 = v7[10];
  v10 = v7[11];
  v11 = v7[12];
  v12 = v7[13];

  v13 = sub_1CAD4D8F4();
  v14 = sub_1CAD4D304();
  KeyPath = swift_getKeyPath();
  result = sub_1CAD4D8B4();
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = 1;
  *(a1 + 48) = v13;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v14;
  *(a1 + 72) = result;
  return result;
}

uint64_t sub_1CAC19718(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1CAD4DEE4();
  v10 = CUIKBundle();
  sub_1CAD4C184();
  sub_1CAD4DFB4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2 & 1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  sub_1CABA6054();

  return sub_1CAD4DA04();
}

uint64_t sub_1CAC198E0(uint64_t a1, char a2)
{
  v4 = sub_1CAD4CC04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v8 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12;
  }

  swift_getKeyPath();
  v12 = a1;
  sub_1CAC1AE74(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v9 = *(a1 + 128);

  v9(0, 0);
}

uint64_t sub_1CAC19AB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a4;
  v77 = a3;
  v83 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = (v72 - v10);
  v11 = sub_1CAD4CC04();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D68);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v72 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D70);
  v80 = *(v81 - 8);
  v16 = MEMORY[0x1EEE9AC00](v81);
  v79 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v92 = v72 - v18;
  v19 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v78 = sub_1CAD4D8F4();
  v91 = sub_1CAD4D244();
  KeyPath = swift_getKeyPath();
  sub_1CAD4DEE4();
  v21 = CUIKBundle();
  sub_1CAD4C184();
  v89 = sub_1CAD4DFC4();
  v88 = v22;
  sub_1CAD4DEE4();
  v23 = CUIKBundle();
  sub_1CAD4C184();
  v87 = sub_1CAD4DFC4();
  v86 = v24;
  v85 = sub_1CAD4D1F4();
  sub_1CAD4C5F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v100) = 0;
  v33 = a2;
  if (a2)
  {
    v113 = a1;
    v34 = a1;
  }

  else
  {

    sub_1CAD4E3F4();
    v35 = v11;
    v36 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();
    v34 = a1;

    (*(v12 + 8))(v14, v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D78);
  v37 = swift_allocBox();
  type metadata accessor for CreateFamilyCalendarViewModel();
  v72[1] = sub_1CAC1AE74(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  v38 = sub_1CAD4DC14();
  MEMORY[0x1EEE9AC00](v38);
  v72[-6] = v37;
  v72[-5] = v34;
  LOBYTE(v69) = v33 & 1;
  LOBYTE(v70) = v77 & 1;
  v71 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D80);
  sub_1CAB23B0C(&qword_1EC464D88, &qword_1EC464D80);
  v39 = v73;
  sub_1CAD4D374();

  sub_1CAB23B0C(&qword_1EC464D90, &qword_1EC464D68);
  v40 = v92;
  v41 = v75;
  sub_1CAD4D664();
  (*(v74 + 8))(v39, v41);
  sub_1CAD4DEE4();
  v42 = CUIKBundle();
  sub_1CAD4C184();
  LOWORD(v71) = 2;
  v69 = "Button label for continue action in family flow";
  v70 = 47;
  v43 = sub_1CAD4DFB4();
  v45 = v44;
  v46 = sub_1CAD4C6D4();
  v47 = v82;
  *v82 = v46;
  *(v47 + 8) = v48 & 1;
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView();
  v50 = FamilyCalendarShareeView[5];
  *(v47 + v50) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  v51 = (v47 + FamilyCalendarShareeView[6]);
  *&v93 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642A0);
  sub_1CAD4D984();
  v52 = *(&v100 + 1);
  *v51 = v100;
  v51[1] = v52;
  v53 = FamilyCalendarShareeView[7];
  *&v93 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642B0);
  sub_1CAD4D984();
  *(v47 + v53) = v100;
  v54 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D98) + 36));
  *v54 = v43;
  v54[1] = v45;
  v55 = v80;
  v56 = *(v80 + 16);
  v57 = v79;
  v58 = v81;
  v56(v79, v40, v81);
  v59 = v84;
  sub_1CAB23A9C(v47, v84, &qword_1EC464D60);
  v60 = v78;
  *&v93 = v78;
  *(&v93 + 1) = KeyPath;
  *&v94 = v91;
  *(&v94 + 1) = v89;
  *&v95 = v88;
  *(&v95 + 1) = v87;
  *&v96 = v86;
  BYTE8(v96) = v85;
  HIDWORD(v96) = *&v114[3];
  *(&v96 + 9) = *v114;
  *&v97 = v26;
  *(&v97 + 1) = v28;
  *&v98 = v30;
  *(&v98 + 1) = v32;
  v99 = 0;
  v61 = v98;
  v62 = v83;
  *(v83 + 64) = v97;
  *(v62 + 80) = v61;
  *(v62 + 96) = 0;
  v63 = v94;
  *v62 = v93;
  *(v62 + 16) = v63;
  v64 = v96;
  *(v62 + 32) = v95;
  *(v62 + 48) = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DA0);
  v56((v62 + v65[12]), v57, v58);
  v66 = v62 + v65[16];
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_1CAB23A9C(v59, v62 + v65[20], &qword_1EC464D60);
  sub_1CAB23A9C(&v93, &v100, &qword_1EC4643B8);
  sub_1CAB21B68(v47, &qword_1EC464D60);
  v67 = *(v55 + 8);
  v67(v92, v58);
  sub_1CAB21B68(v59, &qword_1EC464D60);
  v67(v57, v58);
  *&v100 = v60;
  *(&v100 + 1) = KeyPath;
  v101 = v91;
  v102 = v89;
  v103 = v88;
  v104 = v87;
  v105 = v86;
  v106 = v85;
  *v107 = *v114;
  *&v107[3] = *&v114[3];
  v108 = v26;
  v109 = v28;
  v110 = v30;
  v111 = v32;
  v112 = 0;
  return sub_1CAB21B68(&v100, &qword_1EC4643B8);
}

uint64_t sub_1CAC1A5FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[0] = a4;
  v20[1] = a5;
  v8 = sub_1CAD4CF14();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463AE8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463A70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  sub_1CAD4CEF4();
  v20[4] = a1;
  v21 = a2 & 1;
  v22 = a3;
  v23 = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CAD4C6E4();
  v17 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  MEMORY[0x1CCAA6200](v12, v9, v17);
  (*(v10 + 8))(v12, v9);
  v24 = v9;
  v25 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1CCAA6200](v16, v13, OpaqueTypeConformance2);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1CAC1A8D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D38);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-v4];
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  *v5 = sub_1CAD4CD94();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D40);
  sub_1CAC19AB4(v6, v7, v8, v9, &v5[*(v10 + 44)]);
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D48);
  sub_1CAB23B0C(&qword_1EC464D50, &qword_1EC464D38);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A70);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
  v13 = sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
  v23 = v12;
  v24 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v11;
  v24 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CAD4D734();
  sub_1CAB21B68(v5, &qword_1EC464D38);
  v15 = sub_1CAD4C934();
  LOBYTE(v12) = sub_1CAD4D1F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464D58);
  v17 = a1 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v12;
  return result;
}

uint64_t sub_1CAC1ABA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC1AE74(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v5 = *(v3 + 72);
  v4 = *(v3 + 80);
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  v8 = *(v3 + 104);
  *a2 = *(v3 + 64);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
}

uint64_t sub_1CAC1AC7C()
{
  swift_getKeyPath();
  sub_1CAC1AE74(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C414();
}

uint64_t sub_1CAC1AD58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4CB14();
  *a1 = result;
  return result;
}

unint64_t sub_1CAC1ADF0()
{
  result = qword_1EC464DE8;
  if (!qword_1EC464DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464DE8);
  }

  return result;
}

uint64_t sub_1CAC1AE74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1CAC1AF80()
{
  result = qword_1EC464E20;
  if (!qword_1EC464E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464D48);
    sub_1CAB23B0C(&qword_1EC464D50, &qword_1EC464D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463AE8);
    sub_1CAB23B0C(&qword_1EC463AF0, &qword_1EC463AE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464E20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CAC1B1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CAC1B1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CAC1B25C()
{
  v1 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *(v0 + 32);
  if (v3 == 2 || (result = 0, v3 == 1))
  {
    sub_1CAD4DEE4();
    CUIKBundle();
    sub_1CAD4C184();
    return sub_1CAD4DFC4();
  }

  return result;
}

double sub_1CAC1B3E0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 4);
  v17 = v3;
  v4 = v14;

  v5 = sub_1CAC1B25C();
  v7 = v6;
  v18 = v17;
  sub_1CAC1B4C8(&v17, &v13);
  v8 = sub_1CAD4D8F4();
  v9 = sub_1CAD4D304();
  KeyPath = swift_getKeyPath();
  v11 = sub_1CAD4D8B4();
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  result = *&v18;
  *(a1 + 32) = v18;
  *(a1 + 48) = v8;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v9;
  *(a1 + 72) = v11;
  *(a1 + 80) = 0x4043000000000000;
  return result;
}

uint64_t sub_1CAC1B4C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4670E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAC1B538()
{
  result = qword_1EC464E28;
  if (!qword_1EC464E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464E28);
  }

  return result;
}

uint64_t sub_1CAC1B624(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_1CAD4DF94();

  return v3;
}

id EKCalendarModelWrapper.color.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 symbolicColorName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CAD4DF94();
    v8 = v7;

    if (v6 == sub_1CAD4DF94() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_1CAD4E9E4();

      if ((v11 & 1) == 0)
      {
        v17 = v6;
        v18 = v8;
        goto LABEL_12;
      }
    }
  }

  result = [v3 colorStringRaw];
  if (result)
  {
    v13 = result;
    v14 = sub_1CAD4DF94();
    v16 = v15;

    v17 = v14;
    v18 = v16;
LABEL_12:
    result = CalendarColor.init(_:)(v17, v18, &v21);
    v19 = v22;
    v20 = v23;
    *a1 = v21;
    *(a1 + 16) = v19;
    *(a1 + 24) = v20;
    return result;
  }

  __break(1u);
  return result;
}

id EKCalendarModelWrapper.source.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 source];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EKCalendarModelWrapper.sharedOwnerAddresses.getter()
{
  v1 = [*v0 sharedOwnerAddresses];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1CAD4E214();

  return v3;
}

uint64_t EKCalendarModelWrapper.ownerIdentityAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 ownerIdentityAddress];
  if (v3)
  {
    v4 = v3;
    sub_1CAD4BFC4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1CAD4BFF4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id EKCalendarModelWrapper.isDefaultCalendarForNewEvents.getter()
{
  v1 = *v0;
  v2 = [*v0 calendarIdentifier];
  v3 = sub_1CAD4DF94();
  v5 = v4;

  result = [v1 eventStore];
  if (result)
  {
    v7 = result;
    v8 = [result defaultCalendarForNewEvents];

    if (v8)
    {
      v9 = [v8 calendarIdentifier];

      v10 = sub_1CAD4DF94();
      v12 = v11;

      if (v3 == v10 && v5 == v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_1CAD4E9E4();
      }
    }

    else
    {
      v14 = 0;
    }

    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void EKCalendarModelWrapper.constraints.getter(void *a1@<X8>)
{
  v3 = [*v1 source];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 constraints];

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1CAC1BC1C()
{
  result = qword_1EDA5F7A0;
  if (!qword_1EDA5F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA5F7A0);
  }

  return result;
}

uint64_t sub_1CAC1BCA4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_1CAD4DF94();

  return v5;
}

id sub_1CAC1BD58@<X0>(void *a1@<X8>)
{
  result = [*v1 source];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC1BEB0()
{
  v1 = [*v0 sharedOwnerAddresses];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1CAD4E214();

  return v3;
}

uint64_t sub_1CAC1BF10@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 ownerIdentityAddress];
  if (v3)
  {
    v4 = v3;
    sub_1CAD4BFC4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1CAD4BFF4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

unint64_t sub_1CAC1BFD0(uint64_t a1)
{
  result = sub_1CAC1BFF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CAC1BFF8()
{
  result = qword_1EDA5F798;
  if (!qword_1EDA5F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA5F798);
  }

  return result;
}

void sub_1CAC1C04C(uint64_t *a1@<X8>)
{
  v3 = [*v1 calendarIdentifier];
  v4 = sub_1CAD4DF94();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_1CAC1C0B0(void *a1@<X8>)
{
  v3 = [*v1 source];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 constraints];

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CAC1C13C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CAD4E604())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1CCAA7940](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1CAD4E734();
        sub_1CAD4E764();
        v4 = v15;
        sub_1CAD4E774();
        sub_1CAD4E744();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t sub_1CAC1C2E8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EventAttendeeModelObject(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1CAC29A3C(a3 + v15 + v16 * v13, v12, type metadata accessor for EventAttendeeModelObject);
      v17 = a1(v12);
      if (v3)
      {
        sub_1CAC29750(v12, type metadata accessor for EventAttendeeModelObject);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1CAC297D8(v12, v24, type metadata accessor for EventAttendeeModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9E14(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1CACB9E14(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1CAC297D8(v24, v14 + v15 + v20 * v16, type metadata accessor for EventAttendeeModelObject);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1CAC29750(v12, type metadata accessor for EventAttendeeModelObject);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1CAC1C574(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EventCalendarModelObject();
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1CAC29A3C(a3 + v15 + v16 * v13, v12, type metadata accessor for EventCalendarModelObject);
      v17 = a1(v12);
      if (v3)
      {
        sub_1CAC29750(v12, type metadata accessor for EventCalendarModelObject);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1CAC297D8(v12, v24, type metadata accessor for EventCalendarModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9E98(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1CACB9E98(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1CAC297D8(v24, v14 + v15 + v20 * v16, type metadata accessor for EventCalendarModelObject);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1CAC29750(v12, type metadata accessor for EventCalendarModelObject);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1CAC1C800(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1CACB9F1C(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1CACB9F1C((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1CAC1C978(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EventAttachmentModelObject();
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1CAC29A3C(a3 + v15 + v16 * v13, v12, type metadata accessor for EventAttachmentModelObject);
      v17 = a1(v12);
      if (v3)
      {
        sub_1CAC29750(v12, type metadata accessor for EventAttachmentModelObject);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1CAC297D8(v12, v24, type metadata accessor for EventAttachmentModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9F74(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1CACB9F74(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1CAC297D8(v24, v14 + v15 + v20 * v16, type metadata accessor for EventAttachmentModelObject);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1CAC29750(v12, type metadata accessor for EventAttachmentModelObject);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1CAC1CC04(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1CABD3CDC(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1CABD3D54(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9E58(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1CACB9E58((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_1CABD3D54(v15, (v9 + 32 * v13 + 32));
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v16);
      }

      ++v7;
      v8 += 32;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

size_t sub_1CAC1CD88(void *a1)
{
  v2 = type metadata accessor for EventCalendarModelObject();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 calendarsForEntityType_];
  sub_1CABD4070(0, &qword_1EC464EA8);
  v7 = sub_1CAD4E214();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1CAD4E604();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1CACB9E98(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v17;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1CCAA7940](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v16[3] = &type metadata for EKCalendarModelWrapper;
      v16[4] = sub_1CAC29840();
      v16[0] = v13;
      EventCalendarModelObject.init(_:)(v16, v5);
      v17 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1CACB9E98(v14 > 1, v15 + 1, 1);
        v11 = v17;
      }

      ++v10;
      *(v11 + 16) = v15 + 1;
      sub_1CAC297D8(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for EventCalendarModelObject);
    }

    while (v8 != v10);

    return v11;
  }

  __break(1u);
  return result;
}

void sub_1CAC1CFD0(uint64_t a1)
{
  v3 = sub_1CAD4C0F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v21);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (!v9)
  {
    return;
  }

  v20 = v3;
  v18[1] = v1;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CAD4E754();
  v10 = *(type metadata accessor for EventAlarmModelObject() - 8);
  v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v19 = (v4 + 32);
  v12 = (v4 + 8);
  v13 = *(v10 + 72);
  while (1)
  {
    sub_1CAC29A3C(v11, v8, type metadata accessor for EventAlarmTrigger);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    if (![objc_allocWithZone(MEMORY[0x1E6966950]) initWithRelativeOffset_])
    {
      goto LABEL_10;
    }

LABEL_4:
    sub_1CAD4E734();
    sub_1CAD4E764();
    sub_1CAD4E774();
    sub_1CAD4E744();
    v11 += v13;
    if (!--v9)
    {
      return;
    }
  }

  v14 = v20;
  (*v19)(v6, v8, v20);
  v15 = objc_allocWithZone(MEMORY[0x1E6966950]);
  v16 = sub_1CAD4C084();
  v17 = [v15 initWithAbsoluteDate_];

  if (v17)
  {
    (*v12)(v6, v14);
    goto LABEL_4;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_1CAC1D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[612] = a4;
  v4[611] = a3;
  v4[610] = a2;
  v4[609] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  v4[613] = swift_task_alloc();
  v4[614] = swift_task_alloc();
  v5 = type metadata accessor for EventAttendeeModelObject(0);
  v4[615] = v5;
  v4[616] = *(v5 - 8);
  v4[617] = swift_task_alloc();
  v4[618] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  v4[619] = swift_task_alloc();
  v6 = type metadata accessor for EventAttachmentModelObject();
  v4[620] = v6;
  v4[621] = *(v6 - 8);
  v4[622] = swift_task_alloc();
  v4[623] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  v4[624] = swift_task_alloc();
  v4[625] = swift_task_alloc();
  v7 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v4[626] = v7;
  v4[627] = *(v7 - 8);
  v4[628] = swift_task_alloc();
  v4[629] = swift_task_alloc();
  v4[630] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679D0);
  v4[631] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  v4[632] = swift_task_alloc();
  v4[633] = swift_task_alloc();
  v4[634] = swift_task_alloc();
  v4[635] = swift_task_alloc();
  v4[636] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679E0);
  v4[637] = swift_task_alloc();
  v4[638] = swift_task_alloc();
  v8 = sub_1CAD4BDC4();
  v4[639] = v8;
  v4[640] = *(v8 - 8);
  v4[641] = swift_task_alloc();
  v9 = sub_1CAD4C1E4();
  v4[642] = v9;
  v4[643] = *(v9 - 8);
  v4[644] = swift_task_alloc();
  v10 = sub_1CAD4C374();
  v4[645] = v10;
  v4[646] = *(v10 - 8);
  v4[647] = swift_task_alloc();
  v4[648] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E40);
  v4[649] = swift_task_alloc();
  v4[650] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v4[651] = swift_task_alloc();
  v4[652] = swift_task_alloc();
  v4[653] = swift_task_alloc();
  v4[654] = swift_task_alloc();
  v4[655] = swift_task_alloc();
  v4[656] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v4[657] = swift_task_alloc();
  v4[658] = swift_task_alloc();
  v4[659] = swift_task_alloc();
  v4[660] = swift_task_alloc();
  v4[661] = swift_task_alloc();
  v4[662] = swift_task_alloc();
  v11 = sub_1CAD4C404();
  v4[663] = v11;
  v4[664] = *(v11 - 8);
  v4[665] = swift_task_alloc();
  v4[666] = swift_task_alloc();
  v4[667] = swift_task_alloc();
  v4[668] = swift_task_alloc();
  v4[669] = swift_task_alloc();
  v4[670] = swift_task_alloc();
  v12 = sub_1CAD4C0F4();
  v4[671] = v12;
  v4[672] = *(v12 - 8);
  v4[673] = swift_task_alloc();
  v4[674] = swift_task_alloc();
  v4[675] = swift_task_alloc();
  v4[676] = swift_task_alloc();
  v4[677] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v4[678] = swift_task_alloc();
  v4[679] = swift_task_alloc();
  v4[680] = swift_task_alloc();
  v13 = sub_1CAD4BFF4();
  v4[681] = v13;
  v4[682] = *(v13 - 8);
  v4[683] = swift_task_alloc();
  v4[684] = swift_task_alloc();
  v4[685] = swift_task_alloc();
  v14 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v4[686] = v14;
  v4[687] = *(v14 - 8);
  v4[688] = swift_task_alloc();
  v15 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v4[689] = v15;
  v4[690] = *(v15 - 8);
  v4[691] = swift_task_alloc();
  v4[692] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  v4[693] = swift_task_alloc();
  v4[694] = swift_task_alloc();
  v4[695] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E48);
  v4[696] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CAC1DB40, 0, 0);
}

void sub_1CAC1DB40()
{
  v636 = v0;
  v1 = [*(v0 + 4872) isEditable];
  *(v0 + 5608) = v1;
  v609 = v1;
  if ((v1 & 1) == 0 && (sub_1CAC238E0() & 1) == 0)
  {
    sub_1CAC23A1C();
    swift_allocError();
    v89 = 1;
    goto LABEL_284;
  }

  v2 = *(v0 + 4888);
  v3 = *(v0 + 4880);
  if ((*(v3 + 32) != *(v2 + 32) || *(v3 + 40) != *(v2 + 40)) && (sub_1CAD4E9E4() & 1) == 0)
  {
    if (!v609)
    {
      goto LABEL_283;
    }

    v4 = *(v0 + 4872);
    v5 = sub_1CAD4DF54();
    [v4 setTitle_];
  }

  v6 = *(v0 + 4888);
  v7 = *(v0 + 4880);
  v8 = type metadata accessor for EventModelObject();
  *(v0 + 5576) = v8;
  v9 = (v7 + *(v8 + 76));
  v10 = *v9;
  v11 = v9[2];
  *(v0 + 4608) = v9[1];
  *(v0 + 4624) = v11;
  *(v0 + 4592) = v10;
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[6];
  *(v0 + 4672) = v9[5];
  *(v0 + 4688) = v14;
  *(v0 + 4640) = v12;
  *(v0 + 4656) = v13;
  v15 = v9[7];
  v16 = v9[8];
  v17 = v9[10];
  *(v0 + 4736) = v9[9];
  *(v0 + 4752) = v17;
  *(v0 + 4704) = v15;
  *(v0 + 4720) = v16;
  v18 = (v6 + *(v8 + 76));
  v19 = *v18;
  v20 = v18[2];
  *(v0 + 1264) = v18[1];
  *(v0 + 1280) = v20;
  *(v0 + 1248) = v19;
  v21 = v18[3];
  v22 = v18[4];
  v23 = v18[6];
  *(v0 + 1328) = v18[5];
  *(v0 + 1344) = v23;
  *(v0 + 1296) = v21;
  *(v0 + 1312) = v22;
  v24 = v18[7];
  v25 = v18[8];
  v26 = v18[10];
  *(v0 + 1392) = v18[9];
  *(v0 + 1408) = v26;
  *(v0 + 1360) = v24;
  *(v0 + 1376) = v25;
  v27 = v9[9];
  __src[8] = v9[8];
  __src[9] = v27;
  v28 = v9[5];
  __src[4] = v9[4];
  __src[5] = v28;
  v29 = v9[7];
  __src[6] = v9[6];
  __src[7] = v29;
  v30 = v9[1];
  __src[0] = *v9;
  __src[1] = v30;
  v31 = v9[3];
  v33 = *v9;
  v32 = v9[1];
  __src[2] = v9[2];
  v34 = __src[2];
  __src[3] = v31;
  v35 = v18[8];
  v36 = v18[9];
  v37 = v18[6];
  __src[18] = v18[7];
  __src[19] = v35;
  v38 = v18[10];
  __src[20] = v36;
  __src[21] = v38;
  v39 = v18[4];
  v40 = v18[5];
  v41 = v18[2];
  __src[14] = v18[3];
  __src[15] = v39;
  v42 = v9[10];
  __src[16] = v40;
  __src[17] = v37;
  v43 = *v18;
  v44 = v18[1];
  __src[10] = v42;
  __src[11] = v43;
  __src[12] = v44;
  __src[13] = v41;
  *(v0 + 384) = v32;
  *(v0 + 400) = v34;
  *(v0 + 368) = v33;
  v45 = v9[3];
  v46 = v9[4];
  v47 = v9[6];
  *(v0 + 448) = v9[5];
  *(v0 + 464) = v47;
  *(v0 + 416) = v45;
  *(v0 + 432) = v46;
  v48 = v9[7];
  v49 = v9[8];
  v50 = v9[10];
  *(v0 + 512) = v9[9];
  *(v0 + 528) = v50;
  *(v0 + 480) = v48;
  *(v0 + 496) = v49;
  v604 = v8;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 368) == 1)
  {
    v51 = __src[20];
    *(v0 + 848) = __src[19];
    *(v0 + 864) = v51;
    *(v0 + 880) = __src[21];
    v52 = __src[16];
    *(v0 + 784) = __src[15];
    *(v0 + 800) = v52;
    v53 = __src[18];
    *(v0 + 816) = __src[17];
    *(v0 + 832) = v53;
    v54 = __src[12];
    *(v0 + 720) = __src[11];
    *(v0 + 736) = v54;
    v55 = __src[14];
    *(v0 + 752) = __src[13];
    *(v0 + 768) = v55;
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 720) == 1)
    {
      v56 = __src[9];
      *(v0 + 2960) = __src[8];
      *(v0 + 2976) = v56;
      *(v0 + 2992) = __src[10];
      v57 = __src[5];
      *(v0 + 2896) = __src[4];
      *(v0 + 2912) = v57;
      v58 = __src[7];
      *(v0 + 2928) = __src[6];
      *(v0 + 2944) = v58;
      v59 = __src[1];
      *(v0 + 2832) = __src[0];
      *(v0 + 2848) = v59;
      v60 = __src[3];
      *(v0 + 2864) = __src[2];
      *(v0 + 2880) = v60;
      sub_1CAB23A9C(v0 + 4592, v0 + 3008, &qword_1EC463C00);
      sub_1CAB23A9C(v0 + 1248, v0 + 3184, &qword_1EC463C00);
      v61 = v0 + 2832;
LABEL_34:
      sub_1CAB21B68(v61, &qword_1EC463C00);
      goto LABEL_35;
    }

    sub_1CAB23A9C(v0 + 4592, v0 + 896, &qword_1EC463C00);
    sub_1CAB23A9C(v0 + 1248, v0 + 1072, &qword_1EC463C00);
    goto LABEL_15;
  }

  v62 = __src[9];
  v63 = __src[8];
  v64 = __src[9];
  *(v0 + 3664) = __src[8];
  *(v0 + 3680) = v62;
  v65 = __src[10];
  *(v0 + 3696) = __src[10];
  v66 = __src[5];
  v67 = __src[4];
  v68 = __src[5];
  *(v0 + 3600) = __src[4];
  *(v0 + 3616) = v66;
  v69 = __src[7];
  v71 = __src[6];
  v70 = __src[7];
  *(v0 + 3632) = __src[6];
  *(v0 + 3648) = v69;
  v72 = __src[1];
  v73 = __src[0];
  v74 = __src[1];
  *(v0 + 3536) = __src[0];
  *(v0 + 3552) = v72;
  v75 = __src[3];
  v77 = __src[2];
  v76 = __src[3];
  *(v0 + 3568) = __src[2];
  *(v0 + 3584) = v75;
  v622 = v63;
  v623 = v64;
  v624 = v65;
  v618 = v67;
  v619 = v68;
  v620 = v71;
  v621 = v70;
  v614 = v73;
  v615 = v74;
  v616 = v77;
  v617 = v76;
  v78 = __src[20];
  *(v0 + 3488) = __src[19];
  *(v0 + 3504) = v78;
  *(v0 + 3520) = __src[21];
  v79 = __src[16];
  *(v0 + 3424) = __src[15];
  *(v0 + 3440) = v79;
  v80 = __src[18];
  *(v0 + 3456) = __src[17];
  *(v0 + 3472) = v80;
  v81 = __src[12];
  *(v0 + 3360) = __src[11];
  *(v0 + 3376) = v81;
  v82 = __src[14];
  *(v0 + 3392) = __src[13];
  *(v0 + 3408) = v82;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 3360) == 1)
  {
    v83 = __src[9];
    *(v0 + 3840) = __src[8];
    *(v0 + 3856) = v83;
    *(v0 + 3872) = __src[10];
    v84 = __src[5];
    *(v0 + 3776) = __src[4];
    *(v0 + 3792) = v84;
    v85 = __src[7];
    *(v0 + 3808) = __src[6];
    *(v0 + 3824) = v85;
    v86 = __src[1];
    *(v0 + 3712) = __src[0];
    *(v0 + 3728) = v86;
    v87 = __src[3];
    *(v0 + 3744) = __src[2];
    *(v0 + 3760) = v87;
    sub_1CAB23A9C(v0 + 4592, v0 + 3888, &qword_1EC463C00);
    sub_1CAB23A9C(v0 + 1248, v0 + 4064, &qword_1EC463C00);
    sub_1CAB23A9C(v0 + 3536, v0 + 4240, &qword_1EC463C00);
    sub_1CABD3C78(v0 + 3712);
LABEL_15:
    memcpy((v0 + 16), __src, 0x160uLL);
    sub_1CAB21B68(v0 + 16, &qword_1EC467A00);
LABEL_16:
    if (!v609)
    {
      goto LABEL_283;
    }

    v90 = *v9;
    v91 = v9[2];
    *(v0 + 1616) = v9[1];
    *(v0 + 1632) = v91;
    *(v0 + 1600) = v90;
    v92 = v9[3];
    v93 = v9[4];
    v94 = v9[6];
    *(v0 + 1680) = v9[5];
    *(v0 + 1696) = v94;
    *(v0 + 1648) = v92;
    *(v0 + 1664) = v93;
    v95 = v9[7];
    v96 = v9[8];
    v97 = v9[10];
    *(v0 + 1744) = v9[9];
    *(v0 + 1760) = v97;
    *(v0 + 1712) = v95;
    *(v0 + 1728) = v96;
    v98 = *v9;
    v99 = v9[2];
    *(v0 + 1440) = v9[1];
    *(v0 + 1456) = v99;
    *(v0 + 1424) = v98;
    v100 = v9[3];
    v101 = v9[4];
    v102 = v9[6];
    *(v0 + 1504) = v9[5];
    *(v0 + 1520) = v102;
    *(v0 + 1472) = v100;
    *(v0 + 1488) = v101;
    v103 = v9[7];
    v104 = v9[8];
    v105 = v9[10];
    *(v0 + 1568) = v9[9];
    *(v0 + 1584) = v105;
    *(v0 + 1536) = v103;
    *(v0 + 1552) = v104;
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v0 + 1424) == 1)
    {
      [*(v0 + 4872) setStructuredLocation_];
      goto LABEL_35;
    }

    v122 = *(v0 + 1744);
    *(v0 + 2608) = *(v0 + 1728);
    *(v0 + 2624) = v122;
    *(v0 + 2640) = *(v0 + 1760);
    v123 = *(v0 + 1680);
    *(v0 + 2544) = *(v0 + 1664);
    *(v0 + 2560) = v123;
    v124 = *(v0 + 1712);
    *(v0 + 2576) = *(v0 + 1696);
    *(v0 + 2592) = v124;
    v125 = *(v0 + 1616);
    *(v0 + 2480) = *(v0 + 1600);
    *(v0 + 2496) = v125;
    v126 = *(v0 + 1648);
    *(v0 + 2512) = *(v0 + 1632);
    *(v0 + 2528) = v126;
    v127 = objc_allocWithZone(MEMORY[0x1E6966B08]);
    sub_1CABD3C1C(v0 + 2480, v0 + 2656);
    v128 = [v127 init];
    if (*(v0 + 1432))
    {

      v129 = sub_1CAD4DF54();
    }

    else
    {
      v129 = 0;
    }

    [v128 setTitle_];

    if (*(v0 + 1464))
    {

      v130 = sub_1CAD4DF54();
    }

    else
    {
      v130 = 0;
    }

    [v128 setAddress_];

    [v128 setGeoLocation_];
    [v128 setRadius_];
    [v128 setImprecise_];
    if (*(v0 + 1480))
    {

      v131 = sub_1CAD4DF54();
    }

    else
    {
      v131 = 0;
    }

    [v128 setContactLabel_];

    v132 = *(v0 + 1496);
    if (v132 >> 60 == 15)
    {
      v133 = 0;
    }

    else
    {
      v134 = *(v0 + 1488);
      sub_1CABB8BB4(v134, *(v0 + 1496));
      v133 = sub_1CAD4C014();
      sub_1CABB8C08(v134, v132);
    }

    v135 = *(v0 + 4872);
    [v128 setMapKitHandle_];

    [v135 setStructuredLocation_];
    v61 = v0 + 1600;
    goto LABEL_34;
  }

  v633 = __src[19];
  v634 = __src[20];
  v635 = __src[21];
  v629 = __src[15];
  v630 = __src[16];
  v631 = __src[17];
  v632 = __src[18];
  v625 = __src[11];
  v626 = __src[12];
  v627 = __src[13];
  v628 = __src[14];
  sub_1CAB23A9C(v0 + 4592, v0 + 2128, &qword_1EC463C00);
  sub_1CAB23A9C(v0 + 1248, v0 + 1952, &qword_1EC463C00);
  sub_1CAB23A9C(v0 + 3536, v0 + 1776, &qword_1EC463C00);
  v106 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v614, &v625);
  v107 = v634;
  *(v0 + 2432) = v633;
  *(v0 + 2448) = v107;
  *(v0 + 2464) = v635;
  v108 = v630;
  *(v0 + 2368) = v629;
  *(v0 + 2384) = v108;
  v109 = v632;
  *(v0 + 2400) = v631;
  *(v0 + 2416) = v109;
  v110 = v626;
  *(v0 + 2304) = v625;
  *(v0 + 2320) = v110;
  v111 = v628;
  *(v0 + 2336) = v627;
  *(v0 + 2352) = v111;
  sub_1CABD3C78(v0 + 2304);
  v112 = v623;
  *(v0 + 672) = v622;
  *(v0 + 688) = v112;
  *(v0 + 704) = v624;
  v113 = v619;
  *(v0 + 608) = v618;
  *(v0 + 624) = v113;
  v114 = v621;
  *(v0 + 640) = v620;
  *(v0 + 656) = v114;
  v115 = v615;
  *(v0 + 544) = v614;
  *(v0 + 560) = v115;
  v116 = v617;
  *(v0 + 576) = v616;
  *(v0 + 592) = v116;
  sub_1CABD3C78(v0 + 544);
  v117 = __src[9];
  *(v0 + 4544) = __src[8];
  *(v0 + 4560) = v117;
  *(v0 + 4576) = __src[10];
  v118 = __src[5];
  *(v0 + 4480) = __src[4];
  *(v0 + 4496) = v118;
  v119 = __src[7];
  *(v0 + 4512) = __src[6];
  *(v0 + 4528) = v119;
  v120 = __src[1];
  *(v0 + 4416) = __src[0];
  *(v0 + 4432) = v120;
  v121 = __src[3];
  *(v0 + 4448) = __src[2];
  *(v0 + 4464) = v121;
  sub_1CAB21B68(v0 + 4416, &qword_1EC463C00);
  if ((v106 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_35:
  v136 = *(v0 + 5568);
  v137 = *(v0 + 5520);
  v138 = *(v0 + 5512);
  v139 = *(v0 + 4888);
  v140 = *(v0 + 4880);
  v141 = *(v8 + 60);
  v142 = *(*(v0 + 5560) + 48);
  sub_1CAB23A9C(v140 + v141, v136, &qword_1EC467A40);
  sub_1CAB23A9C(v139 + v141, v136 + v142, &qword_1EC467A40);
  v143 = *(v137 + 48);
  if (v143(v136, 1, v138) == 1)
  {
    if (v143(v136 + v142, 1, *(v0 + 5512)) == 1)
    {
      v144 = *(v0 + 5568);
LABEL_42:
      sub_1CAB21B68(v144, &qword_1EC467A40);
      goto LABEL_60;
    }
  }

  else
  {
    v145 = *(v0 + 5512);
    sub_1CAB23A9C(*(v0 + 5568), *(v0 + 5552), &qword_1EC467A40);
    if (v143(v136 + v142, 1, v145) != 1)
    {
      v178 = *(v0 + 5568);
      v179 = *(v0 + 5552);
      v180 = *(v0 + 5536);
      sub_1CAC297D8(v136 + v142, v180, type metadata accessor for EventVirtualConferenceModelObject);
      v181 = _s13CalendarUIKit33EventVirtualConferenceModelObjectV2eeoiySbAC_ACtFZ_0(v179, v180);
      sub_1CAC29750(v180, type metadata accessor for EventVirtualConferenceModelObject);
      sub_1CAC29750(v179, type metadata accessor for EventVirtualConferenceModelObject);
      sub_1CAB21B68(v178, &qword_1EC467A40);
      if (v181)
      {
        goto LABEL_60;
      }

      goto LABEL_41;
    }

    sub_1CAC29750(*(v0 + 5552), type metadata accessor for EventVirtualConferenceModelObject);
  }

  sub_1CAB21B68(*(v0 + 5568), &qword_1EC464E48);
LABEL_41:
  v146 = *(v0 + 5544);
  v147 = *(v0 + 5512);
  sub_1CAB23A9C(v140 + v141, v146, &qword_1EC467A40);
  v148 = v143(v146, 1, v147);
  v144 = *(v0 + 5544);
  if (v148 == 1)
  {
    goto LABEL_42;
  }

  v149 = *(v0 + 5528);
  sub_1CAC297D8(v144, v149, type metadata accessor for EventVirtualConferenceModelObject);
  v150 = *(v149 + 16);
  v151 = MEMORY[0x1E69E7CC0];
  if (v150)
  {
    *&__src[0] = MEMORY[0x1E69E7CC0];
    v152 = *(v150 + 16);
    if (v152)
    {
      v153 = *(v0 + 5504);
      v154 = *(v0 + 5496);
      v155 = *(v0 + 5456);
      v582 = *(v0 + 5488);
      v156 = *(v582 + 20);
      v157 = v150 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
      v158 = (v155 + 48);
      v573 = (v155 + 16);
      v574 = (v155 + 32);
      v591 = MEMORY[0x1E69E7CC0];
      v597 = *(v154 + 72);
      v159 = &qword_1EC465450;
      v571 = (v155 + 8);
      v586 = v153;
      v576 = (v155 + 48);
      v581 = v156;
      do
      {
        v162 = *(v0 + 5448);
        v163 = *(v0 + 5440);
        sub_1CAC29A3C(v157, *(v0 + 5504), type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
        sub_1CAB23A9C(v153 + v156, v163, v159);
        if ((*v158)(v163, 1, v162) == 1)
        {
          v160 = v159;
          v161 = *(v0 + 5440);
          sub_1CAC29750(*(v0 + 5504), type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
          sub_1CAB21B68(v161, v160);
          v159 = v160;
        }

        else
        {
          v164 = *(v0 + 5480);
          v165 = *(v0 + 5472);
          v166 = *(v0 + 5448);
          (*v574)(v164, *(v0 + 5440), v166);
          v167 = *(v153 + 8);
          (*v573)(v165, v164, v166);
          if (v167)
          {
            v168 = sub_1CAD4DF54();
          }

          else
          {
            v168 = 0;
          }

          v169 = *(v0 + 5504);
          v170 = *(v0 + 5480);
          v171 = *(v0 + 5472);
          v172 = *(v0 + 5448);
          v173 = objc_allocWithZone(MEMORY[0x1E6966B40]);
          v174 = sub_1CAD4BFB4();
          v175 = [v173 initWithTitle:v168 url:v174];

          v176 = *v571;
          (*v571)(v171, v172);
          [v175 setIsBroadcast_];
          v176(v170, v172);
          v177 = sub_1CAC29750(v169, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
          MEMORY[0x1CCAA7460](v177);
          if (*((*&__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CAD4E234();
          }

          sub_1CAD4E264();
          v591 = *&__src[0];
          v153 = v586;
          v158 = v576;
          v156 = v581;
          v159 = &qword_1EC465450;
        }

        v157 += v597;
        --v152;
      }

      while (v152);
    }

    else
    {
      v591 = MEMORY[0x1E69E7CC0];
    }

    v151 = v591;
  }

  v182 = *(v0 + 5528);
  v183 = *(v0 + 4872);
  v185 = *v182;
  v184 = v182[1];
  v186 = v182[3];
  v187 = v182[4];
  objc_allocWithZone(MEMORY[0x1E6966B38]);

  v188 = sub_1CAC256C4(v185, v184, v151, v186, v187);
  [v183 setVirtualConference_];

  sub_1CAC29750(v182, type metadata accessor for EventVirtualConferenceModelObject);
LABEL_60:
  v189 = *(v0 + 4880);
  v190 = v604;
  v191 = v604[9];
  v192 = *(v189 + v191);
  v193 = v192 ^ *(*(v0 + 4888) + v191);
  if (v193)
  {
    if (!v609)
    {
      goto LABEL_283;
    }

    if ((v192 & 1) == 0)
    {
      [*(v0 + 4872) setAllDay_];
      v189 = *(v0 + 4880);
    }
  }

  v194 = v604[7];
  sub_1CAC296FC(&unk_1EC465A80, MEMORY[0x1E6969530]);
  if (sub_1CAD4DED4())
  {
    v195 = *(v0 + 4880) + v604[8];
    if (sub_1CAD4DED4())
    {
      goto LABEL_120;
    }

    if (!v609)
    {
      goto LABEL_283;
    }

    v196 = *(*(v0 + 5376) + 16);
    goto LABEL_91;
  }

  if (!v609)
  {
    goto LABEL_283;
  }

  v587 = v193;
  v592 = *(*(v0 + 5376) + 16);
  v592(*(v0 + 5416), v189 + v194, *(v0 + 5368));
  v197 = *(v0 + 4880);
  if ((v192 & 1) != 0 || *(v197 + v604[13]) == 1)
  {
    v198 = *(v0 + 5312);
    v199 = *(v0 + 5304);
    v200 = *(v0 + 5296);
    sub_1CAB23A9C(v197 + v604[14], v200, &qword_1EC4635D0);
    v201 = *(v198 + 48);
    if (v201(v200, 1, v199) == 1)
    {
      v202 = *(v0 + 5304);
      v203 = *(v0 + 5296);
      sub_1CAD4C3F4();
      if (v201(v203, 1, v202) != 1)
      {
        sub_1CAB21B68(*(v0 + 5296), &qword_1EC4635D0);
      }
    }

    else
    {
      (*(*(v0 + 5312) + 32))(*(v0 + 5360), *(v0 + 5296), *(v0 + 5304));
    }

    v204 = *(v0 + 4896);
    v205 = sub_1CAD4C084();
    v206 = [v204 timeZone];
    if (v206)
    {
      v207 = *(v0 + 5352);
      v208 = *(v0 + 5312);
      v209 = *(v0 + 5304);
      v210 = v206;
      sub_1CAD4C3E4();

      v211 = sub_1CAD4C3D4();
      (*(v208 + 8))(v207, v209);
    }

    else
    {
      v211 = 0;
    }

    v212 = sub_1CAD4C3D4();
    v213 = [v205 dateInTimeZone:v211 fromTimeZone:v212];

    if (!v213)
    {
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
      goto LABEL_321;
    }

    v214 = *(v0 + 5416);
    v215 = *(v0 + 5408);
    v216 = *(v0 + 5376);
    v217 = *(v0 + 5368);
    v218 = *(v0 + 5360);
    v219 = *(v0 + 5312);
    v220 = *(v0 + 5304);
    sub_1CAD4C0B4();

    (*(v219 + 8))(v218, v220);
    (*(v216 + 8))(v214, v217);
    (*(v216 + 32))(v214, v215, v217);
  }

  v221 = *(v0 + 5376);
  v222 = *(v0 + 5368);
  v223 = *(v0 + 5248);
  v224 = *(v0 + 4872);
  v592(v223, *(v0 + 5416), v222);
  v225 = *(v221 + 56);
  v226 = 1;
  v225(v223, 0, 1, v222);
  v227 = [v224 startDate];
  v583 = v192;
  if (v227)
  {
    v228 = v227;
    sub_1CAD4C0B4();

    v226 = 0;
  }

  v229 = *(v0 + 5376);
  v230 = *(v0 + 5368);
  v231 = *(v0 + 5248);
  v232 = *(v0 + 5240);
  v233 = *(v0 + 5200);
  v234 = *(v0 + 5184);
  v225(v232, v226, 1, v230);
  v235 = *(v234 + 48);
  sub_1CAB23A9C(v231, v233, &unk_1EC465A70);
  sub_1CAB23A9C(v232, v233 + v235, &unk_1EC465A70);
  v236 = *(v229 + 48);
  v237 = v236(v233, 1, v230);
  v238 = *(v0 + 5368);
  if (v237 != 1)
  {
    sub_1CAB23A9C(*(v0 + 5200), *(v0 + 5232), &unk_1EC465A70);
    if (v236(v233 + v235, 1, v238) != 1)
    {
      v392 = *(v0 + 5400);
      v393 = *(v0 + 5376);
      v394 = *(v0 + 5368);
      v395 = *(v0 + 5240);
      v396 = *(v0 + 5232);
      v575 = *(v0 + 5248);
      v579 = *(v0 + 5200);
      (*(v393 + 32))(v392, v233 + v235, v394);
      v397 = sub_1CAD4DED4();
      v398 = *(v393 + 8);
      v398(v392, v394);
      sub_1CAB21B68(v395, &unk_1EC465A70);
      sub_1CAB21B68(v575, &unk_1EC465A70);
      v398(v396, v394);
      sub_1CAB21B68(v579, &unk_1EC465A70);
      v190 = v604;
      v192 = v583;
      v193 = v587;
      if (v397)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    v241 = *(v0 + 5376);
    v242 = *(v0 + 5368);
    v243 = *(v0 + 5248);
    v244 = *(v0 + 5232);
    sub_1CAB21B68(*(v0 + 5240), &unk_1EC465A70);
    sub_1CAB21B68(v243, &unk_1EC465A70);
    (*(v241 + 8))(v244, v242);
    v192 = v583;
    v193 = v587;
LABEL_87:
    sub_1CAB21B68(*(v0 + 5200), &qword_1EC464E40);
    v190 = v604;
LABEL_88:
    v245 = *(v0 + 4872);
    v246 = sub_1CAD4C084();
    [v245 setStartDate_];

    goto LABEL_89;
  }

  v239 = *(v0 + 5248);
  sub_1CAB21B68(*(v0 + 5240), &unk_1EC465A70);
  sub_1CAB21B68(v239, &unk_1EC465A70);
  v240 = v236(v233 + v235, 1, v238);
  v192 = v583;
  v193 = v587;
  if (v240 != 1)
  {
    goto LABEL_87;
  }

  sub_1CAB21B68(*(v0 + 5200), &unk_1EC465A70);
  v190 = v604;
LABEL_89:
  v247 = *(v0 + 4880);
  (*(*(v0 + 5376) + 8))(*(v0 + 5416), *(v0 + 5368));
  v195 = v247 + v190[8];
  if (sub_1CAD4DED4())
  {
    goto LABEL_120;
  }

  v196 = v592;
LABEL_91:
  v593 = v196;
  v196(*(v0 + 5392), v195, *(v0 + 5368));
  v248 = *(v0 + 4880);
  v584 = v192;
  v588 = v193;
  if ((v192 & 1) != 0 || *(v248 + v190[13]) == 1)
  {
    v249 = *(v0 + 5312);
    v250 = *(v0 + 5304);
    v251 = *(v0 + 5288);
    sub_1CAB23A9C(v248 + v190[14], v251, &qword_1EC4635D0);
    v252 = *(v249 + 48);
    if (v252(v251, 1, v250) == 1)
    {
      v253 = *(v0 + 5304);
      v254 = *(v0 + 5288);
      sub_1CAD4C3F4();
      if (v252(v254, 1, v253) != 1)
      {
        sub_1CAB21B68(*(v0 + 5288), &qword_1EC4635D0);
      }
    }

    else
    {
      (*(*(v0 + 5312) + 32))(*(v0 + 5344), *(v0 + 5288), *(v0 + 5304));
    }

    v255 = *(v0 + 4896);
    v256 = sub_1CAD4C084();
    v257 = [v255 timeZone];
    if (v257)
    {
      v258 = *(v0 + 5336);
      v259 = *(v0 + 5312);
      v260 = *(v0 + 5304);
      v261 = v257;
      sub_1CAD4C3E4();

      v262 = sub_1CAD4C3D4();
      (*(v259 + 8))(v258, v260);
    }

    else
    {
      v262 = 0;
    }

    v263 = sub_1CAD4C3D4();
    v264 = [v256 dateInTimeZone:v262 fromTimeZone:v263];

    if (!v264)
    {
      goto LABEL_320;
    }

    v265 = *(v0 + 5392);
    v266 = *(v0 + 5384);
    v267 = *(v0 + 5376);
    v268 = *(v0 + 5368);
    v269 = *(v0 + 5152);
    v270 = *(v0 + 5144);
    v271 = *(v0 + 5136);
    v577 = *(v0 + 4896);
    sub_1CAD4C0B4();

    v572 = *(v267 + 8);
    v572(v265, v268);
    v570 = *(v267 + 32);
    v570(v265, v266, v268);
    (*(v270 + 104))(v269, *MEMORY[0x1E6969868], v271);
    sub_1CAD4C1F4();
    (*(v270 + 8))(v269, v271);
    v272 = [v577 timeZone];
    if (!v272)
    {
LABEL_321:
      __break(1u);
      return;
    }

    v273 = v272;
    sub_1CAD4C3E4();

    sub_1CAD4C344();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464230);
    v274 = sub_1CAD4C354();
    v275 = *(v274 - 8);
    v276 = *(v275 + 72);
    v277 = (*(v275 + 80) + 32) & ~*(v275 + 80);
    v278 = swift_allocObject();
    *(v278 + 16) = xmmword_1CAD5A590;
    v279 = v278 + v277;
    v280 = *(v275 + 104);
    v280(v279, *MEMORY[0x1E6969A58], v274);
    v280(v279 + v276, *MEMORY[0x1E6969A88], v274);
    v280(v279 + 2 * v276, *MEMORY[0x1E6969A98], v274);
    sub_1CAC926C8(v278);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1CAD4C244();

    v281 = sub_1CAD4BD24();
    if (v282 & 1) != 0 || v281 || (v283 = sub_1CAD4BD84(), (v284) || v283 || (v285 = sub_1CAD4BDA4(), (v286) || v285)
    {
      v296 = *(v0 + 5344);
      v297 = *(v0 + 5312);
      v298 = *(v0 + 5304);
      v299 = *(v0 + 5176);
      v300 = *(v0 + 5168);
      v301 = *(v0 + 5160);
      (*(*(v0 + 5120) + 8))(*(v0 + 5128), *(v0 + 5112));
      (*(v300 + 8))(v299, v301);
      (*(v297 + 8))(v296, v298);
    }

    else
    {
      v287 = *(v0 + 5392);
      v288 = *(v0 + 5368);
      v578 = *(v0 + 5344);
      v289 = *(v0 + 5312);
      v568 = *(v0 + 5400);
      v569 = *(v0 + 5304);
      v290 = *(v0 + 5176);
      v291 = *(v0 + 5168);
      v292 = *(v0 + 5160);
      v293 = *(v0 + 5128);
      v294 = *(v0 + 5120);
      v295 = *(v0 + 5112);
      sub_1CAD4C074();
      (*(v294 + 8))(v293, v295);
      (*(v291 + 8))(v290, v292);
      (*(v289 + 8))(v578, v569);
      v572(v287, v288);
      v570(v287, v568, v288);
    }
  }

  v302 = *(v0 + 5376);
  v303 = *(v0 + 5368);
  v304 = *(v0 + 5224);
  v305 = *(v0 + 4872);
  v593(v304, *(v0 + 5392), v303);
  v306 = *(v302 + 56);
  v307 = 1;
  v306(v304, 0, 1, v303);
  v308 = [v305 endDate];
  if (v308)
  {
    v309 = v308;
    sub_1CAD4C0B4();

    v307 = 0;
  }

  v310 = *(v0 + 5376);
  v311 = *(v0 + 5368);
  v312 = *(v0 + 5224);
  v313 = *(v0 + 5216);
  v314 = *(v0 + 5192);
  v315 = *(v0 + 5184);
  v306(v313, v307, 1, v311);
  v316 = *(v315 + 48);
  sub_1CAB23A9C(v312, v314, &unk_1EC465A70);
  sub_1CAB23A9C(v313, v314 + v316, &unk_1EC465A70);
  v317 = *(v310 + 48);
  v318 = v317(v314, 1, v311);
  v319 = *(v0 + 5368);
  if (v318 != 1)
  {
    sub_1CAB23A9C(*(v0 + 5192), *(v0 + 5208), &unk_1EC465A70);
    if (v317(v314 + v316, 1, v319) != 1)
    {
      v399 = *(v0 + 5400);
      v400 = *(v0 + 5376);
      v401 = *(v0 + 5368);
      v402 = *(v0 + 5224);
      v403 = *(v0 + 5216);
      v404 = *(v0 + 5208);
      v601 = *(v0 + 5192);
      (*(v400 + 32))(v399, v314 + v316, v401);
      v405 = sub_1CAD4DED4();
      v406 = *(v400 + 8);
      v406(v399, v401);
      sub_1CAB21B68(v403, &unk_1EC465A70);
      sub_1CAB21B68(v402, &unk_1EC465A70);
      v406(v404, v401);
      sub_1CAB21B68(v601, &unk_1EC465A70);
      v190 = v604;
      v192 = v584;
      v193 = v588;
      if (v405)
      {
        goto LABEL_119;
      }

      goto LABEL_118;
    }

    v321 = *(v0 + 5376);
    v322 = *(v0 + 5368);
    v323 = *(v0 + 5224);
    v324 = *(v0 + 5208);
    sub_1CAB21B68(*(v0 + 5216), &unk_1EC465A70);
    sub_1CAB21B68(v323, &unk_1EC465A70);
    (*(v321 + 8))(v324, v322);
    v192 = v584;
    v193 = v588;
LABEL_117:
    sub_1CAB21B68(*(v0 + 5192), &qword_1EC464E40);
    v190 = v604;
LABEL_118:
    v325 = *(v0 + 4872);
    v326 = sub_1CAD4C084();
    [v325 setEndDate_];

    goto LABEL_119;
  }

  v320 = *(v0 + 5224);
  sub_1CAB21B68(*(v0 + 5216), &unk_1EC465A70);
  sub_1CAB21B68(v320, &unk_1EC465A70);
  v192 = v584;
  v193 = v588;
  if (v317(v314 + v316, 1, v319) != 1)
  {
    goto LABEL_117;
  }

  sub_1CAB21B68(*(v0 + 5192), &unk_1EC465A70);
  v190 = v604;
LABEL_119:
  (*(*(v0 + 5376) + 8))(*(v0 + 5392), *(v0 + 5368));
LABEL_120:
  if (v193)
  {
    [*(v0 + 4872) setAllDay_];
  }

  v327 = *(v0 + 5312);
  v328 = *(v0 + 5304);
  v329 = *(v0 + 5104);
  v330 = *(v0 + 4888);
  v331 = *(v0 + 4880);
  v332 = v190[11];
  v598 = *(v0 + 5088);
  v333 = *(v598 + 48);
  sub_1CAB23A9C(v331 + v332, v329, &qword_1EC4635D0);
  sub_1CAB23A9C(v330 + v332, v329 + v333, &qword_1EC4635D0);
  v334 = *(v327 + 48);
  v335 = v334(v329, 1, v328);
  v336 = *(v0 + 5304);
  if (v335 == 1)
  {
    if (v334(v329 + v333, 1, *(v0 + 5304)) == 1)
    {
      sub_1CAB21B68(*(v0 + 5104), &qword_1EC4635D0);
      v337 = v604;
      goto LABEL_135;
    }
  }

  else
  {
    sub_1CAB23A9C(*(v0 + 5104), *(v0 + 5280), &qword_1EC4635D0);
    if (v334(v329 + v333, 1, v336) != 1)
    {
      v341 = *(v0 + 5320);
      v342 = *(v0 + 5312);
      v343 = *(v0 + 5304);
      v589 = v334;
      v344 = *(v0 + 5280);
      v594 = *(v0 + 5104);
      (*(v342 + 32))(v341, v329 + v333, v343);
      sub_1CAC296FC(&qword_1EC464E68, MEMORY[0x1E6969BC0]);
      v345 = sub_1CAD4DED4();
      v346 = *(v342 + 8);
      v346(v341, v343);
      v347 = v344;
      v334 = v589;
      v346(v347, v343);
      sub_1CAB21B68(v594, &qword_1EC4635D0);
      v337 = v604;
      if (v345)
      {
        goto LABEL_135;
      }

      goto LABEL_128;
    }

    (*(*(v0 + 5312) + 8))(*(v0 + 5280), *(v0 + 5304));
  }

  sub_1CAB21B68(*(v0 + 5104), &unk_1EC4679E0);
  v337 = v604;
LABEL_128:
  if (!v609)
  {
    goto LABEL_283;
  }

  v338 = *(v0 + 5304);
  v339 = *(v0 + 5272);
  sub_1CAB23A9C(v331 + v332, v339, &qword_1EC4635D0);
  if (v334(v339, 1, v338) == 1)
  {
    v340 = 0;
  }

  else
  {
    v348 = *(v0 + 5312);
    v349 = *(v0 + 5304);
    v350 = *(v0 + 5272);
    v340 = sub_1CAD4C3D4();
    (*(v348 + 8))(v350, v349);
  }

  [*(v0 + 4872) setStartTimeZone_];

LABEL_135:
  v351 = *(v0 + 5304);
  v352 = *(v0 + 5096);
  v353 = *(v0 + 4888);
  v354 = v337[12];
  v355 = *(v598 + 48);
  v599 = *(v0 + 4880);
  sub_1CAB23A9C(v599 + v354, v352, &qword_1EC4635D0);
  sub_1CAB23A9C(v353 + v354, v352 + v355, &qword_1EC4635D0);
  v356 = v334(v352, 1, v351);
  v357 = *(v0 + 5304);
  if (v356 == 1)
  {
    if (v334(v352 + v355, 1, *(v0 + 5304)) == 1)
    {
      sub_1CAB21B68(*(v0 + 5096), &qword_1EC4635D0);
      goto LABEL_148;
    }
  }

  else
  {
    sub_1CAB23A9C(*(v0 + 5096), *(v0 + 5264), &qword_1EC4635D0);
    if (v334(v352 + v355, 1, v357) != 1)
    {
      v361 = *(v0 + 5320);
      v362 = *(v0 + 5312);
      v363 = *(v0 + 5304);
      v364 = *(v0 + 5264);
      v595 = *(v0 + 5096);
      (*(v362 + 32))(v361, v352 + v355, v363);
      sub_1CAC296FC(&qword_1EC464E68, MEMORY[0x1E6969BC0]);
      v365 = sub_1CAD4DED4();
      v366 = *(v362 + 8);
      v366(v361, v363);
      v366(v364, v363);
      sub_1CAB21B68(v595, &qword_1EC4635D0);
      if (v365)
      {
        goto LABEL_148;
      }

      goto LABEL_141;
    }

    (*(*(v0 + 5312) + 8))(*(v0 + 5264), *(v0 + 5304));
  }

  sub_1CAB21B68(*(v0 + 5096), &unk_1EC4679E0);
LABEL_141:
  if (!v609)
  {
    goto LABEL_283;
  }

  v358 = *(v0 + 5304);
  v359 = *(v0 + 5256);
  sub_1CAB23A9C(v599 + v354, v359, &qword_1EC4635D0);
  if (v334(v359, 1, v358) == 1)
  {
    v360 = 0;
  }

  else
  {
    v367 = *(v0 + 5312);
    v368 = *(v0 + 5304);
    v369 = *(v0 + 5256);
    v360 = sub_1CAD4C3D4();
    (*(v367 + 8))(v369, v368);
  }

  [*(v0 + 4872) setEndTimeZone_];

LABEL_148:
  v370 = *(v0 + 5080);
  v371 = *(v0 + 5072);
  v372 = *(v0 + 5048);
  v373 = *(v0 + 5040);
  v374 = *(v0 + 5016);
  v375 = *(v0 + 5008);
  EventModelObject.singleRecurrenceRule.getter(v370);
  EventModelObject.singleRecurrenceRule.getter(v371);
  v376 = *(v373 + 48);
  sub_1CAB23A9C(v370, v372, &qword_1EC463170);
  sub_1CAB23A9C(v371, v372 + v376, &qword_1EC463170);
  v377 = *(v374 + 48);
  if (v377(v372, 1, v375) == 1)
  {
    v378 = *(v0 + 5080);
    v379 = *(v0 + 5008);
    sub_1CAB21B68(*(v0 + 5072), &qword_1EC463170);
    sub_1CAB21B68(v378, &qword_1EC463170);
    if (v377(v372 + v376, 1, v379) == 1)
    {
      sub_1CAB21B68(*(v0 + 5048), &qword_1EC463170);
      goto LABEL_164;
    }
  }

  else
  {
    v380 = *(v0 + 5008);
    sub_1CAB23A9C(*(v0 + 5048), *(v0 + 5064), &qword_1EC463170);
    v381 = v377(v372 + v376, 1, v380);
    v382 = *(v0 + 5080);
    v383 = *(v0 + 5072);
    v384 = *(v0 + 5064);
    if (v381 != 1)
    {
      v600 = *(v0 + 5048);
      v390 = *(v0 + 5032);
      sub_1CAC297D8(v372 + v376, v390, type metadata accessor for EventRecurrenceRuleModelObject);
      v391 = _s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v384, v390);
      sub_1CAC29750(v390, type metadata accessor for EventRecurrenceRuleModelObject);
      sub_1CAB21B68(v383, &qword_1EC463170);
      sub_1CAB21B68(v382, &qword_1EC463170);
      sub_1CAC29750(v384, type metadata accessor for EventRecurrenceRuleModelObject);
      sub_1CAB21B68(v600, &qword_1EC463170);
      if (v391)
      {
        goto LABEL_164;
      }

      goto LABEL_154;
    }

    sub_1CAB21B68(*(v0 + 5072), &qword_1EC463170);
    sub_1CAB21B68(v382, &qword_1EC463170);
    sub_1CAC29750(v384, type metadata accessor for EventRecurrenceRuleModelObject);
  }

  sub_1CAB21B68(*(v0 + 5048), &unk_1EC4679D0);
LABEL_154:
  if (!v609)
  {
    goto LABEL_283;
  }

  v385 = *(v0 + 5056);
  v386 = *(v0 + 5008);
  EventModelObject.singleRecurrenceRule.getter(v385);
  v387 = v377(v385, 1, v386);
  v388 = *(v0 + 5056);
  if (v387 == 1)
  {
    v389 = *(v0 + 4872);
    sub_1CAB21B68(v388, &qword_1EC463170);
    [v389 setRecurrenceRules_];
  }

  else
  {
    v407 = *(v0 + 5032);
    v408 = *(v0 + 5024);
    v409 = *(v0 + 4872);
    sub_1CAC297D8(v388, v408, type metadata accessor for EventRecurrenceRuleModelObject);
    sub_1CABD4070(0, &unk_1EC461EB8);
    sub_1CAC29A3C(v408, v407, type metadata accessor for EventRecurrenceRuleModelObject);
    v410 = EKRecurrenceRule.init(recurrenceRuleModelObject:)(v407);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60);
    v411 = swift_allocObject();
    *(v411 + 16) = xmmword_1CAD5E2D0;
    *(v411 + 32) = v410;
    v412 = v410;
    v413 = sub_1CAD4E1F4();

    [v409 setRecurrenceRules_];

    sub_1CAC29750(v408, type metadata accessor for EventRecurrenceRuleModelObject);
  }

LABEL_164:
  v414 = *(v0 + 5000);
  sub_1CAB23A9C(*(v0 + 4880) + v604[26], v414, &qword_1EC464020);
  v415 = type metadata accessor for EventCalendarModelObject();
  v416 = *(*(v415 - 8) + 48);
  v417 = v416(v414, 1, v415);
  v418 = *(v0 + 5000);
  if (v417 == 1)
  {
    sub_1CAB21B68(*(v0 + 5000), &qword_1EC464020);
LABEL_177:
    v432 = *(v0 + 5576);
    v433 = *(v0 + 4888);
    v434 = *(v0 + 4880);
    v435 = v432[31];
    v436 = *(v434 + v435);
    if (v436 != *(v433 + v435))
    {
      if (![*(v0 + 4872) allowsAvailabilityModifications])
      {
        sub_1CAC23A1C();
        swift_allocError();
        v89 = 5;
        goto LABEL_284;
      }

      [*(v0 + 4872) setAvailability_];
      v432 = *(v0 + 5576);
      v433 = *(v0 + 4888);
      v434 = *(v0 + 4880);
    }

    v437 = v432[27];
    v438 = *(v434 + v437);
    if (v438 == *(v433 + v437))
    {
      goto LABEL_183;
    }

    if ([*(v0 + 4872) allowsPrivacyLevelModifications])
    {
      [*(v0 + 4872) setPrivacyLevel_];
      v432 = *(v0 + 5576);
      v433 = *(v0 + 4888);
      v434 = *(v0 + 4880);
LABEL_183:
      if (*(v434 + v432[22]) != *(v433 + v432[22]))
      {
        [*(v0 + 4872) setTravelTime_];
        v432 = *(v0 + 5576);
        v433 = *(v0 + 4888);
        v434 = *(v0 + 4880);
      }

      if (*(v434 + v432[28]) != *(v433 + v432[28]))
      {
        if (*(v0 + 5608) != 1)
        {
          goto LABEL_283;
        }

        [*(v0 + 4872) setStatus_];
        v432 = *(v0 + 5576);
        v433 = *(v0 + 4888);
        v434 = *(v0 + 4880);
      }

      v439 = v432[29];
      v440 = *(v434 + v439);
      v441 = *(v433 + v439);
      if (v440)
      {
        if (v441)
        {

          v443 = sub_1CACA81C0(v442, v441);

          if (v443)
          {
LABEL_198:
            v445 = *(*(v0 + 5576) + 156);
            v446 = *(*(v0 + 4880) + v445);
            v447 = *(*(v0 + 4888) + v445);
            if ((sub_1CACA8A10(v446, v447) & 1) == 0)
            {
              v605 = v446;
              v448 = *(v0 + 4880);
              v449 = swift_task_alloc();
              v449[2] = v448;

              v450 = sub_1CAC1C978(sub_1CAC257A0, v449, v447);

              v585 = v450;
              v451 = *(v450 + 16);
              v452 = &selRef__precomputeActionName;
              v453 = MEMORY[0x1E69E7CA0];
              if (v451)
              {
                v454 = [*(v0 + 4872) attachments];
                if (v454)
                {
                  v418 = *(v0 + 4968);

                  v455 = 0;
                  while (v455 < *(v585 + 16))
                  {
                    v456 = *(v0 + 4872);
                    sub_1CAC29A3C(v585 + ((*(v418 + 80) + 32) & ~*(v418 + 80)) + *(v418 + 72) * v455, *(v0 + 4984), type metadata accessor for EventAttachmentModelObject);
                    v457 = [v456 attachments];
                    if (!v457)
                    {
                      goto LABEL_317;
                    }

                    v458 = v457;
                    v459 = *(v0 + 4984);
                    v460 = sub_1CAD4E214();

                    v461 = swift_task_alloc();
                    v449 = v453;
                    *(v461 + 16) = v459;
                    v462 = sub_1CAC1CC04(sub_1CAC29AA4, v461, v460);

                    if (*(v462 + 16))
                    {
                      v463 = *(v0 + 4872);
                      sub_1CABD3CDC(v462 + 32, v0 + 4800);

                      sub_1CABD3D54((v0 + 4800), (v0 + 4832));
                      sub_1CABD3CDC(v0 + 4832, v0 + 4768);
                      sub_1CABD4070(0, &qword_1EC464E58);
                      if (swift_dynamicCast())
                      {
                        v464 = *(v0 + 4864);
                      }

                      else
                      {
                        v464 = 0;
                      }

                      [v463 removeAttachment_];

                      __swift_destroy_boxed_opaque_existential_1(v0 + 4832);
                    }

                    else
                    {
                    }

                    ++v455;
                    sub_1CAC29750(*(v0 + 4984), type metadata accessor for EventAttachmentModelObject);
                    v452 = &selRef__precomputeActionName;
                    if (v451 == v455)
                    {
                      goto LABEL_211;
                    }
                  }

LABEL_299:
                  __break(1u);
                  goto LABEL_300;
                }
              }

LABEL_211:
              v465 = v605;
              v602 = *(v605 + 16);
              if (v602)
              {
                v466 = 0;
                v596 = *(v0 + 4968);
                v580 = *(v0 + 4960);
                v590 = v605 + ((*(v596 + 80) + 32) & ~*(v596 + 80));
                while (v466 < *(v465 + 16))
                {
                  v467 = *(v0 + 4872);
                  sub_1CAC29A3C(v590 + *(v596 + 72) * v466, *(v0 + 4976), type metadata accessor for EventAttachmentModelObject);
                  v468 = [v467 v452[261]];
                  if (!v468)
                  {
                    goto LABEL_218;
                  }

                  v469 = *(v0 + 4872);

                  v470 = [v469 v452[261]];
                  if (!v470)
                  {
                    goto LABEL_318;
                  }

                  v471 = v470;
                  v472 = *(v0 + 4976);
                  v418 = sub_1CAD4E214();

                  v449 = swift_task_alloc();
                  v449[2] = v472;
                  v473 = sub_1CAD417B0(sub_1CAC291CC, v449, v418);

                  if (!v473)
                  {
LABEL_218:
                    v474 = *(v0 + 4976);
                    v610 = *(v474 + v580[10]);
                    v475 = *(v474 + v580[11]);
                    v476 = objc_allocWithZone(MEMORY[0x1E6966960]);
                    v418 = sub_1CAD4DF54();
                    v477 = sub_1CAD4DF54();
                    v449 = [v476 initWithUUID:v418 fileName:v477 autoArchived:v610 urlForPendingFileCopy:v475];

                    if (!v449)
                    {
                      goto LABEL_316;
                    }

                    [*(v0 + 4872) addAttachment_];

                    v452 = &selRef__precomputeActionName;
                  }

                  ++v466;
                  sub_1CAC29750(*(v0 + 4976), type metadata accessor for EventAttachmentModelObject);
                  v465 = v605;
                  if (v602 == v466)
                  {
                    goto LABEL_220;
                  }
                }

                __break(1u);
                goto LABEL_299;
              }

LABEL_220:
            }

            v478 = *(v0 + 5456);
            v479 = *(v0 + 5448);
            v480 = *(v0 + 4952);
            v481 = *(v0 + 4888);
            v482 = *(*(v0 + 5576) + 148);
            v483 = *(*(v0 + 4944) + 48);
            v611 = *(v0 + 4880);
            sub_1CAB23A9C(v611 + v482, v480, &qword_1EC465450);
            sub_1CAB23A9C(v481 + v482, v480 + v483, &qword_1EC465450);
            v484 = *(v478 + 48);
            v485 = v484(v480, 1, v479);
            v486 = *(v0 + 5448);
            if (v485 == 1)
            {
              if (v484(v480 + v483, 1, *(v0 + 5448)) == 1)
              {
                sub_1CAB21B68(*(v0 + 4952), &qword_1EC465450);
                goto LABEL_234;
              }
            }

            else
            {
              sub_1CAB23A9C(*(v0 + 4952), *(v0 + 5432), &qword_1EC465450);
              if (v484(v480 + v483, 1, v486) != 1)
              {
                v490 = *(v0 + 5456);
                v491 = *(v0 + 5448);
                v492 = *(v0 + 5432);
                v603 = *(v0 + 5464);
                v606 = *(v0 + 4952);
                (*(v490 + 32))(v603, v480 + v483, v491);
                sub_1CAC296FC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
                v493 = sub_1CAD4DED4();
                v494 = *(v490 + 8);
                v494(v603, v491);
                v494(v492, v491);
                sub_1CAB21B68(v606, &qword_1EC465450);
                if (v493)
                {
LABEL_234:
                  v498 = *(*(v0 + 5576) + 120);
                  v499 = (*(v0 + 4880) + v498);
                  v500 = v499[1];
                  v501 = (*(v0 + 4888) + v498);
                  v502 = v501[1];
                  if (v500)
                  {
                    if (v502 && (*v499 == *v501 && v500 == v502 || (sub_1CAD4E9E4() & 1) != 0))
                    {
LABEL_245:
                      v504 = *(v0 + 5576);
                      v505 = *(v0 + 4888);
                      v506 = *(v0 + 4880);
                      v507 = *(v504 + 140);
                      v508 = MEMORY[0x1E69E7CC0];
                      if (*(v505 + v507))
                      {
                        v509 = *(v505 + v507);
                      }

                      else
                      {
                        v509 = MEMORY[0x1E69E7CC0];
                      }

                      v510 = sub_1CACD03A8(v509);

                      v511 = *(v504 + 140);
                      if (*(v506 + v511))
                      {
                        v512 = *(v506 + v511);
                      }

                      else
                      {
                        v512 = v508;
                      }

                      v418 = sub_1CACD03A8(v512);

                      v449 = sub_1CAC23E68(v510, v418);
                      v453 = sub_1CAC23E68(v418, v510);

                      if (v449[2])
                      {
                        if (*(v0 + 5608) == 1)
                        {
                          if (sub_1CAC23EBC())
                          {
                            v513 = *(v0 + 4872);
                            v514 = *(v0 + 4896);
                            v418 = sub_1CAC28EFC(v449);

                            v449 = sub_1CAC28B60(MEMORY[0x1E69E7CC0]);
                            v515 = [v513 attendees];
                            if (v515)
                            {
                              v516 = v515;

                              sub_1CABD4070(0, &unk_1EC461EF0);
                              v517 = sub_1CAD4E214();

                              sub_1CAC2425C(MEMORY[0x1E69E7CC8], &qword_1EC464E78);
                              v449 = sub_1CAC2462C(v518, v517);
                            }

                            if (v418 >> 62)
                            {
                              goto LABEL_301;
                            }

                            v519 = *((v418 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            if (!v519)
                            {
                              goto LABEL_302;
                            }

LABEL_258:
                            v607 = v453;
                            if (v519 >= 1)
                            {
                              v520 = 0;
                              while (1)
                              {
                                if ((v418 & 0xC000000000000001) != 0)
                                {
                                  v521 = MEMORY[0x1CCAA7940](v520, v418);
                                }

                                else
                                {
                                  v521 = *(v418 + 8 * v520 + 32);
                                }

                                v522 = v521;
                                v523 = [v521 semanticIdentifier];
                                if (v523)
                                {
                                  v524 = v523;
                                  v525 = sub_1CAD4DF94();
                                  v527 = v526;
                                }

                                else
                                {
                                  v525 = 0;
                                  v527 = 0;
                                }

                                if (v449[2])
                                {
                                  v528 = sub_1CAC16398(v525, v527);
                                  v530 = v529;

                                  if (v530)
                                  {
                                    v531 = *(v449[7] + 8 * v528);
                                    [v531 setParticipantStatus_];
                                    [v531 setParticipantRole_];
                                    [v531 setParticipantType_];
                                    v532 = v531;
                                    v533 = [v522 comment];
                                    [v532 setComment_];

                                    goto LABEL_262;
                                  }
                                }

                                else
                                {
                                }

                                [*(v0 + 4872) addAttendee_];
LABEL_262:
                                ++v520;

                                if (v519 == v520)
                                {

                                  v453 = v607;
                                  goto LABEL_275;
                                }
                              }
                            }

                            __break(1u);
LABEL_316:
                            __break(1u);
LABEL_317:
                            __break(1u);
LABEL_318:
                            __break(1u);
                            goto LABEL_319;
                          }

                          goto LABEL_287;
                        }

LABEL_282:

                        goto LABEL_283;
                      }

LABEL_275:

                      if (*(v453 + 16))
                      {
                        if (*(v0 + 5608) == 1)
                        {
                          while ((sub_1CAC23EBC() & 1) != 0)
                          {
                            v534 = [*(v0 + 4872) attendees];
                            if (!v534)
                            {
                              goto LABEL_303;
                            }

                            v535 = v534;
                            v608 = *(v0 + 4920);
                            v612 = *(v0 + 4928);
                            sub_1CABD4070(0, &unk_1EC461EF0);
                            v536 = sub_1CAD4E214();

                            sub_1CAC2425C(MEMORY[0x1E69E7CC8], &qword_1EC464E80);
                            v538 = sub_1CAC2492C(v537, v536);

                            v539 = 0;
                            v540 = v453;
                            v542 = *(v453 + 56);
                            v453 += 56;
                            v541 = v542;
                            v543 = -1;
                            v544 = -1 << *(v453 - 24);
                            if (-v544 < 64)
                            {
                              v543 = ~(-1 << -v544);
                            }

                            v545 = v543 & v541;
                            v546 = (63 - v544) >> 6;
                            while (v545)
                            {
LABEL_294:
                              v549 = *(v0 + 4936);
                              v550 = __clz(__rbit64(v545));
                              v545 &= v545 - 1;
                              sub_1CAC29A3C(*(v540 + 48) + *(v612 + 72) * (v550 | (v539 << 6)), v549, type metadata accessor for EventAttendeeModelObject);
                              v551 = (v549 + *(v608 + 32));
                              v418 = *v551;
                              v449 = v551[1];

                              sub_1CAC29750(v549, type metadata accessor for EventAttendeeModelObject);
                              if (*(v538 + 16))
                              {
                                v418 = sub_1CAC16398(v418, v449);
                                v553 = v552;

                                if (v553)
                                {
                                  [*(v0 + 4872) removeAttendee_];
                                }
                              }

                              else
                              {
                              }
                            }

                            while (1)
                            {
                              v548 = v539 + 1;
                              if (__OFADD__(v539, 1))
                              {
                                break;
                              }

                              if (v548 >= v546)
                              {

                                goto LABEL_304;
                              }

                              v545 = *(v453 + 8 * v548);
                              ++v539;
                              if (v545)
                              {
                                v539 = v548;
                                goto LABEL_294;
                              }
                            }

LABEL_300:
                            __break(1u);
LABEL_301:
                            v519 = sub_1CAD4E604();
                            if (v519)
                            {
                              goto LABEL_258;
                            }

LABEL_302:

                            if (!*(v453 + 16))
                            {
                              goto LABEL_303;
                            }
                          }

LABEL_287:

                          sub_1CAC23A1C();
                          swift_allocError();
                          v89 = 8;
                          goto LABEL_284;
                        }

                        goto LABEL_282;
                      }

LABEL_303:

LABEL_304:
                      v554 = *(v0 + 5576);
                      v555 = *(v0 + 4928);
                      v556 = *(v0 + 4920);
                      v557 = *(v0 + 4912);
                      sub_1CAB23A9C(*(v0 + 4880) + *(v554 + 144), v557, &qword_1EC464E38);
                      v558 = *(v555 + 48);
                      if (v558(v557, 1, v556) == 1)
                      {
                        sub_1CAB21B68(*(v0 + 4912), &qword_1EC464E38);
                      }

                      else
                      {
                        v559 = *(v0 + 4920);
                        v560 = *(v0 + 4912);
                        v561 = *(v0 + 4904);
                        v562 = *(v0 + 4888);
                        v563 = *(v560 + *(v559 + 44));
                        sub_1CAC29750(v560, type metadata accessor for EventAttendeeModelObject);
                        sub_1CAB23A9C(v562 + *(v554 + 144), v561, &qword_1EC464E38);
                        v564 = v558(v561, 1, v559);
                        v565 = *(v0 + 4904);
                        if (v564 == 1)
                        {
                          sub_1CAB21B68(v565, &qword_1EC464E38);
                        }

                        else
                        {
                          v566 = *(v565 + *(v559 + 44));
                          sub_1CAC29750(v565, type metadata accessor for EventAttendeeModelObject);
                          if (v563 == v566)
                          {
                            goto LABEL_311;
                          }
                        }

                        if (![*(v0 + 4872) allowsParticipationStatusModifications])
                        {
                          sub_1CAC23A1C();
                          swift_allocError();
                          v89 = 9;
                          goto LABEL_284;
                        }

                        [*(v0 + 4872) setParticipationStatus_];
                      }

LABEL_311:

                      v567 = *(v0 + 8);

                      v567(0, 0);
                      return;
                    }

                    if (*(v0 + 5608))
                    {
                      v503 = sub_1CAD4DF54();
LABEL_244:
                      [*(v0 + 4872) setDisplayNotes_];

                      goto LABEL_245;
                    }
                  }

                  else
                  {
                    if (!v502)
                    {
                      goto LABEL_245;
                    }

                    if (*(v0 + 5608))
                    {
                      v503 = 0;
                      goto LABEL_244;
                    }
                  }

LABEL_283:
                  sub_1CAC23A1C();
                  swift_allocError();
                  v89 = 2;
                  goto LABEL_284;
                }

LABEL_227:
                if (*(v0 + 5608) != 1)
                {
                  goto LABEL_283;
                }

                v487 = *(v0 + 5448);
                v488 = *(v0 + 5424);
                sub_1CAB23A9C(v611 + v482, v488, &qword_1EC465450);
                if (v484(v488, 1, v487) == 1)
                {
                  v489 = 0;
                }

                else
                {
                  v495 = *(v0 + 5456);
                  v496 = *(v0 + 5448);
                  v497 = *(v0 + 5424);
                  v489 = sub_1CAD4BFB4();
                  (*(v495 + 8))(v497, v496);
                }

                [*(v0 + 4872) setURL_];

                goto LABEL_234;
              }

              (*(*(v0 + 5456) + 8))(*(v0 + 5432), *(v0 + 5448));
            }

            sub_1CAB21B68(*(v0 + 4952), &qword_1EC463DA0);
            goto LABEL_227;
          }
        }

        sub_1CAC1CFD0(v440);
        sub_1CABD4070(0, &qword_1EC461E00);
        v444 = sub_1CAD4E1F4();
      }

      else
      {
        v444 = 0;
        if (!v441)
        {
          goto LABEL_198;
        }
      }

      [*(v0 + 4872) setAlarms_];

      goto LABEL_198;
    }

    sub_1CAC23A1C();
    swift_allocError();
    v89 = 7;
LABEL_284:
    *v88 = v89;
    swift_willThrow();

    v547 = *(v0 + 8);

    v547();
    return;
  }

  v419 = *(v0 + 4992);
  v420 = *(v0 + 4888);
  v422 = *v418;
  v421 = *(v418 + 8);

  sub_1CAC29750(v418, type metadata accessor for EventCalendarModelObject);
  sub_1CAB23A9C(v420 + v604[26], v419, &qword_1EC464020);
  v423 = v416(v419, 1, v415);
  v418 = *(v0 + 4992);
  if (v423 == 1)
  {
    sub_1CAB21B68(*(v0 + 4992), &qword_1EC464020);
    goto LABEL_168;
  }

  v430 = *v418;
  v429 = *(v418 + 8);

  sub_1CAC29750(v418, type metadata accessor for EventCalendarModelObject);
  if (v422 == v430 && v421 == v429)
  {

LABEL_176:

    goto LABEL_177;
  }

  v431 = sub_1CAD4E9E4();

  if (v431)
  {
    goto LABEL_176;
  }

LABEL_168:
  v424 = *(v0 + 4896);
  v425 = sub_1CAD4DF54();

  v426 = [v424 calendarWithIdentifier_];
  *(v0 + 5584) = v426;

  if (!v426)
  {
    sub_1CAC23A1C();
    swift_allocError();
    v89 = 3;
    goto LABEL_284;
  }

  v427 = swift_task_alloc();
  *(v0 + 5592) = v427;
  *v427 = v0;
  v427[1] = sub_1CAC21C44;
  v428 = *(v0 + 4872);

  sub_1CAC291EC(v428, v426);
}

uint64_t sub_1CAC21C44()
{
  *(*v1 + 5600) = v0;

  if (v0)
  {
    v2 = sub_1CAC2354C;
  }

  else
  {
    v2 = sub_1CAC21D58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1CAC21D58()
{
  v2 = *(v0 + 5584);
  [*(v0 + 4872) setCalendar_];

  v3 = *(v0 + 5576);
  v4 = *(v0 + 4888);
  v5 = *(v0 + 4880);
  v6 = v3[31];
  v7 = *(v5 + v6);
  if (v7 != *(v4 + v6))
  {
    if (![*(v0 + 4872) allowsAvailabilityModifications])
    {
      sub_1CAC23A1C();
      swift_allocError();
      v17 = 5;
LABEL_108:
      *v16 = v17;
      swift_willThrow();

      v119 = *(v0 + 8);

      v119();
      return;
    }

    [*(v0 + 4872) setAvailability_];
    v3 = *(v0 + 5576);
    v4 = *(v0 + 4888);
    v5 = *(v0 + 4880);
  }

  v8 = v3[27];
  v9 = *(v5 + v8);
  if (v9 == *(v4 + v8))
  {
    goto LABEL_7;
  }

  if (![*(v0 + 4872) allowsPrivacyLevelModifications])
  {
    sub_1CAC23A1C();
    swift_allocError();
    v17 = 7;
    goto LABEL_108;
  }

  [*(v0 + 4872) setPrivacyLevel_];
  v3 = *(v0 + 5576);
  v4 = *(v0 + 4888);
  v5 = *(v0 + 4880);
LABEL_7:
  if (*(v5 + v3[22]) != *(v4 + v3[22]))
  {
    [*(v0 + 4872) setTravelTime_];
    v3 = *(v0 + 5576);
    v4 = *(v0 + 4888);
    v5 = *(v0 + 4880);
  }

  if (*(v5 + v3[28]) != *(v4 + v3[28]))
  {
    if (*(v0 + 5608) != 1)
    {
      goto LABEL_107;
    }

    [*(v0 + 4872) setStatus_];
    v3 = *(v0 + 5576);
    v4 = *(v0 + 4888);
    v5 = *(v0 + 4880);
  }

  v10 = v3[29];
  v11 = *(v5 + v10);
  v12 = *(v4 + v10);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    v15 = 0;
    goto LABEL_20;
  }

  if (!v12 || (, v13 = , v14 = sub_1CACA81C0(v13, v12), , , (v14 & 1) == 0))
  {
    sub_1CAC1CFD0(v11);
    sub_1CABD4070(0, &qword_1EC461E00);
    v15 = sub_1CAD4E1F4();

LABEL_20:
    [*(v0 + 4872) setAlarms_];
  }

LABEL_21:
  v18 = *(*(v0 + 5576) + 156);
  v19 = *(*(v0 + 4880) + v18);
  v20 = *(*(v0 + 4888) + v18);
  if ((sub_1CACA8A10(v19, v20) & 1) == 0)
  {
    v146 = v19;
    v21 = *(v0 + 4880);
    v22 = swift_task_alloc();
    v22[2] = v21;

    v23 = sub_1CAC1C978(sub_1CAC257A0, v22, v20);

    v141 = v23;
    v24 = *(v23 + 16);
    v25 = MEMORY[0x1E69E7CA0];
    if (v24)
    {
      v26 = [*(v0 + 4872) attachments];
      if (v26)
      {
        v1 = *(v0 + 4968);

        v27 = 0;
        while (v27 < *(v141 + 16))
        {
          v28 = *(v0 + 4872);
          sub_1CAC29A3C(v141 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v27, *(v0 + 4984), type metadata accessor for EventAttachmentModelObject);
          v29 = [v28 attachments];
          if (!v29)
          {
            goto LABEL_141;
          }

          v30 = v29;
          v31 = *(v0 + 4984);
          v32 = sub_1CAD4E214();

          v33 = swift_task_alloc();
          v22 = v25;
          *(v33 + 16) = v31;
          v34 = sub_1CAC1CC04(sub_1CAC29AA4, v33, v32);

          if (*(v34 + 16))
          {
            v35 = *(v0 + 4872);
            sub_1CABD3CDC(v34 + 32, v0 + 4800);

            sub_1CABD3D54((v0 + 4800), (v0 + 4832));
            sub_1CABD3CDC(v0 + 4832, v0 + 4768);
            sub_1CABD4070(0, &qword_1EC464E58);
            if (swift_dynamicCast())
            {
              v36 = *(v0 + 4864);
            }

            else
            {
              v36 = 0;
            }

            [v35 removeAttachment_];

            __swift_destroy_boxed_opaque_existential_1(v0 + 4832);
          }

          else
          {
          }

          ++v27;
          sub_1CAC29750(*(v0 + 4984), type metadata accessor for EventAttachmentModelObject);
          if (v24 == v27)
          {
            goto LABEL_34;
          }
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

LABEL_34:
    v37 = v146;
    v144 = *(v146 + 16);
    if (v144)
    {
      v38 = 0;
      v143 = *(v0 + 4968);
      v140 = *(v0 + 4960);
      v142 = v146 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      while (v38 < *(v37 + 16))
      {
        v43 = *(v0 + 4872);
        sub_1CAC29A3C(v142 + *(v143 + 72) * v38, *(v0 + 4976), type metadata accessor for EventAttachmentModelObject);
        v44 = [v43 attachments];
        if (!v44)
        {
          goto LABEL_36;
        }

        v45 = *(v0 + 4872);

        v46 = [v45 attachments];
        if (!v46)
        {
          goto LABEL_142;
        }

        v47 = v46;
        v48 = *(v0 + 4976);
        v1 = sub_1CAD4E214();

        v22 = swift_task_alloc();
        v22[2] = v48;
        v49 = sub_1CAD417B0(sub_1CAC291CC, v22, v1);

        if (!v49)
        {
LABEL_36:
          v39 = *(v0 + 4976);
          v150 = *(v39 + *(v140 + 40));
          v40 = *(v39 + *(v140 + 44));
          v41 = objc_allocWithZone(MEMORY[0x1E6966960]);
          v1 = sub_1CAD4DF54();
          v42 = sub_1CAD4DF54();
          v22 = [v41 initWithUUID:v1 fileName:v42 autoArchived:v150 urlForPendingFileCopy:v40];

          if (!v22)
          {
            goto LABEL_140;
          }

          [*(v0 + 4872) addAttachment_];
        }

        ++v38;
        sub_1CAC29750(*(v0 + 4976), type metadata accessor for EventAttachmentModelObject);
        v37 = v146;
        if (v144 == v38)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_44:
  }

  v50 = *(v0 + 5456);
  v51 = *(v0 + 5448);
  v52 = *(v0 + 4952);
  v53 = *(v0 + 4888);
  v54 = *(*(v0 + 5576) + 148);
  v55 = *(*(v0 + 4944) + 48);
  v151 = *(v0 + 4880);
  sub_1CAB23A9C(v151 + v54, v52, &qword_1EC465450);
  sub_1CAB23A9C(v53 + v54, v52 + v55, &qword_1EC465450);
  v56 = *(v50 + 48);
  v57 = v56(v52, 1, v51);
  v58 = *(v0 + 5448);
  if (v57 == 1)
  {
    if (v56(v52 + v55, 1, *(v0 + 5448)) == 1)
    {
      sub_1CAB21B68(*(v0 + 4952), &qword_1EC465450);
      goto LABEL_58;
    }
  }

  else
  {
    sub_1CAB23A9C(*(v0 + 4952), *(v0 + 5432), &qword_1EC465450);
    if (v56(v52 + v55, 1, v58) != 1)
    {
      v62 = *(v0 + 5456);
      v63 = *(v0 + 5448);
      v64 = *(v0 + 5432);
      v145 = *(v0 + 5464);
      v147 = *(v0 + 4952);
      (*(v62 + 32))(v145, v52 + v55, v63);
      sub_1CAC296FC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
      v65 = sub_1CAD4DED4();
      v66 = *(v62 + 8);
      v66(v145, v63);
      v66(v64, v63);
      sub_1CAB21B68(v147, &qword_1EC465450);
      if (v65)
      {
        goto LABEL_58;
      }

      goto LABEL_51;
    }

    (*(*(v0 + 5456) + 8))(*(v0 + 5432), *(v0 + 5448));
  }

  sub_1CAB21B68(*(v0 + 4952), &qword_1EC463DA0);
LABEL_51:
  if (*(v0 + 5608) != 1)
  {
    goto LABEL_107;
  }

  v59 = *(v0 + 5448);
  v60 = *(v0 + 5424);
  sub_1CAB23A9C(v151 + v54, v60, &qword_1EC465450);
  if (v56(v60, 1, v59) == 1)
  {
    v61 = 0;
  }

  else
  {
    v67 = *(v0 + 5456);
    v68 = *(v0 + 5448);
    v69 = *(v0 + 5424);
    v61 = sub_1CAD4BFB4();
    (*(v67 + 8))(v69, v68);
  }

  [*(v0 + 4872) setURL_];

LABEL_58:
  v70 = *(*(v0 + 5576) + 120);
  v71 = (*(v0 + 4880) + v70);
  v72 = v71[1];
  v73 = (*(v0 + 4888) + v70);
  v74 = v73[1];
  if (!v72)
  {
    if (!v74)
    {
      goto LABEL_69;
    }

    if (*(v0 + 5608))
    {
      v75 = 0;
      goto LABEL_68;
    }

LABEL_107:
    sub_1CAC23A1C();
    swift_allocError();
    v17 = 2;
    goto LABEL_108;
  }

  if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_1CAD4E9E4() & 1) == 0)
  {
    if (*(v0 + 5608))
    {
      v75 = sub_1CAD4DF54();
LABEL_68:
      [*(v0 + 4872) setDisplayNotes_];

      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_69:
  v76 = *(v0 + 5576);
  v77 = *(v0 + 4888);
  v78 = *(v0 + 4880);
  v79 = *(v76 + 140);
  v80 = MEMORY[0x1E69E7CC0];
  if (*(v77 + v79))
  {
    v81 = *(v77 + v79);
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  v82 = sub_1CACD03A8(v81);

  v83 = *(v76 + 140);
  if (*(v78 + v83))
  {
    v84 = *(v78 + v83);
  }

  else
  {
    v84 = v80;
  }

  v1 = sub_1CACD03A8(v84);

  v22 = sub_1CAC23E68(v82, v1);
  v25 = sub_1CAC23E68(v1, v82);

  if (!v22[2])
  {
LABEL_99:

    if (*(v25 + 16))
    {
      if (*(v0 + 5608) == 1)
      {
        while ((sub_1CAC23EBC() & 1) != 0)
        {
          v106 = [*(v0 + 4872) attendees];
          if (!v106)
          {
            goto LABEL_127;
          }

          v107 = v106;
          v149 = *(v0 + 4920);
          v152 = *(v0 + 4928);
          sub_1CABD4070(0, &unk_1EC461EF0);
          v108 = sub_1CAD4E214();

          sub_1CAC2425C(MEMORY[0x1E69E7CC8], &qword_1EC464E80);
          v110 = sub_1CAC2492C(v109, v108);

          v111 = 0;
          v112 = v25;
          v114 = *(v25 + 56);
          v25 += 56;
          v113 = v114;
          v115 = -1;
          v116 = -1 << *(v25 - 24);
          if (-v116 < 64)
          {
            v115 = ~(-1 << -v116);
          }

          v117 = v115 & v113;
          v118 = (63 - v116) >> 6;
          while (v117)
          {
LABEL_118:
            v121 = *(v0 + 4936);
            v122 = __clz(__rbit64(v117));
            v117 &= v117 - 1;
            sub_1CAC29A3C(*(v112 + 48) + *(v152 + 72) * (v122 | (v111 << 6)), v121, type metadata accessor for EventAttendeeModelObject);
            v123 = (v121 + *(v149 + 32));
            v1 = *v123;
            v22 = v123[1];

            sub_1CAC29750(v121, type metadata accessor for EventAttendeeModelObject);
            if (*(v110 + 16))
            {
              v1 = sub_1CAC16398(v1, v22);
              v125 = v124;

              if (v125)
              {
                [*(v0 + 4872) removeAttendee_];
              }
            }

            else
            {
            }
          }

          while (1)
          {
            v120 = v111 + 1;
            if (__OFADD__(v111, 1))
            {
              break;
            }

            if (v120 >= v118)
            {

              goto LABEL_128;
            }

            v117 = *(v25 + 8 * v120);
            ++v111;
            if (v117)
            {
              v111 = v120;
              goto LABEL_118;
            }
          }

LABEL_124:
          __break(1u);
LABEL_125:
          v91 = sub_1CAD4E604();
          if (v91)
          {
            goto LABEL_82;
          }

LABEL_126:

          if (!*(v25 + 16))
          {
            goto LABEL_127;
          }
        }

        goto LABEL_111;
      }

      goto LABEL_106;
    }

LABEL_127:

LABEL_128:
    v126 = *(v0 + 5576);
    v127 = *(v0 + 4928);
    v128 = *(v0 + 4920);
    v129 = *(v0 + 4912);
    sub_1CAB23A9C(*(v0 + 4880) + *(v126 + 144), v129, &qword_1EC464E38);
    v130 = *(v127 + 48);
    if (v130(v129, 1, v128) == 1)
    {
      sub_1CAB21B68(*(v0 + 4912), &qword_1EC464E38);
    }

    else
    {
      v131 = *(v0 + 4920);
      v132 = *(v0 + 4912);
      v133 = *(v0 + 4904);
      v134 = *(v0 + 4888);
      v135 = *(v132 + *(v131 + 44));
      sub_1CAC29750(v132, type metadata accessor for EventAttendeeModelObject);
      sub_1CAB23A9C(v134 + *(v126 + 144), v133, &qword_1EC464E38);
      v136 = v130(v133, 1, v131);
      v137 = *(v0 + 4904);
      if (v136 == 1)
      {
        sub_1CAB21B68(v137, &qword_1EC464E38);
      }

      else
      {
        v138 = *(v137 + *(v131 + 44));
        sub_1CAC29750(v137, type metadata accessor for EventAttendeeModelObject);
        if (v135 == v138)
        {
          goto LABEL_135;
        }
      }

      if (![*(v0 + 4872) allowsParticipationStatusModifications])
      {
        sub_1CAC23A1C();
        swift_allocError();
        v17 = 9;
        goto LABEL_108;
      }

      [*(v0 + 4872) setParticipationStatus_];
    }

LABEL_135:

    v139 = *(v0 + 8);

    v139(0, 0);
    return;
  }

  if (*(v0 + 5608) != 1)
  {

LABEL_106:

    goto LABEL_107;
  }

  if ((sub_1CAC23EBC() & 1) == 0)
  {

LABEL_111:

    sub_1CAC23A1C();
    swift_allocError();
    v17 = 8;
    goto LABEL_108;
  }

  v85 = *(v0 + 4872);
  v86 = *(v0 + 4896);
  v1 = sub_1CAC28EFC(v22);

  v22 = sub_1CAC28B60(MEMORY[0x1E69E7CC0]);
  v87 = [v85 attendees];
  if (v87)
  {
    v88 = v87;

    sub_1CABD4070(0, &unk_1EC461EF0);
    v89 = sub_1CAD4E214();

    sub_1CAC2425C(MEMORY[0x1E69E7CC8], &qword_1EC464E78);
    v22 = sub_1CAC2462C(v90, v89);
  }

  if (v1 >> 62)
  {
    goto LABEL_125;
  }

  v91 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v91)
  {
    goto LABEL_126;
  }

LABEL_82:
  v148 = v25;
  if (v91 >= 1)
  {
    v92 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x1CCAA7940](v92, v1);
      }

      else
      {
        v93 = *(v1 + 8 * v92 + 32);
      }

      v94 = v93;
      v95 = [v93 semanticIdentifier];
      if (v95)
      {
        v96 = v95;
        v97 = sub_1CAD4DF94();
        v99 = v98;

        if (!v22[2])
        {
          goto LABEL_84;
        }
      }

      else
      {
        v97 = 0;
        v99 = 0;
        if (!v22[2])
        {
LABEL_84:

          goto LABEL_85;
        }
      }

      v100 = sub_1CAC16398(v97, v99);
      v102 = v101;

      if (v102)
      {
        v103 = *(v22[7] + 8 * v100);
        [v103 setParticipantStatus_];
        [v103 setParticipantRole_];
        [v103 setParticipantType_];
        v104 = v103;
        v105 = [v94 comment];
        [v104 setComment_];

        goto LABEL_86;
      }

LABEL_85:
      [*(v0 + 4872) addAttendee_];
LABEL_86:
      ++v92;

      if (v91 == v92)
      {

        v25 = v148;
        goto LABEL_99;
      }
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_1CAC2354C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CAC238E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for EventModelObject();
  v5 = *(v0 + *(v4 + 140));
  if (v5)
  {
    v5 = *(v5 + 16);
    if (v5)
    {
      sub_1CAB23A9C(v0 + *(v4 + 136), v3, &qword_1EC465AC0);
      v6 = type metadata accessor for EventOrganizerModelObject(0);
      if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
      {
        sub_1CAB21B68(v3, &qword_1EC465AC0);
        LOBYTE(v5) = 1;
      }

      else
      {
        v7 = v3[*(v6 + 36)];
        sub_1CAC29750(v3, type metadata accessor for EventOrganizerModelObject);
        LOBYTE(v5) = v7 ^ 1;
      }
    }
  }

  return v5 & 1;
}

unint64_t sub_1CAC23A1C()
{
  result = qword_1EC464E50;
  if (!qword_1EC464E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464E50);
  }

  return result;
}

uint64_t sub_1CAC23A70(void *a1)
{
  v2 = sub_1CAD4BFF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = [a1 UUID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1CAD4DF94();
  }

  else
  {
    v12 = [a1 URLForPendingFileCopy];
    if (v12)
    {
      v13 = v12;
      sub_1CAD4BFC4();

      (*(v3 + 32))(v8, v6, v2);
      v11 = sub_1CAD4BFA4();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1CAC23BF4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for EventModelObject();
  v9 = 0;
  v10 = *(a2 + *(result + 156));
  v11 = *(v10 + 16);
  while (1)
  {
    v12 = v9;
    if (v11 == v9)
    {
      return v11 == v12;
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    sub_1CAC29A3C(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v7, type metadata accessor for EventAttachmentModelObject);
    if (*v7 == *a1 && v7[1] == a1[1])
    {
      sub_1CAC29750(v7, type metadata accessor for EventAttachmentModelObject);
      return v11 == v12;
    }

    ++v9;
    v14 = sub_1CAD4E9E4();
    result = sub_1CAC29750(v7, type metadata accessor for EventAttachmentModelObject);
    if (v14)
    {
      return v11 == v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC23D88(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_1CABD3CDC(a1, v11);
  sub_1CABD4070(0, &qword_1EC464E58);
  swift_dynamicCast();
  v4 = sub_1CAC23A70(v10);
  v6 = v5;

  if (v6)
  {
    if (v2 == v4 && v6 == v3)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1CAD4E9E4();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1CAC23E68(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1CAC25D28(a1);
    return a2;
  }

  else
  {

    return sub_1CAC25F30(a1, a2);
  }
}

uint64_t sub_1CAC23EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for EventCalendarModelObject();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v0 + *(v14 + 104), v9, &qword_1EC464020);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1CAC297D8(v9, v13, type metadata accessor for EventCalendarModelObject);
    if (v13[89])
    {
      sub_1CAB23A9C(v0 + *(v14 + 136), v4, &qword_1EC465AC0);
      v17 = type metadata accessor for EventOrganizerModelObject(0);
      if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
      {
        sub_1CAB21B68(v4, &qword_1EC465AC0);
      }

      else
      {
        v20 = v4[*(v17 + 36)];
        sub_1CAC29750(v4, type metadata accessor for EventOrganizerModelObject);
        if (v20)
        {
          v16 = 1;
LABEL_13:
          v18 = type metadata accessor for EventCalendarModelObject;
          v19 = v13;
          goto LABEL_14;
        }
      }

      if (*(v13 + 12) == 2)
      {
        v16 = sub_1CAC250A8();
        goto LABEL_13;
      }
    }

    v16 = 0;
    goto LABEL_13;
  }

  sub_1CAB21B68(v9, &qword_1EC464020);
  sub_1CAB23A9C(v0 + *(v14 + 136), v6, &qword_1EC465AC0);
  v15 = type metadata accessor for EventOrganizerModelObject(0);
  if ((*(*(v15 - 8) + 48))(v6, 1, v15) != 1)
  {
    v16 = v6[*(v15 + 36)];
    v18 = type metadata accessor for EventOrganizerModelObject;
    v19 = v6;
LABEL_14:
    sub_1CAC29750(v19, v18);
    return v16 & 1;
  }

  sub_1CAB21B68(v6, &qword_1EC465AC0);
  v16 = 0;
  return v16 & 1;
}

void sub_1CAC2425C(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v3 = sub_1CAD4E7D4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 64);
  v41 = v2;
  v9 = v6 + 63;
  if (v4 == MEMORY[0x1E69E6158])
  {
    v26 = v9 >> 6;

    v27 = 0;
    while (v8)
    {
      v32 = v27;
LABEL_35:
      v33 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v8)) | (v32 << 6)));
      v8 &= v8 - 1;

      v34 = v33;
      swift_dynamicCast();
      v35 = sub_1CAC16398(v42, v43);
      if (v36)
      {
        v28 = (*(v3 + 48) + 16 * v35);
        *v28 = v42;
        v28[1] = v43;
        v29 = v35;

        v30 = *(v3 + 56);
        v31 = *(v30 + 8 * v29);
        *(v30 + 8 * v29) = v34;
      }

      else
      {
        if (*(v3 + 16) >= *(v3 + 24))
        {
          goto LABEL_43;
        }

        *(v3 + 64 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        v37 = (*(v3 + 48) + 16 * v35);
        *v37 = v42;
        v37[1] = v43;
        *(*(v3 + 56) + 8 * v35) = v34;
        v38 = *(v3 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_44;
        }

        *(v3 + 16) = v40;
      }

      v27 = v32;
      v2 = v41;
    }

    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
LABEL_39:

        return;
      }

      v8 = *(v5 + 8 * v32);
      ++v27;
      if (v8)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = v9 >> 6;
    v11 = v3 + 64;

    v12 = 0;
    while (v8)
    {
LABEL_16:
      v16 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v8)) | (v12 << 6)));

      v17 = v16;
      swift_dynamicCast();
      sub_1CAD4EA84();
      sub_1CAD4EAA4();
      if (v43)
      {
        sub_1CAD4E054();
      }

      v18 = sub_1CAD4EAC4();
      v19 = -1 << *(v3 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v8 &= v8 - 1;
      *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v3 + 48) + 16 * v13);
      *v14 = v42;
      v14[1] = v43;
      *(*(v3 + 56) + 8 * v13) = v17;
      ++*(v3 + 16);
      v2 = v41;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_39;
      }

      v8 = *(v5 + 8 * v15);
      ++v12;
      if (v8)
      {
        v12 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1CAC2462C(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_35:
    v36 = a2 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1CAD4E604();
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    v36 = a2 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return a1;
    }
  }

  v5 = 0;
  while (2)
  {
    while (2)
    {
      for (i = v5; ; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1CCAA7940](i, a2);
        }

        else
        {
          if (i >= *(v36 + 16))
          {
            goto LABEL_34;
          }

          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v9 = [v7 semanticIdentifier];
        if (v9)
        {
          v10 = v9;
          v11 = sub_1CAD4DF94();
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0;
        }

        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          break;
        }

        v15 = sub_1CAC16398(v11, v13);
        v17 = v16;

        if (v17)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CAC795A0();
          }

          sub_1CAC25B5C(v15, a1);
          goto LABEL_30;
        }

        if (v5 == v4)
        {
          return a1;
        }
      }

      v35 = v14;
      v8 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_1CAC16398(v11, v13);
      v21 = a1[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v25 = v20;
      if (a1[3] < v24)
      {
        sub_1CAC77968(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_1CAC16398(v11, v13);
        if ((v25 & 1) != (v26 & 1))
        {
LABEL_39:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
          result = sub_1CAD4EA34();
          __break(1u);
          return result;
        }

        goto LABEL_20;
      }

      v27 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v19;
        sub_1CAC795A0();
        v19 = v33;
LABEL_20:
        v27 = v35;
      }

      if (v25)
      {
        v28 = a1[7];
        v29 = *(v28 + 8 * v19);
        *(v28 + 8 * v19) = v27;

        if (v5 != v4)
        {
          continue;
        }

        return a1;
      }

      break;
    }

    a1[(v19 >> 6) + 8] |= 1 << v19;
    v30 = (a1[6] + 16 * v19);
    *v30 = v11;
    v30[1] = v13;
    *(a1[7] + 8 * v19) = v27;
    v31 = a1[2];
    v23 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v23)
    {
      goto LABEL_38;
    }

    a1[2] = v32;
LABEL_30:

    if (v5 != v4)
    {
      continue;
    }

    return a1;
  }
}

uint64_t sub_1CAC2492C(void *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CAD4E604())
  {
    v5 = 0;
    v33 = v2 & 0xFFFFFFFFFFFFFF8;
    v34 = v2 & 0xC000000000000001;
    v32 = v2;
    while (1)
    {
      if (v34)
      {
        v9 = MEMORY[0x1CCAA7940](v5, v2);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v2 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v2 = i;
      v12 = [v9 semanticIdentifier];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1CAD4DF94();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_1CAC16398(v14, v16);
      v21 = a1[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_26;
      }

      v25 = v20;
      if (a1[3] < v24)
      {
        sub_1CAC7797C(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_1CAC16398(v14, v16);
        if ((v25 & 1) != (v26 & 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
          result = sub_1CAD4EA34();
          __break(1u);
          return result;
        }

LABEL_18:
        if (v25)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v30 = v19;
      sub_1CAC795B4();
      v19 = v30;
      if (v25)
      {
LABEL_4:
        v6 = a1[7];
        v7 = *(v6 + 8 * v19);
        *(v6 + 8 * v19) = v17;

        goto LABEL_5;
      }

LABEL_19:
      a1[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (a1[6] + 16 * v19);
      *v27 = v14;
      v27[1] = v16;
      *(a1[7] + 8 * v19) = v17;
      v28 = a1[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      a1[2] = v29;

LABEL_5:
      ++v5;
      i = v2;
      v8 = v11 == v2;
      v2 = v32;
      if (v8)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return a1;
}