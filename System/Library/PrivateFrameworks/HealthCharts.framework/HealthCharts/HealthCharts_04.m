void storeEnumTagSinglePayload for BasicChartModel(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for HealthChartsData() - 8);
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v57 = v8;
  v58 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v60 = *(v5 + 84);
  v59 = v9;
  if (v9 <= v60)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = v9;
  }

  v61 = *(type metadata accessor for Calendar() - 8);
  v11 = *(v61 + 84);
  v12 = *(type metadata accessor for DateInterval() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v55 = v11;
  if (v11 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  v56 = v15;
  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  v17 = type metadata accessor for HealthChartsData.Aggregation();
  v18 = v16;
  v19 = 0;
  v20 = *(v17 - 8);
  if (*(v20 + 64) <= 1uLL)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v20 + 64);
  }

  if (v16 <= v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = v16;
  }

  v23 = v13;
  v24 = *(v6 + 80);
  v25 = (v24 | 7) + *(v5 + 64);
  v26 = v24 + 8;
  v27 = ((v24 + 1) & ~v24) + *(v6 + 64);
  v28 = *(v61 + 80);
  v29 = *(v12 + 80);
  v30 = *(v20 + 80);
  v31 = v28 | v29 | v30 | 7;
  v32 = ((((((v27 + 7 + ((v24 + 8) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v31 + 8;
  v33 = *(v61 + 64) + v29;
  if (v13)
  {
    v34 = *(v12 + 64);
  }

  else
  {
    v34 = *(v12 + 64) + 1;
  }

  v35 = v21 + ((v34 + v30 + ((v33 + ((v28 + 8) & ~v28)) & ~v29)) & ~v30) + 1;
  v36 = v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) + 1;
  if (a3 > v22)
  {
    if (v36 <= 3)
    {
      v37 = ((a3 - v22 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v37))
      {
        v19 = 4;
      }

      else
      {
        if (v37 < 0x100)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        if (v37 >= 2)
        {
          v19 = v38;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v22 < a2)
  {
    v39 = ~v22 + a2;
    if (v36 >= 4)
    {
      v40 = v19;
      bzero(a1, v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) + 1);
      v19 = v40;
      *a1 = v39;
      v41 = 1;
      if (v19 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_89;
    }

    v41 = (v39 >> (8 * v36)) + 1;
    if (v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) != -1)
    {
      v43 = v19;
      v44 = v39 & ~(-1 << (8 * v36));
      bzero(a1, v35 + ((v32 + (v25 & ~(v24 | 7))) & ~v31) + 1);
      if (v36 != 3)
      {
        v19 = v43;
        if (v36 == 2)
        {
          *a1 = v44;
          if (v43 > 1)
          {
            goto LABEL_41;
          }
        }

        else
        {
          *a1 = v39;
          if (v43 > 1)
          {
LABEL_41:
            if (v19 == 2)
            {
              *&a1[v36] = v41;
            }

            else
            {
              *&a1[v36] = v41;
            }

            return;
          }
        }

LABEL_89:
        if (v19)
        {
          a1[v36] = v41;
        }

        return;
      }

      *a1 = v44;
      a1[2] = BYTE2(v44);
      v19 = v43;
    }

    if (v19 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

  v42 = a1;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v36] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *&a1[v36] = 0;
  }

  else if (v19)
  {
    a1[v36] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  if (v60 != v22)
  {
    v47 = &a1[v25] & ~(v24 | 7);
    if (v59 == v22)
    {
      v48 = (v26 + v47) & ~v24;
      if (v58 < 0x7FFFFFFF)
      {
        v54 = (v27 + 7 + v48) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v54 + 40) = 0u;
          *(v54 + 24) = 0u;
          *(v54 + 8) = 0u;
          *v54 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v54 + 8) = a2 - 1;
        }

        return;
      }

      if (v57 >= a2)
      {
        v45 = *(v6 + 56);
        v42 = (v24 + 1 + v48) & ~v24;
        v46 = a2;
        goto LABEL_57;
      }

      if (v27 <= 3)
      {
        v49 = ~(-1 << (8 * v27));
      }

      else
      {
        v49 = -1;
      }

      if (!v27)
      {
        return;
      }

      v50 = v49 & (~v57 + a2);
      if (v27 <= 3)
      {
        v51 = v27;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v26 + v47) & ~v24), v27);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
LABEL_72:
          *v48 = v50;
          return;
        }

LABEL_86:
        *v48 = v50;
        return;
      }
    }

    else
    {
      v48 = (v32 + v47) & ~v31;
      if (v18 >= a2)
      {
        if (v56 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *v48 = 0;
            *v48 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v48 = a2;
          }

          return;
        }

        v42 = (v28 + 8 + v48) & ~v28;
        if (v55 == v18)
        {
          v45 = *(v61 + 56);
          v46 = a2;
        }

        else
        {
          if (v23 < 2)
          {
            return;
          }

          v45 = *(v12 + 56);
          v42 = (v33 + v42) & ~v29;
          v46 = a2 + 1;
        }

        goto LABEL_57;
      }

      v52 = (v35 + 1);
      if (v52 <= 3)
      {
        v53 = ~(-1 << (8 * (v35 + 1)));
      }

      else
      {
        v53 = -1;
      }

      if (v35 == -1)
      {
        return;
      }

      v50 = v53 & (~v18 + a2);
      if (v52 <= 3)
      {
        v51 = v35 + 1;
      }

      else
      {
        v51 = 4;
      }

      bzero(((v32 + v47) & ~v31), v52);
      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          goto LABEL_72;
        }

        goto LABEL_86;
      }
    }

    if (v51 == 3)
    {
      *v48 = v50;
      *(v48 + 2) = BYTE2(v50);
    }

    else
    {
      *v48 = v50;
    }

    return;
  }

  v45 = *(v5 + 56);
  v46 = a2;
LABEL_57:

  v45(v42, v46);
}

uint64_t sub_25140CEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25140CF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EmptyDateChartModel()
{
  result = type metadata singleton initialization cache for EmptyDateChartModel;
  if (!type metadata singleton initialization cache for EmptyDateChartModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for EmptyDateChartModel()
{
  result = type metadata accessor for HealthChartsContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t HealthChart.ViewModel.init(attributes:series:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, void *a7@<X8>)
{
  v77 = a6;
  v79 = type metadata accessor for HealthChartsData.Aggregation();
  v81 = *(v79 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x277D102B8];
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v66 - v17;
  v83 = a3;
  *&v84 = a3;
  *(&v84 + 1) = a5;
  v85 = a5;
  v71 = type metadata accessor for ChartAttributes.AxisAttributes();
  v18 = *(v71 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v71);
  *&v70 = &v66 - v20;
  *a7 = *a1;
  v21 = type metadata accessor for ChartAttributes();
  v22 = *(v21 + 36);
  v75 = v21;
  v23 = a1;
  LOBYTE(v83) = *(a1 + v22);
  v82 = 0;
  LOBYTE(a1) = static ChartAttributes.AxisLabels.== infix(_:_:)(&v83, &v82);
  v83 = a3;
  *&v84 = a4;
  v72 = a5;
  *(&v84 + 1) = a5;
  v85 = v77;
  v24 = type metadata accessor for HealthChart.ViewModel();
  *(a7 + v24[20]) = a1 & 1;
  v25 = *(v21 + 40);
  v26 = v23;
  v73 = v23;
  v27 = v23 + v25;
  LOBYTE(v83) = *v27;
  v82 = 0;
  *(a7 + v24[19]) = static ChartAttributes.AxisLabels.== infix(_:_:)(&v83, &v82);
  v28 = v26 + v22;
  v29 = v70;
  v30 = v71;
  (*(v18 + 16))(v70, v28, v71);
  v31 = *(v30 + 13);
  v67 = v24[17];
  v68 = a3;
  v32 = *(*(a3 - 8) + 32);
  v76 = a7;
  v32(&v67[a7], v29 + v31, a3);
  v33 = *(v27 + 1);
  v35 = *(v27 + 4);
  v34 = *(v27 + 5);
  v36 = *(v27 + 6);
  v37 = v24[18];
  v77 = v24;
  v38 = a7 + v37;
  *v38 = v33;
  v70 = *(v27 + 1);
  *(v38 + 8) = v70;
  *(v38 + 3) = v35;
  *(v38 + 4) = v34;
  *(v38 + 5) = v36;
  v39 = a2[3];
  v40 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v39);
  v71 = *(v40 + 32);
  v66 = v24[13];

  v41 = v76;
  (v71)(v39, v40);
  v42 = a2[3];
  v43 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v42);
  v71 = (*(v43 + 40))(v42, v43);
  *&v70 = v44;
  v45 = v77;
  v46 = &v41[v77[14]];
  *v46 = v71;
  *(v46 + 1) = v44;
  v69 = v47 & 1;
  v46[16] = v47 & 1;
  v48 = a2[3];
  v49 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v48);
  v50 = v78;
  (*(v49 + 56))(v48, v49);
  v51 = a2[3];
  v52 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v51);
  v53 = v74;
  (*(v52 + 48))(v51, v52);
  v54 = &v41[v45[15]];
  (*(v72 + 7))(&v41[v66], v50, v53, v68);
  v55 = *(v81 + 8);
  v81 += 8;
  v72 = v55;
  (v55)(v53, v79);
  outlined destroy of ScaleType?(v50, &lazy cache variable for type metadata for HealthChartsUnit?, v80);
  v56 = *(v38 + 1);
  v67 = *v38;
  v68 = *(v38 + 3);
  v57 = *(v38 + 5);
  v58 = a2[3];
  v59 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v58);
  v60 = *(v59 + 56);

  v61 = v78;
  v60(v58, v59);
  v62 = a2[3];
  v63 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v62);
  (*(v63 + 48))(v62, v63);
  (v67)(&v83, v71, v70, v69, v61, v53);
  (*(*(v75 - 8) + 8))(v73);
  (v72)(v53, v79);
  outlined destroy of ScaleType?(v61, &lazy cache variable for type metadata for HealthChartsUnit?, v80);

  v64 = &v76[v77[16]];
  *v64 = v83;
  *(v64 + 8) = v84;
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t HealthChart.ViewModel.xAxisContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = type metadata accessor for HealthChartsData.Aggregation();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = *(a1 + 32);
  v48 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v42 = &v41 - v18;
  type metadata accessor for AxisMarks<Never>(0, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v47 = v24;
  v49 = type metadata accessor for BuilderConditional();
  v46 = *(v49 - 8);
  v25 = *(v46 + 64);
  MEMORY[0x28223BE20](v49);
  v27 = &v41 - v26;
  if (*(v2 + *(a1 + 80)) == 1)
  {
    HealthChart.ViewModel.emptyAxisContent()();
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = v47;
    static AxisContentBuilder.buildEither<A, B>(first:)(v23, v47);
    (*(v20 + 8))(v23, v29);
  }

  else
  {
    v41 = *(a1 + 68);
    v30 = *(a1 + 52);
    v31 = type metadata accessor for HealthChartsUnit();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    v32 = v44;
    v33 = v45;
    (*(v44 + 104))(v7, *MEMORY[0x277D10200], v45);
    (*(v12 + 64))(v2 + v30, v11, v7, v48, v12);
    (*(v32 + 8))(v7, v33);
    outlined destroy of ScaleType?(v11, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = v42;
    v34 = v43;
    v36 = *(v43 + 16);
    v36(v42, v16, AssociatedTypeWitness);
    v37 = *(v34 + 8);
    v37(v16, AssociatedTypeWitness);
    v36(v16, v35, AssociatedTypeWitness);
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    static AxisContentBuilder.buildEither<A, B>(second:)(v16, v47, AssociatedTypeWitness);
    v37(v16, AssociatedTypeWitness);
    v37(v35, AssociatedTypeWitness);
  }

  v51 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  v52 = AssociatedConformanceWitness;
  v38 = v49;
  swift_getWitnessTable();
  v39 = v46;
  (*(v46 + 16))(v50, v27, v38);
  return (*(v39 + 8))(v27, v38);
}

uint64_t HealthChart.ViewModel.emptyAxisContent()()
{
  v0 = type metadata accessor for AxisMarkPosition();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<A>(preset:position:values:stroke:)();
}

uint64_t static AxisContentBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuilderConditional.Storage();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t static AxisContentBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BuilderConditional.Storage();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t HealthChart.ViewModel.yAxisContent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  type metadata accessor for AxisMarks<Never>(0, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v20 = &v32 - v19;
  if (*(v2 + v18[19]) == 1)
  {
    HealthChart.ViewModel.emptyAxisContent()();
    (*(v16 + 32))(a2, v20, v15);
  }

  else
  {
    v21 = (v2 + v18[18]);
    v23 = v21[1];
    v22 = v21[2];
    v24 = v21[3];
    v25 = v21[5];
    v26 = (v2 + v18[14]);
    v27 = *v26;
    v33 = v26[1];
    v34 = v22;
    v28 = *(v26 + 16);
    v29 = type metadata accessor for HealthChartsUnit();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    (*(v6 + 104))(v9, *MEMORY[0x277D10200], v5);

    v34(v35, v27, v33, v28, v13, v9);
    (*(v6 + 8))(v9, v5);
    outlined destroy of ScaleType?(v13, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);

    v30 = v35[1];
    *a2 = v35[0];
    *(a2 + 16) = v30;
    *(a2 + 32) = v36;
  }

  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(0, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>.Storage, MEMORY[0x277CBB370]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static HealthChart.build<A>(attributes:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v32 = a2;
  v34 = a1;
  v37 = a7;
  v31 = type metadata accessor for ChartAttributes();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v30 - v13;
  v30 = (&v30 - v13);
  v44[0] = a3;
  v44[1] = MEMORY[0x277CBB350];
  v44[2] = a5;
  AssociatedTypeWitness = MEMORY[0x277CBB348];
  v35 = type metadata accessor for HealthChart.ViewModel();
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v30 - v19);
  v36 = *(a4 - 8);
  v21 = *(v36 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32(v23);
  (*(v11 + 16))(v14, v34, v31);
  v26 = *(a6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v44);
  v26(a4, a6);
  HealthChart.ViewModel.init(attributes:series:)(v30, v44, a3, MEMORY[0x277CBB350], a5, MEMORY[0x277CBB348], v20);
  v27 = v33;
  v28 = v35;
  (*(v15 + 16))(v33, v20, v35);
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = v25;
  v43 = v20;
  HealthChart.init(_:_:)(v27, partial apply for closure #1 in static HealthChart.build<A>(attributes:_:), v37);
  (*(v15 + 8))(v20, v28);
  return (*(v36 + 8))(v25, a4);
}

uint64_t boundedContent #1 <A, B><A1>() in static HealthChart.build<A>(attributes:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a6;
  v57 = a5;
  OpaqueTypeConformance2 = a3;
  v65 = a7;
  type metadata accessor for AxisMarks<Never>(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277D839F8], MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for PointMark();
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0();
  v66 = v16;
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.opacity(_:)>>.0();
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = *(v63 + 64);
  MEMORY[0x28223BE20](v20);
  v62 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v61 = &v55 - v24;
  MEMORY[0x28223BE20](v25);
  v59 = &v55 - v26;
  MEMORY[0x28223BE20](v27);
  v55 = &v55 - v28;
  v58 = a4;
  v69 = *(a4 - 8);
  v29 = *(v69 + 64);
  MEMORY[0x28223BE20](v30);
  v67 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v68 = &v55 - v33;
  v60 = *(v60 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)(a1, a4, v60);
  v80 = 1501061485;
  v81 = 0xE400000000000000;
  v77 = String.init<A>(_:)();
  v78 = v34;
  v80 = OpaqueTypeConformance2;
  v81 = MEMORY[0x277CBB350];
  v82 = v57;
  v83 = MEMORY[0x277CBB348];
  v35 = a2 + *(type metadata accessor for HealthChart.ViewModel() + 64);
  v80 = *(v35 + 8);
  v57 = lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A>(x:y:)();
  v36 = MEMORY[0x277CBB468];
  ChartContent.accessibilityHidden(_:)();
  v37 = *(v70 + 8);
  v70 += 8;
  v37(v15, v12);
  v80 = v12;
  v81 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v66;
  ChartContent.opacity(_:)();
  v39 = *(v71 + 8);
  v71 += 8;
  v39(v19, v38);
  v80 = 1500408173;
  v81 = 0xE400000000000000;
  v80 = String.init<A>(_:)();
  v81 = v40;
  v77 = *(v35 + 16);
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A>(x:y:)();
  ChartContent.accessibilityHidden(_:)();
  v37(v15, v12);
  v41 = v59;
  v42 = v38;
  v43 = OpaqueTypeConformance2;
  ChartContent.opacity(_:)();
  v39(v19, v42);
  v44 = v67;
  v45 = v58;
  (*(v69 + 16))(v67, v68, v58);
  v80 = v44;
  v46 = v63;
  v47 = v64;
  v48 = *(v63 + 16);
  v49 = v61;
  v50 = v55;
  v48(v61, v55, v64);
  v81 = v49;
  v51 = v62;
  v48(v62, v41, v47);
  v82 = v51;
  v77 = v45;
  v78 = v47;
  v79 = v47;
  v73 = v43;
  v74 = v60;
  v72 = v66;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v75;
  static ChartContentBuilder.buildBlock<each A>(_:)(&v80, 3uLL, &v77, v65);
  v52 = *(v46 + 8);
  v52(v41, v47);
  v52(v50, v47);
  v53 = *(v69 + 8);
  v53(v68, v45);
  v52(v51, v47);
  v52(v49, v47);
  return (v53)(v67, v45);
}

uint64_t closure #1 in static HealthChart.build<A>(attributes:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for <<opaque return type of ChartContent.opacity(_:)>>.0();
  a7[3] = type metadata accessor for BuilderTuple();
  v16 = *(a6 + 8);
  type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0();
  type metadata accessor for PointMark();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  a7[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
  return boundedContent #1 <A, B><A1>() in static HealthChart.build<A>(attributes:_:)(a1, a2, a3, a4, a5, a6, boxed_opaque_existential_1);
}

uint64_t HealthChart.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for HealthChart.ViewModel();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = type metadata accessor for HealthChart();
  v9 = a3 + *(v8 + 52);
  a2(v8, v10, v11, v12);
  return (*(v7 + 8))(a1, v6);
}

uint64_t HealthChart.init<>(attributes:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int *a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v21 = a2;
  v23 = a1;
  v25 = a3;
  v26 = a5;
  v12 = a5;
  v13 = type metadata accessor for ChartAttributes();
  v22 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v20 - v16);
  v24 = *(a6 + 8);
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = v12;
  AssociatedTypeWitness = v24;
  LODWORD(v12) = *(type metadata accessor for HealthChart() + 52);
  v21();
  (*(v14 + 16))(v17, a1, v13);
  v18 = *(a6 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v27);
  v18(a4, a6);
  HealthChart.ViewModel.init(attributes:series:)(v17, v27, v25, a4, v26, v24, a7);
  return (*(v14 + 8))(v23, v22);
}

uint64_t HealthChart.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v25 = a1[3];
  v26 = a1[5];
  type metadata accessor for Chart();
  type metadata accessor for ModifiedContent();
  v3 = a1[4];
  v4 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  WitnessTable = swift_getWitnessTable();
  v42 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  v24 = v3;
  v23 = v4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderConditional();
  swift_getOpaqueTypeConformance2();
  v34 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  v35 = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AutomaticScaleDomain();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  swift_getOpaqueTypeMetadata2();
  v5 = type metadata accessor for _ConditionalContent();
  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378]);
  v7 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = swift_getOpaqueTypeConformance2();
  v8 = swift_getWitnessTable();
  v9 = lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>();
  swift_getOpaqueTypeMetadata2();
  v36 = v5;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  *&v18 = v23;
  *(&v18 + 1) = v25;
  *&v19 = v24;
  *(&v19 + 1) = v26;
  v29 = v18;
  v30 = v19;
  v31 = v27;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v20 = v11[2];
  v20(v17, v14, v10);
  v21 = v11[1];
  v21(v14, v10);
  v20(v28, v17, v10);
  return (v21)(v17, v10);
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t closure #1 in HealthChart.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v130 = a1;
  v131 = a6;
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v92 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v126 = type metadata accessor for AxisScale();
  v124 = *(v126 - 8);
  v13 = *(v124 + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v92 - v14;
  v129 = a3;
  v132 = a5;
  v15 = type metadata accessor for Chart();
  v117 = *(v15 - 8);
  v16 = *(v117 + 64);
  MEMORY[0x28223BE20](v15);
  v116 = &v92 - v17;
  v18 = type metadata accessor for ModifiedContent();
  v123 = *(v18 - 8);
  v19 = *(v123 + 64);
  MEMORY[0x28223BE20](v18);
  v122 = &v92 - v20;
  v21 = type metadata accessor for ClosedRange();
  v121 = v15;
  WitnessTable = swift_getWitnessTable();
  v142 = WitnessTable;
  v143 = MEMORY[0x277CDF678];
  v22 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getWitnessTable();
  v138 = v18;
  *&v139 = v21;
  *(&v139 + 1) = v22;
  v140 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v119 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v115 = &v92 - v26;
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for BuilderConditional();
  v125 = v18;
  v138 = v18;
  *&v139 = v21;
  v118 = v21;
  v114 = v22;
  *(&v139 + 1) = v22;
  v140 = v23;
  v113 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  v133 = a4;
  v30 = a2;
  v31 = swift_getAssociatedConformanceWitness();
  v136 = v29;
  v137 = v31;
  v32 = swift_getWitnessTable();
  v138 = OpaqueTypeMetadata2;
  *&v139 = v27;
  *(&v139 + 1) = OpaqueTypeConformance2;
  v140 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v108 = *(v33 - 8);
  v34 = *(v108 + 64);
  MEMORY[0x28223BE20](v33);
  v106 = &v92 - v35;
  v36 = type metadata accessor for AutomaticScaleDomain();
  v120 = OpaqueTypeMetadata2;
  v138 = OpaqueTypeMetadata2;
  *&v139 = v27;
  v111 = v27;
  v110 = OpaqueTypeConformance2;
  *(&v139 + 1) = OpaqueTypeConformance2;
  v140 = v32;
  v107 = v32;
  v37 = swift_getOpaqueTypeConformance2();
  v138 = v33;
  *&v139 = v36;
  v38 = MEMORY[0x277CBB398];
  *(&v139 + 1) = v37;
  v140 = MEMORY[0x277CBB398];
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v40 = v39;
  v41 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v138 = v33;
  *&v139 = v40;
  *(&v139 + 1) = v37;
  v140 = v41;
  swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for _ConditionalContent();
  v103 = *(v42 - 8);
  v43 = *(v103 + 64);
  MEMORY[0x28223BE20](v42);
  v102 = &v92 - v44;
  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378]);
  v46 = v45;
  v138 = v33;
  *&v139 = v36;
  *(&v139 + 1) = v37;
  v140 = v38;
  v47 = swift_getOpaqueTypeConformance2();
  v109 = v33;
  v138 = v33;
  *&v139 = v40;
  v105 = v37;
  *(&v139 + 1) = v37;
  v140 = v41;
  v48 = swift_getOpaqueTypeConformance2();
  v134 = v47;
  v135 = v48;
  v49 = swift_getWitnessTable();
  v50 = lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>();
  v104 = v42;
  v138 = v42;
  *&v139 = v46;
  v101 = v46;
  v98 = v49;
  *(&v139 + 1) = v49;
  v140 = v50;
  v97 = v50;
  v100 = swift_getOpaqueTypeMetadata2();
  v99 = *(v100 - 8);
  v51 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = &v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v96 = &v92 - v54;
  type metadata accessor for MainActor();
  v94 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v92 - 6) = v30;
  v56 = v30;
  v93 = v30;
  v58 = v129;
  v57 = v130;
  v60 = v132;
  v59 = v133;
  *(&v92 - 5) = v129;
  *(&v92 - 4) = v59;
  v61 = v59;
  *(&v92 - 3) = v60;
  *(&v92 - 2) = v57;
  v62 = v116;
  Chart.init(content:)();
  v63 = *v57;
  static Alignment.center.getter();
  v64 = v122;
  v65 = v121;
  View.frame(width:height:alignment:)();
  (*(v117 + 8))(v62, v65);
  v138 = v56;
  *&v139 = v58;
  *(&v139 + 1) = v61;
  v140 = v60;
  v121 = type metadata accessor for HealthChart.ViewModel();
  v66 = v126;
  v67 = v127;
  (*(v124 + 16))(v127, &v57[*(v121 + 60)], v126);
  v68 = *(v66 + 36);
  v69 = type metadata accessor for ScaleType();
  v70 = v128;
  (*(*(v69 - 8) + 56))(v128, 1, 1, v69);
  v71 = swift_checkMetadataState();
  v72 = v115;
  v73 = v125;
  View.chartXScale<A>(domain:type:)();
  outlined destroy of ScaleType?(v70, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
  (*(v123 + 8))(v64, v73);
  v74 = (*(*(v71 - 8) + 8))(&v67[v68], v71);
  MEMORY[0x28223BE20](v74);
  v75 = v93;
  *(&v92 - 6) = v93;
  *(&v92 - 5) = v58;
  v77 = v132;
  v76 = v133;
  *(&v92 - 4) = v133;
  *(&v92 - 3) = v77;
  *(&v92 - 2) = v57;
  swift_checkMetadataState();
  v78 = v106;
  v79 = v120;
  View.chartXAxis<A>(content:)();
  (*(v119 + 8))(v72, v79);
  v80 = &v57[*(v121 + 64)];
  LOBYTE(v138) = *v80;
  v139 = *(v80 + 8);
  v81 = v102;
  v82 = v109;
  View.chartYScale(scale:)(&v138, v109, v105, v102);
  v83 = (*(v108 + 8))(v78, v82);
  MEMORY[0x28223BE20](v83);
  *(&v92 - 6) = v75;
  *(&v92 - 5) = v58;
  *(&v92 - 4) = v76;
  *(&v92 - 3) = v77;
  *(&v92 - 2) = v57;
  swift_checkMetadataState();
  v84 = v95;
  v85 = v104;
  View.chartYAxis<A>(content:)();
  (*(v103 + 8))(v81, v85);
  v86 = v99;
  v87 = *(v99 + 16);
  v88 = v96;
  v89 = v100;
  v87(v96, v84, v100);
  v90 = *(v86 + 8);
  v90(v84, v89);
  v87(v131, v88, v89);
  v90(v88, v89);
}

