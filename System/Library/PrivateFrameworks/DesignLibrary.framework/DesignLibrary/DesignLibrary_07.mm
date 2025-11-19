uint64_t sub_18AF1589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  MEMORY[0x1EEE9AC00](v68);
  v4 = &v59 - v3;
  v5 = sub_18AFCC474();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v59 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999788);
  MEMORY[0x1EEE9AC00](v65);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v59 - v25;
  sub_18AFCDF14();
  v62 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for MacSegmentedControlContentSelectionView();
  sub_18AED2E98(v18);
  v27 = v26[8];
  v28 = *(a1 + v26[13]);
  v18[v16[9]] = *(a1 + v27);
  v18[v16[10]] = 2;
  v18[v16[11]] = v28 != 0;
  v29 = &v18[v16[12]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v26[10];
  v31 = *(a1 + v30);
  if (*(a1 + v30))
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  sub_18AE9A768(v18, v23, &qword_1EA998C30);
  *&v23[*(v19 + 36)] = v32;
  sub_18AE9A768(v23, v72, &qword_1EA998C40);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_18AFCC534();
  v35 = v67;
  (*(*(v34 - 8) + 104))(v67, v33, v34);
  v36 = *(a1 + v27);
  v37 = a1 + v26[5];
  if ((*(v37 + 8) & 1) == 0)
  {
    v38 = *v37;

    sub_18AFCE024();
    v39 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v40 = v59;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v38, 0);
    (*(v60 + 8))(v40, v61);
  }

  if ((v28 - 1) > 1)
  {
    v74 = sub_18AFCCD74();
  }

  else
  {
    v73 = sub_18AFCC6B4();
  }

  v41 = sub_18AFCBCD4();
  sub_18AEF0D24(v35, v4);
  v42 = v68;
  *&v4[*(v68 + 52)] = v41;
  *&v4[*(v42 + 56)] = 256;
  v43 = v66;
  sub_18AEF0D24(v4, v66);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999790);
  *(v43 + *(v44 + 52)) = v36;
  *(v43 + *(v44 + 56)) = 256;
  v45 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999798) + 36);
  sub_18AE83A40(v4, v45, &qword_1EA999778);
  v46 = sub_18AFCDB44();
  v48 = v47;
  sub_18AE7BA80(v4, &qword_1EA999778);
  sub_18AEF0D88(v35);
  v49 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0) + 36));
  *v49 = v46;
  v49[1] = v48;
  if (v31)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = v63;
  sub_18AE9A768(v43, v63, &qword_1EA999780);
  *(v51 + *(v65 + 36)) = v50;
  v52 = v69;
  sub_18AE9A768(v51, v69, &qword_1EA999788);
  v53 = v72;
  v54 = v64;
  sub_18AE83A40(v72, v64, &qword_1EA998C40);
  v55 = v70;
  sub_18AE83A40(v52, v70, &qword_1EA999788);
  v56 = v71;
  sub_18AE83A40(v54, v71, &qword_1EA998C40);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A588);
  sub_18AE83A40(v55, v56 + *(v57 + 48), &qword_1EA999788);
  sub_18AE7BA80(v52, &qword_1EA999788);
  sub_18AE7BA80(v53, &qword_1EA998C40);
  sub_18AE7BA80(v55, &qword_1EA999788);
  sub_18AE7BA80(v54, &qword_1EA998C40);
}

uint64_t sub_18AF1608C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_18AF16140()
{
  result = qword_1EA99A5A8[0];
  if (!qword_1EA99A5A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A560);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99A5A8);
  }

  return result;
}

void sub_18AF161AC()
{
  sub_18AF16A74(319, &qword_1EA997C28, &type metadata for ControlContext, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_18AF16A74(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
      if (v2 <= 0x3F)
      {
        sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
        if (v3 <= 0x3F)
        {
          sub_18AF16A74(319, &qword_1EA9996B0, &type metadata for GlassGroupContext, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_18AF16A74(319, &qword_1ED56ADC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
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

uint64_t sub_18AF163D4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_18AFCC5C4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_18AFCBB54() - 8);
  v9 = *(v8 + 64);
  if ((v9 + 1) > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v13 & 0xF8 | 7;
  v19 = v7 + v18 + 1;
  v20 = v10 + 8;
  v21 = v14 + 9;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v22 = ((v21 + ((((v20 + ((v19 + ((v16 + 32) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v12 > 0xFE)
      {
        v31 = *(v11 + 48);

        return v31((v21 + ((((v20 + ((v19 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v17 + 25) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 8);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_18AF166CC(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v15 & 0xF8 | 7;
  v20 = v16 & 0xF8 | 7;
  v21 = v9 + v20 + 1;
  v22 = v12 + 8;
  v23 = ((v17 + 9 + ((((v22 + ((v21 + (((v15 & 0xF8) + 32) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *(a1 + v23) = v26;
              }

              else
              {
                *(a1 + v23) = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v23) = 0;
  }

  else if (v24)
  {
    *(a1 + v23) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 > 0xFE)
  {
    v30 = *(v13 + 56);

    v30((v17 + 9 + ((((v22 + ((v21 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v19 + 25) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    *(a1 + 8) = -a2;
  }
}

void sub_18AF16A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18AF16AD8()
{
  result = qword_1EA99A630;
  if (!qword_1EA99A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A630);
  }

  return result;
}

uint64_t sub_18AF16B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A638);
  v3 = *(a1 + 16);
  v22 = *(a1 + 24);
  v19 = v3;
  type metadata accessor for MacToolbarButton();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A640);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A648);
  sub_18AFCC044();
  v17 = sub_18AFCC624();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640);
  v16 = swift_getWitnessTable();
  v4 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v40 = v22;
  v41 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
  v38 = swift_getWitnessTable();
  v39 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E697E5D8];
  v34 = v4;
  v35 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E697E040];
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x1E697EBF8];
  v28 = swift_getWitnessTable();
  v29 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648);
  v26 = v16;
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A660);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A668);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v5 = sub_18AFCD134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v23 = v19;
  v24 = v22;
  v25 = v20;
  sub_18AFCC504();
  sub_18AFCD124();
  v12 = swift_getWitnessTable();
  sub_18AEADA5C(v8, v5, v12);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_18AEADA5C(v11, v5, v12);
  return (v13)(v11, v5);
}

uint64_t sub_18AF1716C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a1;
  v84 = a4;
  type metadata accessor for MacToolbarButton();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A640);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  v85 = a2;
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  v82 = sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A648);
  sub_18AFCC044();
  v6 = sub_18AFCC624();
  v91[22] = swift_getWitnessTable();
  v91[23] = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v86 = a3;
  v91[20] = a3;
  v91[21] = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
  v91[18] = swift_getWitnessTable();
  v91[19] = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v91[16] = swift_getWitnessTable();
  v91[17] = MEMORY[0x1E697E5D8];
  v91[14] = v7;
  v91[15] = swift_getWitnessTable();
  v91[12] = swift_getWitnessTable();
  v91[13] = MEMORY[0x1E697E040];
  v91[10] = swift_getWitnessTable();
  v91[11] = MEMORY[0x1E697EBF8];
  v91[8] = swift_getWitnessTable();
  v91[9] = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648);
  v91[6] = WitnessTable;
  v91[7] = swift_getWitnessTable();
  v83 = v6;
  v74 = swift_getWitnessTable();
  v8 = sub_18AFCD1F4();
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v63 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A660);
  v10 = sub_18AFCC044();
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v63 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A668);
  v80 = v10;
  v12 = sub_18AFCC044();
  WitnessTable = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v63 - v16;
  v67 = sub_18AFCC474();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SegmentDividier();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A670);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v63 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A638);
  MEMORY[0x1EEE9AC00](v71);
  v76 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v63 - v27;
  sub_18AFCDF14();
  v73 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = type metadata accessor for MacSegmentedControlItem();
  v29 = *(v28 + 68);
  v30 = v87;
  v31 = *(v87 + v29);
  if (*(v87 + v29))
  {
    v32 = v28;
    v64 = v8;
    v33 = *v87;
    if (*(v87 + 8) == 1)
    {
      v91[0] = *v87;
    }

    else
    {

      sub_18AFCE024();
      v37 = sub_18AFCC7D4();
      v30 = v87;
      sub_18AFCBA64();

      v38 = v65;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v33, 0);
      (*(v66 + 8))(v38, v67);
      v33 = v91[0];
    }

    v39 = *(v30 + *(v32 + 64));
    v40 = *(v87 + *(v32 + 72));
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
    swift_storeEnumTagMultiPayload();
    *(v20 + v18[5]) = v33;
    *(v20 + v18[6]) = v39;
    *(v20 + v18[7]) = v40;
    v30 = v87;
    if (v31 == 2)
    {
      v41 = 1.0;
    }

    else
    {
      v41 = 0.0;
    }

    sub_18AF1A440(v20, v22);
    v36 = v70;
    *&v22[*(v70 + 36)] = v41;
    v42 = v68;
    sub_18AE9A768(v22, v68, &qword_1EA99A670);
    v43 = v42;
    v35 = v72;
    sub_18AE9A768(v43, v72, &qword_1EA99A670);
    v34 = 0;
    v8 = v64;
  }

  else
  {
    v34 = 1;
    v35 = v72;
    v36 = v70;
  }

  v44 = (*(v69 + 56))(v35, v34, 1, v36);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v86;
  *(&v63 - 4) = v85;
  *(&v63 - 3) = v45;
  v62 = v30;
  sub_18AFCDB44();
  v46 = v35;
  v47 = v75;
  sub_18AFCD1E4();
  v48 = swift_getWitnessTable();
  v49 = v78;
  sub_18AFCCC84();
  (*(v77 + 8))(v47, v8);
  sub_18AFCD104();
  type metadata accessor for CGRect(0);
  v50 = sub_18AE95F54(&qword_1EA99A678, &qword_1EA99A660);
  v91[4] = v48;
  v91[5] = v50;
  v51 = v80;
  v52 = swift_getWitnessTable();
  v62 = sub_18AEC45F4();
  sub_18AFCCB54();

  (*(v79 + 8))(v49, v51);
  v53 = sub_18AE95F54(&qword_1EA99A680, &qword_1EA99A668);
  v91[2] = v52;
  v91[3] = v53;
  v54 = swift_getWitnessTable();
  v55 = v82;
  sub_18AEADA5C(v14, v12, v54);
  v56 = WitnessTable;
  v57 = *(WitnessTable + 8);
  v57(v14, v12);
  v58 = v46;
  v59 = v46;
  v60 = v76;
  sub_18AE83A40(v59, v76, &qword_1EA99A638);
  v91[0] = v60;
  (*(v56 + 16))(v14, v55, v12);
  v91[1] = v14;
  v90[0] = v71;
  v90[1] = v12;
  v88 = sub_18AF1A4B0();
  v89 = v54;
  sub_18AEB70B8(v91, 2uLL, v90);
  v57(v55, v12);
  sub_18AE7BA80(v58, &qword_1EA99A638);
  v57(v14, v12);
  sub_18AE7BA80(v60, &qword_1EA99A638);
}

uint64_t sub_18AF17F78@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v148 = &v145 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  v9 = sub_18AFCC044();
  v150 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v145 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  v11 = sub_18AFCC044();
  v153 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v151 = &v145 - v12;
  v185 = v13;
  v14 = sub_18AFCC044();
  v154 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v145 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  v184 = v14;
  v16 = sub_18AFCBDC4();
  v156 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v145 - v17;
  v18 = sub_18AFCC044();
  v157 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v145 - v19;
  v20 = sub_18AFCC044();
  v161 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v160 = &v145 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A648);
  v179 = v20;
  v22 = sub_18AFCC044();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v145 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v162 = &v145 - v28;
  v177 = a2;
  v29 = type metadata accessor for MacToolbarButton();
  v147 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v167 = (&v145 - v30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A640);
  v178 = v29;
  v31 = sub_18AFCC044();
  v158 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v170 = &v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v146 = &v145 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v169 = &v145 - v36;
  v37 = sub_18AFCC474();
  v165 = *(v37 - 8);
  v166 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v164 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v31;
  v39 = sub_18AFCC624();
  v173 = *(v39 - 8);
  v174 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v182 = &v145 - v40;
  sub_18AFCDF14();
  v172 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = *a1;
  v42 = *(a1 + 8);
  v175 = v22;
  if ((v42 & 1) == 0)
  {

    sub_18AFCE024();
    v43 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v44 = v164;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v41, 0);
    (*(v165 + 8))(v44, v166);
    LOBYTE(v41) = v237;
  }

  v183 = v18;
  v180 = v16;
  v45 = v177;
  v46 = type metadata accessor for MacSegmentedControlItem();
  v47 = v46;
  v186 = a3;
  v181 = v9;
  if (v41)
  {
    v86 = v46[16];
    LOBYTE(v237) = *(a1 + v46[15]);
    v87 = *(a1 + v46[19]);
    v88 = *(a1 + v46[18]);
    v89 = *(a1 + v86);
    v90 = sub_18AF19678(v46);
    LODWORD(v91) = *(a1 + v47[20]);
    LOBYTE(v92) = *(a1 + v47[21]);
    MEMORY[0x1EEE9AC00](v90);
    v143 = v45;
    v144 = v93;
    v142 = &v139;
    sub_18AEED774(&v237, v89, v88, v87, v94 & 1, v91, v92, v95, v167, v96, v97, sub_18AF1DA3C);
    swift_getKeyPath();
    if (v91 == 1 && (v92 & 1) != 0)
    {
      v98 = a1 + v47[12];
      v91 = *v98;
      v99 = v178;
      if (*(v98 + 8) == 1)
      {
        v92 = (v91 >> 8) & 1;
        v100 = (v91 >> 16) & 1;
LABEL_16:
        LOBYTE(v237) = v91 & 1;
        BYTE1(v237) = v92;
        BYTE2(v237) = v100;
        WitnessTable = swift_getWitnessTable();
        v108 = v146;
        v109 = v167;
        sub_18AFCCAA4();

        (*(v147 + 8))(v109, v99);
        v110 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640);
        v201 = WitnessTable;
        v202 = v110;
        v111 = v171;
        v112 = swift_getWitnessTable();
        v113 = v169;
        sub_18AEADA5C(v108, v111, v112);
        v177 = *(v158 + 8);
        v177(v108, v111);
        sub_18AEADA5C(v113, v111, v112);
        v114 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
        v115 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
        v199 = v186;
        v200 = v115;
        v116 = swift_getWitnessTable();
        v117 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
        v197 = v116;
        v198 = v117;
        v195 = swift_getWitnessTable();
        v85 = MEMORY[0x1E697E5D8];
        v196 = MEMORY[0x1E697E5D8];
        v118 = swift_getWitnessTable();
        v193 = v114;
        v194 = v118;
        v191 = swift_getWitnessTable();
        v192 = MEMORY[0x1E697E040];
        v189 = swift_getWitnessTable();
        v190 = MEMORY[0x1E697EBF8];
        v119 = swift_getWitnessTable();
        v120 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648);
        v187 = v119;
        v188 = v120;
        swift_getWitnessTable();
        v121 = v170;
        sub_18AEB5268(v170, v111);
        v122 = v121;
        v123 = v177;
        v177(v122, v111);
        v123(v169, v111);
        goto LABEL_17;
      }

      sub_18AFCE024();
      v105 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v106 = v164;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v91, 0);
      (*(v165 + 8))(v106, v166);
      LOBYTE(v91) = v237;
      LOBYTE(v92) = BYTE1(v237);
    }

    else
    {
      v101 = a1 + v47[12];
      v102 = *v101;
      v99 = v178;
      if (*(v101 + 8) == 1)
      {
        v100 = (v102 >> 16) & 1;
        goto LABEL_16;
      }

      sub_18AFCE024();
      v103 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v104 = v164;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v102, 0);
      (*(v165 + 8))(v104, v166);
    }

    LOBYTE(v100) = BYTE2(v237);
    goto LABEL_16;
  }

  v170 = v23;
  v237 = sub_18AF197EC(v46);
  v48 = v149;
  sub_18AFCCB44();

  v49 = v47[16];
  v145 = a1;
  v50 = *(a1 + v49);
  sub_18AFCC934();
  v51 = sub_18AFCC8F4();
  v52 = v148;
  (*(*(v51 - 8) + 56))(v148, 1, 1, v51);
  sub_18AFCC954();
  sub_18AE7BA80(v52, &qword_1EA998930);
  sub_18AFCC8E4();

  v53 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
  v235 = a3;
  v236 = v53;
  v54 = swift_getWitnessTable();
  v55 = v151;
  sub_18AFCCBA4();

  (*(v150 + 8))(v48, v9);
  sub_18AFCC8B4();
  v56 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v233 = v54;
  v234 = v56;
  v57 = v185;
  v58 = swift_getWitnessTable();
  v59 = v152;
  sub_18AFCCC24();
  (*(v153 + 8))(v55, v57);
  v60 = dbl_18AFD8928[v50];
  v231 = v58;
  v232 = MEMORY[0x1E697E5D8];
  v61 = v184;
  v62 = swift_getWitnessTable();
  v63 = v155;
  sub_18AFC385C(0, 0, v61, v62, v155, 0.0, v60);
  (*(v154 + 8))(v59, v61);
  v169 = v50;
  sub_18AFCDB44();
  v229 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v230 = v62;
  v64 = v180;
  v65 = swift_getWitnessTable();
  sub_18AFCCBB4();
  (*(v156 + 8))(v63, v64);
  v66 = sub_18AFCDB44();
  v68 = v67;
  v227 = v65;
  v228 = MEMORY[0x1E697E040];
  v69 = MEMORY[0x1E697E858];
  v143 = v183;
  v144 = swift_getWitnessTable();
  v141 = v66;
  v142 = v68;
  v140 = 1;
  v139 = 0;
  v70 = v160;
  v71 = v168;
  sub_18AFCCBC4();
  v72 = (*(v157 + 8))(v71, v143);
  v169 = &v145;
  MEMORY[0x1EEE9AC00](v72);
  v141 = v177;
  v142 = v186;
  v143 = v145;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6A8);
  v225 = v144;
  v226 = MEMORY[0x1E697EBF8];
  v167 = v69;
  v73 = v179;
  v74 = swift_getWitnessTable();
  sub_18AF1D6D8();
  v75 = v159;
  sub_18AFCCA64();
  (*(v161 + 8))(v70, v73);
  v76 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648);
  v223 = v74;
  v224 = v76;
  v77 = v175;
  v78 = swift_getWitnessTable();
  v79 = v162;
  sub_18AEADA5C(v75, v77, v78);
  v80 = *(v170 + 8);
  v80(v75, v77);
  v81 = v163;
  sub_18AEADA5C(v79, v77, v78);
  v82 = swift_getWitnessTable();
  v83 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640);
  v221 = v82;
  v222 = v83;
  v84 = v171;
  swift_getWitnessTable();
  sub_18AEB5360(v81, v84, v77);
  v80(v81, v77);
  v80(v79, v77);
  v85 = MEMORY[0x1E697E5D8];
LABEL_17:
  v124 = swift_getWitnessTable();
  v125 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640);
  v219 = v124;
  v220 = v125;
  v126 = swift_getWitnessTable();
  v127 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  v128 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
  v217 = v186;
  v218 = v128;
  v129 = swift_getWitnessTable();
  v130 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  v215 = v129;
  v216 = v130;
  v213 = swift_getWitnessTable();
  v214 = v85;
  v131 = swift_getWitnessTable();
  v211 = v127;
  v212 = v131;
  v209 = swift_getWitnessTable();
  v210 = MEMORY[0x1E697E040];
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x1E697EBF8];
  v132 = swift_getWitnessTable();
  v133 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648);
  v205 = v132;
  v206 = v133;
  v134 = swift_getWitnessTable();
  v203 = v126;
  v204 = v134;
  v135 = v174;
  v136 = swift_getWitnessTable();
  v137 = v182;
  sub_18AEADA5C(v182, v135, v136);
  (*(v173 + 8))(v137, v135);
}

BOOL sub_18AF19678(int *a1)
{
  if (*(v1 + a1[15]) == 1)
  {
    v2 = *(v1 + a1[18]);
    if (*(v1 + a1[18]))
    {
      if (*(v1 + a1[14]))
      {
        return 0;
      }

      return v2 == 1;
    }

    return 1;
  }

  if (!*(v1 + a1[14]))
  {
    if (*(v1 + a1[15]))
    {
      v2 = *(v1 + a1[18]);
      return v2 == 1;
    }

    return 1;
  }

  return !*(v1 + a1[15]) && *(v1 + a1[18]) == 0;
}

uint64_t sub_18AF196F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MacSegmentedControlItem();
  sub_18AEADA5C(a1 + *(v9 + 96), a2, a3);
  sub_18AEADA5C(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_18AF197EC(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 52));
  if (*v8 != 1 || (v8[1] & 1) != 0)
  {
    v10 = *(v1 + 16);
    if (*(v1 + 24) == 1)
    {
      if ((v10 & 1) == 0)
      {
        return sub_18AF1A304();
      }
    }

    else
    {
      v11 = v5;

      sub_18AFCE024();
      v12 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v10, 0);
      (*(v4 + 8))(v7, v11);
      if (v14 != 1)
      {
        return sub_18AF1A304();
      }
    }

    return sub_18AF1A1F0(v1, *(a1 + 16), *(a1 + 24));
  }

  if (*(v1 + *(a1 + 60)) == 1)
  {

    return sub_18AF1A14C(v1);
  }

  else
  {
    v13[2] = sub_18AFCC6C4();
    return sub_18AFCBCD4();
  }
}

