uint64_t sub_25247D54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25247D5E0()
{
  result = qword_27F4DE090;
  if (!qword_27F4DE090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE080);
    sub_25247D69C(&qword_27F4DE098, _s9ColorWellVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE090);
  }

  return result;
}

uint64_t sub_25247D69C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25247D748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25247D7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25247D810()
{
  result = qword_27F4DE0E8;
  if (!qword_27F4DE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE0E8);
  }

  return result;
}

unint64_t sub_25247D864()
{
  result = qword_27F4DE100;
  if (!qword_27F4DE100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE0F8);
    sub_25247D8F0();
    sub_25247D9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE100);
  }

  return result;
}

unint64_t sub_25247D8F0()
{
  result = qword_27F4DE108;
  if (!qword_27F4DE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE110);
    sub_25247D9A8();
    sub_252400FC8(&qword_27F4DE120, &qword_27F4DE128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE108);
  }

  return result;
}

unint64_t sub_25247D9A8()
{
  result = qword_27F4DE118;
  if (!qword_27F4DE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE118);
  }

  return result;
}

unint64_t sub_25247D9FC()
{
  result = qword_27F4DE130;
  if (!qword_27F4DE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE130);
  }

  return result;
}

unint64_t sub_25247DAA4()
{
  result = qword_27F4DE138;
  if (!qword_27F4DE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE138);
  }

  return result;
}

uint64_t sub_25247DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE170);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  sub_2526919E0();
  v12 = a2;
  v13 = a3;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE178);
  sub_252482808();
  sub_252690820();
  sub_252400FC8(&qword_27F4DE1C8, &qword_27F4DE170);
  sub_252691FC0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_25247DCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25247DD4C(a3, a1, a2, a4);
  v5 = sub_252691A20();
  sub_252690760();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE178);
  v15 = a4 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_25247DD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v43 = a4;
  v42 = sub_2526914B0();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_252690A20();
  v7 = *(v39 - 8);
  v38 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE188);
  MEMORY[0x28223BE20](v36);
  v10 = v34 - v9;
  *v10 = sub_2526912E0();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v34[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1D0) + 44);
  v35 = a2;
  v11 = *(sub_25247E1F8(a2, a3) + 16);

  v45 = 0;
  v46 = v11;
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1E0);
  sub_252482A94();
  sub_252400FC8(&qword_27F4DE1F8, &qword_27F4DE1E0);
  sub_252692790();
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1A0) + 36)];
  v14 = *(sub_252690D30() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_252691260();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #16.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = v35;
  *(v22 + 24) = a3;

  v24 = sub_252692920();
  v25 = v37;
  v26 = &v10[*(v36 + 36)];
  *v26 = sub_252482B74;
  v26[1] = v22;
  v26[2] = v24;
  v26[3] = v27;
  v28 = v39;
  (*(v7 + 16))(v25, v40, v39);
  v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v23;
  *(v30 + 24) = a3;
  (*(v7 + 32))(v30 + v29, v25, v28);

  v31 = v41;
  sub_252691670();
  sub_2524828F0();
  v32 = v42;
  sub_252691E50();

  (*(v44 + 8))(v31, v32);
  return sub_252372288(v10, &qword_27F4DE188);
}

uint64_t sub_25247E1F8(uint64_t a1, uint64_t a2)
{
  if (qword_27F4DAA40 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v4 = sub_252482288(qword_27F4DE160, a1, a2);
    v38 = v4;
    v5 = qword_27F4DAA48;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_252482288(qword_27F4DE168, a1, a2);
    v7 = *(v4 + 2);

    if (v7 > 0x13)
    {
      goto LABEL_11;
    }

    v8 = 20 - v7;
    if (*(v6 + 2) < (20 - v7))
    {
      goto LABEL_11;
    }

    v9 = *(sub_25268ED20() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);

    v11 = swift_unknownObjectRetain();
    result = sub_2523C5F34(v11, &v6[v10], 0, (2 * v8) | 1);
    v13 = *(v6 + 2);
    if (v13 < v8)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v6;
    if (!isUniquelyReferenced_nonNull_native || (v15 = v6, (v7 - 20 + v13) > *(v6 + 3) >> 1))
    {
      v15 = sub_252369680(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v37 = v15;
    }

    a1 = &v37;
    sub_252483168(0, 20 - v7, 0, MEMORY[0x277D15B48]);

    v4 = v38;
    v6 = v15;
LABEL_11:
    sub_2524832B4(v4, 5);
    v17 = v16;

    sub_2524832B4(v6, 6);
    v19 = v18;
    v35 = v17;
    v36 = *(v17 + 16);
    v20 = *(v18 + 16);
    v21 = MEMORY[0x277D84F90];
    a2 = 4;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = a2 - 4;
      v24 = v21;
      if (a2 - 4 < v36)
      {
        if (v23 >= *(v35 + 16))
        {
          goto LABEL_40;
        }

        v24 = *(v35 + 8 * a2);
      }

      v25 = v21;
      if (v23 < v20)
      {
        if (v23 >= *(v19 + 16))
        {
          goto LABEL_41;
        }

        v25 = *(v19 + 8 * a2);
      }

      v26 = v25[2];
      a1 = v24[2];
      v27 = a1 + v26;
      if (__OFADD__(a1, v26))
      {
        break;
      }

      v28 = swift_isUniquelyReferenced_nonNull_native();
      if (v28 && v27 <= v24[3] >> 1)
      {
        if (v25[2])
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (a1 <= v27)
        {
          v33 = a1 + v26;
        }

        else
        {
          v33 = a1;
        }

        v24 = sub_2523696CC(v28, v33, 1, v24);
        if (v25[2])
        {
LABEL_22:
          a1 = v24[2];
          v29 = (v24[3] >> 1) - a1;
          _s21ColorSwatchPickerViewV9CellValueOMa(0);
          if (v29 < v26)
          {
            goto LABEL_39;
          }

          swift_arrayInitWithCopy();

          if (v26)
          {
            v30 = v24[2];
            v31 = __OFADD__(v30, v26);
            v32 = v30 + v26;
            if (v31)
            {
              goto LABEL_42;
            }

            v24[2] = v32;
          }

          goto LABEL_31;
        }
      }

      if (v26)
      {
        goto LABEL_38;
      }

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2523696A8(0, v22[2] + 1, 1, v22);
      }

      a1 = v22[2];
      v34 = v22[3];
      if (a1 >= v34 >> 1)
      {
        v22 = sub_2523696A8((v34 > 1), a1 + 1, 1, v22);
      }

      v22[2] = a1 + 1;
      v22[a1 + 4] = v24;
      if (++a2 == 8)
      {

        return v22;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_25247E618@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = sub_2526911D0();
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE250);
  result = sub_25247E1F8(a2, a3);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(result + 16))
  {

    swift_getKeyPath();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE258);
    sub_252482A94();
    sub_252482D38();
    return sub_252692790();
  }

  __break(1u);
  return result;
}

uint64_t sub_25247E790@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a5;
  v61 = sub_2526912C0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2526917F0();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE268);
  MEMORY[0x28223BE20](v52);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE2D0);
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = *a1;
  result = sub_25247E1F8(a2, a3);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = *(result + 8 * a4 + 32);

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 < *(v23 + 16))
  {
    sub_252482C64(v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v15, _s21ColorSwatchPickerViewV9CellValueOMa);

    v24 = _s21ColorSwatchPickerViewV9ColorCellVMa(0);
    sub_252482C64(v15, &v17[*(v24 + 24)], _s21ColorSwatchPickerViewV9CellValueOMa);
    _s16ColorPickerStateCMa();
    sub_252483108(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    *v17 = sub_252690DF0();
    *(v17 + 1) = v25;
    *(v17 + 2) = swift_getKeyPath();
    v17[24] = 0;
    v26 = &v17[*(v24 + 28)];
    *v26 = a4;
    *(v26 + 1) = v21;
    v27 = sub_252690620();
    sub_252482CCC(v15, _s21ColorSwatchPickerViewV9CellValueOMa);
    v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE2A0) + 36)];
    *v28 = v27;
    v28[1] = a3;

    v29 = sub_252692920();
    v31 = v30;
    sub_2526908F0();
    v32 = v65;
    v33 = v66;
    v34 = v67;
    v35 = v68;
    v36 = v69;
    v37 = v70;
    sub_2526922F0();
    v38 = sub_252692350();

    KeyPath = swift_getKeyPath();
    *&v71 = v32;
    *(&v71 + 1) = __PAIR64__(v34, v33);
    *&v72 = v35;
    *(&v72 + 1) = v36;
    *&v73 = v37;
    *(&v73 + 1) = KeyPath;
    *&v74 = v38;
    *(&v74 + 1) = v29;
    v75 = v31;
    v40 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE290) + 36)];
    v41 = v74;
    *(v40 + 2) = v73;
    *(v40 + 3) = v41;
    *(v40 + 8) = v75;
    v42 = v72;
    *v40 = v71;
    *(v40 + 1) = v42;
    v76 = v32;
    v77 = v33;
    v78 = v34;
    v79 = v35;
    v80 = v36;
    v81 = v37;
    v82 = KeyPath;
    v83 = v38;
    v84 = v29;
    v85 = v31;
    sub_25237153C(&v71, v64, &qword_27F4DE2C8);
    sub_252372288(&v76, &qword_27F4DE2C8);
    sub_252692920();
    sub_2526909C0();
    v43 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE280) + 36)];
    v44 = v64[1];
    *v43 = v64[0];
    *(v43 + 1) = v44;
    *(v43 + 2) = v64[2];
    v45 = v52;
    v46 = &v17[*(v52 + 36)];
    *v46 = 0x3FF999999999999ALL;
    *(v46 + 4) = 0;
    v47 = v55;
    sub_2526917D0();
    v48 = sub_252482E30();
    sub_252692020();
    (*(v56 + 8))(v47, v57);
    sub_252372288(v17, &qword_27F4DE268);
    v49 = v58;
    sub_2526912A0();
    v62 = v45;
    v63 = v48;
    swift_getOpaqueTypeConformance2();
    v50 = v54;
    sub_252691EB0();
    (*(v59 + 8))(v49, v61);
    return (*(v53 + 8))(v20, v50);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25247EE2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (**a4)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *(v8 + 4) = v7;
  *a4 = sub_252482C18;
  a4[1] = v8;
}

__n128 sub_25247EEAC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE208);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  sub_25247F008(a1, a2, v13 - v7);
  sub_2526928B0();
  sub_252690D70();
  sub_2523714D4(v8, a3, &qword_27F4DE208);
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE210) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_25247F008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v48 = a1;
  v53 = sub_252692270();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_252690D30();
  MEMORY[0x28223BE20](v50);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE218);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = _s21ColorSwatchPickerViewV19ColorPreferenceDataVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25268ED20();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v56 = v15;
  sub_2525F8864(sub_252482C44, v49, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252372288(v9, &qword_27F4DE218);
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
  }

  else
  {
    sub_252483894(v9, v13, _s21ColorSwatchPickerViewV19ColorPreferenceDataVMa);
    type metadata accessor for CGRect(0);
    sub_252690A30();
    sub_252482CCC(v13, _s21ColorSwatchPickerViewV19ColorPreferenceDataVMa);
    v18 = *(&v60 + 1);
    v17 = *&v60;
    v16 = 1.0;
    v20 = *(&v61 + 1);
    v19 = *&v61;
  }

  v21 = *(v50 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_252691260();
  (*(*(v23 - 8) + 104))(&v6[v21], v22, v23);
  __asm { FMOV            V0.2D, #4.0 }

  *v6 = _Q0;
  if (qword_27F4DAA30 != -1)
  {
    swift_once();
  }

  v29 = qword_27F4FB420;
  sub_2526908F0();
  sub_252482C64(v6, a3, MEMORY[0x277CDFC08]);
  v30 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAC8) + 36);
  v31 = v58;
  *v30 = v57;
  *(v30 + 16) = v31;
  *(v30 + 32) = v59;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE220);
  *(a3 + *(v32 + 52)) = v29;
  *(a3 + *(v32 + 56)) = 256;

  v33 = sub_252692920();
  v35 = v34;
  sub_252482CCC(v6, MEMORY[0x277CDFC08]);
  v36 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE228) + 36));
  *v36 = v33;
  v36[1] = v35;
  (*(v52 + 104))(v51, *MEMORY[0x277CE0ED0], v53);
  v37 = sub_2526923A0();
  v38 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE230) + 36));
  *v38 = v37;
  v38[1] = 0x4008000000000000;
  v38[2] = 0;
  v38[3] = 0;
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  CGRectGetWidth(v63);
  v64.origin.x = v17;
  v64.origin.y = v18;
  v64.size.width = v19;
  v64.size.height = v20;
  CGRectGetHeight(v64);
  sub_252692920();
  sub_2526909C0();
  v39 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE238) + 36));
  v40 = v61;
  *v39 = v60;
  v39[1] = v40;
  v39[2] = v62;
  v41 = v17;
  *&v40 = v18;
  v42 = v19;
  v43 = v20;
  MinX = CGRectGetMinX(*(&v40 - 8));
  v65.origin.x = v17;
  v65.origin.y = v18;
  v65.size.width = v19;
  v65.size.height = v20;
  MinY = CGRectGetMinY(v65);
  v46 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE240) + 36));
  *v46 = MinX;
  v46[1] = MinY;
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE208) + 36)) = v16;
  return (*(v54 + 8))(v15, v55);
}

uint64_t sub_25247F6D8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  sub_2526909F0();
  sub_25247F9F8(a1, a2, v23, a3, a4, v24);
  sub_252482C64(v23, v20, _s21ColorSwatchPickerViewV9CellValueOMa);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
  if ((*(*(v25 - 8) + 48))(v20, 1, v25) == 1)
  {
    sub_252482CCC(v23, _s21ColorSwatchPickerViewV9CellValueOMa);
  }

  else
  {
    (*(v9 + 32))(v17, v20, v8);
    v26 = *(v9 + 16);
    v26(v14, v17, v8);

    sub_252486464(v14);
    swift_getKeyPath();
    v30 = v17;
    swift_getKeyPath();
    v26(v11, v14, v8);
    sub_252690690();
    v27 = *(v9 + 8);
    v27(v14, v8);
    v27(v30, v8);
    v20 = v23;
  }

  return sub_252482CCC(v20, _s21ColorSwatchPickerViewV9CellValueOMa);
}

uint64_t sub_25247F9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D3>)
{
  v12 = *(sub_25247E1F8(a1, a2) + 16);

  v14 = floor(a5 / fmax(a6 / v12, 50.0));
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v12 - 1;
  if ((v12 - 1) >= v14)
  {
    v15 = v14;
  }

  v16 = v15 & ~(v15 >> 63);
  result = sub_25247E1F8(a1, a2);
  if (v16 >= *(result + 16))
  {
    goto LABEL_21;
  }

  v17 = *(result + 8 * v16 + 32);

  v18 = *(v17 + 16);

  v19 = floor(a4 / 88.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v18 - 1 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18 - 1;
  }

  result = sub_25247E1F8(a1, a2);
  if (v16 >= *(result + 16))
  {
    goto LABEL_25;
  }

  v21 = v20 & ~(v20 >> 63);
  v22 = *(result + 8 * v16 + 32);

  if (v21 >= *(v22 + 16))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v23 = *(_s21ColorSwatchPickerViewV9CellValueOMa(0) - 8);
  sub_252482C64(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, a3, _s21ColorSwatchPickerViewV9CellValueOMa);
}

uint64_t sub_25247FC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE348);
  MEMORY[0x28223BE20](v141);
  v143 = &v112 - v3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE350);
  MEMORY[0x28223BE20](v142);
  v5 = &v112 - v4;
  v6 = sub_252691730();
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x28223BE20](v6);
  v133 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0B0);
  v139 = *(v8 - 8);
  v140 = v8;
  MEMORY[0x28223BE20](v8);
  v134 = &v112 - v9;
  v10 = sub_252691230();
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = &v112 - v13;
  v120 = _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa(0);
  MEMORY[0x28223BE20](v120);
  v121 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s21ColorSwatchPickerViewV9ColorCellVMa(0);
  v16 = v15 - 8;
  v118 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v119 = v17;
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE358);
  MEMORY[0x28223BE20](v123);
  v124 = (&v112 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE360);
  MEMORY[0x28223BE20](v20 - 8);
  v132 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v137 = &v112 - v23;
  v128 = sub_2526910F0();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0B8);
  MEMORY[0x28223BE20](v138);
  v129 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = &v112 - v27;
  MEMORY[0x28223BE20](v28);
  v130 = &v112 - v29;
  v30 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25268ED20();
  v34 = *(v33 - 8);
  v35 = v34[8];
  MEMORY[0x28223BE20](v33);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v112 - v38;
  v40 = *(v16 + 32);
  v145 = a1;
  sub_252482C64(a1 + v40, v32, _s21ColorSwatchPickerViewV9CellValueOMa);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
  if ((*(*(v41 - 8) + 48))(v32, 1, v41) == 1)
  {
    sub_252482CCC(v32, _s21ColorSwatchPickerViewV9CellValueOMa);
    v42 = *(v145 + 16);
    if (*(v145 + 24) == 1)
    {
      if ((v42 & 1) == 0)
      {
LABEL_4:
        v43 = 1;
        v45 = v139;
        v44 = v140;
        v46 = v130;
LABEL_11:
        (*(v45 + 56))(v46, v43, 1, v44);
        sub_25237153C(v46, v143, &qword_27F4DE0B8);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DE368, &qword_27F4DE350);
        sub_252483D28();
        sub_252691470();
        return sub_252372288(v46, &qword_27F4DE0B8);
      }
    }

    else
    {

      sub_252692F00();
      v71 = sub_2526919C0();
      sub_252690570();

      v72 = v126;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_25235E264(v42, 0);
      (*(v127 + 8))(v72, v128);
      if ((v146 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_252691240();
    v73 = sub_252691D30();
    v75 = v74;
    v77 = v76;
    sub_252691BB0();
    v78 = sub_252691D00();
    v80 = v79;
    v82 = v81;
    v84 = v83;

    sub_2524228D8(v73, v75, v77 & 1);

    v146 = v78;
    v147 = v80;
    v148 = v82 & 1;
    v149 = v84;
    v85 = v133;
    sub_252691720();
    v86 = v134;
    v87 = v136;
    sub_252691ED0();
    (*(v135 + 8))(v85, v87);
    sub_2524228D8(v78, v80, v82 & 1);

    v45 = v139;
    v44 = v140;
    v46 = v130;
    (*(v139 + 32))(v130, v86, v140);
    v43 = 0;
    goto LABEL_11;
  }

  v116 = v5;
  v47 = v34[4];
  v47(v39, v32, v33);
  v48 = v34 + 2;
  v49 = v34[2];
  v49(v36, v39, v33);
  v114 = sub_25248C4C8(v36);
  v113 = sub_252692520();
  v117 = v39;
  v115 = v49;
  v49(v36, v39, v33);
  v130 = v34;
  v50 = v145;
  sub_252482C64(v145, v18, _s21ColorSwatchPickerViewV9ColorCellVMa);
  v51 = (*(v48 + 64) + 16) & ~*(v48 + 64);
  v52 = (v35 + *(v118 + 80) + v51) & ~*(v118 + 80);
  v53 = swift_allocObject();
  v47((v53 + v51), v36, v33);
  v119 = v53;
  sub_252483894(v18, v53 + v52, _s21ColorSwatchPickerViewV9ColorCellVMa);
  if (!*v50)
  {
    _s16ColorPickerStateCMa();
    sub_252483108(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    result = sub_252690DE0();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v54 = v122;
  sub_252690680();

  (*(v130 + 7))(v54, 0, 1, v33);
  v55 = v121;
  v56 = v117;
  v57 = v115;
  v115(&v121[*(v120 + 20)], v117, v33);
  sub_2523714D4(v54, v55, &qword_27F4DB2A8);
  v58 = v124;
  sub_252483894(v55, v124 + *(v123 + 36), _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa);
  v59 = v113;
  *v58 = v114;
  v58[1] = v59;
  v60 = v119;
  v58[2] = sub_252483DF0;
  v58[3] = v60;
  sub_252691210();
  sub_252691200();
  v122 = v33;
  v57(v36, v56, v33);
  sub_25248C4C8(v36);
  sub_252691220();

  sub_252691200();
  sub_252691250();
  v61 = sub_252691D30();
  v63 = v62;
  v65 = v64;
  sub_252483ED4();
  sub_252691FA0();
  sub_2524228D8(v61, v63, v65 & 1);

  sub_252372288(v58, &qword_27F4DE358);
  v66 = *(v145 + 16);
  if (*(v145 + 24) != 1)
  {

    sub_252692F00();
    v89 = sub_2526919C0();
    sub_252690570();

    v90 = v126;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v66, 0);
    (*(v127 + 8))(v90, v128);
    if ((v146 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v146 = LightbulbColor.shortDebugDescription.getter();
    v147 = v91;
    sub_252404480();
    v92 = sub_252691D50();
    v94 = v93;
    v96 = v95;
    sub_252691BB0();
    v97 = sub_252691D00();
    v99 = v98;
    v101 = v100;
    v103 = v102;

    sub_2524228D8(v92, v94, v96 & 1);

    v146 = v97;
    v147 = v99;
    v148 = v101 & 1;
    v149 = v103;
    v104 = v133;
    sub_252691720();
    v105 = v134;
    v106 = v136;
    sub_252691ED0();
    (*(v135 + 8))(v104, v106);
    sub_2524228D8(v97, v99, v101 & 1);

    v69 = v139;
    v68 = v140;
    v70 = v131;
    (*(v139 + 32))(v131, v105, v140);
    v67 = 0;
    goto LABEL_14;
  }

  if (v66)
  {
    goto LABEL_13;
  }

LABEL_8:
  v67 = 1;
  v69 = v139;
  v68 = v140;
  v70 = v131;
LABEL_14:
  (*(v69 + 56))(v70, v67, 1, v68);
  v107 = v137;
  v108 = v132;
  sub_25237153C(v137, v132, &qword_27F4DE360);
  v109 = v129;
  sub_25237153C(v70, v129, &qword_27F4DE0B8);
  v110 = v116;
  sub_25237153C(v108, v116, &qword_27F4DE360);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3A8);
  sub_25237153C(v109, v110 + *(v111 + 48), &qword_27F4DE0B8);
  sub_252372288(v109, &qword_27F4DE0B8);
  sub_252372288(v108, &qword_27F4DE360);
  sub_25237153C(v110, v143, &qword_27F4DE350);
  swift_storeEnumTagMultiPayload();
  sub_252400FC8(&qword_27F4DE368, &qword_27F4DE350);
  sub_252483D28();
  sub_252691470();
  sub_252372288(v110, &qword_27F4DE350);
  sub_252372288(v70, &qword_27F4DE0B8);
  sub_252372288(v107, &qword_27F4DE360);
  return (*(v130 + 1))(v117, v122);
}

uint64_t sub_252480DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1E8);
  v8 = (_s21ColorSwatchPickerViewV19ColorPreferenceDataVMa(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252694E90;
  v11 = v10 + v9;
  v12 = (a3 + *(_s21ColorSwatchPickerViewV9ColorCellVMa(0) + 28));
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_25268ED20();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  *(v11 + v8[7]) = a1;
  v16 = (v11 + v8[8]);
  *v16 = v13;
  v16[1] = v14;
  *a4 = v10;
}

uint64_t sub_252480F28@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2526912F0();
  v4 = sub_2526911D0();
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE340);
  return sub_25247FC4C(v1, a1 + *(v5 + 44));
}

uint64_t sub_252480F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v30 = a3;
  v4 = sub_2526912C0();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3D0);
  MEMORY[0x28223BE20](v29);
  v25 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3D8);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_25268ED20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v12, &qword_27F4DB2A8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_252372288(v12, &qword_27F4DB2A8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3E0);
    (*(*(v17 - 8) + 16))(v9, v28, v17);
    swift_storeEnumTagMultiPayload();
    sub_2524841A4();
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0);
    return sub_252691470();
  }

  else
  {
    v23[1] = v7;
    (*(v14 + 32))(v16, v12, v13);
    v19 = _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa(0);
    if (sub_25248B14C(a1 + *(v19 + 20)))
    {
      v20 = v24;
      sub_252691270();
      v21 = v27;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
      v23[0] = sub_252483108(&qword_27F4DD310, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318);
      sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318);
      v20 = v24;
      v21 = v27;
      sub_252693190();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3E0);
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0);
    v22 = v25;
    sub_252691EB0();
    (*(v26 + 8))(v20, v21);
    sub_25237153C(v22, v9, &qword_27F4DE3D0);
    swift_storeEnumTagMultiPayload();
    sub_2524841A4();
    sub_252691470();
    sub_252372288(v22, &qword_27F4DE3D0);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_2524814F8@<X0>(void *a1@<X8>)
{
  if (qword_27F4DAA38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F4FB428;
}

BOOL sub_2524815B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252690550();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - v7;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE248);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v16 = *(v15 + 56);
  v17 = *(v9 + 16);
  v41 = a1;
  v17(&v38 - v13, a1, v8, v12);
  v45 = v16;
  v42 = a2;
  (v17)(&v14[v16], a2, v8);
  v18 = *(v9 + 88);
  v19 = v18(v14, v8);
  v20 = *MEMORY[0x277D15B30];
  if (v19 != *MEMORY[0x277D15B30])
  {
    v25 = v18(&v14[v45], v8);
    v26 = v25;
    if (v25 == *MEMORY[0x277D15B28])
    {
      v27 = v38;
      (v17)(v38, &v14[v45], v8);
      v28 = *(v9 + 96);
      v28(v27, v8);
      v29 = *v27;
      v30 = v18(v14, v8);
      v31 = v45;
      if (v30 == v26)
      {
        v28(v14, v8);
        v24 = *v14 == v29;
        (*(v9 + 8))(&v14[v31], v8);
        return v24;
      }
    }

    else if (v25 == v20)
    {
      v32 = *(v9 + 8);
      v32(&v14[v45], v8);
      v32(v14, v8);
      return 0;
    }

    v33 = v39;
    sub_25248B53C(v39);
    v34 = v40;
    sub_25248B53C(v40);
    v24 = sub_25248C9AC();
    v35 = v44;
    v36 = *(v43 + 8);
    v36(v34, v44);
    v36(v33, v35);
    sub_252372288(v14, &qword_27F4DE248);
    return v24;
  }

  v21 = v19;
  v22 = *(v9 + 8);
  v22(v14, v8);
  v23 = v45;
  v24 = v18(&v14[v45], v8) == v21;
  v22(&v14[v23], v8);
  return v24;
}