uint64_t associated type witness table accessor for View.Body : View in HealthChart<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t closure #1 in closure #1 in HealthChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[1] = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v15 = type metadata accessor for HealthChart();
  static ChartContentBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ChartContentBuilder.buildExpression<A>(_:)(v14, a3, a5);
  (*(v11 + 8))(v14, a3);
}

uint64_t closure #2 in closure #1 in HealthChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v24 = a1;
  v25 = a6;
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for BuilderConditional();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = a2;
  v29 = v22;
  v30 = a4;
  v31 = v23;
  v16 = type metadata accessor for HealthChart.ViewModel();
  HealthChart.ViewModel.xAxisContent()(v16, v12);
  v17 = lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v17;
  v27 = AssociatedConformanceWitness;
  swift_getWitnessTable();
  v19 = v9[2];
  v19(v15, v12, v8);
  v20 = v9[1];
  v20(v12, v8);
  v19(v25, v15, v8);
  v20(v15, v8);
}

uint64_t View.chartYScale(scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *&v72 = a2;
  *(&v72 + 1) = v7;
  v68 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v69 = *(&v72 + 1);
  v73 = a3;
  v74 = v68;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v56 - v13;
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v56 - v16;
  v18 = type metadata accessor for AutomaticScaleDomain();
  v57 = *(v18 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72 = a2;
  *(&v72 + 1) = v22;
  v67 = v22;
  v66 = a3;
  v73 = a3;
  v74 = MEMORY[0x277CBB398];
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  v64 = OpaqueTypeMetadata2;
  v31 = type metadata accessor for _ConditionalContent();
  v62 = *(v31 - 8);
  v63 = v31;
  v32 = *(v62 + 64);
  MEMORY[0x28223BE20](v31);
  v61 = &v56 - v33;
  if (*a1)
  {
    v72 = *(a1 + 8);
    v34 = type metadata accessor for ScaleType();
    (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
    v35 = swift_checkMetadataState();
    v57 = v23;
    v36 = a2;
    v37 = v66;
    v38 = v68;
    View.chartYScale<A>(domain:type:)();
    outlined destroy of ScaleType?(v17, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
    *&v72 = v36;
    *(&v72 + 1) = v35;
    v73 = v37;
    v74 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v58;
    v39 = v59;
    v41 = *(v59 + 16);
    v42 = v64;
    v41(v58, v11, v64);
    v43 = *(v39 + 8);
    v43(v11, v42);
    v41(v11, v40, v42);
    *&v72 = v36;
    *(&v72 + 1) = v67;
    v73 = v37;
    a2 = v36;
    v74 = MEMORY[0x277CBB398];
    swift_getOpaqueTypeConformance2();
    v44 = v61;
    static ViewBuilder.buildEither<A, B>(second:)(v11, v57, v42);
    v43(v11, v42);
    v43(v40, v42);
  }

  else
  {
    static ScaleDomain<>.automatic(includesZero:reversed:)();
    v45 = type metadata accessor for ScaleType();
    (*(*(v45 - 8) + 56))(v17, 1, 1, v45);
    v46 = v66;
    v47 = v67;
    View.chartYScale<A>(domain:type:)();
    outlined destroy of ScaleType?(v17, &lazy cache variable for type metadata for ScaleType?, MEMORY[0x277CBB480]);
    (*(v57 + 8))(v21, v47);
    *&v72 = a2;
    *(&v72 + 1) = v47;
    v73 = v46;
    v74 = MEMORY[0x277CBB398];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v24[2];
    v48(v30, v27, v23);
    v49 = v24[1];
    v49(v27, v23);
    v48(v27, v30, v23);
    *&v72 = a2;
    *(&v72 + 1) = v69;
    v73 = v46;
    v74 = v68;
    swift_getOpaqueTypeConformance2();
    v44 = v61;
    static ViewBuilder.buildEither<A, B>(first:)(v27, v23);
    v49(v27, v23);
    v49(v30, v23);
  }

  v50 = v66;
  *&v72 = a2;
  *(&v72 + 1) = v67;
  v73 = v66;
  v74 = MEMORY[0x277CBB398];
  v51 = swift_getOpaqueTypeConformance2();
  *&v72 = a2;
  *(&v72 + 1) = v69;
  v73 = v50;
  v74 = v68;
  v52 = swift_getOpaqueTypeConformance2();
  v70 = v51;
  v71 = v52;
  v53 = v63;
  swift_getWitnessTable();
  v54 = v62;
  (*(v62 + 16))(v65, v44, v53);
  return (*(v54 + 8))(v44, v53);
}

uint64_t closure #3 in closure #1 in HealthChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for HealthChart.ViewModel();
  HealthChart.ViewModel.yAxisContent()(v2, a1);
}

uint64_t type metadata completion function for HealthChart(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  result = type metadata accessor for HealthChart.ViewModel();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChart(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(v7 - 8);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v7 - 8);
  v14 = *(v11 + 84);
  if (v10 <= v14)
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a3[3] - 8);
  v18 = *(v17 + 84);
  v19 = *(v8 + 80);
  v20 = *(v8 + 64);
  v21 = *(v11 + 80);
  v22 = *(v11 + 64);
  v23 = *(v17 + 80);
  if (v18 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v17 + 84);
  }

  v25 = (v20 + v19) & ~v19;
  v26 = v25 + v20;
  if (v10)
  {
    v27 = v25 + v20;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v26 + ((v19 + 1) & ~v19) + 7;
  v29 = v22 + 7;
  v30 = ((v22 + 7 + ((v21 + 24 + ((v28 + ((v19 + 17 + ((v27 + ((v19 + 8) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + v23 + 50;
  v31 = a2 - v24;
  if (a2 > v24)
  {
    v32 = (v30 & ~v23) + *(v17 + 64);
    v33 = 8 * v32;
    if (v32 > 3)
    {
      goto LABEL_19;
    }

    v35 = ((v31 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (v34)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v35 <= 0xFF)
      {
        if (v35 < 2)
        {
          goto LABEL_39;
        }

LABEL_19:
        v34 = *(a1 + v32);
        if (!*(a1 + v32))
        {
          goto LABEL_39;
        }

LABEL_26:
        v36 = (v34 - 1) << v33;
        if (v32 > 3)
        {
          v36 = 0;
        }

        if (v32)
        {
          if (v32 <= 3)
          {
            v37 = (v30 & ~v23) + *(v17 + 64);
          }

          else
          {
            v37 = 4;
          }

          if (v37 > 2)
          {
            if (v37 == 3)
            {
              v38 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v38 = *a1;
            }
          }

          else if (v37 == 1)
          {
            v38 = *a1;
          }

          else
          {
            v38 = *a1;
          }
        }

        else
        {
          v38 = 0;
        }

        return v24 + (v38 | v36) + 1;
      }

      v34 = *(a1 + v32);
      if (*(a1 + v32))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_39:
  if (v16 < v18)
  {
    v39 = *(v17 + 48);

    return v39((a1 + v30) & ~v23, v18);
  }

  v41 = ~v19;
  if (v12 == v16)
  {
    if (v10 >= 2)
    {
      v44 = (*(v9 + 48))((a1 + v19 + 8) & ~v19);
      if (v44 >= 2)
      {
        return v44 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v42 = (v19 + 17 + ((((a1 + v19 + 8) & ~v19) + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) & v41;
  if (v10 == v16)
  {
    v43 = *(v9 + 48);

    return v43((v19 + 1 + v42) & v41);
  }

  else
  {
    v45 = (v21 + 24 + ((v28 + v42) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
    if (v14 == v16)
    {
      v46 = *(*(v7 - 8) + 48);

      return v46(v45, v14, v7);
    }

    else
    {
      v47 = *((v29 + v45) & 0xFFFFFFFFFFFFFFF8);
      if (v47 >= 0xFFFFFFFF)
      {
        LODWORD(v47) = -1;
      }

      return (v47 + 1);
    }
  }
}

void storeEnumTagSinglePayload for HealthChart(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = a4[4];
  v7 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = 0;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v56 = v7;
  v15 = *(v7 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v14 = *(v15 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(a4[3] - 8);
  v19 = *(v18 + 84);
  v57 = *(AssociatedTypeWitness - 8);
  v20 = *(v10 + 80);
  v21 = *(v15 + 80);
  v22 = *(*(v7 - 8) + 64);
  v23 = *(v18 + 80);
  if (v19 <= v17)
  {
    v24 = v17;
  }

  else
  {
    v24 = *(v18 + 84);
  }

  v25 = ((*(*(AssociatedTypeWitness - 8) + 64) + v20) & ~v20) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v11)
  {
    v26 = ((*(*(AssociatedTypeWitness - 8) + 64) + v20) & ~v20) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v25 + ((v20 + 1) & ~v20);
  v28 = v27 + 7 + ((v20 + 17 + ((v26 + ((v20 + 8) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20);
  v29 = v21 + 24;
  v30 = v22 + 7;
  v31 = ((v22 + 7 + ((v21 + 24 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + v23 + 50;
  v32 = (v31 & ~v23) + *(v18 + 64);
  v33 = a3 >= v24;
  v34 = a3 - v24;
  if (v34 != 0 && v33)
  {
    if (v32 <= 3)
    {
      v35 = ((v34 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
      if (HIWORD(v35))
      {
        v9 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v9 = v36;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v24 < a2)
  {
    v37 = ~v24 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      *a1 = v37;
      v38 = 1;
      if (v9 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

    v38 = (v37 >> (8 * v32)) + 1;
    if (v32)
    {
      v39 = v37 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v39;
          if (v9 > 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *a1 = v37;
          if (v9 > 1)
          {
LABEL_36:
            if (v9 == 2)
            {
              *&a1[v32] = v38;
            }

            else
            {
              *&a1[v32] = v38;
            }

            return;
          }
        }

LABEL_65:
        if (v9)
        {
          a1[v32] = v38;
        }

        return;
      }

      *a1 = v39;
      a1[2] = BYTE2(v39);
    }

    if (v9 > 1)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *&a1[v32] = 0;
  }

  else if (v9)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  if (v17 < v19)
  {
    v40 = *(v18 + 56);

    v40(&a1[v31] & ~v23, a2, v19);
    return;
  }

  v41 = ~v21;
  if (v17 < a2)
  {
    v42 = ((((v29 + (v28 & 0xFFFFFFF8)) & v41) + v22 + 7) & 0xFFFFFFF8) + 50;
    v43 = ~v17 + a2;
    bzero(a1, v42);
    if (v42 <= 3)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }

    return;
  }

  v44 = ~v20;
  v45 = &a1[v20 + 8];
  v46 = (v45 & ~v20);
  if (v12 != v17)
  {
    v46 = ((v20 + 17 + (&v46[v26 + 7] & 0xFFFFFFFFFFFFFFF8)) & v44);
    if (v11 != v17)
    {
      v50 = (v29 + (&v46[v27 + 7] & 0xFFFFFFFFFFFFFFF8)) & v41;
      if (v16 != v17)
      {
        v55 = (v30 + v50) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v55 + 40) = 0;
          *(v55 + 24) = 0u;
          *(v55 + 8) = 0u;
          *v55 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *v55 = a2 - 1;
        }

        return;
      }

      v48 = a2;
      v47 = *(v15 + 56);
      v11 = v16;
      v49 = v56;
      goto LABEL_96;
    }

    if (v13 >= a2)
    {
      v48 = a2;
      v47 = *(v57 + 56);
      v49 = AssociatedTypeWitness;
      v50 = &v46[v20 + 1] & v44;
      goto LABEL_96;
    }

    if (v27 <= 3)
    {
      v51 = ~(-1 << (8 * v27));
    }

    else
    {
      v51 = -1;
    }

    if (!v27)
    {
      return;
    }

    v52 = v51 & (~v13 + a2);
    if (v27 <= 3)
    {
      v53 = v25 + ((v20 + 1) & ~v20);
    }

    else
    {
      v53 = 4;
    }

    bzero(v46, v27);
    if (v53 <= 2)
    {
      if (v53 == 1)
      {
LABEL_92:
        *v46 = v52;
        return;
      }

LABEL_82:
      *v46 = v52;
      return;
    }

LABEL_101:
    if (v53 == 3)
    {
      *v46 = v52;
      v46[2] = BYTE2(v52);
    }

    else
    {
      *v46 = v52;
    }

    return;
  }

  if (a2 >= v11)
  {
    if (v25 <= 3)
    {
      v54 = ~(-1 << (8 * v25));
    }

    else
    {
      v54 = -1;
    }

    if (!v25)
    {
      return;
    }

    v52 = v54 & (a2 - v11);
    if (v25 <= 3)
    {
      v53 = v25;
    }

    else
    {
      v53 = 4;
    }

    bzero((v45 & ~v20), v25);
    if (v53 <= 2)
    {
      if (v53 == 1)
      {
        goto LABEL_92;
      }

      goto LABEL_82;
    }

    goto LABEL_101;
  }

  v47 = *(v57 + 56);
  v48 = a2 + 1;
  v49 = AssociatedTypeWitness;
  v50 = v46;
LABEL_96:

  v47(v50, v48, v11, v49);
}

uint64_t sub_251411E80(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for Chart();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderConditional();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AutomaticScaleDomain();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(255, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<Never>, AnyAxisContent>, MEMORY[0x277CBB378]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type BuilderConditional<AxisMarks<Never>, AnyAxisContent> and conformance <> BuilderConditional<A, B>();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

void type metadata completion function for HealthChart.ViewModel(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    type metadata accessor for ClosedRange<Double>?();
    if (v4 <= 0x3F)
    {
      type metadata accessor for AxisScale();
      if (v5 <= 0x3F)
      {
        type metadata accessor for AxisMarks<Never>(319, &lazy cache variable for type metadata for AxisScale<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], type metadata accessor for AxisScale);
        if (v6 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthChart.ViewModel(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v11 + 80);
  if (v9 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = ((v14 + v13) & ~v13) + v14;
  if (v9)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v13 + 17;
  v20 = v17 + ((v13 + 1) & ~v13) + 7;
  v21 = v15 + 24;
  v22 = *(*(v6 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v23 = ((v22 + ((v21 + ((v20 + ((v19 + ((v18 + ((v13 + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 50;
    if (v23 <= 3)
    {
      v24 = ((a2 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v23);
        if (*(a1 + v23))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = *(a1 + v23);
        if (v27)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v23);
      if (*(a1 + v23))
      {
LABEL_28:
        v28 = (v27 - 1) << (8 * v23);
        if (v23 <= 3)
        {
          v29 = *a1;
        }

        else
        {
          v28 = 0;
          v29 = *a1;
        }

        return v16 + (v29 | v28) + 1;
      }
    }
  }

  v30 = ~v13;
  v31 = (a1 + v13 + 8) & ~v13;
  if (v10 == v16)
  {
    if (v9 >= 2)
    {
      v35 = (*(v8 + 48))(v31);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = (v19 + ((v31 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & v30;
  if (v9 == v16)
  {
    v34 = *(v8 + 48);

    return v34((v13 + 1 + v33) & v30);
  }

  else
  {
    v36 = (v21 + ((v20 + v33) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    if (v12 == v16)
    {
      v37 = *(v11 + 48);

      return v37(v36, v12, v6);
    }

    else
    {
      v38 = *((v22 + v36) & 0xFFFFFFFFFFFFFFF8);
      if (v38 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      return (v38 + 1);
    }
  }
}

double storeEnumTagSinglePayload for HealthChart.ViewModel(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v10;
  v13 = *(v10 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v13 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 - 8);
  v18 = *(v17 + 84);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  v21 = *(v17 + 80);
  v22 = *(v17 + 64);
  if (v16 <= v18)
  {
    v23 = *(v17 + 84);
  }

  else
  {
    v23 = v16;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  v24 = ((v20 + v19) & ~v19) + v20;
  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  v26 = v24 + ((v19 + 1) & ~v19);
  v27 = v22 + 7;
  v28 = ((v22 + 7 + ((v21 + 24 + ((v26 + 7 + ((v19 + 17 + ((v25 + ((v19 + 8) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 50;
  if (v23 < a3)
  {
    v29 = (a3 - v23 + 0xFFFF) >> 16;
    if (v28 <= 3)
    {
      v30 = v29 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v30 < 0x100)
    {
      v9 = 1;
    }

    if (v30 < 2)
    {
      v9 = 0;
    }
  }

  if (v23 >= a2)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *(a1 + v28) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_47:
        v33 = ~v19;
        v34 = ((a1 + v19 + 8) & ~v19);
        if (v14 == v23)
        {
          if (a2 < v13)
          {
            v35 = *(v12 + 56);
            v36 = (a2 + 1);
            v37 = v34;
LABEL_80:

            v35(v37, v36);
            return result;
          }

          if (v24 <= 3)
          {
            v41 = ~(-1 << (8 * v24));
          }

          else
          {
            v41 = -1;
          }

          if (!v24)
          {
            return result;
          }

          v39 = v41 & (a2 - v13);
          if (v24 <= 3)
          {
            v40 = v24;
          }

          else
          {
            v40 = 4;
          }

          bzero(v34, v24);
          if (v40 <= 2)
          {
            if (v40 == 1)
            {
              goto LABEL_74;
            }

            goto LABEL_61;
          }
        }

        else
        {
          v34 = ((v19 + 17 + (&v34[v25 + 7] & 0xFFFFFFFFFFFFFFF8)) & v33);
          if (v13 != v23)
          {
            v42 = (v21 + 24 + (&v34[v26 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v21;
            if (v18 == v23)
            {
              v43 = *(v17 + 56);

              v43(v42, a2, v18, v8);
            }

            else
            {
              v44 = (v27 + v42) & 0xFFFFFFFFFFFFFFF8;
              if ((a2 & 0x80000000) != 0)
              {
                *(v44 + 40) = 0;
                result = 0.0;
                *(v44 + 24) = 0u;
                *(v44 + 8) = 0u;
                *v44 = a2 & 0x7FFFFFFF;
              }

              else
              {
                *v44 = (a2 - 1);
              }
            }

            return result;
          }

          if (v15 >= a2)
          {
            v35 = *(v12 + 56);
            v37 = &v34[v19 + 1] & v33;
            v36 = a2;
            goto LABEL_80;
          }

          if (v26 <= 3)
          {
            v38 = ~(-1 << (8 * v26));
          }

          else
          {
            v38 = -1;
          }

          if (!v26)
          {
            return result;
          }

          v39 = v38 & (~v15 + a2);
          if (v26 <= 3)
          {
            v40 = v24 + ((v19 + 1) & ~v19);
          }

          else
          {
            v40 = 4;
          }

          bzero(v34, v26);
          if (v40 <= 2)
          {
            if (v40 == 1)
            {
LABEL_74:
              *v34 = v39;
              return result;
            }

LABEL_61:
            *v34 = v39;
            return result;
          }
        }

        if (v40 == 3)
        {
          *v34 = v39;
          v34[2] = BYTE2(v39);
        }

        else
        {
          *v34 = v39;
        }

        return result;
      }

      *(a1 + v28) = 0;
    }

    else if (v9)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_47;
  }

  v31 = ~v23 + a2;
  bzero(a1, v28);
  if (v28 <= 3)
  {
    v32 = HIWORD(v31) + 1;
  }

  else
  {
    v32 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v31;
    if (v9 > 1)
    {
LABEL_35:
      if (v9 == 2)
      {
        *(a1 + v28) = v32;
      }

      else
      {
        *(a1 + v28) = v32;
      }

      return result;
    }
  }

  else
  {
    *a1 = v31;
    if (v9 > 1)
    {
      goto LABEL_35;
    }
  }

  if (v9)
  {
    *(a1 + v28) = v32;
  }

  return result;
}

void type metadata accessor for ClosedRange<Double>?()
{
  if (!lazy cache variable for type metadata for ClosedRange<Double>?)
  {
    type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Double>?);
    }
  }
}

void _s16HealthChartsCore0aB4UnitVSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of ScaleType?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s16HealthChartsCore0aB4UnitVSgMaTm_1(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for BuilderConditional<AxisMarks<Never>, AnyAxisContent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    type metadata accessor for AxisMarks<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277D84A98], MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
    v7 = a3(a1, v6, MEMORY[0x277CBB318]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void type metadata accessor for <<opaque return type of ChartContent.opacity(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.opacity(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0();
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.opacity(_:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0)
  {
    type metadata accessor for PointMark();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.accessibilityHidden(_:)>>.0);
    }
  }
}

void type metadata accessor for AxisMarks<Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t DescriptionContext.DataXScale.dateString.getter()
{
  v115 = type metadata accessor for Date.IntervalFormatStyle();
  v114 = *(v115 - 8);
  v0 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v109 = &v100 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v111 = &v100 - v3;
  MEMORY[0x28223BE20](v4);
  v112 = &v100 - v5;
  MEMORY[0x28223BE20](v6);
  v113 = &v100 - v7;
  type metadata accessor for (lower: Date, upper: Date)();
  v108 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v100 - v12;
  type metadata accessor for Range<Date>();
  v105 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v110 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v122 = *(v16 - 8);
  v123 = v16;
  v17 = *(v122 + 64);
  MEMORY[0x28223BE20](v16);
  v121 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v125 = *(v19 - 8);
  v126 = v19;
  v20 = *(v125 + 64);
  MEMORY[0x28223BE20](v19);
  v124 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v117 = *(v118 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date.FormatStyle();
  v119 = *(v24 - 8);
  v120 = v24;
  v25 = *(v119 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v100 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v100 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v100 - v35;
  v135 = type metadata accessor for Date();
  v133 = *(v135 - 8);
  v37 = v133[8];
  MEMORY[0x28223BE20](v135);
  v132 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v134 = &v100 - v40;
  v41 = type metadata accessor for Calendar();
  v130 = *(v41 - 8);
  v131 = v41;
  v42 = *(v130 + 64);
  MEMORY[0x28223BE20](v41);
  v127 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DateComponents();
  v128 = *(v44 - 8);
  v129 = v44;
  v45 = *(v128 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v100 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DescriptionContext.DataXScale(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v100 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DateInterval();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v100 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DescriptionContext.DataXScale(v136, v51, type metadata accessor for DescriptionContext.DataXScale);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of DescriptionContext.DataXScale(v51, type metadata accessor for DescriptionContext.DataXScale);
    return 0;
  }

  v100 = v27;
  v101 = v30;
  v102 = v33;
  v103 = v36;
  v104 = v53;
  v58 = *(v53 + 32);
  v136 = v52;
  v58(v56, v51, v52);
  v59 = v127;
  static Calendar.current.getter();
  type metadata accessor for _ContiguousArrayStorage<Calendar.Component>();
  v60 = type metadata accessor for Calendar.Component();
  v61 = *(v60 - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_25145AB10;
  (*(v61 + 104))(v64 + v63, *MEMORY[0x277CC9968], v60);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v64);
  swift_setDeallocating();
  (*(v61 + 8))(v64 + v63, v60);
  swift_deallocClassInstance();
  v65 = v134;
  DateInterval.start.getter();
  v66 = v132;
  DateInterval.end.getter();
  Calendar.dateComponents(_:from:to:)();

  v67 = v133[1];
  v68 = v135;
  v67(v66, v135);
  v67(v65, v68);
  (*(v130 + 8))(v59, v131);
  v69 = DateComponents.day.getter();
  LOBYTE(v64) = v70;
  (*(v128 + 8))(v47, v129);
  v71 = v56;
  if ((v64 & 1) != 0 || v69 <= 1)
  {
    v87 = DateInterval.start.getter();
    v88 = v100;
    v89 = MEMORY[0x253074FA0](v87);
    v90 = v116;
    MEMORY[0x253075200](v89);
    v91 = v101;
    Date.FormatStyle.day(_:)();
    (*(v117 + 8))(v90, v118);
    v92 = v120;
    v93 = *(v119 + 8);
    v94 = v93(v88, v120);
    v95 = v124;
    MEMORY[0x253075280](v94);
    v96 = v102;
    Date.FormatStyle.month(_:)();
    (*(v125 + 8))(v95, v126);
    v93(v91, v92);
    v97 = v121;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v98 = v103;
    Date.FormatStyle.year(_:)();
    (*(v122 + 8))(v97, v123);
    v93(v96, v92);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x277CC9428]);
    v99 = v134;
    Date.formatted<A>(_:)();
    v93(v98, v92);
    v67(v99, v135);
    (*(v104 + 8))(v71, v136);
  }

  else
  {
    DateInterval.start.getter();
    DateInterval.end.getter();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    v131 = v56;
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v72 = v133[4];
    v73 = v106;
    v72(v106, v65, v68);
    v74 = v68;
    v75 = v108;
    v72((v73 + *(v108 + 48)), v66, v74);
    v76 = v107;
    outlined init with copy of DescriptionContext.DataXScale(v73, v107, type metadata accessor for (lower: Date, upper: Date));
    v77 = *(v75 + 48);
    v78 = v110;
    v72(v110, v76, v74);
    v67((v76 + v77), v74);
    outlined init with take of (lower: Date, upper: Date)(v73, v76);
    v72((v78 + *(v105 + 36)), (v76 + *(v75 + 48)), v74);
    v67(v76, v74);
    v79 = v109;
    static FormatStyle<>.interval.getter();
    v80 = v111;
    Date.IntervalFormatStyle.day()();
    v81 = *(v114 + 8);
    v82 = v115;
    v83 = v81(v79, v115);
    v84 = v124;
    MEMORY[0x253075280](v83);
    v85 = v112;
    Date.IntervalFormatStyle.month(_:)();
    (*(v125 + 8))(v84, v126);
    v81(v80, v82);
    v86 = v113;
    Date.IntervalFormatStyle.year()();
    v81(v85, v82);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle, MEMORY[0x277CC94B0]);
    Range<>.formatted<A>(_:)();
    v81(v86, v82);
    outlined destroy of DescriptionContext.DataXScale(v78, type metadata accessor for Range<Date>);
    (*(v104 + 8))(v131, v136);
  }

  return v137;
}

void type metadata accessor for (lower: Date, upper: Date)()
{
  if (!lazy cache variable for type metadata for (lower: Date, upper: Date))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: Date, upper: Date));
    }
  }
}

void type metadata accessor for Range<Date>()
{
  if (!lazy cache variable for type metadata for Range<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Date>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Calendar.Component>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>);
    }
  }
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    type metadata accessor for _SetStorage<Calendar.Component>();
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined init with copy of DescriptionContext.DataXScale(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: Date, upper: Date)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DescriptionContext.DataXScale(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _SetStorage<Calendar.Component>()
{
  if (!lazy cache variable for type metadata for _SetStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<Calendar.Component>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HealthChartsContext.init(healthStore:calendar:dateInterval:viewDateSpan:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v10 = *a5;
  *a6 = a1;
  v11 = type metadata accessor for HealthChartsContext();
  v12 = v11[5];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  outlined init with take of DateInterval?(a3, &a6[v11[6]], &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  result = outlined init with take of DateInterval?(a4, &a6[v11[7]], &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  a6[v11[8]] = v10;
  return result;
}

uint64_t type metadata accessor for HealthChartsContext()
{
  result = type metadata singleton initialization cache for HealthChartsContext;
  if (!type metadata singleton initialization cache for HealthChartsContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for DateInterval?(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int HealthChartsContext.ChartStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsContext.ChartStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsContext.ChartStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle()
{
  result = lazy protocol witness table cache variable for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle;
  if (!lazy protocol witness table cache variable for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsContext.ChartStyle and conformance HealthChartsContext.ChartStyle);
  }

  return result;
}

uint64_t sub_25141490C(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = type metadata accessor for Calendar();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

char *sub_251414AD0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = type metadata accessor for Calendar();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  type metadata accessor for DateInterval?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

void type metadata completion function for HealthChartsContext()
{
  type metadata accessor for DateInterval?(319, &lazy cache variable for type metadata for HKHealthStore?, type metadata accessor for HKHealthStore);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Calendar();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DateInterval?(319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DateInterval?(319, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for DateInterval?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t type metadata accessor for HKHealthStore()
{
  result = lazy cache variable for type metadata for HKHealthStore;
  if (!lazy cache variable for type metadata for HKHealthStore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKHealthStore);
  }

  return result;
}

double HKObjectType.chartKey.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v4 == 0xD000000000000027 && 0x8000000251463FD0 == v6;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAbdominalCrampsStaticChartKey;
    v10 = &protocol witness table for HKAbdominalCrampsStaticChartKey;
LABEL_7:
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    return result;
  }

  v11 = v4 == 0xD00000000000001CLL && 0x8000000251463FB0 == v6;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAcneStaticChartKey;
    v10 = &protocol witness table for HKAcneStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251463F80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppetiteChangesStaticChartKey;
    v10 = &protocol witness table for HKAppetiteChangesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251463ED0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleStandHourStaticChartKey;
    v10 = &protocol witness table for HKAppleStandHourStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x8000000251463E70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleWalkingSteadinessEventStaticChartKey;
    v10 = &protocol witness table for HKAppleWalkingSteadinessEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251463E20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEnvironmentalAudioExposureEventStaticChartKey;
    v10 = &protocol witness table for HKEnvironmentalAudioExposureEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251463DC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBladderIncontinenceStaticChartKey;
    v10 = &protocol witness table for HKBladderIncontinenceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251463D90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBleedingAfterPregnancyStaticChartKey;
    v10 = &protocol witness table for HKBleedingAfterPregnancyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x8000000251463D60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBleedingDuringPregnancyStaticChartKey;
    v10 = &protocol witness table for HKBleedingDuringPregnancyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463D30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloatingStaticChartKey;
    v10 = &protocol witness table for HKBloatingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251463D00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBreastPainStaticChartKey;
    v10 = &protocol witness table for HKBreastPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251463CD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCervicalMucusQualityStaticChartKey;
    v10 = &protocol witness table for HKCervicalMucusQualityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251463CA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKChestTightnessOrPainStaticChartKey;
    v10 = &protocol witness table for HKChestTightnessOrPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x8000000251463C80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKChillsStaticChartKey;
    v10 = &protocol witness table for HKChillsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251463C50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKConstipationStaticChartKey;
    v10 = &protocol witness table for HKConstipationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251463C20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKContraceptiveStaticChartKey;
    v10 = &protocol witness table for HKContraceptiveStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463B00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCoughingStaticChartKey;
    v10 = &protocol witness table for HKCoughingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463AD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDiarrheaStaticChartKey;
    v10 = &protocol witness table for HKDiarrheaStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463AA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDizzinessStaticChartKey;
    v10 = &protocol witness table for HKDizzinessStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001FLL && 0x8000000251463A80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDrySkinStaticChartKey;
    v10 = &protocol witness table for HKDrySkinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463A50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFaintingStaticChartKey;
    v10 = &protocol witness table for HKFaintingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001FLL && 0x8000000251463A30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFatigueStaticChartKey;
    v10 = &protocol witness table for HKFatigueStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001DLL && 0x8000000251463A10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFeverStaticChartKey;
    v10 = &protocol witness table for HKFeverStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x80000002514639E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKGeneralizedBodyAcheStaticChartKey;
    v10 = &protocol witness table for HKGeneralizedBodyAcheStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x80000002514639B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHairLossStaticChartKey;
    v10 = &protocol witness table for HKHairLossStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251463980 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHandwashingEventStaticChartKey;
    v10 = &protocol witness table for HKHandwashingEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251463930 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeadacheStaticChartKey;
    v10 = &protocol witness table for HKHeadacheStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x80000002514638F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeadphoneAudioExposureEventStaticChartKey;
    v10 = &protocol witness table for HKHeadphoneAudioExposureEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x80000002514638A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartburnStaticChartKey;
    v10 = &protocol witness table for HKHeartburnStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251463870 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKTachycardiaEventStaticChartKey;
    v10 = &protocol witness table for HKTachycardiaEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251463820 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHotFlashesStaticChartKey;
    v10 = &protocol witness table for HKHotFlashesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x80000002514637E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInfrequentMenstrualCyclesStaticChartKey;
    v10 = &protocol witness table for HKInfrequentMenstrualCyclesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x80000002514637A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAtrialFibrillationEventStaticChartKey;
    v10 = &protocol witness table for HKAtrialFibrillationEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x8000000251463740 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKIrregularMenstrualCyclesStaticChartKey;
    v10 = &protocol witness table for HKIrregularMenstrualCyclesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463710 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLactationStaticChartKey;
    v10 = &protocol witness table for HKLactationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514636E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLossOfSmellStaticChartKey;
    v10 = &protocol witness table for HKLossOfSmellStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514636B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLossOfTasteStaticChartKey;
    v10 = &protocol witness table for HKLossOfTasteStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x8000000251463680 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLowCardioFitnessEventStaticChartKey;
    v10 = &protocol witness table for HKLowCardioFitnessEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251463630 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBradycardiaEventStaticChartKey;
    v10 = &protocol witness table for HKBradycardiaEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x80000002514635E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLowerBackPainStaticChartKey;
    v10 = &protocol witness table for HKLowerBackPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514635B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMemoryLapseStaticChartKey;
    v10 = &protocol witness table for HKMemoryLapseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251463580 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMenstruationStaticChartKey;
    v10 = &protocol witness table for HKMenstruationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251463530 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMindfulSessionStaticChartKey;
    v10 = &protocol witness table for HKMindfulSessionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x8000000251463500 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMoodChangesStaticChartKey;
    v10 = &protocol witness table for HKMoodChangesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x80000002514634E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNauseaStaticChartKey;
    v10 = &protocol witness table for HKNauseaStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514634B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNightSweatsStaticChartKey;
    v10 = &protocol witness table for HKNightSweatsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251463480 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKOvulationTestResultStaticChartKey;
    v10 = &protocol witness table for HKOvulationTestResultStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251463390 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPelvicPainStaticChartKey;
    v10 = &protocol witness table for HKPelvicPainStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000038 && 0x8000000251463350 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPersistentIntermenstrualBleedingStaticChartKey;
    v10 = &protocol witness table for HKPersistentIntermenstrualBleedingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463320 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPregnancyStaticChartKey;
    v10 = &protocol witness table for HKPregnancyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x80000002514632F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPregnancyTestResultStaticChartKey;
    v10 = &protocol witness table for HKPregnancyTestResultStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251463250 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKProgesteroneTestResultStaticChartKey;
    v10 = &protocol witness table for HKProgesteroneTestResultStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251463180 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKProlongedMenstrualPeriodsStaticChartKey;
    v10 = &protocol witness table for HKProlongedMenstrualPeriodsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000003ALL && 0x8000000251463140 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRapidPoundingOrFlutteringHeartbeatStaticChartKey;
    v10 = &protocol witness table for HKRapidPoundingOrFlutteringHeartbeatStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251463110 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunnyNoseStaticChartKey;
    v10 = &protocol witness table for HKRunnyNoseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514630E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSexualActivityStaticChartKey;
    v10 = &protocol witness table for HKSexualActivityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x80000002514630B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKShortnessOfBreathStaticChartKey;
    v10 = &protocol witness table for HKShortnessOfBreathStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251463080 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCongestionStaticChartKey;
    v10 = &protocol witness table for HKCongestionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251463050 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSkippedHeartbeatStaticChartKey;
    v10 = &protocol witness table for HKSkippedHeartbeatStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251463020 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepAnalysisStaticChartKey;
    v10 = &protocol witness table for HKSleepAnalysisStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462FF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepApneaEventStaticChartKey;
    v10 = &protocol witness table for HKSleepApneaEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462FC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepChangesStaticChartKey;
    v10 = &protocol witness table for HKSleepChangesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251462F50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSoreThroatStaticChartKey;
    v10 = &protocol witness table for HKSoreThroatStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462F20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKToothbrushingEventStaticChartKey;
    v10 = &protocol witness table for HKToothbrushingEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251462EF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVaginalDrynessStaticChartKey;
    v10 = &protocol witness table for HKVaginalDrynessStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251462EC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVomitingStaticChartKey;
    v10 = &protocol witness table for HKVomitingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x8000000251462E90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWheezingStaticChartKey;
    v10 = &protocol witness table for HKWheezingStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251462D60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKActivityMoveModeStaticChartKey;
    v10 = &protocol witness table for HKActivityMoveModeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251462D10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBiologicalSexStaticChartKey;
    v10 = &protocol witness table for HKBiologicalSexStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462CE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodTypeStaticChartKey;
    v10 = &protocol witness table for HKBloodTypeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000039 && 0x8000000251462CA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCardioFitnessMedicationsUseStaticChartKey;
    v10 = &protocol witness table for HKCardioFitnessMedicationsUseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251462C50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDateOfBirthStaticChartKey;
    v10 = &protocol witness table for HKDateOfBirthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251462C10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFitzpatrickSkinTypeStaticChartKey;
    v10 = &protocol witness table for HKFitzpatrickSkinTypeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251462BC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWheelchairUseStaticChartKey;
    v10 = &protocol witness table for HKWheelchairUseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462B90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAllergyRecordStaticChartKey;
    v10 = &protocol witness table for HKAllergyRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462B40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKClinicalNoteRecordStaticChartKey;
    v10 = &protocol witness table for HKClinicalNoteRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462AC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKConditionRecordStaticChartKey;
    v10 = &protocol witness table for HKConditionRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251462A50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInsuranceRecordStaticChartKey;
    v10 = &protocol witness table for HKInsuranceRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462A00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKImmunizationRecordStaticChartKey;
    v10 = &protocol witness table for HKImmunizationRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462980 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLabResultRecordStaticChartKey;
    v10 = &protocol witness table for HKLabResultRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251462910 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMedicationRecordStaticChartKey;
    v10 = &protocol witness table for HKMedicationRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x80000002514628C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKProcedureRecordStaticChartKey;
    v10 = &protocol witness table for HKProcedureRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462850 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVitalSignRecordStaticChartKey;
    v10 = &protocol witness table for HKVitalSignRecordStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x80000002514627E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodPressureStaticChartKey;
    v10 = &protocol witness table for HKBloodPressureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001DLL && 0x80000002514627C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleBalanceMetricsStaticChartKey;
    v10 = &protocol witness table for HKAppleBalanceMetricsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000019 && 0x8000000251462780 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleSleepScoreStaticChartKey;
    v10 = &protocol witness table for HKAppleSleepScoreStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001DLL && 0x8000000251462740 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAudiogramStaticChartKey;
    v10 = &protocol witness table for HKAudiogramStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462710 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKElectrocardiogramStaticChartKey;
    v10 = &protocol witness table for HKElectrocardiogramStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514626C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartbeatSeriesStaticChartKey;
    v10 = &protocol witness table for HKHeartbeatSeriesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001BLL && 0x8000000251462680 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepDurationGoalStaticChartKey;
    v10 = &protocol witness table for HKSleepDurationGoalStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000017 && 0x8000000251462640 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSleepScheduleStaticChartKey;
    v10 = &protocol witness table for HKSleepScheduleStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000015 && 0x8000000251462620 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStateOfMindStaticChartKey;
    v10 = &protocol witness table for HKStateOfMindStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001BLL && 0x8000000251462600 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCDADocumentStaticChartKey;
    v10 = &protocol witness table for HKCDADocumentStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000036 && 0x80000002514625C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKMedicationDoseEventStaticChartKey;
    v10 = &protocol witness table for HKMedicationDoseEventStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462570 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKActiveEnergyStaticChartKey;
    v10 = &protocol witness table for HKActiveEnergyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251462540 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleExerciseTimeStaticChartKey;
    v10 = &protocol witness table for HKAppleExerciseTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462510 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleMoveTimeStaticChartKey;
    v10 = &protocol witness table for HKAppleMoveTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000003ALL && 0x80000002514624D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleSleepingBreathingDisturbancesStaticChartKey;
    v10 = &protocol witness table for HKAppleSleepingBreathingDisturbancesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000035 && 0x8000000251462490 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleSleepingWristTemperatureStaticChartKey;
    v10 = &protocol witness table for HKAppleSleepingWristTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251462460 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleStandTimeStaticChartKey;
    v10 = &protocol witness table for HKAppleStandTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251462430 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAppleWalkingSteadinessStaticChartKey;
    v10 = &protocol witness table for HKAppleWalkingSteadinessStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x80000002514623D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKAtrialFibrillationBurdenStaticChartKey;
    v10 = &protocol witness table for HKAtrialFibrillationBurdenStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x80000002514623A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBasalBodyTemperatureStaticChartKey;
    v10 = &protocol witness table for HKBasalBodyTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251462370 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBasalEnergyBurnedStaticChartKey;
    v10 = &protocol witness table for HKBasalEnergyBurnedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251462340 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodAlcoholContentStaticChartKey;
    v10 = &protocol witness table for HKBloodAlcoholContentStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462310 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBloodGlucoseStaticChartKey;
    v10 = &protocol witness table for HKBloodGlucoseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x80000002514622E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyFatPercentageStaticChartKey;
    v10 = &protocol witness table for HKBodyFatPercentageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x80000002514622B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyMassStaticChartKey;
    v10 = &protocol witness table for HKBodyMassStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462280 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyMassIndexStaticChartKey;
    v10 = &protocol witness table for HKBodyMassIndexStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462250 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKBodyTemperatureStaticChartKey;
    v10 = &protocol witness table for HKBodyTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x8000000251462220 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCrossCountrySkiingSpeedStaticChartKey;
    v10 = &protocol witness table for HKCrossCountrySkiingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514621F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingCadenceStaticChartKey;
    v10 = &protocol witness table for HKCyclingCadenceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000037 && 0x80000002514621B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingFunctionalThresholdPowerStaticChartKey;
    v10 = &protocol witness table for HKCyclingFunctionalThresholdPowerStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462180 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingPowerStaticChartKey;
    v10 = &protocol witness table for HKCyclingPowerStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251462150 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingSpeedStaticChartKey;
    v10 = &protocol witness table for HKCyclingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251462120 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryBiotinStaticChartKey;
    v10 = &protocol witness table for HKDietaryBiotinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x80000002514620F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCaffeineStaticChartKey;
    v10 = &protocol witness table for HKDietaryCaffeineStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514620C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCalciumStaticChartKey;
    v10 = &protocol witness table for HKDietaryCalciumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251462090 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCarbohydratesStaticChartKey;
    v10 = &protocol witness table for HKDietaryCarbohydratesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462060 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryChlorideStaticChartKey;
    v10 = &protocol witness table for HKDietaryChlorideStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251462030 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCholesterolStaticChartKey;
    v10 = &protocol witness table for HKDietaryCholesterolStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251462000 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryChromiumStaticChartKey;
    v10 = &protocol witness table for HKDietaryChromiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461FD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryCopperStaticChartKey;
    v10 = &protocol witness table for HKDietaryCopperStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x8000000251461FA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryEnergyStaticChartKey;
    v10 = &protocol witness table for HKDietaryEnergyStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251461F60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatMonounsaturatedStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatMonounsaturatedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251461F20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatPolyunsaturatedStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatPolyunsaturatedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461EF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatSaturatedStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatSaturatedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461EC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFatTotalStaticChartKey;
    v10 = &protocol witness table for HKDietaryFatTotalStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461E90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFiberStaticChartKey;
    v10 = &protocol witness table for HKDietaryFiberStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461E60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryFolateStaticChartKey;
    v10 = &protocol witness table for HKDietaryFolateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461E30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryIodineStaticChartKey;
    v10 = &protocol witness table for HKDietaryIodineStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x8000000251461E00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryIronStaticChartKey;
    v10 = &protocol witness table for HKDietaryIronStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461DD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryMagnesiumStaticChartKey;
    v10 = &protocol witness table for HKDietaryMagnesiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461DA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryManganeseStaticChartKey;
    v10 = &protocol witness table for HKDietaryManganeseStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461D70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryMolybdenumStaticChartKey;
    v10 = &protocol witness table for HKDietaryMolybdenumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461D40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryNiacinStaticChartKey;
    v10 = &protocol witness table for HKDietaryNiacinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251461D10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryPantothenicAcidStaticChartKey;
    v10 = &protocol witness table for HKDietaryPantothenicAcidStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461CE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryPhosphorusStaticChartKey;
    v10 = &protocol witness table for HKDietaryPhosphorusStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461CB0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryPotassiumStaticChartKey;
    v10 = &protocol witness table for HKDietaryPotassiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461C80 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryProteinStaticChartKey;
    v10 = &protocol witness table for HKDietaryProteinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461C50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryRiboflavinStaticChartKey;
    v10 = &protocol witness table for HKDietaryRiboflavinStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461C20 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietarySeleniumStaticChartKey;
    v10 = &protocol witness table for HKDietarySeleniumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000025 && 0x8000000251461BF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietarySodiumStaticChartKey;
    v10 = &protocol witness table for HKDietarySodiumStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461BC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietarySugarStaticChartKey;
    v10 = &protocol witness table for HKDietarySugarStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461B90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryThiaminStaticChartKey;
    v10 = &protocol witness table for HKDietaryThiaminStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461B60 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminAStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminAStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461B30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminB12StaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminB12StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461B00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminB6StaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminB6StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461AD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminCStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminCStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461AA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminDStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminDStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461A70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminEStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminEStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461A40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryVitaminKStaticChartKey;
    v10 = &protocol witness table for HKDietaryVitaminKStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461A10 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryWaterStaticChartKey;
    v10 = &protocol witness table for HKDietaryWaterStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514619E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDietaryZincStaticChartKey;
    v10 = &protocol witness table for HKDietaryZincStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x80000002514619A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCrossCountrySkiingDistanceStaticChartKey;
    v10 = &protocol witness table for HKCrossCountrySkiingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461970 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKCyclingDistanceStaticChartKey;
    v10 = &protocol witness table for HKCyclingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251461930 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDownhillSnowSportsDistanceStaticChartKey;
    v10 = &protocol witness table for HKDownhillSnowSportsDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002CLL && 0x8000000251461900 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPaddleSportsDistanceStaticChartKey;
    v10 = &protocol witness table for HKPaddleSportsDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514618D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRowingDistanceStaticChartKey;
    v10 = &protocol witness table for HKRowingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x80000002514618A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSkatingSportsDistanceStaticChartKey;
    v10 = &protocol witness table for HKSkatingSportsDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461870 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSwimmingDistanceStaticChartKey;
    v10 = &protocol witness table for HKSwimmingDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251461840 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKDistanceWalkingRunningStaticChartKey;
    v10 = &protocol witness table for HKDistanceWalkingRunningStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251461810 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWheelchairDistanceStaticChartKey;
    v10 = &protocol witness table for HKWheelchairDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002DLL && 0x80000002514617E0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKElectrodermalActivityStaticChartKey;
    v10 = &protocol witness table for HKElectrodermalActivityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x80000002514617A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEnvironmentalAudioExposureStaticChartKey;
    v10 = &protocol witness table for HKEnvironmentalAudioExposureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x8000000251461760 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEnvironmentalSoundReductionStaticChartKey;
    v10 = &protocol witness table for HKEnvironmentalSoundReductionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000033 && 0x8000000251461720 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKEstimatedWorkoutEffortScoreStaticChartKey;
    v10 = &protocol witness table for HKEstimatedWorkoutEffortScoreStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x80000002514616F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKFlightsClimbedStaticChartKey;
    v10 = &protocol witness table for HKFlightsClimbedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x80000002514616C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKForcedExpiratoryVolume1StaticChartKey;
    v10 = &protocol witness table for HKForcedExpiratoryVolume1StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461690 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKForcedVitalCapacityStaticChartKey;
    v10 = &protocol witness table for HKForcedVitalCapacityStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x8000000251461660 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeadphoneAudioExposureStaticChartKey;
    v10 = &protocol witness table for HKHeadphoneAudioExposureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251461630 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartRateStaticChartKey;
    v10 = &protocol witness table for HKHeartRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x80000002514615F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartRateRecoveryStaticChartKey;
    v10 = &protocol witness table for HKHeartRateRecoveryStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x80000002514615B0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeartRateVariabilitySDNNStaticChartKey;
    v10 = &protocol witness table for HKHeartRateVariabilitySDNNStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x8000000251461590 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKHeightStaticChartKey;
    v10 = &protocol witness table for HKHeightStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461560 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInhalerUsageStaticChartKey;
    v10 = &protocol witness table for HKInhalerUsageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461530 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKInsulinDeliveryStaticChartKey;
    v10 = &protocol witness table for HKInsulinDeliveryStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461500 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLeanBodyMassStaticChartKey;
    v10 = &protocol witness table for HKLeanBodyMassStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000020 && 0x80000002514614D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNikeFuelStaticChartKey;
    v10 = &protocol witness table for HKNikeFuelStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251461490 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNumberOfAlcoholicBeveragesStaticChartKey;
    v10 = &protocol witness table for HKNumberOfAlcoholicBeveragesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461460 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKNumberOfTimesFallenStaticChartKey;
    v10 = &protocol witness table for HKNumberOfTimesFallenStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461430 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKOxygenSaturationStaticChartKey;
    v10 = &protocol witness table for HKOxygenSaturationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251461400 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPaddleSportsSpeedStaticChartKey;
    v10 = &protocol witness table for HKPaddleSportsSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ELL && 0x80000002514613D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPeakExpiratoryFlowRateStaticChartKey;
    v10 = &protocol witness table for HKPeakExpiratoryFlowRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x8000000251461390 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPeripheralPerfusionIndexStaticChartKey;
    v10 = &protocol witness table for HKPeripheralPerfusionIndexStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461360 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPhysicalEffortStaticChartKey;
    v10 = &protocol witness table for HKPhysicalEffortStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x8000000251461330 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPushCountStaticChartKey;
    v10 = &protocol witness table for HKPushCountStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461300 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRespiratoryRateStaticChartKey;
    v10 = &protocol witness table for HKRespiratoryRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x80000002514612D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRestingHeartRateStaticChartKey;
    v10 = &protocol witness table for HKRestingHeartRateStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000023 && 0x80000002514612A0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRowingSpeedStaticChartKey;
    v10 = &protocol witness table for HKRowingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000030 && 0x8000000251461260 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningGroundContactTimeStaticChartKey;
    v10 = &protocol witness table for HKRunningGroundContactTimeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461230 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningPowerStaticChartKey;
    v10 = &protocol witness table for HKRunningPowerStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251461200 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningSpeedStaticChartKey;
    v10 = &protocol witness table for HKRunningSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x80000002514611D0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningStrideLengthStaticChartKey;
    v10 = &protocol witness table for HKRunningStrideLengthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251461190 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKRunningVerticalOscillationStaticChartKey;
    v10 = &protocol witness table for HKRunningVerticalOscillationStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000031 && 0x8000000251461150 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSixMinuteWalkTestDistanceStaticChartKey;
    v10 = &protocol witness table for HKSixMinuteWalkTestDistanceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251461120 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStairAscentSpeedStaticChartKey;
    v10 = &protocol witness table for HKStairAscentSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x80000002514610F0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStairDescentSpeedStaticChartKey;
    v10 = &protocol witness table for HKStairDescentSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000021 && 0x80000002514610C0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKStepsStaticChartKey;
    v10 = &protocol witness table for HKStepsStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002BLL && 0x8000000251461090 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKSwimmingStrokesStaticChartKey;
    v10 = &protocol witness table for HKSwimmingStrokesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000026 && 0x8000000251461060 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKTimeInDaylightStaticChartKey;
    v10 = &protocol witness table for HKTimeInDaylightStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251461030 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKUVExposureStaticChartKey;
    v10 = &protocol witness table for HKUVExposureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000027 && 0x8000000251461000 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKUnderwaterDepthStaticChartKey;
    v10 = &protocol witness table for HKUnderwaterDepthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001ELL && 0x8000000251460FE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVO2MaxStaticChartKey;
    v10 = &protocol witness table for HKVO2MaxStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251460FB0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWaistCircumferenceStaticChartKey;
    v10 = &protocol witness table for HKWaistCircumferenceStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000032 && 0x8000000251460F70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingAsymmetryPercentageStaticChartKey;
    v10 = &protocol witness table for HKWalkingAsymmetryPercentageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000036 && 0x8000000251460F30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingDoubleSupportPercentageStaticChartKey;
    v10 = &protocol witness table for HKWalkingDoubleSupportPercentageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002FLL && 0x8000000251460F00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingHeartRateAverageStaticChartKey;
    v10 = &protocol witness table for HKWalkingHeartRateAverageStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251460ED0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingSpeedStaticChartKey;
    v10 = &protocol witness table for HKWalkingSpeedStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251460EA0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWalkingStepLengthStaticChartKey;
    v10 = &protocol witness table for HKWalkingStepLengthStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251460E70 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWaterTemperatureStaticChartKey;
    v10 = &protocol witness table for HKWaterTemperatureStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000002ALL && 0x8000000251460E40 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWorkoutEffortScoreStaticChartKey;
    v10 = &protocol witness table for HKWorkoutEffortScoreStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251460DF0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKGAD7StaticChartKey;
    v10 = &protocol witness table for HKGAD7StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000024 && 0x8000000251460DC0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKPHQ9StaticChartKey;
    v10 = &protocol witness table for HKPHQ9StaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000022 && 0x8000000251460D90 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKVisionPrescriptionStaticChartKey;
    v10 = &protocol witness table for HKVisionPrescriptionStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD00000000000001CLL && 0x8000000251460D50 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKLocationSeriesStaticChartKey;
    v10 = &protocol witness table for HKLocationSeriesStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000017 && 0x8000000251460D30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKWorkoutStaticChartKey;
    v10 = &protocol witness table for HKWorkoutStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000028 && 0x8000000251460CE0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &type metadata for HKUserAnnotatedMedicationTypeStaticChartKey;
    v10 = &protocol witness table for HKUserAnnotatedMedicationTypeStaticChartKey;
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000029 && 0x8000000251460C90 == v6)
  {

LABEL_882:
    v9 = &type metadata for HKHypertensionEventStaticChartKey;
    v10 = &protocol witness table for HKHypertensionEventStaticChartKey;
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_882;
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2514199B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DescriptionContext.DataXScale(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for HealthChartsData();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_251419AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DescriptionContext.DataXScale(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for HealthChartsData();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DescriptionContext.DataXScale(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DescriptionContext()
{
  result = type metadata accessor for DescriptionContext.DataXScale(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for DescriptionContext.DataXScale()
{
  type metadata accessor for DateInterval();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClosedRange<Double>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t one-time initialization function for supportedTypes()
{
  type metadata accessor for _ContiguousArrayStorage<(String, HKObjectType)>();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25145F1A0;
  *(v0 + 32) = 0x73614D2079646F42;
  *(v0 + 40) = 0xEF7865646E492073;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v1 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462280);
  *(v0 + 48) = MEMORY[0x2530763A0](v1);
  *(v0 + 56) = 0xD000000000000013;
  *(v0 + 64) = 0x8000000251464380;
  v2 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514622E0);
  *(v0 + 72) = MEMORY[0x2530763A0](v2);
  *(v0 + 80) = 0x746867696548;
  *(v0 + 88) = 0xE600000000000000;
  v3 = MEMORY[0x253076160]();
  *(v0 + 96) = MEMORY[0x2530763A0](v3);
  *(v0 + 104) = 0x73614D2079646F42;
  *(v0 + 112) = 0xE900000000000073;
  v4 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514622B0);
  *(v0 + 120) = MEMORY[0x2530763A0](v4);
  strcpy((v0 + 128), "Lean Body Mass");
  *(v0 + 143) = -18;
  v5 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461500);
  *(v0 + 144) = MEMORY[0x2530763A0](v5);
  *(v0 + 152) = 0x6152207472616548;
  *(v0 + 160) = 0xEA00000000006574;
  v6 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461630);
  *(v0 + 168) = MEMORY[0x2530763A0](v6);
  *(v0 + 176) = 0x7370657453;
  *(v0 + 184) = 0xE500000000000000;
  v7 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514610C0);
  *(v0 + 192) = MEMORY[0x2530763A0](v7);
  *(v0 + 200) = 0xD000000000000018;
  *(v0 + 208) = 0x80000002514643A0;
  v8 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461840);
  *(v0 + 216) = MEMORY[0x2530763A0](v8);
  *(v0 + 224) = 0xD000000000000013;
  *(v0 + 232) = 0x80000002514643C0;
  v9 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462370);
  *(v0 + 240) = MEMORY[0x2530763A0](v9);
  strcpy((v0 + 248), "Active Energy");
  *(v0 + 262) = -4864;
  v10 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462570);
  *(v0 + 264) = MEMORY[0x2530763A0](v10);
  *(v0 + 272) = 0x2073746867696C46;
  *(v0 + 280) = 0xEF6465626D696C43;
  v11 = MEMORY[0x253076160]();
  *(v0 + 288) = MEMORY[0x2530763A0](v11);
  *(v0 + 296) = 0x65754620656B694ELL;
  *(v0 + 304) = 0xE90000000000006CLL;
  v12 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514614D0);
  *(v0 + 312) = MEMORY[0x2530763A0](v12);
  *(v0 + 320) = 0xD000000000000011;
  *(v0 + 328) = 0x80000002514643E0;
  v13 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  *(v0 + 336) = MEMORY[0x2530763A0](v13);
  strcpy((v0 + 344), "Blood Glucose");
  *(v0 + 358) = -4864;
  v14 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  *(v0 + 360) = MEMORY[0x2530763A0](v14);
  *(v0 + 368) = 0xD000000000000015;
  *(v0 + 376) = 0x8000000251464400;
  v15 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251462340);
  *(v0 + 384) = MEMORY[0x2530763A0](v15);
  *(v0 + 392) = 0xD00000000000001ALL;
  *(v0 + 400) = 0x8000000251464420;
  v16 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461390);
  *(v0 + 408) = MEMORY[0x2530763A0](v16);
  *(v0 + 416) = 0xD000000000000011;
  *(v0 + 424) = 0x8000000251464440;
  v17 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461EC0);
  *(v0 + 432) = MEMORY[0x2530763A0](v17);
  *(v0 + 440) = 0xD00000000000001BLL;
  *(v0 + 448) = 0x8000000251464460;
  v18 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F20);
  *(v0 + 456) = MEMORY[0x2530763A0](v18);
  *(v0 + 464) = 0xD00000000000001BLL;
  *(v0 + 472) = 0x8000000251464480;
  v19 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F60);
  *(v0 + 480) = MEMORY[0x2530763A0](v19);
  *(v0 + 488) = 0xD000000000000015;
  *(v0 + 496) = 0x80000002514644A0;
  v20 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461EF0);
  *(v0 + 504) = MEMORY[0x2530763A0](v20);
  *(v0 + 512) = 0xD000000000000013;
  *(v0 + 520) = 0x80000002514644C0;
  v21 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462030);
  *(v0 + 528) = MEMORY[0x2530763A0](v21);
  strcpy((v0 + 536), "Dietary Sodium");
  *(v0 + 551) = -18;
  v22 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461BF0);
  *(v0 + 552) = MEMORY[0x2530763A0](v22);
  *(v0 + 560) = 0xD000000000000015;
  *(v0 + 568) = 0x80000002514644E0;
  v23 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251462090);
  *(v0 + 576) = MEMORY[0x2530763A0](v23);
  strcpy((v0 + 584), "Dietary Fiber");
  *(v0 + 598) = -4864;
  v24 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461E90);
  *(v0 + 600) = MEMORY[0x2530763A0](v24);
  strcpy((v0 + 608), "Dietary Sugar");
  *(v0 + 622) = -4864;
  v25 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461BC0);
  *(v0 + 624) = MEMORY[0x2530763A0](v25);
  strcpy((v0 + 632), "Dietary Energy");
  *(v0 + 647) = -18;
  v26 = MEMORY[0x253076160](0xD00000000000002DLL, 0x8000000251461FA0);
  *(v0 + 648) = MEMORY[0x2530763A0](v26);
  *(v0 + 656) = 0x2079726174656944;
  *(v0 + 664) = 0xEF6E6965746F7250;
  v27 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461C80);
  *(v0 + 672) = MEMORY[0x2530763A0](v27);
  *(v0 + 680) = 0xD000000000000011;
  *(v0 + 688) = 0x8000000251464500;
  v28 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461B60);
  *(v0 + 696) = MEMORY[0x2530763A0](v28);
  *(v0 + 704) = 0xD000000000000012;
  *(v0 + 712) = 0x8000000251464520;
  v29 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461B00);
  *(v0 + 720) = MEMORY[0x2530763A0](v29);
  *(v0 + 728) = 0xD000000000000013;
  *(v0 + 736) = 0x8000000251464540;
  v30 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461B30);
  *(v0 + 744) = MEMORY[0x2530763A0](v30);
  *(v0 + 752) = 0xD000000000000011;
  *(v0 + 760) = 0x8000000251464560;
  v31 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AD0);
  *(v0 + 768) = MEMORY[0x2530763A0](v31);
  *(v0 + 776) = 0xD000000000000011;
  *(v0 + 784) = 0x8000000251464580;
  v32 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AA0);
  *(v0 + 792) = MEMORY[0x2530763A0](v32);
  *(v0 + 800) = 0xD000000000000011;
  *(v0 + 808) = 0x80000002514645A0;
  v33 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A70);
  *(v0 + 816) = MEMORY[0x2530763A0](v33);
  *(v0 + 824) = 0xD000000000000011;
  *(v0 + 832) = 0x80000002514645C0;
  v34 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A40);
  *(v0 + 840) = MEMORY[0x2530763A0](v34);
  *(v0 + 848) = 0x2079726174656944;
  *(v0 + 856) = 0xEF6D7569636C6143;
  v35 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514620C0);
  *(v0 + 864) = MEMORY[0x2530763A0](v35);
  strcpy((v0 + 872), "Dietary Iron");
  *(v0 + 885) = 0;
  *(v0 + 886) = -5120;
  v36 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251461E00);
  *(v0 + 888) = MEMORY[0x2530763A0](v36);
  *(v0 + 896) = 0x2079726174656944;
  *(v0 + 904) = 0xEF6E696D61696854;
  v37 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461B90);
  *(v0 + 912) = MEMORY[0x2530763A0](v37);
  *(v0 + 920) = 0xD000000000000012;
  *(v0 + 928) = 0x80000002514645E0;
  v38 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461C50);
  *(v0 + 936) = MEMORY[0x2530763A0](v38);
  strcpy((v0 + 944), "Dietary Niacin");
  *(v0 + 959) = -18;
  v39 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461D40);
  *(v0 + 960) = MEMORY[0x2530763A0](v39);
  strcpy((v0 + 968), "Dietary Folate");
  *(v0 + 983) = -18;
  v40 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E60);
  *(v0 + 984) = MEMORY[0x2530763A0](v40);
  strcpy((v0 + 992), "Dietary Biotin");
  *(v0 + 1007) = -18;
  v41 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462120);
  *(v0 + 1008) = MEMORY[0x2530763A0](v41);
  *(v0 + 1016) = 0xD000000000000018;
  *(v0 + 1024) = 0x8000000251464600;
  v42 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461D10);
  *(v0 + 1032) = MEMORY[0x2530763A0](v42);
  *(v0 + 1040) = 0xD000000000000012;
  *(v0 + 1048) = 0x8000000251464620;
  v43 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461CE0);
  *(v0 + 1056) = MEMORY[0x2530763A0](v43);
  strcpy((v0 + 1064), "Dietary Iodine");
  *(v0 + 1079) = -18;
  v44 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E30);
  *(v0 + 1080) = MEMORY[0x2530763A0](v44);
  *(v0 + 1088) = 0xD000000000000011;
  *(v0 + 1096) = 0x8000000251464640;
  v45 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DD0);
  *(v0 + 1104) = MEMORY[0x2530763A0](v45);
  strcpy((v0 + 1112), "Dietary Zinc");
  *(v0 + 1125) = 0;
  *(v0 + 1126) = -5120;
  v46 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514619E0);
  *(v0 + 1128) = MEMORY[0x2530763A0](v46);
  *(v0 + 1136) = 0xD000000000000010;
  *(v0 + 1144) = 0x8000000251464660;
  v47 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461C20);
  *(v0 + 1152) = MEMORY[0x2530763A0](v47);
  strcpy((v0 + 1160), "Dietary Copper");
  *(v0 + 1175) = -18;
  v48 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461FD0);
  *(v0 + 1176) = MEMORY[0x2530763A0](v48);
  *(v0 + 1184) = 0xD000000000000011;
  *(v0 + 1192) = 0x8000000251464680;
  v49 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DA0);
  *(v0 + 1200) = MEMORY[0x2530763A0](v49);
  *(v0 + 1208) = 0xD000000000000010;
  *(v0 + 1216) = 0x80000002514646A0;
  v50 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462000);
  *(v0 + 1224) = MEMORY[0x2530763A0](v50);
  *(v0 + 1232) = 0xD000000000000012;
  *(v0 + 1240) = 0x80000002514646C0;
  v51 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461D70);
  *(v0 + 1248) = MEMORY[0x2530763A0](v51);
  *(v0 + 1256) = 0xD000000000000010;
  *(v0 + 1264) = 0x80000002514646E0;
  v52 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462060);
  *(v0 + 1272) = MEMORY[0x2530763A0](v52);
  *(v0 + 1280) = 0xD000000000000011;
  *(v0 + 1288) = 0x8000000251464700;
  v53 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461CB0);
  *(v0 + 1296) = MEMORY[0x2530763A0](v53);
  *(v0 + 1304) = 0xD000000000000016;
  *(v0 + 1312) = 0x8000000251464720;
  v54 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461460);
  *(v0 + 1320) = MEMORY[0x2530763A0](v54);
  *(v0 + 1328) = 0xD000000000000016;
  *(v0 + 1336) = 0x8000000251464740;
  v55 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514617E0);
  *(v0 + 1344) = MEMORY[0x2530763A0](v55);
  strcpy((v0 + 1352), "Inhaler Usage");
  *(v0 + 1366) = -4864;
  v56 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461560);
  *(v0 + 1368) = MEMORY[0x2530763A0](v56);
  *(v0 + 1376) = 0xD000000000000010;
  *(v0 + 1384) = 0x8000000251464760;
  v57 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461300);
  *(v0 + 1392) = MEMORY[0x2530763A0](v57);
  *(v0 + 1400) = 0xD000000000000010;
  *(v0 + 1408) = 0x8000000251464780;
  v58 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462250);
  *(v0 + 1416) = MEMORY[0x2530763A0](v58);
  *(v0 + 1424) = 0xD000000000000015;
  *(v0 + 1432) = 0x80000002514647A0;
  v59 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461690);
  *(v0 + 1440) = MEMORY[0x2530763A0](v59);
  *(v0 + 1448) = 0xD00000000000001ALL;
  *(v0 + 1456) = 0x80000002514647C0;
  v60 = MEMORY[0x253076160](0xD00000000000002FLL, 0x80000002514616C0);
  *(v0 + 1464) = MEMORY[0x2530763A0](v60);
  *(v0 + 1472) = 0xD000000000000019;
  *(v0 + 1480) = 0x80000002514647E0;
  v61 = MEMORY[0x253076160](0xD00000000000002ELL, 0x80000002514613D0);
  *(v0 + 1488) = MEMORY[0x2530763A0](v61);
  *(v0 + 1496) = 0xD000000000000013;
  *(v0 + 1504) = 0x8000000251464800;
  v62 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462540);
  *(v0 + 1512) = MEMORY[0x2530763A0](v62);
  *(v0 + 1520) = 0xD000000000000010;
  *(v0 + 1528) = 0x8000000251464820;
  v63 = MEMORY[0x253076160](0xD000000000000027, 0x80000002514620F0);
  *(v0 + 1536) = MEMORY[0x2530763A0](v63);
  strcpy((v0 + 1544), "Blood Pressure");
  *(v0 + 1559) = -18;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCorrelationType, 0x277CCD250);
  v64 = MEMORY[0x253076160](0xD000000000000028, 0x80000002514627E0);
  *(v0 + 1560) = MEMORY[0x2530763B0](v64);
  *(v0 + 1568) = 0xD000000000000010;
  *(v0 + 1576) = 0x8000000251464840;
  v65 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461970);
  *(v0 + 1584) = MEMORY[0x2530763A0](v65);
  strcpy((v0 + 1592), "Dietary Water");
  *(v0 + 1606) = -4864;
  v66 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461A10);
  *(v0 + 1608) = MEMORY[0x2530763A0](v66);
  *(v0 + 1616) = 0x736F707845205655;
  *(v0 + 1624) = 0xEB00000000657275;
  v67 = MEMORY[0x253076160]();
  *(v0 + 1632) = MEMORY[0x2530763A0](v67);
  *(v0 + 1640) = 0xD000000000000016;
  *(v0 + 1648) = 0x8000000251464860;
  v68 = MEMORY[0x253076160](0xD00000000000002CLL, 0x80000002514623A0);
  *(v0 + 1656) = MEMORY[0x2530763A0](v68);
  *(v0 + 1664) = 0xD000000000000016;
  *(v0 + 1672) = 0x8000000251464880;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v69 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CD0);
  *(v0 + 1680) = MEMORY[0x253076390](v69);
  *(v0 + 1688) = 0xD000000000000015;
  *(v0 + 1696) = 0x80000002514648A0;
  v70 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463480);
  *(v0 + 1704) = MEMORY[0x253076390](v70);
  strcpy((v0 + 1712), "Menstruation");
  *(v0 + 1725) = 0;
  *(v0 + 1726) = -5120;
  v71 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463580);
  *(v0 + 1728) = MEMORY[0x253076390](v71);
  *(v0 + 1736) = 0x756F432068737550;
  *(v0 + 1744) = 0xEA0000000000746ELL;
  v72 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461330);
  *(v0 + 1752) = MEMORY[0x2530763A0](v72);
  *(v0 + 1760) = 0xD000000000000011;
  *(v0 + 1768) = 0x80000002514648C0;
  v73 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461870);
  *(v0 + 1776) = MEMORY[0x2530763A0](v73);
  *(v0 + 1784) = 0xD000000000000010;
  *(v0 + 1792) = 0x80000002514648E0;
  v74 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461090);
  *(v0 + 1800) = MEMORY[0x2530763A0](v74);
  *(v0 + 1808) = 0xD000000000000013;
  *(v0 + 1816) = 0x8000000251464900;
  v75 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251461810);
  *(v0 + 1824) = MEMORY[0x2530763A0](v75);
  *(v0 + 1832) = 0xD000000000000013;
  *(v0 + 1840) = 0x8000000251464920;
  v76 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460FB0);
  *(v0 + 1848) = MEMORY[0x2530763A0](v76);
  *(v0 + 1856) = 0xD000000000000012;
  *(v0 + 1864) = 0x8000000251464940;
  v77 = MEMORY[0x253076160](0xD000000000000028, 0x80000002514612D0);
  *(v0 + 1872) = MEMORY[0x2530763A0](v77);
  *(v0 + 1880) = 0x78614D20324F56;
  *(v0 + 1888) = 0xE700000000000000;
  v78 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251460FE0);
  *(v0 + 1896) = MEMORY[0x2530763A0](v78);
  *(v0 + 1904) = 0xD00000000000001ALL;
  *(v0 + 1912) = 0x8000000251464960;
  v79 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251460F00);
  *(v0 + 1920) = MEMORY[0x2530763A0](v79);
  *(v0 + 1928) = 0xD00000000000001DLL;
  *(v0 + 1936) = 0x8000000251464980;
  v80 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461930);
  *(v0 + 1944) = MEMORY[0x2530763A0](v80);
  *(v0 + 1952) = 0xD00000000000001BLL;
  *(v0 + 1960) = 0x80000002514649A0;
  v81 = MEMORY[0x253076160](0xD000000000000030, 0x80000002514615B0);
  *(v0 + 1968) = MEMORY[0x2530763A0](v81);
  *(v0 + 1976) = 0xD000000000000010;
  *(v0 + 1984) = 0x80000002514649C0;
  v82 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463FD0);
  *(v0 + 1992) = MEMORY[0x253076390](v82);
  *(v0 + 2000) = 0x5020747361657242;
  *(v0 + 2008) = 0xEB000000006E6961;
  v83 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463D00);
  *(v0 + 2016) = MEMORY[0x253076390](v83);
  *(v0 + 2024) = 0x676E6974616F6C42;
  *(v0 + 2032) = 0xE800000000000000;
  v84 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463D30);
  *(v0 + 2040) = MEMORY[0x253076390](v84);
  *(v0 + 2048) = 0x6568636164616548;
  *(v0 + 2056) = 0xE800000000000000;
  v85 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463930);
  *(v0 + 2064) = MEMORY[0x253076390](v85);
  *(v0 + 2072) = 1701733185;
  *(v0 + 2080) = 0xE400000000000000;
  v86 = MEMORY[0x253076160]();
  *(v0 + 2088) = MEMORY[0x253076390](v86);
  *(v0 + 2096) = 0x6142207265776F4CLL;
  *(v0 + 2104) = 0xEF6E696150206B63;
  v87 = MEMORY[0x253076160](0xD000000000000025, 0x80000002514635E0);
  *(v0 + 2112) = MEMORY[0x253076390](v87);
  *(v0 + 2120) = 0x50206369766C6550;
  *(v0 + 2128) = 0xEB000000006E6961;
  v88 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463390);
  *(v0 + 2136) = MEMORY[0x253076390](v88);
  strcpy((v0 + 2144), "Mood Changes");
  *(v0 + 2157) = 0;
  *(v0 + 2158) = -5120;
  v89 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251463500);
  *(v0 + 2160) = MEMORY[0x253076390](v89);
  strcpy((v0 + 2168), "Constipation");
  *(v0 + 2181) = 0;
  *(v0 + 2182) = -5120;
  v90 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251463C50);
  *(v0 + 2184) = MEMORY[0x253076390](v90);
  *(v0 + 2192) = 0x6165687272616944;
  *(v0 + 2200) = 0xE800000000000000;
  v91 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463AD0);
  *(v0 + 2208) = MEMORY[0x253076390](v91);
  *(v0 + 2216) = 0x65756769746146;
  *(v0 + 2224) = 0xE700000000000000;
  v92 = MEMORY[0x253076160]();
  *(v0 + 2232) = MEMORY[0x253076390](v92);
  *(v0 + 2240) = 0x61657375614ELL;
  *(v0 + 2248) = 0xE600000000000000;
  v93 = MEMORY[0x253076160](0xD00000000000001ELL, 0x80000002514634E0);
  *(v0 + 2256) = MEMORY[0x253076390](v93);
  strcpy((v0 + 2264), "Sleep Changes");
  *(v0 + 2278) = -4864;
  v94 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462FC0);
  *(v0 + 2280) = MEMORY[0x253076390](v94);
  *(v0 + 2288) = 0xD000000000000010;
  *(v0 + 2296) = 0x80000002514649E0;
  v95 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463F80);
  *(v0 + 2304) = MEMORY[0x253076390](v95);
  *(v0 + 2312) = 0x73616C4620746F48;
  *(v0 + 2320) = 0xEB00000000736568;
  v96 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251463820);
  *(v0 + 2328) = MEMORY[0x253076390](v96);
  *(v0 + 2336) = 0x6F4D20656C707041;
  *(v0 + 2344) = 0xEF656D6954206576;
  v97 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462510);
  *(v0 + 2352) = MEMORY[0x2530763A0](v97);
  *(v0 + 2360) = 0xD000000000000021;
  *(v0 + 2368) = 0x8000000251464A00;
  v98 = MEMORY[0x253076160](0xD000000000000036, 0x8000000251460F30);
  *(v0 + 2376) = MEMORY[0x2530763A0](v98);
  *(v0 + 2384) = 0xD00000000000001DLL;
  *(v0 + 2392) = 0x8000000251464A30;
  v99 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461150);
  *(v0 + 2400) = MEMORY[0x2530763A0](v99);
  *(v0 + 2408) = 0xD000000000000010;
  *(v0 + 2416) = 0x8000000251464A50;
  v100 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251462460);
  *(v0 + 2424) = MEMORY[0x2530763A0](v100);
  strcpy((v0 + 2432), "Walking Speed");
  *(v0 + 2446) = -4864;
  v101 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251460ED0);
  *(v0 + 2448) = MEMORY[0x2530763A0](v101);
  *(v0 + 2456) = 0xD000000000000013;
  *(v0 + 2464) = 0x8000000251464A70;
  v102 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251460EA0);
  *(v0 + 2472) = MEMORY[0x2530763A0](v102);
  *(v0 + 2480) = 0x636E616E67657250;
  *(v0 + 2488) = 0xE900000000000079;
  v103 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463320);
  *(v0 + 2496) = MEMORY[0x253076390](v103);
  *(v0 + 2504) = 0x6F6974617463614CLL;
  *(v0 + 2512) = 0xE90000000000006ELL;
  v104 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463710);
  *(v0 + 2520) = MEMORY[0x253076390](v104);
  strcpy((v0 + 2528), "Contraceptive");
  *(v0 + 2542) = -4864;
  v105 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463C20);
  *(v0 + 2544) = MEMORY[0x253076390](v105);
  *(v0 + 2552) = 0xD00000000000001CLL;
  *(v0 + 2560) = 0x8000000251464A90;
  v106 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251460F70);
  *(v0 + 2568) = MEMORY[0x2530763A0](v106);
  *(v0 + 2576) = 0xD000000000000012;
  *(v0 + 2584) = 0x8000000251464AB0;
  v107 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461120);
  *(v0 + 2592) = MEMORY[0x2530763A0](v107);
  *(v0 + 2600) = 0xD000000000000013;
  *(v0 + 2608) = 0x8000000251464AD0;
  v108 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514610F0);
  *(v0 + 2616) = MEMORY[0x2530763A0](v108);
  *(v0 + 2624) = 0xD000000000000026;
  *(v0 + 2632) = 0x8000000251464AF0;
  v109 = MEMORY[0x253076160](0xD00000000000003ALL, 0x8000000251463140);
  *(v0 + 2640) = MEMORY[0x253076390](v109);
  *(v0 + 2648) = 0xD000000000000011;
  *(v0 + 2656) = 0x8000000251464B20;
  v110 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251463050);
  *(v0 + 2664) = MEMORY[0x253076390](v110);
  *(v0 + 2672) = 0x7265766546;
  *(v0 + 2680) = 0xE500000000000000;
  v111 = MEMORY[0x253076160](0xD00000000000001DLL, 0x8000000251463A10);
  *(v0 + 2688) = MEMORY[0x253076390](v111);
  *(v0 + 2696) = 0xD000000000000013;
  *(v0 + 2704) = 0x8000000251464B40;
  v112 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514630B0);
  *(v0 + 2712) = MEMORY[0x253076390](v112);
  *(v0 + 2720) = 0xD000000000000017;
  *(v0 + 2728) = 0x8000000251464B60;
  v113 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CA0);
  *(v0 + 2736) = MEMORY[0x253076390](v113);
  *(v0 + 2744) = 0x676E69746E696146;
  *(v0 + 2752) = 0xE800000000000000;
  v114 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463A50);
  *(v0 + 2760) = MEMORY[0x253076390](v114);
  *(v0 + 2768) = 0x73656E697A7A6944;
  *(v0 + 2776) = 0xE900000000000073;
  v115 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463AA0);
  *(v0 + 2784) = MEMORY[0x253076390](v115);
  *(v0 + 2792) = 0x676E6974696D6F56;
  *(v0 + 2800) = 0xE800000000000000;
  v116 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251462EC0);
  *(v0 + 2808) = MEMORY[0x253076390](v116);
  *(v0 + 2816) = 0x7275627472616548;
  *(v0 + 2824) = 0xE90000000000006ELL;
  v117 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514638A0);
  *(v0 + 2832) = MEMORY[0x253076390](v117);
  *(v0 + 2840) = 0x676E696867756F43;
  *(v0 + 2848) = 0xE800000000000000;
  v118 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251463B00);
  *(v0 + 2856) = MEMORY[0x253076390](v118);
  *(v0 + 2864) = 0x676E697A65656857;
  *(v0 + 2872) = 0xE800000000000000;
  v119 = MEMORY[0x253076160](0xD000000000000020, 0x8000000251462E90);
  *(v0 + 2880) = MEMORY[0x253076390](v119);
  *(v0 + 2888) = 0x7268542065726F53;
  *(v0 + 2896) = 0xEB0000000074616FLL;
  v120 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251462F50);
  *(v0 + 2904) = MEMORY[0x253076390](v120);
  *(v0 + 2912) = 0x69747365676E6F43;
  *(v0 + 2920) = 0xEA00000000006E6FLL;
  v121 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251463080);
  *(v0 + 2928) = MEMORY[0x253076390](v121);
  *(v0 + 2936) = 0x6F4E20796E6E7552;
  *(v0 + 2944) = 0xEA00000000006573;
  v122 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251463110);
  *(v0 + 2952) = MEMORY[0x253076390](v122);
  *(v0 + 2960) = 0x206C616E69676156;
  *(v0 + 2968) = 0xEF7373656E797244;
  v123 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251462EF0);
  *(v0 + 2976) = MEMORY[0x253076390](v123);
  strcpy((v0 + 2984), "Night Sweats");
  *(v0 + 2997) = 0;
  *(v0 + 2998) = -5120;
  v124 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514634B0);
  *(v0 + 3000) = MEMORY[0x253076390](v124);
  *(v0 + 3008) = 0x736C6C696843;
  *(v0 + 3016) = 0xE600000000000000;
  v125 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251463C80);
  *(v0 + 3024) = MEMORY[0x253076390](v125);
  *(v0 + 3032) = 0x736F4C2072696148;
  *(v0 + 3040) = 0xE900000000000073;
  v126 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514639B0);
  *(v0 + 3048) = MEMORY[0x253076390](v126);
  *(v0 + 3056) = 0x6E696B5320797244;
  *(v0 + 3064) = 0xE800000000000000;
  v127 = MEMORY[0x253076160](0xD00000000000001FLL, 0x8000000251463A80);
  *(v0 + 3072) = MEMORY[0x253076390](v127);
  *(v0 + 3080) = 0xD000000000000014;
  *(v0 + 3088) = 0x8000000251464B80;
  v128 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463DC0);
  *(v0 + 3096) = MEMORY[0x253076390](v128);
  strcpy((v0 + 3104), "Memory Lapse");
  *(v0 + 3117) = 0;
  *(v0 + 3118) = -5120;
  v129 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514635B0);
  *(v0 + 3120) = MEMORY[0x253076390](v129);
  *(v0 + 3128) = 0xD000000000000015;
  *(v0 + 3136) = 0x8000000251464BA0;
  v130 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514639E0);
  *(v0 + 3144) = MEMORY[0x253076390](v130);
  strcpy((v0 + 3152), "Loss Of Smell");
  *(v0 + 3166) = -4864;
  v131 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514636E0);
  *(v0 + 3168) = MEMORY[0x253076390](v131);
  strcpy((v0 + 3176), "Loss Of Taste");
  *(v0 + 3190) = -4864;
  v132 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514636B0);
  *(v0 + 3192) = MEMORY[0x253076390](v132);
  *(v0 + 3200) = 0xD000000000000015;
  *(v0 + 3208) = 0x8000000251464BC0;
  v133 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514632F0);
  *(v0 + 3216) = MEMORY[0x253076390](v133);
  *(v0 + 3224) = 0xD000000000000018;
  *(v0 + 3232) = 0x8000000251464BE0;
  v134 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463250);
  *(v0 + 3240) = MEMORY[0x253076390](v134);
  *(v0 + 3248) = 0xD00000000000001DLL;
  *(v0 + 3256) = 0x8000000251464C00;
  v135 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461490);
  *(v0 + 3264) = MEMORY[0x2530763A0](v135);
  *(v0 + 3272) = 0xD000000000000015;
  *(v0 + 3280) = 0x8000000251464C20;
  v136 = MEMORY[0x253076160](0xD00000000000002BLL, 0x80000002514611D0);
  *(v0 + 3288) = MEMORY[0x2530763A0](v136);
  *(v0 + 3296) = 0xD00000000000001CLL;
  *(v0 + 3304) = 0x8000000251464C40;
  v137 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461190);
  *(v0 + 3312) = MEMORY[0x2530763A0](v137);
  *(v0 + 3320) = 0xD00000000000001BLL;
  *(v0 + 3328) = 0x8000000251464C60;
  v138 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461260);
  *(v0 + 3336) = MEMORY[0x2530763A0](v138);
  *(v0 + 3344) = 0xD000000000000022;
  *(v0 + 3352) = 0x8000000251464C80;
  v139 = MEMORY[0x253076160](0xD000000000000038, 0x8000000251463350);
  *(v0 + 3360) = MEMORY[0x253076390](v139);
  *(v0 + 3368) = 0xD00000000000001BLL;
  *(v0 + 3376) = 0x8000000251464CB0;
  v140 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251463180);
  *(v0 + 3384) = MEMORY[0x253076390](v140);
  *(v0 + 3392) = 0xD00000000000001ALL;
  *(v0 + 3400) = 0x8000000251464CD0;
  v141 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251463740);
  *(v0 + 3408) = MEMORY[0x253076390](v141);
  *(v0 + 3416) = 0xD00000000000001BLL;
  *(v0 + 3424) = 0x8000000251464CF0;
  v142 = MEMORY[0x253076160](0xD000000000000031, 0x80000002514637E0);
  *(v0 + 3432) = MEMORY[0x253076390](v142);
  *(v0 + 3440) = 0xD000000000000013;
  *(v0 + 3448) = 0x8000000251464D10;
  v143 = MEMORY[0x253076160](0xD000000000000032, 0x80000002514615F0);
  *(v0 + 3456) = MEMORY[0x2530763A0](v143);
  *(v0 + 3464) = 0xD000000000000010;
  *(v0 + 3472) = 0x8000000251464D30;
  v144 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461000);
  *(v0 + 3480) = MEMORY[0x2530763A0](v144);
  strcpy((v0 + 3488), "Running Power");
  *(v0 + 3502) = -4864;
  v145 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461230);
  *(v0 + 3504) = MEMORY[0x2530763A0](v145);
  strcpy((v0 + 3512), "Running Speed");
  *(v0 + 3526) = -4864;
  v146 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461200);
  *(v0 + 3528) = MEMORY[0x2530763A0](v146);
  *(v0 + 3536) = 0xD000000000000025;
  *(v0 + 3544) = 0x8000000251464D50;
  v147 = MEMORY[0x253076160](0xD00000000000003ALL, 0x80000002514624D0);
  *(v0 + 3552) = MEMORY[0x2530763A0](v147);
  *(v0 + 3560) = 0xD000000000000011;
  *(v0 + 3568) = 0x8000000251464D80;
  v148 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462FF0);
  *(v0 + 3576) = MEMORY[0x253076390](v148);
  *(v0 + 3584) = 0xD000000000000011;
  *(v0 + 3592) = 0x8000000251464DA0;
  v149 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251460E70);
  *(v0 + 3600) = MEMORY[0x2530763A0](v149);
  *(v0 + 3608) = 0xD000000000000010;
  *(v0 + 3616) = 0x8000000251464DC0;
  v150 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461060);
  *(v0 + 3624) = MEMORY[0x2530763A0](v150);
  strcpy((v0 + 3632), "Cycling Power");
  *(v0 + 3646) = -4864;
  v151 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462180);
  *(v0 + 3648) = MEMORY[0x2530763A0](v151);
  strcpy((v0 + 3656), "Cycling Speed");
  *(v0 + 3670) = -4864;
  v152 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462150);
  *(v0 + 3672) = MEMORY[0x2530763A0](v152);
  *(v0 + 3680) = 0x20676E696C637943;
  *(v0 + 3688) = 0xEF65636E65646143;
  v153 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514621F0);
  *(v0 + 3696) = MEMORY[0x2530763A0](v153);
  *(v0 + 3704) = 0xD000000000000022;
  *(v0 + 3712) = 0x8000000251464DE0;
  v154 = MEMORY[0x253076160](0xD000000000000037, 0x80000002514621B0);
  *(v0 + 3720) = MEMORY[0x2530763A0](v154);
  *(v0 + 3728) = 0x6C61636973796850;
  *(v0 + 3736) = 0xEF74726F66664520;
  v155 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461360);
  *(v0 + 3744) = MEMORY[0x2530763A0](v155);
  *(v0 + 3752) = 0xD000000000000016;
  *(v0 + 3760) = 0x8000000251464E10;
  v156 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251461900);
  *(v0 + 3768) = MEMORY[0x2530763A0](v156);
  *(v0 + 3776) = 0x4420676E69776F52;
  *(v0 + 3784) = 0xEF65636E61747369;
  v157 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514618D0);
  *(v0 + 3792) = MEMORY[0x2530763A0](v157);
  *(v0 + 3800) = 0xD00000000000001DLL;
  *(v0 + 3808) = 0x8000000251464E30;
  v158 = MEMORY[0x253076160](0xD000000000000032, 0x80000002514619A0);
  *(v0 + 3816) = MEMORY[0x2530763A0](v158);
  *(v0 + 3824) = 0xD000000000000017;
  *(v0 + 3832) = 0x8000000251464E50;
  v159 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514618A0);
  *(v0 + 3840) = MEMORY[0x2530763A0](v159);
  *(v0 + 3848) = 0xD00000000000001ELL;
  *(v0 + 3856) = 0x8000000251464E70;
  v160 = MEMORY[0x253076160](0xD000000000000033, 0x8000000251461720);
  *(v0 + 3864) = MEMORY[0x2530763A0](v160);
  strcpy((v0 + 3872), "Rowing Speed");
  *(v0 + 3885) = 0;
  *(v0 + 3886) = -5120;
  v161 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514612A0);
  *(v0 + 3888) = MEMORY[0x2530763A0](v161);
  *(v0 + 3896) = 0xD00000000000001ALL;
  *(v0 + 3904) = 0x8000000251464E90;
  v162 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251462220);
  *(v0 + 3912) = MEMORY[0x2530763A0](v162);
  *(v0 + 3920) = 0xD000000000000013;
  *(v0 + 3928) = 0x8000000251464EB0;
  v163 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461400);
  *(v0 + 3936) = MEMORY[0x2530763A0](v163);
  *(v0 + 3944) = 0xD000000000000014;
  *(v0 + 3952) = 0x8000000251464ED0;
  v164 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460E40);
  *(v0 + 3960) = MEMORY[0x2530763A0](v164);
  *(v0 + 3968) = 0xD000000000000019;
  *(v0 + 3976) = 0x8000000251464EF0;
  v165 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251463D60);
  *(v0 + 3984) = MEMORY[0x253076390](v165);
  *(v0 + 3992) = 0xD000000000000018;
  *(v0 + 4000) = 0x8000000251464F10;
  v166 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251463D90);
  result = MEMORY[0x253076390](v166);
  *(v0 + 4008) = result;
  static HealthChartModel.supportedTypes = v0;
  return result;
}