uint64_t sub_18AF199E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6E0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A728);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A700);
  MEMORY[0x1EEE9AC00](v57);
  v44 = &v40 - v7;
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v49 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v40 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6C0);
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v40 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6A8);
  MEMORY[0x1EEE9AC00](v48);
  v55 = &v40 - v19;
  sub_18AFCDF14();
  v54 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for MacSegmentedControlItem();
  v47 = v20[11];
  v53 = v13;
  sub_18AED2E98(v13);
  v21 = *(a1 + v20[15]);
  v22 = *(a1 + v20[18]);
  v23 = *(a1 + 16);
  if (*(a1 + 24) != 1)
  {
    v42 = *(a1 + v20[15]);

    sub_18AFCE024();
    v41 = v8;
    v24 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v25 = v43;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v23, 0);
    (*(v9 + 8))(v25, v41);
    v21 = v42;
    LOBYTE(v23) = v58;
  }

  if (v22 && (v23 & 1) != 0)
  {
    v26 = v44;
    v27 = v53;
    sub_18AF1BE88(v21, 1, v44);
    v28 = &qword_1EA99A700;
    sub_18AE83A40(v26, v6, &qword_1EA99A700);
  }

  else
  {
    v29 = v22 != 0;
    v26 = v45;
    v27 = v53;
    sub_18AF1D228(v21, v29, v45);
    v28 = &qword_1EA99A6E0;
    sub_18AE83A40(v26, v6, &qword_1EA99A6E0);
  }

  swift_storeEnumTagMultiPayload();
  sub_18AF1D8CC();
  sub_18AF1D984();
  v30 = v49;
  sub_18AFCC614();
  sub_18AE7BA80(v26, v28);
  sub_18AED8AD4(v27);
  v31 = v52;
  sub_18AE9A768(v30, v52, &qword_1EA99A6D0);
  if (sub_18AF19678(v20))
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = v31;
  v34 = v56;
  sub_18AE9A768(v33, v56, &qword_1EA99A6D0);
  *(v34 + *(v51 + 36)) = v32;
  v35 = v55;
  v36 = &v55[*(v48 + 36)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A720);
  sub_18AFCC1A4();
  sub_18AED2E98(v36);
  v38 = *(a1 + v20[22]);
  *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A730) + 36)) = v38;
  *(v36 + *(v37 + 36)) = 0;
  sub_18AE9A768(v34, v35, &qword_1EA99A6C0);
  sub_18AE9A768(v35, v50, &qword_1EA99A6A8);
}

uint64_t sub_18AF1A078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18AFD8390;
  *(v4 + 32) = a1;

  *a2 = v4;
  return result;
}

uint64_t sub_18AF1A14C(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for MacSegmentedControlItem() + 72)))
  {
    sub_18AFCC6C4();
  }

  else
  {
    sub_18AFCC6E4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AF1A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(type metadata accessor for MacSegmentedControlItem() + 60)) == 1)
  {
    v6 = MEMORY[0x1E697FE58];
  }

  else
  {
    v6 = MEMORY[0x1E697FE50];
  }

  return sub_18AF1A26C(a1, a2, a3, v6);
}

uint64_t sub_18AF1A26C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(a1 + *(type metadata accessor for MacSegmentedControlItem() + 72)))
  {
    sub_18AEFC240();

    return sub_18AFCBCD4();
  }

  else
  {
    a4();
    return sub_18AFCBCD4();
  }
}

uint64_t sub_18AF1A304()
{
  type metadata accessor for MacSegmentedControlItem();
  sub_18AFCC6F4();
  return sub_18AFCBCD4();
}

uint64_t type metadata accessor for SegmentDividier()
{
  result = qword_1EA99A910;
  if (!qword_1EA99A910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF1A440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentDividier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF1A4B0()
{
  result = qword_1EA99A688;
  if (!qword_1EA99A688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A638);
    sub_18AF1D7BC(&qword_1EA99A690, &qword_1EA99A670, &unk_18AFD84D8, sub_18AF1A560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A688);
  }

  return result;
}

unint64_t sub_18AF1A560()
{
  result = qword_1EA99A698;
  if (!qword_1EA99A698)
  {
    type metadata accessor for SegmentDividier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A698);
  }

  return result;
}

double sub_18AF1A5B8@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *(sub_18AFCC184() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_18AFCC534();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  *&v6[*(v4 + 60)] = sub_18AF1A74C(v1);
  *&v6[*(v4 + 64)] = 256;
  type metadata accessor for SegmentDividier();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v6, a1, &qword_1EA998960);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40) + 36));
  v16 = v18[1];
  *v15 = v18[0];
  v15[1] = v16;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_18AF1A74C(uint64_t a1)
{
  v2 = sub_18AFCC5C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AED2E70(v5);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E697F608])
  {
    sub_18AFCCDB4();
    v6 = sub_18AFCCDA4();

    v11 = v6;
    return sub_18AFCBCD4();
  }

  else
  {
    if (*(a1 + *(type metadata accessor for SegmentDividier() + 20)))
    {
      v8 = sub_18AFCC6D4();
    }

    else
    {
      v8 = sub_18AFCC6B4();
    }

    LODWORD(v11) = v8;
    v9 = sub_18AFCBCD4();
    (*(v3 + 8))(v5, v2);
    return v9;
  }
}

uint64_t sub_18AF1A8CC@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738) - 8;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A920);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A928);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A930);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A938);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A940);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v66 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D98);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - v22;
  sub_18AFCBEF4();
  v23 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v4, v12, MEMORY[0x1E697EAF0]);
  *&v12[*(v10 + 64)] = 256;
  v24 = sub_18AFCC6B4();
  if (a2)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v66 = v23;
  sub_18AF1DB30(v12, v15, v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A948);
  v27 = &v15[*(v26 + 52)];
  *v27 = v24;
  *(v27 + 1) = v25;
  *&v15[*(v26 + 56)] = 256;
  v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A950) + 36)];
  sub_18AE83A40(v12, v28, &qword_1EA99A920);
  v29 = sub_18AFCDB44();
  v31 = v30;
  sub_18AE7BA80(v12, &qword_1EA99A920);
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A958) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_18AFCBEF4();
  *&v8[*(v6 + 44)] = 1056964608;
  v33 = v74;
  sub_18AF1DB30(v15, v74, v23);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A960);
  sub_18AE83A40(v8, v33 + *(v34 + 52), &qword_1EA99A738);
  *(v33 + *(v34 + 56)) = 256;
  v35 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A968) + 36);
  sub_18AE83A40(v15, v35, &qword_1EA99A928);
  v36 = sub_18AFCDB44();
  v38 = v37;
  v39 = v68;
  sub_18AE7BA80(v8, &qword_1EA99A738);
  sub_18AE7BA80(v15, &qword_1EA99A928);
  v40 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A970) + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = v69;
  sub_18AFCBEF4();
  v42 = v66;
  *&v8[*(v67 + 44)] = 1056964608;
  v43 = v74;
  sub_18AF1DB30(v74, v39, v42);
  sub_18AE83A40(v8, v39 + *(v34 + 52), &qword_1EA99A738);
  *(v39 + *(v34 + 56)) = 256;
  v44 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A978) + 36);
  sub_18AE83A40(v43, v44, &qword_1EA99A930);
  v45 = sub_18AFCDB44();
  v47 = v46;
  sub_18AE7BA80(v8, &qword_1EA99A738);
  sub_18AE7BA80(v43, &qword_1EA99A930);
  v48 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A980) + 36));
  *v48 = v45;
  v48[1] = v47;
  if (v41 >= 3u)
  {
    if (v41 == 3)
    {
      v49 = sub_18AFCC6B4();
    }

    else
    {
      v49 = sub_18AFCC6E4();
    }

    LODWORD(v75) = v49;
  }

  else
  {
    *&v75 = sub_18AFCCD74();
  }

  v50 = sub_18AFCBCD4();
  v51 = v73;
  v52 = v70;
  v53 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v39, v70, MEMORY[0x1E697EAF0]);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960);
  *(v52 + *(v54 + 52)) = v50;
  *(v52 + *(v54 + 56)) = 256;
  v55 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A988) + 36);
  sub_18AE83A40(v39, v55, &qword_1EA99A938);
  v56 = sub_18AFCDB44();
  v58 = v57;
  sub_18AE7BA80(v39, &qword_1EA99A938);
  v59 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A990) + 36));
  *v59 = v56;
  v59[1] = v58;
  v60 = 1.0;
  sub_18AFCBB94();
  v61 = v71;
  sub_18AF1DB30(v52, v71, v53);
  v62 = v72;
  sub_18AE9A768(v52, v61 + *(v72 + 84), &qword_1EA99A940);
  *(v61 + v62[17]) = 0;
  v63 = v61 + v62[19];
  v64 = v76;
  *v63 = v75;
  *(v63 + 16) = v64;
  *(v63 + 32) = v77;
  *(v61 + v62[20]) = 1;
  if (v41 == 1)
  {
    v60 = 0.25;
  }

  sub_18AE9A768(v61, v51, &qword_1EA998D98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D68);
  *(v51 + *(result + 36)) = v60;
  return result;
}

uint64_t sub_18AF1B058@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738) - 8;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7F0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A800);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A808);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A810);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v66 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A140);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - v22;
  sub_18AFCBEF4();
  v23 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v4, v12, MEMORY[0x1E6981998]);
  *&v12[*(v10 + 64)] = 256;
  v24 = sub_18AFCC6B4();
  if (a2)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v66 = v23;
  sub_18AF1DB30(v12, v15, v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A818);
  v27 = &v15[*(v26 + 52)];
  *v27 = v24;
  *(v27 + 1) = v25;
  *&v15[*(v26 + 56)] = 256;
  v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A820) + 36)];
  sub_18AE83A40(v12, v28, &qword_1EA99A7F0);
  v29 = sub_18AFCDB44();
  v31 = v30;
  sub_18AE7BA80(v12, &qword_1EA99A7F0);
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A828) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_18AFCBEF4();
  *&v8[*(v6 + 44)] = 1056964608;
  v33 = v74;
  sub_18AF1DB30(v15, v74, v23);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A830);
  sub_18AE83A40(v8, v33 + *(v34 + 52), &qword_1EA99A738);
  *(v33 + *(v34 + 56)) = 256;
  v35 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A838) + 36);
  sub_18AE83A40(v15, v35, &qword_1EA99A7F8);
  v36 = sub_18AFCDB44();
  v38 = v37;
  v39 = v68;
  sub_18AE7BA80(v8, &qword_1EA99A738);
  sub_18AE7BA80(v15, &qword_1EA99A7F8);
  v40 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A840) + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = v69;
  sub_18AFCBEF4();
  v42 = v66;
  *&v8[*(v67 + 44)] = 1056964608;
  v43 = v74;
  sub_18AF1DB30(v74, v39, v42);
  sub_18AE83A40(v8, v39 + *(v34 + 52), &qword_1EA99A738);
  *(v39 + *(v34 + 56)) = 256;
  v44 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A848) + 36);
  sub_18AE83A40(v43, v44, &qword_1EA99A800);
  v45 = sub_18AFCDB44();
  v47 = v46;
  sub_18AE7BA80(v8, &qword_1EA99A738);
  sub_18AE7BA80(v43, &qword_1EA99A800);
  v48 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A850) + 36));
  *v48 = v45;
  v48[1] = v47;
  if (v41 >= 3u)
  {
    if (v41 == 3)
    {
      v49 = sub_18AFCC6B4();
    }

    else
    {
      v49 = sub_18AFCC6E4();
    }

    LODWORD(v75) = v49;
  }

  else
  {
    *&v75 = sub_18AFCCD74();
  }

  v50 = sub_18AFCBCD4();
  v51 = v73;
  v52 = v70;
  v53 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v39, v70, MEMORY[0x1E6981998]);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  *(v52 + *(v54 + 52)) = v50;
  *(v52 + *(v54 + 56)) = 256;
  v55 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A858) + 36);
  sub_18AE83A40(v39, v55, &qword_1EA99A808);
  v56 = sub_18AFCDB44();
  v58 = v57;
  sub_18AE7BA80(v39, &qword_1EA99A808);
  v59 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A860) + 36));
  *v59 = v56;
  v59[1] = v58;
  v60 = 1.0;
  sub_18AFCBB94();
  v61 = v71;
  sub_18AF1DB30(v52, v71, v53);
  v62 = v72;
  sub_18AE9A768(v52, v61 + *(v72 + 84), &qword_1EA99A810);
  *(v61 + v62[17]) = 0;
  v63 = v61 + v62[19];
  v64 = v76;
  *v63 = v75;
  *(v63 + 16) = v64;
  *(v63 + 32) = v77;
  *(v61 + v62[20]) = 1;
  if (v41 == 1)
  {
    v60 = 0.25;
  }

  sub_18AE9A768(v61, v51, &qword_1EA99A140);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110);
  *(v51 + *(result + 36)) = v60;
  return result;
}

uint64_t sub_18AF1B7E4@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v63 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738) - 8;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A898);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v57 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8B8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = &v57 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D40);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v57 - v20;
  sub_18AFCBEF4();
  *&v10[*(v8 + 64)] = 256;
  v21 = sub_18AFCC6B4();
  if (a2)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8C0) + 36);
  sub_18AE83A40(v10, v23, &qword_1EA99A898);
  v24 = sub_18AFCDB44();
  v26 = v25;
  sub_18AE7BA80(v10, &qword_1EA99A898);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8C8) + 36));
  *v27 = v24;
  v27[1] = v26;
  *v13 = v21;
  v13[1] = v22;
  *(v13 + 4) = 256;
  sub_18AFCBEF4();
  *&v6[*(v4 + 44)] = 1056964608;
  v28 = v64;
  sub_18AE83A40(v6, v64, &qword_1EA99A738);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8D0);
  *(v28 + *(v29 + 56)) = 256;
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8D8) + 36);
  sub_18AE83A40(v13, v30, &qword_1EA99A8A0);
  v31 = sub_18AFCDB44();
  v33 = v32;
  sub_18AE7BA80(v6, &qword_1EA99A738);
  sub_18AE7BA80(v13, &qword_1EA99A8A0);
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8E0) + 36));
  *v34 = v31;
  v34[1] = v33;
  sub_18AFCBEF4();
  v35 = v59;
  *&v6[*(v58 + 44)] = 1056964608;
  sub_18AE83A40(v6, v35, &qword_1EA99A738);
  *(v35 + *(v29 + 56)) = 256;
  v36 = v35;
  v37 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8E8) + 36);
  v38 = v64;
  sub_18AE83A40(v64, v37, &qword_1EA99A8A8);
  v39 = sub_18AFCDB44();
  v41 = v40;
  sub_18AE7BA80(v6, &qword_1EA99A738);
  sub_18AE7BA80(v38, &qword_1EA99A8A8);
  v42 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8F0) + 36));
  *v42 = v39;
  v42[1] = v41;
  if (v65 >= 3u)
  {
    if (v65 == 3)
    {
      v43 = sub_18AFCC6B4();
    }

    else
    {
      v43 = sub_18AFCC6E4();
    }

    LODWORD(v66) = v43;
  }

  else
  {
    *&v66 = sub_18AFCCD74();
  }

  v44 = sub_18AFCBCD4();
  v46 = v62;
  v45 = v63;
  v47 = v60;
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8F8) + 36);
  v49 = v36;
  sub_18AE83A40(v36, v48, &qword_1EA99A8B0);
  v50 = sub_18AFCDB44();
  v52 = v51;
  sub_18AE7BA80(v49, &qword_1EA99A8B0);
  v53 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A900) + 36));
  *v53 = v50;
  v53[1] = v52;
  *v46 = v44;
  *(v46 + 8) = 256;
  v54 = 1.0;
  sub_18AFCBB94();
  sub_18AE9A768(v46, v47 + *(v61 + 84), &qword_1EA99A8B8);
  *v47 = 0;
  v55 = v67;
  *(v47 + 8) = v66;
  *(v47 + 24) = v55;
  *(v47 + 40) = v68;
  *(v47 + 48) = 1;
  if (v65 == 1)
  {
    v54 = 0.25;
  }

  sub_18AE9A768(v47, v45, &qword_1EA999D40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D30);
  *(v45 + *(result + 36)) = v54;
  return result;
}

uint64_t sub_18AF1BE88@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738) - 8;
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A740);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A748);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A750);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A758);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A760);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = &v64 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A710);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v64 - v22;
  sub_18AFCBEF4();
  sub_18AF1DB30(v4, v12, type metadata accessor for ResolvedButtonBorderShape);
  *&v12[*(v10 + 64)] = 256;
  v23 = sub_18AFCC6B4();
  if (a2)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v64 = type metadata accessor for ResolvedButtonBorderShape;
  sub_18AF1DB30(v12, v15, type metadata accessor for ResolvedButtonBorderShape);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A768);
  v26 = &v15[*(v25 + 52)];
  *v26 = v23;
  *(v26 + 1) = v24;
  *&v15[*(v25 + 56)] = 256;
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A770) + 36)];
  sub_18AE83A40(v12, v27, &qword_1EA99A740);
  v28 = sub_18AFCDB44();
  v30 = v29;
  sub_18AE7BA80(v12, &qword_1EA99A740);
  v31 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A778) + 36));
  *v31 = v28;
  v31[1] = v30;
  sub_18AFCBEF4();
  *&v8[*(v6 + 44)] = 1056964608;
  v32 = v72;
  sub_18AF1DB30(v15, v72, type metadata accessor for ResolvedButtonBorderShape);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A780);
  sub_18AE83A40(v8, v32 + *(v33 + 52), &qword_1EA99A738);
  *(v32 + *(v33 + 56)) = 256;
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A788) + 36);
  sub_18AE83A40(v15, v34, &qword_1EA99A748);
  v35 = sub_18AFCDB44();
  v37 = v36;
  v38 = v66;
  sub_18AE7BA80(v8, &qword_1EA99A738);
  sub_18AE7BA80(v15, &qword_1EA99A748);
  v39 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A790) + 36));
  *v39 = v35;
  v39[1] = v37;
  v40 = v67;
  sub_18AFCBEF4();
  v41 = v64;
  *&v8[*(v65 + 44)] = 1056964608;
  v42 = v72;
  sub_18AF1DB30(v72, v38, v41);
  sub_18AE83A40(v8, v38 + *(v33 + 52), &qword_1EA99A738);
  *(v38 + *(v33 + 56)) = 256;
  v43 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A798) + 36);
  sub_18AE83A40(v42, v43, &qword_1EA99A750);
  v44 = sub_18AFCDB44();
  v46 = v45;
  sub_18AE7BA80(v8, &qword_1EA99A738);
  sub_18AE7BA80(v42, &qword_1EA99A750);
  v47 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7A0) + 36));
  *v47 = v44;
  v47[1] = v46;
  if (v40 >= 3u)
  {
    if (v40 == 3)
    {
      v48 = sub_18AFCC6B4();
    }

    else
    {
      v48 = sub_18AFCC6E4();
    }

    LODWORD(v73) = v48;
  }

  else
  {
    *&v73 = sub_18AFCCD74();
  }

  v49 = sub_18AFCBCD4();
  v50 = v71;
  v51 = v68;
  sub_18AF1DB30(v38, v68, type metadata accessor for ResolvedButtonBorderShape);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8);
  *(v51 + *(v52 + 52)) = v49;
  *(v51 + *(v52 + 56)) = 256;
  v53 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7A8) + 36);
  sub_18AE83A40(v38, v53, &qword_1EA99A758);
  v54 = sub_18AFCDB44();
  v56 = v55;
  sub_18AE7BA80(v38, &qword_1EA99A758);
  v57 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7B0) + 36));
  *v57 = v54;
  v57[1] = v56;
  v58 = 1.0;
  sub_18AFCBB94();
  v59 = v69;
  sub_18AF1DB30(v51, v69, type metadata accessor for ResolvedButtonBorderShape);
  v60 = v70;
  sub_18AE9A768(v51, v59 + *(v70 + 84), &qword_1EA99A760);
  *(v59 + v60[17]) = 0;
  v61 = v59 + v60[19];
  v62 = v74;
  *v61 = v73;
  *(v61 + 16) = v62;
  *(v61 + 32) = v75;
  *(v59 + v60[20]) = 1;
  if (v40 == 1)
  {
    v58 = 0.25;
  }

  sub_18AE9A768(v59, v50, &qword_1EA99A710);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A700);
  *(v50 + *(result + 36)) = v58;
  return result;
}

uint64_t sub_18AF1C614@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v45 = a1;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995A0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A998);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D80);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  v17 = sub_18AFCC6B4();
  v18 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v3, v7, MEMORY[0x1E697EAF0]);
  *&v7[*(v5 + 60)] = v17;
  *&v7[*(v5 + 64)] = 256;
  v19 = sub_18AFCC6D4();
  if (v43)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  sub_18AF1DB30(v7, v10, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A948);
  v22 = &v10[*(v21 + 52)];
  *v22 = v19;
  v22[1] = v20;
  *&v10[*(v21 + 56)] = 256;
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9A8) + 36)];
  sub_18AE83A40(v7, v23, &qword_1EA9995A0);
  v24 = sub_18AFCDB44();
  v26 = v25;
  sub_18AE7BA80(v7, &qword_1EA9995A0);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9B0) + 36));
  *v27 = v24;
  v27[1] = v26;
  if (v45 >= 3u)
  {
    if (v45 == 3)
    {
      v28 = sub_18AFCC6B4();
    }

    else
    {
      v28 = sub_18AFCC6E4();
    }

    LODWORD(v46) = v28;
  }

  else
  {
    *&v46 = sub_18AFCCD74();
  }

  v29 = sub_18AFCBCD4();
  v30 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v10, v13, MEMORY[0x1E697EAF0]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960);
  *&v13[*(v31 + 52)] = v29;
  *&v13[*(v31 + 56)] = 256;
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9B8) + 36)];
  sub_18AE83A40(v10, v32, &qword_1EA99A998);
  v33 = sub_18AFCDB44();
  v35 = v34;
  sub_18AE7BA80(v10, &qword_1EA99A998);
  v36 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9C0) + 36));
  *v36 = v33;
  v36[1] = v35;
  v37 = 1.0;
  sub_18AFCBB94();
  sub_18AF1DB30(v13, v16, v30);
  sub_18AE9A768(v13, &v16[v14[21]], &qword_1EA99A9A0);
  v16[v14[17]] = 0;
  v38 = &v16[v14[19]];
  v39 = v47;
  *v38 = v46;
  *(v38 + 1) = v39;
  *(v38 + 4) = v48;
  v16[v14[20]] = 1;
  if (v45 == 1)
  {
    v37 = 0.5;
  }

  v40 = v44;
  sub_18AE9A768(v16, v44, &qword_1EA998D80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D58);
  *(v40 + *(result + 36)) = v37;
  return result;
}