uint64_t sub_2524819C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178);
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25269EAB0;
  v5 = (v4 + v3);
  *v5 = sub_25268ED00();
  v6 = *MEMORY[0x277D15B28];
  v7 = *(v1 + 104);
  v7(v5, v6, v0);
  *(v5 + v2) = sub_25268ED00();
  v7((v5 + v2), v6, v0);
  v5[v2] = sub_25268ED00();
  v7(&v5[v2], v6, v0);
  *(v5 + 3 * v2) = sub_25268ED00();
  v7((v5 + 3 * v2), v6, v0);
  v5[2 * v2] = sub_25268ED00();
  v7(&v5[2 * v2], v6, v0);
  *(v5 + 5 * v2) = sub_25268ED00();
  v7((v5 + 5 * v2), v6, v0);
  v5[3 * v2] = sub_25268ED00();
  v7(&v5[3 * v2], v6, v0);
  *(v5 + 7 * v2) = sub_25268ED00();
  v7((v5 + 7 * v2), v6, v0);
  v5[4 * v2] = sub_25268ED00();
  v7(&v5[4 * v2], v6, v0);
  *(v5 + 9 * v2) = sub_25268ED00();
  v7((v5 + 9 * v2), v6, v0);
  v5[5 * v2] = sub_25268ED00();
  v7(&v5[5 * v2], v6, v0);
  *(v5 + 11 * v2) = sub_25268ED00();
  v7((v5 + 11 * v2), v6, v0);
  v5[6 * v2] = sub_25268ED00();
  v7(&v5[6 * v2], v6, v0);
  *(v5 + 13 * v2) = sub_25268ED00();
  v7((v5 + 13 * v2), v6, v0);
  v5[7 * v2] = sub_25268ED00();
  v7(&v5[7 * v2], v6, v0);
  *(v5 + 15 * v2) = sub_25268ED00();
  v7((v5 + 15 * v2), v6, v0);
  v5[8 * v2] = sub_25268ED00();
  v7(&v5[8 * v2], v6, v0);
  *(v5 + 17 * v2) = sub_25268ED00();
  v7((v5 + 17 * v2), v6, v0);
  v5[9 * v2] = sub_25268ED00();
  v7(&v5[9 * v2], v6, v0);
  v8 = (v5 + 19 * v2);
  *v8 = sub_25268ED00();
  result = (v7)(v8, v6, v0);
  qword_27F4DE160 = v4;
  return result;
}

uint64_t sub_252481DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178);
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25269EAC0;
  v5 = (v4 + v3);
  *v5 = xmmword_25269EAD0;
  v6 = *MEMORY[0x277D15B38];
  v7 = *(v1 + 104);
  (v7)(v5, v6, v0);
  *(v5 + v2) = xmmword_25269EAE0;
  (v7)(v5 + v2, v6, v0);
  *(v5 + 2 * v2) = xmmword_25269EAF0;
  (v7)(v5 + 2 * v2, v6, v0);
  *(v5 + 3 * v2) = xmmword_25269EB00;
  (v7)(v5 + 3 * v2, v6, v0);
  *(v5 + 4 * v2) = xmmword_25269EB10;
  (v7)(v5 + 4 * v2, v6, v0);
  *(v5 + 5 * v2) = xmmword_25269EB20;
  (v7)(v5 + 5 * v2, v6, v0);
  *(v5 + 6 * v2) = xmmword_25269EB30;
  v7();
  *(v5 + 7 * v2) = xmmword_25269EB40;
  (v7)(v5 + 7 * v2, v6, v0);
  *(v5 + 8 * v2) = xmmword_25269EB50;
  (v7)(v5 + 8 * v2, v6, v0);
  *(v5 + 9 * v2) = xmmword_25269EB60;
  (v7)(v5 + 9 * v2, v6, v0);
  *(v5 + 10 * v2) = xmmword_25269EB70;
  v7();
  *(v5 + 11 * v2) = xmmword_25269EB80;
  v7();
  *(v5 + 12 * v2) = xmmword_25269EB90;
  v7();
  *(v5 + 13 * v2) = xmmword_25269EBA0;
  v7();
  *(v5 + 14 * v2) = xmmword_25269EBB0;
  v7();
  *(v5 + 15 * v2) = xmmword_25269EBC0;
  (v7)(v5 + 15 * v2, v6, v0);
  v5[v2] = xmmword_25269EBD0;
  (v7)(&v5[v2], v6, v0);
  *(v5 + 17 * v2) = xmmword_25269EBE0;
  (v7)(v5 + 17 * v2, v6, v0);
  *(v5 + 18 * v2) = xmmword_25269EBF0;
  v7();
  *(v5 + 19 * v2) = xmmword_25269EC00;
  v7();
  *(v5 + 20 * v2) = xmmword_25269EC10;
  v7();
  *(v5 + 21 * v2) = xmmword_25269EC20;
  v7();
  *(v5 + 22 * v2) = xmmword_25269EC30;
  v7();
  *(v5 + 23 * v2) = xmmword_25269EC40;
  result = (v7)();
  qword_27F4DE168 = v4;
  return result;
}

char *sub_252482288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_25268ED20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v47 - v10);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v13;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v22 = *(v8 + 16);
    v20 = v8 + 16;
    v21 = v22;
    v51 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v23 = a1 + v51;
    v24 = *(v20 + 56);
    v60 = (v20 + 72);
    v59 = *MEMORY[0x277D15B40];
    v25 = *MEMORY[0x277D15B38];
    v49 = *MEMORY[0x277D15B28];
    v50 = v25;
    v48 = *MEMORY[0x277D15B30];
    v26 = (v20 - 8);
    v47 = (v20 + 80);
    v57 = (v20 + 32);
    v58 = (v20 + 40);
    v56 = (v20 + 16);
    v62 = v24;
    v63 = MEMORY[0x277D84F90];
    v52 = v22;
    v53 = v20;
    v61 = v15;
    (v22)(v18, v23, v7, v16);
    while (1)
    {
      v21(v11, v18, v7);
      v29 = (*v60)(v11, v7);
      if (v29 == v59)
      {
        break;
      }

      if (v29 == v50)
      {
        goto LABEL_9;
      }

      if (v29 == v49)
      {
        (*v47)(v11, v7);
        v31 = (v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig);
        if (!*(v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16) || (v32 = *v31, v33 = v31[1], v32 & 0x1000000000000 | v33 & 0x10000) || ((v34 = *v11, v34 < v33) ? (v35 = v34 > WORD2(v32)) : (v35 = 0), (v36 = v32 & 0x10000, !v35) ? (v37 = v36 == 0) : (v37 = 0), !v37))
        {
LABEL_11:
          v21(v6, v18, v7);
          v30 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        if (v29 != v48)
        {
          result = sub_2526933A0();
          __break(1u);
          return result;
        }

        (*v26)(v11, v7);
      }

LABEL_25:
      v30 = 1;
LABEL_26:
      (*v58)(v6, v30, 1, v7);
      (*v26)(v18, v7);
      if ((*v57)(v6, 1, v7) == 1)
      {
        sub_252372288(v6, &qword_27F4DB2A8);
        v28 = v62;
      }

      else
      {
        v38 = v11;
        v39 = *v56;
        v40 = v54;
        (*v56)(v54, v6, v7);
        v39(v61, v40, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_252369680(0, *(v63 + 2) + 1, 1, v63);
        }

        v41 = v62;
        v43 = *(v63 + 2);
        v42 = *(v63 + 3);
        if (v43 >= v42 >> 1)
        {
          v45 = sub_252369680(v42 > 1, v43 + 1, 1, v63);
          v41 = v62;
          v63 = v45;
        }

        v44 = v63;
        *(v63 + 2) = v43 + 1;
        v28 = v41;
        v39(&v44[v51 + v43 * v41], v61, v7);
        v11 = v38;
        v21 = v52;
      }

      v23 += v28;
      if (!--v19)
      {
        return v63;
      }

      (v21)(v18, v23, v7, v27);
    }

    (*v26)(v11, v7);
LABEL_9:
    if (*(v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16) && (*(v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 2) & 1) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252482788@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_2524827F4;
  a1[1] = v5;
}

unint64_t sub_252482808()
{
  result = qword_27F4DE180;
  if (!qword_27F4DE180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE188);
    sub_2526914B0();
    sub_2524828F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE180);
  }

  return result;
}

unint64_t sub_2524828F0()
{
  result = qword_27F4DE190;
  if (!qword_27F4DE190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE188);
    sub_2524829A8();
    sub_252400FC8(&qword_27F4DE1B8, &qword_27F4DE1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE190);
  }

  return result;
}

unint64_t sub_2524829A8()
{
  result = qword_27F4DE198;
  if (!qword_27F4DE198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE1A0);
    sub_252400FC8(&qword_27F4DE1A8, &qword_27F4DE1B0);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE198);
  }

  return result;
}

unint64_t sub_252482A94()
{
  result = qword_27F4DE1E8;
  if (!qword_27F4DE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE1D8);
    sub_252482B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE1E8);
  }

  return result;
}

unint64_t sub_252482B20()
{
  result = qword_27F4DE1F0;
  if (!qword_27F4DE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE1F0);
  }

  return result;
}

uint64_t sub_252482B7C(double a1, double a2)
{
  sub_252690A20();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_25247F6D8(v5, v6, a1, a2);
}

uint64_t sub_252482C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252482CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252482D38()
{
  result = qword_27F4DE260;
  if (!qword_27F4DE260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE268);
    sub_252482E30();
    swift_getOpaqueTypeConformance2();
    sub_252483108(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE260);
  }

  return result;
}

unint64_t sub_252482E30()
{
  result = qword_27F4DE270;
  if (!qword_27F4DE270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE268);
    sub_252482EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE270);
  }

  return result;
}

unint64_t sub_252482EBC()
{
  result = qword_27F4DE278;
  if (!qword_27F4DE278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE280);
    sub_252482F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE278);
  }

  return result;
}

unint64_t sub_252482F48()
{
  result = qword_27F4DE288;
  if (!qword_27F4DE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE290);
    sub_252483000();
    sub_252400FC8(&qword_27F4DE2C0, &qword_27F4DE2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE288);
  }

  return result;
}

unint64_t sub_252483000()
{
  result = qword_27F4DE298;
  if (!qword_27F4DE298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE2A0);
    sub_252483108(&qword_27F4DE2A8, _s21ColorSwatchPickerViewV9ColorCellVMa);
    sub_252400FC8(&qword_27F4DE2B0, &qword_27F4DE2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE298);
  }

  return result;
}

uint64_t sub_252483108(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252483168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_2524832B4(void *a1, uint64_t a2)
{
  v50 = a1;
  v57 = sub_25268ED20();
  v48 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  if (a2)
  {
    v10 = MEMORY[0x277D84F90];
    v45 = a2 - 1;
    if (a2 < 1)
    {
      return;
    }

    v11 = v50[2];
    if (!v11)
    {
      return;
    }

    v12 = 0;
    v55 = v48 + 16;
    v13 = (v48 + 32);
    v51 = a2;
    v47 = v6;
    v49 = v11;
    while (1)
    {
      v14 = v12 + a2;
      if (__OFADD__(v12, a2))
      {
        break;
      }

      if (v11 < v14)
      {
        v14 = v11;
      }

      v15 = v14 - v12;
      if (v14 < v12)
      {
        goto LABEL_42;
      }

      if (v12 < 0)
      {
        goto LABEL_43;
      }

      v54 = v12 + a2;
      if (v11 == v15)
      {
        v16 = v50;
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
        if (v14 != v12)
        {
          if (v15 >= 1)
          {
            v53 = v10;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178);
            v40 = *(v48 + 72);
            v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
            v16 = swift_allocObject();
            v42 = _swift_stdlib_malloc_size_0(v16);
            if (!v40)
            {
              goto LABEL_46;
            }

            if (v42 - v41 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_47;
            }

            v16[2] = v15;
            v16[3] = 2 * ((v42 - v41) / v40);
            v10 = v53;
            a2 = v51;
          }

          swift_arrayInitWithCopy();
        }
      }

      v17 = v16[2];
      if (v17)
      {
        v53 = v10;
        v58 = MEMORY[0x277D84F90];
        sub_2523704BC(0, v17, 0);
        v18 = v58;
        v19 = *(v48 + 80);
        v52 = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v21 = *(v48 + 72);
        v22 = *(v48 + 16);
        do
        {
          v24 = v56;
          v23 = v57;
          v22(v56, v20, v57);
          (*v13)(v9, v24, v23);
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
          (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
          v58 = v18;
          v27 = *(v18 + 16);
          v26 = *(v18 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_2523704BC(v26 > 1, v27 + 1, 1);
            v18 = v58;
          }

          *(v18 + 16) = v27 + 1;
          sub_252483894(v9, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, _s21ColorSwatchPickerViewV9CellValueOMa);
          v20 += v21;
          --v17;
        }

        while (v17);

        a2 = v51;
        v6 = v47;
        v10 = v53;
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      v58 = v18;
      v28 = *(v18 + 16);
      if (a2 > v28)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        v30 = a2 - v28;
        if (a2 - v28 < 0)
        {
          goto LABEL_44;
        }

        v31 = v10;
        v32 = sub_252692DC0();
        *(v32 + 16) = v30;
        v33 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        sub_252482C64(v6, v32 + v33, _s21ColorSwatchPickerViewV9CellValueOMa);
        if (v30 != 1)
        {
          v34 = *(v4 + 72);
          v35 = v45 - v28;
          v36 = v32 + v34 + v33;
          do
          {
            sub_252482C64(v6, v36, _s21ColorSwatchPickerViewV9CellValueOMa);
            v36 += v34;
            --v35;
          }

          while (v35);
        }

        sub_252482CCC(v6, _s21ColorSwatchPickerViewV9CellValueOMa);
        sub_2523C5F08(v32);
        v18 = v58;
        v10 = v31;
        a2 = v51;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2523696A8(0, v10[2] + 1, 1, v10);
      }

      v38 = v10[2];
      v37 = v10[3];
      v39 = v54;
      if (v38 >= v37 >> 1)
      {
        v44 = sub_2523696A8((v37 > 1), v38 + 1, 1, v10);
        v39 = v54;
        v10 = v44;
      }

      v10[2] = v38 + 1;
      v10[v38 + 4] = v18;
      v12 = v39;
      v11 = v49;
      if (v39 >= v49)
      {
        return;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_252483894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_252483928()
{
  sub_25268ED20();
  if (v0 <= 0x3F)
  {
    sub_252484124(319, &qword_27F4DE2E8, type metadata accessor for CGRect, MEMORY[0x277CE10C0]);
    if (v1 <= 0x3F)
    {
      sub_2524839F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2524839F4()
{
  if (!qword_27F4DE2F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DE2F0);
    }
  }
}

uint64_t sub_252483A7C()
{
  sub_252483AD4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_252483AD4()
{
  if (!qword_27F4DE308)
  {
    v0 = sub_25268ED20();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE308);
    }
  }
}

void sub_252483B54()
{
  sub_252483C08();
  if (v0 <= 0x3F)
  {
    sub_252483C9C();
    if (v1 <= 0x3F)
    {
      _s21ColorSwatchPickerViewV9CellValueOMa(319);
      if (v2 <= 0x3F)
      {
        sub_2524839F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252483C08()
{
  if (!qword_27F4DE320)
  {
    _s16ColorPickerStateCMa();
    sub_252483108(&qword_27F4DDB30, _s16ColorPickerStateCMa);
    v0 = sub_252690E00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE320);
    }
  }
}

void sub_252483C9C()
{
  if (!qword_27F4DE328)
  {
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE328);
    }
  }
}

unint64_t sub_252483D28()
{
  result = qword_27F4DE370;
  if (!qword_27F4DE370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE0B8);
    sub_252691730();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE370);
  }

  return result;
}

uint64_t sub_252483DF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_25268ED20() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(_s21ColorSwatchPickerViewV9ColorCellVMa(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_252480DD4(a1, v2 + v6, v9, a2);
}

unint64_t sub_252483ED4()
{
  result = qword_27F4DE378;
  if (!qword_27F4DE378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE358);
    sub_252483F90();
    sub_252483108(&qword_27F4DE3A0, _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE378);
  }

  return result;
}

unint64_t sub_252483F90()
{
  result = qword_27F4DE380;
  if (!qword_27F4DE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE388);
    sub_252400FC8(&qword_27F4DE390, &qword_27F4DE398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE380);
  }

  return result;
}

void sub_252484070()
{
  sub_252484124(319, &qword_27F4DCBE8, MEMORY[0x277D15B48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25268ED20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252484124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2524841A4()
{
  result = qword_27F4DE3E8;
  if (!qword_27F4DE3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE3D0);
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0);
    sub_252483108(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE3E8);
  }

  return result;
}

unint64_t sub_25248428C()
{
  result = qword_27F4DE3F8;
  if (!qword_27F4DE3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE400);
    sub_252484310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE3F8);
  }

  return result;
}

unint64_t sub_252484310()
{
  result = qword_27F4DE408;
  if (!qword_27F4DE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE410);
    sub_2524841A4();
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE408);
  }

  return result;
}