uint64_t static HealthChartModel.supportedTypes.getter()
{
  if (one-time initialization token for supportedTypes != -1)
  {
    swift_once();
  }
}

void type metadata accessor for _ContiguousArrayStorage<(String, HKObjectType)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, HKObjectType)>)
  {
    type metadata accessor for (String, HKObjectType)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, HKObjectType)>);
    }
  }
}

void type metadata accessor for (String, HKObjectType)()
{
  if (!lazy cache variable for type metadata for (String, HKObjectType))
  {
    type metadata accessor for HKQuantityType(255, &lazy cache variable for type metadata for HKObjectType, 0x277CCD720);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, HKObjectType));
    }
  }
}

uint64_t specialized ChartContent.endStyle(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for RoundedRectangle();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Capsule();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0();
  v18 = v17;
  v38 = *(v17 - 8);
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v37 - v24;
  if (a2)
  {
    v27 = v41;
    v26 = v42;
    if (a1)
    {
      type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300]);
      (*(*(v28 - 8) + 16))(v25, v27, v28);
    }

    else
    {
      v33 = *MEMORY[0x277CE0118];
      v34 = type metadata accessor for RoundedCornerStyle();
      (*(*(v34 - 8) + 104))(v16, v33, v34);
      v35 = MEMORY[0x277CBB2F8];
      type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300]);
      v43 = type metadata accessor for RectangleMark();
      v44 = MEMORY[0x277CE0F78];
      v45 = v35;
      v46 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
      ChartContent.clipShape<A>(_:style:)();
      outlined destroy of Capsule(v16, MEMORY[0x277CE1260]);
      (*(v38 + 32))(v25, v21, v18);
    }

    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(v25, v26, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>);
  }

  else
  {
    v29 = *(v5 + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = type metadata accessor for RoundedCornerStyle();
    (*(*(v31 - 8) + 104))(&v8[v29], v30, v31);
    *v8 = a1;
    *(v8 + 1) = a1;
    v32 = MEMORY[0x277CBB2F8];
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300]);
    v43 = type metadata accessor for RectangleMark();
    v44 = MEMORY[0x277CE0F78];
    v45 = v32;
    v46 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    ChartContent.clipShape<A>(_:style:)();
    outlined destroy of Capsule(v8, MEMORY[0x277CDFC08]);
    (*(v39 + 32))(v42, v12, v40);
  }

  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #1 in CategoryLevelSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v129 = a2;
  v123 = a1;
  v4 = MEMORY[0x277CBB378];
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = v101 - v7;
  v115 = type metadata accessor for Capsule();
  v8 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0();
  v117 = v10;
  v116 = *(v10 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x28223BE20](v10);
  v113 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for RectangleMark();
  v107 = *(v108 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v125 = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300]);
  v111 = v15;
  v110 = *(v15 - 8);
  v16 = *(v110 + 64);
  MEMORY[0x28223BE20](v15);
  v109 = v101 - v17;
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v112 = v101 - v20;
  v21 = type metadata accessor for DateInterval();
  v127 = *(v21 - 8);
  v128 = v21;
  v22 = *(v127 + 64);
  MEMORY[0x28223BE20](v21);
  v126 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v124 = v101 - v26;
  type metadata accessor for PlottableValue<Date>();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v101[1] = v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v131 = v101 - v31;
  v32 = type metadata accessor for PointMark();
  v106 = *(v32 - 8);
  v33 = *(v106 + 64);
  MEMORY[0x28223BE20](v32);
  v104 = v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB470]);
  v105 = v35;
  v103 = *(v35 - 8);
  v36 = *(v103 + 64);
  MEMORY[0x28223BE20](v35);
  v102 = v101 - v37;
  v130 = type metadata accessor for Date();
  v38 = *(v130 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v130);
  v41 = v101 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v122 = v101 - v43;
  v44 = type metadata accessor for CategoryLevelMarkViewModel(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = v101 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, v4);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v121 = v101 - v50;
  type metadata accessor for MainActor();
  v51 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v119 = v51;
  v120 = a3;
  outlined init with copy of CategoryLevelSeries(v123, v47, type metadata accessor for CategoryLevelMarkViewModel);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v128 = v32;
    type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: Date, y: Double), MEMORY[0x277CC9578]);
    v65 = *&v47[*(v64 + 48)];
    (*(v38 + 32))(v122, v47, v130);
    v132 = 120;
    v133 = 0xE100000000000000;
    v132 = String.init<A>(_:)();
    v133 = v66;
    lazy protocol witness table accessor for type String and conformance String();
    static PlottableValue.value<A>(_:_:)();

    v132 = 121;
    v133 = 0xE100000000000000;
    v132 = String.init<A>(_:)();
    v133 = v67;
    v136 = v65;
    static PlottableValue.value<A>(_:_:)();

    v68 = v104;
    PointMark.init<A, B>(x:y:)();
    v69 = v129 + *(type metadata accessor for CategoryLevelSeries(0) + 20);
    v70 = v69 + *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 36);
    v71 = *v70;
    v72 = *(v70 + 8);
    v73 = *(v70 + 16);
    if (v73)
    {
      v74 = v128;
      if (v73 != 1)
      {
        v77 = v120;
        v80 = v121;
        if (v71 | v72)
        {
          v83 = [objc_opt_self() tintColor];
          v84 = Color.init(uiColor:)();
        }

        else
        {
          v84 = static Color.primary.getter();
        }

        v71 = v84;
        goto LABEL_27;
      }
    }

    else
    {
      v78 = one-time initialization token for bundle;

      v74 = v128;
      if (v78 != -1)
      {
        swift_once();
      }

      v79 = static HealthChartsBundle.bundle;
      v71 = Color.init(_:bundle:)();
    }

    v77 = v120;
    v80 = v121;