uint64_t sub_18AF1CAB8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v45 = a1;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A868);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A870);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A128);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  v17 = sub_18AFCC6B4();
  v18 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v3, v7, MEMORY[0x1E6981998]);
  *&v7[*(v5 + 60)] = v17;
  *&v7[*(v5 + 64)] = 256;
  v19 = sub_18AFCC6D4();
  if (v43)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  sub_18AF1DB30(v7, v10, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A818);
  v22 = &v10[*(v21 + 52)];
  *v22 = v19;
  v22[1] = v20;
  *&v10[*(v21 + 56)] = 256;
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A878) + 36)];
  sub_18AE83A40(v7, v23, &qword_1EA998F68);
  v24 = sub_18AFCDB44();
  v26 = v25;
  sub_18AE7BA80(v7, &qword_1EA998F68);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A880) + 36));
  *v27 = v24;
  v27[1] = v26;
  if (v45 >= 3u)
  {
    if (v45 == 3)
    {
      v28 = sub_18AFCC6B4();
    }

    else
    {
      v28 = sub_18AFCC6E4();
    }

    LODWORD(v46) = v28;
  }

  else
  {
    *&v46 = sub_18AFCCD74();
  }

  v29 = sub_18AFCBCD4();
  v30 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v10, v13, MEMORY[0x1E6981998]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  *&v13[*(v31 + 52)] = v29;
  *&v13[*(v31 + 56)] = 256;
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A888) + 36)];
  sub_18AE83A40(v10, v32, &qword_1EA99A868);
  v33 = sub_18AFCDB44();
  v35 = v34;
  sub_18AE7BA80(v10, &qword_1EA99A868);
  v36 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A890) + 36));
  *v36 = v33;
  v36[1] = v35;
  v37 = 1.0;
  sub_18AFCBB94();
  sub_18AF1DB30(v13, v16, v30);
  sub_18AE9A768(v13, &v16[v14[21]], &qword_1EA99A870);
  v16[v14[17]] = 0;
  v38 = &v16[v14[19]];
  v39 = v47;
  *v38 = v46;
  *(v38 + 1) = v39;
  *(v38 + 4) = v48;
  v16[v14[20]] = 1;
  if (v45 == 1)
  {
    v37 = 0.5;
  }

  v40 = v44;
  sub_18AE9A768(v16, v44, &qword_1EA99A128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100);
  *(v40 + *(result + 36)) = v37;
  return result;
}

uint64_t sub_18AF1CF5C@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_18AFCC6B4();
  v7 = sub_18AFCC6D4();
  v8 = sub_18AFCDB44();
  v28 = v9;
  v29 = v8;
  if (a1 >= 3u)
  {
    if (a1 == 3)
    {
      v10 = sub_18AFCC6B4();
    }

    else
    {
      v10 = sub_18AFCC6E4();
    }

    *v33 = v10;
  }

  else
  {
    *v33 = sub_18AFCCD74();
  }

  v11 = sub_18AFCBCD4();
  if (a2)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_18AFCDB44();
  v15 = v14;
  *&v40 = v11;
  WORD4(v40) = 256;
  *&v41 = __PAIR64__(LODWORD(v12), v7);
  WORD4(v41) = 256;
  LODWORD(v42) = v6;
  WORD2(v42) = 256;
  *(&v42 + 1) = v29;
  *&v43 = v28;
  *(&v43 + 1) = v13;
  v44 = v14;
  sub_18AFCBB94();
  *&v56[23] = v41;
  *&v56[39] = v42;
  *&v56[55] = v43;
  *&v56[7] = v40;
  *&v57[7] = v58;
  *&v56[71] = v44;
  *&v57[23] = v59;
  *&v57[39] = v60;
  v45 = v11;
  v46 = 256;
  v47 = v7;
  v48 = v12;
  v49 = 256;
  v50 = v6;
  v51 = 256;
  v52 = v29;
  v53 = v28;
  v54 = v13;
  v55 = v15;
  sub_18AE83A40(&v40, v33, &qword_1EA99A908);
  sub_18AE7BA80(&v45, &qword_1EA99A908);
  v31[0] = 0;
  v16 = 0.5;
  if (a1 != 1)
  {
    v16 = 1.0;
  }

  *&v31[1] = *v57;
  v17 = *v57;
  v18 = *&v57[16];
  *&v31[17] = *&v57[16];
  *&v31[32] = *&v57[31];
  v32[0] = 1;
  *&v32[33] = *&v56[32];
  v20 = *&v56[16];
  v19 = *&v56[32];
  *&v32[17] = *&v56[16];
  v21 = *v56;
  *&v32[1] = *v56;
  v22 = *&v56[48];
  *&v32[49] = *&v56[48];
  *&v32[64] = *&v56[63];
  v23 = *&v32[32];
  *(a3 + 64) = *&v32[16];
  *(a3 + 80) = v23;
  v24 = *&v32[64];
  *(a3 + 96) = *&v32[48];
  *(a3 + 112) = v24;
  v25 = *&v31[16];
  *a3 = *v31;
  *(a3 + 16) = v25;
  v26 = *v32;
  *(a3 + 32) = *&v31[32];
  *(a3 + 48) = v26;
  *(a3 + 128) = v16;
  *&v34[15] = *&v57[31];
  *v34 = v18;
  *&v33[1] = v17;
  v33[0] = 0;
  v35 = 1;
  v36 = v21;
  *&v39[15] = *&v56[63];
  *v39 = v22;
  v38 = v19;
  v37 = v20;
  sub_18AE83A40(v31, v30, &qword_1EA999D20);
  return sub_18AE7BA80(v33, &qword_1EA999D20);
}

uint64_t sub_18AF1D228@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v43 = a1;
  v42 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7B8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6F0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  v17 = sub_18AFCC6B4();
  sub_18AF1DB30(v3, v7, type metadata accessor for ResolvedButtonBorderShape);
  *&v7[*(v5 + 60)] = v17;
  *&v7[*(v5 + 64)] = 256;
  v18 = sub_18AFCC6D4();
  if (v41)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  sub_18AF1DB30(v7, v10, type metadata accessor for ResolvedButtonBorderShape);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A768);
  v21 = &v10[*(v20 + 52)];
  *v21 = v18;
  v21[1] = v19;
  *&v10[*(v20 + 56)] = 256;
  v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7D0) + 36)];
  sub_18AE83A40(v7, v22, &qword_1EA99A7B8);
  v23 = sub_18AFCDB44();
  v25 = v24;
  sub_18AE7BA80(v7, &qword_1EA99A7B8);
  v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7D8) + 36));
  *v26 = v23;
  v26[1] = v25;
  if (v43 >= 3u)
  {
    if (v43 == 3)
    {
      v27 = sub_18AFCC6B4();
    }

    else
    {
      v27 = sub_18AFCC6E4();
    }

    LODWORD(v44) = v27;
  }

  else
  {
    *&v44 = sub_18AFCCD74();
  }

  v28 = sub_18AFCBCD4();
  sub_18AF1DB30(v10, v13, type metadata accessor for ResolvedButtonBorderShape);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8);
  *&v13[*(v29 + 52)] = v28;
  *&v13[*(v29 + 56)] = 256;
  v30 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7E0) + 36)];
  sub_18AE83A40(v10, v30, &qword_1EA99A7C0);
  v31 = sub_18AFCDB44();
  v33 = v32;
  sub_18AE7BA80(v10, &qword_1EA99A7C0);
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7E8) + 36));
  *v34 = v31;
  v34[1] = v33;
  v35 = 1.0;
  sub_18AFCBB94();
  sub_18AF1DB30(v13, v16, type metadata accessor for ResolvedButtonBorderShape);
  sub_18AE9A768(v13, &v16[v14[21]], &qword_1EA99A7C8);
  v16[v14[17]] = 0;
  v36 = &v16[v14[19]];
  v37 = v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  *(v36 + 4) = v46;
  v16[v14[20]] = 1;
  if (v43 == 1)
  {
    v35 = 0.5;
  }

  v38 = v42;
  sub_18AE9A768(v16, v42, &qword_1EA99A6F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6E0);
  *(v38 + *(result + 36)) = v35;
  return result;
}

unint64_t sub_18AF1D6D8()
{
  result = qword_1EA99A6B0;
  if (!qword_1EA99A6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A6A8);
    sub_18AF1D7BC(&qword_1EA99A6B8, &qword_1EA99A6C0, &unk_18AFD8530, sub_18AF1D840);
    sub_18AE95F54(&qword_1EA99A718, &qword_1EA99A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6B0);
  }

  return result;
}

uint64_t sub_18AF1D7BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_18AF1D840()
{
  result = qword_1EA99A6C8;
  if (!qword_1EA99A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A6D0);
    sub_18AF1D8CC();
    sub_18AF1D984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6C8);
  }

  return result;
}

unint64_t sub_18AF1D8CC()
{
  result = qword_1EA99A6D8;
  if (!qword_1EA99A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A6E0);
    sub_18AE95F54(&qword_1EA99A6E8, &qword_1EA99A6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6D8);
  }

  return result;
}

unint64_t sub_18AF1D984()
{
  result = qword_1EA99A6F8;
  if (!qword_1EA99A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A700);
    sub_18AE95F54(&qword_1EA99A708, &qword_1EA99A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6F8);
  }

  return result;
}

void sub_18AF1DA70()
{
  sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_18AF1DB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MacSegmentedControlNavigationSelectionView()
{
  result = qword_1EA99A9C8;
  if (!qword_1EA99A9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF1DC0C()
{
  sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_18AF1DD10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA60);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_18AFCCD94();
  (*(v4 + 16))(v6, v21, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E697DBA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  v15 = sub_18AFCCDA4();

  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v9 = v15;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  sub_18AE9A768(v9, v11, &qword_1EA999AA8);
  v16 = MEMORY[0x1E6981998];
  sub_18AF1F2E8(v23, v14, MEMORY[0x1E6981998]);
  sub_18AE9A768(v11, &v14[*(v12 + 52)], &qword_1EA99AA40);
  *&v14[*(v12 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF1F2E8(v14, a2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99AA68);
  sub_18AE9A768(v14, a2 + v17[21], &qword_1EA99AA60);
  *(a2 + v17[17]) = 0;
  v18 = a2 + v17[19];
  result = *&v24;
  v20 = v25;
  *v18 = v24;
  *(v18 + 16) = v20;
  *(v18 + 32) = v26;
  *(a2 + v17[20]) = 1;
  return result;
}

double sub_18AF1E10C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA48);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_18AFCCD94();
  (*(v4 + 16))(v6, v21, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E697DBA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  v15 = sub_18AFCCDA4();

  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v9 = v15;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  sub_18AE9A768(v9, v11, &qword_1EA999AA8);
  v16 = MEMORY[0x1E697EAF0];
  sub_18AF1F2E8(v23, v14, MEMORY[0x1E697EAF0]);
  sub_18AE9A768(v11, &v14[*(v12 + 52)], &qword_1EA99AA40);
  *&v14[*(v12 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF1F2E8(v14, a2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA00);
  sub_18AE9A768(v14, a2 + v17[21], &qword_1EA99AA48);
  *(a2 + v17[17]) = 0;
  v18 = a2 + v17[19];
  result = *&v24;
  v20 = v25;
  *v18 = v24;
  *(v18 + 16) = v20;
  *(v18 + 32) = v26;
  *(a2 + v17[20]) = 1;
  return result;
}

uint64_t sub_18AF1E508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v71 = &v52 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9F8);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v52 - v11;
  v12 = sub_18AFCC5C4();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFCBB34();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA08);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v59 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v52 - v26;
  sub_18AFCDF14();
  v67 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for MacSegmentedControlNavigationSelectionView();
  v28 = qword_18AFD8B38[*(a1 + v27[7])];
  v29 = *(v17 + 20);
  v55 = *MEMORY[0x1E697F468];
  v30 = v55;
  v31 = sub_18AFCC534();
  v32 = *(v31 - 8);
  v54 = *(v32 + 104);
  v56 = v32 + 104;
  v54(&v21[v29], v30, v31);
  *v21 = v28;
  *(v21 + 1) = v28;
  v53 = v17;
  v33 = v27[6];
  v34 = *(a1 + v33);
  sub_18AED2E48(v16);
  v35 = v57;
  sub_18AED2E70(v57);
  v36 = v58;
  v37 = sub_18AF1E10C(v16, v58);
  (*(v64 + 8))(v35, v65, v37);
  (*(v62 + 8))(v16, v63);
  sub_18AEE20A8(v21);
  if (v34 == 3)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 1.0;
  }

  v39 = v59;
  sub_18AE9A768(v36, v59, &qword_1EA99AA00);
  *(v39 + *(v60 + 36)) = v38;
  v40 = v66;
  sub_18AE9A768(v39, v66, &qword_1EA99AA08);
  v41 = v61;
  v54(&v61[*(v53 + 20)], v55, v31);
  *v41 = v28;
  v41[1] = v28;
  v42 = *(a1 + v33);
  v43 = v71;
  sub_18AF1EBBC(v42, v71);
  sub_18AEE20A8(v41);
  if (*(a1 + v27[9]))
  {
    v44 = 1.0;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = v69;
  sub_18AE9A768(v43, v69, &qword_1EA99A9F0);
  *(v45 + *(v70 + 36)) = v44;
  v46 = v72;
  sub_18AE9A768(v45, v72, &qword_1EA99A9F8);
  v47 = v68;
  sub_18AF1F168(v40, v68);
  v48 = v73;
  sub_18AEA3F8C(v46, v73);
  v49 = v74;
  sub_18AF1F168(v47, v74);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA10);
  sub_18AEA3F8C(v48, v49 + *(v50 + 48));
  sub_18AEA3FFC(v46);
  sub_18AE7BA80(v40, &qword_1EA99AA08);
  sub_18AEA3FFC(v48);
  sub_18AE7BA80(v47, &qword_1EA99AA08);
}

uint64_t sub_18AF1EBBC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v29 = a1;
  v25 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCDD64();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_18AFCDAD4();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA18);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA20);
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - v14;
  v16 = sub_18AFCCD74();
  v17 = MEMORY[0x1E697EAF0];
  sub_18AF1F2E8(v3, v12, MEMORY[0x1E697EAF0]);
  *&v12[*(v10 + 52)] = v16;
  *&v12[*(v10 + 56)] = 256;
  sub_18AF46584(0, 0, 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA28);
  sub_18AFCDD34();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AF1F2E8(v3, v23, v17);
  sub_18AF1F1D8();
  sub_18AFCDD44();
  v18 = 0.0;
  sub_18AFCDD54();
  sub_18AE95F54(&qword_1EA99AA38, &qword_1EA99AA18);
  sub_18AFCCB34();
  (*(v27 + 8))(v7, v28);
  (*(v24 + 8))(v9, v26);
  sub_18AE7BA80(v12, &qword_1EA99AA18);
  if (v29 == 3)
  {
    v18 = 1.0;
  }

  v19 = v30;
  (*(v13 + 32))(v30, v15, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9F0);
  *(v19 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_18AF1F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v17 - v6);
  *v7 = sub_18AFCDB44();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9E0);
  sub_18AF1E508(v2, v7 + *(v9 + 44));
  v10 = 1.0;
  if (*(v2 + *(a1 + 36)) == 1)
  {
    if (*(v2 + *(a1 + 24)) == 3)
    {
      v10 = 1.4;
    }

    else
    {
      v10 = 1.0;
    }
  }

  sub_18AFCDD04();
  v12 = v11;
  v14 = v13;
  sub_18AE9A768(v7, a2, &qword_1EA99A9D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9E8);
  v16 = a2 + *(result + 36);
  *v16 = v10;
  *(v16 + 8) = v10;
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  return result;
}

uint64_t sub_18AF1F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF1F1D8()
{
  result = qword_1EA99AA30;
  if (!qword_1EA99AA30)
  {
    sub_18AFCC184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AA30);
  }

  return result;
}

unint64_t sub_18AF1F230()
{
  result = qword_1EA99AA50;
  if (!qword_1EA99AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A9E8);
    sub_18AE95F54(&qword_1EA99AA58, &qword_1EA99A9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AA50);
  }

  return result;
}