uint64_t _s9ColorWellVMa()
{
  result = qword_27F4DE418;
  if (!qword_27F4DE418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25248443C()
{
  sub_252466FC8();
  if (v0 <= 0x3F)
  {
    sub_2524844C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2524844C8()
{
  if (!qword_27F4DCE98)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DCE98);
    }
  }
}

uint64_t sub_252484534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA78);
  MEMORY[0x28223BE20](v152);
  v154 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v153 = &v123 - v5;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE430);
  MEMORY[0x28223BE20](v151);
  v131 = &v123 - v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE438);
  MEMORY[0x28223BE20](v142);
  v136 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v123 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE440);
  MEMORY[0x28223BE20](v140);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v156 = (&v123 - v14);
  v139 = sub_252690850();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v134 = &v123 - v18;
  MEMORY[0x28223BE20](v19);
  v137 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE448);
  MEMORY[0x28223BE20](v21);
  v135 = &v123 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE450);
  MEMORY[0x28223BE20](v132);
  v141 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v133 = &v123 - v25;
  MEMORY[0x28223BE20](v26);
  v157 = &v123 - v27;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE458);
  MEMORY[0x28223BE20](v147);
  v146 = &v123 - v28;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE460);
  MEMORY[0x28223BE20](v148);
  v130 = &v123 - v29;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE468);
  MEMORY[0x28223BE20](v128);
  v129 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v123 - v32);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE470);
  MEMORY[0x28223BE20](v144);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v123 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE478);
  MEMORY[0x28223BE20](v39 - 8);
  v150 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v149 = &v123 - v42;
  v43 = _s9ColorWellVMa();
  v44 = *(a1 + *(v43 + 20));
  __asm { FMOV            V0.2D, #16.0 }

  v161 = _Q0;
  if (v44)
  {
    v126 = v44;
    v129 = v43;
    v50 = sub_252690D30();
    v130 = v12;
    v159 = v50;
    v51 = *(v50 + 20);
    v160 = *MEMORY[0x277CE0118];
    v52 = v160;
    v53 = sub_252691260();
    v125 = a1;
    v158 = v53;
    v54 = *(v53 - 8);
    v127 = *(v54 + 104);
    v128 = v54 + 104;
    v145 = (v53 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v55 = v135;
    v127(&v135[v51], v52, v53);
    *v55 = v161;

    sub_252692880();
    *(v55 + *(v21 + 56)) = 256;
    KeyPath = swift_getKeyPath();
    v56 = v134;
    sub_25268A1D0(v134);
    v57 = *MEMORY[0x277CDF3D0];
    v58 = v138;
    v143 = v10;
    v123 = *(v138 + 104);
    v59 = v16;
    v60 = v139;
    v123(v16, v57, v139);
    sub_252485A0C();
    LOBYTE(v52) = sub_252692B70();
    v61 = *(v58 + 8);
    v61(v59, v60);
    v61(v56, v60);
    if (v52)
    {
      v62 = *MEMORY[0x277CDF3C0];
    }

    else
    {
      v62 = v57;
    }

    v63 = v137;
    v123(v137, v62, v60);
    v64 = v133;
    v65 = &v133[*(v132 + 36)];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00);
    (*(v58 + 32))(v65 + *(v66 + 28), v63, v60);
    *v65 = KeyPath;
    sub_2523714D4(v55, v64, &qword_27F4DE448);
    v67 = v157;
    sub_2523714D4(v64, v157, &qword_27F4DE450);
    v68 = v158;
    v69 = v159;
    v70 = v156;
    v71 = v160;
    v72 = v127;
    v127(v156 + *(v159 + 20), v160, v158);
    *v70 = v161;
    v73 = v144;
    v74 = v126;
    *(v70 + *(v144 + 52)) = v126;
    *(v70 + *(v73 + 56)) = 256;
    *(v70 + *(v140 + 36)) = 1.0 - *(v125 + *(v129 + 24));
    v75 = v143;
    v76 = &v143[*(v142 + 36)];
    v72(&v76[*(v69 + 20)], v71, v68);
    *v76 = v161;
    *&v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8) + 36)] = 256;
    *v75 = v74;
    *(v75 + 8) = 256;
    v77 = v141;
    sub_25237153C(v67, v141, &qword_27F4DE450);
    v78 = v130;
    sub_25237153C(v70, v130, &qword_27F4DE440);
    v79 = v75;
    v80 = v136;
    sub_25237153C(v79, v136, &qword_27F4DE438);
    v81 = v131;
    sub_25237153C(v77, v131, &qword_27F4DE450);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE4B0);
    sub_25237153C(v78, v81 + *(v82 + 48), &qword_27F4DE440);
    sub_25237153C(v80, v81 + *(v82 + 64), &qword_27F4DE438);

    sub_252372288(v80, &qword_27F4DE438);
    sub_252372288(v78, &qword_27F4DE440);
    sub_252372288(v77, &qword_27F4DE450);
    sub_25237153C(v81, v146, &qword_27F4DE430);
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4DE498, &qword_27F4DE430);
    sub_252400FC8(&qword_27F4DE4A0, &qword_27F4DE460);
    v83 = v149;
    sub_252691470();
    sub_252372288(v81, &qword_27F4DE430);
    sub_252372288(v143, &qword_27F4DE438);
    sub_252372288(v156, &qword_27F4DE440);
    v84 = v157;
    v85 = &qword_27F4DE450;
  }

  else
  {
    v86 = sub_252690D30();
    v87 = *(v86 + 20);
    v88 = *MEMORY[0x277CE0118];
    v89 = sub_252691260();
    v90 = *(*(v89 - 8) + 104);
    v145 = (v89 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v90(&v38[v87], v88, v89);
    *v38 = v161;
    v91 = sub_2526922D0();
    v92 = v144;
    *&v38[*(v144 + 52)] = v91;
    *&v38[*(v92 + 56)] = 256;
    v158 = v89;
    v159 = v86;
    v93 = v33 + *(v86 + 20);
    v160 = v88;
    v90(v93, v88, v89);
    __asm { FMOV            V0.2D, #1.5 }

    *v33 = _Q0;
    sub_252692920();
    sub_2526909C0();
    v95 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE480) + 36));
    v96 = v163;
    *v95 = v162;
    v95[1] = v96;
    v95[2] = v164;
    v97 = sub_2526922A0();
    v98 = swift_getKeyPath();
    v99 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE488) + 36));
    *v99 = v98;
    v99[1] = v97;
    sub_252692A40();
    v100 = (v33 + *(v128 + 36));
    *v100 = 0xBFE921FB54442D18;
    v100[1] = v101;
    v100[2] = v102;
    sub_25237153C(v38, v35, &qword_27F4DE470);
    v103 = v129;
    sub_25237153C(v33, v129, &qword_27F4DE468);
    v104 = v130;
    sub_25237153C(v35, v130, &qword_27F4DE470);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE490);
    sub_25237153C(v103, v104 + *(v105 + 48), &qword_27F4DE468);
    sub_252372288(v103, &qword_27F4DE468);
    sub_252372288(v35, &qword_27F4DE470);
    sub_25237153C(v104, v146, &qword_27F4DE460);
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4DE498, &qword_27F4DE430);
    sub_252400FC8(&qword_27F4DE4A0, &qword_27F4DE460);
    v83 = v149;
    sub_252691470();
    sub_252372288(v104, &qword_27F4DE460);
    sub_252372288(v33, &qword_27F4DE468);
    v84 = v38;
    v85 = &qword_27F4DE470;
  }

  sub_252372288(v84, v85);
  sub_252690D30();
  v106 = *(v159 + 20);
  sub_252691260();
  v107 = v153;
  (*(*(v158 - 8) + 104))(&v153[v106], v160);
  *v107 = v161;
  sub_2526908F0();
  v108 = v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAC8) + 36);
  v109 = v166;
  *v108 = v165;
  *(v108 + 1) = v109;
  *(v108 + 4) = v167;
  v110 = sub_2526922F0();
  v111 = swift_getKeyPath();
  v112 = (v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAD0) + 36));
  *v112 = v111;
  v112[1] = v110;
  *(v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAD8) + 36)) = 0x3FC3333333333333;
  LOBYTE(v110) = sub_252691A20();
  sub_252690760();
  v113 = v107 + *(v152 + 36);
  *v113 = v110;
  *(v113 + 1) = v114;
  *(v113 + 2) = v115;
  *(v113 + 3) = v116;
  *(v113 + 4) = v117;
  v113[40] = 0;
  v118 = v150;
  sub_25237153C(v83, v150, &qword_27F4DE478);
  v119 = v154;
  sub_25237153C(v107, v154, &qword_27F4DDA78);
  v120 = v155;
  sub_25237153C(v118, v155, &qword_27F4DE478);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE4A8);
  sub_25237153C(v119, v120 + *(v121 + 48), &qword_27F4DDA78);
  sub_252372288(v107, &qword_27F4DDA78);
  sub_252372288(v83, &qword_27F4DE478);
  sub_252372288(v119, &qword_27F4DDA78);
  return sub_252372288(v118, &qword_27F4DE478);
}

uint64_t sub_252485658@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_252692920();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE428);
  return sub_252484534(v1, a1 + *(v4 + 44));
}

double sub_2524856A4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_252691C70();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxY(v15);
  sub_252691C50();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_252691C60();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinY(v19);
  sub_252691C60();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxY(v21);
  sub_252691C60();
  sub_252691C40();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_252485824(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2526906F0();
  return sub_2524858AC;
}

void sub_2524858AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2524858F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252485BC0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_25248595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252485BC0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_2524859C0(uint64_t a1)
{
  v2 = sub_252485BC0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_252485A0C()
{
  result = qword_27F4DD890;
  if (!qword_27F4DD890)
  {
    sub_252690850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD890);
  }

  return result;
}

unint64_t sub_252485ABC()
{
  result = qword_27F4DE4D8;
  if (!qword_27F4DE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4D8);
  }

  return result;
}

unint64_t sub_252485B14()
{
  result = qword_27F4DE4E0;
  if (!qword_27F4DE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4E0);
  }

  return result;
}

unint64_t sub_252485B6C()
{
  result = qword_27F4DE4E8;
  if (!qword_27F4DE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4E8);
  }

  return result;
}

unint64_t sub_252485BC0()
{
  result = qword_27F4DE4F0;
  if (!qword_27F4DE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4F0);
  }

  return result;
}

double sub_252485C14@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = v3;
  *a1 = v3;
  return result;
}

void sub_252485C94()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_252690690();
  sub_252485FC4();
}

uint64_t sub_252485D14@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  *a1 = v3;
  return result;
}

uint64_t sub_252485D94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_252690690();
  return sub_252486A58(v1);
}

uint64_t sub_252485E74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t sub_252485EE8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v2 = sub_2523E5350(v4, a1);

  if ((v2 & 1) == 0)
  {
    sub_25248A1B4(a1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

void sub_252485FC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v9 = v21;
  if (v21 <= 0.0)
  {
    v9 = 0.0;
  }

  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v21 == v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    v11 = sub_25268ED20();
    v12 = *(*(v11 - 8) + 56);
    v12(v2, 0, 1, v11);
    v12(v8, 1, 1, v11);
    v13 = type metadata accessor for AccessoryControl.ColorState(0);
    v14 = &v8[*(v13 + 20)];
    sub_2523F62D8(v2, v8);
    *v14 = v10;
    v14[8] = 0;
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25237153C(v8, v6, &qword_27F4DB2A0);

    sub_252690690();
    sub_252372288(v8, &qword_27F4DB2A0);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v15 = sub_2526905A0();
    __swift_project_value_buffer(v15, qword_27F4E4B18);
    v16 = sub_252690580();
    v17 = sub_252692F10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = v10;
      _os_log_impl(&dword_252309000, v16, v17, "ColorPickerState updated brightness %{public}f", v18, 0xCu);
      MEMORY[0x2530A5A40](v18, -1, -1);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v10;

    v19 = sub_252690690();
    sub_252485FC4(v19);
  }
}

double sub_2524863F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

void sub_252486464(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_252489FE0(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v13 != v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_252690680();

    v15 = v37;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v37) = v13;

    sub_252690690();
    v16 = v15;
    a1 = v14;
    sub_252486A58(v16);
  }

  v33 = a1;
  v17 = *(v3 + 16);
  v17(v7, a1, v2);
  v36 = v3;
  v18 = *(v3 + 56);
  v18(v7, 0, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v19 = v37;
  v18(v12, 1, 1, v2);
  v20 = type metadata accessor for AccessoryControl.ColorState(0);
  v21 = &v12[*(v20 + 20)];
  sub_2523F62D8(v7, v12);
  *v21 = v19;
  v21[8] = 0;
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v12, v34, &qword_27F4DB2A0);

  sub_252690690();
  sub_252372288(v12, &qword_27F4DB2A0);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v22 = sub_2526905A0();
  __swift_project_value_buffer(v22, qword_27F4E4B18);
  v23 = v35;
  v17(v35, v33, v2);
  v24 = sub_252690580();
  v25 = sub_252692F10();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136446210;
    v28 = LightbulbColor.description.getter();
    v30 = v29;
    (*(v36 + 8))(v23, v2);
    v31 = sub_2525BDA90(v28, v30, &v37);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_252309000, v24, v25, "ColorPickerState updated selectedColor %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2530A5A40](v27, -1, -1);
    MEMORY[0x2530A5A40](v26, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v23, v2);
  }
}

uint64_t sub_2524869E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();
}

uint64_t sub_252486A58(char a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v2 = MEMORY[0x28223BE20](v46);
  KeyPath = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - v4;
  v6 = sub_25268ED20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v44 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);

  v20 = sub_252690580();
  v21 = sub_252692F10();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v18;
    v23 = v5;
    v24 = v22;
    *v22 = 67109376;
    *(v22 + 4) = a1 & 1;
    *(v22 + 8) = 1026;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    *(v24 + 10) = v51;

    _os_log_impl(&dword_252309000, v20, v21, "ColorPickerState set adaptiveLightEnabled %{BOOL}d %{BOOL,public}d", v24, 0xEu);
    v25 = v24;
    v5 = v23;
    v18 = v48;
    MEMORY[0x2530A5A40](v25, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v26 = *(v7 + 16);
  v26(v16, v18, v6);
  v27 = (*(v7 + 88))(v16, v6);
  v28 = *MEMORY[0x277D15B30];
  if (v27 == v28)
  {
    (*(v7 + 96))(v16, v6);
    v29 = swift_projectBox();
    sub_25237153C(v29, v5, &qword_27F4DB2A8);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    if (v52 == 1)
    {
      sub_252372288(v5, &qword_27F4DB2A8);
      return (*(v7 + 8))(v18, v6);
    }

    else
    {
      v37 = KeyPath;
      sub_25237153C(v5, KeyPath, &qword_27F4DB2A8);
      if ((*(v7 + 48))(v37, 1, v6) == 1)
      {
        sub_252372288(v37, &qword_27F4DB2A8);
        v38 = sub_25268ED00();
        KeyPath = v5;
        v39 = v50;
        *v50 = v38;
        (*(v7 + 104))(v39, *MEMORY[0x277D15B28], v6);
        sub_252486464(v39);
        swift_getKeyPath();
        swift_getKeyPath();
        v26(v49, v39, v6);

        sub_252690690();
        v40 = *(v7 + 8);
        v40(v39, v6);
        v41 = KeyPath;
      }

      else
      {
        v42 = v45;
        (*(v7 + 32))(v45, v37, v6);
        v43 = v50;
        v26(v50, v42, v6);
        sub_252486464(v43);
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v26(v49, v43, v6);

        sub_252690690();
        v40 = *(v7 + 8);
        v40(v43, v6);
        v40(v42, v6);
        v41 = v5;
      }

      sub_252372288(v41, &qword_27F4DB2A8);
      return (v40)(v18, v6);
    }
  }

  else
  {
    KeyPath = v26;
    v31 = *(v7 + 8);
    v31(v16, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    if (v53 == 1)
    {
      v32 = swift_allocBox();
      v34 = v33;
      v48 = v18;
      (KeyPath)(v33, v18, v6);
      (*(v7 + 56))(v34, 0, 1, v6);
      v35 = v50;
      *v50 = v32;
      (*(v7 + 104))(v35, v28, v6);
      sub_252486464(v35);
      swift_getKeyPath();
      swift_getKeyPath();
      (KeyPath)(v49, v35, v6);

      sub_252690690();
      v31(v35, v6);
      v36 = v48;
    }

    else
    {
      v36 = v18;
    }

    return (v31)(v36, v6);
  }
}

uint64_t sub_252487280()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

size_t sub_2524872F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v113 = a2;
  v117 = a1;
  v6 = sub_25268ED20();
  v7 = *(v6 - 8);
  v114 = v6;
  v115 = v7;
  MEMORY[0x28223BE20](v6);
  v116 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v104 - v10;
  MEMORY[0x28223BE20](v11);
  v112 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE560);
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v16);
  v111 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  v24 = *a3;
  *&v118 = a3[1];
  v25 = a3[2];
  v3[OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_supportsColorTemperature] = 1;
  v26 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__colorState;
  v27 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  sub_25237153C(v23, v20, &qword_27F4DB2A0);
  sub_252690660();
  sub_252372288(v23, &qword_27F4DB2A0);
  v28 = v107;
  v29 = v108;
  (*(v107 + 32))(&v4[v26], v15, v108);
  swift_beginAccess();
  v119 = *&v117;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1B8);
  sub_252690660();
  swift_endAccess();
  v30 = &v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig];
  v104 = v24;
  v31 = v118;
  *v30 = v24;
  v30[1] = v31;
  v30[2] = v25;
  v32 = v113;
  sub_25237153C(v113, &v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_initialColorState], &qword_27F4DB2A0);
  sub_25237153C(v32, v23, &qword_27F4DB2A0);
  v110 = v25;

  v105 = v23;
  v106 = v16;
  sub_252690660();
  v33 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__colorState;
  swift_beginAccess();
  (*(v28 + 40))(&v4[v33], v15, v29);
  swift_endAccess();
  v34 = v112;
  sub_25248803C(v32, v112);
  v36 = v114;
  v35 = v115;
  v37 = *(v115 + 16);
  v38 = v109;
  v37(v109, v34, v114);
  swift_beginAccess();
  v37(v116, v38, v36);
  sub_252690660();
  v39 = *(v35 + 8);
  v115 = v35 + 8;
  v108 = v39;
  v39(v38, v36);
  swift_endAccess();
  LOBYTE(v33) = sub_252489FE0(v34);
  swift_beginAccess();
  LOBYTE(v119) = v33 & 1;
  sub_252690660();
  swift_endAccess();
  v40 = sub_252488424(v32);
  swift_beginAccess();
  v119 = v40;
  v109 = v4;
  sub_252690660();
  swift_endAccess();
  if (qword_27F4DABD0 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v41 = sub_2526905A0();
    v42 = __swift_project_value_buffer(v41, qword_27F4E4B18);
    v43 = v32;
    v32 = v111;
    sub_25237153C(v43, v111, &qword_27F4DB2A0);
    v44 = v110;

    v116 = v42;
    v45 = sub_252690580();
    v46 = sub_252692F10();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 136446466;
      v119 = *&v48;
      v120[0] = v104;
      v120[1] = v118;
      v120[2] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE580);
      v49 = sub_252692C00();
      v51 = sub_2525BDA90(v49, v50, &v119);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      sub_25237153C(v32, v105, &qword_27F4DB2A0);
      v52 = sub_252692C00();
      v54 = v53;
      sub_252372288(v32, &qword_27F4DB2A0);
      v55 = sub_2525BDA90(v52, v54, &v119);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_252309000, v45, v46, "ColorPickerState init: deviceConfig %{public}s colorState %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v48, -1, -1);
      MEMORY[0x2530A5A40](v47, -1, -1);
    }

    else
    {

      sub_252372288(v32, &qword_27F4DB2A0);
    }

    v56 = v117;
    *&v118 = *(v117 + 16);
    if (v118)
    {
      v57 = 0;
      v58 = 0;
      while (1)
      {
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v60 = __OFADD__(v58, 5);
        v58 += 5;
        if (v60)
        {
          v58 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v57;
        if (v58 >= v118)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v59 = 0;
LABEL_13:
    v120[0] = MEMORY[0x277D84F90];
    result = sub_25237047C(0, v59 & ~(v59 >> 63), 0);
    if (v59 < 0)
    {
      break;
    }

    v62 = v120[0];
    if (v59)
    {
      v63 = v56[2];
      v64 = 0;
      v65 = 0;
      v107 = sub_25268F860();
      v110 = *(v107 - 8);
      v105 = *(v110 + 80);
      v111 = (v105 + 32) & ~v105;
      v106 = v56 + v111;
      v66 = 5;
      while (1)
      {
        v67 = v63 >= v66 ? v66 : v63;
        if (v65 >= v118)
        {
          break;
        }

        if (v65 == 0x7FFFFFFFFFFFFFFDLL)
        {
          goto LABEL_75;
        }

        v32 = v65 + 5;
        if (v63 >= (v65 + 5))
        {
          v68 = v65 + 5;
        }

        else
        {
          v68 = v63;
        }

        if (v68 < v65)
        {
          goto LABEL_76;
        }

        v69 = v67 + v64;
        if (v67 + v64 == v56[2])
        {

          v70 = v56;
        }

        else
        {
          v70 = MEMORY[0x277D84F90];
          if (v65 != v68)
          {
            if (v69 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB188);
              v73 = *(v110 + 72);
              v70 = swift_allocObject();
              result = _swift_stdlib_malloc_size_0(v70);
              if (!v73)
              {
                goto LABEL_82;
              }

              v74 = v111;
              if (result - v111 == 0x8000000000000000 && v73 == -1)
              {
                goto LABEL_84;
              }

              v70[2] = v69;
              v70[3] = 2 * ((result - v74) / v73);
            }

            swift_arrayInitWithCopy();
          }
        }

        v120[0] = v62;
        v72 = *(v62 + 16);
        v71 = *(v62 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_25237047C((v71 > 1), v72 + 1, 1);
          v62 = v120[0];
        }

        *(v62 + 16) = v72 + 1;
        *(v62 + 8 * v72 + 32) = v70;
        v66 += 5;
        v64 -= 5;
        v65 += 5;
        --v59;
        v56 = v117;
        if (!v59)
        {
          goto LABEL_41;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v32 = 0;
LABEL_41:
    if (v32 >= v118)
    {
LABEL_67:

      v92 = *(v62 + 16);
      if (v92)
      {
        v93 = 0;
        *&v91 = 134218242;
        v118 = v91;
        do
        {

          v94 = sub_252690580();
          v95 = sub_252692F10();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v120[0] = v97;
            *v96 = v118;
            *(v96 + 4) = v93;
            *(v96 + 12) = 2082;
            v98 = sub_25268F860();

            v100 = MEMORY[0x2530A4900](v99, v98);
            v102 = v101;

            v103 = sub_2525BDA90(v100, v102, v120);

            *(v96 + 14) = v103;
            _os_log_impl(&dword_252309000, v94, v95, "ColorPickerState favorites, part %ld: %{public}s", v96, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v97);
            MEMORY[0x2530A5A40](v97, -1, -1);
            MEMORY[0x2530A5A40](v96, -1, -1);
          }

          ++v93;
        }

        while (v92 != v93);
      }

      sub_252372288(v113, &qword_27F4DB2A0);
      v108(v112, v114);
      return v109;
    }

    v76 = -v32;
    v77 = v32 + 5;
    v78 = v32;
    while (1)
    {
      v79 = v78 + 5;
      if (__OFADD__(v78, 5))
      {
        break;
      }

      v80 = v56[2];
      if (v80 >= v79)
      {
        v81 = v78 + 5;
      }

      else
      {
        v81 = v56[2];
      }

      if (v81 < v78)
      {
        goto LABEL_78;
      }

      if (v32 < 0)
      {
        goto LABEL_79;
      }

      if (v80 >= v77)
      {
        v82 = v77;
      }

      else
      {
        v82 = v56[2];
      }

      v83 = v82 + v76;
      if (v82 + v76 == v80)
      {

        v84 = v56;
      }

      else
      {
        v84 = MEMORY[0x277D84F90];
        if (v78 != v81)
        {
          if (v83 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB188);
            v87 = *(sub_25268F860() - 8);
            v88 = *(v87 + 72);
            v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
            v84 = swift_allocObject();
            result = _swift_stdlib_malloc_size_0(v84);
            if (!v88)
            {
              goto LABEL_83;
            }

            if (result - v89 == 0x8000000000000000 && v88 == -1)
            {
              goto LABEL_85;
            }

            v84[2] = v83;
            v84[3] = 2 * ((result - v89) / v88);
          }

          sub_25268F860();
          swift_arrayInitWithCopy();
        }
      }

      v120[0] = v62;
      v86 = *(v62 + 16);
      v85 = *(v62 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_25237047C((v85 > 1), v86 + 1, 1);
        v62 = v120[0];
      }

      *(v62 + 16) = v86 + 1;
      *(v62 + 8 * v86 + 32) = v84;
      v78 += 5;
      v76 -= 5;
      v77 += 5;
      v56 = v117;
      if (v79 >= v118)
      {
        goto LABEL_67;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_25248803C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_25268ED20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v6, &qword_27F4DB2A0);
  v14 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_252372288(v6, &qword_27F4DB2A0);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_25237153C(v6, v9, &qword_27F4DB2A8);
    sub_2523F627C(v6);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v22 = *(v11 + 32);
      v22(v13, v9, v10);
      return (v22)(a2, v13, v10);
    }
  }

  sub_252372288(v9, &qword_27F4DB2A8);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v15 = sub_2526905A0();
  __swift_project_value_buffer(v15, qword_27F4E4B18);
  v16 = sub_252690580();
  v17 = sub_252692EF0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_252309000, v16, v17, "ColorPickerState selectedColor is nil. Defaulting to yellow.", v18, 2u);
    MEMORY[0x2530A5A40](v18, -1, -1);
  }

  if (qword_27F4DAA78 != -1)
  {
    swift_once();
  }

  v19 = sub_252690550();
  v20 = __swift_project_value_buffer(v19, qword_27F4DE600);
  (*(*(v19 - 8) + 16))(a2, v20, v19);
  return (*(v11 + 104))(a2, *MEMORY[0x277D15B40], v10);
}