LABEL_27:
    v132 = v71;
    v99 = v102;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v106 + 8))(v68, v74);
    (*(v38 + 8))(v122, v130);
    (*(v103 + 32))(v80, v99, v105);
    goto LABEL_28;
  }

  type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: DateInterval, y: Double), MEMORY[0x277CC88A8]);
  v53 = *&v47[*(v52 + 48)];
  (*(v127 + 32))(v126, v47, v128);
  v132 = 29560;
  v133 = 0xE200000000000000;
  v132 = String.init<A>(_:)();
  v133 = v54;
  DateInterval.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v55 = v130;
  static PlottableValue.value<A>(_:_:)();
  v56 = *(v38 + 8);
  v56(v41, v55);

  v132 = 25976;
  v133 = 0xE200000000000000;
  v132 = String.init<A>(_:)();
  v133 = v57;
  DateInterval.end.getter();
  static PlottableValue.value<A>(_:_:)();
  v56(v41, v55);

  v132 = 121;
  v133 = 0xE100000000000000;
  v132 = String.init<A>(_:)();
  v133 = v58;
  v136 = v53;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:y:height:)();
  v59 = v129 + *(type metadata accessor for CategoryLevelSeries(0) + 20);
  v60 = v59 + *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 36);
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (v63)
  {
    if (v63 != 1)
    {
      v77 = v120;
      if (v61 | v62)
      {
        v81 = [objc_opt_self() tintColor];
        v82 = Color.init(uiColor:)();
      }

      else
      {
        v82 = static Color.primary.getter();
      }

      v61 = v82;
      goto LABEL_24;
    }
  }

  else
  {
    v75 = one-time initialization token for bundle;

    if (v75 != -1)
    {
      swift_once();
    }

    v76 = static HealthChartsBundle.bundle;
    v61 = Color.init(_:bundle:)();
  }

  v77 = v120;