uint64_t sub_18AF1F2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_18AF1F350()
{
  sub_18AEAC148();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_18AF1FB70();
          if (v4 <= 0x3F)
          {
            sub_18AF1FBC0();
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

uint64_t sub_18AF1F448(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v6 = *(*(sub_18AFCC024() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3[5] - 8);
  v9 = *(v8 + 84);
  v10 = a3[2];
  v11 = a3[3];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  v17 = *(v8 + 80);
  v18 = *(*(a3[5] - 8) + 64);
  v19 = *(v12 + 80);
  v20 = *(*(a3[2] - 8) + 64);
  v21 = *(v15 + 80);
  if (v14 <= v16)
  {
    v22 = *(v15 + 84);
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v20 + v21;
  v24 = *(*(v11 - 8) + 64) + 7;
  if (v22 >= a2)
  {
    goto LABEL_36;
  }

  v25 = ((((v24 + ((v23 + ((v18 + v19 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v17 + 25) & ~v17)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v26 = (a2 - v22 + 255) >> 8;
  if (v25 <= 3)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 2;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_36;
    }

    v30 = a1[v25];
    if (!a1[v25])
    {
      goto LABEL_36;
    }

LABEL_32:
    v32 = (v30 - 1) << (8 * v25);
    if (v25 <= 3)
    {
      v33 = *a1;
    }

    else
    {
      v32 = 0;
      v33 = *a1;
    }

    return v22 + (v33 | v32) + 1;
  }

  if (v29 == 2)
  {
    v30 = *&a1[v25];
    if (*&a1[v25])
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = *&a1[v25];
    if (v30)
    {
      goto LABEL_32;
    }
  }

LABEL_36:
  v34 = ((&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + v17 + 17) & ~v17;
  if (v9 == v22)
  {
    v35 = *(v8 + 48);

    return v35(v34);
  }

  v36 = (v34 + v18 + v19) & ~v19;
  if (v13 == v22)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = v10;

    return v37(v36, v38, v39);
  }

  v36 = (v23 + v36) & ~v21;
  if (v16 == v22)
  {
    v37 = *(v15 + 48);
    v38 = *(v15 + 84);
    v39 = v11;

    return v37(v36, v38, v39);
  }

  v40 = *((v24 + v36) & 0xFFFFFFFFFFFFFFF8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_18AF1F7A8(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(*(sub_18AFCC024() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4[5] - 8);
  v11 = a4[3];
  v12 = *(v10 + 84);
  v13 = *(a4[2] - 8);
  v14 = *(v13 + 84);
  if (v12 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v10 + 80);
  v19 = *(*(a4[5] - 8) + 64);
  v20 = *(v13 + 80);
  v21 = *(*(a4[2] - 8) + 64);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  if (v15 <= v17)
  {
    v24 = *(v16 + 84);
  }

  else
  {
    v24 = v15;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  v25 = v21 + v22;
  v26 = v23 + 7;
  v27 = ((((v23 + 7 + ((v21 + v22 + ((v19 + v20 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v18 + 25) & ~v18)) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 >= a3)
  {
    v29 = 0;
    if (v24 >= a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v27 <= 3)
    {
      v28 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 < 2)
    {
      v29 = 0;
    }

    if (v24 >= a2)
    {
LABEL_24:
      if (v29 > 1)
      {
        if (v29 != 2)
        {
          *&a1[v27] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *&a1[v27] = 0;
      }

      else if (v29)
      {
        a1[v27] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!a2)
      {
        return;
      }

LABEL_39:
      v32 = ((&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8) + v18 + 17) & ~v18;
      if (v12 == v24)
      {
        v33 = *(v10 + 56);

        v33(v32, a2, v12);
      }

      else
      {
        v34 = (v32 + v19 + v20) & ~v20;
        if (v14 == v24)
        {
          v35 = *(v13 + 56);

          v35(v34, a2);
        }

        else
        {
          v36 = (v25 + v34) & ~v22;
          if (v17 == v24)
          {
            v37 = *(v16 + 56);

            v37(v36, a2, v17, v11);
          }

          else
          {
            v38 = ((v26 + v36) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v38 = a2 & 0x7FFFFFFF;
              v38[1] = 0;
            }

            else
            {
              *v38 = (a2 - 1);
            }
          }
        }
      }

      return;
    }
  }

  v30 = ~v24 + a2;
  bzero(a1, v27);
  if (v27 <= 3)
  {
    v31 = (v30 >> 8) + 1;
  }

  else
  {
    v31 = 1;
  }

  if (v27 <= 3)
  {
    *a1 = v30;
    if (v29 > 1)
    {
LABEL_34:
      if (v29 == 2)
      {
        *&a1[v27] = v31;
      }

      else
      {
        *&a1[v27] = v31;
      }

      return;
    }
  }

  else
  {
    *a1 = v30;
    if (v29 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v29)
  {
    a1[v27] = v31;
  }
}

unint64_t sub_18AF1FB70()
{
  result = qword_1EA99AAF0;
  if (!qword_1EA99AAF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EA99AAF0);
  }

  return result;
}

void sub_18AF1FBC0()
{
  if (!qword_1EA998000)
  {
    v0 = sub_18AFCE074();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA998000);
    }
  }
}

uint64_t sub_18AF1FC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18AFCE074();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_18AF1FCC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t)@<X6>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 1);
  v17 = a1[4];
  v18 = *(a1 + 1);
  v27 = a1[16];
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979B8);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for MacSegmentedControlComposer();
  v20 = a7 + v19[26];
  v21 = a7 + v19[21];
  *v21 = v14;
  v21[1] = v15;
  *(v21 + 1) = v16;
  v21[4] = v17;
  *(v21 + 1) = v18;
  v21[16] = v27;
  *v20 = a2;
  v20[8] = a3 & 1;
  v22 = *(a13 - 8);
  v23 = (*(v22 + 16))(a7 + v19[22], a4, a13);
  v24 = a5(v23);
  a6(v24);
  result = (*(v22 + 8))(a4, a13);
  v26 = (a7 + v19[25]);
  *v26 = a8;
  v26[1] = a9;
  return result;
}

uint64_t sub_18AF1FEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v65 = *(a1 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v60 = *(v4 + 48);
  v63 = type metadata accessor for MacSegmentedControlLayout();
  WitnessTable = swift_getWitnessTable();
  v48 = sub_18AFCD134();
  v67 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v69 = &v45 - v6;
  v72 = *(a1 + 32);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
  sub_18AFCC044();
  v71 = *(a1 + 64);
  v101 = v71;
  v7 = MEMORY[0x1E697E858];
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x1E697E040];
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697E270];
  v61 = v7;
  v8 = swift_getWitnessTable();
  v9 = sub_18AF21FEC();
  v95 = v8;
  v96 = v9;
  swift_getWitnessTable();
  sub_18AFCBE74();
  sub_18AFCE074();
  v10 = sub_18AFCE074();
  v11 = sub_18AEC45F4();
  v49 = v11;
  v94 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v53 = v10;
  v50 = swift_getWitnessTable();
  v89 = &type metadata for SegmentBoundsPreferenceKey;
  v90 = v10;
  v91 = v11;
  v92 = v50;
  v54 = sub_18AFCC7A4();
  v52 = sub_18AFCC044();
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v12 = a1;
  v13 = *(a1 + 24);
  v46 = *(a1 + 56);
  v14 = v46;
  v47 = &v45 - v15;
  v56 = sub_18AFCC5F4();
  v57 = sub_18AFCC044();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v45 - v18;
  v19 = v5;
  *&v20 = v5;
  *(&v20 + 1) = v13;
  v80 = v20;
  v81 = v72;
  v21 = v60;
  *&v20 = v60;
  *(&v20 + 1) = v14;
  v82 = v20;
  v83 = v71;
  v22 = v70;
  v84 = v70;
  sub_18AFCC504();
  sub_18AFCD124();
  v23 = sub_18AFCDB54();
  WitnessTable = v24;
  v63 = v23;
  v26 = v64;
  v25 = v65;
  (*(v65 + 16))(v64, v22, a1);
  v27 = (*(v25 + 80) + 80) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v19;
  *(v28 + 24) = v13;
  v45 = v13;
  v29 = v71;
  *(v28 + 32) = v72;
  v30 = v46;
  *(v28 + 48) = v21;
  *(v28 + 56) = v30;
  *(v28 + 64) = v29;
  (*(v25 + 32))(v28 + v27, v26, v12);
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v47;
  v34 = v69;
  sub_18AFCCB94();

  (*(v67 + 8))(v34, v31);
  v73 = v19;
  v74 = v13;
  v75 = v72;
  v76 = v21;
  v77 = v30;
  v78 = v71;
  v79 = v70;
  sub_18AFCDB44();
  v35 = swift_getWitnessTable();
  v87 = v32;
  v88 = v35;
  v36 = v52;
  v37 = swift_getWitnessTable();
  v38 = v51;
  sub_18AFCCA64();
  (*(v58 + 8))(v33, v36);
  v39 = swift_getWitnessTable();
  v85 = v37;
  v86 = v39;
  v40 = v57;
  v41 = swift_getWitnessTable();
  v42 = v55;
  sub_18AEADA5C(v38, v40, v41);
  v43 = *(v59 + 8);
  v43(v38, v40);
  sub_18AEADA5C(v42, v40, v41);
  return (v43)(v42, v40);
}

uint64_t sub_18AF20614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a7;
  v37 = a8;
  v35 = a1;
  v39 = a9;
  v33 = a10;
  v15 = type metadata accessor for MacSegmentedControlLayout();
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v32 = v31 - v19;
  sub_18AFCDF14();
  v38 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40[0] = a2;
  v40[1] = a3;
  v40[2] = a4;
  v40[3] = a5;
  v20 = v36;
  v21 = v37;
  v40[4] = a6;
  v40[5] = v36;
  v22 = a6;
  v23 = v33;
  v40[6] = v37;
  v40[7] = v33;
  v24 = type metadata accessor for MacSegmentedControlComposer();
  v31[1] = v31;
  LOBYTE(v40[0]) = *(v35 + *(v24 + 84) + 2);
  MEMORY[0x1EEE9AC00](v24);
  v31[-10] = a2;
  v31[-9] = a3;
  v31[-8] = a4;
  v31[-7] = a5;
  v31[-6] = v22;
  v31[-5] = v20;
  v31[-4] = v21;
  v31[-3] = v23;
  v31[-2] = v25;
  sub_18AF0EDC8(v40, v26, sub_18AF22270, v17);
  WitnessTable = swift_getWitnessTable();
  v28 = v32;
  sub_18AEADA5C(v17, v15, WitnessTable);
  v29 = *(v34 + 8);
  v29(v17, v15);
  sub_18AEADA5C(v28, v15, WitnessTable);
  v29(v28, v15);
}

uint64_t sub_18AF208AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v22[6] = v18;
  v22[7] = v19;
  v20 = type metadata accessor for MacSegmentedControlComposer();
  sub_18AEADA5C(a1 + *(v20 + 92), a2, a6);
  sub_18AEADA5C(v11, a2, a6);
  return (*(v9 + 8))(v11, a2);
}

uint64_t sub_18AF209C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v74 = a9;
  *&v124 = a3;
  *(&v124 + 1) = a4;
  v68 = a4;
  v69 = a7;
  v125 = a5;
  v126 = a6;
  v75 = a6;
  v127 = a7;
  v128 = a8;
  v70 = a8;
  v71 = a10;
  v129 = a10;
  v130 = a11;
  *&v72 = a11;
  v15 = type metadata accessor for MacSegmentedControlComposer();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v19 = *a1;
  sub_18AFCDF14();
  v73 = sub_18AFCDF04();
  sub_18AFCDED4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v21 = *(a2 + *(v15 + 84) + 3);
  v76 = a5;
  if (v21)
  {
    v123 = xmmword_18AFD8B80;
    v22 = MEMORY[0x1E697E040];
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
    sub_18AFCC044();
    v23 = v71;
    v24 = v72;
    v121 = v71;
    v122 = v72;
    WitnessTable = swift_getWitnessTable();
    v120 = v22;
    v117 = swift_getWitnessTable();
    v118 = MEMORY[0x1E697E270];
    v25 = swift_getWitnessTable();
    v26 = sub_18AF21FEC();
    v115 = v25;
    v116 = v26;
    swift_getWitnessTable();
    sub_18AFCBE74();
    sub_18AFCE074();
    v114 = swift_getWitnessTable();
    swift_getWitnessTable();
    v27 = sub_18AFCE074();
    (*(*(v27 - 8) + 16))(&v124, &v123, v27);
    v28 = v124;
LABEL_11:
    v72 = v28;
    v124 = v28;
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
    sub_18AFCC044();
    v112 = v23;
    v113 = v24;
    v110 = swift_getWitnessTable();
    v111 = MEMORY[0x1E697E040];
    v108 = swift_getWitnessTable();
    v109 = MEMORY[0x1E697E270];
    v58 = swift_getWitnessTable();
    v59 = sub_18AF21FEC();
    v106 = v58;
    v107 = v59;
    swift_getWitnessTable();
    sub_18AFCBE74();
    sub_18AFCE074();
    v60 = sub_18AFCE074();
    v105 = swift_getWitnessTable();
    v104 = swift_getWitnessTable();
    v61 = swift_getWitnessTable();
    sub_18AEADA5C(&v124, v60, v61);
    sub_18AF22154(v72);
  }

  v29 = (a2 + *(v15 + 104));
  if ((v29[1] & 1) != 0 || (v30 = *v29, *v29 >= *(v19 + 16)))
  {
    v48 = MEMORY[0x1E697E040];
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    v123 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
    sub_18AFCC044();
    v23 = v71;
    v24 = v72;
    v102 = v71;
    v103 = v72;
    v100 = swift_getWitnessTable();
    v101 = v48;
    v98 = swift_getWitnessTable();
    v99 = MEMORY[0x1E697E270];
    v49 = swift_getWitnessTable();
    v50 = sub_18AF21FEC();
    v96 = v49;
    v97 = v50;
    swift_getWitnessTable();
    sub_18AFCBE74();
    swift_getWitnessTable();
    v51 = sub_18AFCE074();
    (*(*(v51 - 8) + 16))(&v124, &v123, v51);
    v47 = v124;
    goto LABEL_10;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = *(v19 + 8 * v30 + 32);
    v65 = v19;
    v66 = v31;
    v32 = v67;
    v64 = v30;
    (*(v67 + 16))(v18, a2, v15);
    v62 = (*(v32 + 80) + 88) & ~*(v32 + 80);
    v63 = (v16 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v68;
    v36 = v69;
    *(v34 + 2) = a3;
    *(v34 + 3) = v35;
    v37 = v75;
    *(v34 + 4) = a5;
    *(v34 + 5) = v37;
    v38 = v70;
    v39 = v71;
    *(v34 + 6) = v36;
    *(v34 + 7) = v38;
    v24 = v72;
    *(v34 + 8) = v39;
    *(v34 + 9) = v24;
    *(v34 + 10) = v66;
    (*(v32 + 32))(&v34[v62], v18, v15);
    v40 = v64;
    *&v34[v63] = v65;
    *&v34[v33] = v40;
    v23 = v39;
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
    sub_18AFCC044();
    v84 = v39;
    v85 = v24;
    v82 = swift_getWitnessTable();
    v83 = MEMORY[0x1E697E040];
    v80 = swift_getWitnessTable();
    v81 = MEMORY[0x1E697E270];
    v41 = swift_getWitnessTable();
    v42 = sub_18AF21FEC();
    v78 = v41;
    v79 = v42;
    swift_getWitnessTable();
    *&v123 = sub_18AFCBE64();
    *(&v123 + 1) = v43;
    v44 = sub_18AFCBE74();
    v45 = swift_getWitnessTable();
    sub_18AEADA5C(&v123, v44, v45);

    v86 = v124;
    sub_18AEADA5C(&v86, v44, v45);

    v77 = v123;
    v46 = sub_18AFCE074();
    (*(*(v46 - 8) + 16))(&v86, &v77, v46);

    v47 = v86;
LABEL_10:
    v72 = v47;
    v123 = v47;
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
    sub_18AFCC044();
    v94 = v23;
    v95 = v24;
    v92 = swift_getWitnessTable();
    v93 = MEMORY[0x1E697E040];
    v90 = swift_getWitnessTable();
    v91 = MEMORY[0x1E697E270];
    v52 = swift_getWitnessTable();
    v53 = sub_18AF21FEC();
    v88 = v52;
    v89 = v53;
    swift_getWitnessTable();
    sub_18AFCBE74();
    v54 = sub_18AFCE074();
    v87 = swift_getWitnessTable();
    v55 = swift_getWitnessTable();
    sub_18AEADA5C(&v123, v54, v55);
    sub_18AEC5630(v72);
    v56 = v124;
    v86 = v124;
    v57 = sub_18AFCE074();
    (*(*(v57 - 8) + 16))(&v123, &v86, v57);
    sub_18AEC5630(v56);
    v28 = v123;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_18AF214B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double a4@<X4>, double a5@<X5>, double a6@<X6>, CGFloat a7@<X7>, uint64_t a8@<X8>, CGFloat a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a6;
  v78 = a5;
  v74 = a4;
  v64 = a3;
  v89 = a2;
  v75 = a8;
  v83 = a13;
  v81 = a12;
  v77 = a11;
  v86 = sub_18AFCC024();
  v82 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v84 = v63 - v17;
  v76 = *(*&a7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18AFCC044();
  v80 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v63 - v22;
  v24 = sub_18AFCC044();
  v65 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v88 = v63 - v25;
  v66 = v26;
  v27 = sub_18AFCC044();
  v70 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v87 = v63 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
  v71 = v27;
  v73 = sub_18AFCC044();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v68 = v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v69 = v63 - v31;
  sub_18AFCDF14();
  v67 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CGRect(0);
  v63[1] = v32;
  v63[2] = a1;
  sub_18AFCBD14();
  x = v98.origin.x;
  y = v98.origin.y;
  width = v98.size.width;
  height = v98.size.height;
  v98.origin.x = v78;
  v98.origin.y = v79;
  v98.size.width = a7;
  v98.size.height = a9;
  v99 = a10;
  v100 = v77;
  v37 = v81;
  v38 = v83;
  v101 = v81;
  v102 = v83;
  *&v39 = COERCE_DOUBLE(type metadata accessor for MacSegmentedControlComposer());
  v40 = v89;
  (*(v89 + *(v39 + 100)))();
  v79 = *&v39;
  MEMORY[0x18CFEBFA0](v40 + *(v39 + 88), *&a7, *&a9, v37);
  (*(v76 + 8))(v20, COERCE_CGFLOAT(*&a7));
  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = width;
  v103.size.height = height;
  CGRectGetWidth(v103);
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  CGRectGetHeight(v104);
  sub_18AFCDB44();
  v96 = v37;
  v97 = v38;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCBB4();
  (*(v80 + 8))(v23, v21);
  v42 = v84;
  sub_18AED2AB4(v84);
  v43 = v82;
  v44 = v85;
  v45 = v86;
  (*(v82 + 104))(v85, *MEMORY[0x1E697E7D0], v86);
  v46 = sub_18AFCC014();
  v47 = *(v43 + 8);
  v47(v44, v45);
  result = (v47)(v42, v45);
  if (v46)
  {
    v105.origin.x = x;
    v105.origin.y = y;
    v105.size.width = width;
    v105.size.height = height;
    CGRectGetMinX(v105);
    v49 = v87;
  }

  else
  {
    v49 = v87;
    if (!*(v64 + 16))
    {
      __break(1u);
      return result;
    }

    sub_18AFCBD14();

    CGRectGetMaxX(v98);
    v106.origin.x = x;
    v106.origin.y = y;
    v106.size.width = width;
    v106.size.height = height;
    CGRectGetMinX(v106);
    v107.origin.x = x;
    v107.origin.y = y;
    v107.size.width = width;
    v107.size.height = height;
    CGRectGetWidth(v107);
  }

  v94 = WitnessTable;
  v95 = MEMORY[0x1E697E040];
  v50 = v66;
  v51 = swift_getWitnessTable();
  v52 = v88;
  sub_18AFCCBD4();
  v53 = (*(v65 + 8))(v52, v50);
  v54 = (v89 + *(*&v79 + 84));
  if (*v54 == 1 && (v54[1] & 1) == 0)
  {
    MEMORY[0x18CFECEE0](v53, 0.35, 1.0, 0.0);
  }

  v98.origin.x = v74;
  v92 = v51;
  v93 = MEMORY[0x1E697E270];
  v55 = v71;
  v56 = swift_getWitnessTable();
  v57 = v68;
  sub_18AFCCC64();

  (*(v70 + 8))(v49, v55);
  v58 = sub_18AF21FEC();
  v90 = v56;
  v91 = v58;
  v59 = v73;
  v60 = swift_getWitnessTable();
  v61 = v69;
  sub_18AEADA5C(v57, v59, v60);
  v62 = *(v72 + 8);
  v62(v57, v59);
  sub_18AEADA5C(v61, v59, v60);
  v62(v61, v59);
}

uint64_t sub_18AF21E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v21 = a6;
  v22 = a8;
  v20 = a5;
  v23 = a1;
  v24 = a9;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = v20;
  v29 = v21;
  v30 = a7;
  v31 = v22;
  v32 = a10;
  v17 = type metadata accessor for MacSegmentedControlComposer();
  sub_18AEADA5C(v23 + *(v17 + 96), a3, a7);
  sub_18AEADA5C(v16, a3, a7);
  (*(v14 + 8))(v16, a3);
}

unint64_t sub_18AF21FEC()
{
  result = qword_1EA99AB00;
  if (!qword_1EA99AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AB00);
  }

  return result;
}

uint64_t sub_18AF22068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for MacSegmentedControlComposer() - 8);
  return sub_18AF209C0(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_18AF22154(uint64_t result)
{
  if (result != 1)
  {
    return sub_18AEC5630(result);
  }

  return result;
}

uint64_t sub_18AF22164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v11 = *(v2 + 8);
  v10 = *(v2 + 9);
  v12 = *(type metadata accessor for MacSegmentedControlComposer() - 8);
  v13 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_18AF214B8(a1, v2 + v13, *(v2 + v14), *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), v4, v5, v6, a2, v7, v8, v9, v11, v10);
}

uint64_t type metadata accessor for MacGladeSwitch()
{
  result = qword_1EA997898;
  if (!qword_1EA997898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF2233C()
{
  sub_18AEDCEE0(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_18AEDCEE0(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_18AEB31C4();
      if (v2 <= 0x3F)
      {
        sub_18AEDCEE0(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AF22480@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = sub_18AFCBB34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v76 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v76 - v9;
  v11 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  MEMORY[0x1EEE9AC00](v82);
  v15 = &v76 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB08);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB10);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v83 = &v76 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB18);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v76 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB20);
  MEMORY[0x1EEE9AC00](v84);
  v88 = &v76 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB28);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v76 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB30);
  MEMORY[0x1EEE9AC00](v89);
  v93 = &v76 - v24;
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  v27 = *(*(v26 - 8) + 104);
  v78 = v13;
  v27(v13, v25, v26);
  v81 = type metadata accessor for MacGladeSwitch();
  v28 = (v3 + 88);
  v92 = *(v1 + *(v81 + 44));
  v94 = v2;
  v76 = v3;
  if (v92 != 1)
  {
    sub_18AED2E48(v7);
    v34 = *v28;
    v79 = v28 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v80 = v34;
    v31 = v34(v7, v2);
    if (v31 == *MEMORY[0x1E697DBB8])
    {
      v33 = sub_18AF233C4(v1, MEMORY[0x1E6981DA0]);
      goto LABEL_6;
    }

    v37 = v7;
    v32 = *MEMORY[0x1E697DBB8];
    if (v31 != *MEMORY[0x1E697DBA8])
    {
      (*(v3 + 8))(v37, v2);
    }

    v36 = sub_18AF233C4(v1, MEMORY[0x1E6981DB8]);
LABEL_13:
    v35 = v36;
    v77 = v32;
    goto LABEL_14;
  }

  sub_18AED2E48(v10);
  v29 = *v28;
  v79 = v28 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v80 = v29;
  v30 = v29(v10, v2);
  v31 = v30;
  v32 = *MEMORY[0x1E697DBB8];
  if (v30 != *MEMORY[0x1E697DBB8])
  {
    if (v30 != *MEMORY[0x1E697DBA8])
    {
      (*(v3 + 8))(v10, v2);
    }

    v36 = sub_18AF22E98(v1, MEMORY[0x1E6981DB8]);
    goto LABEL_13;
  }

  v33 = sub_18AF22E98(v1, MEMORY[0x1E6981DA0]);
LABEL_6:
  v35 = v33;
  v77 = v31;
LABEL_14:
  sub_18AEE00B8(v78, v15);
  v38 = v82;
  *&v15[*(v82 + 52)] = v35;
  *&v15[*(v38 + 56)] = 256;
  v39 = 1.0;
  v40 = sub_18AF27338(v1, MEMORY[0x1E6981DB8]);
  sub_18AEF0D24(v15, v18);
  *&v18[*(v38 + 52)] = v40;
  *&v18[*(v38 + 56)] = 256;
  v41 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB38) + 36)];
  sub_18AE83A40(v15, v41, &qword_1EA999778);
  v42 = v1;
  v43 = sub_18AFCDB44();
  v45 = v44;
  sub_18AE7BA80(v15, &qword_1EA999778);
  v46 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0) + 36));
  *v46 = v43;
  v46[1] = v45;
  v47 = sub_18AF23A84();
  v48 = v83;
  sub_18AEF0D24(v18, v83);
  *(v48 + *(v38 + 52)) = v47;
  *(v48 + *(v38 + 56)) = 256;
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB40) + 36);
  sub_18AE83A40(v18, v49, &qword_1EA99AB08);
  v50 = sub_18AFCDB44();
  v52 = v51;
  sub_18AE7BA80(v18, &qword_1EA99AB08);
  v53 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB48) + 36));
  *v53 = v50;
  v53[1] = v52;
  v54 = v91;
  sub_18AED2E48(v91);
  v55 = v94;
  v56 = v80(v54, v94);
  if (v56 != v77 && v56 != *MEMORY[0x1E697DBA8])
  {
    (*(v76 + 8))(v54, v55, 1.0);
  }

  v57 = sub_18AF23EF8(v42);
  sub_18AFCBB94();
  v58 = v85;
  sub_18AEF0D24(v48, v85);
  v59 = v86;
  sub_18AE9A768(v48, v58 + *(v86 + 84), &qword_1EA99AB10);
  *(v58 + v59[18]) = v57;
  *(v58 + v59[17]) = 0;
  v60 = v58 + v59[19];
  v61 = v103;
  *v60 = v102;
  *(v60 + 16) = v61;
  *(v60 + 32) = v104;
  *(v58 + v59[20]) = 1;
  if (*(v42 + *(v81 + 40)) == 1)
  {
    v39 = 0.5;
  }

  v62 = v88;
  sub_18AE9A768(v58, v88, &qword_1EA99AB18);
  *(v62 + *(v84 + 36)) = v39;
  sub_18AF24174(v42);
  sub_18AF2449C(v42);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v63 = v90;
  sub_18AE9A768(v62, v90, &qword_1EA99AB20);
  v64 = (v63 + *(v87 + 36));
  v65 = v106;
  *v64 = v105;
  v64[1] = v65;
  v64[2] = v107;
  v66 = sub_18AFCDB44();
  v68 = v67;
  sub_18AF247C4(v42, v97);
  memcpy(v98, v97, 0x208uLL);
  v98[65] = v66;
  v98[66] = v68;
  v69 = v63;
  v70 = v93;
  sub_18AE9A768(v69, v93, &qword_1EA99AB28);
  memcpy((v70 + *(v89 + 36)), v98, 0x218uLL);
  memcpy(v99, v97, sizeof(v99));
  v100 = v66;
  v101 = v68;
  sub_18AE83A40(v98, &v96, &qword_1EA99AB50);
  v71 = sub_18AE7BA80(v99, &qword_1EA99AB50);
  v72 = MEMORY[0x18CFECEE0](v71, 0.3, 1.0, 0.0);
  v73 = v95;
  sub_18AE9A768(v70, v95, &qword_1EA99AB30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB58);
  v75 = v73 + *(result + 36);
  *v75 = v72;
  *(v75 + 8) = v92;
  return result;
}