double sub_252488424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_25237153C(a1, &v14 - v3, &qword_27F4DB2A0);
  v5 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4DB2A0);
  }

  else
  {
    v6 = &v4[*(v5 + 20)];
    v7 = *v6;
    v8 = v6[8];
    sub_2523F627C(v4);
    if (v8 != 1)
    {
      return v7;
    }
  }

  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v9 = sub_2526905A0();
  __swift_project_value_buffer(v9, qword_27F4E4B18);
  v10 = sub_252690580();
  v11 = sub_252692EF0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_252309000, v10, v11, "ColorPickerState brightness is nil. Defaulting to 1.0.", v12, 2u);
    MEMORY[0x2530A5A40](v12, -1, -1);
  }

  return 1.0;
}

uint64_t sub_252488600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25268E8D0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_25268E040();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_252692E00();
  v4[9] = sub_252692DF0();
  v8 = sub_252692DE0();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_252488750, v8, v7);
}

uint64_t sub_252488750()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_25268E1B0();
  v4 = sub_25268E1A0();
  sub_25268E140();

  sub_25268E870();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_25248884C;
  v6 = v0[2];

  return MEMORY[0x28216E678](v6);
}

uint64_t sub_25248884C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_25248896C, v3, v2);
}

uint64_t sub_25248896C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252488A04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AccessoryControl.ColorState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_25237153C(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_initialColorState, v9, &qword_27F4DB2A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_252372288(v9, &qword_27F4DB2A0);
  }

  v28 = v3;
  sub_2523F6218(v9, v16);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v29 = v0;
  v18 = sub_2526905A0();
  __swift_project_value_buffer(v18, qword_27F4E4B18);
  sub_252489B88(v16, v13);
  v19 = sub_252690580();
  v20 = sub_252692F10();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v21 = 136446210;
    v22 = AccessoryControl.ColorState.description.getter();
    v24 = v23;
    sub_2523F627C(v13);
    v25 = sub_2525BDA90(v22, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_252309000, v19, v20, "ColorPickerState reverting to initial state %{public}s", v21, 0xCu);
    v26 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2530A5A40](v26, -1, -1);
    MEMORY[0x2530A5A40](v21, -1, -1);
  }

  else
  {

    sub_2523F627C(v13);
  }

  sub_252489B88(v16, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v6, v28, &qword_27F4DB2A0);

  sub_252690690();
  sub_252372288(v6, &qword_27F4DB2A0);
  return sub_2523F627C(v16);
}

uint64_t sub_252488DD8(uint64_t a1)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_25268F860();
  v7 = *(v49 - 8);
  v8 = MEMORY[0x28223BE20](v49);
  v46 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v1 + 2);
    v14 = *(v1 + 4);
    v15 = *(v1 + 6);
    v31 = *(v1 + 8);
    v32 = v14;
    v16 = *(v1 + 10);
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v38 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v20 = a1 + v38;
    v21 = *(v17 + 56);
    v48 = (v4 + 88);
    v47 = *MEMORY[0x277D15B40];
    v41 = *MEMORY[0x277D15B38];
    v36 = *MEMORY[0x277D15B28];
    v35 = *MEMORY[0x277D15B30];
    v34 = (v4 + 96);
    v44 = v13;
    v33 = v13 | v15 | v16;
    v42 = (v17 - 8);
    v43 = (v4 + 8);
    v45 = (v17 + 16);
    v22 = MEMORY[0x277D84F90];
    v39 = v17;
    v40 = v3;
    v37 = v19;
    v19(v11, v20, v49);
    while (1)
    {
      sub_25268F850();
      v23 = (*v48)(v6, v3);
      if (v23 == v47)
      {
        break;
      }

      if (v23 == v41)
      {
        goto LABEL_9;
      }

      if (v23 != v36)
      {
        if (v23 != v35)
        {
          result = sub_2526933A0();
          __break(1u);
          return result;
        }

        (*v43)(v6, v3);
LABEL_3:
        (*v42)(v11, v49);
        goto LABEL_4;
      }

      (*v34)(v6, v3);
      if ((v33 & 1) == 0)
      {
        v28 = *v6;
        if (v28 < v32 || v31 < v28)
        {
          goto LABEL_3;
        }
      }

LABEL_10:
      v24 = *v45;
      (*v45)(v46, v11, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_252370438(0, *(v22 + 16) + 1, 1);
        v22 = v50;
      }

      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_252370438(v26 > 1, v27 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v27 + 1;
      v24(v22 + v38 + v27 * v21, v46, v49);
      v3 = v40;
      v18 = v37;
LABEL_4:
      v20 += v21;
      if (!--v12)
      {
        return v22;
      }

      v18(v11, v20, v49);
    }

    (*v43)(v6, v3);
LABEL_9:
    if (!v44)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2524891E4()
{
  sub_252372288(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_initialColorState, &qword_27F4DB2A0);

  v1 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__colorState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE560);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__favoriteColors;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE568);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__brightness;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE570);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__selectedColor;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE578);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__adaptiveLightEnabled;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t _s16ColorPickerStateCMa()
{
  result = qword_27F4DE528;
  if (!qword_27F4DE528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252489444()
{
  sub_252489714(319, &qword_27F4DE538, type metadata accessor for AccessoryControl.ColorState, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2524896C0(319, &qword_27F4DE540, &qword_27F4DB2A0);
    if (v1 <= 0x3F)
    {
      sub_2524896C0(319, &qword_27F4DE548, &qword_27F4DB1B8);
      if (v2 <= 0x3F)
      {
        sub_25242CA60(319, &qword_27F4DE550);
        if (v3 <= 0x3F)
        {
          sub_252489714(319, &qword_27F4DE558, MEMORY[0x277D15B48], MEMORY[0x277CBCED0]);
          if (v4 <= 0x3F)
          {
            sub_25242CA60(319, &qword_27F4DC340);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2524896C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2526906B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252489714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_252489778@<X0>(uint64_t *a1@<X8>)
{
  _s16ColorPickerStateCMa();
  result = sub_252690630();
  *a1 = result;
  return result;
}

uint64_t sub_2524897B8(uint64_t a1)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v34[-v8];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34[-v12];
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v1 + 2);
    v16 = *(v1 + 4);
    v17 = *(v1 + 6);
    v35 = *(v1 + 8);
    v36 = v16;
    v18 = *(v1 + 10);
    v21 = *(v4 + 16);
    v19 = v4 + 16;
    v20 = v21;
    v41 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v22 = a1 + v41;
    v23 = *(v19 + 56);
    v49 = (v19 + 72);
    v48 = *MEMORY[0x277D15B40];
    v45 = *MEMORY[0x277D15B38];
    v40 = *MEMORY[0x277D15B28];
    v39 = *MEMORY[0x277D15B30];
    v50 = (v19 - 8);
    v38 = (v19 + 80);
    v46 = v15;
    v37 = v15 | v17 | v18;
    v47 = (v19 + 16);
    v24 = MEMORY[0x277D84F90];
    v43 = v6;
    v44 = v19;
    v42 = v21;
    (v21)(v13, v22, v3, v11);
    while (1)
    {
      v20(v9, v13, v3);
      v26 = (*v49)(v9, v3);
      if (v26 == v48)
      {
        break;
      }

      if (v26 == v45)
      {
        goto LABEL_9;
      }

      if (v26 != v40)
      {
        if (v26 != v39)
        {
          result = sub_2526933A0();
          __break(1u);
          return result;
        }

        (*v50)(v9, v3);
LABEL_3:
        (*v50)(v13, v3);
        goto LABEL_4;
      }

      (*v38)(v9, v3);
      if ((v37 & 1) == 0)
      {
        v32 = *v9;
        if (v32 < v36 || v35 < v32)
        {
          goto LABEL_3;
        }
      }

LABEL_10:
      v27 = *v47;
      (*v47)(v6, v13, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_252370500(0, *(v24 + 16) + 1, 1);
        v24 = v51;
      }

      v29 = v23;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_252370500(v30 > 1, v31 + 1, 1);
        v29 = v23;
        v24 = v51;
      }

      *(v24 + 16) = v31 + 1;
      v6 = v43;
      v23 = v29;
      v27(v24 + v41 + v31 * v29, v43, v3);
      v20 = v42;
LABEL_4:
      v22 += v23;
      if (!--v14)
      {
        return v24;
      }

      (v20)(v13, v22, v3, v25);
    }

    (*v50)(v9, v3);
LABEL_9:
    if (!v46)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252489B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252489BEC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  *a1 = v3;
  return result;
}

uint64_t sub_252489CAC(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  sub_252486464(v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_252690690();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_252489E38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();
}

uint64_t sub_252489EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_25237153C(a1, &v9 - v6, &qword_27F4DB2A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v7, v4, &qword_27F4DB2A0);

  sub_252690690();
  return sub_252372288(v7, &qword_27F4DB2A0);
}

BOOL sub_252489FE0(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = *MEMORY[0x277D15B30];
  (*(v3 + 8))(v5, v2);
  if (v6 == v7)
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v8 = sub_2526905A0();
    __swift_project_value_buffer(v8, qword_27F4E4B18);
    v9 = sub_252690580();
    v10 = sub_252692F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_252309000, v9, v10, "ColorPickerState selectedColor set natural light", v11, 2u);
      MEMORY[0x2530A5A40](v11, -1, -1);
    }
  }

  return v6 == v7;
}

uint64_t sub_25248A1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);

  v6 = sub_252690580();
  v7 = sub_252692F10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_25268F860();
    v11 = MEMORY[0x2530A4900](a1, v10);
    v13 = sub_2525BDA90(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_252309000, v6, v7, "ColorPickerState updated favorites %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2530A5A40](v9, -1, -1);
    MEMORY[0x2530A5A40](v8, -1, -1);
  }

  v14 = sub_252692E30();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_252692E00();

  v15 = sub_252692DF0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  sub_2525738C0(0, 0, v4, &unk_25269F520, v16);
}

uint64_t sub_25248A414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2523E233C;

  return sub_252488600(a1, v4, v5, v6);
}

uint64_t LightbulbColor.toHSV.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE618);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_252690550();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = sub_25268ED20();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v19, v0, v16);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == *MEMORY[0x277D15B40])
  {
    (*(v17 + 96))(v19, v16);
    (*(v10 + 32))(v15, v19, v9);
    v21 = sub_25248BCB0();
    (*(v10 + 8))(v15, v9);
    return *&v21;
  }

  if (v20 == *MEMORY[0x277D15B38])
  {
    (*(v17 + 96))(v19, v16);
    return *v19;
  }

  if (v20 == *MEMORY[0x277D15B28])
  {
    (*(v17 + 96))(v19, v16);
    v23 = *v19;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = *v19;
    }

    sub_25248D668(0xF4240 / v24, v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      v21 = sub_25248BCB0();
      (*(v10 + 8))(v13, v9);
      return *&v21;
    }

    sub_252372288(v8, &qword_27F4DE618);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v25 = sub_2526905A0();
    __swift_project_value_buffer(v25, qword_27F4E4B18);
    v26 = sub_252690580();
    v27 = sub_252692F10();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 33685760;
      *(v28 + 4) = v23;
      _os_log_impl(&dword_252309000, v26, v27, "Cannot convert color temperature:%{public}hu to a HSV value", v28, 6u);
      MEMORY[0x2530A5A40](v28, -1, -1);
    }

    return 0;
  }

  if (v20 == *MEMORY[0x277D15B30])
  {
    (*(v17 + 96))(v19, v16);
    v29 = swift_projectBox();
    sub_25248AA94(v29, v5);
    v30 = v33;
    sub_25248AA94(v5, v33);
    if ((*(v17 + 48))(v30, 1, v16) == 1)
    {
      sub_252372288(v5, &qword_27F4DB2A8);
      sub_252372288(v30, &qword_27F4DB2A8);

      return 0;
    }

    v31 = LightbulbColor.toHSV.getter();
    sub_252372288(v5, &qword_27F4DB2A8);
    (*(v17 + 8))(v30, v16);

    return v31;
  }

  else
  {
    result = sub_2526933A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25248AA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LightbulbColor.toTemperature.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = sub_252690550();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = sub_25268ED20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v18, v1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277D15B40])
  {
    (*(v16 + 96))(v18, v15);
    (*(v9 + 32))(v14, v18, v8);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v20 = sub_2526905A0();
    __swift_project_value_buffer(v20, qword_27F4E4B18);
    (*(v9 + 16))(v12, v14, v8);
    v21 = sub_252690580();
    v22 = sub_252692F10();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136446210;
      v42 = RGBColor.description.getter();
      v26 = v25;
      v27 = *(v9 + 8);
      v27(v12, v8);
      v28 = sub_2525BDA90(v42, v26, &v43);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_252309000, v21, v22, "Cannot convert rgb:%{public}s to a Color Temperature value", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2530A5A40](v24, -1, -1);
      MEMORY[0x2530A5A40](v23, -1, -1);

      v27(v14, v8);
    }

    else
    {

      v35 = *(v9 + 8);
      v35(v12, v8);
      v35(v14, v8);
    }

LABEL_13:
    v36 = 0;
    v37 = 1;
    return v36 | (v37 << 16);
  }

  if (v19 == *MEMORY[0x277D15B38])
  {
    (*(v16 + 96))(v18, v15);
    v30 = *v18;
    v29 = v18[1];
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v31 = sub_2526905A0();
    __swift_project_value_buffer(v31, qword_27F4E4B18);
    v32 = sub_252690580();
    v33 = sub_252692F10();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134349312;
      *(v34 + 4) = v30;
      *(v34 + 12) = 2050;
      *(v34 + 14) = v29;
      _os_log_impl(&dword_252309000, v32, v33, "Cannot convert hue:%{public}f saturation:%{public}f to a Color Temperature value", v34, 0x16u);
      MEMORY[0x2530A5A40](v34, -1, -1);
    }

    goto LABEL_13;
  }

  if (v19 == *MEMORY[0x277D15B28])
  {
    (*(v16 + 96))(v18, v15);
    v37 = 0;
    v36 = *v18;
    return v36 | (v37 << 16);
  }

  if (v19 == *MEMORY[0x277D15B30])
  {
    (*(v16 + 96))(v18, v15);
    v39 = swift_projectBox();
    sub_25248AA94(v39, v7);
    sub_25248AA94(v7, v5);
    if ((*(v16 + 48))(v5, 1, v15) != 1)
    {
      v40 = LightbulbColor.toTemperature.getter();
      v36 = v40;
      v37 = HIWORD(v40) & 1;
      sub_252372288(v7, &qword_27F4DB2A8);
      (*(v16 + 8))(v5, v15);

      return v36 | (v37 << 16);
    }

    sub_252372288(v7, &qword_27F4DB2A8);
    sub_252372288(v5, &qword_27F4DB2A8);

    goto LABEL_13;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

BOOL sub_25248B14C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252690550();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - v7;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE248);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = *(v12 + 56);
  v16 = *(v9 + 16);
  v39 = v2;
  v16(&v35 - v13, v2, v8);
  v40 = a1;
  v16(&v14[v15], a1, v8);
  v17 = *(v9 + 88);
  v18 = v17(v14, v8);
  v19 = *MEMORY[0x277D15B30];
  if (v18 != *MEMORY[0x277D15B30])
  {
    v23 = v17(&v14[v15], v8);
    v24 = v23;
    if (v23 == *MEMORY[0x277D15B28])
    {
      v25 = v36;
      v16(v36, &v14[v15], v8);
      v26 = *(v9 + 96);
      v26(v25, v8);
      v27 = *v25;
      if (v17(v14, v8) == v24)
      {
        v26(v14, v8);
        v22 = *v14 == v27;
        (*(v9 + 8))(&v14[v15], v8);
        return v22;
      }
    }

    else if (v23 == v19)
    {
      v28 = *(v9 + 8);
      v28(&v14[v15], v8);
      v28(v14, v8);
      return 0;
    }

    v29 = v37;
    sub_25248B53C(v37);
    v30 = v38;
    sub_25248B53C(v38);
    v22 = sub_25248C9AC();
    v31 = *(v41 + 8);
    v32 = v30;
    v33 = v42;
    v31(v32, v42);
    v31(v29, v33);
    sub_252372288(v14, &qword_27F4DE248);
    return v22;
  }

  v20 = v18;
  v21 = *(v9 + 8);
  v21(v14, v8);
  v22 = v17(&v14[v15], v8) == v20;
  v21(&v14[v15], v8);
  return v22;
}

uint64_t sub_25248B53C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE618);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_25268ED20();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v18, v1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277D15B40])
  {
    (*(v16 + 96))(v18, v15);
    v20 = sub_252690550();
    return (*(*(v20 - 8) + 32))(a1, v18, v20);
  }

  if (v19 == *MEMORY[0x277D15B38])
  {
    v22 = (*(v16 + 96))(v18, v15);
    v22.i64[0] = *v18;
    *v23.i64 = *v18 - trunc(*v18);
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v25 = *vbslq_s8(vnegq_f64(v24), v23, v22).i64 * 6.0;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        return sub_252690540();
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_13:
    v27 = __swift_project_value_buffer(v1, qword_27F4DE5A0);
    (*(v12 + 2))(a1, v27, v1);
    result = v15(v14, 1, v1);
    if (result != 1)
    {
      return sub_252372288(v14, &qword_27F4DE618);
    }

    return result;
  }

  if (v19 == *MEMORY[0x277D15B28])
  {
    (*(v16 + 96))(v18, v15);
    v26 = *v18;
    if (v26 <= 1)
    {
      v26 = 1;
    }

    sub_25248D668(0xF4240 / v26, v14);
    v1 = sub_252690550();
    v12 = *(v1 - 8);
    v15 = *(v12 + 6);
    if (v15(v14, 1, v1) != 1)
    {
      return (*(v12 + 4))(a1, v14, v1);
    }

    if (qword_27F4DAA58 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if (v19 == *MEMORY[0x277D15B30])
  {
    (*(v16 + 96))(v18, v15);
    v28 = swift_projectBox();
    sub_25248AA94(v28, v8);
    sub_25248AA94(v8, v6);
    if ((*(v16 + 48))(v6, 1, v15) == 1)
    {
      sub_252372288(v6, &qword_27F4DB2A8);
      v29 = sub_252690550();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v12, 1, 1, v29);
      if (qword_27F4DAA58 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v29, qword_27F4DE5A0);
      (*(v30 + 16))(a1, v31, v29);
      sub_252372288(v8, &qword_27F4DB2A8);
      if ((*(v30 + 48))(v12, 1, v29) != 1)
      {
        sub_252372288(v12, &qword_27F4DE618);
      }
    }

    else
    {
      sub_25248B53C();
      sub_252372288(v8, &qword_27F4DB2A8);
      (*(v16 + 8))(v6, v15);
      v32 = sub_252690550();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v12, 0, 1, v32);
      (*(v33 + 32))(a1, v12, v32);
    }
  }

  else
  {
    result = sub_2526933A0();
    __break(1u);
  }

  return result;
}

double sub_25248BCB0()
{
  sub_252690520();
  v1 = v0;
  sub_252690510();
  if (v2 <= v1)
  {
    sub_252690520();
    v4 = v3;
    sub_252690500();
    if (v5 <= v4)
    {
      sub_252690520();
      v13 = v17;
      sub_252690510();
      v19 = v18;
      sub_252690500();
      if (v19 < v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_252690500();
      goto LABEL_12;
    }
  }

  sub_252690510();
  v7 = v6;
  sub_252690500();
  if (v8 <= v7)
  {
    sub_252690510();
    v10 = v9;
    sub_252690520();
    if (v11 <= v10)
    {
      sub_252690510();
      v13 = v23;
      sub_252690520();
      v25 = v24;
      sub_252690500();
      if (v25 < v26)
      {
LABEL_10:
        sub_252690520();
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  sub_252690500();
  v13 = v12;
  sub_252690510();
  v15 = v14;
  sub_252690520();
  if (v15 >= v16)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_252690510();
LABEL_12:
  v22.i64[0] = 0;
  if (v13 > 0.0)
  {
    v27 = v13 - *v21.i64;
    if ((v13 - *v21.i64) / v13 != 0.0)
    {
      v28 = *v21.i64;
      sub_252690520();
      v30 = v29;
      sub_252690510();
      v32 = (v13 - v31) / v27;
      sub_252690500();
      v34 = (v13 - v33) / v27;
      sub_252690520();
      v36 = v35;
      sub_252690510();
      if (v13 == v36)
      {
        if (v28 == *v21.i64)
        {
          *v22.i64 = v34 + 5.0;
        }

        else
        {
          *v22.i64 = 1.0 - v32;
        }
      }

      else
      {
        v37 = (v13 - v30) / v27;
        if (v13 == *v21.i64)
        {
          sub_252690500();
          if (v28 == *v21.i64)
          {
            *v22.i64 = v37 + 1.0;
          }

          else
          {
            *v22.i64 = 3.0 - v34;
          }
        }

        else
        {
          sub_252690520();
          if (v28 == *v21.i64)
          {
            *v22.i64 = v32 + 3.0;
          }

          else
          {
            *v22.i64 = 5.0 - v37;
          }
        }
      }
    }
  }

  *v21.i64 = *v22.i64 / 6.0;
  *v22.i64 = *v22.i64 / 6.0 - trunc(*v22.i64 / 6.0);
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v21.i64[0] = vbslq_s8(vnegq_f64(v38), v22, v21).u64[0];
  return *v21.i64;
}

uint64_t LightbulbColor.shortDebugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v2);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v44 - v6;
  v8 = sub_252690550();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268ED20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D15B40])
  {
    (*(v13 + 96))(v16, v12);
    (*(v9 + 32))(v11, v16, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2526952C0;
    sub_252690520();
    v20 = v19 * 255.0;
    v21 = MEMORY[0x277D85048];
    *(v18 + 56) = MEMORY[0x277D85048];
    v22 = sub_25248DF60();
    *(v18 + 64) = v22;
    *(v18 + 32) = v20;
    sub_252690510();
    *(v18 + 96) = v21;
    *(v18 + 104) = v22;
    *(v18 + 72) = v23 * 255.0;
    sub_252690500();
    *(v18 + 136) = v21;
    *(v18 + 144) = v22;
    *(v18 + 112) = v24 * 255.0;
    v25 = sub_252692BE0();
    (*(v9 + 8))(v11, v8);
    return v25;
  }

  if (v17 == *MEMORY[0x277D15B38])
  {
    (*(v13 + 96))(v16, v12);
    v27 = *v16;
    v28 = v16[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_252694EA0;
    v30 = MEMORY[0x277D839F8];
    v31 = MEMORY[0x277D83A80];
    *(v29 + 56) = MEMORY[0x277D839F8];
    *(v29 + 64) = v31;
    *(v29 + 32) = v27;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = v28;
    return sub_252692BE0();
  }

  if (v17 == *MEMORY[0x277D15B28])
  {
    (*(v13 + 96))(v16, v12);
    v32 = *v16;
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    sub_25248DF14();
    v34 = sub_252693080();
    [v33 setRoundingIncrement_];

    [v33 setRoundingMode_];
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_252693210();

    strcpy(v45, "Temp: mired(");
    BYTE5(v45[1]) = 0;
    HIWORD(v45[1]) = -5120;
    v44[7] = v32;
    v35 = sub_252693370();
    MEMORY[0x2530A4800](v35);

    MEMORY[0x2530A4800](539828265, 0xE400000000000000);
    v36 = sub_252692EB0();
    v37 = [v33 stringFromNumber_];

    if (v37)
    {
      v38 = sub_252692BD0();
      v40 = v39;

      MEMORY[0x2530A4800](v38, v40);

      MEMORY[0x2530A4800](75, 0xE100000000000000);

      return v45[0];
    }

    __break(1u);
  }

  else if (v17 == *MEMORY[0x277D15B30])
  {
    (*(v13 + 96))(v16, v12);
    v41 = swift_projectBox();
    sub_25248AA94(v41, v7);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_252693210();

    strcpy(v45, "AdaptiveLight:");
    HIBYTE(v45[1]) = -18;
    sub_25248AA94(v7, v4);
    v42 = sub_252692C00();
    MEMORY[0x2530A4800](v42);

    v43 = v45[0];
    sub_252372288(v7, &qword_27F4DB2A8);

    return v43;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_25248C4C8(uint64_t a1)
{
  v2 = sub_252692270();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252690550();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268ED20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D15B38])
  {
    (*(v11 + 96))(v13, v10);
    v14 = sub_252692290();
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    v18 = v6;
    sub_25248B53C(v9);
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    sub_252690520();
    sub_252690510();
    sub_252690500();
    v14 = sub_252692390();
    v15 = *(v11 + 8);
    v15(a1, v10);
    (*(v7 + 8))(v9, v18);
    v15(v13, v10);
  }

  return v14;
}

uint64_t RGBColor.description.getter()
{
  sub_252693210();

  sub_252690520();
  v0 = sub_252692E50();
  MEMORY[0x2530A4800](v0);

  MEMORY[0x2530A4800](3827488, 0xE300000000000000);
  sub_252690510();
  v1 = sub_252692E50();
  MEMORY[0x2530A4800](v1);

  MEMORY[0x2530A4800](3826208, 0xE300000000000000);
  sub_252690500();
  v2 = sub_252692E50();
  MEMORY[0x2530A4800](v2);

  return 0x726F6C6F43424752;
}

uint64_t RGBColor.shortDebugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2526952C0;
  sub_252690520();
  v2 = v1 * 255.0;
  v3 = MEMORY[0x277D85048];
  *(v0 + 56) = MEMORY[0x277D85048];
  v4 = sub_25248DF60();
  *(v0 + 64) = v4;
  *(v0 + 32) = v2;
  sub_252690510();
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 72) = v5 * 255.0;
  sub_252690500();
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  *(v0 + 112) = v6 * 255.0;

  return sub_252692BE0();
}