LABEL_24:
  v132 = v61;
  v85 = MEMORY[0x277CE0F78];
  v86 = MEMORY[0x277CE0F60];
  v87 = v109;
  v88 = v108;
  v89 = MEMORY[0x277CBB2F8];
  v90 = v125;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v107 + 8))(v90, v88);
  v91 = *MEMORY[0x277CE0118];
  v92 = type metadata accessor for RoundedCornerStyle();
  v93 = v114;
  (*(*(v92 - 8) + 104))(v114, v91, v92);
  v132 = v88;
  v133 = v85;
  v134 = v89;
  v135 = v86;
  swift_getOpaqueTypeConformance2();
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
  v94 = v113;
  v95 = v111;
  ChartContent.clipShape<A>(_:style:)();
  outlined destroy of Capsule(v93, MEMORY[0x277CE1260]);
  (*(v110 + 8))(v87, v95);
  (*(v127 + 8))(v126, v128);
  v96 = v118;
  (*(v116 + 32))(v118, v94, v117);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  v97 = v96;
  v98 = v112;
  outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(v97, v112, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>);
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  v80 = v121;
  sub_25141FE6C(v98, v121);
LABEL_28:
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>.Storage, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(v80, v77, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>);
}

uint64_t protocol witness for ChartContent.body.getter in conformance CategoryLevelSeries(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = v1 + *(v5 + 28);
  v7 = type metadata accessor for CategoryLevelSeriesViewModel(0);
  specialized _copySequenceToContiguousArray<A>(_:)(*(v6 + *(v7 + 32)));
  v13[1] = v8;
  swift_getKeyPath();
  outlined init with copy of CategoryLevelSeries(v2, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CategoryLevelSeries);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of CategoryLevelSeries(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CategoryLevelSeries);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in CategoryLevelSeries.body.getter;
  *(v11 + 24) = v10;
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for [(offset: Int, element: CategoryLevelMarkViewModel)], type metadata accessor for (offset: Int, element: CategoryLevelMarkViewModel), MEMORY[0x277D83940]);
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, MEMORY[0x277CBB378]);
  lazy protocol witness table accessor for type [(offset: Int, element: CategoryLevelMarkViewModel)] and conformance [A]();
  lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t CategoryLevelSeriesViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = type metadata accessor for Date();
  v83 = *(v90 - 8);
  v6 = *(v83 + 8);
  MEMORY[0x28223BE20](v90);
  v89 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = v71 - v9;
  v76 = type metadata accessor for DateInterval();
  v93 = *(v76 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v76);
  v87 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v71 - v13;
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, Double>, MEMORY[0x277D10248]);
  v75 = v15;
  v92 = *(v15 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = v71 - v17;
  v18 = type metadata accessor for CategoryLevelMarkViewModel(0);
  v85 = *(v18 - 8);
  v86 = v18;
  v19 = *(v85 + 64);
  MEMORY[0x28223BE20](v18);
  v84 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
  v22 = v21;
  v78 = *(v21 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v95 = a2[1];
  LODWORD(v94) = *(a2 + 16);
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>);
  AnySeriesData.xScale.getter();
  v27 = a1;
  v28 = AnySeriesData.yScale.getter();
  v30 = v29;
  LOBYTE(a1) = v31;
  v32 = type metadata accessor for CategoryLevelSeriesViewModel(0);
  v33 = a3 + v32[5];
  *v33 = v28;
  *(v33 + 8) = v30;
  v34 = v27;
  *(v33 + 16) = a1 & 1;
  v35 = a3 + v32[6];
  HealthChartsData.SeriesData.aggregation.getter();
  v36 = a3 + v32[7];
  HealthChartsData.SeriesData.unit.getter();
  v77 = v32;
  v37 = a3 + v32[9];
  v38 = v95;
  *v37 = v26;
  *(v37 + 8) = v38;
  *(v37 + 16) = v94;
  v39 = v76;
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v40 = HealthChartsData.SeriesData.points.getter();
  v41 = v78 + 8;
  v42 = *(v78 + 8);
  v42(v25, v22);
  v43 = *(v40 + 16);
  if (v43)
  {
    v71[0] = v42;
    v78 = v41;
    v72 = v22;
    v73 = v34;
    v74 = a3;
    v96 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    v44 = v96;
    v82 = *(v92 + 16);
    v45 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v71[1] = v40;
    v46 = v40 + v45;
    v47 = *(v92 + 72);
    v48 = (v93 + 8);
    v80 = (v83 + 8);
    v81 = v47;
    v79 = (v92 + 8);
    v83 = v14;
    v49 = v75;
    v50 = v91;
    v92 += 16;
    v93 += 8;
    do
    {
      v94 = v44;
      v95 = v43;
      v82(v50, v46, v49);
      HealthChartsData.SeriesPoint.x.getter();
      v51 = v88;
      DateInterval.start.getter();
      v52 = *v48;
      (*v48)(v14, v39);
      v53 = v87;
      HealthChartsData.SeriesPoint.x.getter();
      v54 = v14;
      v55 = v39;
      v56 = v89;
      DateInterval.end.getter();
      v52(v53, v55);
      v57 = static Date.== infix(_:_:)();
      v58 = *v80;
      v59 = v56;
      v60 = v90;
      (*v80)(v59, v90);
      v58(v51, v60);
      if (v57)
      {
        type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: Date, y: Double), MEMORY[0x277CC9578]);
        v62 = *(v61 + 48);
        v63 = v91;
        HealthChartsData.SeriesPoint.x.getter();
        v64 = v84;
        DateInterval.start.getter();
        v52(v54, v55);
        v39 = v55;
        v50 = v63;
      }

      else
      {
        type metadata accessor for (x: Date, y: Double)(0, &lazy cache variable for type metadata for (x: DateInterval, y: Double), MEMORY[0x277CC88A8]);
        v66 = *(v65 + 48);
        v64 = v84;
        v50 = v91;
        HealthChartsData.SeriesPoint.x.getter();
        v39 = v55;
      }

      HealthChartsData.SeriesPoint.y.getter();
      (*v79)(v50, v49);
      swift_storeEnumTagMultiPayload();
      v44 = v94;
      v67 = v95;
      v96 = v94;
      v69 = *(v94 + 16);
      v68 = *(v94 + 24);
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1);
        v44 = v96;
      }

      *(v44 + 16) = v69 + 1;
      outlined init with take of CategoryLevelSeries(v64, v44 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v69, type metadata accessor for CategoryLevelMarkViewModel);
      v46 += v81;
      v43 = v67 - 1;
      v14 = v83;
      v48 = v93;
    }

    while (v43);
    (v71[0])(v73, v72);

    a3 = v74;
  }

  else
  {

    result = (v42)(v34, v22);
    v44 = MEMORY[0x277D84F90];
  }

  *(a3 + v77[8]) = v44;
  return result;
}