uint64_t sub_18AF22E98(uint64_t a1, unsigned int *a2)
{
  v31 = a2;
  v3 = sub_18AFCCCF4();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = (&v27 - v5);
  v27 = sub_18AFCBF04();
  MEMORY[0x1EEE9AC00](v27);
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCC5C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MacGladeSwitch();
  sub_18AED2E70(v13);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == *MEMORY[0x1E697F600])
  {
    v16 = a1 + *(v14 + 36);
    v17 = *v16;
    if (*(v16 + 8) != 1)
    {

      sub_18AFCE024();
      v18 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v17, 0);
      (*(v7 + 8))(v9, v6);
      if (v34 == 1)
      {
        goto LABEL_9;
      }

LABEL_11:
      (*(v29 + 104))(v28, *MEMORY[0x1E69814D8], v30);
      v21 = sub_18AFCCF44();
      v22 = *(v33 + 36);
      v23 = *v31;
      v24 = sub_18AFCDBC4();
      v25 = v32;
      (*(*(v24 - 8) + 104))(v32 + v22, v23, v24);
      *v25 = v21;
      sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8);
      return sub_18AFCBCD4();
    }
  }

  else
  {
    if (v15 != *MEMORY[0x1E697F608])
    {
      (*(v11 + 8))(v13, v10);
    }

    v19 = a1 + *(v14 + 36);
    v17 = *v19;
    if (*(v19 + 8) != 1)
    {

      sub_18AFCE024();
      v20 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v17, 0);
      (*(v7 + 8))(v9, v6);
      if (v35 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_18AFCBEF4();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF233C4(uint64_t a1, unsigned int *a2)
{
  v29 = a2;
  v28 = sub_18AFCCCF4();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = (&v26 - v6);
  v8 = sub_18AFCC474();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFCC5C4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MacGladeSwitch();
  sub_18AED2E70(v14);
  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == *MEMORY[0x1E697F600])
  {
    v17 = a1 + *(v15 + 36);
    v18 = *v17;
    if (*(v17 + 8) != 1)
    {
LABEL_7:

      sub_18AFCE024();
      v20 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v18, 0);
      (*(v26 + 8))(v10, v27);
    }
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F608])
    {
      (*(v12 + 8))(v14, v11);
    }

    v19 = a1 + *(v15 + 36);
    v18 = *v19;
    if (*(v19 + 8) != 1)
    {
      goto LABEL_7;
    }
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v28);
  v21 = sub_18AFCCF44();
  v22 = *(v30 + 36);
  v23 = *v29;
  v24 = sub_18AFCDBC4();
  (*(*(v24 - 8) + 104))(v7 + v22, v23, v24);
  *v7 = v21;
  sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF23864(uint64_t a1, unsigned int *a2)
{
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v15 - v8);
  type metadata accessor for MacGladeSwitch();
  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
  v10 = sub_18AFCCF44();
  v11 = *(v7 + 36);
  v12 = *a2;
  v13 = sub_18AFCDBC4();
  (*(*(v13 - 8) + 104))(v9 + v11, v12, v13);
  *v9 = v10;
  sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF23A84()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB80);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - v5);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AED2E48(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E697DBB8])
  {
    v12 = sub_18AFCCD94();
    v13 = *MEMORY[0x1E69814D8];
    v14 = *(v1 + 104);
    v14(v3, v13, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8);
    sub_18AFCBB84();

    *v6 = v12;
    v14(v3, v13, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40);
    sub_18AFCBB84();
    v15 = MEMORY[0x1E6981DA0];
  }

  else
  {
    if (v11 != *MEMORY[0x1E697DBA8])
    {
      (*(v8 + 8))(v10, v7);
    }

    v16 = sub_18AFCCD64();
    v17 = *MEMORY[0x1E69814D8];
    v18 = *(v1 + 104);
    v18(v3, v17, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8);
    sub_18AFCBB84();

    *v6 = v16;
    v18(v3, v17, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40);
    sub_18AFCBB84();
    v15 = MEMORY[0x1E6981DB8];
  }

  v19 = *(v4 + 36);
  v20 = *v15;
  v21 = sub_18AFCDBC4();
  (*(*(v21 - 8) + 104))(v6 + v19, v20, v21);
  sub_18AE95F54(&qword_1EA99AB88, &qword_1EA99AB80);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF23EF8(uint64_t a1)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(type metadata accessor for MacGladeSwitch() + 24);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v11, 0);
    (*(v7 + 8))(v9, v6);
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  v14[1] = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF24174(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x403A000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4040000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4043000000000000;
  }

  v16 = v14;
  result = 0x4048000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x4048000000000000;
  }

  return result;
}

uint64_t sub_18AF2449C(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x402E000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4032000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4036000000000000;
  }

  v16 = v14;
  result = 0x403C000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x403C000000000000;
  }

  return result;
}

uint64_t sub_18AF247C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v3 = sub_18AFCC5C4();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3);
  *&v105 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = COERCE_DOUBLE(sub_18AFCBB34());
  v115 = *(*&v112 - 8);
  MEMORY[0x1EEE9AC00](*&v112);
  v109 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v97 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v97 - v26;
  v28 = sub_18AFCC474();
  v102 = *(v28 - 8);
  v103 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v111 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v114 = sub_18AFCCD74();
  v117 = type metadata accessor for MacGladeSwitch();
  v31 = a1 + v117[8];
  v32 = *v31;
  LODWORD(v101) = *(v31 + 8);
  if (v101 == 1)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v39 = (v115 + 88);
    if (*(a1 + v117[11]) == 1)
    {
      sub_18AED2E48(v27);
      *v118 = *v39;
      v40 = (*v118)(v27, *&v112);
      v41 = v40;
      v119 = *MEMORY[0x1E697DBB8];
      if (v40 == v119)
      {
        v113 = sub_18AF27A4C();
        LODWORD(v116) = 1;
        v119 = v41;
        v35 = v112;
      }

      else
      {
        if (v40 != *MEMORY[0x1E697DBA8])
        {
          (*(v115 + 8))(v27, COERCE_DOUBLE(*&v112));
        }

        v113 = sub_18AF27A4C();
        LODWORD(v116) = 1;
        v35 = v112;
      }

      goto LABEL_29;
    }

    sub_18AED2E48(v24);
    v35 = v112;
    *v118 = *v39;
    v43 = (*v118)(v24, *&v112);
    v37 = v43;
    v119 = *MEMORY[0x1E697DBB8];
    if (v43 == v119)
    {
LABEL_15:
      v113 = sub_18AF27A4C();
      LODWORD(v116) = 0;
      goto LABEL_16;
    }

    if (v43 != *MEMORY[0x1E697DBA8])
    {
      (*(v115 + 8))(v24, COERCE_DOUBLE(*&v35));
    }

LABEL_28:
    v113 = sub_18AF27A4C();
    LODWORD(v116) = 0;
    goto LABEL_29;
  }

  sub_18AFCE024();
  v38 = sub_18AFCC7D4();
  sub_18AFCBA64();

  sub_18AFCC464();
  swift_getAtKeyPath();
  sub_18AEB264C(v32, 0);
  (*(v102 + 8))(v30, v103);
  if (v148 == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = (v115 + 88);
  v34 = MEMORY[0x1E697DBB8];
  if (*(a1 + v117[11]) != 1)
  {
    sub_18AED2E48(v18);
    v35 = v112;
    *v118 = *v33;
    v42 = (*v118)(v18, *&v112);
    v37 = v42;
    v119 = *v34;
    if (v42 == v119)
    {
      goto LABEL_15;
    }

    if (v42 != *MEMORY[0x1E697DBA8])
    {
      (*(v115 + 8))(v18, COERCE_DOUBLE(*&v35));
    }

    goto LABEL_28;
  }

  sub_18AED2E48(v21);
  v35 = v112;
  *v118 = *v33;
  v36 = (*v118)(v21, *&v112);
  v37 = v36;
  v119 = *v34;
  if (v36 == v119)
  {
    v113 = sub_18AF27A4C();
    LODWORD(v116) = 1;
LABEL_16:
    v119 = v37;
    goto LABEL_29;
  }

  if (v36 != *MEMORY[0x1E697DBA8])
  {
    (*(v115 + 8))(v21, COERCE_DOUBLE(*&v35));
  }

  v113 = sub_18AF27A4C();
  LODWORD(v116) = 1;
LABEL_29:
  sub_18AFCBB94();
  v44 = v117[10];
  LODWORD(v104) = *(a1 + v44);
  sub_18AF25B2C(a1);
  sub_18AF25B2C(a1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v112 = sub_18AF25E44(a1);
  if (v101)
  {
    v45 = v115;
    if ((v32 & 1) == 0)
    {
LABEL_31:
      if (v116)
      {
        v46 = v99;
        sub_18AED2E48(v99);
        v47 = (*v118)(v46, *&v35);
        v48 = *&v105;
        if (v47 != v119 && v47 != *MEMORY[0x1E697DBA8])
        {
          (*(v45 + 8))(v99, COERCE_DOUBLE(*&v35));
        }
      }

      else
      {
        v53 = v100;
        sub_18AED2E48(v100);
        v54 = (*v118)(v53, *&v35);
        v48 = *&v105;
        if (v54 != v119 && v54 != *MEMORY[0x1E697DBA8])
        {
          (*(v45 + 8))(v100, COERCE_DOUBLE(*&v35));
        }
      }

      v52 = sub_18AEA4E08(a1);
      goto LABEL_50;
    }
  }

  else
  {

    sub_18AFCE024();
    v49 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v32, 0);
    (*(v102 + 8))(v30, v103);
    v45 = v115;
    if (v148 != 1)
    {
      goto LABEL_31;
    }
  }

  if (v116)
  {
    v50 = v97;
    sub_18AED2E48(v97);
    v51 = (*v118)(v50, *&v35);
    v48 = *&v105;
    if (v51 == v119)
    {
      v52 = sub_18AF26158(a1);
    }

    else
    {
      if (v51 != *MEMORY[0x1E697DBA8])
      {
        (*(v45 + 8))(v97, COERCE_DOUBLE(*&v35));
      }

      v52 = sub_18AF265A8(a1);
    }
  }

  else
  {
    v55 = v98;
    sub_18AED2E48(v98);
    v56 = (*v118)(v55, *&v35);
    v48 = *&v105;
    if (v56 != v119 && v56 != *MEMORY[0x1E697DBA8])
    {
      (*(v45 + 8))(v98, COERCE_DOUBLE(*&v35));
    }

    v52 = sub_18AEA4AA8(a1);
  }

LABEL_50:
  v115 = v52;
  LODWORD(v100) = *(a1 + v44);
  sub_18AF269F8(a1);
  sub_18AF25B2C(a1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v105 = sub_18AF26D00(a1);
  sub_18AED2E70(v48);
  v58 = v106;
  v57 = v107;
  v59 = (*(v106 + 88))(v48, v107);
  if (v59 == *MEMORY[0x1E697F600])
  {
    v61 = v108;
    v60 = v109;
  }

  else
  {
    v61 = v108;
    v60 = v109;
    if (v59 != *MEMORY[0x1E697F608])
    {
      (*(v58 + 8))(v48, v57, 1.0);
    }
  }

  v109 = sub_18AF27014();
  v106 = sub_18AF27338(a1, MEMORY[0x1E6981DA0]);
  v62 = sub_18AFCDB44();
  v107 = v63;
  v108 = v62;
  v102 = sub_18AF2765C();
  v103 = sub_18AFCDB44();
  v117 = v64;
  sub_18AED2E48(v61);
  v65 = (*v118)(v61, *&v35);
  if (v65 != v119 && v65 != *MEMORY[0x1E697DBA8])
  {
    (*(v45 + 8))(v61, COERCE_DOUBLE(*&v35));
  }

  v101 = sub_18AF27A4C();
  sub_18AED2E48(v60);
  v66 = (*v118)(v60, *&v35);
  v67 = v44;
  if (v66 == v119)
  {
    v68 = sub_18AF27CA0(a1);
  }

  else
  {
    if (v66 != *MEMORY[0x1E697DBA8])
    {
      (*(v45 + 8))(v60, COERCE_DOUBLE(*&v35));
    }

    v68 = sub_18AF27F68(a1);
  }

  v69 = v68;
  sub_18AFCBB94();
  v70 = *(a1 + v67);
  v213 = 0;
  v211 = 1;
  if (v116)
  {
    v71 = sub_18AFCC8A4();
  }

  else
  {
    v71 = sub_18AFCC884();
  }

  v118[0] = v71;
  sub_18AF28238(a1);
  v73 = v72;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  if ((v72 & 1) == 0)
  {
    sub_18AFCBAA4();
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v77 = v81;
  }

  if (v70 == 1)
  {
    v82 = 0.5;
  }

  else
  {
    v82 = 1.0;
  }

  if (v100 == 1)
  {
    v83 = 0.5;
  }

  else
  {
    v83 = 1.0;
  }

  if (LODWORD(v104) == 1)
  {
    v84 = 0.5;
  }

  else
  {
    v84 = 1.0;
  }

  v104 = v84;
  if (v116)
  {
    v85 = 0x3FF0000000000000;
  }

  else
  {
    v85 = 0;
  }

  v116 = v85;
  v119 = v73 & 1;
  v214 = v73 & 1;
  sub_18AF28560(a1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v216[7] = v232;
  *&v216[23] = v233;
  *&v216[39] = v234;
  LOBYTE(v139[0]) = 0;
  *(v139 + 1) = *v229;
  DWORD1(v139[0]) = *&v229[3];
  *(&v139[0] + 1) = v113;
  *&v140 = v227;
  v139[1] = v225;
  v139[2] = v226;
  BYTE8(v140) = 1;
  HIDWORD(v140) = *&v228[3];
  *(&v140 + 9) = *v228;
  *&v141 = v114;
  WORD4(v141) = 256;
  *(&v141 + 10) = v230;
  HIWORD(v141) = v231;
  *(v142 + 8) = v222;
  *(&v142[2] + 8) = v224;
  *(&v142[1] + 8) = v223;
  *v142 = v84;
  v86 = v112;
  *(&v142[3] + 1) = v112;
  v143 = 0;
  v138[0] = v139[0];
  v138[1] = v225;
  v138[4] = v141;
  v138[5] = v142[0];
  v138[2] = v226;
  v138[3] = v140;
  v138[7] = v142[2];
  v138[8] = v142[3];
  v138[6] = v142[1];
  *&v144 = v115;
  WORD4(v144) = 256;
  HIWORD(v144) = v221;
  *(&v144 + 10) = v220;
  *(v145 + 8) = v217;
  *(&v145[1] + 8) = v218;
  *(&v145[2] + 8) = v219;
  *v145 = v83;
  v87 = v105;
  *(&v145[3] + 1) = v105;
  v146 = 0;
  *(&v138[10] + 8) = v145[0];
  *(&v138[9] + 8) = v144;
  *&v138[9] = 0;
  *(&v138[14] + 1) = 0;
  *(&v138[13] + 8) = v145[3];
  *(&v138[12] + 8) = v145[2];
  *(&v138[11] + 8) = v145[1];
  *v147 = v85;
  v147[8] = 0;
  *&v147[12] = *&v212[3];
  *&v147[9] = *v212;
  *&v147[16] = 0;
  v147[24] = 1;
  *&v147[28] = *&v210[3];
  *&v147[25] = *v210;
  LODWORD(v99) = v69;
  v147[32] = v69;
  *&v147[36] = *&v209[3];
  *&v147[33] = *v209;
  v88 = v101;
  v89 = v102;
  *&v147[40] = v101;
  *&v147[80] = v201;
  *&v147[48] = v199;
  *&v147[64] = v200;
  v147[88] = 1;
  *&v147[92] = *&v208[3];
  *&v147[89] = *v208;
  *&v147[96] = v102;
  *&v147[104] = 256;
  *&v147[110] = v207;
  *&v147[106] = v206;
  v91 = v106;
  v90 = v107;
  *&v147[112] = v106;
  *&v147[120] = 256;
  *&v147[126] = v205;
  *&v147[122] = v204;
  v93 = v108;
  v92 = v109;
  *&v147[128] = v109;
  *&v147[136] = 256;
  *&v147[142] = v203;
  *&v147[138] = v202;
  *&v147[144] = v108;
  *&v147[152] = v107;
  v94 = v103;
  *&v147[160] = v103;
  *&v147[168] = v117;
  *&v147[176] = v82;
  v95 = v118[0];
  v147[184] = v118[0];
  *&v147[188] = *&v215[3];
  *&v147[185] = *v215;
  *&v147[192] = v74;
  *&v147[200] = v75;
  *&v147[208] = v76;
  *&v147[216] = v77;
  v147[224] = v119;
  *&v147[257] = *&v216[32];
  *&v147[272] = *(&v234 + 1);
  *&v147[241] = *&v216[16];
  *&v147[225] = *v216;
  memcpy(&v138[15], v147, 0x118uLL);
  memcpy(v110, v138, 0x208uLL);
  v148 = v116;
  v149 = 0;
  *v150 = *v212;
  *&v150[3] = *&v212[3];
  v151 = 0;
  v152 = 1;
  *v153 = *v210;
  *&v153[3] = *&v210[3];
  v154 = v99;
  *v155 = *v209;
  *&v155[3] = *&v209[3];
  v156 = v88;
  v157 = v199;
  v158 = v200;
  v159 = v201;
  v160 = 1;
  *v161 = *v208;
  *&v161[3] = *&v208[3];
  v162 = v89;
  v163 = 256;
  v164 = v206;
  v165 = v207;
  v166 = v91;
  v167 = 256;
  v169 = v205;
  v168 = v204;
  v170 = v92;
  v171 = 256;
  v173 = v203;
  v172 = v202;
  v174 = v93;
  v175 = v90;
  v176 = v94;
  v177 = v117;
  v178 = v82;
  v179 = v95;
  *&v180[3] = *&v215[3];
  *v180 = *v215;
  v181 = v74;
  v182 = v75;
  v183 = v76;
  v184 = v77;
  v185 = v119;
  *v188 = *&v216[32];
  v186 = *v216;
  v187 = *&v216[16];
  *&v188[15] = *&v216[47];
  sub_18AE83A40(v139, &v120, &qword_1EA99AB68);
  sub_18AE83A40(&v144, &v120, &qword_1EA99AB70);
  sub_18AE83A40(v147, &v120, &qword_1EA99AB78);
  sub_18AE7BA80(&v148, &qword_1EA99AB78);
  v194 = v217;
  v195 = v218;
  v196 = v219;
  v189 = v115;
  v190 = 256;
  v191 = v220;
  v192 = v221;
  v193 = v83;
  v197 = v87;
  v198 = 0;
  sub_18AE7BA80(&v189, &qword_1EA99AB70);
  v120 = 0;
  *v121 = *v229;
  *&v121[3] = *&v229[3];
  v122 = v113;
  v123 = v225;
  v124 = v226;
  v125 = v227;
  v126 = 1;
  *&v127[3] = *&v228[3];
  *v127 = *v228;
  v128 = v114;
  v129 = 256;
  v131 = v231;
  v130 = v230;
  v132 = v104;
  v135 = v224;
  v134 = v223;
  v133 = v222;
  v136 = v86;
  v137 = 0;
  sub_18AE7BA80(&v120, &qword_1EA99AB68);
}

uint64_t sub_18AF25B2C(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x4014000000000000;
  }

  v16 = v14;
  result = 0x4018000000000000;
  if (v16 != *MEMORY[0x1E697DC20] && v16 != *MEMORY[0x1E697DC28] && v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x4018000000000000;
  }

  return result;
}

double sub_18AF25E44(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  result = 6.0;
  if (v14 != *MEMORY[0x1E697DC08])
  {
    result = 7.0;
    if (v14 != *MEMORY[0x1E697DC20])
    {
      result = 8.0;
      if (v14 != *MEMORY[0x1E697DC28])
      {
        result = 10.0;
        if (v14 != *MEMORY[0x1E697DC10] && v14 != *MEMORY[0x1E697DC00])
        {
          (*(v9 + 8))(v11, v8, 10.0);
          return 10.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AF26158(uint64_t a1)
{
  v21 = sub_18AFCCCF4();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18AFCC474();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AED2E70(v11);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == *MEMORY[0x1E697F600])
  {
    v14 = a1 + *(v12 + 36);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v13 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  v16 = a1 + *(v12 + 36);
  v15 = *v16;
  if (*(v16 + 8) != 1)
  {
LABEL_7:

    sub_18AFCE024();
    v17 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v15, 0);
    (*(v5 + 8))(v7, v20);
  }

LABEL_8:
  (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v21);
  v22 = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF265A8(uint64_t a1)
{
  v21 = sub_18AFCCCF4();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18AFCC474();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AED2E70(v11);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == *MEMORY[0x1E697F600])
  {
    v14 = a1 + *(v12 + 36);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v13 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  v16 = a1 + *(v12 + 36);
  v15 = *v16;
  if (*(v16 + 8) != 1)
  {
LABEL_7:

    sub_18AFCE024();
    v17 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v15, 0);
    (*(v5 + 8))(v7, v20);
  }

LABEL_8:
  (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v21);
  v22 = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF269F8(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 != *MEMORY[0x1E697DC08] && v14 != *MEMORY[0x1E697DC20] && v14 != *MEMORY[0x1E697DC28] && v14 != *MEMORY[0x1E697DC10] && v14 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 0x3FF0000000000000;
}

double sub_18AF26D00(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  result = -6.0;
  if (v14 != *MEMORY[0x1E697DC08])
  {
    result = -7.0;
    if (v14 != *MEMORY[0x1E697DC20])
    {
      result = -8.0;
      if (v14 != *MEMORY[0x1E697DC28])
      {
        result = -10.0;
        if (v14 != *MEMORY[0x1E697DC10] && v14 != *MEMORY[0x1E697DC00])
        {
          (*(v9 + 8))(v11, v8, -10.0);
          return -10.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AF27014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v17 - v1);
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AED2E48(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E697DBB8])
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
    v17[1] = sub_18AFCCF44();
  }

  else
  {
    if (v11 != *MEMORY[0x1E697DBA8])
    {
      (*(v8 + 8))(v10, v7);
    }

    (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
    v12 = sub_18AFCCF44();
    v13 = *(v0 + 36);
    v14 = *MEMORY[0x1E6981DF8];
    v15 = sub_18AFCDBC4();
    (*(*(v15 - 8) + 104))(v2 + v13, v14, v15);
    *v2 = v12;
    sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8);
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AF27338(uint64_t a1, unsigned int *a2)
{
  v4 = sub_18AFCC5C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = sub_18AFCBB34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AED2E48(v14);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x1E697DBB8])
  {
    type metadata accessor for MacGladeSwitch();
    sub_18AED2E70(v10);
    v16 = (*(v5 + 88))(v10, v4);
    if (v16 == *MEMORY[0x1E697F600])
    {
      v17 = MEMORY[0x1E6981DA0];
    }

    else
    {
      if (v16 != *MEMORY[0x1E697F608])
      {
        (*(v5 + 8))(v10, v4);
      }

      v17 = MEMORY[0x1E6981DA0];
    }

    v19 = a1;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697DBA8])
    {
      (*(v12 + 8))(v14, v11);
    }

    type metadata accessor for MacGladeSwitch();
    sub_18AED2E70(v7);
    v18 = (*(v5 + 88))(v7, v4);
    if (v18 == *MEMORY[0x1E697F600])
    {
      v17 = MEMORY[0x1E6981DB8];
      v19 = a1;
    }

    else
    {
      if (v18 != *MEMORY[0x1E697F608])
      {
        (*(v5 + 8))(v7, v4);
      }

      v19 = a1;
      v17 = a2;
    }
  }

  return sub_18AF23864(v19, v17);
}

uint64_t sub_18AF2765C()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB80);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v19 - v5);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AED2E48(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 != *MEMORY[0x1E697DBB8] && v11 != *MEMORY[0x1E697DBA8])
  {
    (*(v8 + 8))(v10, v7);
  }

  v12 = sub_18AFCCD94();
  v13 = *MEMORY[0x1E69814D8];
  v14 = *(v1 + 104);
  v14(v3, v13, v0);
  sub_18AFCCF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8);
  sub_18AFCBB74();

  *v6 = v12;
  v14(v3, v13, v0);
  sub_18AFCCF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40);
  sub_18AFCBB74();

  v15 = *(v4 + 36);
  v16 = *MEMORY[0x1E6981DA0];
  v17 = sub_18AFCDBC4();
  (*(*(v17 - 8) + 104))(v6 + v15, v16, v17);
  sub_18AE95F54(&qword_1EA99AB88, &qword_1EA99AB80);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF27A4C()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCC5C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MacGladeSwitch();
  sub_18AED2E70(v7);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x1E697F600] && v8 != *MEMORY[0x1E697F608])
  {
    (*(v5 + 8))(v7, v4);
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  v10[1] = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF27CA0(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 20), v7, &qword_1EA997E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 != *MEMORY[0x1E697F600] && v14 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 2;
}