BOOL sub_25248C9AC()
{
  sub_252690520();
  v1 = v0;
  sub_252690520();
  if (vabdd_f64(v1, v2) >= 0.02)
  {
    return 0;
  }

  sub_252690510();
  v4 = v3;
  sub_252690510();
  if (vabdd_f64(v4, v5) >= 0.02)
  {
    return 0;
  }

  sub_252690500();
  v7 = v6;
  sub_252690500();
  return vabdd_f64(v7, v8) < 0.02;
}

double RGBColor.approximateID.getter()
{
  sub_252690520();
  v1 = round(v0 * 100.0) / 100.0;
  sub_252690510();
  v3 = round(v2 * 100.0) / 100.0;
  sub_252690500();
  v5 = round(v4 * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630);
  v6 = swift_allocObject();
  *&result = 3;
  *(v6 + 16) = xmmword_2526952C0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;
  return result;
}

uint64_t sub_25248CC20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_252690550();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_252690560();
}

uint64_t sub_25248CCB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_252690550();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *LightbulbColor.id.getter()
{
  v1 = sub_252690550();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0, v5, v7);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D15B30])
  {
    v10 = &unk_286483D28;
  }

  else
  {
    sub_25248B53C(v4);
    v10 = sub_252690530();
    (*(v2 + 8))(v4, v1);
  }

  (*(v6 + 8))(v9, v5);
  return v10;
}

double *LightbulbColor.approximateID.getter()
{
  v1 = sub_252690550();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0, v5, v7);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D15B30])
  {
    v10 = &unk_286483D50;
  }

  else
  {
    sub_25248B53C(v4);
    sub_252690520();
    v12 = round(v11 * 100.0) / 100.0;
    sub_252690510();
    v14 = round(v13 * 100.0) / 100.0;
    sub_252690500();
    v16 = round(v15 * 100.0) / 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_2526952C0;
    v10[4] = v12;
    v10[5] = v14;
    v10[6] = v16;
    (*(v2 + 8))(v4, v1);
  }

  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t LightbulbColor.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = sub_252690550();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268ED20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v15, v1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D15B40])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252693210();

    v25 = 0xD000000000000010;
    v26 = 0x80000002526AF8C0;
    v17 = RGBColor.description.getter();
    MEMORY[0x2530A4800](v17);

    v18 = v25;
    (*(v9 + 8))(v11, v8);
    return v18;
  }

  if (v16 == *MEMORY[0x277D15B38])
  {
    (*(v13 + 96))(v15, v12);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD00000000000001ALL, 0x80000002526AF8A0);
    sub_252692E70();
    MEMORY[0x2530A4800](0x7461727574617320, 0xEC0000003A6E6F69);
    sub_252692E70();
    return v25;
  }

  if (v16 == *MEMORY[0x277D15B28])
  {
    (*(v13 + 96))(v15, v12);
    v19 = *v15;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252693210();

    v25 = 0xD00000000000001DLL;
    v26 = 0x80000002526AF880;
    v24[7] = v19;
    v20 = sub_252693370();
    MEMORY[0x2530A4800](v20);

    return v25;
  }

  if (v16 == *MEMORY[0x277D15B30])
  {
    (*(v13 + 96))(v15, v12);
    v21 = swift_projectBox();
    sub_25248AA94(v21, v7);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252693210();

    v25 = 0xD00000000000001FLL;
    v26 = 0x80000002526AF860;
    sub_25248AA94(v7, v5);
    v22 = sub_252692C00();
    MEMORY[0x2530A4800](v22);

    v18 = v25;
    sub_252372288(v7, &qword_27F4DB2A8);

    return v18;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_25248D668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 - 40001) > 0xFFFFFFFFFFFF67A6)
  {
    sub_252690540();
    v8 = 0;
  }

  else
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v4 = sub_2526905A0();
    __swift_project_value_buffer(v4, qword_27F4E4B18);
    v5 = sub_252690580();
    v6 = sub_252692EF0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_252309000, v5, v6, "rgbColorForColorTemperature: Rejecting conversion of %{public}ldK beyond supported bounds.", v7, 0xCu);
      MEMORY[0x2530A5A40](v7, -1, -1);
    }

    v8 = 1;
  }

  v9 = sub_252690550();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t sub_25248D884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_252690550();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, v2, a1, v11);
  if ((*(v9 + 88))(v13, a1) == *MEMORY[0x277D15B30])
  {
    v14 = &unk_286483D78;
  }

  else
  {
    sub_25248B53C(v8);
    v14 = sub_252690530();
    (*(v6 + 8))(v8, v5);
  }

  result = (*(v9 + 8))(v13, a1);
  *a2 = v14;
  return result;
}

uint64_t sub_25248DA50()
{
  v0 = sub_2526910F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252690550();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2526910E0();
  sub_252692370();
  sub_252690540();
  (*(v1 + 8))(v3, v0);
  sub_252690520();
  v9 = v8 * 0.2126;
  sub_252690510();
  v11 = v9 + v10 * 0.7152;
  sub_252690500();
  if (v11 + v12 * 0.0722 <= 0.95)
  {
    v13 = sub_25248DC40();
  }

  else
  {
    v13 = 1;
  }

  (*(v5 + 8))(v7, v4);
  return v13 & 1;
}

uint64_t sub_25248DC40()
{
  sub_252690520();
  v1 = v0;
  sub_252690510();
  v3 = v2;
  sub_252690500();
  v5 = v4 * 255.0;
  v6 = (v1 * 255.0 + v3 * 255.0 + v5) / 3.0;
  v7 = v6 >= 216.75;
  if (sqrt(((v5 - v6) * (v5 - v6) + (v1 * 255.0 - v6) * (v1 * 255.0 - v6) + (v3 * 255.0 - v6) * (v3 * 255.0 - v6)) / 3.0) > 20.0)
  {
    v7 = 0;
  }

  return v6 > 242.25 || v7;
}

uint64_t sub_25248DD00()
{
  v0 = sub_2526910F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252690550();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2526910E0();
  sub_252692370();
  sub_252690540();
  v11 = *(v1 + 8);
  v11(v3, v0);
  sub_2526910E0();
  sub_252692370();
  sub_252690540();
  v11(v3, v0);
  LOBYTE(v0) = sub_25248C9AC();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  return v0 & 1;
}

unint64_t sub_25248DF14()
{
  result = qword_27F4DE620;
  if (!qword_27F4DE620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4DE620);
  }

  return result;
}

unint64_t sub_25248DF60()
{
  result = qword_27F4DE628;
  if (!qword_27F4DE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE628);
  }

  return result;
}

unint64_t sub_25248DFB8()
{
  result = qword_27F4DE638;
  if (!qword_27F4DE638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE638);
  }

  return result;
}

void sub_25248E07C()
{
  v0 = MEMORY[0x277D839B0];
  sub_25248E21C(319, &qword_27F4DE328, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_25248E21C(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_25248E1B8();
      if (v3 <= 0x3F)
      {
        sub_25248E21C(319, &qword_27F4DE678, v0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25248E1B8()
{
  if (!qword_27F4DE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2A0);
    v0 = sub_252692750();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE670);
    }
  }
}

void sub_25248E21C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void (*sub_25248E288(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for ColorControl(0);
  sub_25237153C(v1 + *(v9 + 28), v8, &qword_27F4DE658);
  MEMORY[0x2530A4210](v6);
  return sub_25248E3C8;
}

void sub_25248E3C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_25237153C(*(a1 + 8), v3, &qword_27F4DB2A0);
    sub_2526926B0();
    sub_252372288(v2, &qword_27F4DE658);
    v5 = v4;
    v6 = &qword_27F4DB2A0;
  }

  else
  {
    sub_2526926B0();
    v6 = &qword_27F4DE658;
    v5 = v2;
  }

  sub_252372288(v5, v6);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_25248E4A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE9B8);
  swift_allocObject();
  result = sub_252624D98(0x406F400000000000, 0);
  qword_27F4DE648 = result;
  return result;
}

uint64_t sub_25248E4F8@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE680);
  MEMORY[0x28223BE20](v2);
  v4 = v54 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE688);
  MEMORY[0x28223BE20](v5);
  v7 = v54 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE690);
  MEMORY[0x28223BE20](v64);
  v58 = (v54 - v8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE698);
  MEMORY[0x28223BE20](v61);
  v63 = (v54 - v9);
  v10 = type metadata accessor for ColorControl(0);
  v59 = *(v10 - 1);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2526910F0();
  v57 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE6A0);
  MEMORY[0x28223BE20](v15);
  v62 = v54 - v17;
  if (*(v1 + v10[9]) == 1)
  {
    v54[2] = v5;
    v55 = v7;
    v108 = *(v1 + 96);
    v18 = *(v1 + 80);
    v107[2] = *(v1 + 64);
    v107[3] = v18;
    v19 = *(v1 + 48);
    v107[0] = *(v1 + 32);
    v107[1] = v19;
    v56 = v2;
    v54[1] = v16;
    if ((v108 & 0x100) != 0)
    {
      v20 = *(v1 + 64);
      v97 = *(v1 + 80);
      LOBYTE(v98) = *(v1 + 96);
      v21 = *(v1 + 32);
      v95 = *(v1 + 48);
      v96 = v20;
      v94 = v21;
      if ((BYTE1(v97) & 1) == 0)
      {
LABEL_4:
        v22 = v60;
        sub_252499E14(v1, v60, type metadata accessor for ColorControl);
        v23 = (*(v59 + 80) + 16) & ~*(v59 + 80);
        v24 = swift_allocObject();
        sub_252499A88(v22, v24 + v23, type metadata accessor for ColorControl);
        LOBYTE(v23) = *(v1 + v10[11]);
        v25 = *(v1 + v10[10]);
        sub_252491F74();
        v27 = v26;
        v29 = v28;
        v30 = sub_252692920();
        v32 = v31;
        sub_2526899D0(&v67, v27, v29);
        *&v79[0] = v30;
        *(&v79[0] + 1) = v32;
        v79[11] = v77;
        v80[0] = v78[0];
        *(v80 + 9) = *(v78 + 9);
        v79[7] = v73;
        v79[8] = v74;
        v79[9] = v75;
        v79[10] = v76;
        v79[3] = v69;
        v79[4] = v70;
        v79[5] = v71;
        v79[6] = v72;
        v79[1] = v67;
        v79[2] = v68;
        v104 = v76;
        v105 = v77;
        v106[0] = v80[0];
        *(v106 + 9) = *(v78 + 9);
        v100 = v72;
        v101 = v73;
        v102 = v74;
        v103 = v75;
        v96 = v68;
        v97 = v69;
        v98 = v70;
        v99 = v71;
        v94 = v79[0];
        v95 = v67;
        v92 = v77;
        v93[0] = v78[0];
        *(v93 + 9) = *(v78 + 9);
        v88 = v73;
        v89 = v74;
        v90 = v75;
        v91 = v76;
        v84 = v69;
        v85 = v70;
        v86 = v71;
        v87 = v72;
        v81[0] = v30;
        v81[1] = v32;
        v82 = v67;
        v83 = v68;
        sub_25237153C(v79, &v66, &qword_27F4DE6F0);
        sub_252372288(v81, &qword_27F4DE6F0);
        v33 = v63;
        *v63 = sub_252498550;
        v33[1] = v24;
        *(v33 + 16) = v23;
        v33[3] = v25;
        v34 = v105;
        *(v33 + 12) = v104;
        *(v33 + 13) = v34;
        *(v33 + 14) = v106[0];
        *(v33 + 233) = *(v106 + 9);
        v35 = v101;
        *(v33 + 8) = v100;
        *(v33 + 9) = v35;
        v36 = v103;
        *(v33 + 10) = v102;
        *(v33 + 11) = v36;
        v37 = v97;
        *(v33 + 4) = v96;
        *(v33 + 5) = v37;
        v38 = v99;
        *(v33 + 6) = v98;
        *(v33 + 7) = v38;
        v39 = v95;
        *(v33 + 2) = v94;
        *(v33 + 3) = v39;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE6B8);
        sub_252497CDC();
        sub_252400FC8(&qword_27F4DE6F8, &qword_27F4DE690);
        v40 = v62;
        sub_252691470();
LABEL_8:
        v43 = &qword_27F4DE6A0;
        sub_25237153C(v40, v55, &qword_27F4DE6A0);
        swift_storeEnumTagMultiPayload();
        sub_252497C24();
        sub_252497EA0();
        sub_252691470();
        v44 = v40;
        return sub_252372288(v44, v43);
      }
    }

    else
    {

      sub_252692F00();
      v45 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(v107, &qword_27F4DC120);
      (*(v57 + 8))(v14, v12);
      if ((BYTE1(v97) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v46 = sub_252692920();
    v47 = v58;
    *v58 = v46;
    *(v47 + 8) = v48;
    *(v47 + 16) = 0;
    *(v47 + 24) = 1;
    *(v47 + 32) = 0;
    *(v47 + 40) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7A0);
    *&v94 = sub_252493894();
    v49 = v60;
    sub_252499E14(v1, v60, type metadata accessor for ColorControl);
    v50 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v51 = (v11 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    sub_252499A88(v49, v52 + v50, type metadata accessor for ColorControl);
    *(v52 + v51) = 0x4008000000000000;
    *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4051400000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7B0);
    sub_252400FC8(&qword_27F4DE7B8, &qword_27F4DE7A8);
    sub_252400FC8(&qword_27F4DE7C0, &qword_27F4DE7B0);
    sub_2524984FC();
    sub_2526927B0();
    sub_25237153C(v47, v63, &qword_27F4DE690);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE6B8);
    sub_252497CDC();
    sub_252400FC8(&qword_27F4DE6F8, &qword_27F4DE690);
    v40 = v62;
    sub_252691470();
    sub_252372288(v47, &qword_27F4DE690);
    goto LABEL_8;
  }

  sub_2524907F8(v4);
  v41 = *(v1 + v10[10]);
  v42 = &v4[*(v2 + 36)];
  *v42 = *(v1 + v10[11]);
  *(v42 + 1) = v41;
  v43 = &qword_27F4DE680;
  sub_25237153C(v4, v7, &qword_27F4DE680);
  swift_storeEnumTagMultiPayload();
  sub_252497C24();
  sub_252497EA0();
  sub_252691470();
  v44 = v4;
  return sub_252372288(v44, v43);
}

uint64_t sub_25248EF04()
{
  sub_2526919E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7D0);
  sub_2524985D8();
  return sub_252690820();
}

uint64_t sub_25248EF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorControl(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252690CE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  *a3 = sub_2526911D0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7F0);
  sub_25248F1E4(a3 + *(v13 + 44));
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  sub_252499E14(a1, v9, type metadata accessor for ColorControl);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_252499A88(v9, v16 + v15, type metadata accessor for ColorControl);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7D0);
  v18 = (a3 + *(result + 36));
  *v18 = sub_252498690;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

uint64_t sub_25248F1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE808);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-v12];
  sub_252692920();
  sub_2526909C0();
  v30 = v36;
  v29 = v38;
  v28 = v40;
  v27 = v41;
  v50 = 1;
  v49 = v37;
  v48 = v39;
  v31 = v13;
  sub_25248F588(v13);
  sub_2524907F8(v7);
  sub_252692920();
  sub_2526909C0();
  v34 = v44;
  v35 = v42;
  v33 = v46;
  v32 = v47;
  v53 = 1;
  v52 = v43;
  v51 = v45;
  v14 = v50;
  v15 = v49;
  v16 = v48;
  v26 = v10;
  sub_25237153C(v13, v10, &qword_27F4DE808);
  sub_25237153C(v7, v4, &qword_27F4DE710);
  v23 = v53;
  v24 = v52;
  v25 = v51;
  *a1 = 0;
  *(a1 + 8) = v14;
  *(a1 + 16) = v30;
  *(a1 + 24) = v15;
  *(a1 + 32) = v29;
  *(a1 + 40) = v16;
  v17 = v27;
  *(a1 + 48) = v28;
  *(a1 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE810);
  sub_25237153C(v10, a1 + v18[12], &qword_27F4DE808);
  sub_25237153C(v4, a1 + v18[16], &qword_27F4DE710);
  v19 = a1 + v18[20];
  *v19 = 0;
  *(v19 + 8) = v23;
  *(v19 + 16) = v35;
  *(v19 + 24) = v24;
  *(v19 + 32) = v34;
  *(v19 + 40) = v25;
  v20 = v32;
  *(v19 + 48) = v33;
  *(v19 + 56) = v20;
  sub_252372288(v7, &qword_27F4DE710);
  sub_252372288(v31, &qword_27F4DE808);
  sub_252372288(v4, &qword_27F4DE710);
  return sub_252372288(v26, &qword_27F4DE808);
}

uint64_t sub_25248F588@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE818);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v139 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v138 = &v102 - v4;
  v134 = sub_2526912C0();
  v131 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2526917F0();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorControl(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v144 = v10;
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = _s18ColorControlCircleVMa();
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE820);
  MEMORY[0x28223BE20](v136);
  v119 = &v102 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE828);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v102 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE830);
  MEMORY[0x28223BE20](v114);
  v116 = &v102 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE838);
  MEMORY[0x28223BE20](v121);
  v120 = &v102 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE840);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v113 = &v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE848);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = &v102 - v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE850);
  MEMORY[0x28223BE20](v127);
  v126 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE858);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v130 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v132 = &v102 - v25;
  v111 = sub_25268ED20();
  v26 = *(v111 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v102 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE860);
  MEMORY[0x28223BE20](v31 - 8);
  v137 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v36 = &v102 - v34;
  v37 = v1 + *(v8 + 40);
  v38 = *v37 == 1;
  v143 = &v102 - v34;
  if (v38)
  {
    v104 = v37;
    v106 = v22;
    v107 = v21;
    v103 = sub_252493474(v30);
    v39 = v11;
    v135 = v9;
    v40 = v103;
    v41 = *(v26 + 16);
    v108 = v26 + 16;
    v42 = v110;
    v43 = v111;
    v41(v110, v30, v111);
    v102 = v41;
    (*(v26 + 56))(v42, 0, 1, v43);
    v44 = v112;
    v45 = (v42 + *(v112 + 20));
    *v45 = 0;
    v45[1] = 0;
    v45[2] = 0;
    *(v42 + *(v44 + 24)) = v40;
    sub_252692920();
    sub_2526909C0();
    v46 = v119;
    sub_252499A88(v42, v119, _s18ColorControlCircleVMa);
    v47 = (v46 + *(v136 + 36));
    v48 = v153;
    *v47 = v152;
    v47[1] = v48;
    v47[2] = v154;
    v112 = v1;
    sub_252499E14(v1, v39, type metadata accessor for ColorControl);
    v49 = v109;
    v41(v109, v30, v43);
    v50 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v51 = (v144 + *(v26 + 80) + v50) & ~*(v26 + 80);
    v52 = swift_allocObject();
    v110 = v39;
    sub_252499A88(v39, v52 + v50, type metadata accessor for ColorControl);
    v105 = v26;
    (*(v26 + 32))(v52 + v51, v49, v43);
    sub_252499AF0();
    v53 = v115;
    sub_252691E60();

    sub_252372288(v46, &qword_27F4DE820);
    v54 = v116;
    (*(v117 + 32))(v116, v53, v118);
    v55 = &v54[*(v114 + 52)];
    v136 = v30;
    v56 = v43;
    v102(v55, v30, v43);
    v57 = sub_252691A10();
    sub_252690760();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v54;
    v67 = v120;
    sub_2523714D4(v66, v120, &qword_27F4DE830);
    v68 = v121;
    v69 = v67 + *(v121 + 36);
    *v69 = v57;
    *(v69 + 8) = v59;
    *(v69 + 16) = v61;
    *(v69 + 24) = v63;
    *(v69 + 32) = v65;
    *(v69 + 40) = 0;
    v70 = v122;
    sub_2526917C0();
    v71 = sub_252499BAC();
    v72 = v113;
    sub_252692020();
    (*(v123 + 8))(v70, v124);
    sub_252372288(v67, &qword_27F4DE838);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308);
    v73 = v131;
    if (v103)
    {
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_252694EA0;
      sub_2526912A0();
      sub_252691270();
    }

    else
    {
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_252694E90;
      sub_2526912A0();
    }

    *&v150 = v74;
    sub_252499A40(&qword_27F4DD310, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318);
    sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318);
    v75 = v133;
    v76 = v134;
    sub_252693190();
    v77 = v107;
    v78 = v106;
    *&v150 = v68;
    *(&v150 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    v79 = v125;
    v80 = v129;
    sub_252691EB0();
    (*(v73 + 8))(v75, v76);
    (*(v128 + 8))(v72, v80);
    v81 = v126;
    v82 = &v126[*(v127 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
    sub_252690D90();
    *v82 = 0;
    sub_2523714D4(v79, v81, &qword_27F4DE848);
    sub_252499C64();
    v83 = v130;
    sub_252692070();
    sub_252372288(v81, &qword_27F4DE850);
    *&v150 = sub_252692C40();
    *(&v150 + 1) = v84;
    sub_252404480();
    v85 = v132;
    sub_252690BD0();

    sub_252372288(v83, &qword_27F4DE858);
    (*(v105 + 8))(v136, v56);
    v36 = v143;
    sub_2523714D4(v85, v143, &qword_27F4DE858);
    (*(v78 + 56))(v36, 0, 1, v77);
    v1 = v112;
    v11 = v110;
    v9 = v135;
    v37 = v104;
  }

  else
  {
    (*(v22 + 56))(&v102 - v34, 1, 1, v21, v35);
  }

  v148 = *v37;
  v149 = *(v37 + 16);
  v146 = *v37;
  v147 = *(v37 + 16);
  sub_252394224(&v148, &v150);
  v86 = sub_2524991C8(&v146);
  v150 = v146;
  v151 = v147;
  sub_252394280(&v150);
  v145 = v86;
  sub_252499E14(v1, v11, type metadata accessor for ColorControl);
  v87 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v88 = (v144 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  sub_252499A88(v11, v89 + v87, type metadata accessor for ColorControl);
  *(v89 + v88) = 0x4008000000000000;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4051400000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE870);
  sub_252400FC8(&qword_27F4DE878, &qword_27F4DE868);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE880);
  v91 = sub_252499844();
  *&v146 = v90;
  *(&v146 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  sub_252499A40(&qword_27F4DE8C0, MEMORY[0x277D15B48]);
  v92 = v138;
  sub_2526927B0();
  v93 = v137;
  sub_25237153C(v36, v137, &qword_27F4DE860);
  v94 = v141;
  v95 = *(v141 + 16);
  v96 = v139;
  v97 = v142;
  v95(v139, v92, v142);
  v98 = v140;
  sub_25237153C(v93, v140, &qword_27F4DE860);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8C8);
  v95((v98 + *(v99 + 48)), v96, v97);
  v100 = *(v94 + 8);
  v100(v92, v97);
  sub_252372288(v143, &qword_27F4DE860);
  v100(v96, v97);
  return sub_252372288(v93, &qword_27F4DE860);
}