void type metadata accessor for ClosedRange<Date>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

uint64_t CategoryLevelSeriesViewModel.yScale.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t CategoryLevelSeriesViewModel.aggregation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CategoryLevelSeriesViewModel(0) + 24);
  v4 = type metadata accessor for HealthChartsData.Aggregation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t outlined init with copy of ClosedRange<Date>?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for ClosedRange<Date>?(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ClosedRange<Date>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t closure #1 in CategoryLevelSeriesViewModel.init(data:attributes:)()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, Double>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  return HealthChartsData.SeriesPoint.init(_:_:)();
}

uint64_t protocol witness for SeriesData.yScale.getter in conformance CategoryLevelSeriesViewModel(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t protocol witness for SeriesData.aggregation.getter in conformance CategoryLevelSeriesViewModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25141ED90(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HealthChartsData.Aggregation();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_25141EF58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for HealthChartsData.Aggregation();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      type metadata accessor for ClosedRange<Date>?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

void type metadata completion function for CategoryLevelSeriesViewModel()
{
  type metadata accessor for ClosedRange<Date>?(319, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClosedRange<Double>?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClosedRange<Date>?(319, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ClosedRange<Date>?(319, &lazy cache variable for type metadata for [CategoryLevelMarkViewModel], type metadata accessor for CategoryLevelMarkViewModel, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CategoryLevelMarkViewModel()
{
  type metadata accessor for (x: Date, y: Double)(319, &lazy cache variable for type metadata for (x: Date, y: Double), MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (x: Date, y: Double)(319, &lazy cache variable for type metadata for (x: DateInterval, y: Double), MEMORY[0x277CC88A8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (x: Date, y: Double)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25141F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CategoryLevelSeriesViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25141F4B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CategoryLevelSeriesViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for CategoryLevelSeries()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CategoryLevelSeriesViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for CategoryLevelSeries(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type CategoryLevelSeries and conformance CategoryLevelSeries, type metadata accessor for CategoryLevelSeries);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25141F75C()
{
  v1 = (type metadata accessor for CategoryLevelSeries(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 8);
    v9(v5, v8);
    v9(v5 + *(v7 + 36), v8);
  }

  v10 = type metadata accessor for CategoryLevelSeriesViewModel(0);
  v11 = v10[6];
  v12 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v10[7];
  v14 = type metadata accessor for HealthChartsUnit();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = *(v5 + v10[8]);

  outlined consume of AttributeColor(*(v5 + v10[9]), *(v5 + v10[9] + 8), *(v5 + v10[9] + 16));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in CategoryLevelSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CategoryLevelSeries(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in CategoryLevelSeries.body.getter(a1, v6, a2);
}

uint64_t sub_25141FA4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed CategoryLevelMarkViewModel) -> (@out BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>)(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  type metadata accessor for (offset: Int, element: CategoryLevelMarkViewModel)();
  return v4(v5, &a1[*(v6 + 48)]);
}

void type metadata accessor for (offset: Int, element: CategoryLevelMarkViewModel)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel))
  {
    type metadata accessor for CategoryLevelMarkViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: CategoryLevelMarkViewModel));
    }
  }
}

void type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
    v7 = v6;
    type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(255, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>, MEMORY[0x277CBB378]);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB300]);
    v7 = v6;
    type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25141FE6C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, MEMORY[0x277CBB470]);
    v7 = v6;
    type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB378]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with take of BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CBB378]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Capsule(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of CategoryLevelSeries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    v7 = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277D10358];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of CategoryLevelSeries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static ChartContentBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuilderConditional.Storage();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t static ChartContentBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BuilderConditional.Storage();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t static ChartContentBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = 8 * a2;
  v37[1] = a4;
  if (a2 == 1)
  {
    v7 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v10 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    v7 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v22 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = v37;
  MEMORY[0x28223BE20](v25);
  if (a2)
  {
    v27 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v28 = (v26 + 32);
    v29 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = a2;
    do
    {
      if (a2 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v28;
      }

      v33 = *v27++;
      v32 = v33;
      v34 = &v24[v31];
      v35 = *v5++;
      (*(*(v32 - 8) + 16))(&v24[v31], v35);
      *v29++ = v34;
      v28 += 4;
      --v30;
    }

    while (v30);
  }

  return BuilderTuple.init(elements:)();
}