uint64_t sub_18AF27F68(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 20), v7, &qword_1EA997E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697F600])
  {
    return 2;
  }

  if (v14 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_18AF28238(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x401E000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4022000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4026000000000000;
  }

  v16 = v14;
  result = 0x402C000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x402C000000000000;
  }

  return result;
}

uint64_t sub_18AF28560(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch();
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x402A000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4030000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4034000000000000;
  }

  v16 = v14;
  result = 0x403A000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x403A000000000000;
  }

  return result;
}

unint64_t sub_18AF2888C()
{
  result = qword_1EA99AB90;
  if (!qword_1EA99AB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB58);
    sub_18AF28944();
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AB90);
  }

  return result;
}

unint64_t sub_18AF28944()
{
  result = qword_1EA99AB98;
  if (!qword_1EA99AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB30);
    sub_18AF289FC();
    sub_18AE95F54(&qword_1EA99ABB8, &qword_1EA99AB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AB98);
  }

  return result;
}

unint64_t sub_18AF289FC()
{
  result = qword_1EA99ABA0;
  if (!qword_1EA99ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB28);
    sub_18AF28A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ABA0);
  }

  return result;
}

unint64_t sub_18AF28A88()
{
  result = qword_1EA99ABA8;
  if (!qword_1EA99ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB20);
    sub_18AE95F54(&qword_1EA99ABB0, &qword_1EA99AB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ABA8);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18AF28B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_18AF28BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_18AF28C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v3 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ABF8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC00);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = (v2 + *(v4 + 28));
  v13 = *v12;
  v14 = v12[1];
  v32 = v13;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0C4();
  v15 = v31;
  v16 = *(v4 + 40);
  v17 = *(v2 + v16);
  v32 = 0;
  v18 = &v11[*(v9 + 44)];
  type metadata accessor for SwitchKnobKeyframeAnimationModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998720);
  sub_18AE95F54(&qword_1EA9977F0, &qword_1EA998720);
  sub_18AFCC074();
  *v18 = v15;
  v18[8] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC08);
  (*(*(v19 - 8) + 16))(v11, v26, v19);
  sub_18AF28FE4(v11, v7);
  LOBYTE(v32) = *(v2 + v16);
  v20 = v25;
  sub_18AF29F64(v2, v25);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_18AF29FC8(v20, v22 + v21);
  sub_18AF2A074(&qword_1EA99AC10, &qword_1EA99ABF8, &unk_18AFD8F98, sub_18AF2A044);
  sub_18AF08D54();
  sub_18AFCCC44();

  sub_18AE7BA80(v7, &qword_1EA99ABF8);
  return sub_18AE7BA80(v11, &qword_1EA99AC00);
}

uint64_t sub_18AF28FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC48);
  MEMORY[0x1EEE9AC00](v36);
  v8 = (&v34 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99AC50);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v34 - v10);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC20);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v34 - v12;
  v14 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  v15 = v14;
  v16 = v2 + *(v14 + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v17;
      sub_18AE83A40(a1, v6, &qword_1EA99AC00);
      sub_18AF2A0F8();

      v21 = sub_18AFCD464();
      v22 = (v2 + *(v15 + 24));
      v23 = *v22;
      v24 = v22[1];
      LOBYTE(v22) = *(v22 + 16);
      v39 = v23;
      v40 = v24;
      v41 = v22;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40);
      MEMORY[0x18CFEC7E0](&v38, v25);
      v26 = v20(v21, v38);

      *v8 = v26;
      swift_storeEnumTagMultiPayload();
      sub_18AF2A044();

      sub_18AFCC614();
      sub_18AEF8CD0(v20, v18, 1u);
    }

    sub_18AE83A40(a1, v11, &qword_1EA99AC00);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A0F8();
    sub_18AFCC614();
    sub_18AE83A40(v13, v8, &qword_1EA99AC20);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A044();
    sub_18AFCC614();
    v33 = v13;
  }

  else
  {
    v28 = (v2 + *(v14 + 24));
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v28) = *(v28 + 16);
    v39 = v29;
    v40 = v30;
    v41 = v28;
    v31 = v17;

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40);
    MEMORY[0x18CFEC7E0](&v38, v32);
    *v11 = v31(v38);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A0F8();

    sub_18AFCC614();
    sub_18AE83A40(v13, v8, &qword_1EA99AC20);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A044();
    sub_18AFCC614();
    sub_18AEF8CD0(v31, v18, 0);

    v33 = v13;
  }

  return sub_18AE7BA80(v33, &qword_1EA99AC20);
}

uint64_t sub_18AF2947C(uint64_t a1)
{
  v2 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  v18[0] = *(v2 - 1);
  v3 = *(v18[0] + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_18AFCC764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + v2[8]) == 3)
  {
    v8 = (a1 + v2[5]);
    v9 = *v8;
    v10 = v8[1];
    v19 = v9;
    v20 = v10;
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
    sub_18AFCD0D4();
    v11 = a1 + v2[6];
    v12 = *v11;
    v13 = *(v11 + 8);
    LOBYTE(v11) = *(v11 + 16);
    v19 = v12;
    v20 = v13;
    v21 = v11;
    LOBYTE(v22) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40);
    sub_18AFCD484();
    type metadata accessor for SwitchSpecs(0);
    v14 = sub_18AFCC754();
    MEMORY[0x1EEE9AC00](v14);
    v18[-2] = a1;
    sub_18AF29F64(a1, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v18[0] + 80) + 16) & ~*(v18[0] + 80);
    v16 = swift_allocObject();
    sub_18AF29FC8(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    sub_18AFCBDE4();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
  }
}

uint64_t sub_18AF297CC()
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MacSolariumSwitch.KnobModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0D4();
}

uint64_t sub_18AF298BC()
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MacSolariumSwitch.KnobModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40);
  sub_18AFCD484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20);
  sub_18AFCD0D4();
}

uint64_t sub_18AF299E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v19 = *(v1 + 33);
  v20 = *(v1 + 34);
  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28);
  sub_18AFCD0E4();
  sub_18AEF9238(v3, v4, v5);
  sub_18AECC260(a1);
  v6 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  v7 = (a1 + v6[5]);
  sub_18AFCD0B4();
  *v7 = v21;
  v7[1] = v22;
  v8 = a1 + v6[6];
  *v8 = v21;
  *(v8 + 1) = v22;
  v8[16] = v23;
  v9 = a1 + v6[7];
  *v9 = v3;
  *(v9 + 1) = v4;
  v9[16] = v5;
  *(a1 + v6[8]) = v19;
  sub_18AFCD0C4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ABC0);
  *(a1 + v10[9]) = v20;
  *(a1 + v10[10]) = v19;
  *(a1 + v10[11]) = 0;
  v11 = v10[12];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v10[13];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = a1 + v10[14];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = a1 + v10[15];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = a1 + v10[16];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = sub_18AFCDBA4();
  sub_18AFCD0C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ABC8);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  v18[8] = 0;
  return result;
}

uint64_t type metadata accessor for MacSolariumSwitch.KnobModifier()
{
  result = qword_1EA99ABD0;
  if (!qword_1EA99ABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF29C9C@<X0>(void *a1@<X8>)
{
  result = sub_18AFCC254();
  *a1 = v3;
  return result;
}

void sub_18AF29D18()
{
  type metadata accessor for SwitchSpecs(319);
  if (v0 <= 0x3F)
  {
    sub_18AF29E14(319, &qword_1EA9999C8, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_18AF29E14(319, &qword_1EA99ABE0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18AF29E14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18AF29E64()
{
  result = qword_1EA99ABE8;
  if (!qword_1EA99ABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ABC8);
    sub_18AE95F54(&qword_1EA99ABF0, &qword_1EA99ABC0);
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ABE8);
  }

  return result;
}

uint64_t sub_18AF29F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF29FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF2A074(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_18AF2A0F8()
{
  result = qword_1EA99AC28;
  if (!qword_1EA99AC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AC00);
    sub_18AE95F54(&qword_1EA99AC30, &qword_1EA99AC08);
    sub_18AF2A1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AC28);
  }

  return result;
}

unint64_t sub_18AF2A1B0()
{
  result = qword_1EA99AC38;
  if (!qword_1EA99AC38)
  {
    type metadata accessor for SwitchKnobKeyframeAnimationModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AC38);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MacSolariumSwitch.KnobModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCBB34();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = type metadata accessor for SwitchSpecs(0);
  sub_18AE9B234(*(v3 + v5[5]), *(v3 + v5[5] + 8));
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_18AFCC5C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  j__swift_release();
  sub_18AE9B234(*(v3 + v5[8]), *(v3 + v5[8] + 8));
  sub_18AECE16C(*(v3 + v5[9]), *(v3 + v5[9] + 8));

  sub_18AEF8CD0(*(v3 + *(v1 + 28)), *(v3 + *(v1 + 28) + 8), *(v3 + *(v1 + 28) + 16));

  return swift_deallocObject();
}

uint64_t sub_18AF2A484(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MacSolariumSwitch.KnobModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_18AF2A4F8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_18AED5A58();
    if (v1 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38);
      if (v2 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C40);
        if (v3 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997810);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AF2A614(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCC5C4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((v11 + v12 + 3) & ~v12) + 56) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (v17)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v16)
    {
      v17 = a1[v13];
      if (a1[v13])
      {
LABEL_22:
        v18 = v13 > 3;
        if (v13 <= 3)
        {
          v19 = (v17 - 1) << (8 * v13);
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }

        v23 = v8 + (v24 | v19);
        return (v23 + 1);
      }
    }
  }

  if (v7 < 0xFE)
  {
    v22 = a1[v11 + 2];
    if (v22 >= 2)
    {
      v23 = (v22 + 2147483646) & 0x7FFFFFFF;
      return (v23 + 1);
    }

    return 0;
  }

  v20 = *(v6 + 48);

  return v20(a1, v7, v5);
}

void sub_18AF2A844(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCC5C4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v13 + v14 + 3) & ~v14) + 56) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0xFE)
      {
        a1[v13 + 2] = a2 + 1;
      }

      else
      {
        v21 = *(v22 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

uint64_t sub_18AF2AB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACD8);
  type metadata accessor for MacSwitchSliderKnob();
  v3 = *(a1 + 16);
  v4 = a1;
  v35 = a1;
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  v39 = MEMORY[0x1E6981880];
  WitnessTable = swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACE0);
  v9 = sub_18AFCC044();
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18);
  v40 = sub_18AFCC044();
  v48 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v34 - v11;
  v12 = *(v4 + 24);
  v42 = type metadata accessor for MacSwitchEngineering.MacSwitchFocusEffectShape();
  v44 = swift_getWitnessTable();
  v45 = sub_18AFCC684();
  v13 = sub_18AFCC044();
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v34 - v16;
  v50 = v3;
  v51 = v12;
  v17 = v43;
  v52 = v43;
  sub_18AFCDB44();
  v18 = sub_18AFCD1E4();
  MEMORY[0x18CFECEE0](v18, 0.47, 0.7, 0.0);
  v19 = v35;
  v59 = *(v17 + *(v35 + 36));
  v20 = swift_getWitnessTable();
  sub_18AF2D968();
  sub_18AFCCC64();

  (*(v6 + 8))(v8, v5);
  sub_18AFCDBA4();
  v59 = *(v17 + *(v19 + 40));
  v21 = sub_18AE95F54(&qword_1EA99ACF0, &qword_1EA99ACE0);
  v57 = v20;
  v58 = v21;
  v22 = swift_getWitnessTable();
  sub_18AF08D54();
  v23 = v37;
  v24 = v34;
  sub_18AFCCC64();

  (*(v46 + 8))(v24, v9);
  v59 = *(v17 + *(v19 + 40)) - 3 < 2;
  v25 = sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18);
  v55 = v22;
  v56 = v25;
  v26 = v40;
  v27 = swift_getWitnessTable();
  v28 = v38;
  sub_18AFCCAC4();
  (*(v48 + 8))(v23, v26);
  v29 = swift_getWitnessTable();
  v53 = v27;
  v54 = v29;
  v30 = swift_getWitnessTable();
  v31 = v41;
  sub_18AEADA5C(v28, v13, v30);
  v32 = *(v47 + 8);
  v32(v28, v13);
  sub_18AEADA5C(v31, v13, v30);
  return (v32)(v31, v13);
}

uint64_t sub_18AF2B1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a3;
  v19 = a4;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACD8);
  type metadata accessor for MacSwitchSliderKnob();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = v18;
  if (*(v20 + *(type metadata accessor for MacSwitchEngineering() + 36)))
  {
    v13 = sub_18AFCDB64();
  }

  else
  {
    v13 = sub_18AFCDB54();
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v17 - 4) = a2;
  *(&v17 - 3) = v12;
  *(&v17 - 2) = v20;
  sub_18AFCD1E4();
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C(v8, v5, WitnessTable);
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_18AEADA5C(v11, v5, WitnessTable);
  v15(v11, v5);
}

uint64_t sub_18AF2B4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a3;
  v139 = a4;
  v6 = type metadata accessor for MacSwitchSliderKnob();
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v8;
  v147 = a2;
  v9 = sub_18AFCC044();
  v126 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v110 - v10;
  v128 = v11;
  v12 = sub_18AFCC044();
  v129 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v110 - v13;
  v130 = v14;
  v15 = sub_18AFCC044();
  v133 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v110 - v16;
  v134 = v18;
  v138 = sub_18AFCC044();
  v135 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v110 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v110 - v23;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100);
  MEMORY[0x1EEE9AC00](v119);
  v111 = &v110 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F8);
  MEMORY[0x1EEE9AC00](v114);
  v26 = &v110 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v110 - v27;
  v28 = sub_18AFCC474();
  v145 = *(v28 - 8);
  v146 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v144 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A108);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v110 - v37;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ACF8);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v110 - v39;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AD00);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v110 - v40;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ACD8);
  MEMORY[0x1EEE9AC00](v141);
  v127 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v116 = &v110 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v142 = &v110 - v45;
  sub_18AFCDF14();
  v124 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = *MEMORY[0x1E697F468];
  v47 = sub_18AFCC534();
  (*(*(v47 - 8) + 104))(v32, v46, v47);
  v48 = type metadata accessor for MacSwitchEngineering();
  v49 = v48[9];
  v120 = v48[10];
  v50 = *(a1 + v120);
  v51 = *(a1 + v49);
  v140 = v48;
  v52 = a1 + v48[13];
  v53 = *v52;
  LODWORD(v52) = *(v52 + 8);
  v143 = a1;
  v132 = v17;
  if (v52 != 1)
  {

    sub_18AFCE024();
    v54 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v55 = v144;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v53, 0);
    (*(v145 + 8))(v55, v146);
    LOBYTE(v53) = v155[0];
  }

  if (v51 && (v53 & 1) != 0)
  {
    v56 = v110;
    sub_18AF1B058(v50, 1, v110);
    v57 = &qword_1EA99A110;
    sub_18AE83A40(v56, v26, &qword_1EA99A110);
  }

  else
  {
    v58 = v51 != 0;
    v56 = v111;
    sub_18AF1CAB8(v50, v58, v111);
    v57 = &qword_1EA99A100;
    sub_18AE83A40(v56, v26, &qword_1EA99A100);
  }

  swift_storeEnumTagMultiPayload();
  sub_18AF08ED8();
  sub_18AF08F90();
  sub_18AFCC614();
  sub_18AE7BA80(v56, v57);
  sub_18AF2EF50(v32, MEMORY[0x1E6981998]);
  sub_18AE9A768(v35, v38, &qword_1EA99A108);
  v59 = sub_18AFCDB44();
  v61 = v60;
  v62 = v143;
  sub_18AF2C714(v143, v153);
  memcpy(v154, v153, 0x248uLL);
  v154[73] = v59;
  v154[74] = v61;
  v63 = v113;
  sub_18AE9A768(v38, v113, &qword_1EA99A108);
  memcpy((v63 + *(v112 + 36)), v154, 0x258uLL);
  memcpy(v155, v153, sizeof(v155));
  v156 = v59;
  v157 = v61;
  sub_18AE83A40(v154, v152, &qword_1EA99AD08);
  sub_18AE7BA80(v155, &qword_1EA99AD08);
  v64 = v140;
  v65 = v62 + v140[15];
  v66 = *v65;
  v67 = *(v65 + 8);
  if (v67 != 1)
  {

    sub_18AFCE024();
    v68 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v69 = v144;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v66, 0);
    (*(v145 + 8))(v69, v146);
  }

  if ((v67 & 1) == 0)
  {

    sub_18AFCE024();
    v70 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v71 = v144;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v66, 0);
    (*(v145 + 8))(v71, v146);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v72 = v118;
  sub_18AE9A768(v63, v118, &qword_1EA99ACF8);
  v73 = (v72 + *(v117 + 36));
  v74 = v152[1];
  *v73 = v152[0];
  v73[1] = v74;
  v73[2] = v152[2];
  KeyPath = swift_getKeyPath();
  v76 = v72;
  v77 = v116;
  sub_18AE9A768(v76, v116, &qword_1EA99AD00);
  v78 = v142;
  v79 = v77 + *(v141 + 36);
  *v79 = KeyPath;
  *(v79 + 8) = 0;
  *(v79 + 12) = 0x3F33333300000000;
  sub_18AE9A768(v77, v78, &qword_1EA99ACD8);
  if (!v67)
  {

    sub_18AFCE024();
    v80 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v81 = v144;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v66, 0);
    (*(v145 + 8))(v81, v146);
  }

  sub_18AF2D458(v64);
  v119 = v66;
  LODWORD(v115) = v67;
  v82 = v121;
  v83 = *(v62 + *(v64 + 44));
  *v121 = *(v62 + v120);
  *(v82 + 1) = v83;
  *(v82 + 2) = 1;
  v84 = v122;
  v85 = *(v122 + 28);
  *(v82 + v85) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  swift_storeEnumTagMultiPayload();
  v86 = sub_18AF2F3C4(&qword_1EA99A290, type metadata accessor for MacSwitchSliderKnob);
  v87 = v123;
  MEMORY[0x18CFEBFA0](v62, v84, v147, v86);
  sub_18AF2EF50(v82, type metadata accessor for MacSwitchSliderKnob);
  sub_18AFCDB44();
  v151[8] = v86;
  v151[9] = v148;
  v88 = v128;
  WitnessTable = swift_getWitnessTable();
  v90 = v125;
  sub_18AFCCBB4();
  (*(v126 + 8))(v87, v88);
  sub_18AFCDB44();
  v91 = MEMORY[0x1E697E040];
  v151[6] = WitnessTable;
  v151[7] = MEMORY[0x1E697E040];
  v92 = v130;
  v93 = swift_getWitnessTable();
  v94 = v132;
  sub_18AFCCBB4();
  (*(v129 + 8))(v90, v92);
  sub_18AFCC844();
  if (!v115)
  {
    v95 = v119;

    sub_18AFCE024();
    v96 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v97 = v144;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v95, 0);
    (*(v145 + 8))(v97, v146);
  }

  sub_18AF2D458(v140);
  v151[4] = v93;
  v151[5] = v91;
  v98 = v134;
  v99 = swift_getWitnessTable();
  v100 = v131;
  sub_18AFCCC24();
  (*(v133 + 8))(v94, v98);
  v151[2] = v99;
  v151[3] = MEMORY[0x1E697E5D8];
  v101 = v138;
  v102 = swift_getWitnessTable();
  v103 = v136;
  sub_18AEADA5C(v100, v101, v102);
  v104 = v135;
  v105 = *(v135 + 8);
  v105(v100, v101);
  v106 = v142;
  v107 = v127;
  sub_18AE83A40(v142, v127, &qword_1EA99ACD8);
  v153[0] = v107;
  v108 = v137;
  (*(v104 + 16))(v137, v103, v101);
  v153[1] = v108;
  v151[0] = v141;
  v151[1] = v101;
  v149 = sub_18AF2EFB0();
  v150 = v102;
  sub_18AEB70B8(v153, 2uLL, v151);
  v105(v103, v101);
  sub_18AE7BA80(v106, &qword_1EA99ACD8);
  v105(v108, v101);
  sub_18AE7BA80(v107, &qword_1EA99ACD8);
}