uint64_t sub_2524907F8@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v145 = sub_2526912C0();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2526917F0();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_252691610();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2526910F0();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE960);
  MEMORY[0x28223BE20](v113);
  v112 = v107 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE968);
  MEMORY[0x28223BE20](v111);
  v109 = v107 - v7;
  v8 = type metadata accessor for ColorControl(0);
  v110 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = v9;
  v10 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s18ColorControlCircleVMa();
  MEMORY[0x28223BE20](v11);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE820);
  MEMORY[0x28223BE20](v14);
  v16 = v107 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE970);
  MEMORY[0x28223BE20](v17 - 8);
  v149 = v107 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE978);
  MEMORY[0x28223BE20](v114);
  v117 = v107 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE980);
  MEMORY[0x28223BE20](v116);
  v115 = v107 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE778);
  MEMORY[0x28223BE20](v120);
  v119 = v107 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE768);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = v107 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE748);
  MEMORY[0x28223BE20](v150);
  v124 = v107 - v24;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE740);
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = v107 - v25;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE738);
  v129 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = v107 - v26;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE988);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE730);
  MEMORY[0x28223BE20](v28 - 8);
  v131 = v107 - v29;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE720);
  MEMORY[0x28223BE20](v135);
  v136 = v107 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v107 - v35;
  sub_252492214(v107 - v35);
  v151 = v8;
  v37 = *(v1 + *(v8 + 36)) == 1;
  v147 = v36;
  v148 = v10;
  if (!v37)
  {
    v40 = v1;
LABEL_6:
    v107[0] = 0;
    goto LABEL_9;
  }

  v40 = v1;
  if (sub_252492558())
  {
    goto LABEL_6;
  }

  sub_25237153C(v36, v33, &qword_27F4DB2A8);
  v38 = sub_25268ED20();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v33, 1, v38) == 1)
  {
    sub_252372288(v33, &qword_27F4DB2A8);
    v107[0] = 0;
  }

  else
  {
    v107[0] = LightbulbColor.approximateID.getter();
    (*(v39 + 8))(v33, v38);
  }

  v10 = v148;
  v36 = v147;
LABEL_9:
  sub_25237153C(v36, v13, &qword_27F4DB2A8);
  v41 = v40 + *(v151 + 32);
  v159 = *(v41 + 2);
  v42 = v159;
  v158 = *v41;
  v43 = &v13[*(v11 + 20)];
  *v43 = v158;
  *(v43 + 2) = v42;
  v13[*(v11 + 24)] = 2;
  sub_252394224(&v158, v160);
  sub_252692920();
  sub_2526909C0();
  sub_252499A88(v13, v16, _s18ColorControlCircleVMa);
  v44 = &v16[*(v14 + 36)];
  v45 = v160[1];
  *v44 = v160[0];
  *(v44 + 1) = v45;
  *(v44 + 2) = v160[2];
  sub_252499E14(v40, v10, type metadata accessor for ColorControl);
  v46 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v47 = v46 + v108;
  v108 = *(v110 + 80);
  v107[1] = v47;
  v48 = swift_allocObject();
  v110 = v46;
  sub_252499A88(v10, v48 + v46, type metadata accessor for ColorControl);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_25249A778;
  *(v49 + 24) = v48;
  KeyPath = swift_getKeyPath();
  v51 = v109;
  sub_25237153C(v16, v109, &qword_27F4DE820);
  v52 = v51 + *(v111 + 36);
  *v52 = 1;
  *(v52 + 8) = sub_25249A7D8;
  *(v52 + 16) = v49;
  *(v52 + 24) = KeyPath;
  *(v52 + 32) = 0;
  sub_25237153C(v51, v112, &qword_27F4DE968);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE990);
  sub_25249A7E0();
  sub_25249A8C0();
  v53 = v40;
  sub_252691470();
  sub_252372288(v51, &qword_27F4DE968);
  sub_252372288(v16, &qword_27F4DE820);
  v54 = *v40;
  v55 = *(v53 + 8);
  if (v55 == 1)
  {
    v56 = v54;
  }

  else
  {

    sub_252692F00();
    v57 = sub_2526919C0();
    sub_252690570();

    v58 = v121;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v54, 0);
    (*(v122 + 8))(v58, v123);
    v56 = v152;
  }

  v59 = v117;
  if (v56)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = 0.5;
  }

  sub_2523714D4(v149, v117, &qword_27F4DE970);
  *(v59 + *(v114 + 36)) = v60;
  v61 = v148;
  if (!v55)
  {

    sub_252692F00();
    v62 = sub_2526919C0();
    sub_252690570();

    v63 = v121;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v54, 0);
    (*(v122 + 8))(v63, v123);
    LOBYTE(v54) = v152;
  }

  if (v54)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.5;
  }

  v65 = v115;
  sub_2523714D4(v59, v115, &qword_27F4DE978);
  *(v65 + *(v116 + 36)) = v64;
  v66 = v119;
  sub_2523714D4(v65, v119, &qword_27F4DE980);
  *(v66 + *(v120 + 52)) = v107[0];
  sub_252400FC8(&qword_27F4DE770, &qword_27F4DE778);
  v67 = v118;
  sub_252692070();
  sub_252372288(v66, &qword_27F4DE778);
  LOBYTE(v65) = sub_252691A10();
  sub_252690760();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v124;
  sub_2523714D4(v67, v124, &qword_27F4DE768);
  v77 = v76 + *(v150 + 36);
  *v77 = v65;
  *(v77 + 8) = v69;
  *(v77 + 16) = v71;
  *(v77 + 24) = v73;
  *(v77 + 32) = v75;
  *(v77 + 40) = 0;
  v78 = v53 + *(v151 + 48);
  v79 = *v78;
  v80 = *(v78 + 8);
  v156 = v79;
  v157 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_252692500();
  LODWORD(v151) = v154;
  sub_252499E14(v53, v61, type metadata accessor for ColorControl);
  v81 = swift_allocObject();
  sub_252499A88(v61, v81 + v110, type metadata accessor for ColorControl);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE750);
  v83 = sub_25249827C();
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE780);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE788);
  v86 = sub_252400FC8(&qword_27F4DE790, &qword_27F4DE788);
  v87 = sub_2524983F0();
  v152 = v85;
  v153 = &type metadata for ColorControl.SheetGroupBoxStyle;
  v154 = v86;
  v155 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v152 = v84;
  v153 = OpaqueTypeConformance2;
  v106 = swift_getOpaqueTypeConformance2();
  v89 = v125;
  v90 = v150;
  sub_252692150();

  sub_252372288(v76, &qword_27F4DE748);
  v91 = v137;
  sub_252691600();
  v152 = v90;
  v153 = v82;
  v154 = v83;
  v155 = v106;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = v127;
  v94 = v128;
  sub_2526920D0();
  (*(v138 + 8))(v91, v139);
  (*(v126 + 8))(v89, v94);
  v95 = v140;
  sub_2526917C0();
  v152 = v94;
  v153 = v92;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v130;
  v98 = v132;
  sub_252692020();
  (*(v141 + 8))(v95, v142);
  (*(v129 + 8))(v93, v98);
  v99 = v143;
  sub_2526912A0();
  v152 = v98;
  v153 = v96;
  swift_getOpaqueTypeConformance2();
  v100 = v131;
  v101 = v134;
  sub_252691EB0();
  (*(v144 + 8))(v99, v145);
  (*(v133 + 8))(v97, v101);
  v102 = v136;
  v103 = &v136[*(v135 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
  sub_252690D90();
  *v103 = 0;
  sub_2523714D4(v100, v102, &qword_27F4DE730);
  v152 = sub_252692C40();
  v153 = v104;
  sub_252497F58();
  sub_252404480();
  sub_252691FB0();

  sub_252372288(v102, &qword_27F4DE720);
  return sub_252372288(v147, &qword_27F4DB2A8);
}

uint64_t sub_252491D0C()
{
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  type metadata accessor for ColorControl(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  MEMORY[0x2530A4210](v7);
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) || (*(v1 + 48))(v6, 1, v0))
  {
    sub_252372288(v6, &qword_27F4DB2A0);
    v9 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_252372288(v6, &qword_27F4DB2A0);
    v9 = LightbulbColor.approximateID.getter();
    (*(v1 + 8))(v3, v0);
  }

  v11[1] = v9;
  sub_252692A40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7F8);
  sub_25249875C();
  sub_252690CD0();
}

double sub_252491F74()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 96);
  v5 = *(v0 + 80);
  v23[2] = *(v0 + 64);
  v23[3] = v5;
  v6 = *(v0 + 48);
  v23[0] = *(v0 + 32);
  v23[1] = v6;
  if ((v24 & 0x100) != 0)
  {
    v7 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = v7;
    LOBYTE(v22) = *(v0 + 96);
    v8 = *(v0 + 48);
    v18 = *(v0 + 32);
    v19 = v8;
  }

  else
  {

    sub_252692F00();
    v9 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v23, &qword_27F4DC120);
    (*(v2 + 8))(v4, v1);
  }

  if (v18 == 2)
  {
    v22 = *(v0 + 96);
    v10 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = v10;
    v11 = *(v0 + 48);
    v18 = *(v0 + 32);
    v19 = v11;
    if ((v22 & 0x100) != 0)
    {
      v12 = *(v0 + 80);
      v16[2] = *(v0 + 64);
      v16[3] = v12;
      v17 = *(v0 + 96);
      v13 = *(v0 + 32);
      v16[1] = *(v0 + 48);
      v16[0] = v13;
    }

    else
    {

      sub_252692F00();
      v14 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v18, &qword_27F4DC120);
      (*(v2 + 8))(v4, v1);
    }
  }

  return 0.0;
}

uint64_t sub_252492214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ColorControl(0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  MEMORY[0x2530A4210](v14);
  v15 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15))
  {
    sub_252372288(v12, &qword_27F4DB2A0);
    result = (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    sub_25237153C(v12, a1, &qword_27F4DB2A8);
    result = sub_252372288(v12, &qword_27F4DB2A0);
  }

  if (*(v1 + *(v13 + 36)) == 1)
  {
    result = (*(v4 + 48))(a1, 1, v3);
    if (!result)
    {
      (*(v4 + 16))(v9, a1, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
      v17 = swift_allocBox();
      v18 = *(v4 + 56);
      v18(v19, 1, 1, v3);
      *v6 = v17;
      (*(v4 + 104))(v6, *MEMORY[0x277D15B30], v3);
      LOBYTE(v17) = sub_25248B14C(v6);
      v20 = *(v4 + 8);
      v20(v6, v3);
      result = (v20)(v9, v3);
      if (v17)
      {
        sub_252372288(a1, &qword_27F4DB2A8);
        return (v18)(a1, 1, 1, v3);
      }
    }
  }

  return result;
}

uint64_t sub_252492558()
{
  v67 = sub_252690550();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v61 - v3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE248);
  MEMORY[0x28223BE20](v77);
  v6 = &v61 - v5;
  v7 = sub_25268ED20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  sub_252492214(&v61 - v20);
  v22 = (v0 + *(type metadata accessor for ColorControl(0) + 32));
  v83 = *v22;
  v84 = *(v22 + 2);
  v81 = *v22;
  v82 = *(v22 + 2);
  sub_252394224(&v83, &v85);
  v23 = sub_2524991C8(&v81);
  v85 = v81;
  v86 = v82;
  sub_252394280(&v85);
  sub_25237153C(v21, v18, &qword_27F4DB2A8);
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    sub_252372288(v21, &qword_27F4DB2A8);

    v24 = 0;
    v21 = v18;
LABEL_28:
    sub_252372288(v21, &qword_27F4DB2A8);
    return v24;
  }

  result = (*(v8 + 32))(v15, v18, v7);
  v75 = *(v23 + 16);
  if (!v75)
  {

    v24 = 0;
    (*(v8 + 8))(v15, v7);
    goto LABEL_28;
  }

  v80 = v12;
  v62 = v21;
  v64 = v4;
  v26 = 0;
  v72 = v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v78 = v8 + 16;
  v71 = v8 + 88;
  v79 = *MEMORY[0x277D15B30];
  v70 = *MEMORY[0x277D15B28];
  v76 = (v8 + 8);
  v73 = v8;
  v68 = (v8 + 96);
  ++v63;
  v69 = v15;
  v74 = v23;
  while (v26 < *(v23 + 16))
  {
    v31 = v73;
    v32 = *(v73 + 16);
    v33 = v80;
    v32(v80, v72 + *(v73 + 72) * v26, v7);
    v34 = *(v77 + 48);
    v32(v6, v33, v7);
    v32(&v6[v34], v15, v7);
    v35 = *(v31 + 88);
    v36 = v35(v6, v7);
    v37 = v15;
    v38 = v79;
    if (v36 != v79)
    {
      v39 = v35(&v6[v34], v7);
      if (v39 == v70)
      {
        v40 = v65;
        v41 = v70;
        v32(v65, &v6[v34], v7);
        v42 = *v68;
        (*v68)(v40, v7);
        v43 = *v40;
        if (v35(v6, v7) == v41)
        {
          v30 = *v76;
          (*v76)(v80, v7);
          v42(v6, v7);
          v44 = *v6;
          result = (v30)(&v6[v34], v7);
          v45 = v44 == v43;
          v15 = v69;
          v23 = v74;
          if (v45)
          {
            goto LABEL_22;
          }

          goto LABEL_7;
        }

LABEL_19:
        v46 = v64;
        sub_25248B53C(v64);
        v47 = v66;
        v15 = v69;
        sub_25248B53C(v66);
        sub_252690520();
        v49 = v48;
        sub_252690520();
        if (vabdd_f64(v49, v50) < 0.02)
        {
          sub_252690510();
          v52 = v51;
          sub_252690510();
          if (vabdd_f64(v52, v53) < 0.02)
          {
            sub_252690500();
            v55 = v54;
            sub_252690500();
            v57 = vabdd_f64(v55, v56);
            v58 = *v63;
            v59 = v47;
            v60 = v67;
            (*v63)(v59, v67);
            v58(v46, v60);
            v30 = *v76;
            (*v76)(v80, v7);
            result = sub_252372288(v6, &qword_27F4DE248);
            v23 = v74;
            if (v57 < 0.02)
            {
LABEL_22:

              v24 = 1;
              goto LABEL_25;
            }

            goto LABEL_7;
          }
        }

        v27 = *v63;
        v28 = v47;
        v29 = v67;
        (*v63)(v28, v67);
        v27(v46, v29);
        v30 = *v76;
        (*v76)(v80, v7);
        result = sub_252372288(v6, &qword_27F4DE248);
      }

      else
      {
        if (v39 != v79)
        {
          goto LABEL_19;
        }

        v30 = *v76;
        (*v76)(v80, v7);
        v30(&v6[v34], v7);
        result = (v30)(v6, v7);
        v15 = v69;
      }

      v23 = v74;
      goto LABEL_7;
    }

    v30 = *v76;
    (*v76)(v33, v7);
    v30(v6, v7);
    if (v35(&v6[v34], v7) == v38)
    {

      v30(&v6[v34], v7);
      v24 = 1;
      v21 = v62;
      v15 = v37;
      goto LABEL_27;
    }

    result = (v30)(&v6[v34], v7);
    v23 = v74;
    v15 = v37;
LABEL_7:
    if (v75 == ++v26)
    {

      v24 = 0;
LABEL_25:
      v21 = v62;
LABEL_27:
      v30(v15, v7);
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252492E14()
{
  type metadata accessor for ColorControl(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  return sub_2526924F0();
}

uint64_t sub_252492E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE788);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE780);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-v8];
  v14 = a1;
  type metadata accessor for ColorPicker();
  sub_252499A40(&qword_27F4DE9B0, type metadata accessor for ColorPicker);
  sub_252692860();
  v10 = sub_252400FC8(&qword_27F4DE790, &qword_27F4DE788);
  v11 = sub_2524983F0();
  sub_252691EC0();
  (*(v3 + 8))(v5, v2);
  v15 = v2;
  v16 = &type metadata for ColorControl.SheetGroupBoxStyle;
  v17 = v10;
  v18 = v11;
  swift_getOpaqueTypeConformance2();
  sub_252691FF0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_252493108@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorControl(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v11 = &v37[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37[-v13 - 8];
  v15 = v2 + *(v5 + 40);
  v16 = *(v15 + 16);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  MEMORY[0x2530A4210](v17);
  v40 = *v15;
  v41 = *(v15 + 16);
  v38 = v40;
  v39 = v41;
  _s16ColorPickerStateCMa();
  swift_allocObject();
  sub_252394224(&v40, v37);
  v18 = sub_2524872F4(v16, v14, &v38);
  sub_252499E14(v2, v11, type metadata accessor for ColorControl);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v36 = swift_allocObject();
  sub_252499A88(v11, v36 + v19, type metadata accessor for ColorControl);
  sub_252499E14(v2, v8, type metadata accessor for ColorControl);
  v20 = swift_allocObject();
  sub_252499A88(v8, v20 + v19, type metadata accessor for ColorControl);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for ColorPicker();
  v22 = a1 + v21[5];
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 0;
  *v22 = KeyPath;
  v22[65] = 0;
  v24 = a1 + v21[10];
  *v24 = sub_2526907B0() & 1;
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  v27 = a1 + v21[6];
  *v27 = sub_25249AB28;
  *(v27 + 1) = v18;
  v27[16] = 0;

  v29 = sub_25247C778(v28);
  if (*(v29 + 2))
  {
    v30 = v29[32];
  }

  else
  {
    v30 = 0;
  }

  v32 = (a1 + v21[8]);
  v33 = (a1 + v21[9]);
  v34 = a1 + v21[7];
  *v34 = v30;
  *(v34 + 1) = 0;
  *v32 = sub_25249AAB8;
  v32[1] = v20;
  v35 = v36;
  *v33 = sub_25249AA48;
  v33[1] = v35;
  return result;
}

BOOL sub_252493474(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  v17 = swift_allocBox();
  v18 = *(v9 + 56);
  v18(v19, 1, 1, v8);
  *v16 = v17;
  (*(v9 + 104))(v16, *MEMORY[0x277D15B30], v8);
  v20 = *(v9 + 16);
  v34 = a1;
  v20(a1, v16, v8);
  type metadata accessor for ColorControl(0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  MEMORY[0x2530A4210](v21);
  v22 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v22 - 8) + 48))(v4, 1, v22))
  {
    (*(v9 + 8))(v16, v8);
    sub_252372288(v4, &qword_27F4DB2A0);
    v18(v7, 1, 1, v8);
LABEL_5:
    sub_252372288(v7, &qword_27F4DB2A8);
    return 0;
  }

  v23 = v13;
  v24 = v34;
  sub_25237153C(v4, v7, &qword_27F4DB2A8);
  sub_252372288(v4, &qword_27F4DB2A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v9 + 8))(v16, v8);
    goto LABEL_5;
  }

  v27 = *(v9 + 32);
  v27(v23, v7, v8);
  v25 = sub_25248B14C(v16);
  v28 = *(v9 + 8);
  v28(v24, v8);
  if (v25)
  {
    v29 = v16;
  }

  else
  {
    v29 = v23;
  }

  if (v25)
  {
    v30 = v23;
  }

  else
  {
    v30 = v16;
  }

  v28(v29, v8);
  v31 = v33;
  v27(v33, v30, v8);
  v27(v24, v31, v8);
  return v25;
}

char *sub_252493894()
{
  v1 = type metadata accessor for ColorControl.GridElement(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - v6);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v36 = v8 + 16;
  v9 = (v0 + *(type metadata accessor for ColorControl(0) + 32));
  if (*v9 == 1)
  {
    v10 = sub_25268ED20();
    (*(*(v10 - 8) + 56))(v7, 1, 2, v10);
    sub_252495D4C(v7, v8);
    sub_25249A504(v7, type metadata accessor for ColorControl.GridElement);
  }

  v40 = *v9;
  v41 = *(v9 + 2);
  v38 = *v9;
  v39 = *(v9 + 2);
  sub_252394224(&v40, &v42);
  v11 = sub_2524991C8(&v38);
  v42 = v38;
  v43 = v39;
  sub_252394280(&v42);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_25268ED20();
    v14 = *(v13 - 8);
    v37 = *(v14 + 16);
    v15 = *(v14 + 80);
    v35 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v17 = *(v14 + 72);
    v18 = v8;
    v19 = (v14 + 56);
    do
    {
      (v37)(v7, v16, v13);
      (*v19)(v7, 0, 2, v13);
      sub_252495D4C(v7, v18);
      sub_25249A504(v7, type metadata accessor for ColorControl.GridElement);
      v16 += v17;
      --v12;
    }

    while (v12);

    v8 = v18;
  }

  else
  {
  }

  v20 = sub_25268ED20();
  (*(*(v20 - 8) + 56))(v7, 2, 2, v20);
  v35 = v8;
  sub_252495D4C(v7, v8);
  sub_25249A504(v7, type metadata accessor for ColorControl.GridElement);
  swift_beginAccess();
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v37 = v22;
    v23 = *(*v36 + 16);
    if (v23)
    {
      v24 = *v36 + 32;
      v25 = MEMORY[0x277D84F90];
      do
      {
        if (v21 < *(*v24 + 16))
        {
          v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v27 = *(v2 + 72);
          sub_252499E14(*v24 + v26 + v27 * v21, v4, type metadata accessor for ColorControl.GridElement);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_25236971C(0, v25[2] + 1, 1, v25);
          }

          v29 = v25[2];
          v28 = v25[3];
          if (v29 >= v28 >> 1)
          {
            v25 = sub_25236971C(v28 > 1, v29 + 1, 1, v25);
          }

          v25[2] = v29 + 1;
          sub_252499A88(v4, v25 + v26 + v29 * v27, type metadata accessor for ColorControl.GridElement);
        }

        v24 += 8;
        --v23;
      }

      while (v23);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v22 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_25236989C(0, *(v22 + 2) + 1, 1, v22);
    }

    v31 = *(v22 + 2);
    v30 = *(v22 + 3);
    if (v31 >= v30 >> 1)
    {
      v22 = sub_25236989C((v30 > 1), v31 + 1, 1, v22);
    }

    *(v22 + 2) = v31 + 1;
    v32 = &v22[16 * v31];
    *(v32 + 4) = v21;
    *(v32 + 5) = v25;
    ++v21;
  }

  while (v21 != 4);

  return v22;
}