uint64_t static SeriesContentBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v28 - v15;
  v28 = swift_getAssociatedTypeWitness();
  v17 = *(*(v28 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v28);
  v20 = &v28 - v19;
  (*(a5 + 40))(a3, a5, v18);
  (*(a6 + 40))(a4, a6);
  v40 = AssociatedTypeWitness;
  v41 = v16;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a1;
  v36 = a2;
  v39[1] = a3;
  v39[2] = a4;
  v21 = type metadata accessor for BuilderTuple();
  v22 = v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = *(a5 + 8);
  v38[1] = *(a6 + 8);
  v39[0] = v24;
  v37 = v38;
  v38[0] = v25;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v20, &v41, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B>(_:_:), v30, 1uLL, v22, &v40, v21, v29, AssociatedConformanceWitness, v39, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v26 = *(v25 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)(v27, v28, v26);
  v29 = *(a5 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)(v33, a4, v29);
  (*(v17 + 16))(v21, v24, a3);
  v38[0] = v21;
  (*(v9 + 16))(v12, v15, a4);
  v38[1] = v12;
  v37[0] = a3;
  v37[1] = a4;
  v35 = v26;
  v36 = v29;
  static ChartContentBuilder.buildBlock<each A>(_:)(v38, 2uLL, v37, v34);
  v30 = *(v9 + 8);
  v30(v15, a4);
  v31 = *(v17 + 8);
  v31(v24, a3);
  v30(v12, a4);
  return (v31)(v21, a3);
}

uint64_t GroupSeriesContent.init(_:_:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a5;
  v89 = a9;
  v90 = a2;
  v15 = a11;
  v92 = a10;
  v93 = a1;
  v86 = a4;
  v87 = a3;
  v81 = 8 * a5;
  if (a5 == 1)
  {
    TupleTypeMetadata = *(a7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      v21 = 0;
      v22 = a7 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 < 4)
      {
        goto LABEL_9;
      }

      if (&v20[-v22] < 0x20)
      {
        goto LABEL_9;
      }

      v21 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = (v22 + 16);
      v24 = v20 + 16;
      v25 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = *v23;
        *(v24 - 1) = *(v23 - 1);
        *v24 = v26;
        v23 += 2;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v21 != v14)
      {
LABEL_9:
        v27 = v14 - v21;
        v28 = 8 * v21;
        v29 = &v20[8 * v21];
        v30 = (v22 + v28);
        do
        {
          v31 = *v30++;
          *v29 = v31;
          v29 += 8;
          --v27;
        }

        while (v27);
      }
    }

    a8 = v18;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = a11;
  }

  v72 = TupleTypeMetadata;
  v32 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v34 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = &v72;
  v35 = *(a6 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  v95 = a6;
  v40 = v92;
  v96 = a7;
  v97 = v92;
  v98 = v15;
  v41 = type metadata accessor for GroupSeries();
  v83 = &v72;
  v78 = v41;
  v77 = *(v41 - 8);
  v42 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v74 = &v72 - v43;
  v94 = v14;
  v95 = a6;
  v91 = a7;
  v96 = a7;
  v97 = a8;
  v98 = v40;
  v99 = v15;
  v85 = v15;
  v100 = a12;
  v44 = type metadata accessor for GroupSeriesContent();
  v80 = &v72;
  v75 = v44;
  v73 = *(v44 - 8);
  v45 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v72 - v47;
  v82 = v35;
  v49 = *(v35 + 16);
  v79 = v39;
  v88 = a6;
  v50 = v49(v39, v93, a6, v46);
  v76 = &v72;
  MEMORY[0x28223BE20](v50);
  v52 = (&v72 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v14)
  {
    v53 = v90;
    v54 = (v91 & 0xFFFFFFFFFFFFFFFELL);
    v55 = (v72 + 32);
    v56 = (&v72 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57 = v14;
    do
    {
      if (v14 == 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = *v55;
      }

      v60 = *v54++;
      v59 = v60;
      v61 = &v34[v58];
      v62 = *v53++;
      (*(*(v59 - 8) + 16))(&v34[v58], v62);
      *v56++ = v61;
      v55 += 4;
      --v57;
    }

    while (v57);
  }

  v63 = v74;
  v64 = v88;
  v65 = v91;
  GroupSeries.init(_:_:)(v79, v52, v14, v88, v91, v92, v85, v74);
  v66 = (*(v77 + 32))(v48, v63, v78);
  v67 = v75;
  v68 = &v48[*(v75 + 76)];
  v87(v66);
  (*(v82 + 8))(v93, v64);
  result = (*(v73 + 32))(v89, v48, v67);
  if (v14)
  {
    v70 = (v65 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v71 = v90 - 1;
    do
    {
      result = (*(*(*(v70 + 8 * v14) - 8) + 8))(v71[v14]);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a6;
  v38 = a3;
  AssociatedConformanceWitness = a2;
  v40 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v33 - v16;
  v34 = swift_getAssociatedTypeWitness();
  v18 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v20 = &v33 - v19;
  v33 = swift_getAssociatedTypeWitness();
  v21 = *(*(v33 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v33);
  v39 = &v33 - v23;
  v24 = a1;
  (*(a7 + 40))(a4, a7, v22);
  v25 = AssociatedConformanceWitness;
  (*(a8 + 40))(a5, a8);
  v55[0] = v20;
  v26 = v38;
  v27 = v36;
  (*(a10 + 40))(v36, a10);
  v55[1] = v17;
  v42 = a4;
  v43 = a5;
  v44 = v27;
  v45 = a7;
  v46 = a8;
  v47 = a10;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v54[0] = v34;
  v54[1] = AssociatedTypeWitness;
  v53[2] = a4;
  v53[3] = a5;
  v53[4] = v27;
  v38 = type metadata accessor for BuilderTuple();
  v28 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53[0] = swift_getAssociatedConformanceWitness();
  v53[1] = swift_getAssociatedConformanceWitness();
  v29 = *(a8 + 8);
  v52[0] = *(a7 + 8);
  v52[1] = v29;
  v52[2] = *(a10 + 8);
  v51 = v52;
  v30 = v38;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v39, v55, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:), v41, 2uLL, v28, v54, v30, v40, AssociatedConformanceWitness, v53, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v52 = a5;
  v53 = a3;
  v51 = a2;
  v55 = a7;
  v54 = *(a5 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](a1);
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v16 = v15;
  v57 = *(v15 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v56 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v47 - v30;
  v49 = *(v32 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)(v33, v34, v49);
  v35 = *(a6 + 8);
  v48 = v22;
  v36 = v16;
  static ChartContentBuilder.buildExpression<A>(_:)(v51, v16, v35);
  v37 = *(a8 + 8);
  v47 = v14;
  v38 = v52;
  static ChartContentBuilder.buildExpression<A>(_:)(v53, v52, v37);
  v39 = v24[2];
  v50 = v28;
  v39(v28, v31, a4);
  v63[0] = v28;
  v40 = v56;
  (*(v57 + 16))(v56, v22, v36);
  v63[1] = v40;
  v41 = v54;
  v42 = v58;
  (*(v54 + 16))(v58, v14, v38);
  v63[2] = v42;
  v62[0] = a4;
  v62[1] = v36;
  v62[2] = v38;
  v59 = v49;
  v60 = v35;
  v61 = v37;
  static ChartContentBuilder.buildBlock<each A>(_:)(v63, 3uLL, v62, v55);
  v43 = *(v41 + 8);
  v43(v47, v38);
  v44 = *(v57 + 8);
  v44(v48, v36);
  v45 = v24[1];
  v45(v31, a4);
  v43(v58, v38);
  v44(v56, v36);
  return (v45)(v50, a4);
}

uint64_t partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[5];
  return closure #1 in static SeriesContentBuilder.buildBlock<A, B, C>(_:_:_:)(v1[8], v1[9], v1[10], v1[2], v1[4], v1[6], a1, v1[7]);
}

uint64_t static SeriesContentBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v57 = a8;
  v44 = a7;
  v49 = a4;
  v47 = a3;
  AssociatedConformanceWitness = a1;
  v55 = a2;
  v51 = a9;
  v53 = a12;
  v56 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v41 - v16;
  v46 = swift_getAssociatedTypeWitness();
  v17 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v19 = &v41 - v18;
  v42 = a6;
  v43 = swift_getAssociatedTypeWitness();
  v20 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v22 = &v41 - v21;
  v23 = a5;
  v58 = swift_getAssociatedTypeWitness();
  v24 = *(*(v58 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v58);
  v50 = &v41 - v26;
  v52 = a10;
  (*(v52 + 40))(a5, v52, v25);
  (*(a11 + 40))(a6, a11);
  v63[0] = v22;
  v27 = v53;
  v28 = v47;
  v29 = v44;
  (*(v53 + 40))(v44, v53);
  v63[1] = v19;
  v31 = v56;
  v30 = v57;
  v32 = v45;
  v33 = v49;
  (*(v56 + 40))(v57, v56);
  v63[2] = v32;
  v59[2] = v23;
  v59[3] = v42;
  v59[4] = v29;
  v59[5] = v30;
  v59[6] = v52;
  v59[7] = a11;
  v59[8] = v27;
  v59[9] = v31;
  v59[10] = AssociatedConformanceWitness;
  v59[11] = v55;
  v59[12] = v28;
  v59[13] = v33;
  v62[0] = v43;
  v62[1] = v46;
  v62[2] = AssociatedTypeWitness;
  v61[3] = v23;
  v61[4] = v42;
  v61[5] = v29;
  v61[6] = v30;
  v55 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61[0] = swift_getAssociatedConformanceWitness();
  v34 = v53;
  v61[1] = swift_getAssociatedConformanceWitness();
  v35 = v56;
  v61[2] = swift_getAssociatedConformanceWitness();
  v36 = *(a11 + 8);
  v60[0] = *(v52 + 8);
  v60[1] = v36;
  v37 = *(v35 + 8);
  v60[2] = *(v34 + 8);
  v60[3] = v37;
  v59[15] = v60;
  v38 = v55;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v50, v63, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D>(_:_:_:_:), v59, 3uLL, v58, v62, v38, v51, AssociatedConformanceWitness, v61, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v83 = a8;
  v78 = a4;
  v76 = a3;
  v73 = a2;
  v79 = a9;
  v77 = a13;
  v74 = a12;
  v86 = *(a8 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](a1);
  v85 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v75 = *(v21 - 8);
  v22 = *(v75 + 64);
  MEMORY[0x28223BE20](v23);
  v82 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  v66 = v28;
  v84 = *(v28 - 8);
  v29 = *(v84 + 64);
  MEMORY[0x28223BE20](v30);
  v80 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v66 - v33;
  v72 = *(v35 - 8);
  v36 = v72;
  v37 = *(v72 + 64);
  MEMORY[0x28223BE20](v38);
  v81 = &v66 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v66 - v41;
  v70 = *(v43 + 8);
  v71 = &v66 - v41;
  static ChartContentBuilder.buildExpression<A>(_:)(v44, v45, v70);
  v68 = *(a11 + 8);
  v69 = v34;
  static ChartContentBuilder.buildExpression<A>(_:)(v73, a6, v68);
  v74 = *(v74 + 8);
  static ChartContentBuilder.buildExpression<A>(_:)(v76, a7, v74);
  v77 = *(v77 + 8);
  v46 = v20;
  v47 = v83;
  static ChartContentBuilder.buildExpression<A>(_:)(v78, v83, v77);
  v48 = *(v36 + 16);
  v49 = v81;
  v50 = a5;
  v67 = a5;
  v48(v81, v42, a5);
  v92[0] = v49;
  v51 = v80;
  v52 = v66;
  (*(v84 + 16))(v80, v34, v66);
  v92[1] = v51;
  v53 = v75;
  v54 = v82;
  v55 = v27;
  (*(v75 + 16))(v82, v27, a7);
  v92[2] = v54;
  v57 = v85;
  v56 = v86;
  (*(v86 + 16))(v85, v46, v47);
  v92[3] = v57;
  v91[0] = v50;
  v91[1] = v52;
  v58 = v52;
  v91[2] = a7;
  v91[3] = v47;
  v87 = v70;
  v88 = v68;
  v89 = v74;
  v90 = v77;
  static ChartContentBuilder.buildBlock<each A>(_:)(v92, 4uLL, v91, v79);
  v59 = *(v56 + 8);
  v86 = v56 + 8;
  v59(v46, v47);
  v60 = *(v53 + 8);
  v61 = a7;
  v60(v55, a7);
  v62 = *(v84 + 8);
  v62(v69, v58);
  v63 = *(v72 + 8);
  v64 = v67;
  v63(v71, v67);
  v59(v85, v83);
  v60(v82, v61);
  v62(v80, v58);
  return (v63)(v81, v64);
}

uint64_t static SeriesContentBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v62 = a8;
  v63 = a1;
  v64 = a6;
  v58 = a5;
  v56 = a4;
  v69 = a3;
  AssociatedConformanceWitness = a2;
  v60 = a9;
  v72 = a14;
  v65 = a15;
  v68 = a16;
  v66 = a10;
  v70 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = &v51 - v18;
  v55 = swift_getAssociatedTypeWitness();
  v19 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v21 = &v51 - v20;
  v53 = swift_getAssociatedTypeWitness();
  v22 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v24 = &v51 - v23;
  v52 = swift_getAssociatedTypeWitness();
  v25 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v27 = &v51 - v26;
  v28 = v64;
  v71 = swift_getAssociatedTypeWitness();
  v29 = *(*(v71 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v71);
  v59 = &v51 - v31;
  v51 = a12;
  (*(v51 + 40))(v28, v51, v30);
  v61 = a13;
  (*(v61 + 40))(a7, v61);
  v77[0] = v27;
  v32 = v62;
  (*(v72 + 40))(v62);
  v77[1] = v24;
  v33 = v65;
  v34 = v66;
  v35 = v56;
  (*(v65 + 40))(v66, v65);
  v77[2] = v21;
  v36 = v68;
  v37 = v54;
  v38 = v58;
  v39 = v70;
  (*(v68 + 40))(v70, v68);
  v77[3] = v37;
  v73[2] = v64;
  v73[3] = a7;
  v40 = v32;
  v73[4] = v32;
  v73[5] = v34;
  v41 = v51;
  v73[6] = v39;
  v73[7] = v51;
  v73[8] = v61;
  v73[9] = v72;
  v73[10] = v33;
  v73[11] = v36;
  v73[12] = v63;
  v73[13] = AssociatedConformanceWitness;
  v73[14] = v69;
  v73[15] = v35;
  v73[16] = v38;
  v76[0] = v52;
  v76[1] = v53;
  v76[2] = v55;
  v76[3] = AssociatedTypeWitness;
  v75[4] = v64;
  v75[5] = a7;
  v75[6] = v40;
  v75[7] = v34;
  v75[8] = v39;
  v69 = type metadata accessor for BuilderTuple();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v61;
  v75[0] = swift_getAssociatedConformanceWitness();
  v43 = v72;
  v75[1] = swift_getAssociatedConformanceWitness();
  v44 = v65;
  v75[2] = swift_getAssociatedConformanceWitness();
  v45 = v68;
  v75[3] = swift_getAssociatedConformanceWitness();
  v46 = *(v42 + 8);
  v74[0] = *(v41 + 8);
  v74[1] = v46;
  v47 = *(v44 + 8);
  v74[2] = *(v43 + 8);
  v74[3] = v47;
  v74[4] = *(v45 + 8);
  v73[18] = v74;
  v48 = v69;
  WitnessTable = swift_getWitnessTable();
  return GroupSeriesContent.init(_:_:content:)(v59, v77, partial apply for closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:), v73, 4uLL, v71, v76, v48, v60, AssociatedConformanceWitness, v75, WitnessTable);
}

uint64_t closure #1 in static SeriesContentBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v94 = a5;
  v93 = a4;
  v91 = a3;
  v89 = a2;
  v95 = a8;
  v92 = a15;
  v90 = a14;
  v88 = a13;
  v99 = a9;
  v102 = a10;
  v106 = *(a10 - 8);
  v17 = *(v106 + 64);
  MEMORY[0x28223BE20](a1);
  v104 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = &v77 - v20;
  v105 = *(v21 - 8);
  v22 = *(v105 + 64);
  MEMORY[0x28223BE20](v23);
  v100 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  v29 = v28;
  v103 = *(v28 - 8);
  v30 = *(v103 + 64);
  MEMORY[0x28223BE20](v31);
  v98 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v77 - v34;
  v78 = v36;
  v101 = *(v36 - 8);
  v37 = *(v101 + 64);
  MEMORY[0x28223BE20](v38);
  v96 = &v77 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v77 - v41;
  v86 = *(v43 - 8);
  v44 = v86;
  v45 = *(v86 + 64);
  MEMORY[0x28223BE20](v46);
  v97 = &v77 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v77 - v49;
  v84 = *(v51 + 8);
  v85 = &v77 - v49;
  static ChartContentBuilder.buildExpression<A>(_:)(v52, v53, v84);
  v82 = *(a12 + 8);
  v83 = v42;
  static ChartContentBuilder.buildExpression<A>(_:)(v89, a7, v82);
  v89 = *(v88 + 8);
  v81 = v35;
  v54 = v29;
  static ChartContentBuilder.buildExpression<A>(_:)(v91, v29, v89);
  v91 = *(v90 + 8);
  v79 = v27;
  v55 = v99;
  static ChartContentBuilder.buildExpression<A>(_:)(v93, v99, v91);
  v93 = *(v92 + 8);
  v56 = v87;
  v57 = v102;
  static ChartContentBuilder.buildExpression<A>(_:)(v94, v102, v93);
  v58 = *(v44 + 16);
  v59 = v97;
  v60 = v50;
  v61 = a6;
  v80 = a6;
  v58(v97, v60, a6);
  v113[0] = v59;
  v62 = v96;
  v63 = v78;
  (*(v101 + 16))(v96, v42, v78);
  v113[1] = v62;
  v64 = v98;
  v65 = v54;
  (*(v103 + 16))(v98, v35, v54);
  v113[2] = v64;
  v66 = v105;
  v67 = v100;
  (*(v105 + 16))(v100, v27, v55);
  v113[3] = v67;
  v68 = v106;
  v69 = v104;
  (*(v106 + 16))(v104, v56, v57);
  v113[4] = v69;
  v112[0] = v61;
  v112[1] = v63;
  v112[2] = v65;
  v112[3] = v55;
  v77 = v65;
  v112[4] = v57;
  v107 = v84;
  v108 = v82;
  v109 = v89;
  v110 = v91;
  v111 = v93;
  static ChartContentBuilder.buildBlock<each A>(_:)(v113, 5uLL, v112, v95);
  v70 = *(v68 + 8);
  v106 = v68 + 8;
  v70(v56, v57);
  v71 = *(v66 + 8);
  v105 = v66 + 8;
  v71(v79, v55);
  v72 = *(v103 + 8);
  v72(v81, v65);
  v73 = *(v101 + 8);
  v73(v83, v63);
  v74 = *(v86 + 8);
  v75 = v80;
  v74(v85, v80);
  v70(v104, v102);
  v71(v100, v99);
  v72(v98, v77);
  v73(v96, v63);
  return (v74)(v97, v75);
}

uint64_t static SeriesContentBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t static SeriesContentBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for ConditionalSeriesContent.Storage();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(*(a2 - 8) + 16))(&v19 - v15, a1, a2, v14);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v17 = type metadata accessor for ConditionalSeriesContent.Storage();
  return (*(*(v17 - 8) + 32))(a6, v16, v17);
}

uint64_t static SeriesContentBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for ConditionalSeriesContent.Storage();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(*(a3 - 8) + 16))(&v19 - v15, a1, a3, v14);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v17 = type metadata accessor for ConditionalSeriesContent.Storage();
  return (*(*(v17 - 8) + 32))(a6, v16, v17);
}

uint64_t ConditionalSeries.xScale.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = v9;
  *(&v15 + 1) = v3;
  v23[0] = *(v14 + 32);
  v23[1] = v15;
  v23[2] = v23[0];
  v16 = type metadata accessor for ConditionalSeries.Storage();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v23 - v19;
  (*(v21 + 16))(v23 - v19, v2, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v20, v3);
    (*(*(&v23[0] + 1) + 32))(v3);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v20, v9);
    (*(*&v23[0] + 32))(v9);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t ConditionalSeries.yScale.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = v9;
  *(&v15 + 1) = v3;
  v24[0] = *(v14 + 32);
  v24[1] = v15;
  v24[2] = v24[0];
  v16 = type metadata accessor for ConditionalSeries.Storage();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v24 - v19;
  (*(v21 + 16))(v24 - v19, v2, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v20, v3);
    v22 = (*(*(&v24[0] + 1) + 40))(v3);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v20, v9);
    v22 = (*(*&v24[0] + 40))(v9);
    (*(v10 + 8))(v13, v9);
  }

  return v22;
}

uint64_t ConditionalSeries.aggregation.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = v9;
  *(&v15 + 1) = v3;
  v23[0] = *(v14 + 32);
  v23[1] = v15;
  v23[2] = v23[0];
  v16 = type metadata accessor for ConditionalSeries.Storage();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v23 - v19;
  (*(v21 + 16))(v23 - v19, v2, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v20, v3);
    (*(*(&v23[0] + 1) + 48))(v3);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v20, v9);
    (*(*&v23[0] + 48))(v9);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t ConditionalSeries.unit.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = v9;
  *(&v15 + 1) = v3;
  v23[0] = *(v14 + 32);
  v23[1] = v15;
  v23[2] = v23[0];
  v16 = type metadata accessor for ConditionalSeries.Storage();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v23 - v19;
  (*(v21 + 16))(v23 - v19, v2, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v20, v3);
    (*(*(&v23[0] + 1) + 56))(v3);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v20, v9);
    (*(*&v23[0] + 56))(v9);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t ConditionalSeriesContent.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = *(a1 + 24);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v42 = *(v6 + 32);
  v8 = v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(&v42 + 1);
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v39 = v11;
  *&v43 = AssociatedTypeWitness;
  *(&v43 + 1) = v11;
  v40 = AssociatedConformanceWitness;
  *&v44 = AssociatedConformanceWitness;
  *(&v44 + 1) = v13;
  v37 = v13;
  v35 = type metadata accessor for ConditionalSeries.Storage();
  v14 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v16 = &v34 - v15;
  v17 = *(v7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = v7;
  *(&v22 + 1) = v2;
  v43 = v22;
  v44 = v42;
  v23 = type metadata accessor for ConditionalSeriesContent.Storage();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v34 - v26;
  (*(v28 + 16))(&v34 - v26, v36, v23, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v34;
    (*(v34 + 32))(v5, v27, v2);
    (*(v10 + 40))(v2, v10);
    (*(v29 + 8))(v5, v2);
  }

  else
  {
    (*(v17 + 32))(v21, v27, v7);
    (*(v8 + 40))(v7, v8);
    (*(v17 + 8))(v21, v7);
  }

  swift_storeEnumTagMultiPayload();
  v30 = swift_checkMetadataState();
  v31 = swift_checkMetadataState();
  *&v43 = v30;
  *(&v43 + 1) = v31;
  *&v44 = v40;
  *(&v44 + 1) = v37;
  v32 = type metadata accessor for ConditionalSeries.Storage();
  return (*(*(v32 - 8) + 32))(v41, v16, v32);
}