uint64_t sub_18AF2C714@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a1;
  v59 = a2;
  v2 = sub_18AFCC474();
  v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v60 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for MacSwitchEngineering();
  v5 = v64;
  v6 = v64 + v4[14];
  v7 = *v6;
  LODWORD(v6) = *(v6 + 8);
  v58 = v2;
  if (v6 == 1)
  {
    v115 = v7 & 1;
    if ((v7 & 1) == 0)
    {
LABEL_5:
      sub_18AF2F1D4(v114);
      goto LABEL_18;
    }
  }

  else
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v9 = v62;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v7, 0);
    (*(v63 + 8))(v9, v2);
    if (v115 != 1)
    {
      goto LABEL_5;
    }
  }

  KeyPath = swift_getKeyPath();
  sub_18AFCDB64();
  sub_18AFCC194();
  *&v78[55] = v119;
  *&v78[71] = v120;
  *&v78[87] = v121;
  *&v78[103] = v122;
  *&v78[7] = v116;
  *&v78[23] = v117;
  v111 = 0;
  *&v78[39] = v118;
  v56 = sub_18AFCC844();
  v61 = v4;
  v10 = v5 + v4[15];
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 != 1)
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v14 = v62;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v11, 0);
    (*(v63 + 8))(v14, v2);
  }

  sub_18AFCBAA4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v130) = 0;
  if (*(v64 + v61[10]) - 3 < 2 || *(v64 + v61[9]))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  v75 = *&v78[64];
  v76 = *&v78[80];
  *v77 = *&v78[96];
  *&v77[15] = *&v78[111];
  v71 = *v78;
  v72 = *&v78[16];
  v73 = *&v78[32];
  v74 = *&v78[48];
  v55 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  sub_18AFCDB54();
  sub_18AFCC194();
  *&v67[55] = v126;
  *&v67[71] = v127;
  *&v67[87] = v128;
  *&v67[103] = v129;
  *&v67[7] = v123;
  *&v67[23] = v124;
  v109 = 0;
  v68 = 0;
  *&v67[39] = v125;
  v25 = sub_18AFCC844();
  if (!v12)
  {

    sub_18AFCE024();
    v26 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v27 = v62;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v11, 0);
    (*(v63 + 8))(v27, v58);
  }

  sub_18AFCBAA4();
  v110 = 0;
  if (*(v64 + v61[10]) - 3 < 2 || (v32 = 1.0, *(v64 + v61[9]) != 1))
  {
    v32 = 0.0;
  }

  *&v84[0] = KeyPath;
  BYTE8(v84[0]) = 0;
  *(&v84[4] + 9) = v75;
  *(&v84[5] + 9) = v76;
  *(&v84[6] + 9) = *v77;
  *(&v84[7] + 1) = *&v77[15];
  *(v84 + 9) = v71;
  *(&v84[1] + 9) = v72;
  *(&v84[2] + 9) = v73;
  *(&v84[3] + 9) = v74;
  LOBYTE(v84[8]) = v56;
  *(&v84[8] + 1) = *v79;
  DWORD1(v84[8]) = *&v79[3];
  *(&v84[8] + 1) = v16;
  *&v85 = v18;
  *(&v85 + 1) = v20;
  *&v86 = v22;
  BYTE8(v86) = 0;
  *(&v86 + 9) = *v80;
  HIDWORD(v86) = *&v80[3];
  *&v87 = v23;
  v65[2] = v84[2];
  v65[3] = v84[3];
  v65[0] = v84[0];
  v65[1] = v84[1];
  v65[6] = v84[6];
  v65[7] = v84[7];
  v65[4] = v84[4];
  v65[5] = v84[5];
  v65[9] = v85;
  v65[10] = v86;
  v65[8] = v84[8];
  *(v82 + 9) = *v66;
  HIDWORD(v82[0]) = *&v66[3];
  *(&v82[7] + 9) = *&v67[96];
  *(&v82[8] + 1) = *&v67[111];
  *(&v82[9] + 1) = *v69;
  DWORD1(v82[9]) = *&v69[3];
  *(&v82[11] + 9) = *v70;
  HIDWORD(v82[11]) = *&v70[3];
  *&v82[0] = v55;
  BYTE8(v82[0]) = 0;
  *&v82[1] = v24;
  BYTE8(v82[1]) = 0;
  *(&v82[5] + 9) = *&v67[64];
  *(&v82[6] + 9) = *&v67[80];
  *(&v82[1] + 9) = *v67;
  *(&v82[2] + 9) = *&v67[16];
  *(&v82[3] + 9) = *&v67[32];
  *(&v82[4] + 9) = *&v67[48];
  LOBYTE(v82[9]) = v25;
  *(&v82[9] + 1) = v28;
  *&v82[10] = v29;
  *(&v82[10] + 1) = v30;
  *&v82[11] = v31;
  BYTE8(v82[11]) = 0;
  *&v82[12] = v32;
  *(&v65[18] + 8) = v82[7];
  *(&v65[19] + 8) = v82[8];
  *(&v65[16] + 8) = v82[5];
  *(&v65[17] + 8) = v82[6];
  *(&v65[21] + 8) = v82[10];
  *(&v65[22] + 8) = v82[11];
  *(&v65[20] + 8) = v82[9];
  *(&v65[11] + 8) = v82[0];
  *(&v65[15] + 8) = v82[4];
  *(&v65[14] + 8) = v82[3];
  *(&v65[13] + 8) = v82[2];
  *(&v65[12] + 8) = v82[1];
  *&v65[11] = v23;
  *(&v65[23] + 1) = v32;
  v83[0] = v55;
  LOBYTE(v83[1]) = 0;
  *(&v83[1] + 1) = *v66;
  HIDWORD(v83[1]) = *&v66[3];
  v83[2] = v24;
  LOBYTE(v83[3]) = 0;
  *(&v83[11] + 1) = *&v67[64];
  *(&v83[13] + 1) = *&v67[80];
  *(&v83[15] + 1) = *&v67[96];
  v83[17] = *&v67[111];
  *(&v83[3] + 1) = *v67;
  *(&v83[5] + 1) = *&v67[16];
  *(&v83[7] + 1) = *&v67[32];
  *(&v83[9] + 1) = *&v67[48];
  LOBYTE(v83[18]) = v25;
  *(&v83[18] + 1) = *v69;
  HIDWORD(v83[18]) = *&v69[3];
  v83[19] = v28;
  v83[20] = v29;
  v83[21] = v30;
  v83[22] = v31;
  LOBYTE(v83[23]) = 0;
  *(&v83[23] + 1) = *v70;
  HIDWORD(v83[23]) = *&v70[3];
  *&v83[24] = v32;
  sub_18AE83A40(v84, v106, &qword_1EA99AD48);
  sub_18AE83A40(v82, v106, qword_1EA99AD50);
  sub_18AE7BA80(v83, qword_1EA99AD50);
  v95 = v75;
  v96 = v76;
  *v97 = *v77;
  v91 = v71;
  v92 = v72;
  v93 = v73;
  v89 = KeyPath;
  v90 = 0;
  *&v97[15] = *&v77[15];
  v94 = v74;
  v97[23] = v56;
  *&v97[24] = *v79;
  *&v97[27] = *&v79[3];
  *&v97[31] = v16;
  v98 = v18;
  v99 = v20;
  v100 = v22;
  LOBYTE(v101) = 0;
  *(&v101 + 1) = *v80;
  HIDWORD(v101) = *&v80[3];
  v102 = v23;
  sub_18AE7BA80(&v89, &qword_1EA99AD48);
  memcpy(v106, v65, 0x180uLL);
  CGPointMake(v106, v33);
  memcpy(v114, v106, sizeof(v114));
  v5 = v64;
  v4 = v61;
LABEL_18:
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  sub_18AFCDB54();
  sub_18AFCC194();
  *&v108[55] = v133;
  *&v108[71] = v134;
  *&v108[87] = v135;
  *&v108[103] = v136;
  *&v108[7] = v130;
  *&v108[23] = v131;
  v110 = 0;
  v109 = 0;
  *&v108[39] = v132;
  v36 = sub_18AFCC844();
  v37 = v5 + v4[15];
  v38 = *v37;
  if (*(v37 + 8) != 1)
  {

    sub_18AFCE024();
    v39 = v35;
    v40 = v34;
    v41 = v4;
    v42 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v43 = v62;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v38, 0);
    v44 = v43;
    v4 = v41;
    v34 = v40;
    v35 = v39;
    (*(v63 + 8))(v44, v58);
  }

  sub_18AFCBAA4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v111 = 0;
  if (*(v5 + v4[10]) - 3 < 2 || (v53 = 1.0, *(v5 + v4[9]) != 2))
  {
    v53 = 0.0;
  }

  memcpy(v82, v114, sizeof(v82));
  memcpy(v83, v114, sizeof(v83));
  memcpy(v81, v114, 0x180uLL);
  *&v84[0] = v34;
  BYTE8(v84[0]) = 0;
  *(v84 + 9) = *v107;
  HIDWORD(v84[0]) = *&v107[3];
  *&v84[1] = v35;
  BYTE8(v84[1]) = 0;
  *(&v84[5] + 9) = *&v108[64];
  *(&v84[6] + 9) = *&v108[80];
  *(&v84[7] + 9) = *&v108[96];
  *(&v84[8] + 1) = *&v108[111];
  *(&v84[1] + 9) = *v108;
  *(&v84[2] + 9) = *&v108[16];
  *(&v84[3] + 9) = *&v108[32];
  *(&v84[4] + 9) = *&v108[48];
  LOBYTE(v85) = v36;
  DWORD1(v85) = *&v112[3];
  *(&v85 + 1) = *v112;
  *(&v85 + 1) = v46;
  *&v86 = v48;
  *(&v86 + 1) = v50;
  *&v87 = v52;
  BYTE8(v87) = 0;
  *(&v87 + 9) = *v113;
  HIDWORD(v87) = *&v113[3];
  v88 = v53;
  *&v81[432] = v84[3];
  *&v81[416] = v84[2];
  *&v81[384] = v84[0];
  *&v81[400] = v84[1];
  *&v81[496] = v84[7];
  *&v81[480] = v84[6];
  *&v81[448] = v84[4];
  *&v81[464] = v84[5];
  *&v81[576] = v53;
  *&v81[560] = v87;
  *&v81[544] = v86;
  *&v81[512] = v84[8];
  *&v81[528] = v85;
  memcpy(v59, v81, 0x248uLL);
  v96 = *&v108[64];
  *v97 = *&v108[80];
  *&v97[16] = *&v108[96];
  v92 = *v108;
  v93 = *&v108[16];
  v94 = *&v108[32];
  v89 = v34;
  v90 = 0;
  LODWORD(v91) = *v107;
  *(&v91 + 3) = *&v107[3];
  *(&v91 + 7) = v35;
  HIBYTE(v91) = 0;
  *&v97[31] = *&v108[111];
  v95 = *&v108[48];
  LOBYTE(v98) = v36;
  HIDWORD(v98) = *&v112[3];
  *(&v98 + 1) = *v112;
  v99 = v46;
  v100 = v48;
  v101 = v50;
  v102 = v52;
  v103 = 0;
  *v104 = *v113;
  *&v104[3] = *&v113[3];
  v105 = v53;
  sub_18AE83A40(v83, v106, &qword_1EA99AD38);
  sub_18AE83A40(v84, v106, &qword_1EA99AD40);
  sub_18AE7BA80(&v89, &qword_1EA99AD40);
  memcpy(v106, v82, 0x180uLL);
  sub_18AE7BA80(v106, &qword_1EA99AD38);
}

BOOL sub_18AF2D458(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_18AFCE024();
    v10 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = *&v12[1];
  }

  return v9 >= 2.0;
}

uint64_t sub_18AF2D5BC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_18AFCC9F4();
    v8 = v15;
    v9 = v16;
    v10 = v17;
  }

  else
  {
    v11 = *MEMORY[0x1E697F468];
    v12 = sub_18AFCC534();
    (*(*(v12 - 8) + 104))(v6, v11, v12);
    sub_18AFCD494();
    v13 = v16;
    v14 = v15;
    v10 = v17;
    result = sub_18AF2EF50(v6, MEMORY[0x1E6981998]);
    v9 = v13;
    v8 = v14;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

double sub_18AF2D700@<D0>(uint64_t a1@<X8>)
{
  sub_18AF2D5BC(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_18AF2D75C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AF2D7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AF2D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AF2D8DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

unint64_t sub_18AF2D968()
{
  result = qword_1EA99ACE8;
  if (!qword_1EA99ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ACE8);
  }

  return result;
}

double sub_18AF2D9BC@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = sub_18AFCC474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADE8);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v36 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADF8);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v36 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE00);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v36 - v15;
  v17 = a2;
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v18 = v6;
    v19 = v5;
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v18 + 8))(v8, v19);

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v5 = v19;
    v6 = v18;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v18 + 8))(v8, v5);
  }

  v22 = v16;
  sub_18AFCDD04();
  sub_18AEDC3C8();
  sub_18AFCD084();
  v23 = v43;
  (*(v9 + 32))(v43, v11, v36);
  v23[*(v41 + 56)] = 0;
  if ((v17 & 1) == 0)
  {

    sub_18AFCE024();
    v24 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v6 + 8))(v8, v5);

    sub_18AFCE024();
    v25 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v6 + 8))(v8, v5);
  }

  sub_18AFCDD04();
  sub_18AE95F54(&qword_1EA99AE08, &qword_1EA99ADF0);
  v26 = v38;
  v27 = v43;
  sub_18AFCD084();
  sub_18AEA56B0(v27);
  LODWORD(v27) = sub_18AFCC6E4();
  (*(v39 + 32))(v16, v26, v40);
  v28 = v37;
  *&v16[*(v37 + 52)] = v27;
  *&v16[*(v28 + 56)] = 256;
  if ((v17 & 1) == 0)
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v30 = *(v6 + 8);
    v30(v8, v5);

    sub_18AFCE024();
    v31 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v30(v8, v5);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v32 = v42;
  sub_18AE9A768(v22, v42, &qword_1EA99AE00);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE10) + 36));
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  result = *&v46;
  v33[2] = v46;
  return result;
}

double sub_18AF2E1DC@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v45 = a5;
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E00);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v39 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADD8);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v39 - v16;
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_18AFCC534();
  (*(*(v19 - 8) + 104))(v13, v18, v19);
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    v40 = v11;
    v21 = v17;
    v22 = a1;
    v23 = v14;
    v24 = a3;
    v25 = a2;
    v26 = v9;
    v27 = v8;
    v28 = v20;
    sub_18AFCBA64();

    v8 = v27;
    v9 = v26;
    a2 = v25;
    a3 = v24;
    v14 = v23;
    a1 = v22;
    v17 = v21;
    v11 = v40;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_18AFCDD04();
  sub_18AF2F3C4(&qword_1EA998A48, MEMORY[0x1E6981998]);
  sub_18AFCD084();
  sub_18AF2EF50(v13, MEMORY[0x1E6981998]);
  if (v42)
  {
    if ((a3 & 1) == 0)
    {
LABEL_5:
      LODWORD(v47) = sub_18AFCC6E4();
      goto LABEL_8;
    }
  }

  else
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a3, 0);
    (*(v9 + 8))(v11, v8);
    if (v47 != 1)
    {
      goto LABEL_5;
    }
  }

  sub_18AEFC240();
LABEL_8:
  v30 = sub_18AFCBCD4();
  (*(v44 + 32))(v17, v46, v14);
  v31 = v43;
  *&v17[*(v43 + 52)] = v30;
  *&v17[*(v31 + 56)] = 256;
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v32 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33 = *(v9 + 8);
    v33(v11, v8);

    sub_18AFCE024();
    v34 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33(v11, v8);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v35 = v45;
  sub_18AE9A768(v17, v45, &qword_1EA99ADD8);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADE0) + 36));
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  result = *&v49;
  v36[2] = v49;
  return result;
}

double sub_18AF2E87C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v45 = a5;
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E00);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v39 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADD8);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v39 - v16;
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_18AFCC534();
  (*(*(v19 - 8) + 104))(v13, v18, v19);
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    v40 = v11;
    v21 = v17;
    v22 = a1;
    v23 = v14;
    v24 = a3;
    v25 = a2;
    v26 = v9;
    v27 = v8;
    v28 = v20;
    sub_18AFCBA64();

    v8 = v27;
    v9 = v26;
    a2 = v25;
    a3 = v24;
    v14 = v23;
    a1 = v22;
    v17 = v21;
    v11 = v40;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_18AFCDD04();
  sub_18AF2F3C4(&qword_1EA998A48, MEMORY[0x1E6981998]);
  sub_18AFCD084();
  sub_18AF2EF50(v13, MEMORY[0x1E6981998]);
  if (v42)
  {
    if ((a3 & 1) == 0)
    {
LABEL_5:
      LODWORD(v47) = sub_18AFCC6E4();
      goto LABEL_8;
    }
  }

  else
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a3, 0);
    (*(v9 + 8))(v11, v8);
    if (v47 != 1)
    {
      goto LABEL_5;
    }
  }

  sub_18AEFC240();
LABEL_8:
  v30 = sub_18AFCBCD4();
  (*(v44 + 32))(v17, v46, v14);
  v31 = v43;
  *&v17[*(v43 + 52)] = v30;
  *&v17[*(v31 + 56)] = 256;
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v32 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33 = *(v9 + 8);
    v33(v11, v8);

    sub_18AFCE024();
    v34 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33(v11, v8);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v35 = v45;
  sub_18AE9A768(v17, v45, &qword_1EA99ADD8);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADE0) + 36));
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  result = *&v49;
  v36[2] = v49;
  return result;
}

uint64_t sub_18AF2EF50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18AF2EFB0()
{
  result = qword_1EA99AD10;
  if (!qword_1EA99AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACD8);
    sub_18AF2F03C();
    sub_18AF2F180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD10);
  }

  return result;
}

unint64_t sub_18AF2F03C()
{
  result = qword_1EA99AD18;
  if (!qword_1EA99AD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AD00);
    sub_18AF2F0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD18);
  }

  return result;
}

unint64_t sub_18AF2F0C8()
{
  result = qword_1EA99AD20;
  if (!qword_1EA99AD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACF8);
    sub_18AF09048();
    sub_18AE95F54(&qword_1EA99AD28, &qword_1EA99AD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD20);
  }

  return result;
}

unint64_t sub_18AF2F180()
{
  result = qword_1EA99AD30;
  if (!qword_1EA99AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD30);
  }

  return result;
}

double sub_18AF2F1D4(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_18AFD8FE0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  return result;
}

uint64_t sub_18AF2F214()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18AF2F26C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AF2F2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AF2F3C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18AF2F40C()
{
  result = qword_1EA99AE18;
  if (!qword_1EA99AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ADE0);
    sub_18AE95F54(&qword_1EA99AE20, &qword_1EA99ADD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AE18);
  }

  return result;
}