uint64_t sub_252493D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for ColorControl(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7B0);
  v19[1] = v14;
  sub_252499E14(a2, v13, type metadata accessor for ColorControl);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_252499A88(v13, v17 + v15, type metadata accessor for ColorControl);
  *(v17 + v16) = a4;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1A8);
  type metadata accessor for ColorControl.GridElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE918);
  sub_252400FC8(&qword_27F4DE920, &qword_27F4DB1A8);
  sub_25249A1D8();
  sub_252499A40(&qword_27F4DE948, type metadata accessor for ColorControl.GridElement);
  return sub_2526927B0();
}

uint64_t sub_252493FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v206 = a2;
  v204 = a3;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE710);
  MEMORY[0x28223BE20](v205);
  v186 = &v150 - v4;
  v174 = _s17FavoriteColorCellVMa(0);
  MEMORY[0x28223BE20](v174);
  v178 = (&v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9A8);
  MEMORY[0x28223BE20](v175);
  v179 = &v150 - v6;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8B8);
  MEMORY[0x28223BE20](v176);
  v8 = (&v150 - v7);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8A8);
  MEMORY[0x28223BE20](v177);
  v181 = &v150 - v9;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE898);
  MEMORY[0x28223BE20](v180);
  v182 = &v150 - v10;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE880);
  MEMORY[0x28223BE20](v188);
  v183 = &v150 - v11;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE870);
  v185 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v184 = (&v150 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v13 - 8);
  v164 = &v150 - v14;
  v162 = _s17FavoriteColorCellV5ValueOMa(0);
  MEMORY[0x28223BE20](v162);
  v190 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE950);
  MEMORY[0x28223BE20](v201);
  v203 = &v150 - v16;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE958);
  MEMORY[0x28223BE20](v187);
  v196 = &v150 - v17;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE938);
  MEMORY[0x28223BE20](v202);
  v197 = &v150 - v18;
  v153 = sub_2526912C0();
  v173 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2526917F0();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ColorControl(0);
  v193 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v194 = v22;
  v195 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = _s18ColorControlCircleVMa();
  MEMORY[0x28223BE20](v154);
  v24 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE820);
  MEMORY[0x28223BE20](v189);
  v160 = &v150 - v25;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE828);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v150 - v26;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE830);
  MEMORY[0x28223BE20](v155);
  v157 = &v150 - v27;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE838);
  MEMORY[0x28223BE20](v192);
  v161 = &v150 - v28;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE840);
  v170 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v191 = &v150 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE848);
  MEMORY[0x28223BE20](v30 - 8);
  v167 = &v150 - v31;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE850);
  MEMORY[0x28223BE20](v169);
  v168 = &v150 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE858);
  MEMORY[0x28223BE20](v33);
  v171 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v172 = &v150 - v36;
  v37 = sub_25268ED20();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v199 = &v150 - v42;
  MEMORY[0x28223BE20](v43);
  v200 = (&v150 - v44);
  v45 = type metadata accessor for ColorControl.GridElement(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252499E14(a1, v47, type metadata accessor for ColorControl.GridElement);
  v208 = v38;
  v48 = *(v38 + 48);
  v207 = v37;
  v49 = v48(v47, 2, v37);
  if (v49)
  {
    if (v49 == 1)
    {
      v186 = v33;
      v50 = v200;
      v51 = v206;
      LODWORD(v190) = sub_252493474(v200);
      v52 = v190 & 1;
      v53 = v208;
      v54 = *(v208 + 16);
      v55 = v207;
      v54(v24, v50, v207);
      v185 = v39;
      v56 = v54;
      v184 = v54;
      (*(v53 + 56))(v24, 0, 1, v55);
      v57 = v154;
      v58 = &v24[*(v154 + 20)];
      *v58 = 0;
      *(v58 + 1) = 0;
      *(v58 + 2) = 0;
      v24[*(v57 + 24)] = v52;
      sub_252692920();
      sub_2526909C0();
      v59 = v160;
      sub_252499A88(v24, v160, _s18ColorControlCircleVMa);
      v60 = (v59 + *(v189 + 36));
      v61 = v215;
      *v60 = v214;
      v60[1] = v61;
      v60[2] = v216;
      v62 = v195;
      sub_252499E14(v51, v195, type metadata accessor for ColorControl);
      v63 = v199;
      v56(v199, v50, v55);
      v64 = (*(v193 + 80) + 16) & ~*(v193 + 80);
      v65 = (v194 + *(v53 + 80) + v64) & ~*(v53 + 80);
      v66 = swift_allocObject();
      sub_252499A88(v62, v66 + v64, type metadata accessor for ColorControl);
      (*(v53 + 32))(v66 + v65, v63, v55);
      sub_252499AF0();
      v67 = v156;
      sub_252691E60();

      sub_252372288(v59, &qword_27F4DE820);
      v68 = v157;
      (*(v158 + 32))(v157, v67, v159);
      v184(v68 + *(v155 + 52), v200, v55);
      LOBYTE(v66) = sub_252691A10();
      sub_252690760();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v77 = v161;
      sub_2523714D4(v68, v161, &qword_27F4DE830);
      v78 = v77 + *(v192 + 36);
      *v78 = v66;
      *(v78 + 8) = v70;
      *(v78 + 16) = v72;
      *(v78 + 24) = v74;
      *(v78 + 32) = v76;
      *(v78 + 40) = 0;
      v79 = v163;
      sub_2526917C0();
      v80 = sub_252499BAC();
      sub_252692020();
      (*(v165 + 8))(v79, v166);
      sub_252372288(v77, &qword_27F4DE838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308);
      v81 = v173;
      if (v190)
      {
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_252694EA0;
        sub_2526912A0();
        sub_252691270();
      }

      else
      {
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_252694E90;
        sub_2526912A0();
      }

      *&v211 = v82;
      sub_252499A40(&qword_27F4DD310, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318);
      sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318);
      v135 = v152;
      v136 = v153;
      sub_252693190();
      v137 = v203;
      v138 = v188;
      v139 = v151;
      *&v211 = v192;
      *(&v211 + 1) = v80;
      swift_getOpaqueTypeConformance2();
      v140 = v167;
      v141 = v191;
      sub_252691EB0();
      (*(v81 + 8))(v135, v136);
      (*(v170 + 8))(v141, v139);
      v142 = v168;
      v143 = &v168[*(v169 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
      sub_252690D90();
      *v143 = 0;
      sub_2523714D4(v140, v142, &qword_27F4DE848);
      sub_252499C64();
      v144 = v171;
      sub_252692070();
      sub_252372288(v142, &qword_27F4DE850);
      *&v211 = sub_252692C40();
      *(&v211 + 1) = v145;
      sub_252404480();
      v146 = v172;
      sub_252690BD0();

      sub_252372288(v144, &qword_27F4DE858);
      sub_25237153C(v146, v196, &qword_27F4DE858);
      swift_storeEnumTagMultiPayload();
      sub_25249A38C(&qword_27F4DE940, &qword_27F4DE858, &unk_25269F8D0, sub_252499C64);
      v147 = sub_252499844();
      *&v211 = v138;
      *(&v211 + 1) = v147;
      swift_getOpaqueTypeConformance2();
      v148 = v197;
      sub_252691470();
      sub_25237153C(v148, v137, &qword_27F4DE938);
      swift_storeEnumTagMultiPayload();
      sub_25249A290();
      sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &unk_25269F7E8, sub_252497F58);
      sub_252691470();
      sub_252372288(v148, &qword_27F4DE938);
      sub_252372288(v146, &qword_27F4DE858);
      return (*(v208 + 8))(v200, v207);
    }

    else
    {
      v134 = v186;
      sub_2524907F8(v186);
      sub_25237153C(v134, v203, &qword_27F4DE710);
      swift_storeEnumTagMultiPayload();
      sub_25249A290();
      sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &unk_25269F7E8, sub_252497F58);
      sub_252691470();
      return sub_252372288(v134, &qword_27F4DE710);
    }
  }

  else
  {
    v200 = v8;
    v186 = v33;
    v83 = v208;
    v84 = *(v208 + 32);
    v85 = v207;
    v192 = v208 + 32;
    v191 = v84;
    (v84)(v40, v47, v207);
    v87 = v83 + 16;
    v86 = *(v83 + 16);
    v88 = v190;
    v89 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86(v190, v40, v85);
    v90 = v88;
    swift_storeEnumTagMultiPayload();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
    v92 = v164;
    MEMORY[0x2530A4210](v91);
    v93 = type metadata accessor for AccessoryControl.ColorState(0);
    v94 = (*(*(v93 - 8) + 48))(v92, 1, v93);
    v189 = v86;
    v173 = v87;
    if (v94 || v48(v92, 1, v85))
    {
      sub_252372288(v92, &qword_27F4DB2A0);
      v95 = 0;
    }

    else
    {
      v149 = v199;
      v86(v199, v92, v85);
      sub_252372288(v92, &qword_27F4DB2A0);
      v95 = sub_25248B14C(v89);
      (*(v208 + 8))(v149, v85);
    }

    v96 = v188;
    v97 = v174;
    v98 = v178;
    sub_252499E14(v90, v178 + *(v174 + 20), _s17FavoriteColorCellV5ValueOMa);
    *v98 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
    swift_storeEnumTagMultiPayload();
    *(v98 + *(v97 + 24)) = v95;
    sub_252692920();
    sub_2526909C0();
    v99 = v179;
    sub_252499A88(v98, v179, _s17FavoriteColorCellVMa);
    v100 = (v99 + *(v175 + 36));
    v101 = v212;
    *v100 = v211;
    v100[1] = v101;
    v100[2] = v213;
    v102 = LightbulbColor.approximateID.getter();
    v103 = v200;
    sub_2523714D4(v99, v200, &qword_27F4DD9A8);
    *(v103 + *(v176 + 52)) = v102;
    LOBYTE(v102) = sub_252691A10();
    sub_252690760();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v112 = v103;
    v113 = v181;
    sub_2523714D4(v112, v181, &qword_27F4DE8B8);
    v114 = v113 + *(v177 + 36);
    *v114 = v102;
    *(v114 + 8) = v105;
    *(v114 + 16) = v107;
    *(v114 + 24) = v109;
    *(v114 + 32) = v111;
    *(v114 + 40) = 0;
    sub_252692920();
    sub_2526909C0();
    v115 = v113;
    v116 = v182;
    sub_2523714D4(v115, v182, &qword_27F4DE8A8);
    v117 = (v116 + *(v180 + 36));
    v118 = v215;
    *v117 = v214;
    v117[1] = v118;
    v117[2] = v216;
    v119 = v183;
    v120 = &v183[*(v96 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
    sub_252690D80();
    *v120 = 0;
    sub_2523714D4(v116, v119, &qword_27F4DE898);
    v150 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v121 = v195;
    sub_252499E14(v206, v195, type metadata accessor for ColorControl);
    v122 = v199;
    v123 = v207;
    (v189)(v199, v89, v207);
    v124 = (*(v193 + 80) + 16) & ~*(v193 + 80);
    v125 = v208;
    v126 = (v194 + *(v208 + 80) + v124) & ~*(v208 + 80);
    v127 = swift_allocObject();
    sub_252499A88(v121, v127 + v124, type metadata accessor for ColorControl);
    (v191)(v127 + v126, v122, v123);
    v128 = sub_252499844();
    v129 = v184;
    sub_252691E60();

    sub_252372288(v119, &qword_27F4DE880);
    v130 = v185;
    v131 = v198;
    (*(v185 + 16))(v196, v129, v198);
    swift_storeEnumTagMultiPayload();
    sub_25249A38C(&qword_27F4DE940, &qword_27F4DE858, &unk_25269F8D0, sub_252499C64);
    v209 = v96;
    v210 = v128;
    swift_getOpaqueTypeConformance2();
    v132 = v197;
    sub_252691470();
    sub_25237153C(v132, v203, &qword_27F4DE938);
    swift_storeEnumTagMultiPayload();
    sub_25249A290();
    sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &unk_25269F7E8, sub_252497F58);
    sub_252691470();
    sub_252372288(v132, &qword_27F4DE938);
    (*(v130 + 8))(v129, v131);
    sub_25249A504(v190, _s17FavoriteColorCellV5ValueOMa);
    return (*(v125 + 8))(v150, v123);
  }
}

uint64_t sub_252495C1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25248E288(v10);
  v5 = v4;
  v6 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_252372288(v5, &qword_27F4DB2A8);
    v7 = sub_25268ED20();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v5, a2, v7);
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  return (v3)(v10, 0);
}

uint64_t sub_252495D4C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ColorControl.GridElement(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v9 = *(a2 + 16);
  v10 = v9[2];
  if (v10)
  {
    v11 = v10 - 1;
    if (*(v9[v10 + 3] + 16) < 4uLL)
    {
      sub_252499E14(a1, v8, type metadata accessor for ColorControl.GridElement);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_25261EF60(v9);
        *(a2 + 16) = v9;
      }

      if (v10 > v9[2])
      {
        __break(1u);
      }

      else
      {
        v2 = v9 + 4;
        a1 = v9[v11 + 4];
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v9[v11 + 4] = a1;
        if (v13)
        {
LABEL_7:
          v15 = a1[2];
          v14 = a1[3];
          if (v15 >= v14 >> 1)
          {
            a1 = sub_25236971C(v14 > 1, v15 + 1, 1, a1);
            v2[v11] = a1;
          }

          a1[2] = v15 + 1;
          sub_252499A88(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for ColorControl.GridElement);
          goto LABEL_15;
        }
      }

      a1 = sub_25236971C(0, a1[2] + 1, 1, a1);
      v2[v11] = a1;
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB190);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252694E90;
  sub_252499E14(a1, v17 + v16, type metadata accessor for ColorControl.GridElement);
  swift_beginAccess();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((v18 & 1) == 0)
  {
    v9 = sub_252369744(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v20 = v9[2];
  v19 = v9[3];
  if (v20 >= v19 >> 1)
  {
    v9 = sub_252369744((v19 > 1), v20 + 1, 1, v9);
  }

  v9[2] = v20 + 1;
  v9[v20 + 4] = v17;
LABEL_15:
  *(a2 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_252496044()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_2523DC0CC(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_2524960A0(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x2530A4FE0](*v1);

  return sub_2523DC0CC(a1, v3);
}

uint64_t sub_2524960EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_2523DC0CC(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_252496144(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_2523E82EC(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252496168()
{
  v1 = v0;
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorControl.GridElement(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_252499E14(v1, v8, type metadata accessor for ColorControl.GridElement);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x2530A4FE0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2530A4FE0](1);
    sub_252499A40(&qword_27F4DB798, MEMORY[0x277D15B48]);
    sub_252692B30();
    (*(v3 + 8))(v5, v2);
  }

  return sub_2526934C0();
}

uint64_t sub_252496364()
{
  v1 = sub_25268ED20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252499E14(v0, v7, type metadata accessor for ColorControl.GridElement);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    return MEMORY[0x2530A4FE0](v9);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x2530A4FE0](1);
    sub_252499A40(&qword_27F4DB798, MEMORY[0x277D15B48]);
    sub_252692B30();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_25249653C()
{
  v1 = v0;
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_252499E14(v1, v8, type metadata accessor for ColorControl.GridElement);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x2530A4FE0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2530A4FE0](1);
    sub_252499A40(&qword_27F4DB798, MEMORY[0x277D15B48]);
    sub_252692B30();
    (*(v3 + 8))(v5, v2);
  }

  return sub_2526934C0();
}

uint64_t sub_252496774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v77 = a3;
  v4 = type metadata accessor for ColorControl(0);
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v75 = v5;
  v76 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = _s17FavoriteColorCellVMa(0);
  MEMORY[0x28223BE20](v62);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9A8);
  MEMORY[0x28223BE20](v65);
  v67 = &v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8B8);
  MEMORY[0x28223BE20](v64);
  v66 = &v60 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8A8);
  MEMORY[0x28223BE20](v63);
  v69 = &v60 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE898);
  MEMORY[0x28223BE20](v68);
  v71 = &v60 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE880);
  MEMORY[0x28223BE20](v73);
  v72 = &v60 - v12;
  v13 = sub_25268ED20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v70 = v15;
  v79 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v60 - v17;
  v19 = _s17FavoriteColorCellV5ValueOMa(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v14 + 16);
  v78(v22, a1, v13, v20);
  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  MEMORY[0x2530A4210](v23);
  v24 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v24 - 8) + 48))(v18, 1, v24) || (*(v14 + 48))(v18, 1, v13))
  {
    sub_252372288(v18, &qword_27F4DB2A0);
    v25 = 0;
    v26 = a1;
  }

  else
  {
    v59 = v79;
    (v78)(v79, v18, v13);
    sub_252372288(v18, &qword_27F4DB2A0);
    v26 = a1;
    v25 = sub_25248B14C(a1);
    (*(v14 + 8))(v59, v13);
  }

  v27 = v62;
  v28 = v7 + *(v62 + 20);
  v61 = v22;
  sub_252499E14(v22, v28, _s17FavoriteColorCellV5ValueOMa);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v27 + 24)) = v25;
  sub_252692920();
  sub_2526909C0();
  v29 = v7;
  v30 = v67;
  sub_252499A88(v29, v67, _s17FavoriteColorCellVMa);
  v31 = (v30 + *(v65 + 36));
  v32 = v82;
  *v31 = v81;
  v31[1] = v32;
  v31[2] = v83;
  v33 = LightbulbColor.approximateID.getter();
  v34 = v66;
  sub_2523714D4(v30, v66, &qword_27F4DD9A8);
  *(v34 + *(v64 + 52)) = v33;
  LOBYTE(v33) = sub_252691A10();
  sub_252690760();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v34;
  v44 = v69;
  sub_2523714D4(v43, v69, &qword_27F4DE8B8);
  v45 = v44 + *(v63 + 36);
  *v45 = v33;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  sub_252692920();
  sub_2526909C0();
  v46 = v44;
  v47 = v71;
  sub_2523714D4(v46, v71, &qword_27F4DE8A8);
  v48 = (v47 + *(v68 + 36));
  v49 = v85;
  *v48 = v84;
  v48[1] = v49;
  v48[2] = v86;
  v50 = v72;
  v51 = &v72[*(v73 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830);
  sub_252690D80();
  *v51 = 0;
  sub_2523714D4(v47, v50, &qword_27F4DE898);
  v52 = v76;
  sub_252499E14(v80, v76, type metadata accessor for ColorControl);
  v53 = v79;
  (v78)(v79, v26, v13);
  v54 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v55 = v13;
  v56 = (v75 + *(v14 + 80) + v54) & ~*(v14 + 80);
  v57 = swift_allocObject();
  sub_252499A88(v52, v57 + v54, type metadata accessor for ColorControl);
  (*(v14 + 32))(v57 + v56, v53, v55);
  sub_252499844();
  sub_252691E60();

  sub_252372288(v50, &qword_27F4DE880);
  return sub_25249A504(v61, _s17FavoriteColorCellV5ValueOMa);
}

uint64_t sub_2524970AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_252370500(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_252371478(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v8, v16, v5);
      v25 = v12;
      v17 = v8;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_252370500(v18 > 1, v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v8 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_252372288(v4, &qword_27F4DB2A8);
    return 0;
  }

  return v12;
}

uint64_t sub_252497370()
{
  type metadata accessor for ColorControl(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  return sub_2526924F0();
}

uint64_t sub_2524973E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for AccessoryControl.ColorState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v13 = sub_2526905A0();
  __swift_project_value_buffer(v13, qword_27F4E4B18);
  sub_252499E14(a1, v12, type metadata accessor for AccessoryControl.ColorState);
  v14 = sub_252690580();
  v15 = sub_252692F10();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    sub_252499E14(v12, v9, type metadata accessor for AccessoryControl.ColorState);
    v19 = sub_252692C20();
    v21 = v20;
    sub_25249A504(v12, type metadata accessor for AccessoryControl.ColorState);
    v22 = sub_2525BDA90(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_252309000, v14, v15, "ColorControl updated colorState %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2530A5A40](v18, -1, -1);
    MEMORY[0x2530A5A40](v17, -1, -1);
  }

  else
  {

    sub_25249A504(v12, type metadata accessor for AccessoryControl.ColorState);
  }

  if (qword_27F4DAA80 != -1)
  {
    swift_once();
  }

  type metadata accessor for ColorControl(0);
  sub_2526926D0();
  sub_252535A84(v6, a1);
  return sub_252372288(v6, &qword_27F4DE658);
}

uint64_t sub_25249770C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178);
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25269F6B0;
  v5 = (v4 + v3);
  *v5 = sub_25268ED00();
  v6 = *MEMORY[0x277D15B28];
  v7 = *(v1 + 104);
  v7(v5, v6, v0);
  *&v5[v2] = sub_25268ED00();
  v7(&v5[v2], v6, v0);
  *&v5[2 * v2] = sub_25268ED00();
  v7(&v5[2 * v2], v6, v0);
  *&v5[3 * v2] = sub_25268ED00();
  v7(&v5[3 * v2], v6, v0);
  *&v5[4 * v2] = sub_25268ED00();
  v7(&v5[4 * v2], v6, v0);
  v2 *= 5;
  *&v5[v2] = sub_25268ED00();
  result = v7(&v5[v2], v6, v0);
  qword_27F4DE650 = v4;
  return result;
}

uint64_t sub_2524978DC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_252691820();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_252691800();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_252691810();
  sub_252691830();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA00) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_252497B6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526912F0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE9F0);
  sub_2524978DC((a1 + *(v2 + 44)));
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  v4 = sub_252692240();
  v5 = sub_252691A20();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE9F8);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

unint64_t sub_252497C24()
{
  result = qword_27F4DE6A8;
  if (!qword_27F4DE6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6A0);
    sub_252497CDC();
    sub_252400FC8(&qword_27F4DE6F8, &qword_27F4DE690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6A8);
  }

  return result;
}

unint64_t sub_252497CDC()
{
  result = qword_27F4DE6B0;
  if (!qword_27F4DE6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6B8);
    sub_252497D94();
    sub_252400FC8(&qword_27F4DE6E8, &qword_27F4DE6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6B0);
  }

  return result;
}