uint64_t ConditionalSeriesContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v2 = *(a1 + 24);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - v6;
  MEMORY[0x28223BE20](v7);
  v45 = &v45 - v8;
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  *&v22 = v10;
  *(&v22 + 1) = v2;
  v53 = *(v21 + 32);
  v56 = v22;
  v57 = v53;
  v23 = type metadata accessor for ConditionalSeriesContent.Storage();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v28 = type metadata accessor for BuilderConditional();
  v29 = *(v28 - 8);
  v50 = v28;
  v51 = v29;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v45 - v32;
  (*(v24 + 16))(v27, v49, v23, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v48;
    v35 = v45;
    (*(v48 + 32))(v45, v27, v2);
    v36 = *(*(&v53 + 1) + 8);
    v37 = v46;
    static ChartContentBuilder.buildExpression<A>(_:)(v35, v2, v36);
    v38 = v47;
    static ChartContentBuilder.buildExpression<A>(_:)(v37, v2, v36);
    v39 = *(v53 + 8);
    static ChartContentBuilder.buildEither<A, B>(second:)(v38, v10, v2);
    v40 = *(v34 + 8);
    v40(v38, v2);
    v40(v37, v2);
    v40(v35, v2);
  }

  else
  {
    (*(v11 + 32))(v20, v27, v10);
    v39 = *(v53 + 8);
    static ChartContentBuilder.buildExpression<A>(_:)(v20, v10, v39);
    static ChartContentBuilder.buildExpression<A>(_:)(v17, v10, v39);
    v36 = *(*(&v53 + 1) + 8);
    static ChartContentBuilder.buildEither<A, B>(first:)(v14, v10);
    v41 = *(v11 + 8);
    v41(v14, v10);
    v41(v17, v10);
    v41(v20, v10);
  }

  v54 = v39;
  v55 = v36;
  v42 = v50;
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v33, v42, WitnessTable);
  return (*(v51 + 8))(v33, v42);
}

uint64_t GroupSeries.computeXScale(_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, char *a3@<X8>)
{
  v6 = a2[5];
  v7 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v128 = *(TupleTypeMetadata2 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v98 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v90 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v103 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = &v90 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = AssociatedTypeWitness;
  v101 = AssociatedConformanceWitness;
  v20 = type metadata accessor for ClosedRange();
  v115 = type metadata accessor for Optional();
  v21 = *(v115 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v115);
  v96 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v110 = &v90 - v25;
  MEMORY[0x28223BE20](v26);
  v111 = (&v90 - v27);
  v112 = v20;
  v28 = *(v20 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v100 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v109 = &v90 - v34;
  v35 = *(v6 + 32);
  v118 = a3;
  result = v35(v7, v6, v33);
  v37 = a2[2];
  if (!v37)
  {
    return result;
  }

  v38 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
  v39 = (a2[6] & 0xFFFFFFFFFFFFFFFELL);
  v113 = (v28 + 56);
  v114 = (v28 + 32);
  v107 = (v21 + 16);
  v106 = (v28 + 48);
  v95 = (v28 + 8);
  v108 = (v21 + 8);
  v94 = (v13 + 32);
  v93 = (v128 + 16);
  v92 = (v13 + 8);
  v91 = (v128 + 32);
  v90 = (v21 + 32);
  while (1)
  {
    v123 = v38;
    v124 = v37;
    v121 = &v90;
    v122 = v39;
    v40 = *v38;
    v41 = *v39;
    v42 = *(*(*v38 - 8) + 64);
    v43 = MEMORY[0x28223BE20](result);
    v45 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v125 = a1;
    v46 = *a1;
    v127 = v47;
    (*(v47 + 16))(v45, v46, v40, v43);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v48 = type metadata accessor for ClosedRange();
    v120 = &v90;
    v128 = *(v48 - 8);
    v49 = *(v128 + 64);
    MEMORY[0x28223BE20](v48);
    v119 = v50;
    v51 = &v90 - v50;
    v52 = type metadata accessor for Optional();
    v126 = &v90;
    v53 = *(v52 - 8);
    v54 = *(v53 + 64);
    v55 = MEMORY[0x28223BE20](v52);
    v57 = &v90 - v56;
    v58 = *(v41 + 32);
    v59 = v41;
    v60 = v128;
    v58(v40, v59, v55);
    if ((*(v60 + 48))(v57, 1, v48) != 1)
    {
      break;
    }

    (*(v127 + 8))(v45, v40);
    result = (*(v53 + 8))(v57, v52);
LABEL_4:
    a1 = v125 + 1;
    v39 = v122 + 1;
    v38 = v123 + 1;
    v37 = v124 - 1;
    if (v124 == 1)
    {
      return result;
    }
  }

  v116 = v45;
  v117 = v40;
  v61 = (*(v60 + 32))(v51, v57, v48);
  v62 = MEMORY[0x28223BE20](v61);
  v63 = *(v60 + 16);
  v126 = v51;
  v63(&v90 - v119, v51, v48, v62);
  v64 = v111;
  v65 = v112;
  v66 = v48;
  v67 = swift_dynamicCast();
  v68 = *v113;
  if (!v67)
  {
    goto LABEL_13;
  }

  v68(v64, 0, 1, v65);
  v69 = *v114;
  v70 = v109;
  (*v114)(v109, v64, v65);
  v71 = v110;
  v72 = v115;
  (*v107)(v110, v118, v115);
  v73 = (*v106)(v71, 1, v65);
  v74 = v117;
  if (v73 == 1)
  {
    (*(v128 + 8))(v126, v66);
    (*(v127 + 8))(v116, v74);
    v75 = *v108;
    v76 = v118;
    (*v108)(v118, v72);
    v75(v71, v72);
    v69(v76, v70, v65);
    result = (v68)(v76, 0, 1, v65);
    goto LABEL_4;
  }

  v105 = v68;
  v77 = v100;
  v69(v100, v71, v65);
  v78 = v70;
  v79 = v102;
  v68 = v72;
  v80 = v104;
  min<A>(_:_:)();
  v81 = *(v65 + 36);
  v82 = v103;
  max<A>(_:_:)();
  LODWORD(v119) = dispatch thunk of static Comparable.<= infix(_:_:)();
  v64 = *v95;
  (*v95)(v77, v65);
  v64(v78, v65);
  (*(v128 + 8))(v126, v66);
  (*(v127 + 8))(v116, v117);
  (*v108)(v118, v68);
  if (v119)
  {
    v83 = *v94;
    v84 = v79;
    v85 = v97;
    (*v94)(v97, v84, v80);
    v86 = TupleTypeMetadata2;
    v83(&v85[*(TupleTypeMetadata2 + 48)], v82, v80);
    v87 = v98;
    (*v93)(v98, v85, v86);
    v128 = *(v86 + 48);
    v88 = v96;
    v83(v96, v87, v80);
    v89 = *v92;
    (*v92)(&v87[v128], v80);
    (*v91)(v87, v85, v86);
    v83(&v88[*(v65 + 36)], &v87[*(v86 + 48)], v80);
    v89(v87, v80);
    v105(v88, 0, 1, v65);
    result = (*v90)(v118, v88, v115);
    goto LABEL_4;
  }

  __break(1u);
LABEL_13:
  v68(v64, 1, 1, v65);
  (*v108)(v64, v115);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t GroupSeries.yScale.getter(uint64_t TupleTypeMetadata)
{
  v2 = v1;
  v3 = TupleTypeMetadata;
  v4 = *(TupleTypeMetadata + 16);
  v5 = 8 * v4;
  if (v4 == 1)
  {
    v6 = *(*(TupleTypeMetadata + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v7 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(v3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v19 = *(v6 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v52;
  MEMORY[0x28223BE20](v23);
  v25 = v52 - v24;
  v55 = v52;
  v26 = *(*(*(v3 + 24) - 8) + 64);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v32;
  v54 = v31;
  v33 = (*(v32 + 16))(v30, v2, v28);
  v52[1] = v52;
  v34 = MEMORY[0x28223BE20](v33);
  v35 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v3 + 60);
  v57 = v19;
  v37 = *(v19 + 16);
  v60 = v6;
  v37(v22, v2 + v36, v6, v34);
  v38 = *(v3 + 32);
  v58 = v3;
  v59 = v38;
  if (v4)
  {
    v39 = (v59 & 0xFFFFFFFFFFFFFFFELL);
    v40 = (v60 + 32);
    v41 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = v4;
    do
    {
      if (v4 == 1)
      {
        v43 = 0;
        v44 = v25;
      }

      else
      {
        v43 = *v40;
        v44 = &v25[v43];
      }

      v45 = *v39++;
      (*(*(v45 - 8) + 16))(v44, &v22[v43]);
      *v41++ = v44;
      v40 += 4;
      --v42;
    }

    while (v42);
  }

  v46 = v4;
  v47 = v54;
  v48 = specialized GroupSeries.computeYScale(_:_:)(v30, v35, v46, v54, v59, *(v58 + 40), *(v58 + 48));
  (*(v53 + 8))(v30, v47);
  v49 = *(v57 + 8);
  v50 = v60;
  v49(v25, v60);
  v49(v22, v50);
  return v48;
}

uint64_t GroupSeries.computeAggregation(_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a3;
  v41 = type metadata accessor for HealthChartsData.Aggregation();
  v5 = *(v41 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = &v34 - v11;
  _s16HealthChartsCore0aB4UnitVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.Aggregation>, MEMORY[0x277D10228], MEMORY[0x277D84560]);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v39 = *(v5 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25145AB10;
  v14 = *(a2[5] + 48);
  v15 = a2[3];
  v40 = v12;
  v16 = v14(v15);
  v17 = a2[2];
  v35 = v6;
  if (v17)
  {
    v18 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v19 = (a2[6] & 0xFFFFFFFFFFFFFFFELL);
    v37 = (v6 + 32);
    v38 = v9;
    do
    {
      v42 = &v34;
      v20 = *v18;
      v21 = *v19;
      v22 = *(*v18 - 8);
      v23 = *(v22 + 64);
      v24 = MEMORY[0x28223BE20](v16);
      v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = a1;
      (*(v22 + 16))(v26, *a1, v20, v24);
      (*(v21 + 48))(v20, v21);
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      v29 = v13;
      if (v28 >= v27 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v13);
      }

      (*(v22 + 8))(v26, v20);
      v13 = v29;
      *(v29 + 16) = v28 + 1;
      v16 = (*v37)(v29 + v40 + v28 * v39, v38, v41);
      a1 = v43 + 1;
      ++v19;
      ++v18;
      --v17;
    }

    while (v17);
  }

  v44 = v13;

  specialized MutableCollection<>.sort(by:)(implicit closure #1 in GroupSeries.computeAggregation(_:_:), 0);

  v30 = v35;
  if (*(v44 + 16))
  {
    v31 = v41;
    v32 = v34;
    (*(v35 + 16))(v34, v44 + v40, v41);

    return (*(v30 + 32))(v36, v32, v31);
  }

  else
  {

    return (*(v30 + 104))(v36, *MEMORY[0x277D10200], v41);
  }
}

uint64_t GroupSeries.xScale.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = TupleTypeMetadata;
  v5 = *(TupleTypeMetadata + 16);
  v6 = 8 * v5;
  v57 = a2;
  v55 = a3;
  if (v5 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(v4 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v20 = *(v7 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v49;
  MEMORY[0x28223BE20](v24);
  v26 = v49 - v25;
  v52 = v49;
  v27 = *(*(*(v4 + 24) - 8) + 64);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v33;
  v51 = v32;
  v34 = (*(v33 + 16))(v31, v3, v29);
  v49[1] = v49;
  v35 = MEMORY[0x28223BE20](v34);
  v36 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v7;
  v59 = v4;
  v37 = *(v4 + 60);
  v54 = v20;
  v38 = *(v20 + 16);
  v56 = v3;
  v38(v23, v3 + v37, v7, v35);
  if (v5)
  {
    v39 = (*(v59 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v40 = (v58 + 32);
    v41 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = v5;
    do
    {
      if (v5 == 1)
      {
        v43 = 0;
        v44 = v26;
      }

      else
      {
        v43 = *v40;
        v44 = &v26[v43];
      }

      v45 = *v39++;
      (*(*(v45 - 8) + 16))(v44, &v23[v43]);
      *v41++ = v44;
      v40 += 4;
      --v42;
    }

    while (v42);
  }

  v57(v31, v36, v59);
  (*(v50 + 8))(v31, v51);
  v46 = *(v54 + 8);
  v47 = v58;
  v46(v26, v58);
  return (v46)(v23, v47);
}

uint64_t GroupSeries.computeUnit(_:_:)@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a3;
  v61 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for HealthChartsUnit();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v55 = &v50 - v15;
  _s16HealthChartsCore0aB4UnitVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsUnit?>, type metadata accessor for HealthChartsUnit?, MEMORY[0x277D84560]);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v60 = *(v9 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25145AB10;
  v18 = *(a2[5] + 56);
  v19 = a2[3];
  v57 = v16;
  v20 = v18(v19);
  v21 = a2[2];
  if (v21)
  {
    v22 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v23 = (a2[6] & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v59 = &v50;
      v24 = *v22;
      v25 = *v23;
      v26 = *(*v22 - 8);
      v27 = *(v26 + 64);
      v28 = MEMORY[0x28223BE20](v20);
      v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v30, *a1, v24, v28);
      (*(v25 + 56))(v24, v25);
      v32 = *(v17 + 16);
      v31 = *(v17 + 24);
      v33 = v17;
      if (v32 >= v31 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v17);
      }

      (*(v26 + 8))(v30, v24);
      *(v33 + 16) = v32 + 1;
      v17 = v33;
      v20 = outlined init with take of HealthChartsUnit?(v58, v33 + v57 + v32 * v60);
      ++a1;
      ++v23;
      ++v22;
      --v21;
    }

    while (v21);
  }

  v34 = *(v17 + 16);
  if (v34)
  {
    v59 = v17;
    v35 = v17 + v57;
    v37 = v51;
    v36 = v52;
    v38 = (v51 + 48);
    v39 = (v51 + 32);
    v40 = MEMORY[0x277D84F90];
    v41 = v54;
    do
    {
      v42 = v55;
      outlined init with copy of HealthChartsUnit?(v35, v55);
      outlined init with take of HealthChartsUnit?(v42, v41);
      if ((*v38)(v41, 1, v36) == 1)
      {
        outlined destroy of HealthChartsUnit?(v41);
      }

      else
      {
        v43 = *v39;
        (*v39)(v56, v41, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
        }

        v45 = *(v40 + 2);
        v44 = *(v40 + 3);
        if (v45 >= v44 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v40);
        }

        *(v40 + 2) = v45 + 1;
        v43(&v40[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45], v56, v36);
        v41 = v54;
      }

      v35 += v60;
      --v34;
    }

    while (v34);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
    v37 = v51;
    v36 = v52;
  }

  v46 = v53;
  if (*(v40 + 2))
  {
    (*(v37 + 16))(v53, &v40[(*(v37 + 80) + 32) & ~*(v37 + 80)], v36);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  result = (*(v37 + 56))(v46, v47, 1, v36);
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GroupSeries.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = a3;
  v57 = a2;
  v55 = a8;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v12)
    {
      v17 = 0;
      v18 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 < 4)
      {
        goto LABEL_9;
      }

      if (&v16[-v18] < 0x20)
      {
        goto LABEL_9;
      }

      v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = (v18 + 16);
      v20 = v16 + 16;
      v21 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v17 != v12)
      {
LABEL_9:
        v23 = v12 - v17;
        v24 = 8 * v17;
        v25 = &v16[8 * v17];
        v26 = (v18 + v24);
        do
        {
          v27 = *v26++;
          *v25 = v27;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v58 = TupleTypeMetadata;
  v51 = *(TupleTypeMetadata - 8);
  v28 = *(v51 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v12;
  v60 = a4;
  v56 = a5;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v31 = type metadata accessor for GroupSeries();
  v52 = &v50;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v50 - v35;
  v37 = *(a4 - 8);
  v38 = *(v37 + 16);
  v53 = a1;
  v54 = a4;
  v38(&v50 - v35, a1, a4, v34);
  if (v12)
  {
    v39 = v57;
    v40 = (v56 & 0xFFFFFFFFFFFFFFFELL);
    v41 = (v58 + 32);
    v42 = v12;
    do
    {
      if (v12 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v41;
      }

      v45 = *v40++;
      v44 = v45;
      v46 = *v39++;
      (*(*(v44 - 8) + 16))(&v30[v43], v46);
      v41 += 4;
      --v42;
    }

    while (v42);
  }

  (*(v37 + 8))(v53, v54);
  (*(v51 + 32))(&v36[*(v31 + 60)], v30, v58);
  result = (*(v32 + 32))(v55, v36, v31);
  if (v12)
  {
    v48 = (v56 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v49 = v57 - 1;
    do
    {
      result = (*(*(*(v48 + 8 * v12) - 8) + 8))(v49[v12]);
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t GroupSeriesContent.body.getter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 64);
  static ChartContentBuilder.buildExpression<A>(_:)(v1 + *(v5 + 76), v2, v8);
  static ChartContentBuilder.buildExpression<A>(_:)(v7, v2, v8);
  return (*(v3 + 8))(v7, v2);
}

uint64_t protocol witness for SeriesContent.data.getter in conformance GroupSeriesContent<A, Pack{repeat B}, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 48);
  v4 = type metadata accessor for GroupSeries();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t Optional<A>.wrappedSeries.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t Optional<A>.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(v10, v9);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v13 = type metadata accessor for ClosedRange();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(a2 + 32))(v11, a2);
    return (*(v12 + 8))(v9, v11);
  }
}

uint64_t Optional<A>.yScale.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(v8, v7);
  v9 = *(v3 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a2 + 40))(v9, a2);
    v4 = v10;
    v3 = v9;
  }

  (*(v4 + 8))(v7, v3);
  return v11;
}

uint64_t Optional<A>.aggregation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HealthChartsData.Aggregation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(a1, v8);
  v14 = *(a1 + 16);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    (*(v5 + 8))(v8, a1);
    return (*(v10 + 104))(v18, *MEMORY[0x277D10200], v9);
  }

  else
  {
    (*(a2 + 48))(v14, a2);
    (*(v15 + 8))(v8, v14);
    return (*(v10 + 32))(v18, v13, v9);
  }
}

uint64_t Optional<A>.unit.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Optional<A>.wrappedSeries.getter(v10, v9);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    v13 = type metadata accessor for HealthChartsUnit();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(a2 + 56))(v11, a2);
    return (*(v12 + 8))(v9, v11);
  }
}

uint64_t Optional<A>.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  v17 = 1;
  if ((*(v6 + 48))(v14, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v14, v5);
    (*(a2 + 40))(v5, a2);
    (*(v6 + 8))(v9, v5);
    v17 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v17, 1, AssociatedTypeWitness);
}

uint64_t associated type witness table accessor for SeriesData.T : Plottable in <A> A?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for SeriesData.T : Comparable in <A> A?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for SeriesContent.S : SeriesData in <A> A?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2514274BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderTuple();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(v3 + 8);
  v6 = *(v4 + 8);
  swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent();
  return swift_getWitnessTable();
}

uint64_t sub_251427638(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderTuple();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(v3 + 8);
  v9 = *(v6 + 8);
  v10 = *(v5 + 8);
  swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent();
  return swift_getWitnessTable();
}

uint64_t sub_2514277F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v6 = a1[6];
  v9 = a1[4];
  v8 = a1[7];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderTuple();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(v9 + 8);
  v11 = *(v5 + 8);
  v12 = *(v6 + 8);
  v13 = *(v8 + 8);
  swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent();
  return swift_getWitnessTable();
}

uint64_t sub_251427A14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v11 = a1[4];
  v5 = a1[6];
  v9 = a1[5];
  v6 = a1[9];
  v10 = a1[8];
  v8 = a1[7];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BuilderTuple();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(v9 + 8);
  v13 = *(v5 + 8);
  v14 = *(v8 + 8);
  v15 = *(v10 + 8);
  v16 = *(v6 + 8);
  swift_getWitnessTable();
  type metadata accessor for GroupSeriesContent();
  return swift_getWitnessTable();
}

uint64_t sub_251427C90(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ConditionalSeriesContent();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for GroupSeriesContent(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 48);
  result = type metadata accessor for GroupSeries();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 40);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251427DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 48);
  v6 = type metadata accessor for GroupSeries();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  else
  {
    return (*(*(*(a3 + 40) - 8) + 48))(a1 + *(a3 + 76), a2);
  }
}

uint64_t sub_251427EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = *(a4 + 16);
  v12 = *(a4 + 24);
  v13 = *(a4 + 48);
  v8 = type metadata accessor for GroupSeries();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, v8);
  }

  else
  {
    return (*(*(*(a4 + 40) - 8) + 56))(a1 + *(a4 + 76), a2, a2);
  }
}

uint64_t type metadata completion function for GroupSeries(void *a1)
{
  v2 = a1[3];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v22[14] = 0;
    v23 = result;
    if (a1[2] == 1)
    {
      v5 = *(a1[4] & 0xFFFFFFFFFFFFFFFELL);
      result = swift_checkMetadataState();
      if (v6 > 0x3F)
      {
        return result;
      }

LABEL_14:
      v22[15] = 0;
      v24 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }

    MEMORY[0x28223BE20](result);
    v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (v7)
    {
      v10 = 0;
      v11 = a1[4] & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_11;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_11;
      }

      v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v7 != v10)
      {
LABEL_11:
        v16 = v7 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18++ = v20;
          --v16;
        }

        while (v16);
      }
    }

    result = swift_getTupleTypeMetadata();
    if (v21 <= 0x3F)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_251428140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 84) == a2)
  {
    v6 = *(v5 + 48);

    return v6();
  }

  else
  {
    v28[4] = v3;
    v28[5] = v4;
    v8 = a2;
    if (*(a3 + 16) == 1)
    {
      v9 = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x28223BE20](a1);
      v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a3 = v26;
      v9 = TupleTypeMetadata;
      a2 = v8;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 60), a2, v9);
  }
}

uint64_t sub_251428300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    if (*(a4 + 16) == 1)
    {
      v9 = *(*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x28223BE20](a1);
      v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a4 = v26;
      v9 = TupleTypeMetadata;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 56))(a1 + *(a4 + 60), a2, a2, v9);
  }
}

uint64_t associated type witness table accessor for SeriesData.T : Plottable in GroupSeries<A, Pack{repeat B}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 24);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for SeriesData.T : Comparable in GroupSeries<A, Pack{repeat B}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 24);
  return swift_getAssociatedConformanceWitness();
}