unint64_t sub_18AF2F4C4()
{
  result = qword_1EA99AE28;
  if (!qword_1EA99AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AE10);
    sub_18AE95F54(&qword_1EA99AE30, &qword_1EA99AE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AE28);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_18AF2F598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AF2F5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AF2F654@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v99 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE48);
  MEMORY[0x1EEE9AC00](v95);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v82 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v82 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE50);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v82 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE58);
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v82 - v14;
  v15 = sub_18AFCC474();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v106 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v106);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960);
  MEMORY[0x1EEE9AC00](v84);
  v20 = &v82 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v82 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v82 - v29;
  sub_18AFCDF14();
  v96 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = *(v106 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_18AFCC534();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v83 = v31;
  v102 = v34;
  v103 = v32;
  v101 = v33 + 104;
  (v34)(v18 + v30, v31);
  __asm { FMOV            V0.2D, #6.0 }

  v82 = _Q0;
  *v18 = _Q0;
  v86 = a2 >> 8;
  v40 = sub_18AF4682C(BYTE1(a2), BYTE2(a2) & 1);
  sub_18AEE10E8(v18, v20);
  v41 = v84;
  *&v20[*(v84 + 52)] = v40;
  *&v20[*(v41 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v20, v27, &qword_1EA998960);
  v42 = &v27[*(v104 + 36)];
  v43 = v131;
  *v42 = v130;
  *(v42 + 1) = v43;
  *(v42 + 2) = v132;
  sub_18AE9A768(v27, v109, &qword_1EA998A40);
  sub_18AFCCD94();
  v44 = sub_18AFCCDA4();

  v116[0] = v44;
  v105 = sub_18AFCBCD4();
  sub_18AFCBB94();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v125[7] = v133;
  *&v125[23] = v134;
  *&v125[39] = v135;
  if ((a2 & 0x10000) != 0)
  {
    v45 = v91;
    if ((a2 & 1) == 0)
    {

      sub_18AFCE024();
      v46 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v47 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v45, 0);
      (*(v89 + 8))(v47, v90);
    }

    v48 = 0.0;
    v49 = v85;
    v50 = v83;
  }

  else
  {
    v45 = v91;
    if (a2)
    {
      v51 = v91;
    }

    else
    {

      sub_18AFCE024();
      v52 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v53 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v45, 0);
      (*(v89 + 8))(v53, v90);
      v51 = v116[0];
    }

    v49 = v85;
    v50 = v83;
    if (v51)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = 0.0;
    }
  }

  v102(v49, v50, v103);
  v116[0] = sub_18AFCCD94();
  v54 = sub_18AFCBCD4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778);
  *(v49 + *(v55 + 52)) = v54;
  *(v49 + *(v55 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v56 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A38) + 36));
  v57 = v137;
  *v56 = v136;
  v56[1] = v57;
  v56[2] = v138;
  *(v49 + *(v87 + 36)) = xmmword_18AFD9720;
  if ((a2 & 0x10000) != 0)
  {
    if ((a2 & 1) == 0)
    {

      sub_18AFCE024();
      v58 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v59 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v45, 0);
      (*(v89 + 8))(v59, v90);
      LOBYTE(v45) = v116[0];
    }

    if (v45)
    {
      v60 = 1.0;
    }

    else
    {
      v60 = 0.0;
    }

    v61 = 21.0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {

      sub_18AFCE024();
      v62 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v63 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v45, 0);
      (*(v89 + 8))(v63, v90);
    }

    v60 = 0.0;
    v61 = -21.0;
  }

  v64 = v92;
  sub_18AE9A768(v49, v92, &qword_1EA99AE50);
  *(v64 + *(v93 + 36)) = v60;
  v65 = v108;
  sub_18AE9A768(v64, v108, &qword_1EA99AE58);
  v102(v24 + *(v106 + 20), v50, v103);
  *v24 = v82;
  *(v24 + *(v41 + 52)) = sub_18AF46998(v86);
  *(v24 + *(v41 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v66 = (v24 + *(v104 + 36));
  v67 = v140;
  *v66 = v139;
  v66[1] = v67;
  v66[2] = v141;
  v68 = v94;
  sub_18AE9A768(v24, v94, &qword_1EA998A40);
  v69 = (v68 + *(v95 + 36));
  *v69 = v61;
  v69[1] = 0.0;
  v70 = v98;
  sub_18AE9A768(v68, v98, &qword_1EA99AE48);
  v71 = v107;
  sub_18AE83A40(v109, v107, &qword_1EA998A40);
  v72 = v97;
  sub_18AE83A40(v65, v97, &qword_1EA99AE58);
  v73 = v100;
  sub_18AE83A40(v70, v100, &qword_1EA99AE48);
  v74 = v99;
  sub_18AE83A40(v71, v99, &qword_1EA998A40);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE60);
  v76 = v74 + v75[12];
  LOBYTE(v110) = 0;
  *(&v110 + 1) = *v126;
  DWORD1(v110) = *&v126[3];
  *(&v110 + 1) = v105;
  *&v113[0] = v129;
  v111 = v127;
  v112 = v128;
  BYTE8(v113[0]) = 1;
  *(v113 + 9) = *v125;
  *(&v113[1] + 9) = *&v125[16];
  *(&v113[2] + 9) = *&v125[32];
  *(&v113[3] + 1) = *&v125[47];
  v106 = xmmword_18AFD9730;
  v114 = xmmword_18AFD9730;
  v115 = v48;
  v77 = v113[0];
  *(v76 + 32) = v128;
  *(v76 + 48) = v77;
  v78 = v113[2];
  *(v76 + 64) = v113[1];
  *(v76 + 80) = v78;
  v79 = v111;
  *v76 = v110;
  *(v76 + 16) = v79;
  v80 = v114;
  *(v76 + 96) = v113[3];
  *(v76 + 112) = v80;
  *(v76 + 128) = v115;
  sub_18AE83A40(v72, v74 + v75[16], &qword_1EA99AE58);
  sub_18AE83A40(v73, v74 + v75[20], &qword_1EA99AE48);
  sub_18AE83A40(&v110, v116, &qword_1EA99AE68);
  sub_18AE7BA80(v70, &qword_1EA99AE48);
  sub_18AE7BA80(v108, &qword_1EA99AE58);
  sub_18AE7BA80(v109, &qword_1EA998A40);
  sub_18AE7BA80(v73, &qword_1EA99AE48);
  sub_18AE7BA80(v72, &qword_1EA99AE58);
  v117 = v127;
  v118 = v128;
  *&v123[15] = *&v125[47];
  *v123 = *&v125[32];
  v122 = *&v125[16];
  LOBYTE(v116[0]) = 0;
  *(v116 + 1) = *v126;
  HIDWORD(v116[0]) = *&v126[3];
  v116[1] = v105;
  v119 = v129;
  v120 = 1;
  v121 = *v125;
  *&v123[23] = v106;
  v124 = v48;
  sub_18AE7BA80(v116, &qword_1EA99AE68);
  sub_18AE7BA80(v107, &qword_1EA998A40);
}

uint64_t sub_18AF3035C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  *a1 = sub_18AFCDB44();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE38);
  if (v6)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_18AF2F654(v3, v9 | (v5 << 8) | v4, a1 + *(v8 + 44));
  v11 = MEMORY[0x18CFECEE0](v10, 0.3, 1.0, 0.0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE40);
  v13 = a1 + *(result + 36);
  *v13 = v11;
  v13[8] = v6;
  return result;
}

unint64_t sub_18AF30424()
{
  result = qword_1EA99AE70;
  if (!qword_1EA99AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AE40);
    sub_18AE95F54(&qword_1EA99AE78, &qword_1EA99AE80);
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AE70);
  }

  return result;
}

uint64_t type metadata accessor for MacWindowControlElement()
{
  result = qword_1EA99AE88;
  if (!qword_1EA99AE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF3057C()
{
  sub_18AF306D8(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
  if (v0 <= 0x3F)
  {
    sub_18AF306D8(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
    if (v1 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38);
      if (v2 <= 0x3F)
      {
        sub_18AF306D8(319, &qword_1EA998418, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997810);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18AF306D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AF30748@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MacWindowControlElement();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v6[7];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v6[8];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a3 + v6[9];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  *(a3 + v6[10]) = v4;
  *(a3 + v6[11]) = v5;
  return result;
}

uint64_t sub_18AF30894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E697F468];
  v5 = sub_18AFCC534();
  v6 = *(*(v5 - 8) + 104);
  v6(a2, v4, v5);
  v7 = type metadata accessor for MacWindowControlElement();
  v8 = *(a1 + *(v7 + 40));
  v9 = *(a1 + *(v7 + 44));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEA0);
  v11 = (a2 + *(v10 + 52));
  *v11 = v8;
  v11[1] = v9;
  *(a2 + *(v10 + 56)) = 256;
  sub_18AF30AD8();
  sub_18AF30AD8();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEA8) + 36));
  *v12 = v26;
  v12[1] = v27;
  v12[2] = v28;
  v13 = sub_18AFCDB44();
  v15 = v14;
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEB0) + 36));
  sub_18AF30E04(a1, v16);
  v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEB8) + 36));
  *v17 = v13;
  v17[1] = v15;
  v18 = sub_18AFCDB44();
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEC0) + 36);
  sub_18AF31514(a1, v21);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEC8) + 36));
  *v22 = v18;
  v22[1] = v20;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AED0) + 36);
  sub_18AF31B3C(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AED8);
  result = (v6)(v23 + *(v24 + 52), v4, v5);
  *(v23 + *(v24 + 56)) = 256;
  return result;
}

uint64_t sub_18AF30AD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF38);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_18AFCBB54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = (v5 + 104);
  if ((*(v0 + *(type metadata accessor for MacWindowControlElement() + 40)) & 0xC0) == 0x40)
  {
    sub_18AED2C20(v10);
    (*v11)(v3, *MEMORY[0x1E697DC20], v4);
    sub_18AF32DBC(&qword_1EA99AF40);
    result = sub_18AFCDDF4();
    if (result)
    {
      sub_18AF32DBC(&qword_1EA99AF48);
      sub_18AFCDDB4();
      sub_18AE7BA80(v3, &qword_1EA99AF38);
      return (*(v5 + 8))(v10, v4);
    }

    __break(1u);
  }

  else
  {
    sub_18AED2C20(v7);
    (*v11)(v3, *MEMORY[0x1E697DC20], v4);
    sub_18AF32DBC(&qword_1EA99AF40);
    result = sub_18AFCDDF4();
    if (result)
    {
      sub_18AF32DBC(&qword_1EA99AF48);
      sub_18AFCDDB4();
      sub_18AE7BA80(v3, &qword_1EA99AF38);
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18AF30E04@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_18AFCC474();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF18);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF20);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v44 - v10;
  v11 = sub_18AFCC534();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFCD4A4();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v12 + 104);
  v19(v18, *MEMORY[0x1E697F468], v11, v16);
  v20 = sub_18AF312E0();
  (v19)(v14, *MEMORY[0x1E697F480], v11);
  v21 = sub_18AFCC524();
  (*(v12 + 8))(v14, v11);
  sub_18AEF0D88(v18);
  v22 = type metadata accessor for MacWindowControlElement();
  LOBYTE(v19) = *(a1 + v22[10]);
  LOBYTE(v12) = *(a1 + v22[11]);
  v23 = *(v7 + 44);
  v24 = *MEMORY[0x1E6981DA0];
  v25 = sub_18AFCDBC4();
  (*(*(v25 - 8) + 104))(&v9[v23], v24, v25);
  *v9 = v19;
  v9[1] = v12;
  v26 = a1 + v22[6];
  v27 = *v26;
  if (*(v26 + 8) != 1)
  {

    sub_18AFCE024();
    v28 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v29 = v44;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v27, 0);
    (*(v45 + 8))(v29, v46);
    LOBYTE(v27) = v49;
  }

  v30 = *&v20 & 0xFFFFFFFFFFFFFFFELL | ((v21 & 1) == 0);
  if (v27)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.65;
  }

  v32 = v48;
  sub_18AF32D4C(v9, v48);
  *(v32 + *(v47 + 36)) = v31;
  sub_18AF312E0();
  sub_18AFCBB94();
  v33 = v49;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF28);
  sub_18AE83A40(v32, a2 + *(v37 + 52), &qword_1EA99AF20);
  *a2 = v30;
  v38 = v50;
  a2[1] = v33;
  a2[2] = v38;
  a2[3] = v34;
  a2[4] = v35;
  a2[5] = v36;
  *(a2 + *(v37 + 56)) = 256;
  v39 = sub_18AFCDB44();
  v41 = v40;
  sub_18AE7BA80(v32, &qword_1EA99AF20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF30);
  v43 = (a2 + *(result + 36));
  *v43 = v39;
  v43[1] = v41;
  return result;
}

double sub_18AF312E0()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MacWindowControlElement();
  v6 = v0 + *(v5 + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    result = 1.0;
    if (v7)
    {
      return result;
    }
  }

  else
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 1.0;
    if (v16)
    {
      return result;
    }
  }

  v10 = v0 + *(v5 + 36);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    v12 = *v10;
  }

  else
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v11, 0);
    (*(v2 + 8))(v4, v1);
    v12 = v15;
  }

  v14 = v12 < 2.0;
  result = 0.5;
  if (!v14)
  {
    return 0.25;
  }

  return result;
}

uint64_t sub_18AF31514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18AFCCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCBA54();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18AF31744(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AFCD014();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v10 = sub_18AFCD004();

  (*(v5 + 8))(v7, v4);
  v11 = type metadata accessor for MacWindowControlElement();
  LOBYTE(v4) = *(a1 + *(v11 + 40));
  LOBYTE(v7) = *(a1 + *(v11 + 44));
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF00) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF08) + 28);
  sub_18AFCD524();
  v15 = sub_18AFCDAD4();
  result = (*(*(v15 - 8) + 56))(v13 + v14, 0, 1, v15);
  *v13 = KeyPath;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 18) = v4;
  *(a2 + 19) = v7;
  return result;
}

uint64_t sub_18AF31744@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCBA54();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(type metadata accessor for MacWindowControlElement() + 40));
  v7 = v6 >> 5;
  if (v6 >> 5 > 1)
  {
    if (v7 == 2)
    {
      if (qword_1EA997980 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0118;
    }

    else if (v7 == 3)
    {
      if (qword_1EA997978 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0100;
    }

    else if (v6 == 128)
    {
      if (qword_1EA997970 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B00E8;
    }

    else
    {
      if (qword_1EA997988 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0130;
    }

LABEL_29:
    v10 = __swift_project_value_buffer(v3, v8);
    v11 = *(v15 + 16);

    return v11(a1, v10, v3);
  }

  if (!v7)
  {
    if (v6)
    {
      if (qword_1EA997958 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B00A0;
    }

    else
    {
      if (qword_1EA997950 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0088;
    }

    goto LABEL_29;
  }

  if (v6)
  {
    if (qword_1EA997968 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9B00D0;
  }

  else
  {
    if (qword_1EA997960 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9B00B8;
  }

  v13 = __swift_project_value_buffer(v3, v9);
  (*(v15 + 16))(v5, v13, v3);
  return (*(v15 + 32))(a1, v5, v3);
}

uint64_t sub_18AF31A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18AE83A40(a1, &v5 - v3, &qword_1EA99AF10);
  return sub_18AFCC2E4();
}

uint64_t sub_18AF31B3C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEE0);
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEE8);
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEF0);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v18 - v6;
  v25 = sub_18AFCCD74();
  v29 = sub_18AFCCD64();
  v8 = MEMORY[0x1E69815C0];
  v9 = MEMORY[0x1E6981568];
  sub_18AFCBAB4();

  v10 = sub_18AFCCD64();
  v28 = v9;
  v29 = v10;
  v25 = v8;
  v26 = v8;
  v27 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_18AFCBAB4();

  (*(v18 + 8))(v3, v1);
  v12 = sub_18AFCCD64();
  v28 = v9;
  v29 = v12;
  v25 = v1;
  v26 = v8;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = v19;
  sub_18AFCBAB4();

  (*(v21 + 8))(v5, v13);
  v14 = type metadata accessor for MacWindowControlElement();
  v15 = v24;
  if (*(v23 + *(v14 + 44)) - 3 >= 2)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v20 + 32))(v24, v7, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEF8);
  *(v15 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_18AF31ECC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18AFCDB44();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE98);
  return sub_18AF30894(v1, a1 + *(v4 + 44));
}

uint64_t sub_18AF31F18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  v10 = (*(v7 + 88))(v9, v6);
  v11 = *MEMORY[0x1E697DBA8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  if (v10 == v11)
  {
    v12 = sub_18AFCCF54();
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8) + 36);
    v14 = *MEMORY[0x1E6981DB8];
    v15 = sub_18AFCDBC4();
    result = (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
    *a1 = v12;
  }

  else
  {
    v17 = sub_18AFCCF54();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8) + 36);
    v19 = *MEMORY[0x1E6981DA0];
    v20 = sub_18AFCDBC4();
    (*(*(v20 - 8) + 104))(a1 + v18, v19, v20);
    *a1 = v17;
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_18AF321C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  v10 = (*(v7 + 88))(v9, v6);
  v11 = *MEMORY[0x1E697DBA8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  if (v10 == v11)
  {
    result = sub_18AFCCF54();
    *a1 = result;
  }

  else
  {
    *a1 = sub_18AFCCF54();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_18AF323AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_18AFCC5A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v11 >> 5;
  if (v11 >> 5 == 2)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    if (v11)
    {
LABEL_23:
      if ((v11 & 1) == 0)
      {
        sub_18AF32F98();
        goto LABEL_26;
      }

LABEL_25:
      sub_18AF32F44();
      goto LABEL_26;
    }

LABEL_17:
    sub_18AF32FEC();
    goto LABEL_26;
  }

  if (v12 != 3)
  {
    if (v1[1])
    {
      if (v1[1] == 1)
      {
LABEL_9:
        if (v11 >> 5 > 2 || v12 < 2)
        {
          goto LABEL_17;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v13 = v8;
      v14 = sub_18AFCC274();
      v8 = v13;
      if ((v14 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v12 != 2)
    {
      v15 = v8;
      sub_18AFCC404();
      sub_18AFCC594();
      v16 = sub_18AFCC584();
      v17 = *(v4 + 8);
      v17(v6, v15);
      v17(v10, v15);
      if (v16)
      {
        v19[1] = sub_18AFCCCD4();
        goto LABEL_26;
      }

      if (v11 >> 5 <= 1)
      {
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else if (v11 == 128)
      {
        sub_18AF32E9C();
        goto LABEL_26;
      }

      sub_18AF32E48();
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v11)
  {
    goto LABEL_25;
  }

LABEL_16:
  sub_18AF32EF0();
LABEL_26:
  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

uint64_t sub_18AF3261C(uint64_t a1)
{
  v60 = a1;
  v2 = sub_18AFCC474();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCBB34();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - v10;
  v11 = sub_18AFCC5C4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_18AFCC5A4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - v25;
  v27 = *v1;
  v28 = v27 >> 5;
  if (v27 >> 5 == 3 || v28 == 2)
  {
    goto LABEL_10;
  }

  v29 = v1[1];
  if (!v28 && (v27 & 1) != 0)
  {
LABEL_21:
    if (v1[1])
    {
      v43 = v29 != 1;
    }

    else
    {
      v50 = v23;
      v43 = sub_18AFCC274();
      v23 = v50;
    }

    v52 = (v27 & 0xC0) == 64;
    v51 = v6;
    if ((v27 & 0xC0) == 0x40 || (v49 = v43, v50 = v23, sub_18AFCC404(), sub_18AFCC594(), v48 = sub_18AFCC584(), v44 = *(v19 + 8), v45 = v21, v46 = v50, v44(v45, v50), v44(v26, v46), LOBYTE(v43) = v49, (v48 & 1) == 0))
    {
      if (v43)
      {
        v35 = v60;
        v31 = v52;
LABEL_15:
        sub_18AFCC2F4();
        (*(v12 + 104))(v14, *MEMORY[0x1E697F608], v11);
        v36 = sub_18AFCBB24();
        v37 = *(v12 + 8);
        v37(v14, v11);
        v37(v17, v11);
        if ((v36 & 1) == 0)
        {
          v34 = v57;
          v33 = v58;
          v32 = v59;
          (*(v58 + 16))(v57, v35, v59);
          (*(v54 + 104))(v56, *MEMORY[0x1E697DBB8], v55);
          sub_18AFCC214();
          if ((v31 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }

LABEL_16:
        v38 = v53;
        sub_18AFCC204();
        v40 = v54;
        v39 = v55;
        if ((*(v54 + 88))(v38, v55) == *MEMORY[0x1E697DBA8])
        {
          v41 = sub_18AFCCD64();
        }

        else
        {
          v41 = sub_18AFCCD94();

          (*(v40 + 8))(v38, v39);
        }

        return v41;
      }
    }

    else
    {
      v47 = sub_18AFCCCD4();
      v31 = v47;
      if (v43)
      {
        v35 = v60;
        if (v47)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v52 = 0;
    }

LABEL_12:
    v32 = v59;
    v34 = v57;
    v33 = v58;
    (*(v58 + 16))(v57, v60, v59, v24);
    sub_18AFCC204();
    sub_18AFCC214();
    if (!v52)
    {
      goto LABEL_24;
    }

LABEL_19:
    if ((v27 & 1) == 0)
    {
      v42 = sub_18AFCCD94();
LABEL_25:
      v41 = v42;

      (*(v33 + 8))(v34, v32);
      return v41;
    }

    sub_18AFCC204();
    sub_18AFCC214();
LABEL_24:
    sub_18AFCCE64();
    sub_18AFCCDC4();

    v42 = sub_18AFCCF64();
    goto LABEL_25;
  }

  if (v29 > 1)
  {
    if (v28 == 3)
    {
LABEL_10:
      v31 = 1;
      v51 = v6;
      if (v27)
      {
        v52 = 1;
        goto LABEL_12;
      }

      v35 = v60;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  return sub_18AFCCD74();
}