unint64_t sub_252497D94()
{
  result = qword_27F4DE6C0;
  if (!qword_27F4DE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6C8);
    sub_252400FC8(&qword_27F4DE6D0, &qword_27F4DE6D8);
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6C0);
  }

  return result;
}

unint64_t sub_252497E4C()
{
  result = qword_27F4DE6E0;
  if (!qword_27F4DE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6E0);
  }

  return result;
}

unint64_t sub_252497EA0()
{
  result = qword_27F4DE700;
  if (!qword_27F4DE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE680);
    sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &unk_25269F7E8, sub_252497F58);
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE700);
  }

  return result;
}

unint64_t sub_252497F58()
{
  result = qword_27F4DE718;
  if (!qword_27F4DE718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE720);
    sub_252498010();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE718);
  }

  return result;
}

unint64_t sub_252498010()
{
  result = qword_27F4DE728;
  if (!qword_27F4DE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE750);
    sub_25249827C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE788);
    sub_252400FC8(&qword_27F4DE790, &qword_27F4DE788);
    sub_2524983F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE728);
  }

  return result;
}

unint64_t sub_25249827C()
{
  result = qword_27F4DE758;
  if (!qword_27F4DE758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE748);
    sub_252498308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE758);
  }

  return result;
}

unint64_t sub_252498308()
{
  result = qword_27F4DE760;
  if (!qword_27F4DE760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE768);
    sub_252400FC8(&qword_27F4DE770, &qword_27F4DE778);
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE760);
  }

  return result;
}

unint64_t sub_2524983F0()
{
  result = qword_27F4DE798;
  if (!qword_27F4DE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE798);
  }

  return result;
}

uint64_t sub_252498444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorControl(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_252493D5C(a1, v2 + v6, a2, v8, v9);
}

unint64_t sub_2524984FC()
{
  result = qword_27F4DE7C8;
  if (!qword_27F4DE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE7C8);
  }

  return result;
}

uint64_t sub_252498550()
{
  type metadata accessor for ColorControl(0);

  return sub_25248EF04();
}

unint64_t sub_2524985D8()
{
  result = qword_27F4DE7D8;
  if (!qword_27F4DE7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE7D0);
    sub_252400FC8(&qword_27F4DE7E0, &qword_27F4DE7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE7D8);
  }

  return result;
}

uint64_t sub_252498690()
{
  sub_252690CE0();
  type metadata accessor for ColorControl(0);

  return sub_252491D0C();
}

unint64_t sub_25249875C()
{
  result = qword_27F4DE800;
  if (!qword_27F4DE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE7F8);
    sub_25248DFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE800);
  }

  return result;
}

uint64_t sub_2524987E0(void *a1)
{
  v2 = sub_25268D840();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v8 = v7;
  if (v7)
  {
    if (v7 < 1)
    {
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB180);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size_0(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 1;
      }

      v9[2] = v8;
      v9[3] = 2 * (v11 >> 5);
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v12 = v9[3];

  result = sub_252692EC0();
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = v12 >> 1;
  v15 = v9 + 4;
  if (v8)
  {
    v14 -= v8;
    sub_252499A40(&qword_27F4DE908, MEMORY[0x277CC9178]);
    do
    {
      result = sub_252693150();
      if (!v35)
      {
        goto LABEL_38;
      }

      sub_25235E20C(&v34, v15);
      v15 += 2;
    }

    while (--v8);
  }

  v31 = v3;
  sub_252499A40(&qword_27F4DE908, MEMORY[0x277CC9178]);
  sub_252693150();
  if (v33)
  {
    while (1)
    {
      result = sub_25235E20C(&v32, &v34);
      if (!v14)
      {
        v16 = v9[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB180);
        v19 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size_0(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 1;
        }

        v22 = v21 >> 5;
        v19[2] = v18;
        v19[3] = 2 * (v21 >> 5);
        v23 = (v19 + 4);
        v24 = v9[3] >> 1;
        if (v9[2])
        {
          v25 = v9 + 4;
          if (v19 != v9 || v23 >= v25 + 32 * v24)
          {
            memmove(v19 + 4, v25, 32 * v24);
          }

          v9[2] = 0;
        }

        v15 = (v23 + 32 * v24);
        v14 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v9 = v19;
      }

      v26 = __OFSUB__(v14--, 1);
      if (v26)
      {
        break;
      }

      sub_25235E20C(&v34, v15);
      v15 += 2;
      sub_252693150();
      if (!v33)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v31 + 8))(v6, v2);
  result = sub_252372288(&v32, &qword_27F4DE910);
  v27 = v9[3];
  if (v27 < 2)
  {
    return v9;
  }

  v28 = v27 >> 1;
  v26 = __OFSUB__(v28, v14);
  v29 = v28 - v14;
  if (!v26)
  {
    v9[2] = v29;
    return v9;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_252498B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268ED20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorControl.GridElement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB860);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_252499E14(a1, &v21 - v12, type metadata accessor for ColorControl.GridElement);
  sub_252499E14(a2, &v13[v15], type metadata accessor for ColorControl.GridElement);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_252499E14(v13, v10, type metadata accessor for ColorControl.GridElement);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_25268ED10();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_25249A504(v13, type metadata accessor for ColorControl.GridElement);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_252372288(v13, &qword_27F4DB860);
    v18 = 0;
    return v18 & 1;
  }

  sub_25249A504(v13, type metadata accessor for ColorControl.GridElement);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_252498E84()
{
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE900);
  v20 = sub_252690550();
  v4 = *(v20 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = 6;
  v15 = swift_allocObject();
  v8 = v15 + v6;
  sub_252690540();
  sub_252690540();
  sub_252690540();
  sub_252690540();
  sub_252690540();
  v18 = v5;
  sub_252690540();
  v21 = MEMORY[0x277D84F90];
  sub_252370500(0, 6, 0);
  v9 = v21;
  v17 = *(v4 + 16);
  v19 = v4 + 16;
  v16 = *MEMORY[0x277D15B40];
  v14 = v8;
  do
  {
    v17(v3, v8, v20);
    (*(v1 + 104))(v3, v16, v0);
    v21 = v9;
    v10 = v0;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_252370500(v11 > 1, v12 + 1, 1);
      v9 = v21;
    }

    *(v9 + 16) = v12 + 1;
    (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v3, v10);
    v8 += v18;
    --v7;
    v0 = v10;
  }

  while (v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

uint64_t sub_2524991C8(unsigned __int16 *a1)
{
  v42 = sub_25268F860();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_25268ED20();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 2);
  v46[0] = *(a1 + 3);
  v10 = *(a1 + 2);
  *(v46 + 5) = *(a1 + 1);
  v36 = v8;
  LOWORD(v44) = v8;
  BYTE2(v44) = v9;
  *(&v44 + 3) = *(a1 + 3);
  *(&v44 + 1) = *(a1 + 1);
  v45 = v10;
  v35 = v10;
  v11 = sub_252488DD8(v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v34 = v9;
    *&v44 = MEMORY[0x277D84F90];
    sub_252370500(0, v12, 0);
    v14 = v44;
    v16 = *(v2 + 16);
    v15 = v2 + 16;
    v17 = *(v15 + 64);
    v33 = v11;
    v18 = v11 + ((v17 + 32) & ~v17);
    v38 = *(v15 + 56);
    v39 = v16;
    v40 = v15;
    v19 = (v15 - 8);
    v37 = v5 + 32;
    do
    {
      v20 = v42;
      v39(v4, v18, v42);
      sub_25268F850();
      (*v19)(v4, v20);
      *&v44 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_252370500(v21 > 1, v22 + 1, 1);
        v14 = v44;
      }

      *(v14 + 16) = v22 + 1;
      (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v41);
      v18 += v38;
      --v12;
    }

    while (v12);

    LOBYTE(v9) = v34;
    v13 = MEMORY[0x277D84F90];
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v43 = v13;
  sub_25240BB8C(v14);

  v23 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v24 = sub_252692D70();

  v25 = [v23 initWithArray_];

  v26 = sub_2524987E0(v25);
  v27 = sub_2524970AC(v26);

  if (v27)
  {
    v43 = v27;
    v28 = 6 - *(v27 + 16);
    LOWORD(v44) = v36;
    BYTE2(v44) = v9;
    *(&v44 + 3) = v46[0];
    *(&v44 + 1) = *(v46 + 5);
    v45 = v35;
    if (v9)
    {
      v29 = sub_252498E84();
    }

    else
    {
      if (qword_27F4DAA88 != -1)
      {
        swift_once();
      }

      v29 = qword_27F4DE650;
    }

    v30 = sub_2524897B8(v29);

    v31 = *(v30 + 16);
    if (v31 >= v28)
    {
      v31 = v28;
    }

    if (v31 < 1)
    {
    }

    else
    {
      sub_2523C5F34(v30, v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), 0, (2 * v31) | 1);
    }
  }

  return v43;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ColorControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_25235E264(*(v0 + v4), *(v0 + v4 + 8));
  sub_25235E264(*(v5 + 16), *(v5 + 24));
  sub_252457A80(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 97));
  v6 = v0 + v4 + *(v1 + 28);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658) + 32);
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v8 - 8) + 48))(v6 + v7, 1, v8))
  {
    v9 = sub_25268ED20();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v7, 1, v9))
    {
      (*(v10 + 8))(v6 + v7, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

unint64_t sub_252499844()
{
  result = qword_27F4DE888;
  if (!qword_27F4DE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE880);
    sub_2524998FC();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE888);
  }

  return result;
}

unint64_t sub_2524998FC()
{
  result = qword_27F4DE890;
  if (!qword_27F4DE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE898);
    sub_252499988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE890);
  }

  return result;
}

unint64_t sub_252499988()
{
  result = qword_27F4DE8A0;
  if (!qword_27F4DE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE8A8);
    sub_252400FC8(&qword_27F4DE8B0, &qword_27F4DE8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8A0);
  }

  return result;
}

uint64_t sub_252499A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252499A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252499AF0()
{
  result = qword_27F4DE8D0;
  if (!qword_27F4DE8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE820);
    sub_252499A40(&qword_27F4DE8D8, _s18ColorControlCircleVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8D0);
  }

  return result;
}

unint64_t sub_252499BAC()
{
  result = qword_27F4DE8E0;
  if (!qword_27F4DE8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE838);
    sub_252400FC8(&qword_27F4DE8E8, &qword_27F4DE830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8E0);
  }

  return result;
}

unint64_t sub_252499C64()
{
  result = qword_27F4DE8F0;
  if (!qword_27F4DE8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE850);
    sub_252499D1C();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8F0);
  }

  return result;
}

unint64_t sub_252499D1C()
{
  result = qword_27F4DE8F8;
  if (!qword_27F4DE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE838);
    sub_252499BAC();
    swift_getOpaqueTypeConformance2();
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8F8);
  }

  return result;
}

uint64_t sub_252499E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for ColorControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = sub_25268ED20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = v0 + v3;
  sub_25235E264(*(v0 + v3), *(v0 + v3 + 8));
  sub_25235E264(*(v7 + 16), *(v7 + 24));
  sub_252457A80(*(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), *(v7 + 97));
  v8 = v0 + v3 + *(v1 + 28);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658) + 32);
  v10 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v10 - 8) + 48))(v8 + v9, 1, v10) && !(*(v5 + 48))(v8 + v9, 1, v4))
  {
    (*(v5 + 8))(v8 + v9, v4);
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v11 | 7);
}

uint64_t sub_25249A0EC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, __n128, __n128))
{
  v4 = *(type metadata accessor for ColorControl(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7.n128_u64[0] = *(v2 + v6);
  v8.n128_u64[0] = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v7, v8);
}

unint64_t sub_25249A1D8()
{
  result = qword_27F4DE928;
  if (!qword_27F4DE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE918);
    sub_25249A290();
    sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &unk_25269F7E8, sub_252497F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE928);
  }

  return result;
}

unint64_t sub_25249A290()
{
  result = qword_27F4DE930;
  if (!qword_27F4DE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE938);
    sub_25249A38C(&qword_27F4DE940, &qword_27F4DE858, &unk_25269F8D0, sub_252499C64);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE880);
    sub_252499844();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE930);
  }

  return result;
}

uint64_t sub_25249A38C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25249A444()
{
  v1 = *(type metadata accessor for ColorControl(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25268ED20() - 8);
  return sub_252495C1C(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_25249A504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for ColorControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_25235E264(*(v0 + v4), *(v0 + v4 + 8));
  sub_25235E264(*(v5 + 16), *(v5 + 24));
  sub_252457A80(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 97));
  v6 = v0 + v4 + *(v1 + 28);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658) + 32);
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v8 - 8) + 48))(v6 + v7, 1, v8))
  {
    v9 = sub_25268ED20();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v7, 1, v9))
    {
      (*(v10 + 8))(v6 + v7, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25249A778()
{
  type metadata accessor for ColorControl(0);

  return sub_252492E14();
}

unint64_t sub_25249A7E0()
{
  result = qword_27F4DE998;
  if (!qword_27F4DE998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE968);
    sub_252499AF0();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE998);
  }

  return result;
}

unint64_t sub_25249A86C()
{
  result = qword_27F4DE9A0;
  if (!qword_27F4DE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9A0);
  }

  return result;
}

unint64_t sub_25249A8C0()
{
  result = qword_27F4DE9A8;
  if (!qword_27F4DE9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE820);
    sub_252499AF0();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9A8);
  }

  return result;
}

uint64_t sub_25249A9B4()
{
  v1 = *(type metadata accessor for ColorControl(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252492E88(v2);
}

uint64_t sub_25249AA48()
{
  type metadata accessor for ColorControl(0);

  return sub_252497370();
}

uint64_t sub_25249AAB8(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorControl(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2524973E0(a1, v4);
}

uint64_t sub_25249AB58()
{
  v0 = sub_25268ED20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_25249ABD0()
{
  result = qword_27F4DE9D0;
  if (!qword_27F4DE9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE9D8);
    sub_252497C24();
    sub_252497EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9D0);
  }

  return result;
}

unint64_t sub_25249AC60()
{
  result = qword_27F4DE9E0;
  if (!qword_27F4DE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9E0);
  }

  return result;
}

unint64_t sub_25249AD34()
{
  result = qword_27F4DEA08;
  if (!qword_27F4DEA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE9F8);
    sub_252400FC8(&qword_27F4DEA10, &qword_27F4DEA18);
    sub_252400FC8(&qword_27F4DEA20, &qword_27F4DEA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEA08);
  }

  return result;
}

double sub_25249AE1C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2526914B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252691670();
  sub_252690A00();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v74.origin.x = v9;
  v74.origin.y = v11;
  v74.size.width = v13;
  v74.size.height = v15;
  MidX = CGRectGetMidX(v74);
  v75.origin.x = v9;
  v75.origin.y = v11;
  v75.size.width = v13;
  v75.size.height = v15;
  MidY = CGRectGetMidY(v75);
  sub_2526909F0();
  v17 = v16;
  v19 = v18;
  v20 = v16 * 0.08;
  v21 = v16 * 0.08 * 0.5;
  v76.origin.x = 0.0;
  v76.origin.y = 0.0;
  v76.size.width = v17;
  v76.size.height = v19;
  v77 = CGRectInset(v76, v21, v21);
  y = v77.origin.y;
  x = v77.origin.x;
  height = v77.size.height;
  width = v77.size.width;
  v77.origin.x = 0.0;
  v77.origin.y = 0.0;
  v77.size.width = v17;
  v77.size.height = v19;
  v78 = CGRectInset(v77, v17 * 0.12, v17 * 0.12);
  v35 = v78.origin.y;
  v36 = v78.origin.x;
  v33 = v78.size.height;
  v34 = v78.size.width;
  v78.origin.x = 0.0;
  v78.origin.y = 0.0;
  v78.size.width = v17;
  v78.size.height = v19;
  v79 = CGRectInset(v78, v17 * 0.03 * 0.5, v17 * 0.03 * 0.5);
  v22 = v79.origin.x;
  v23 = v79.origin.y;
  v24 = v79.size.width;
  v25 = v79.size.height;
  v79.origin.x = 0.0;
  v79.origin.y = 0.0;
  v79.size.width = v17;
  v79.size.height = v19;
  v80 = CGRectInset(v79, v17 * 0.25, v17 * 0.25);
  *v57 = v20;
  *&v57[1] = x;
  *&v57[2] = y;
  *&v57[3] = width;
  *&v57[4] = height;
  *&v57[5] = v36;
  *&v57[6] = v35;
  *&v57[7] = v34;
  *&v57[8] = v33;
  *&v57[9] = v17 * 0.03;
  *&v57[10] = v22;
  *&v57[11] = v23;
  *&v57[12] = v24;
  *&v57[13] = v25;
  v57[14] = *&v80.size.width;
  v57[15] = *&v80.size.height;
  v26 = sub_252692920();
  v28 = v27;
  sub_25249B278(v57, v58);
  v56[12] = v58[12];
  v56[13] = v58[13];
  v56[14] = *v59;
  *(&v56[14] + 15) = *&v59[15];
  v56[8] = v58[8];
  v56[9] = v58[9];
  v56[10] = v58[10];
  v56[11] = v58[11];
  v56[4] = v58[4];
  v56[5] = v58[5];
  v56[6] = v58[6];
  v56[7] = v58[7];
  v56[0] = v58[0];
  v56[1] = v58[1];
  v56[2] = v58[2];
  v56[3] = v58[3];
  v29 = sub_252692920();
  v31 = v30;
  sub_25249B734(a1, &v45);
  *&v60[0] = v29;
  *(&v60[0] + 1) = v31;
  v60[9] = v53;
  v60[10] = v54;
  *v61 = *v55;
  *&v61[15] = *&v55[15];
  v60[5] = v49;
  v60[6] = v50;
  v60[7] = v51;
  v60[8] = v52;
  v60[1] = v45;
  v60[2] = v46;
  v60[3] = v47;
  v60[4] = v48;
  *(&v56[24] + 8) = v53;
  *(&v56[25] + 8) = v54;
  *(&v56[26] + 8) = *v61;
  *(&v56[20] + 8) = v49;
  *(&v56[21] + 8) = v50;
  *(&v56[22] + 8) = v51;
  *(&v56[23] + 8) = v52;
  *(&v56[16] + 8) = v45;
  *(&v56[17] + 8) = v46;
  *(&v56[18] + 8) = v47;
  *(&v56[19] + 8) = v48;
  *(&v56[15] + 8) = v60[0];
  v71 = v53;
  v72 = v54;
  v73[0] = *v55;
  v67 = v49;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v63 = v45;
  v64 = v46;
  *(&v56[27] + 7) = *&v55[15];
  v62[0] = v29;
  v62[1] = v31;
  *(v73 + 15) = *&v55[15];
  v65 = v47;
  v66 = v48;
  sub_25237153C(v60, &v43, &qword_27F4DEA58);
  sub_252372288(v62, &qword_27F4DEA58);
  *a2 = v26;
  *(a2 + 8) = v28;
  memcpy((a2 + 16), v56, 0x1BBuLL);
  *(a2 + 459) = v43;
  *(a2 + 463) = v44;
  result = MidY;
  *(a2 + 464) = MidX;
  *(a2 + 472) = result;
  return result;
}

double sub_25249B278@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  sub_25237153C(v3, v25 - v7, &qword_27F4DB2A8);
  v9 = sub_25268ED20();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_252372288(v8, &qword_27F4DB2A8);
LABEL_6:
    v14 = sub_252692920();
    v16 = v15;
    sub_25249BC34(v3, a1, &v72);
    v39 = v84;
    v40 = v85;
    v35 = v80;
    v36 = v81;
    v37 = v82;
    v38 = v83;
    v31 = v76;
    v32 = v77;
    v33 = v78;
    v34 = v79;
    v27 = v72;
    v28 = v73;
    v29 = v74;
    v30 = v75;
    v54 = v84;
    v55 = v85;
    v50 = v80;
    v51 = v81;
    v52 = v82;
    v53 = v83;
    v46 = v76;
    v47 = v77;
    v48 = v78;
    v49 = v79;
    v42 = v72;
    v43 = v73;
    v41 = v86[0];
    v56 = v86[0];
    v44 = v74;
    v45 = v75;
    sub_25237153C(&v27, &v57, &qword_27F4DEA90);
    sub_252372288(&v42, &qword_27F4DEA90);
    v70 = v39;
    *v71 = v40;
    *&v71[16] = v41;
    v66 = v35;
    v67 = v36;
    v68 = v37;
    v69 = v38;
    v62 = v31;
    v63 = v32;
    v64 = v33;
    v65 = v34;
    v58 = v27;
    v59 = v28;
    v60 = v29;
    v61 = v30;
    *&v57 = v14;
    *(&v57 + 1) = v16;
    sub_25249D07C(&v57);
    goto LABEL_7;
  }

  if ((*(v10 + 88))(v8, v9) != *MEMORY[0x277D15B30])
  {
    (*(v10 + 8))(v8, v9);
    goto LABEL_6;
  }

  (*(v10 + 8))(v8, v9);
  v11 = sub_252692920();
  v13 = v12;
  sub_25249C5B8(&v72);
  v31 = v76;
  v32 = v77;
  v33 = v78;
  *&v34 = v79;
  v27 = v72;
  v28 = v73;
  v29 = v74;
  v30 = v75;
  v42 = v72;
  v43 = v73;
  v44 = v74;
  v45 = v75;
  v46 = v76;
  v47 = v77;
  v48 = v78;
  *&v49 = v79;
  sub_25237153C(&v27, &v57, &qword_27F4DEAB8);
  sub_252372288(&v42, &qword_27F4DEAB8);
  v62 = v31;
  v63 = v32;
  v64 = v33;
  *&v65 = v34;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = v30;
  *&v57 = v11;
  *(&v57 + 1) = v13;
  sub_25249D088(&v57);
LABEL_7:
  v25[12] = v69;
  v25[13] = v70;
  v26[0] = *v71;
  *(v26 + 15) = *&v71[15];
  v25[8] = v65;
  v25[9] = v66;
  v25[10] = v67;
  v25[11] = v68;
  v25[4] = v61;
  v25[5] = v62;
  v25[6] = v63;
  v25[7] = v64;
  v25[0] = v57;
  v25[1] = v58;
  v25[2] = v59;
  v25[3] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEAA0);
  sub_252400FC8(&qword_27F4DEAA8, &qword_27F4DEA98);
  sub_252400FC8(&qword_27F4DEAB0, &qword_27F4DEAA0);
  sub_252691470();
  v17 = v85;
  *(a2 + 192) = v84;
  *(a2 + 208) = v17;
  *(a2 + 224) = v86[0];
  *(a2 + 239) = *(v86 + 15);
  v18 = v81;
  *(a2 + 128) = v80;
  *(a2 + 144) = v18;
  v19 = v83;
  *(a2 + 160) = v82;
  *(a2 + 176) = v19;
  v20 = v77;
  *(a2 + 64) = v76;
  *(a2 + 80) = v20;
  v21 = v79;
  *(a2 + 96) = v78;
  *(a2 + 112) = v21;
  v22 = v73;
  *a2 = v72;
  *(a2 + 16) = v22;
  result = *&v74;
  v24 = v75;
  *(a2 + 32) = v74;
  *(a2 + 48) = v24;
  return result;
}