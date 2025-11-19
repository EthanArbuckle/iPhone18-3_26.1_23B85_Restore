uint64_t associated type witness table accessor for ChartContent.Body : ChartContent in ConditionalSeriesContent<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t instantiation function for generic protocol witness table for ConditionalSeriesContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for SeriesData.T : Plottable in ConditionalSeries<A, B>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for SeriesData.T : Comparable in ConditionalSeries<A, B>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t instantiation function for generic protocol witness table for GroupSeriesContent<A, Pack{repeat B}, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void _s16HealthChartsCore0aB4UnitVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of HealthChartsUnit?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsUnit?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized GroupSeries.computeYScale(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a6 + 40))(a4, a6);
  if (a3)
  {
    v14 = (a5 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v16 = *&result;
    v17 = v12;
    v18 = v13;
    do
    {
      v37 = v16;
      v39 = a3;
      v36 = &v36;
      v21 = *v14;
      v22 = *v15;
      v23 = *(*v14 - 8);
      v24 = *(v23 + 64);
      MEMORY[0x28223BE20](result);
      v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = a2;
      (*(v23 + 16))(v26, *a2, v21);
      v27 = COERCE_DOUBLE((*(v22 + 40))(v21, v22));
      v29 = v28;
      v31 = v30;
      (*(v23 + 8))(v26, v21);
      if (v31)
      {
        result = *&v37;
      }

      else
      {
        result = *&v27;
      }

      if (v31)
      {
        v32 = v17;
      }

      else
      {
        v32 = v29;
      }

      v33 = v31 & v18;
      if (v31)
      {
        v20 = v38;
        v19 = v39;
      }

      else
      {
        v20 = v38;
        v19 = v39;
        if ((v18 & 1) == 0)
        {
          v34 = v29;
          v35 = v27;
          if (v27 >= v37)
          {
            v35 = v37;
          }

          if (v17 > v29)
          {
            v34 = v17;
          }

          if (v35 > v34)
          {
            __break(1u);
            return result;
          }

          v33 = 0;
          result = *&v35;
          v32 = v34;
        }
      }

      a2 = v20 + 1;
      ++v15;
      ++v14;
      v16 = *&result;
      v17 = v32;
      v18 = v33;
      a3 = v19 - 1;
    }

    while (a3);
  }

  return result;
}

uint64_t type metadata completion function for ConditionalSeriesContent.Storage(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ConditionalSeriesContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *))
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  result = a4(319, v7);
  if (v6 <= 0x3F)
  {
    v8 = 0;
    *&v7[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConditionalSeriesContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for ConditionalSeriesContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_251428D4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for BuilderConditional();
  v6 = *(v3 + 8);
  v7 = *(v4 + 8);
  return swift_getWitnessTable();
}

uint64_t static AxisDomain<>.automaticInterval(viewSpan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for DateDomain(0);
  return outlined init with copy of DateDomain.ViewDateSpan(a1, a2 + *(v5 + 20), type metadata accessor for DateDomain.ViewDateSpan);
}

uint64_t one-time initialization function for defaultDomain()
{
  v0 = type metadata accessor for DateDomain(0);
  __swift_allocate_value_buffer(v0, static DateDomain.defaultDomain);
  v1 = __swift_project_value_buffer(v0, static DateDomain.defaultDomain);
  *(v1 + *(v0 + 20)) = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t DateDomain.debugDescription.getter()
{
  v1 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0x2865746164;
  v8[1] = 0xE500000000000000;
  v5 = type metadata accessor for DateDomain(0);
  outlined init with copy of DateDomain.ViewDateSpan(v0 + *(v5 + 20), v4, type metadata accessor for DateDomain.ViewDateSpan);
  v6 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v6);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v8[0];
}

Swift::Int DateDomain.ViewSpanAlignment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253076640](v1);
  return Hasher._finalize()();
}

uint64_t DateDomain.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v40 = a1;
  v41 = a2;
  v45 = a3;
  type metadata accessor for (lower: Date, upper: Date)();
  v44 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Date();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v3, v20, type metadata accessor for DateDomain.IntervalAggregation?);
  v26 = *(v22 + 48);
  if (v26(v20, 1, v21) == 1)
  {
    DateDomain.intervalAggregation(for:with:)(v40, v41, v25);
    if (v26(v20, 1, v21) != 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v20, type metadata accessor for DateDomain.IntervalAggregation?);
    }
  }

  else
  {
    outlined init with take of (lower: Date, upper: Date)(v20, v25, type metadata accessor for DateDomain.IntervalAggregation);
  }

  DateInterval.start.getter();
  DateInterval.end.getter();
  _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v27 = v10;
  v28 = dispatch thunk of static Comparable.<= infix(_:_:)();
  result = _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v25, type metadata accessor for DateDomain.IntervalAggregation);
  if (v28)
  {
    v30 = v43;
    v31 = *(v43 + 32);
    v31(v9, v16, v10);
    v32 = v44;
    v31(&v9[*(v44 + 48)], v13, v10);
    v33 = v42;
    outlined init with copy of DateDomain.ViewDateSpan(v9, v42, type metadata accessor for (lower: Date, upper: Date));
    v41 = *(v32 + 48);
    type metadata accessor for AxisScale<Date>(0, &lazy cache variable for type metadata for AxisScale<Date>, type metadata accessor for AxisScale);
    v35 = v45;
    v36 = &v45[*(v34 + 36)];
    v31(v36, v33, v27);
    v37 = *(v30 + 8);
    v37(v33 + v41, v27);
    outlined init with take of (lower: Date, upper: Date)(v9, v33, type metadata accessor for (lower: Date, upper: Date));
    v38 = *(v32 + 48);
    type metadata accessor for ClosedRange<Date>();
    v31(&v36[*(v39 + 36)], (v33 + v38), v27);
    result = (v37)(v33, v27);
    *v35 = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of DateDomain.ViewDateSpan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DateDomain.intervalAggregation(for:with:)@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v57 = a1;
  v58 = a3;
  v48 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v47 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v47 - v20);
  v22 = type metadata accessor for DateInterval();
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>?(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v35 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v57, v29, type metadata accessor for ClosedRange<Date>?);
  v36 = (*(v32 + 48))(v29, 1, v31);
  v56 = v14;
  if (v36 == 1)
  {
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v29, type metadata accessor for ClosedRange<Date>?);
    v37 = v60;
LABEL_3:
    static Calendar.current.getter();
    Date.init()();
    static DateDomain.ViewDateSpan.defaultIntervalAndAggregation(calendar:onDate:)(v8, v21, v58);
    (*(v15 + 8))(v21, v56);
    return (*(v59 + 8))(v8, v37);
  }

  outlined init with take of (lower: Date, upper: Date)(v29, v35, type metadata accessor for ClosedRange<Date>);
  v47 = v15;
  v39 = *(v15 + 16);
  v39(v21, v35, v14);
  v39(v18, &v35[*(v31 + 36)], v14);
  DateInterval.init(start:end:)();
  v40 = *(type metadata accessor for DateDomain(0) + 20);
  static Calendar.current.getter();
  v41 = v53;
  v42 = v55;
  DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v8, v25, v55, v53);
  v43 = *(v59 + 8);
  v43(v8, v60);
  v44 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v45 = *(v44 - 8);
  v57 = *(v45 + 48);
  v54 = v45 + 48;
  if (v57(v41, 1, v44) == 1)
  {
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v41, type metadata accessor for DateDomain.IntervalAggregation?);
    v46 = v50;
    swift_storeEnumTagMultiPayload();
    static Calendar.current.getter();
    v41 = v49;
    DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v8, v25, v42, v49);
    v37 = v60;
    v43(v8, v60);
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v46, type metadata accessor for DateDomain.ViewDateSpan);
    (*(v51 + 8))(v25, v52);
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v35, type metadata accessor for ClosedRange<Date>);
    if (v57(v41, 1, v44) == 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v41, type metadata accessor for DateDomain.IntervalAggregation?);
      v15 = v47;
      goto LABEL_3;
    }
  }

  else
  {
    (*(v51 + 8))(v25, v52);
    _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v35, type metadata accessor for ClosedRange<Date>);
  }

  return outlined init with take of (lower: Date, upper: Date)(v41, v58, type metadata accessor for DateDomain.IntervalAggregation);
}

void type metadata accessor for AxisScale<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DateDomain.axisContent(seriesScale:seriesUnit:finestAggregation:)@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v3, v10, type metadata accessor for DateDomain.IntervalAggregation?);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    DateDomain.intervalAggregation(for:with:)(a1, a2, v15);
    if (v16(v10, 1, v11) != 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v10, type metadata accessor for DateDomain.IntervalAggregation?);
    }
  }

  else
  {
    outlined init with take of (lower: Date, upper: Date)(v10, v15, type metadata accessor for DateDomain.IntervalAggregation);
  }

  v17 = *(v11 + 20);
  v18 = type metadata accessor for DateDomain(0);
  HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)(v3 + *(v18 + 20), a3);
  return _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v15, type metadata accessor for DateDomain.IntervalAggregation);
}

uint64_t protocol witness for AxisDomain.axisContent(seriesScale:seriesUnit:finestAggregation:) in conformance DateDomain@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for DateDomain.IntervalAggregation?(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v4, v12, type metadata accessor for DateDomain.IntervalAggregation?);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    DateDomain.intervalAggregation(for:with:)(a1, a2, v17);
    if (v18(v12, 1, v13) != 1)
    {
      _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v12, type metadata accessor for DateDomain.IntervalAggregation?);
    }
  }

  else
  {
    outlined init with take of (lower: Date, upper: Date)(v12, v17, type metadata accessor for DateDomain.IntervalAggregation);
  }

  v19 = v4 + *(a3 + 20);
  v20 = &v17[*(v13 + 20)];
  HealthChartsData.Aggregation.dateHorizontalAxisDefinitions(viewSpan:)(v19, a4);
  return _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(v17, type metadata accessor for DateDomain.IntervalAggregation);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateDomain(uint64_t a1)
{
  v3 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v8[0] = 0x2865746164;
  v8[1] = 0xE500000000000000;
  outlined init with copy of DateDomain.ViewDateSpan(v1 + *(a1 + 20), v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateDomain.ViewDateSpan);
  v6 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v6);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v8[0];
}

uint64_t DateDomain.updatingViewSpan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DateDomain.ViewDateSpan(v2, a2, type metadata accessor for DateDomain.IntervalAggregation?);
  v5 = type metadata accessor for DateDomain(0);
  return outlined init with copy of DateDomain.ViewDateSpan(a1, a2 + *(v5 + 20), type metadata accessor for DateDomain.ViewDateSpan);
}

uint64_t DateDomain.updatingInterval(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DateDomain.ViewDateSpan(a1, a2, type metadata accessor for DateDomain.IntervalAggregation);
  v4 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  v5 = type metadata accessor for DateDomain(0);
  return outlined init with copy of DateDomain.ViewDateSpan(v2 + *(v5 + 20), a2 + *(v5 + 20), type metadata accessor for DateDomain.ViewDateSpan);
}

unint64_t lazy protocol witness table accessor for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment()
{
  result = lazy protocol witness table cache variable for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment;
  if (!lazy protocol witness table cache variable for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateDomain.ViewSpanAlignment and conformance DateDomain.ViewSpanAlignment);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DateDomain(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t type metadata completion function for DateDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DateDomain.ViewSpanAlignment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DateDomain.ViewSpanAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for DateDomain.ViewDateSpan()
{
  result = type metadata accessor for HealthChartsData.Aggregation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>> and conformance AxisMarks<A>, type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>);
    lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>()
{
  if (!lazy cache variable for type metadata for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>)
  {
    type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>();
    type metadata accessor for AxisValueLabel<Never>(255, &lazy cache variable for type metadata for AxisMarks<Never>, MEMORY[0x277CBB5A8], MEMORY[0x277CBB458]);
    v0 = type metadata accessor for BuilderConditional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderConditional<AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>, AxisMarks<Never>>);
    }
  }
}

void type metadata accessor for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>()
{
  if (!lazy cache variable for type metadata for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>)
  {
    type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>();
    lazy protocol witness table accessor for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    v0 = type metadata accessor for AxisMarks();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AxisMarks<BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>>);
    }
  }
}

void type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>()
{
  if (!lazy cache variable for type metadata for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>)
  {
    type metadata accessor for AxisTick();
    type metadata accessor for AxisGridLine();
    type metadata accessor for AxisValueLabel<Never>(255, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
    v0 = type metadata accessor for BuilderTuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    type metadata accessor for BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}>();
    lazy protocol witness table accessor for type AxisValueLabel<Never> and conformance AxisValueLabel<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{AxisTick, AxisGridLine, AxisValueLabel<Never>}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AxisValueLabel<Never> and conformance AxisValueLabel<A>()
{
  result = lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>;
  if (!lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>)
  {
    type metadata accessor for AxisValueLabel<Never>(255, &lazy cache variable for type metadata for AxisValueLabel<Never>, MEMORY[0x277CE1538], MEMORY[0x277CBB330]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AxisValueLabel<Never> and conformance AxisValueLabel<A>);
  }

  return result;
}

void type metadata accessor for AxisValueLabel<Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D84A98]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s10Foundation4DateVACSLAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void _s12HealthCharts10DateDomainV19IntervalAggregationVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s12HealthCharts10DateDomainV19IntervalAggregationVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SeriesData.aggregation.getter@<X0>(uint64_t a1@<X8>)
{
  return SeriesData.aggregation.getter(a1);
}

{
  v2 = *MEMORY[0x277D10200];
  v3 = type metadata accessor for HealthChartsData.Aggregation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SeriesData.unit.getter@<X0>(uint64_t a1@<X8>)
{
  return SeriesData.unit.getter(a1);
}

{
  v2 = type metadata accessor for HealthChartsUnit();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for SeriesData.xScale.getter in conformance <> HealthChartsData.SeriesData<A, B>()
{
  swift_getWitnessTable();

  return AnySeriesData.xScale.getter();
}

void __swiftcall HealthChartsQuantityDistributionQueryConfiguration.init(quantityType:bucketSize:options:histogramAnchor:zeroCountForGap:predicate:)(HealthCharts::HealthChartsQuantityDistributionQueryConfiguration *__return_ptr retstr, HKQuantityType quantityType, HKQuantity bucketSize, __C::_HKQuantityDistributionOptions_optional options, HKQuantity histogramAnchor, Swift::Int_optional zeroCountForGap, NSPredicate_optional *predicate)
{
  if (options.is_nil)
  {
    rawValue = 0;
  }

  else
  {
    rawValue = options.value.rawValue;
  }

  retstr->quantityType = quantityType;
  retstr->bucketSize = bucketSize;
  retstr->options.rawValue = rawValue;
  retstr->histogramAnchor = histogramAnchor;
  if (zeroCountForGap.is_nil)
  {
    value = 4;
  }

  else
  {
    value = zeroCountForGap.value;
  }

  retstr->zeroCountForGap = value;
  retstr->predicate.value.super.isa = predicate;
}

id static HealthChartsQuantityDistributionDataProvider.provider<A>(configuration:context:preferredDataShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v33 = a3;
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v34 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v31 = v16;
  v32 = v15;
  outlined init with copy of HealthChartsContext?(a2, v12);
  v18 = type metadata accessor for HealthChartsContext();
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    outlined destroy of HealthChartsContext?(v12);
  }

  else
  {
    v19 = *v12;
    v20 = *v12;
    _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(v12, type metadata accessor for HealthChartsContext);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
LABEL_5:
  v21 = type metadata accessor for HealthChartsDataShape();
  a5[10] = v21;
  v35 = a4;
  a5[11] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 7);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v33, v21);
  *a5 = v20;
  a5[1] = v14;
  v23 = v31;
  v24 = v32;
  a5[2] = v13;
  a5[3] = v24;
  a5[4] = v34;
  a5[5] = v23;
  a5[6] = v17;
  v25 = v17;
  v26 = v14;
  v27 = v13;
  v28 = v34;

  return v28;
}

void HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v51 = a3;
  v7 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for Date();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v21);
  v53 = v4[1];
  v61 = &v47 - v22;
  DateInterval.start.getter();
  v57 = v20;
  v23 = a2;
  DateInterval.end.getter();
  v52 = v4[6];
  v58 = v17;
  DateInterval.start.getter();
  HealthChartsData.Aggregation.intervalDateComponents()();
  v24 = type metadata accessor for DateComponents();
  v54 = *(v24 - 8);
  v25 = *(v54 + 48);
  v26 = v13;
  v55 = v24;
  if (v25(v13, 1) == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = v4[2];
    v27 = v4[4];
    v48 = *(v5 + 24);
    outlined init with copy of HealthChartsQuantityDistributionDataProvider(v5, v63);
    (*(v8 + 16))(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v7);
    v28 = (*(v8 + 80) + 128) & ~*(v8 + 80);
    v29 = swift_allocObject();
    v50 = v5;
    v30 = v29;
    v31 = v56;
    *(v29 + 16) = v51;
    *(v29 + 24) = v31;
    v32 = v63[3];
    *(v29 + 64) = v63[2];
    *(v29 + 80) = v32;
    v33 = v63[5];
    *(v29 + 96) = v63[4];
    *(v29 + 112) = v33;
    v34 = v63[1];
    *(v29 + 32) = v63[0];
    *(v29 + 48) = v34;
    (*(v8 + 32))(v29 + v28, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v35 = objc_allocWithZone(MEMORY[0x277CCDE28]);
    v36 = v27;

    isa = Date._bridgeToObjectiveC()().super.isa;
    v38 = v57;
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = v58;
    v41 = Date._bridgeToObjectiveC()().super.isa;
    v42 = DateComponents._bridgeToObjectiveC()().super.isa;
    aBlock[4] = partial apply for closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:);
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _HKQuantityDistributionQuery, @guaranteed [_HKQuantityDistributionData]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1;
    v43 = _Block_copy(aBlock);
    v44 = [v35 initWithQuantityType:v53 startDate:isa endDate:v39 contextStyle:0 predicate:v52 anchorDate:v41 intervalComponents:v42 histogramAnchor:v36 histogramBucketSize:v49 options:v48 completionHandler:v43];
    _Block_release(v43);

    v45 = v60;
    v46 = *(v59 + 8);
    v46(v40, v60);
    v46(v38, v45);
    v46(v61, v45);
    (*(v54 + 8))(v26, v55);

    [*v50 executeQuery_];
  }
}

uint64_t closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v23[1] = a5;
  type metadata accessor for Result<HealthChartsData, Error>();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    *v12 = a3;
    swift_storeEnumTagMultiPayload();
    v18 = a3;
    a4(v12);
    return _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(v12, type metadata accessor for Result<HealthChartsData, Error>);
  }

  else
  {
    v23[0] = a4;
    v20 = a6[11];
    __swift_project_boxed_opaque_existential_1(a6 + 7, a6[10]);
    v21 = a6[2];
    v22 = a6[5];
    dispatch thunk of DistributionRepresentableShape.buildData(from:aggregation:histogramBucketSize:zeroCountForGap:preferredUnit:)();
    (*(v14 + 16))(v12, v17, v13);
    swift_storeEnumTagMultiPayload();
    (v23[0])(v12);
    _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(v12, type metadata accessor for Result<HealthChartsData, Error>);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed _HKQuantityDistributionQuery, @guaranteed [_HKQuantityDistributionData]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    type metadata accessor for _HKQuantityDistributionData();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t _ss6ResultOy16HealthChartsCore0bC4DataVs5Error_pGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25142BCEC()
{
  v1 = type metadata accessor for HealthChartsData.Aggregation();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(*(type metadata accessor for HealthChartsData.Aggregation() - 8) + 80);
  v8 = v3[2];
  v9 = v3[3];

  return closure #1 in HealthChartsQuantityDistributionDataProvider.query(interval:aggregation:results:)(a1, a2, a3, v8, v9, v3 + 4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsQuantityDistributionDataProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for HealthChartsQuantityDistributionDataProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for _HKQuantityDistributionData()
{
  result = lazy cache variable for type metadata for _HKQuantityDistributionData;
  if (!lazy cache variable for type metadata for _HKQuantityDistributionData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _HKQuantityDistributionData);
  }

  return result;
}

uint64_t HealthStaticChart.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for DescriptionView();
  v20 = v3;
  v21 = MEMORY[0x277CBB350];
  v22 = v2;
  v23 = MEMORY[0x277CBB348];
  type metadata accessor for HealthChart();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  v12 = *v1;
  static HorizontalAlignment.leading.getter();
  v17 = v3;
  v18 = v2;
  v19 = v12;
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v8, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v8, v4);
  static ChartContentBuilder.buildExpression<A>(_:)(v11, v4, WitnessTable);
  return (v14)(v11, v4);
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

uint64_t closure #1 in HealthStaticChart.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v81 = a4;
  v78 = type metadata accessor for ChartAttributes();
  v74 = *(v78 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v78);
  v70 = &v61 - v7;
  v86 = a2;
  v87 = MEMORY[0x277CBB350];
  v88 = a3;
  v89 = MEMORY[0x277CBB348];
  v8 = type metadata accessor for HealthChart();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v61 - v10;
  v75 = v11;
  v12 = type metadata accessor for ModifiedContent();
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v69 = &v61 - v14;
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  v77 = v12;
  v80 = type metadata accessor for ModifiedContent();
  v72 = *(v80 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v61 - v18;
  v19 = type metadata accessor for HealthChartsAttributes();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v61 - v21;
  v23 = type metadata accessor for HealthChartsData();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for HealthStaticChartDescriptionViewModel();
  v27 = *(v64 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v64);
  v30 = &v61 - v29;
  v31 = type metadata accessor for DescriptionView();
  v65 = *(v31 - 8);
  v32 = *(v65 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v82 = &v61 - v36;
  type metadata accessor for MainActor();
  v66 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = v67;
  HealthStaticChartViewModel.data.getter();
  HealthStaticChartViewModel.attributes.getter();
  HealthStaticChartDescriptionViewModel.init(data:attributes:)(v26, v22, a2, a3, v30);
  (*(v27 + 32))(v34, v30, v64);
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v34, v31, WitnessTable);
  v38 = v65;
  v39 = *(v65 + 8);
  v63 = v65 + 8;
  v64 = v39;
  v39(v34, v31);
  v40 = v70;
  v41 = HealthStaticChartViewModel.chartAttributes.getter(v70);
  MEMORY[0x28223BE20](v41);
  *(&v61 - 4) = a2;
  *(&v61 - 3) = a3;
  *(&v61 - 2) = v37;
  type metadata accessor for DataSeries();
  v42 = type metadata accessor for Optional();
  v85[6] = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v44 = v68;
  static HealthChart.build<A>(attributes:_:)(v40, partial apply for closure #1 in closure #1 in HealthStaticChart.body.getter, a2, v42, a3, v43, v68);
  (*(v74 + 8))(v40, v78);
  static Edge.Set.top.getter();
  v45 = v75;
  v46 = swift_getWitnessTable();
  v47 = v69;
  View.padding(_:_:)();
  (*(v71 + 8))(v44, v45);
  v85[4] = v46;
  v85[5] = MEMORY[0x277CDF918];
  v48 = v77;
  v49 = swift_getWitnessTable();
  v50 = v79;
  View.clipped(antialiased:)();
  (*(v73 + 8))(v47, v48);
  v51 = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
  v85[2] = v49;
  v85[3] = v51;
  v52 = v80;
  v53 = swift_getWitnessTable();
  v54 = v76;
  static ChartContentBuilder.buildExpression<A>(_:)(v50, v52, v53);
  v55 = v72;
  v56 = *(v72 + 8);
  v56(v50, v52);
  v57 = *(v38 + 16);
  v58 = v82;
  v57(v34, v82, v31);
  v86 = v34;
  (*(v55 + 16))(v50, v54, v52);
  v87 = v50;
  v85[0] = v31;
  v85[1] = v52;
  v83 = WitnessTable;
  v84 = v53;
  static ViewBuilder.buildBlock<each A>(_:)(&v86, 2uLL, v85);
  v56(v54, v52);
  v59 = v64;
  v64(v58, v31);
  v56(v50, v52);
  v59(v34, v31);
}

uint64_t HealthStaticChartDescriptionViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for HealthStaticChartDescriptionViewModel();
  v11 = *(v10 + 36);
  v12 = type metadata accessor for HealthChartsData();
  v16 = *(v12 - 8);
  (*(v16 + 16))(a5 + v11, a1, v12);
  static HealthStaticChartDescriptionViewModel.descriptionProvider(for:attributes:)(a2, a5);
  static HealthStaticChartDescriptionViewModel.xScale(for:attributes:)(a1, a2, a3, a4, a5 + *(v10 + 40));
  v13 = type metadata accessor for HealthChartsAttributes();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = *(v16 + 8);

  return v14(a1, v12);
}

uint64_t closure #1 in closure #1 in HealthStaticChart.body.getter@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for HealthChartsData.Series();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v7 = type metadata accessor for HealthChartsAttributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for DataSeries();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v40 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v44 = type metadata accessor for Optional();
  v20 = *(v44 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v44);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  MEMORY[0x28223BE20](v27);
  v45 = &v40 - v28;
  HealthStaticChartViewModel.attributes.getter();
  HealthStaticChartViewModel.seriesData.getter();
  DataSeries.init(attributes:seriesData:)(v10, v6, v26);
  if ((*(v12 + 48))(v26, 1, v11) == 1)
  {
    v29 = *(v20 + 8);
    v30 = v44;
    v29(v26, v44);
    (*(v12 + 56))(v23, 1, 1, v11);
    WitnessTable = swift_getWitnessTable();
    v32 = v45;
    static SeriesContentBuilder.buildOptional<A>(_:)(v23, v11, WitnessTable);
    v33 = v23;
  }

  else
  {
    v43 = *(v12 + 32);
    v43(v19, v26, v11);
    v34 = swift_getWitnessTable();
    v35 = v41;
    static SeriesContentBuilder.buildExpression<A>(_:)(v19, v11, v34);
    v36 = *(v12 + 8);
    v36(v19, v11);
    v37 = v42;
    static SeriesContentBuilder.buildBlock<A>(_:)(v35, v11, v34);
    v36(v35, v11);
    v43(v23, v37, v11);
    (*(v12 + 56))(v23, 0, 1, v11);
    v32 = v45;
    static SeriesContentBuilder.buildOptional<A>(_:)(v23, v11, v34);
    v29 = *(v20 + 8);
    v33 = v23;
    v30 = v44;
  }

  v29(v33, v30);
  v47 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  static SeriesContentBuilder.buildBlock<A>(_:)(v32, v30, v38);
  return (v29)(v32, v30);
}

uint64_t type metadata instantiation function for HealthStaticChart()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HealthStaticChart(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthStaticChart(uint64_t result, int a2, int a3)
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

uint64_t sub_25142D384(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DescriptionView();
  type metadata accessor for HealthChart();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for DescriptionView(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for HealthStaticChartDescriptionViewModel();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25142D548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for HealthStaticChartDescriptionViewModel();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_25142D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = type metadata accessor for HealthStaticChartDescriptionViewModel();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

unint64_t type metadata completion function for HealthStaticChartDescriptionViewModel()
{
  result = type metadata accessor for DescriptionContentProvider();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsData();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DescriptionContext.DataXScale(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25142D708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DescriptionContext.DataXScale(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25142D840(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DescriptionContext.DataXScale(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t type metadata accessor for DescriptionContentProvider()
{
  result = lazy cache variable for type metadata for DescriptionContentProvider;
  if (!lazy cache variable for type metadata for DescriptionContentProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DescriptionContentProvider);
  }

  return result;
}

uint64_t HealthStaticChartDescriptionViewModel.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DescriptionContext.DataXScale(v2 + *(a1 + 40), a2, type metadata accessor for DescriptionContext.DataXScale);
  v5 = *(a1 + 36);
  v6 = *(type metadata accessor for DescriptionContext(0) + 20);
  v7 = type metadata accessor for HealthChartsData();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v6, v2 + v5, v7);
}

unint64_t static HealthStaticChartDescriptionViewModel.descriptionProvider(for:attributes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (HealthChartsData.isEmpty.getter())
  {
    type metadata accessor for _ClipEffect<Rectangle>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDataMessage>, lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage, &type metadata for NoDataMessage, type metadata accessor for DescriptionMessage);
    *(a2 + 24) = v4;
    result = lazy protocol witness table accessor for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>();
    *(a2 + 32) = result;
  }

  else
  {
    v6 = a1 + *(type metadata accessor for HealthChartsAttributes() + 36);

    return outlined init with copy of HealthStaticChartKey(v6, a2);
  }

  return result;
}

uint64_t static HealthStaticChartDescriptionViewModel.xScale(for:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  *&v46 = a2;
  v43 = a1;
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for DateDomain?, type metadata accessor for DateDomain);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v38 - v9;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v47 = a3;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  v49 = a4;
  v17 = type metadata accessor for ChartAttributes.AxisAttributes();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v41 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v24 = type metadata accessor for DateDomain(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ChartAttributes();
  v30 = *(v18 + 16);
  v39 = *(v29 + 36);
  v40 = v30;
  v30(v23, v46 + v39, v17);
  v31 = *(v10 + 32);
  v31(v16, &v23[*(v17 + 52)], a3);
  v32 = v44;
  v33 = swift_dynamicCast();
  v34 = *(v25 + 56);
  if (v33)
  {
    v34(v32, 0, 1, v24);
    outlined init with take of DateDomain(v32, v28, type metadata accessor for DateDomain);
    static HealthStaticChartDescriptionViewModel.xScale(for:domain:)(v28, v45);
    return outlined destroy of DescriptionContext(v28, type metadata accessor for DateDomain);
  }

  else
  {
    v36 = v45;
    v34(v32, 1, 1, v24);
    outlined destroy of ClosedRange<Date>(v32, &lazy cache variable for type metadata for DateDomain?, type metadata accessor for DateDomain, type metadata accessor for DateDomain?);
    v37 = v41;
    v40(v41, v46 + v39, v17);
    v31(v42, &v37[*(v17 + 52)], a3);
    if (swift_dynamicCast())
    {
      v46 = v48;
      static HealthStaticChartDescriptionViewModel.xScale(for:domain:)(&v47, v36);
    }

    else
    {
      type metadata accessor for DescriptionContext.DataXScale(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t static HealthStaticChartDescriptionViewModel.xScale(for:domain:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v86 = a1;
  v79 = a2;
  type metadata accessor for (lower: Date, upper: Date)();
  v78 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v71 - v6;
  v89 = type metadata accessor for Date();
  v77 = *(v89 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v89);
  v91 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v71 - v10;
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v71 - v13;
  v14 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v84 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HealthChartsData.Aggregation();
  v87 = *(v17 - 8);
  v88 = v17;
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v71 - v22;
  type metadata accessor for ClosedRange<Date>?(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for HealthChartsData.Series();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v71 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v71 - v37;
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for AxisScale<Date>, type metadata accessor for AxisScale);
  v72 = v39;
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v71 = &v71 - v41;
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x277D83638]);
  v73 = v42;
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v74 = &v71 - v44;
  HealthChartsData.series.getter();
  HealthChartsData.Series.dateXScale.getter();
  v45 = *(v29 + 8);
  v45(v38, v28);
  HealthChartsData.series.getter();
  v85 = v23;
  HealthChartsData.Series.unit.getter();
  v46 = v35;
  v47 = v81;
  v45(v46, v28);
  v48 = v80;
  HealthChartsData.series.getter();
  HealthChartsData.Series.finestAggregation.getter();
  v49 = v86;
  v50 = v83;
  v45(v32, v28);
  v51 = v82;
  outlined init with copy of DateDomain.IntervalAggregation?(v49, v50);
  v52 = *(v47 + 48);
  if (v52(v50, 1, v51) == 1)
  {
    v53 = v84;
    DateDomain.intervalAggregation(for:with:)(v27, v48, v84);
    v54 = v52(v50, 1, v51);
    v55 = v53;
    if (v54 != 1)
    {
      outlined destroy of ClosedRange<Date>(v50, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, type metadata accessor for DateDomain?);
    }
  }

  else
  {
    v55 = v84;
    outlined init with take of DateDomain(v50, v84, type metadata accessor for DateDomain.IntervalAggregation);
  }

  v56 = v90;
  DateInterval.start.getter();
  v57 = v91;
  DateInterval.end.getter();
  lazy protocol witness table accessor for type Date and conformance Date();
  v58 = v89;
  v59 = dispatch thunk of static Comparable.<= infix(_:_:)();
  outlined destroy of DescriptionContext(v55, type metadata accessor for DateDomain.IntervalAggregation);
  (*(v87 + 8))(v48, v88);
  outlined destroy of ClosedRange<Date>(v85, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], type metadata accessor for DateDomain?);
  result = outlined destroy of DescriptionContext(v27, type metadata accessor for ClosedRange<Date>?);
  if (v59)
  {
    v61 = v77;
    v62 = *(v77 + 32);
    v63 = v75;
    v62(v75, v56, v58);
    v64 = v78;
    v62((v63 + *(v78 + 48)), v57, v58);
    v65 = v76;
    outlined init with copy of DescriptionContext.DataXScale(v63, v76, type metadata accessor for (lower: Date, upper: Date));
    v88 = *(v64 + 48);
    v66 = &v71[*(v72 + 36)];
    v62(v66, v65, v58);
    v67 = *(v61 + 8);
    v67(v65 + v88, v58);
    outlined init with take of DateDomain(v63, v65, type metadata accessor for (lower: Date, upper: Date));
    v68 = v73;
    v62((v66 + *(v73 + 36)), (v65 + *(v64 + 48)), v58);
    v67(v65, v58);
    v69 = v74;
    outlined init with take of ClosedRange<Date>(v66, v74);
    v70 = *(v61 + 16);
    v70(v90, v69, v58);
    v70(v91, v69 + *(v68 + 36), v58);
    DateInterval.init(start:end:)();
    outlined destroy of ClosedRange<Date>(v69, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x277D83638], type metadata accessor for ClosedRange<Date>);
    type metadata accessor for DescriptionContext.DataXScale(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HealthStaticChartDescriptionViewModel.xScale(for:domain:)@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for HealthChartsData.Aggregation();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x277D102B8];
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for HealthChartsData.Series();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v28[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v28[-v20];
  v22 = *a1;
  v32 = a1[1];
  v33 = v22;
  HealthChartsData.series.getter();
  v23 = HealthChartsData.Series.scalarXScale.getter();
  v30 = v24;
  v31 = v23;
  v29 = v25;
  v26 = *(v12 + 8);
  v26(v21, v11);
  HealthChartsData.series.getter();
  HealthChartsData.Series.unit.getter();
  v26(v18, v11);
  HealthChartsData.series.getter();
  HealthChartsData.Series.finestAggregation.getter();
  v26(v15, v11);
  v33(&v38, v31, v30, v29 & 1, v10, v6);
  (*(v35 + 8))(v6, v36);
  outlined destroy of ClosedRange<Date>(v10, &lazy cache variable for type metadata for HealthChartsUnit?, v34, type metadata accessor for DateDomain?);
  *v37 = v39;
  type metadata accessor for DescriptionContext.DataXScale(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for DescriptionContext(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = type metadata accessor for HealthStaticChartDescriptionViewModel();
  HealthStaticChartDescriptionViewModel.context.getter(v15, v8);
  (*(v10 + 32))(v8, v9, v10);
  outlined destroy of DescriptionContext(v8, type metadata accessor for DescriptionContext);
  swift_getAssociatedConformanceWitness();
  result = AnyView.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in HealthStaticChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return closure #1 in closure #1 in HealthStaticChart.body.getter(*(v1 + 16), a1);
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x277CE14A8], MEMORY[0x277CDF4E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>);
  }

  return result;
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of DescriptionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for DateDomain?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

void type metadata accessor for ClosedRange<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of DateDomain.IntervalAggregation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateDomain?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClosedRange<Date>(0, &lazy cache variable for type metadata for ClosedRange<Date>, MEMORY[0x277D83638]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DateDomain(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ClipEffect<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage()
{
  result = lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage;
  if (!lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage;
  if (!lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoDataMessage and conformance NoDataMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>()
{
  result = lazy protocol witness table cache variable for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>;
  if (!lazy protocol witness table cache variable for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for DescriptionMessage<NoDataMessage>, lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage, &type metadata for NoDataMessage, type metadata accessor for DescriptionMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptionMessage<NoDataMessage> and conformance DescriptionMessage<A>);
  }

  return result;
}

uint64_t HealthStaticChart<>.init(objectType:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = type metadata accessor for HealthChartsContext();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar.Identifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EmptyDateChartModel();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKObjectType.chartKey.getter(&v39);
  if (v40)
  {
    outlined init with take of HealthChartsDataProvider(&v39, v41);
    v19 = v42;
    v20 = v43;
    v21 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v22 = *(*(v19 - 8) + 64);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25, v23);
    _s12HealthCharts0aB7ContextVWOcTm_0(a2, v9, type metadata accessor for HealthChartsContext);
    HealthStaticChart<>.init<A>(key:context:)(v25, v9, v19, v20, &v39);

    outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
    v27 = v39;
    result = __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    outlined destroy of HealthStaticChartKey?(&v39);
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_25145AB10;
    *(v29 + 56) = type metadata accessor for HealthChartsErrors();
    *__swift_allocate_boxed_opaque_existential_1((v29 + 32)) = a1;
    swift_storeEnumTagMultiPayload();
    v30 = a1;
    print(_:separator:terminator:)();

    v31 = v6[6];
    v32 = type metadata accessor for DateInterval();
    (*(*(v32 - 8) + 56))(&v18[v31], 1, 1, v32);
    v33 = v6[7];
    v34 = type metadata accessor for DateDomain.ViewDateSpan(0);
    (*(*(v34 - 8) + 56))(&v18[v33], 1, 1, v34);
    (*(v11 + 104))(v14, *MEMORY[0x277CC9830], v10);
    v35 = &v18[v6[5]];
    Calendar.init(identifier:)();
    (*(v11 + 8))(v14, v10);
    *v18 = 0;
    v18[v6[8]] = 0;
    type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v27 = specialized HealthStaticChartViewModel.init<A>(model:)(v18);

    result = outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
  }

  *a3 = v27;
  return result;
}

uint64_t outlined destroy of HealthStaticChartKey?(uint64_t a1)
{
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for HealthStaticChartKey?, type metadata accessor for HealthStaticChartKey, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for HealthStaticChartKey()
{
  result = lazy cache variable for type metadata for HealthStaticChartKey;
  if (!lazy cache variable for type metadata for HealthStaticChartKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HealthStaticChartKey);
  }

  return result;
}

uint64_t HealthStaticChart<>.init<A>(key:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v37 = a5;
  v9 = type metadata accessor for HealthChartsContext();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HealthChartModel();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v36 - v28);
  (*(v17 + 16))(v21, a1, a3, v27);
  v30 = type metadata accessor for HealthChartsData();
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  _s12HealthCharts0aB7ContextVWOcTm_0(a2, v12, type metadata accessor for HealthChartsContext);
  HealthChartModel.init<A>(_:providedData:context:)(v21, v16, v12, a3, a4, v29);
  _s12HealthCharts0aB7ContextVWOcTm_0(v29, v25, type metadata accessor for HealthChartModel);
  type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = specialized HealthStaticChartViewModel.init<A>(model:)(v25);
  outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
  (*(v17 + 8))(a1, a3);
  result = outlined destroy of EmptyDateChartModel(v29, type metadata accessor for HealthChartModel);
  *v37 = v34;
  return result;
}

uint64_t HealthStaticChart<>.init(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthChartsContext();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v10 = a1;
  v11 = MEMORY[0x2530763A0]();
  _s12HealthCharts0aB7ContextVWOcTm_0(a2, v9, type metadata accessor for HealthChartsContext);
  HealthStaticChart<>.init(objectType:context:)(v11, v9, &v14);

  result = outlined destroy of EmptyDateChartModel(a2, type metadata accessor for HealthChartsContext);
  *a3 = v14;
  return result;
}

uint64_t HealthStaticChart<>.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = type metadata accessor for HealthChartModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, v7, type metadata accessor for HealthChartModel);
  type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = specialized HealthStaticChartViewModel.init<A>(model:)(v7);
  result = outlined destroy of EmptyDateChartModel(a1, type metadata accessor for HealthChartModel);
  *a2 = v11;
  return result;
}

uint64_t HealthStaticChart<>.init<A>(key:data:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v43 = a2;
  v44 = a5;
  v42 = a1;
  v45 = a6;
  v9 = type metadata accessor for HealthChartsContext();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v41 = a4;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HealthChartModel();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v40 - v28);
  (*(v17 + 16))(v21, a1, a4, v27);
  v30 = type metadata accessor for HealthChartsData();
  v31 = *(v30 - 8);
  v32 = v43;
  (*(v31 + 16))(v16, v43, v30);
  (*(v31 + 56))(v16, 0, 1, v30);
  _s12HealthCharts0aB7ContextVWOcTm_0(a3, v12, type metadata accessor for HealthChartsContext);
  v33 = v12;
  v34 = v41;
  HealthChartModel.init<A>(_:providedData:context:)(v21, v16, v33, v41, v44, v29);
  _s12HealthCharts0aB7ContextVWOcTm_0(v29, v25, type metadata accessor for HealthChartModel);
  type metadata accessor for HealthStaticChartViewModel<DateDomain>(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = specialized HealthStaticChartViewModel.init<A>(model:)(v25);
  outlined destroy of EmptyDateChartModel(a3, type metadata accessor for HealthChartsContext);
  (*(v31 + 8))(v32, v30);
  (*(v17 + 8))(v42, v34);
  result = outlined destroy of EmptyDateChartModel(v29, type metadata accessor for HealthChartModel);
  *v45 = v38;
  return result;
}

uint64_t specialized HealthStaticChartViewModel.data.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData, MEMORY[0x277D102A8]);
  v17[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v12 = v11(v8, v4);
  if (a1)
  {
    v10(v8, v17[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    v17[-2] = type metadata accessor for DateDomain(0);
    v17[-1] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v17[0];
    v17[-2] = v2;
    v17[-1] = v14;
    v15 = *(*v2 + 128);
    v17[1] = v2;
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v11(v17[0], v4);
}

{
  v2 = v1;
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData, MEMORY[0x277D102A8]);
  v17[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v12 = v11(v8, v4);
  if (a1)
  {
    v10(v8, v17[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    v17[-2] = &type metadata for ScalarDomain;
    v17[-1] = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v17[0];
    v17[-2] = v2;
    v17[-1] = v14;
    v15 = *(*v2 + 128);
    v17[1] = v2;
    lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v11(v17[0], v4);
}

uint64_t specialized closure #1 in HealthStaticChartViewModel.data.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4, v7);
  v10 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v10, v9, v4);
  return swift_endAccess();
}

uint64_t *specialized HealthStaticChartViewModel.init<A>(model:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v12 = type metadata accessor for DispatchQoS();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for HealthChartsData();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v21 + 32))(v2 + direct field offset for HealthStaticChartViewModel._data, v24, v20);
  *(v2 + *(*v2 + 120)) = 0;
  v25 = v2 + *(*v2 + 128);
  ObservationRegistrar.init()();
  v2[5] = type metadata accessor for HealthChartModel();
  v2[6] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthChartModel and conformance HealthChartModel, type metadata accessor for HealthChartModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  v36 = a1;
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, boxed_opaque_existential_1, type metadata accessor for HealthChartModel);
  HealthChartModel.attributes()(v19);
  outlined init with take of HealthChartsAttributes<DateDomain>(v19, v2 + *(*v2 + 112));
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v27 = MEMORY[0x277D85230];
  v28 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v27);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, *MEMORY[0x277D85260], v40);
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_33;
  v30 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v31 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v28);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v31);
  v32 = v43;
  v33 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v15, v32, v30);
  _Block_release(v30);

  outlined destroy of EmptyDateChartModel(v36, type metadata accessor for HealthChartModel);
  (*(v45 + 8))(v32, v33);
  (*(v41 + 8))(v15, v42);

  return v2;
}

{
  v2 = v1;
  v43 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v42[1] = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for HealthChartsData();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v24 + 32))(v1 + direct field offset for HealthStaticChartViewModel._data, v27, v23);
  *(v1 + *(*v1 + 120)) = 0;
  v28 = v2 + *(*v2 + 128);
  ObservationRegistrar.init()();
  v1[5] = type metadata accessor for EmptyDateChartModel();
  v1[6] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type EmptyDateChartModel and conformance EmptyDateChartModel, type metadata accessor for EmptyDateChartModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, boxed_opaque_existential_1, type metadata accessor for EmptyDateChartModel);
  static ChartAttributes.empty<>()(v22);
  v30 = (v22 + *(v19 + 44));
  type metadata accessor for BasicChartModel<ScalarDomain>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription, type metadata accessor for DescriptionMessage);
  v30[3] = v31;
  v30[4] = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  *v30 = 0;
  v30[1] = 0;
  v32 = MEMORY[0x277D84F90];
  *(v22 + *(v19 + 48)) = MEMORY[0x277D84F90];
  v33 = v32;
  outlined init with take of HealthChartsAttributes<DateDomain>(v22, v2 + *(*v2 + 112));
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = v33;
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v34 = MEMORY[0x277D85230];
  v35 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v34);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, *MEMORY[0x277D85260], v46);
  v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  v54 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_36;
  v37 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v52 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v38 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v35);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v38);
  v39 = v49;
  v40 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v17, v39, v37);
  _Block_release(v37);

  outlined destroy of EmptyDateChartModel(v43, type metadata accessor for EmptyDateChartModel);
  (*(v51 + 8))(v39, v40);
  (*(v47 + 8))(v17, v48);

  return v1;
}

{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v35[1] = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HealthChartsData();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v19 + 32))(v1 + direct field offset for HealthStaticChartViewModel._data, v22, v18);
  *(v1 + *(*v1 + 120)) = 0;
  v23 = v2 + *(*v2 + 128);
  ObservationRegistrar.init()();
  type metadata accessor for BasicChartModel<DateDomain>(0);
  v25 = v24;
  v1[5] = v24;
  v1[6] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type BasicChartModel<DateDomain> and conformance BasicChartModel<A>, type metadata accessor for BasicChartModel<DateDomain>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  v36 = a1;
  _s12HealthCharts0aB7ContextVWOcTm_0(a1, boxed_opaque_existential_1, type metadata accessor for BasicChartModel<DateDomain>);
  _s12HealthCharts0aB7ContextVWOcTm_0(a1 + *(v25 + 36), v2 + *(*v2 + 112), type metadata accessor for HealthChartsAttributes<DateDomain>);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v27 = MEMORY[0x277D85230];
  v28 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v27);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v37, *MEMORY[0x277D85260], v39);
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  v47 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20;
  v30 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v31 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v28);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v31);
  v33 = v42;
  v32 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v17, v33, v30);
  _Block_release(v30);

  outlined destroy of EmptyDateChartModel(v36, type metadata accessor for BasicChartModel<DateDomain>);
  (*(v44 + 8))(v33, v32);
  (*(v40 + 8))(v17, v41);

  return v1;
}

{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HealthChartsData();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  (*(v19 + 32))(v1 + direct field offset for HealthStaticChartViewModel._data, v22, v18);
  *(v1 + *(*v1 + 120)) = 0;
  v23 = v2 + *(*v2 + 128);
  ObservationRegistrar.init()();
  type metadata accessor for BasicChartModel<ScalarDomain>(0, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, type metadata accessor for BasicChartModel);
  v25 = v24;
  v1[5] = v24;
  v1[6] = lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, type metadata accessor for BasicChartModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  v36 = a1;
  outlined init with copy of HealthChartsAttributes<ScalarDomain>(a1, boxed_opaque_existential_1, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, type metadata accessor for BasicChartModel);
  outlined init with copy of HealthChartsAttributes<ScalarDomain>(a1 + *(v25 + 36), v2 + *(*v2 + 112), &lazy cache variable for type metadata for HealthChartsAttributes<ScalarDomain>, type metadata accessor for HealthChartsAttributes);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  v27 = MEMORY[0x277D85230];
  v28 = MEMORY[0x277D83940];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], MEMORY[0x277D85230], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &lazy cache variable for type metadata for [OS_dispatch_queue.Attributes], v27);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, *MEMORY[0x277D85260], v40);
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = partial apply for specialized closure #1 in HealthStaticChartViewModel.init<A>(model:);
  v48 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v31 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], v28);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v31);
  v33 = v43;
  v32 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v17, v33, v30);
  _Block_release(v30);

  outlined destroy of BasicChartModel<ScalarDomain>(v36);
  (*(v45 + 8))(v33, v32);
  (*(v41 + 8))(v17, v42);

  return v1;
}

uint64_t outlined init with copy of HealthChartsAttributes<ScalarDomain>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for BasicChartModel<ScalarDomain>(0, a3, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HealthStaticChartKey?(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for HealthStaticChartKey?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of BasicChartModel<ScalarDomain>(uint64_t a1)
{
  type metadata accessor for BasicChartModel<ScalarDomain>(0, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, type metadata accessor for BasicChartModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized HealthStaticChartViewModel.update(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22[0] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22[1];
  (*(v14 + 32))(v18 + v17, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v20 = MEMORY[0x277D85198];
  type metadata accessor for HealthStaticChartKey?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x277D85198], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2530763F0](0, v12, v8, v19);
  _Block_release(v19);

  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t specialized closure #1 in HealthStaticChartViewModel.update(data:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = type metadata accessor for HealthChartsData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v9, a2, v5);
  a3(v9);
}

uint64_t specialized HealthStaticChartViewModel.queryData()()
{
  v1 = v0;
  v2 = *(*v0 + 120);
  v3 = swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v3);
    type metadata accessor for DateDomain(0);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v5 = *(*v1 + 128);
    v12[0] = v1;
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  MEMORY[0x28223BE20](v3);
  type metadata accessor for DateDomain(0);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
  swift_getKeyPath();
  v6 = *(*v1 + 128);
  v12[0] = v1;
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of HealthStaticChartKey(v1 + 16, v12);
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v8 + 40);

  v10(partial apply for specialized closure #1 in HealthStaticChartViewModel.queryData(), v9, v7, v8);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

{
  v1 = v0;
  v2 = *(*v0 + 120);
  v3 = swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v3);
    lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v5 = *(*v1 + 128);
    v12[0] = v1;
    lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  MEMORY[0x28223BE20](v3);
  lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  swift_getKeyPath();
  v6 = *(*v1 + 128);
  v12[0] = v1;
  lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of HealthStaticChartKey(v1 + 16, v12);
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v8 + 40);

  v10(partial apply for specialized closure #1 in HealthStaticChartViewModel.queryData(), v9, v7, v8);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

__n128 sub_251432FEC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BasicChartModel<ScalarDomain>(255, a2, lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain, &type metadata for ScalarDomain, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251433070()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t specialized closure #1 in HealthStaticChartViewModel.queryData()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(*Strong + 120);
    v5 = swift_beginAccess();
    if (*(v3 + v4))
    {
      MEMORY[0x28223BE20](v5);
      type metadata accessor for DateDomain(0);
      _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v7 = *(*v3 + 128);
      _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<DateDomain> and conformance HealthStaticChartViewModel<A>, type metadata accessor for HealthStaticChartViewModel<DateDomain>);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v3 + v4) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized HealthStaticChartViewModel.update(data:)(a1, &unk_28636B198, partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:), &block_descriptor_30);
  }

  return result;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(*Strong + 120);
    v5 = swift_beginAccess();
    if (*(v3 + v4))
    {
      MEMORY[0x28223BE20](v5);
      lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v7 = *(*v3 + 128);
      lazy protocol witness table accessor for type BasicChartModel<ScalarDomain> and conformance BasicChartModel<A>(&lazy protocol witness table cache variable for type HealthStaticChartViewModel<ScalarDomain> and conformance HealthStaticChartViewModel<A>, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v3 + v4) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized HealthStaticChartViewModel.update(data:)(a1, &unk_28636B0F8, partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:), &block_descriptor_12);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.queryData()(uint64_t a1)
{
  return specialized closure #1 in HealthStaticChartViewModel.queryData()(a1);
}

{
  return specialized closure #1 in HealthStaticChartViewModel.queryData()(a1);
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:)()
{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:)(specialized HealthStaticChartViewModel.data.setter);
}

{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.update(data:)(specialized HealthStaticChartViewModel.data.setter);
}

void type metadata accessor for HealthStaticChartViewModel<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of EmptyDateChartModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.isLoading.setter()
{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.isLoading.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for HealthChartsData();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in HealthStaticChartViewModel.data.setter()
{
  return specialized closure #1 in HealthStaticChartViewModel.data.setter(*(v0 + 16), *(v0 + 24));
}

{
  return partial apply for specialized closure #1 in HealthStaticChartViewModel.data.setter();
}

uint64_t outlined init with take of HealthChartsAttributes<DateDomain>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12HealthCharts0aB7ContextVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for BasicChartModel<ScalarDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

id static HealthChartsColor.hk_bodyMeasurementsKeyColor.getter()
{
  v0 = [objc_opt_self() systemPurpleColor];

  return v0;
}

id static HealthChartsColor.hk_heartKeyColor.getter()
{
  v0 = [objc_opt_self() systemPinkColor];

  return v0;
}

id static HealthChartsColor.hk_respiratoryKeyColor.getter()
{
  v0 = [objc_opt_self() systemCyanColor];

  return v0;
}

id static HealthChartsColor.hk_nutritionKeyColor.getter()
{
  v0 = [objc_opt_self() systemGreenColor];

  return v0;
}

id static HealthChartsColor.hk_sleepKeyColor.getter()
{
  v0 = [objc_opt_self() systemIndigoColor];

  return v0;
}

id static HealthChartsColor.hk_profileKeyColor.getter()
{
  v0 = [objc_opt_self() systemGrayColor];

  return v0;
}

id static HealthChartsColor.hk_mindfulnessKeyColor.getter()
{
  v0 = [objc_opt_self() systemMintColor];

  return v0;
}

id static HealthChartsColor.hk_hearingHealthKeyColor.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

id static HealthChartsColor.hk_mobilityKeyColor.getter()
{
  v0 = [objc_opt_self() systemOrangeColor];

  return v0;
}

id static HealthChartsColor.hk_devicesClinicalKeyColor.getter()
{
  v0 = [objc_opt_self() systemRedColor];

  return v0;
}

id specialized static HealthChartsColor.hk_namedColor(_:)(uint64_t a1, uint64_t a2)
{
  if (_UIApplicationIsExtension())
  {
    v4 = objc_opt_self();
    v5 = &selRef_systemBlueColor;
  }

  else
  {
    if (one-time initialization token for bundle != -1)
    {
      swift_once();
    }

    v6 = static HealthChartsBundle.bundle;
    v7 = MEMORY[0x253076160](a1, a2);
    v8 = objc_opt_self();
    v9 = [v8 colorNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

    if (v9)
    {
      return v9;
    }

    v5 = &selRef_blackColor;
    v4 = v8;
  }

  v11 = [v4 *v5];

  return v11;
}

void CategoryLevel.localizedMessage(for:)(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for HealthChartsData.DescriptionKey();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  type metadata accessor for HealthChartsData.Description?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = v2[1];
  v38 = *v2;
  v39 = v17;
  v40 = v2[2];
  v18 = *(type metadata accessor for DescriptionContext(0) + 20);
  v43 = a1;
  HealthChartsData.description.getter();
  v19 = type metadata accessor for HealthChartsData.Description();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v16, 1, v19) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v16);
    v22 = v42;
  }

  else
  {
    v23 = HealthChartsData.Description.substitutionValues.getter();
    (*(v20 + 8))(v16, v19);
    v22 = v42;
    (*(v42 + 104))(v9, *MEMORY[0x277D10250], v4);
    if (*(v23 + 16))
    {
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v25)
      {
        v26 = *(*(v23 + 56) + 8 * v24);
        (*(v22 + 8))(v9, v4);

        v45 = v38;
        v46 = v39;
        v47 = v40;
        CategoryLevel.message(currentValue:context:)(v43, v48, v26);
        goto LABEL_12;
      }
    }

    (*(v22 + 8))(v9, v4);
  }

  v27 = v43;
  HealthChartsData.description.getter();
  if (v21(v13, 1, v19) != 1)
  {
    v28 = HealthChartsData.Description.substitutionValues.getter();
    (*(v20 + 8))(v13, v19);
    v29 = v41;
    (*(v22 + 104))(v41, *MEMORY[0x277D10278], v4);
    if (!*(v28 + 16) || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v31 & 1) == 0))
    {

      (*(v22 + 8))(v29, v4);
      goto LABEL_14;
    }

    v32 = *(*(v28 + 56) + 8 * v30);
    (*(v22 + 8))(v29, v4);

    v45 = v38;
    v46 = v39;
    v47 = v40;
    CategoryLevel.message(count:context:)(v27, v48, v32);
LABEL_12:
    v33 = v48[1];
    v34 = v44;
    *v44 = v48[0];
    v34[1] = v33;
    v35 = v48[3];
    v34[2] = v48[2];
    v34[3] = v35;
    return;
  }

  outlined destroy of HealthChartsData.Description?(v13);
LABEL_14:
  v36 = v44;
  v44[2] = 0u;
  v36[3] = 0u;
  *v36 = 0u;
  v36[1] = 0u;
}

uint64_t outlined destroy of HealthChartsData.Description?(uint64_t a1)
{
  type metadata accessor for HealthChartsData.Description?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t CategoryLevel.message(currentValue:context:)@<X0>(unint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3[2];
  if (!*(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if (v9)
  {
    v10 = (*(v5 + 56) + 16 * result);
    v12 = *v10;
    v11 = v10[1];

    result = DescriptionContext.DataXScale.dateString.getter();
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v12;
    a2[3] = v11;
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = result;
    a2[7] = v13;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

double CategoryLevel.message(count:context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v36 = a1;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Locale();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v35 = v24;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  type metadata accessor for ClosedRange<Int>();
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  v37 = 0.0;
  v38 = 0;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  MEMORY[0x253075120](v9, v11);
  (*(v6 + 8))(v9, v5);
  v25 = *(v12 + 8);
  v25(v15, v11);
  v37 = a3;
  v26 = FloatingPointFormatStyle.format(_:)();
  v28 = v27;
  v29 = DescriptionContext.DataXScale.dateString.getter();
  v31 = v30;
  v25(v18, v11);
  v32 = v35;
  *a2 = v23;
  *(a2 + 8) = v32;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  result = 1.72631378e-306;
  *(a2 + 32) = xmmword_25145FA50;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31;
  return result;
}

uint64_t CategoryLevel.content(with:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *v16 = *v2;
  *&v16[8] = *(v2 + 8);
  CategoryLevel.localizedMessage(for:)(a1, &v19);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v6 = v24;
    v5 = v25;
    v8 = v22;
    v7 = v23;
    v10 = v20;
    v9 = v21;
    v11 = v19;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  *v16 = v11;
  *&v16[8] = *(&v19 + 1);
  *&v16[16] = v10;
  *&v16[24] = v9;
  *&v17 = v8;
  *(&v17 + 1) = v7;
  *&v18 = v6;
  *(&v18 + 1) = v5;
  v12 = *&v16[16];
  *a2 = *v16;
  a2[1] = v12;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  *&v19 = v11;
  *(&v19 + 1) = v4;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v23 = v7;
  v24 = v6;
  v25 = v5;
  outlined init with copy of CommonChartDescription?(v16, &v15);
  return outlined destroy of CommonChartDescription?(&v19);
}

void type metadata accessor for CommonChartDescription?()
{
  if (!lazy cache variable for type metadata for CommonChartDescription?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CommonChartDescription?);
    }
  }
}

uint64_t outlined destroy of CommonChartDescription?(uint64_t a1)
{
  type metadata accessor for CommonChartDescription?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for CategoryLevel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CategoryLevel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CategoryLevel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for HealthChartsData.Description?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AverageQuantity.localizedMessage(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for HealthChartsData.Series();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v66 - v9;
  v10 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v77 = v13;
  v80 = *(v13 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v13);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v66 - v17;
  v18 = type metadata accessor for Locale();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = type metadata accessor for String.LocalizationValue();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = type metadata accessor for HealthChartsData.DescriptionKey();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], v6);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v66 - v29;
  v31 = *(type metadata accessor for DescriptionContext(0) + 20);
  v78 = a1;
  HealthChartsData.description.getter();
  v32 = type metadata accessor for HealthChartsData.Description();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v30, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
LABEL_8:
    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_25145AB10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    print(_:separator:terminator:)();

    v54 = v81;
    v81[2] = 0u;
    v54[3] = 0u;
    *v54 = 0u;
    v54[1] = 0u;
    return result;
  }

  v34 = HealthChartsData.Description.substitutionValues.getter();
  (*(v33 + 8))(v30, v32);
  (*(v23 + 104))(v26, *MEMORY[0x277D10280], v22);
  if (!*(v34 + 16) || (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v36 & 1) == 0))
  {

    (*(v23 + 8))(v26, v22);
    goto LABEL_8;
  }

  v37 = *(*(v34 + 56) + 8 * v35);
  (*(v23 + 8))(v26, v22);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v39;
  v68 = v38;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  v40 = v69;
  FloatingPointFormatStyle.init(locale:)();
  v82 = xmmword_25145FAF0;
  type metadata accessor for ClosedRange<Int>();
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  v41 = v70;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  v42 = v77;
  MEMORY[0x253075120](v41, v77);
  (*(v71 + 8))(v41, v72);
  v43 = *(v80 + 8);
  v80 += 8;
  v43(v40, v42);
  v44 = v73;
  HealthChartsData.series.getter();
  v45 = v76;
  HealthChartsData.Series.unit.getter();
  (*(v74 + 8))(v44, v75);
  v46 = type metadata accessor for HealthChartsUnit();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v45, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    swift_getKeyPath();
    v55 = v45;
    v48 = HealthChartsUnit.subscript.getter();
    v49 = v56;

    (*(v47 + 8))(v55, v46);
  }

  *&v82 = v37;
  v57 = v79;
  v58 = FloatingPointFormatStyle.format(_:)();
  v60 = v59;
  v61 = DescriptionContext.DataXScale.dateString.getter();
  v63 = v62;
  result = (v43)(v57, v42);
  v64 = v81;
  v65 = v67;
  *v81 = v68;
  v64[1] = v65;
  v64[2] = v58;
  v64[3] = v60;
  v64[4] = v48;
  v64[5] = v49;
  v64[6] = v61;
  v64[7] = v63;
  return result;
}

uint64_t AverageQuantity.content(with:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AverageQuantity.localizedMessage(for:)(a1, &v19);
  v3 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v5 = v24;
    v4 = v25;
    v7 = v22;
    v6 = v23;
    v9 = v20;
    v8 = v21;
    v10 = v19;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *&v15 = v10;
  *(&v15 + 1) = *(&v19 + 1);
  *&v16 = v9;
  *(&v16 + 1) = v8;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  *&v18 = v5;
  *(&v18 + 1) = v4;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  v12 = v18;
  a2[2] = v17;
  a2[3] = v12;
  *&v19 = v10;
  *(&v19 + 1) = v3;
  v20 = v9;
  v21 = v8;
  v22 = v7;
  v23 = v6;
  v24 = v5;
  v25 = v4;
  outlined init with copy of CommonChartDescription?(&v15, &v14);
  return outlined destroy of HealthChartsData.Description?(&v19, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88], type metadata accessor for _ContiguousArrayStorage<Any>);
}

unint64_t instantiation function for generic protocol witness table for AverageQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZ06HealthA09BarSeriesVy10Foundation12DateIntervalVSNySdGGSg_AF03DotI0VyAI0K0VGSgATQP_Tt1g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?)();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(0);
  lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?, lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>> and conformance BarSeries<A, B>);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(*a1, v8, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  type metadata accessor for DotSeries<Date>?(0);
  lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type DotSeries<Date>? and conformance <A> A?, type metadata accessor for DotSeries<Date>?, lazy protocol witness table accessor for type DotSeries<Date> and conformance DotSeries<A>);
  v9 = *(v5 + 56);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a1[1], &v8[v9], type metadata accessor for DotSeries<Date>?);
  v10 = *(v5 + 72);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a1[2], &v8[v10], type metadata accessor for DotSeries<Date>?);
  outlined init with take of DotSeries<Date>(v8, a2, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  outlined init with take of DotSeries<Date>(&v8[v9], a2 + *(v5 + 56), type metadata accessor for DotSeries<Date>?);
  return outlined init with take of DotSeries<Date>(&v8[v10], a2 + *(v5 + 72), type metadata accessor for DotSeries<Date>?);
}

uint64_t MinMaxSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MinMaxSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = type metadata accessor for MinMaxSeriesViewModel();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t _s12HealthCharts12MinMaxSeriesV10seriesData10attributesACyxq_G0aB4Core0abG0V0eG0Vy_xq_G_AA0cdE10AttributesVtcfC10Foundation4DateV_SNySdGTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a1;
  v4 = a1;
  v6 = type metadata accessor for MinMaxSeriesAttributes(0);
  v7 = *(v6 - 8);
  v41 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v38 = v13[2];
  v38(v16, v4, v12);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a2, v10, type metadata accessor for MinMaxSeriesAttributes);
  type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for MinMaxSeries<Date, ClosedRange<Double>>, type metadata accessor for MinMaxSeries);
  v18 = a3 + *(v17 + 60);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>);
  AnySeriesData.xScale.getter();
  v19 = AnySeriesData.yScale.getter();
  v21 = v20;
  LOBYTE(v4) = v22;
  type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for MinMaxSeriesViewModel<Date, ClosedRange<Double>>, type metadata accessor for MinMaxSeriesViewModel);
  v24 = v23;
  v25 = v18 + v23[15];
  *v25 = v19;
  *(v25 + 8) = v21;
  *(v25 + 16) = v4 & 1;
  v26 = v18 + v23[16];
  HealthChartsData.SeriesData.aggregation.getter();
  v27 = v18 + v24[17];
  HealthChartsData.SeriesData.unit.getter();
  v38((v18 + v24[18]), v16, v12);
  v28 = v24[20];
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v29 = v18 + v24[19];
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v39, type metadata accessor for MinMaxSeriesAttributes);
  v30 = v13[1];
  v30(v40, v12);
  v30(v16, v12);
  v31 = v10[16];
  v32 = *(v10 + 3);
  v33 = v10[32];
  v34 = *(v10 + 5);
  v35 = v10[48];
  v36 = v18 + v24[21];
  *v36 = *v10;
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  *(v36 + 32) = v33;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  return outlined init with take of DotSeries<Date>(&v10[*(v41 + 28)], v18 + v24[22], type metadata accessor for DotSeriesAttributes);
}

uint64_t MinMaxSeries.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  type metadata accessor for DotSeriesAttributes?(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v139 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DotSeries<Date>();
  v140 = *(v6 - 1);
  v141 = v6;
  v7 = *(v140 + 64);
  MEMORY[0x28223BE20](v6);
  v138 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>?(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v131 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v118 - v13;
  v14 = *(a1 + 16);
  v122 = *(a1 + 32);
  v15 = *(v122 + 8);
  *&v149 = v14;
  *(&v149 + 1) = MEMORY[0x277D839F8];
  v16 = v14;
  v121 = v14;
  *&v150 = v15;
  *(&v150 + 1) = MEMORY[0x277D10358];
  v147 = type metadata accessor for HealthChartsData.SeriesData();
  v129 = *(v147 - 1);
  v17 = v129[8];
  MEMORY[0x28223BE20](v147);
  v128 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v125 = &v118 - v20;
  type metadata accessor for HealthChartsData.SeriesData<Date, Double>();
  v148 = v21;
  v134 = *(v21 - 1);
  v22 = *(v134 + 64);
  MEMORY[0x28223BE20](v21);
  v133 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v132 = &v118 - v25;
  MEMORY[0x28223BE20](v26);
  v127 = &v118 - v27;
  type metadata accessor for DotSeries<Date>?(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v137 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v136 = &v118 - v32;
  MEMORY[0x28223BE20](v33);
  v135 = &v118 - v34;
  MEMORY[0x28223BE20](v35);
  v145 = &v118 - v36;
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>();
  v124 = v37;
  v123 = *(v37 - 1);
  v38 = *(v123 + 64);
  MEMORY[0x28223BE20](v37);
  v120 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a1 + 24);
  v45 = *(a1 + 40);
  *&v149 = v16;
  *(&v149 + 1) = v44;
  *&v150 = v15;
  *(&v150 + 1) = v45;
  v46 = type metadata accessor for HealthChartsData.SeriesData();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v118 - v49;
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
  v52 = v51;
  v53 = *(v51 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v119 = &v118 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v58 = &v118 - v57;
  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v130 = &v118 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v146 = &v118 - v63;
  v64 = *(a1 + 48);
  *&v65 = v121;
  *(&v65 + 1) = v44;
  *&v66 = v122;
  *(&v66 + 1) = v45;
  v67 = v144 + *(a1 + 60);
  v150 = v66;
  v149 = v65;
  v151 = v64;
  v68 = type metadata accessor for MinMaxSeriesViewModel();
  (*(v47 + 16))(v50, &v67[v68[18]], v46);
  v69 = swift_dynamicCast();
  v70 = *(v53 + 56);
  if (v69)
  {
    v70(v43, 0, 1, v52);
    (*(v53 + 32))(v58, v43, v52);
    v71 = v119;
    (*(v53 + 16))(v119, v58, v52);
    v72 = &v67[v68[21]];
    v73 = *(v72 + 1);
    v74 = *(v72 + 3);
    v75 = v72[32];
    v76 = *(v72 + 5);
    v77 = v72[48];
    v78 = v72[16];
    *&v149 = *v72;
    *(&v149 + 1) = v73;
    LOBYTE(v150) = v78;
    *(&v150 + 1) = v74;
    LOBYTE(v151) = v75;
    v152 = v76;
    v153 = v77;
    outlined copy of AttributeColor(v149, v73, v78);
    v79 = v120;
    BarSeries.init<>(_:attributes:)(v71, &v149, v120);
    (*(v53 + 8))(v58, v52);
    v80 = v146;
    outlined init with take of DotSeries<Date>(v79, v146, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>);
    v81 = 0;
    v82 = v80;
  }

  else
  {
    v81 = 1;
    v70(v43, 1, 1, v52);
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v43, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>?);
    v82 = v146;
  }

  (*(v123 + 56))(v82, v81, 1, v124);
  v83 = v68[19];
  v84 = v67;
  v124 = v129[2];
  v124(v125, &v67[v83], v147);
  v85 = v126;
  v86 = v148;
  v87 = swift_dynamicCast();
  v88 = v134;
  v89 = *(v134 + 56);
  v129 = v89;
  v143 = v84;
  v144 = v68;
  if (v87)
  {
    (v89)(v85, 0, 1, v86);
    v90 = v127;
    (*(v88 + 32))(v127, v85, v86);
    v91 = *(v88 + 16);
    v92 = v132;
    v91(v132, v90, v148);
    v93 = v139;
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(&v84[v68[22]], v139, type metadata accessor for DotSeriesAttributes);
    v94 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
    v95 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v95);
    *(&v118 - 2) = v92;
    v125 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5(closure #1 in DotSeries.init<>(seriesData:attributes:)partial apply, (&v118 - 4), v95);
    v126 = 0;

    v96 = v141;
    v97 = v138;
    v91(&v138[v141[13]], v92, v148);
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v93, v97 + v96[14], type metadata accessor for DotSeriesAttributes?);
    UUID.init()();
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v93, type metadata accessor for DotSeriesAttributes?);
    v98 = *(v88 + 8);
    v98(v127, v148);
    *(v97 + v96[15]) = v125;
    v98(v92, v148);
    v86 = v148;
    v99 = v145;
    outlined init with take of DotSeries<Date>(v97, v145, type metadata accessor for DotSeries<Date>);
    v100 = 0;
    v101 = v140;
  }

  else
  {
    v100 = 1;
    (v89)(v85, 1, 1, v86);
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v85, type metadata accessor for HealthChartsData.SeriesData<Date, Double>?);
    v126 = 0;
    v101 = v140;
    v96 = v141;
    v99 = v145;
  }

  v102 = v131;
  v148 = *(v101 + 56);
  v148(v99, v100, 1, v96);
  v124(v128, &v143[v144[20]], v147);
  if (swift_dynamicCast())
  {
    (v129)(v102, 0, 1, v86);
    v103 = v133;
    (*(v88 + 32))(v133, v102, v86);
    v147 = *(v88 + 16);
    v104 = v132;
    (v147)(v132, v103, v86);
    v105 = v139;
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(&v143[v144[22]], v139, type metadata accessor for DotSeriesAttributes);
    v106 = type metadata accessor for DotSeriesAttributes(0);
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
    v107 = HealthChartsData.SeriesData.points.getter();
    MEMORY[0x28223BE20](v107);
    *(&v118 - 2) = v104;
    v108 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation4DateVSdGG_0E00I4MarkVs5NeverOTg5(partial apply for closure #1 in DotSeries.init<>(seriesData:attributes:), (&v118 - 4), v107);

    v99 = v145;
    v109 = v138;
    (v147)(&v138[v96[13]], v104, v86);
    outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v105, v109 + v96[14], type metadata accessor for DotSeriesAttributes?);
    UUID.init()();
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v105, type metadata accessor for DotSeriesAttributes?);
    v110 = *(v88 + 8);
    v110(v133, v86);
    *(v109 + v96[15]) = v108;
    v110(v104, v86);
    v111 = v135;
    outlined init with take of DotSeries<Date>(v109, v135, type metadata accessor for DotSeries<Date>);
    v112 = 0;
  }

  else
  {
    v112 = 1;
    (v129)(v102, 1, 1, v86);
    outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v102, type metadata accessor for HealthChartsData.SeriesData<Date, Double>?);
    v111 = v135;
  }

  v148(v111, v112, 1, v96);
  v113 = v146;
  v114 = v130;
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v146, v130, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  *&v149 = v114;
  v115 = v136;
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v99, v136, type metadata accessor for DotSeries<Date>?);
  *(&v149 + 1) = v115;
  v116 = v137;
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(v111, v137, type metadata accessor for DotSeries<Date>?);
  *&v150 = v116;
  _s6Charts19ChartContentBuilderV10buildBlockyQrxxQpRvzAA0bC0RzlFZ06HealthA09BarSeriesVy10Foundation12DateIntervalVSNySdGGSg_AF03DotI0VyAI0K0VGSgATQP_Tt1g5(&v149, v142);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v111, type metadata accessor for DotSeries<Date>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v99, type metadata accessor for DotSeries<Date>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v113, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v116, type metadata accessor for DotSeries<Date>?);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v115, type metadata accessor for DotSeries<Date>?);
  return outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(v114, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?);
}

void type metadata accessor for HealthChartsData.SeriesData<Date, Double>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v0 = type metadata accessor for HealthChartsData.SeriesData();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>);
    }
  }
}

uint64_t outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DotSeries<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MinMaxSeries.init<>(_:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MinMaxSeriesAttributes(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  outlined init with copy of BarSeries<DateInterval, ClosedRange<Double>>?(a2, v9, type metadata accessor for MinMaxSeriesAttributes);
  _s12HealthCharts12MinMaxSeriesV10seriesData10attributesACyxq_G0aB4Core0abG0V0eG0Vy_xq_G_AA0cdE10AttributesVtcfC10Foundation4DateV_SNySdGTt2g5(v16, v9, a3);
  outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(a2, type metadata accessor for MinMaxSeriesAttributes);
  return (*(v12 + 8))(a1, v11);
}

uint64_t outlined destroy of HealthChartsData.SeriesData<Date, ClosedRange<Double>>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MinMaxSeriesViewModel.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t MinMaxSeriesViewModel.yScale.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t MinMaxSeriesViewModel.aggregation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t instantiation function for generic protocol witness table for MinMaxSeries<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for ChartContent.Body : ChartContent in MinMaxSeries<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t associated type witness table accessor for SeriesData.T : Comparable in MinMaxSeriesViewModel<A, B>(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) + 8);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata completion function for MinMaxSeries(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    result = type metadata accessor for MinMaxSeriesViewModel();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25143728C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = *(a3 + 16);
    v12 = *(a3 + 32);
    v13 = *(a3 + 48);
    v10 = type metadata accessor for MinMaxSeriesViewModel();
    return (*(*(v10 - 8) + 48))(a1 + *(a3 + 60), a2, v10);
  }
}

uint64_t sub_2514373A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v13 = *(a4 + 16);
    v14 = *(a4 + 32);
    v15 = *(a4 + 48);
    v12 = type metadata accessor for MinMaxSeriesViewModel();
    return (*(*(v12 - 8) + 56))(a1 + *(a4 + 60), a2, a2, v12);
  }
}

void type metadata completion function for MinMaxSeriesViewModel(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    type metadata accessor for DotSeriesAttributes?(319, &lazy cache variable for type metadata for ClosedRange<Double>?, type metadata accessor for ClosedRange<Double>);
    if (v5 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v6 <= 0x3F)
      {
        type metadata accessor for DotSeriesAttributes?(319, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
        if (v7 <= 0x3F)
        {
          v11 = a1[3];
          v12 = a1[5];
          type metadata accessor for HealthChartsData.SeriesData();
          if (v8 <= 0x3F)
          {
            type metadata accessor for HealthChartsData.SeriesData();
            if (v9 <= 0x3F)
            {
              type metadata accessor for DotSeriesAttributes(319);
              if (v10 <= 0x3F)
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

uint64_t sub_2514376D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) + 8);
  v7 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for HealthChartsData.Aggregation();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = *(a3 + 64);
    }

    else
    {
      type metadata accessor for DotSeriesAttributes?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
      if (*(*(v16 - 8) + 84) != a2)
      {
        v25 = *(a3 + 24);
        v26 = *(a3 + 40);
        v18 = type metadata accessor for HealthChartsData.SeriesData();
        if (*(*(v18 - 8) + 84) == a2)
        {
          v19 = v18;
          v20 = *(v18 - 8);
          v21 = *(a3 + 72);
        }

        else
        {
          v22 = type metadata accessor for HealthChartsData.SeriesData();
          if (*(*(v22 - 8) + 84) != a2)
          {
            if (a2 == 253)
            {
              v23 = *(a1 + *(a3 + 84) + 16);
              if (v23 > 2)
              {
                return (v23 ^ 0xFF) + 1;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              v24 = type metadata accessor for DotSeriesAttributes(0);
              return (*(*(v24 - 8) + 48))(a1 + *(a3 + 88), a2, v24);
            }
          }

          v19 = v22;
          v20 = *(v22 - 8);
          v21 = *(a3 + 76);
        }

        return (*(v20 + 48))(a1 + v21, a2, v19);
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = *(a3 + 68);
    }

    v11 = *(v14 + 48);
    v12 = a1 + v15;
  }

  return v11(v12, a2, v10);
}

uint64_t sub_251437A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(*(a4 + 32) + 8);
  v9 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    v15 = type metadata accessor for HealthChartsData.Aggregation();
    if (*(*(v15 - 8) + 84) == a3)
    {
      v12 = v15;
      v16 = *(v15 - 8);
      v17 = *(a4 + 64);
    }

    else
    {
      type metadata accessor for DotSeriesAttributes?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
      if (*(*(v18 - 8) + 84) != a3)
      {
        v25 = *(a4 + 24);
        v26 = *(a4 + 40);
        v20 = type metadata accessor for HealthChartsData.SeriesData();
        if (*(*(v20 - 8) + 84) == a3)
        {
          v21 = v20;
          v22 = *(v20 - 8);
          v23 = *(a4 + 72);
        }

        else
        {
          result = type metadata accessor for HealthChartsData.SeriesData();
          if (*(*(result - 8) + 84) != a3)
          {
            if (a3 == 253)
            {
              *(a1 + *(a4 + 84) + 16) = -a2;
            }

            else
            {
              v24 = type metadata accessor for DotSeriesAttributes(0);
              return (*(*(v24 - 8) + 56))(a1 + *(a4 + 88), a2, a2, v24);
            }

            return result;
          }

          v21 = result;
          v22 = *(result - 8);
          v23 = *(a4 + 76);
        }

        return (*(v22 + 56))(a1 + v23, a2, a2, v21);
      }

      v12 = v18;
      v16 = *(v18 - 8);
      v17 = *(a4 + 68);
    }

    v13 = *(v16 + 56);
    v14 = a1 + v17;
  }

  return v13(v14, a2, a2, v12);
}

void type metadata accessor for DotSeriesAttributes?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    type metadata accessor for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>();
    lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?, lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>> and conformance BarSeries<A, B>);
    lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(&lazy protocol witness table cache variable for type DotSeries<Date>? and conformance <A> A?, type metadata accessor for DotSeries<Date>?, lazy protocol witness table accessor for type DotSeries<Date> and conformance DotSeries<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

void type metadata accessor for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>()
{
  if (!lazy cache variable for type metadata for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>)
  {
    type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(255);
    type metadata accessor for DotSeries<Date>?(255);
    v0 = type metadata accessor for BuilderTuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderTuple<Pack{BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?}>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BarSeries<DateInterval, ClosedRange<Double>>? and conformance <A> A?(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v10[4] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?)()
{
  if (!lazy cache variable for type metadata for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?))
  {
    type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>?(255);
    type metadata accessor for DotSeries<Date>?(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (BarSeries<DateInterval, ClosedRange<Double>>?, DotSeries<Date>?, DotSeries<Date>?));
    }
  }
}

double static ScalarDomain.fixedNumeric<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v9);
  *(&v22 + 1) = a2;
  v23 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(v7 + 32))(boxed_opaque_existential_1, v11, a2);
  a4[4] = FixedNumeric.debugDescription.getter();
  a4[5] = v13;
  outlined init with copy of FixedNumeric(&v21, v19);
  v14 = swift_allocObject();
  v15 = v19[1];
  *(v14 + 16) = v19[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v20;
  *a4 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  a4[1] = v14;
  v16 = swift_allocObject();
  result = *&v21;
  v18 = v22;
  *(v16 + 16) = v21;
  *(v16 + 32) = v18;
  *(v16 + 48) = v23;
  a4[2] = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  a4[3] = v16;
  return result;
}

uint64_t FixedNumeric.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t FixedNumeric.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 1) != 0 || (v11 = v4[4], __swift_project_boxed_opaque_existential_1(v4, v4[3]), result = dispatch thunk of IntervalChartValue.start.getter(), *&v13 <= a1) && (v12 = v4[4], __swift_project_boxed_opaque_existential_1(v4, v4[3]), result = dispatch thunk of IntervalChartValue.end.getter(), *&v13 >= a2))
  {
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    result = IntervalChartValue.asClosedRange()();
    *(a4 + 8) = v13;
    *a4 = 1;
  }

  else
  {
    *(a4 + 8) = a1;
    *(a4 + 16) = a2;
    *a4 = 0;
  }

  return result;
}

uint64_t FixedNumeric.debugDescription.getter()
{
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0x286465786966;
  v20 = 0xE600000000000000;
  specialized AxisDomain<>.outputStyle.getter(v6);
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of IntervalChartValue.start.getter();
  v17 = v18;
  v8 = FloatingPointFormatStyle.format(_:)();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v6, v2);
  MEMORY[0x2530761B0](v8, v10);

  MEMORY[0x2530761B0](15917, 0xE200000000000000);
  specialized AxisDomain<>.outputStyle.getter(v6);
  v12 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of IntervalChartValue.end.getter();
  v17 = v18;
  v13 = FloatingPointFormatStyle.format(_:)();
  v15 = v14;
  v11(v6, v2);
  MEMORY[0x2530761B0](v13, v15);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v19;
}

uint64_t sub_251438670()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type FixedNumeric and conformance FixedNumeric()
{
  result = lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric;
  if (!lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric;
  if (!lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedNumeric and conformance FixedNumeric);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FixedNumeric(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FixedNumeric and conformance FixedNumeric();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FixedNumeric(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FixedNumeric(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t NoDataMessage.content(with:)@<X0>(void *a1@<X8>)
{
  result = DescriptionContext.DataXScale.dateString.getter();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0x61746144206F4ELL;
  a1[3] = 0xE700000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = result;
  a1[7] = v3;
  return result;
}

uint64_t protocol witness for DescriptionContentProvider.content(with:) in conformance NoDataMessage@<X0>(void *a1@<X8>)
{
  result = DescriptionContext.DataXScale.dateString.getter();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0x61746144206F4ELL;
  a1[3] = 0xE700000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = result;
  a1[7] = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NoDataMessage(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NoDataMessage and conformance NoDataMessage();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CommonChartDescription and conformance CommonChartDescription()
{
  result = lazy protocol witness table cache variable for type CommonChartDescription and conformance CommonChartDescription;
  if (!lazy protocol witness table cache variable for type CommonChartDescription and conformance CommonChartDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonChartDescription and conformance CommonChartDescription);
  }

  return result;
}

uint64_t static DateInterval.chartIntervalForNow()()
{
  v0 = type metadata accessor for Date();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  Date.init()();
  return DateInterval.init(start:duration:)();
}

uint64_t one-time initialization function for charts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.charts);
  __swift_project_value_buffer(v0, static Logger.charts);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.charts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for charts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.charts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RectangleMark.init<A>(for:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateInterval();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  v27 = v18;
  v28 = a3;
  v29 = v22;
  v30 = a4;
  v23 = type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  (*(v10 + 16))(v13, a2, v9);
  v27 = 0;
  LOBYTE(v28) = 1;
  RectangleMark.init<A>(x:y:unit:width:)(v21, v17, v13, &v27, a3, a4, v26);
  (*(v10 + 8))(a2, v9);
  return (*(*(v23 - 8) + 8))(a1, v23);
}

uint64_t RectangleMark.init<A, B, C>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v15 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v27 = type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  RectangleMark.init<A, B, C>(x:y:)(v22, v17, a2, a3, a4, a5, v30, a7, a8);
  return (*(*(v27 - 8) + 8))(a1, v27);
}

uint64_t RectangleMark.init<A, B, C>(for:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v15 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v27 = type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  RectangleMark.init<A, B, C>(x:y:width:)(v22, v17, a2, a3, a4, a5, v30, a7, a8);
  return (*(*(v27 - 8) + 8))(a1, v27);
}

uint64_t RectangleMark.init<A, B, C>(x:y:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a3;
  v38 = a8;
  v31 = a5;
  v32 = a6;
  v36 = a2;
  v39 = a1;
  v41 = a9;
  type metadata accessor for PlottableValue<Double>();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v30 - v15;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a7;
  v21 = type metadata accessor for PlottableValue();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v33 = &v30 - v23;
  v44 = 29560;
  v45 = 0xE200000000000000;
  v44 = String.init<A>(_:)();
  v45 = v24;
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  (*(v16 + 8))(v20, a4);

  v44 = 29561;
  v45 = 0xE200000000000000;
  v44 = String.init<A>(_:)();
  v45 = v25;
  v26 = v36;
  v27 = v31;
  dispatch thunk of IntervalChartValue.start.getter();
  v42 = v43;
  static PlottableValue.value<A>(_:_:)();

  v44 = 25977;
  v45 = 0xE200000000000000;
  v44 = String.init<A>(_:)();
  v45 = v28;
  dispatch thunk of IntervalChartValue.end.getter();
  v42 = v43;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  (*(*(v27 - 8) + 8))(v26, v27);
  return (*(*(v37 - 8) + 8))(v39);
}

uint64_t RectangleMark.init<A, B, C>(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a5;
  v43 = a8;
  v36[0] = a6;
  v41 = a2;
  v45 = a9;
  type metadata accessor for PlottableValue<Double>();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v40 = v36 - v17;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PlottableValue();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v46 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v39 = v36 - v27;
  v49 = 29560;
  v50 = 0xE200000000000000;
  v49 = String.init<A>(_:)();
  v50 = v28;
  v37 = a3;
  v38 = a1;
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v36[1] = a7;
  static PlottableValue.value<A>(_:_:)();
  v29 = *(v18 + 8);
  v29(v22, a4);

  v49 = 25976;
  v50 = 0xE200000000000000;
  v49 = String.init<A>(_:)();
  v50 = v30;
  dispatch thunk of IntervalChartValue.end.getter();
  static PlottableValue.value<A>(_:_:)();
  v29(v22, a4);

  v49 = 29561;
  v50 = 0xE200000000000000;
  v49 = String.init<A>(_:)();
  v50 = v31;
  v32 = v41;
  v33 = v42;
  dispatch thunk of IntervalChartValue.start.getter();
  v47 = v48;
  static PlottableValue.value<A>(_:_:)();

  v49 = 25977;
  v50 = 0xE200000000000000;
  v49 = String.init<A>(_:)();
  v50 = v34;
  dispatch thunk of IntervalChartValue.end.getter();
  v47 = v48;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
  (*(*(v33 - 8) + 8))(v32, v33);
  return (*(*(v37 - 8) + 8))(v38);
}

uint64_t RectangleMark.init<A>(x:y:unit:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a5;
  v50 = a6;
  v54 = a3;
  v48 = a2;
  v52 = a7;
  type metadata accessor for PlottableValue<Double>();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v43 - v13;
  type metadata accessor for Calendar?();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Date();
  v18 = *(v53 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v53);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v43 - v26;
  type metadata accessor for PlottableValue<Date>();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v43 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a4;
  v44 = *(a4 + 8);
  v57 = 29560;
  v58 = 0xE200000000000000;
  v57 = String.init<A>(_:)();
  v58 = v31;
  v46 = a1;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v32 = *(v18 + 8);
  v33 = v24;
  v34 = v53;
  v32(v33, v53);
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v32(v21, v34);
  Date.init(timeIntervalSinceReferenceDate:)();
  v35 = type metadata accessor for Calendar();
  (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:unit:calendar:)();
  outlined destroy of Calendar?(v17);
  v32(v27, v34);

  v57 = 29561;
  v58 = 0xE200000000000000;
  v57 = String.init<A>(_:)();
  v58 = v36;
  v37 = v48;
  v38 = v49;
  dispatch thunk of IntervalChartValue.start.getter();
  v55 = v56;
  static PlottableValue.value<A>(_:_:)();

  v57 = 25977;
  v58 = 0xE200000000000000;
  v57 = String.init<A>(_:)();
  v58 = v39;
  dispatch thunk of IntervalChartValue.end.getter();
  v55 = v56;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  v40 = type metadata accessor for Calendar.Component();
  (*(*(v40 - 8) + 8))(v54, v40);
  (*(*(v38 - 8) + 8))(v37, v38);
  v41 = type metadata accessor for DateInterval();
  return (*(*(v41 - 8) + 8))(v46, v41);
}

void type metadata accessor for PlottableValue<Double>()
{
  if (!lazy cache variable for type metadata for PlottableValue<Double>)
  {
    v0 = type metadata accessor for PlottableValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlottableValue<Double>);
    }
  }
}

void type metadata accessor for Calendar?()
{
  if (!lazy cache variable for type metadata for Calendar?)
  {
    type metadata accessor for Calendar();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Calendar?);
    }
  }
}

uint64_t outlined destroy of Calendar?(uint64_t a1)
{
  type metadata accessor for Calendar?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval()
{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    type metadata accessor for DateInterval();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

uint64_t DataSeries.init(attributes:seriesData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v30 = a1;
  v31 = a3;
  v4 = type metadata accessor for HealthChartsData.Series();
  v27 = v4;
  v29 = *(v4 - 8);
  v5 = v29;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataSeries();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  (*(v5 + 16))(v8, a2, v4, v12);
  v15 = v9[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  CommonSeriesData.init(data:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness, v18, &v14[v15]);
  v19 = type metadata accessor for HealthChartsAttributes();
  v20 = v30;
  *v14 = *(v30 + *(v19 + 40));
  v21 = v9[9];
  v22 = type metadata accessor for ChartAttributes();
  (*(*(v22 - 8) + 16))(&v14[v21], v20, v22);
  v23 = *(*(v19 - 8) + 8);

  v23(v20, v19);
  (*(v29 + 32))(&v14[v9[10]], v28, v27);
  v24 = v31;
  (*(v10 + 32))(v31, v14, v9);
  return (*(v10 + 56))(v24, 0, 1, v9);
}

uint64_t HealthStaticChart<>.init(attributes:data:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  type metadata accessor for BasicChartModel<DateDomain>(0, &lazy cache variable for type metadata for BasicChartModel<DateDomain>, type metadata accessor for BasicChartModel);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  outlined init with copy of HealthChartsAttributes<DateDomain>(a1, &v12[*(v9 + 44)], type metadata accessor for HealthChartsAttributes<DateDomain>);
  outlined init with copy of HealthChartsAttributes<DateDomain>(a3, &v12[*(v9 + 48)], type metadata accessor for HealthChartsContext);
  type metadata accessor for BasicChartModel<DateDomain>(0, &lazy cache variable for type metadata for HealthStaticChartViewModel<DateDomain>, type metadata accessor for HealthStaticChartViewModel);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = specialized HealthStaticChartViewModel.init<A>(model:)(v12);
  outlined destroy of HealthChartsContext(a3, type metadata accessor for HealthChartsContext);
  (*(v14 + 8))(a2, v13);
  result = outlined destroy of HealthChartsContext(a1, type metadata accessor for HealthChartsAttributes<DateDomain>);
  *a4 = v18;
  return result;
}

{
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for BasicChartModel<ScalarDomain>, type metadata accessor for BasicChartModel);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for HealthChartsData();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  outlined init with copy of HealthChartsAttributes<ScalarDomain>(a1, &v12[*(v9 + 44)]);
  outlined init with copy of HealthChartsAttributes<DateDomain>(a3, &v12[*(v9 + 48)], type metadata accessor for HealthChartsContext);
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthStaticChartViewModel<ScalarDomain>, type metadata accessor for HealthStaticChartViewModel);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = specialized HealthStaticChartViewModel.init<A>(model:)(v12);
  outlined destroy of HealthChartsContext(a3, type metadata accessor for HealthChartsContext);
  (*(v14 + 8))(a2, v13);
  result = outlined destroy of HealthChartsAttributes<ScalarDomain>(a1);
  *a4 = v18;
  return result;
}

void type metadata accessor for BasicChartModel<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t HealthStaticChartViewModel._model.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  outlined init with take of HealthChartsDataProvider(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t HealthStaticChartViewModel.model.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  swift_beginAccess();
  return outlined init with copy of HealthStaticChartKey(v1 + 16, a1);
}

uint64_t key path setter for HealthStaticChartViewModel.model : <A>HealthStaticChartViewModel<A>(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of HealthStaticChartKey(a1, v5);
  v3 = *a2;
  return HealthStaticChartViewModel.model.setter(v5);
}

uint64_t HealthStaticChartViewModel.model.setter(uint64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  outlined init with copy of HealthStaticChartKey((v1 + 2), v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  v6 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(KeyPath);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HealthStaticChartViewModel._data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v4 = type metadata accessor for HealthChartsData();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t HealthStaticChartViewModel._data.setter(uint64_t a1)
{
  v3 = direct field offset for HealthStaticChartViewModel._data;
  swift_beginAccess();
  v4 = type metadata accessor for HealthChartsData();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for HealthStaticChartViewModel.data : <A>HealthStaticChartViewModel<A>(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return HealthStaticChartViewModel.data.setter(v8);
}

uint64_t HealthStaticChartViewModel.data.setter(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for HealthChartsData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  HealthStaticChartViewModel._data.getter(v9);
  v16[0] = *(v4 + 80);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData, MEMORY[0x277D102A8]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v6 + 8);
  v12 = v11(v9, v5);
  if (v10)
  {
    (*(v6 + 16))(v9, a1, v5);
    HealthStaticChartViewModel._data.setter(v9);
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    v16[-1] = v16[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v16[-1] = v2;
    *(&v16[-1] + 1) = a1;
    HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(v14);
  }

  return v11(a1, v5);
}

uint64_t closure #1 in HealthStaticChartViewModel.data.setter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HealthChartsData();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  return HealthStaticChartViewModel._data.setter(v7);
}

uint64_t HealthStaticChartViewModel._attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for HealthChartsAttributes();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t HealthStaticChartViewModel._attributes.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for HealthChartsAttributes();
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t (*HealthStaticChartViewModel._attributes.modify())()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return HealthStaticChartViewModel._attributes.modify;
}

uint64_t HealthStaticChartViewModel.data.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v7 = *(*v2 + 80);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  return a2(v5);
}

uint64_t HealthStaticChartViewModel.attributes.setter(uint64_t a1)
{
  v3 = *v1;
  specialized HealthStaticChartViewModel.attributes.setter(a1);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for HealthChartsAttributes();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t closure #1 in HealthStaticChartViewModel.attributes.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = type metadata accessor for HealthChartsAttributes();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a2, v7);
  return HealthStaticChartViewModel._attributes.setter(v9);
}

void (*HealthStaticChartViewModel.attributes.modify(uint64_t *a1))(void *a1)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *v1;
  MEMORY[0x28223BE20](v4);
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  v12 = *(*v1 + 128);
  *v5 = v2;
  MEMORY[0x28223BE20](v11);
  swift_getKeyPath();
  type metadata accessor for HealthStaticChartViewModel();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5[5] = HealthStaticChartViewModel._attributes.modify();
  return HealthStaticChartViewModel.attributes.modify;
}

void HealthStaticChartViewModel.attributes.modify(void *a1)
{
  HealthStaticChartViewModel.attributes.modify(a1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  $defer #1 <A>() in HealthStaticChartViewModel.attributes.modify(v2);

  free(v1);
}

uint64_t HealthStaticChartViewModel._isLoading.getter()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HealthStaticChartViewModel._isLoading.setter(char a1)
{
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*HealthStaticChartViewModel._isLoading.modify())()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return HealthStaticChartViewModel._isLoading.modify;
}

uint64_t key path getter for HealthStaticChartViewModel.isLoading : <A>HealthStaticChartViewModel<A>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HealthStaticChartViewModel.isLoading.getter();
  *a2 = result & 1;
  return result;
}

uint64_t HealthStaticChartViewModel.isLoading.getter()
{
  v4 = *(*v0 + 80);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  v2 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t HealthStaticChartViewModel.isLoading.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 120);
  swift_beginAccess();
  v13 = *(v2 + v5);
  v6 = a1 & 1;
  v12 = *(v4 + 80);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    v8 = *(*v2 + 120);
    result = swift_beginAccess();
    *(v2 + v8) = v6;
  }

  else
  {
    MEMORY[0x28223BE20](v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(v11);
  }

  return result;
}

void (*HealthStaticChartViewModel.isLoading.modify(uint64_t *a1))(void *a1)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *v1;
  MEMORY[0x28223BE20](v4);
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  KeyPath = swift_getKeyPath();
  HealthStaticChartViewModel.access<A>(keyPath:)(KeyPath);

  v12 = *(*v1 + 128);
  *v5 = v2;
  MEMORY[0x28223BE20](v11);
  swift_getKeyPath();
  type metadata accessor for HealthStaticChartViewModel();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5[5] = HealthStaticChartViewModel._isLoading.modify();
  return HealthStaticChartViewModel.isLoading.modify;
}

uint64_t $defer #1 <A>() in HealthStaticChartViewModel.attributes.modify(uint64_t a1)
{
  v1 = *(*a1 + 128);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for HealthStaticChartViewModel();
  swift_getWitnessTable();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t HealthStaticChartViewModel.seriesAttributes.getter@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for HealthChartsAttributes();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  HealthStaticChartViewModel.attributes.getter();
  v10 = *&v9[*(v5 + 40)];
  v11 = *(v6 + 8);

  result = v11(v9, v5);
  *a1 = v10;
  return result;
}

uint64_t HealthStaticChartViewModel.descriptionProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for HealthChartsAttributes();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  HealthStaticChartViewModel.attributes.getter();
  outlined init with copy of HealthStaticChartKey(&v9[*(v5 + 36)], a1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t HealthStaticChartViewModel.chartAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for HealthChartsAttributes();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  HealthStaticChartViewModel.attributes.getter();
  v10 = type metadata accessor for ChartAttributes();
  (*(*(v10 - 8) + 16))(a1, v9, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t HealthStaticChartViewModel.seriesData.getter()
{
  v0 = type metadata accessor for HealthChartsData();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HealthStaticChartViewModel.data.getter();
  HealthChartsData.series.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t outlined init with copy of HealthChartsAttributes<ScalarDomain>(uint64_t a1, uint64_t a2)
{
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<ScalarDomain>, type metadata accessor for HealthChartsAttributes);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
    v7 = a3(a1, &type metadata for ScalarDomain, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of HealthChartsAttributes<ScalarDomain>(uint64_t a1)
{
  _s12HealthCharts15BasicChartModelVyAA12ScalarDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<ScalarDomain>, type metadata accessor for HealthChartsAttributes);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_25143C158(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t HealthStaticChartViewModel.access<A>(keyPath:)(void *a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(void *a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t *HealthStaticChartViewModel.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = direct field offset for HealthStaticChartViewModel._data;
  v3 = type metadata accessor for HealthChartsData();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 112);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for HealthChartsAttributes();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);
  v8 = *(*v0 + 128);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t HealthStaticChartViewModel.__deallocating_deinit()
{
  HealthStaticChartViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CommonSeriesData.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v50 = a3;
  v51 = a4;
  v7 = type metadata accessor for ClosedRange();
  v8 = type metadata accessor for Optional();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  type metadata accessor for ClosedRange<Date>?(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  HealthChartsData.Series.dateXScale.getter();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    outlined destroy of HealthChartsContext(v18, type metadata accessor for ClosedRange<Date>?);
    v28 = a2;
  }

  else
  {
    outlined init with take of ClosedRange<Date>(v18, v27, type metadata accessor for ClosedRange<Date>);
    v28 = a2;
    if (type metadata accessor for Date() == a2)
    {
      outlined init with take of ClosedRange<Date>(v27, v24, type metadata accessor for ClosedRange<Date>);
      v34 = swift_dynamicCast();
      (*(*(v7 - 8) + 56))(v14, v34 ^ 1u, 1, v7);
      v29 = v49;
      (*(v47 + 32))(v49, v14, v48);
      goto LABEL_10;
    }

    outlined destroy of HealthChartsContext(v27, type metadata accessor for ClosedRange<Date>);
  }

  v29 = v49;
  v30 = HealthChartsData.Series.scalarXScale.getter();
  if ((v32 & 1) != 0 || v28 != MEMORY[0x277D839F8])
  {
    (*(*(v7 - 8) + 56))(v29, 1, 1, v7);
  }

  else
  {
    v52 = v30;
    v53 = v31;
    type metadata accessor for ClosedRange<Double>();
    v33 = swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v11, v33 ^ 1u, 1, v7);
    (*(v47 + 32))(v29, v11, v48);
  }

LABEL_10:
  v35 = HealthChartsData.Series.yScale.getter();
  v37 = v36;
  v39 = v38;
  v40 = type metadata accessor for CommonSeriesData();
  v41 = v29 + v40[11];
  *v41 = v35;
  *(v41 + 8) = v37;
  *(v41 + 16) = v39 & 1;
  v42 = v29 + v40[12];
  HealthChartsData.Series.finestAggregation.getter();
  v43 = v29 + v40[13];
  HealthChartsData.Series.unit.getter();
  v44 = type metadata accessor for HealthChartsData.Series();
  return (*(*(v44 - 8) + 8))(a1, v44);
}

uint64_t DataSeries.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = *(a1 - 8);
  v33 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 24);
  v31 = *(v6 + 16);
  v32 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  v8 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Array();
  v36 = v9;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(255);
  v11 = v10;
  v35 = v10;
  WitnessTable = swift_getWitnessTable();
  v43[0] = v9;
  v43[1] = v8;
  v43[2] = v11;
  v43[3] = WitnessTable;
  v43[4] = MEMORY[0x277D83B98];
  v12 = type metadata accessor for ForEach();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v30 - v17;
  v42 = *v2;
  v19 = type metadata accessor for Array();
  v20 = swift_getWitnessTable();
  MEMORY[0x2530761D0](v43, v19, v20);
  v42 = v43[0];
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v43[0] = Array.init<A>(_:)();
  v21 = v31;
  v39 = v31;
  v40 = v7;
  v30[1] = swift_getKeyPath();
  v22 = v32;
  (*(v4 + 16))(v32, v30[0], a1);
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v7;
  (*(v4 + 32))(v24 + v23, v22, a1);
  v25 = swift_allocObject();
  v25[2] = v21;
  v25[3] = v7;
  v25[4] = partial apply for closure #1 in DataSeries.body.getter;
  v25[5] = v24;
  v29 = lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR, lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS);
  ForEach<>.init(_:id:content:)();
  v41 = v29;
  v26 = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v15, v12, v26);
  v27 = *(v37 + 8);
  v27(v15, v12);
  static ChartContentBuilder.buildExpression<A>(_:)(v18, v12, v26);
  return (v27)(v18, v12);
}

uint64_t closure #1 in DataSeries.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v54 = a4;
  v6 = type metadata accessor for HealthChartsData.SeriesDataShape();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v43 - v12;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR();
  v53 = v13;
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v45 = &v43 - v18;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = type metadata accessor for DataSeries();
  v24 = *(v23 + 40);
  v25 = *(HealthChartsData.Series.data.getter() + 16);

  if (v25 <= a1)
  {
    (*(v51 + 56))(v22, 1, 1, v53);
    goto LABEL_8;
  }

  result = HealthChartsData.Series.data.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v27 = v49;
    v28 = result + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * a1;
    v29 = v50;
    (*(v49 + 16))(v9, v28, v50);

    v30 = (a3 + *(v23 + 36));
    v31 = *v30;
    v32 = v30 + *(type metadata accessor for ChartAttributes() + 40);
    v34 = *(v32 + 4);
    v33 = *(v32 + 5);
    v35 = *(v32 + 6);
    v55 = *(v32 + 1);
    v43 = *(v32 + 1);
    v56 = v43;
    v57 = v34;
    v58 = v33;
    v59 = v35;
    v36 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();

    HealthChartsAttributes.SeriesTypeAttributes.series(from:chartHeight:yDomain:)(v9, &v55, v36, v16, v31);

    (*(v27 + 8))(v9, v29);
    v37 = v47;
    v38 = *(v46 + 56);
    v38(v16, 0, 1, v47);
    v39 = v16;
    v40 = v44;
    outlined init with take of BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(v39, v44);
    v41 = v40;
    v42 = v45;
    outlined init with take of BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(v41, v45);
    v38(v42, 0, 1, v37);
    outlined init with take of ClosedRange<Date>(v42, v22, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR);
    (*(v51 + 56))(v22, 0, 1, v53);
LABEL_8:
    outlined init with take of ClosedRange<Date>(v22, v54, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for SeriesContent.data.getter in conformance DataSeries<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonSeriesData();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t protocol witness for SeriesData.xScale.getter in conformance CommonSeriesData<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  type metadata accessor for ClosedRange();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t protocol witness for SeriesData.yScale.getter in conformance CommonSeriesData<A>(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t protocol witness for SeriesData.aggregation.getter in conformance CommonSeriesData<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t specialized HealthStaticChartViewModel.attributes.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for HealthChartsAttributes();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  HealthStaticChartViewModel._attributes.getter(&v12[-v8]);
  (*(v6 + 8))(v9, v5);
  v15 = v3;
  v16 = v4;
  KeyPath = swift_getKeyPath();
  v13 = v1;
  v14 = a1;
  HealthStaticChartViewModel.withMutation<A, B>(keyPath:_:)(KeyPath);
}

uint64_t sub_25143D6D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HealthStaticChartViewModel.isLoading.getter();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for HealthStaticChartViewModel(uint64_t a1)
{
  result = type metadata accessor for HealthChartsData();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    result = type metadata accessor for HealthChartsAttributes();
    if (v6 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = type metadata accessor for ObservationRegistrar();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_25143DAB4(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of HealthStaticChartKey(a1, v5);
  v3 = *a2;
  return HealthStaticChartViewModel.model.setter(v5);
}

uint64_t partial apply for closure #1 in HealthStaticChartViewModel.model.setter()
{
  v1 = *(v0 + 16);
  outlined init with copy of HealthStaticChartKey(*(v0 + 24), v3);
  return HealthStaticChartViewModel._model.setter(v3);
}

void type metadata completion function for CommonSeriesData(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    _sSNy10Foundation4DateVGSgMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<Double>?, type metadata accessor for ClosedRange<Double>);
    if (v4 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v5 <= 0x3F)
      {
        type metadata accessor for HealthChartsUnit?(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CommonSeriesData(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v37 = *(a3 + 16);
  v4 = *(v37 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v36 = type metadata accessor for HealthChartsData.Aggregation();
  v7 = *(v36 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(type metadata accessor for HealthChartsUnit() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v13 = v9;
  }

  v14 = *(v4 + 64);
  if (v5)
  {
    v15 = *(v4 + 64);
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(v7 + 80);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + ((v14 + *(v4 + 80)) & ~*(v4 + 80));
  v21 = v16 + 17;
  v22 = *(v7 + 64) + v17;
  if (a2 > v13)
  {
    v23 = v19 + ((v22 + ((v21 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v17);
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v13 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_40;
        }

        goto LABEL_27;
      }

      if (v26 < 2)
      {
LABEL_40:
        if (!v13)
        {
          return 0;
        }

        goto LABEL_41;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_40;
    }

LABEL_27:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
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

    return v13 + (v29 | v27) + 1;
  }

LABEL_41:
  if (v6 == v13)
  {
    if (!v5)
    {
      return 0;
    }

    v30 = (*(v4 + 48))(a1, v5, v37);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  else
  {
    v33 = (v21 + ((a1 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    if (v8 == v13)
    {
      v34 = *(v7 + 48);

      return v34(v33, v8, v36);
    }

    else
    {
      v35 = (*(v11 + 48))((v22 + v33) & ~v17);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void storeEnumTagSinglePayload for CommonSeriesData(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 16);
  v5 = *(v46 - 8);
  v47 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v45 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for HealthChartsUnit() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v5 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v15 + *(v5 + 80)) & ~*(v5 + 80);
  v19 = v18 + v15;
  if (v6)
  {
    v20 = v18 + v15;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = *(v8 + 80);
  v22 = *(v12 + 80);
  v23 = *(v8 + 64) + v22;
  v24 = *(v12 + 64);
  if (!v14)
  {
    ++v24;
  }

  v25 = ((v23 + ((v21 + 17 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v22) + v24;
  if (a3 > v17)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v17 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v26))
      {
        v11 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v11 = v27;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v28 = ~v17 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v30 = v28 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v30;
            if (v11 > 1)
            {
LABEL_81:
              if (v11 == 2)
              {
                *&a1[v25] = v29;
              }

              else
              {
                *&a1[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v11 > 1)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_78;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v11 > 1)
      {
        goto LABEL_81;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v11 > 1)
      {
        goto LABEL_81;
      }
    }

LABEL_78:
    if (v11)
    {
      a1[v25] = v29;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v25] = 0;
  }

  else if (v11)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 == v17)
  {
    if (a2 < v6)
    {
      v31 = *(v47 + 56);
      v32 = a2 + 1;
      v33 = a1;
      v34 = v6;
      v35 = v46;

LABEL_48:
      v31(v33, v32, v34, v35);
      return;
    }

    if (v19 <= 3)
    {
      v36 = ~(-1 << (8 * v19));
    }

    else
    {
      v36 = -1;
    }

    if (v19)
    {
      v37 = v36 & (a2 - v6);
      if (v19 <= 3)
      {
        v38 = v19;
      }

      else
      {
        v38 = 4;
      }

      bzero(a1, v19);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else
        {
          *a1 = v37;
        }
      }

      else if (v38 == 1)
      {
        *a1 = v37;
      }

      else
      {
        *a1 = v37;
      }
    }
  }

  else
  {
    v33 = (v21 + 17 + (&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v21;
    if (v9 == v17)
    {
      v31 = *(v8 + 56);
      v32 = a2;
      v34 = v9;
      v35 = v45;

      goto LABEL_48;
    }

    v39 = (v23 + v33) & ~v22;
    if (v16 >= a2)
    {
      v43 = *(v13 + 56);
      v44 = (v23 + v33) & ~v22;

      v43(v44, a2 + 1);
    }

    else
    {
      if (v24 <= 3)
      {
        v40 = ~(-1 << (8 * v24));
      }

      else
      {
        v40 = -1;
      }

      if (v24)
      {
        v41 = v40 & (~v16 + a2);
        if (v24 <= 3)
        {
          v42 = v24;
        }

        else
        {
          v42 = 4;
        }

        bzero(((v23 + v33) & ~v22), v24);
        if (v42 > 2)
        {
          if (v42 == 3)
          {
            *v39 = v41;
            *(v39 + 2) = BYTE2(v41);
          }

          else
          {
            *v39 = v41;
          }
        }

        else if (v42 == 1)
        {
          *v39 = v41;
        }

        else
        {
          *v39 = v41;
        }
      }
    }
  }
}

void _sSNy10Foundation4DateVGSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for DataSeries(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for HealthChartsAttributes.Series();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for ChartAttributes();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsData.Series();
      if (v6 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        result = type metadata accessor for CommonSeriesData();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataSeries(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v60 = *(v4 - 8);
  v56 = *(v60 + 84);
  if (v56 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v60 + 84);
  }

  v54 = type metadata accessor for HealthChartsData.Series();
  v59 = *(v54 - 8);
  v55 = *(v59 + 84);
  v57 = v5;
  if (v55 > v5)
  {
    v5 = *(v59 + 84);
  }

  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v50 = type metadata accessor for HealthChartsData.Aggregation();
  v10 = *(v50 - 8);
  v52 = *(v10 + 84);
  v53 = v9;
  if (v52 > v9)
  {
    v9 = *(v10 + 84);
  }

  v11 = *(type metadata accessor for HealthChartsUnit() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v60 + 80);
  v18 = *(v7 + 64);
  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = *(v59 + 80);
  v21 = *(v7 + 80);
  v22 = *(v10 + 80);
  v23 = *(v11 + 80);
  v24 = *(v11 + 64);
  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = v17 | 7;
  v27 = v17 + 8;
  v28 = ((*(v60 + 64) - (((-2 - v17) | v17) + ((-9 - v17) | v17)) + 5) & 0xFFFFFFFFFFFFFFF8) + 56;
  v29 = v21 | v22 | v23 | 7;
  v30 = v29 + *(v59 + 64);
  v31 = v19 + ((v18 + v21) & ~v21) + 7;
  v32 = v22 + 17;
  v33 = *(v10 + 64) + v23;
  if (a2 <= v16)
  {
    goto LABEL_48;
  }

  v34 = v25 + ((v30 + ((v28 + v20 + (v27 & ~v26)) & ~v20)) & ~v29) + ((v33 + ((v32 + (v31 & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v23);
  v35 = 8 * v34;
  if (v34 <= 3)
  {
    v37 = ((a2 - v16 + ~(-1 << v35)) >> v35) + 1;
    if (HIWORD(v37))
    {
      v36 = *(a1 + v34);
      if (!v36)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v37 > 0xFF)
    {
      v36 = *(a1 + v34);
      if (!*(a1 + v34))
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v37 < 2)
    {
LABEL_48:
      if (v16 == 0x7FFFFFFF)
      {
        v41 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v41) = -1;
        }

        return (v41 + 1);
      }

      v43 = (a1 + v26 + 8) & ~v26;
      if (v57 == v16)
      {
        v44 = *(v60 + 48);
        v45 = (v17 + ((v27 + v43) & ~v17) + 1) & ~v17;
        v46 = v56;
        v47 = v4;
LABEL_56:

        return v44(v45, v46, v47);
      }

      v45 = (v43 + v20 + v28) & ~v20;
      if (v55 == v16)
      {
        v44 = *(v59 + 48);
        v46 = v55;
        v47 = v54;
        goto LABEL_56;
      }

      if (v15)
      {
        v48 = (v30 + v45) & ~v29;
        if (v53 == v15)
        {
          if (v8 >= 2)
          {
            v49 = (*(v7 + 48))(v48, v8, AssociatedTypeWitness, v31);
            goto LABEL_71;
          }
        }

        else
        {
          v45 = (v32 + ((v31 + v48) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
          if (v52 == v15)
          {
            v44 = *(v10 + 48);
            v46 = v52;
            v47 = v50;
            goto LABEL_56;
          }

          if (v13 >= 2)
          {
            v49 = (*(v12 + 48))((v33 + v45) & ~v23);
LABEL_71:
            if (v49 >= 2)
            {
              return v49 - 1;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return 0;
    }
  }

  v36 = *(a1 + v34);
  if (!*(a1 + v34))
  {
    goto LABEL_48;
  }

LABEL_35:
  v38 = (v36 - 1) << v35;
  if (v34 > 3)
  {
    v38 = 0;
  }

  if (v34)
  {
    if (v34 <= 3)
    {
      v39 = v34;
    }

    else
    {
      v39 = 4;
    }

    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v40 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v40 = *a1;
      }
    }

    else if (v39 == 1)
    {
      v40 = *a1;
    }

    else
    {
      v40 = *a1;
    }
  }

  else
  {
    v40 = 0;
  }

  return v16 + (v40 | v38) + 1;
}

void storeEnumTagSinglePayload for DataSeries(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v67 = *(*(a4 + 16) - 8);
  v5 = *(v67 + 84);
  if (v5 <= 0xFE)
  {
    v6 = 254;
  }

  else
  {
    v6 = *(v67 + 84);
  }

  v65 = v6;
  v63 = *(v67 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v67 + 84);
  }

  v8 = *(type metadata accessor for HealthChartsData.Series() - 8);
  v73 = v8;
  v64 = *(v8 + 84);
  v66 = v7;
  if (v64 > v7)
  {
    v7 = *(v8 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v71 = v10;
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v72 = v13;
  v60 = *(v13 + 84);
  v62 = v12;
  if (v60 > v12)
  {
    v12 = *(v13 + 84);
  }

  v74 = 0;
  v14 = *(type metadata accessor for HealthChartsUnit() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v18;
  }

  v61 = v11;
  v20 = *(v10 + 80);
  v59 = ((*(v10 + 64) + v20) & ~v20) + *(v10 + 64);
  if (v11)
  {
    v21 = ((*(v10 + 64) + v20) & ~v20) + *(v10 + 64);
  }

  else
  {
    v21 = ((*(v10 + 64) + v20) & ~v20) + *(v10 + 64) + 1;
  }

  v22 = *(v67 + 80);
  v23 = v22 + 8;
  v24 = ((v22 + 1) & ~v22) + *(v67 + 64);
  v25 = ((((v22 + 8) & ~v22) + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 56;
  v26 = *(v8 + 80);
  v27 = *(v8 + 64);
  v28 = *(v13 + 80);
  v29 = *(v14 + 80);
  v30 = v20 | v28 | v29 | 7;
  v31 = v30 + v27;
  v32 = v21 + 7;
  v33 = *(v13 + 64);
  v34 = *(v14 + 64);
  v35 = v33 + v29;
  if (!v16)
  {
    ++v34;
  }

  v36 = ((v33 + v29 + ((v28 + 17 + (v32 & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v29) + v34;
  v37 = v36 + ((v30 + v27 + ((v25 + v26 + ((v22 + 8) & ~(v22 | 7))) & ~v26)) & ~v30);
  if (a3 > v19)
  {
    if (v37 <= 3)
    {
      v39 = ((a3 - v19 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
      if (HIWORD(v39))
      {
        v38 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v38 = v40;
        }

        else
        {
          v38 = 0;
        }
      }
    }

    else
    {
      v38 = 1;
    }

    v74 = v38;
  }

  if (v19 < a2)
  {
    v41 = ~v19 + a2;
    if (v37 < 4)
    {
      v42 = (v41 >> (8 * v37)) + 1;
      if (v37)
      {
        v43 = v41 & ~(-1 << (8 * v37));
        bzero(a1, v37);
        if (v37 == 3)
        {
          *a1 = v43;
          a1[2] = BYTE2(v43);
        }

        else if (v37 == 2)
        {
          *a1 = v43;
        }

        else
        {
          *a1 = v41;
        }
      }
    }

    else
    {
      bzero(a1, v37);
      *a1 = v41;
      v42 = 1;
    }

    if (v74 > 1)
    {
      if (v74 == 2)
      {
        *&a1[v37] = v42;
      }

      else
      {
        *&a1[v37] = v42;
      }
    }

    else if (v74)
    {
      a1[v37] = v42;
    }

    return;
  }

  if (v74 > 1)
  {
    if (v74 != 2)
    {
      *&a1[v37] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *&a1[v37] = 0;
  }

  else if (v74)
  {
    a1[v37] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if (v19 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v44 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v44 = a2 - 1;
    }

    *a1 = v44;
    return;
  }

  v45 = &a1[(v22 | 7) + 8] & ~(v22 | 7);
  if (v66 == v19)
  {
    v46 = (v23 + v45) & ~v22;
    if (v65 < a2)
    {
      if (v24 <= 3)
      {
        v47 = ~(-1 << (8 * v24));
      }

      else
      {
        v47 = -1;
      }

      if (!v24)
      {
        return;
      }

      v48 = v47 & (~v65 + a2);
      if (v24 <= 3)
      {
        v49 = v24;
      }

      else
      {
        v49 = 4;
      }

      v50 = ((v23 + v45) & ~v22);
      v51 = v24;
      goto LABEL_95;
    }

    v53 = *(v67 + 56);
    v52 = (v22 + 1 + v46) & ~v22;
    goto LABEL_83;
  }

  v52 = (v45 + v26 + v25) & ~v26;
  if (v64 == v19)
  {
    v53 = *(v73 + 56);
LABEL_83:

    v53(v52);
    return;
  }

  v46 = (v31 + v52) & ~v30;
  if (v18 < a2)
  {
    if (v36 <= 3)
    {
      v54 = ~(-1 << (8 * v36));
    }

    else
    {
      v54 = -1;
    }

    if (!v36)
    {
      return;
    }

    v48 = v54 & (~v18 + a2);
    if (v36 <= 3)
    {
      v49 = v36;
    }

    else
    {
      v49 = 4;
    }

    v50 = ((v31 + v52) & ~v30);
    v51 = v36;
    goto LABEL_95;
  }

  if (v62 == v18)
  {
    if (v61 < 2)
    {
      return;
    }

    if (a2 < v61)
    {
      v53 = *(v71 + 56);
      v52 = (v31 + v52) & ~v30;
      goto LABEL_83;
    }

    if (v59 <= 3)
    {
      v56 = ~(-1 << (8 * v59));
    }

    else
    {
      v56 = -1;
    }

    if (!v59)
    {
      return;
    }

    v48 = v56 & (a2 - v61);
    v51 = v59;
    if (v59 <= 3)
    {
      v49 = v59;
    }

    else
    {
      v49 = 4;
    }

    v50 = ((v31 + v52) & ~v30);
LABEL_95:
    bzero(v50, v51);
    if (v49 > 2)
    {
      if (v49 == 3)
      {
        *v46 = v48;
        *(v46 + 2) = BYTE2(v48);
      }

      else
      {
        *v46 = v48;
      }
    }

    else if (v49 == 1)
    {
      *v46 = v48;
    }

    else
    {
      *v46 = v48;
    }

    return;
  }

  v52 = (v28 + 17 + ((v32 + v46) & 0xFFFFFFFFFFFFFFF8)) & ~v28;
  if (v60 == v18)
  {
    v53 = *(v72 + 56);
    goto LABEL_83;
  }

  v46 = (v35 + v52) & ~v29;
  if (v17 < a2)
  {
    if (v34 <= 3)
    {
      v55 = ~(-1 << (8 * v34));
    }

    else
    {
      v55 = -1;
    }

    if (!v34)
    {
      return;
    }

    v48 = v55 & (~v17 + a2);
    if (v34 <= 3)
    {
      v49 = v34;
    }

    else
    {
      v49 = 4;
    }

    v50 = ((v35 + v52) & ~v29);
    v51 = v34;
    goto LABEL_95;
  }

  if (v16 >= 2)
  {
    v57 = *(v15 + 56);
    v58 = (v35 + v52) & ~v29;

    v57(v58, a2 + 1);
  }
}

uint64_t instantiation function for generic protocol witness table for DataSeries<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of HealthChartsAttributes<DateDomain>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1)
{
  _sSNy10Foundation4DateVGSgMaTm_0(a1, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR);
}

{
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(a1, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>, MEMORY[0x277CBB378]);
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR()
{
  if (!lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie);
    }
  }
}

void type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v10[3] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v10[4] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ClosedRange<Double>();
    v9[0] = v6;
    v9[1] = v6;
    v10 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v11 = v10;
    v12 = MEMORY[0x277CBB590];
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>()
{
  if (!lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, LineSeries<Double>>)
  {
    type metadata accessor for LineSeries<Date>(255);
    type metadata accessor for LineSeries<Double>(255, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries);
    v0 = type metadata accessor for BuilderConditional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderConditional<LineSeries<Date>, LineSeries<Double>>);
    }
  }
}

void type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>()
{
  if (!lazy cache variable for type metadata for BuilderConditional<DotSeries<Double>, DotSeries<Date>>)
  {
    type metadata accessor for LineSeries<Double>(255, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    type metadata accessor for DotSeries<Date>();
    v0 = type metadata accessor for BuilderConditional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BuilderConditional<DotSeries<Double>, DotSeries<Date>>);
    }
  }
}

void type metadata accessor for LineSeries<Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D839F8];
    v8[1] = MEMORY[0x277CBB590];
    v8[2] = MEMORY[0x277D10360];
    v8[3] = MEMORY[0x277CBB590];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for LineSeries<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277CBB1E8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for BuilderConditional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v9 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(a3, MEMORY[0x277CC9578]);
    v13[3] = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v13[4] = MEMORY[0x277CBB1E8];
    v11 = a5(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for BuilderConditional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for BuilderConditional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25143FF50()
{
  v26 = v0[1];
  v1 = (type metadata accessor for DataSeries() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = *(*v1 + 64);
  v3 = *(v0->f64 + v2);

  v4 = v0 + v2 + v1[11];
  v5 = type metadata accessor for ChartAttributes();
  v6 = *(v5 + 36);
  v7 = &v28;
  v29.val[0] = v26;
  v29.val[1] = v26;
  vst2q_f64(v7, v29);
  v8 = type metadata accessor for ChartAttributes.AxisAttributes();
  (*(*(*&v26.f64[0] - 8) + 8))(v4 + v6 + *(v8 + 52), *&v26.f64[0]);
  v9 = (v4 + *(v5 + 40));
  v10 = v9[2];

  v11 = v9[4];

  v12 = v9[6];

  v13 = v1[12];
  v14 = type metadata accessor for HealthChartsData.Series();
  (*(*(v14 - 8) + 8))(v0 + v2 + v13, v14);
  v15 = v0 + v2 + v1[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ClosedRange();
  if (!(*(*(v17 - 8) + 48))(v15, 1, v17))
  {
    v18 = *(*(AssociatedTypeWitness - 8) + 8);
    v18(v15, AssociatedTypeWitness);
    v18(v15 + *(v17 + 36), AssociatedTypeWitness);
  }

  swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for CommonSeriesData();
  v20 = *(v19 + 48);
  v21 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);
  v22 = *(v19 + 52);
  v23 = type metadata accessor for HealthChartsUnit();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v15 + v22, 1, v23))
  {
    (*(v24 + 8))(v15 + v22, v23);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in DataSeries.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for DataSeries() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return closure #1 in DataSeries.body.getter(a1, a2, v10, a3);
}

uint64_t sub_251440388()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>> and conformance <> BuilderConditional<A, B>(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>> and conformance <> BuilderConditional<A, B>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>> and conformance <> BuilderConditional<A, B>, lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>> and conformance <> BuilderConditional<A, B>);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>> and conformance <> BuilderConditional<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<DateInterval, ClosedRange<Double>> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<Double, Double> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<Double, Double>);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<ClosedRange<Double>, ClosedRange<Double>> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type BarSeries<ClosedRange<Double>, ClosedRange<Double>> and conformance BarSeries<A, B>, type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DistributionSeries<DateInterval, ClosedRange<Double>> and conformance DistributionSeries<A, B>, type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DistributionSeries<ClosedRange<Double>, ClosedRange<Double>> and conformance DistributionSeries<A, B>, type metadata accessor for DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DistributionSeries<Date, ClosedRange<Double>> and conformance DistributionSeries<A, B>, type metadata accessor for DistributionSeries<Date, ClosedRange<Double>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<LineSeries<Date>, LineSeries<Double>>();
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type LineSeries<Date> and conformance LineSeries<A>, type metadata accessor for LineSeries<Date>);
    lazy protocol witness table accessor for type DotSeries<Double> and conformance DotSeries<A>(&lazy protocol witness table cache variable for type LineSeries<Double> and conformance LineSeries<A>, &lazy cache variable for type metadata for LineSeries<Double>, type metadata accessor for LineSeries);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, LineSeries<Double>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DotSeries<Double> and conformance DotSeries<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LineSeries<Double>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<LineSeries<Date>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type LineSeries<Date> and conformance LineSeries<A>, type metadata accessor for LineSeries<Date>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<LineSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DotSeries<Double>, DotSeries<Date>>();
    lazy protocol witness table accessor for type DotSeries<Double> and conformance DotSeries<A>(&lazy protocol witness table cache variable for type DotSeries<Double> and conformance DotSeries<A>, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DotSeries<Date> and conformance DotSeries<A>, type metadata accessor for DotSeries<Date>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Double>, DotSeries<Date>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<DotSeries<Date>, BuilderEmpty>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type DotSeries<Date> and conformance DotSeries<A>, type metadata accessor for DotSeries<Date>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<DotSeries<Date>, BuilderEmpty> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(255);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty> and conformance <> BuilderConditional<A, B>, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, lazy protocol witness table accessor for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>, lazy protocol witness table accessor for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty> and conformance <> BuilderConditional<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type MinMaxSeries<Date, ClosedRange<Double>> and conformance MinMaxSeries<A, B>, type metadata accessor for MinMaxSeries<Date, ClosedRange<Double>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(&lazy protocol witness table cache variable for type CategoryLevelSeries and conformance CategoryLevelSeries, type metadata accessor for CategoryLevelSeries);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<CategoryLevelSeries, CategoryLevelSeries> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of HealthChartsContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251441378(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR(255);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS(&lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<M, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedR, lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxS);
  return swift_getWitnessTable();
}

uint64_t static HealthChartsAttributes.Series.line(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  LOBYTE(v6) = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *v7 = *a1;
  *(v7 + 1) = v9;
  LOBYTE(a1) = *(a1 + 16);
  v7[16] = a1;
  *(v7 + 3) = v10;
  v7[32] = v6;
  *(v7 + 5) = v11;
  v7[48] = v12;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v8, v9, a1);
  return HealthChartsAttributes.Series.init(_:)(v7, a2);
}

uint64_t static HealthChartsAttributes.Series.distribution(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *v7 = *a1;
  *(v7 + 1) = v9;
  LOBYTE(a1) = *(a1 + 16);
  v7[16] = a1;
  *(v7 + 3) = v10;
  v7[32] = v11;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v8, v9, a1);
  return HealthChartsAttributes.Series.init(_:)(v7, a2);
}

uint64_t static HealthChartsAttributes.Series.bar(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  *v7 = *a1;
  *(v7 + 1) = v9;
  LOBYTE(a1) = *(a1 + 16);
  v7[16] = a1;
  *(v7 + 3) = v10;
  v7[32] = v11;
  *(v7 + 5) = v12;
  v7[48] = v13;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v8, v9, a1);
  return HealthChartsAttributes.Series.init(_:)(v7, a2);
}

uint64_t HealthChartsAttributes.Series.overlay(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  type metadata accessor for _ContiguousArrayStorage();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v10 + 16))(v13, a1, v9);
  type metadata accessor for Array();
  v14 = static Array.+ infix(_:_:)();

  return HealthChartsAttributes.Series.init(attributes:)(v14, a3);
}

uint64_t static HealthChartsAttributes.Series.categoryLevel(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  *v7 = *a1;
  *(v7 + 1) = v9;
  LOBYTE(a1) = *(a1 + 16);
  v7[16] = a1;
  swift_storeEnumTagMultiPayload();
  outlined copy of AttributeColor(v8, v9, a1);
  return HealthChartsAttributes.Series.init(_:)(v7, a2);
}

uint64_t _s12HealthCharts9DotSeriesV10seriesData10attributesACyxG0aB4Core0abF0V0dF0Vy_xSdG_AA0cD10AttributesVSgtcSd5BoundAG18IntervalChartValuePRtzrlufCSd_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v35 - v9;
  v45 = type metadata accessor for PointMark();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v45);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v36 = v14;
  v38 = a1;
  v15 = HealthChartsData.SeriesData.points.getter();
  v16 = *(v15 + 16);
  if (v16)
  {
    v35 = a3;
    v46 = MEMORY[0x277D84F90];
    v17 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v18 = 0;
    v19 = v46;
    v41 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v42 = (v7 + 8);
    v43 = v10;
    v39 = v10 + 32;
    v40 = v7 + 16;
    while (v18 < *(v17 + 16))
    {
      v20 = v41 + *(v7 + 72) * v18;
      v21 = v7;
      v22 = *(v7 + 16);
      v23 = v44;
      v22(v44, v20, v6);
      specialized closure #1 in DotSeries.init<>(seriesData:attributes:)();
      v24 = v23;
      v25 = v6;
      (*v42)(v24, v6);
      v46 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
        v19 = v46;
      }

      ++v18;
      *(v19 + 16) = v27 + 1;
      (*(v43 + 32))(v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27, v13, v45);
      v6 = v25;
      v7 = v21;
      if (v16 == v18)
      {

        a3 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
    (*v42)(v7, v6);

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_9:
    type metadata accessor for DotSeries<Double>(0, &lazy cache variable for type metadata for DotSeries<Double>, type metadata accessor for DotSeries);
    v29 = v28;
    v30 = v36;
    v31 = *(v36 - 8);
    v32 = v38;
    (*(v31 + 16))(a3 + *(v28 + 52), v38, v36);
    v33 = v37;
    outlined init with copy of DotSeriesAttributes?(v37, a3 + *(v29 + 56), &lazy cache variable for type metadata for DotSeriesAttributes?, type metadata accessor for DotSeriesAttributes);
    UUID.init()();
    outlined destroy of DotSeriesAttributes?(v33);
    result = (*(v31 + 8))(v32, v30);
    *(a3 + *(v29 + 60)) = v19;
  }

  return result;
}

uint64_t specialized closure #1 in DotSeries.init<>(seriesData:attributes:)()
{
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277D839F8], MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.init<A>(_:)();
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  HealthChartsData.SeriesPoint.y.getter();
  static PlottableValue.value<A>(_:_:)();

  PointMark.init<A, B>(x:y:)();
}

uint64_t AttributeColor.color.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = *v0;
    }

    else if (*v0 == 0)
    {

      return static Color.primary.getter();
    }

    else
    {
      v5 = [objc_opt_self() tintColor];

      return Color.init(uiColor:)();
    }
  }

  else
  {
    v3 = one-time initialization token for bundle;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = static HealthChartsBundle.bundle;

    return Color.init(_:bundle:)();
  }
}

uint64_t HealthChartsAttributes.updatingViewSpan<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v39 = a1;
  v41 = a2;
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v37 - v11);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v38 = v13;
  v14 = (v2 + *(v13 + 36));
  v15 = v14[3];
  v40 = v14[4];
  v37 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v16 = *v2;
  v17 = *(v9 + 44);
  v18 = *(v2 + v17);
  outlined init with copy of MinMaxSeriesAttributes(v2 + v17, v7, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  v19 = *(v4 + 60);
  v20 = v12 + *(v9 + 44);
  outlined init with copy of DotSeriesAttributes?(&v7[v19], &v20[v19], &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  v21 = type metadata accessor for DateDomain(0);
  outlined init with copy of MinMaxSeriesAttributes(v39, &v20[v19 + *(v21 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
  v22 = _s12HealthCharts10DateDomainVWOhTm_0(&v7[v19], type metadata accessor for DateDomain);
  *v20 = v18;
  v23 = *(v9 + 48);
  v24 = v2 + v23;
  v25 = *(v2 + v23);
  v26 = *(v2 + v23 + 8);
  v28 = *(v2 + v23 + 32);
  v27 = *(v2 + v23 + 40);
  v29 = *(v2 + v23 + 48);
  *v12 = v16;
  v30 = v12 + v23;
  *v30 = v25;
  *(v30 + 1) = v26;
  v39 = *(v24 + 1);
  *(v30 + 1) = v39;
  *(v30 + 4) = v28;
  *(v30 + 5) = v27;
  *(v30 + 6) = v29;
  v31 = *(*(v15 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v22);
  v34 = &v37 - v33;
  (*(v35 + 16))(&v37 - v33, v37, v15, v32);
  v42 = *(v2 + *(v38 + 40));
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);

  return HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v12, v34, &v42, v15, v40, v41);
}

uint64_t HealthChartsAttributes.updatingInterval<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v42 - v12);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v15 = v14;
  v16 = (v2 + *(v14 + 36));
  v17 = v16[3];
  v44 = v16[4];
  v43 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v18 = *v2;
  v19 = *(v10 + 44);
  v20 = *(v2 + v19);
  outlined init with copy of MinMaxSeriesAttributes(v2 + v19, v8, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  v21 = *(v5 + 60);
  v22 = &v8[v21];
  v23 = v13 + *(v10 + 44);
  v24 = &v23[v21];
  outlined init with copy of MinMaxSeriesAttributes(a1, &v23[v21], type metadata accessor for DateDomain.IntervalAggregation);
  v25 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  v26 = type metadata accessor for DateDomain(0);
  outlined init with copy of MinMaxSeriesAttributes(v22 + *(v26 + 20), &v24[*(v26 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
  v27 = _s12HealthCharts10DateDomainVWOhTm_0(v22, type metadata accessor for DateDomain);
  *v23 = v20;
  v28 = *(v10 + 48);
  v29 = v2 + v28;
  v30 = *(v2 + v28);
  v31 = *(v2 + v28 + 8);
  v33 = *(v2 + v28 + 32);
  v32 = *(v2 + v28 + 40);
  v34 = *(v2 + v28 + 48);
  *v13 = v18;
  v35 = v13 + v28;
  *v35 = v30;
  *(v35 + 1) = v31;
  v42 = *(v29 + 1);
  *(v35 + 1) = v42;
  *(v35 + 4) = v33;
  *(v35 + 5) = v32;
  *(v35 + 6) = v34;
  v36 = *(*(v17 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v27);
  v39 = &v42 - v38;
  (*(v40 + 16))(&v42 - v38, v43, v17, v37);
  v46 = *(v2 + *(v15 + 40));
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);

  return HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v13, v39, &v46, v17, v44, v45);
}

double DistributionSeriesAttributes.cornerRadius.getter()
{
  result = 4.0;
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 24) * 0.5;
  }

  return result;
}

unint64_t static HealthChartsAttributes.empty<>()@<X0>(void *a1@<X8>)
{
  static ChartAttributes.empty<>()(a1);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v3 = v2;
  v4 = (a1 + *(v2 + 36));
  _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription, type metadata accessor for DescriptionMessage);
  v4[3] = v5;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v4[4] = result;
  *v4 = 0;
  v4[1] = 0;
  *(a1 + *(v3 + 40)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t specialized closure #1 in MinMaxSeriesViewModel.init(data:attributes:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  v5 = HealthChartsData.SeriesPoint.y.getter();
  a2(v5);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  return HealthChartsData.SeriesPoint.init(_:_:)();
}

uint64_t BarAttributes.BarWidth.markDimension.getter()
{
  if (*(v0 + 8))
  {
    result = 0;
  }

  else
  {
    result = *v0;
  }

  *(v0 + 8);
  return result;
}

uint64_t HealthChartsAttributes.SeriesTypeAttributes.series(from:chartHeight:yDomain:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v144 = a4;
  v145 = a1;
  type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v142 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v128 - v12;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v131 = &v128 - v20;
  v21 = type metadata accessor for MinMaxSeriesAttributes(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v140 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v139 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v130 = &v128 - v28;
  v29 = type metadata accessor for DotSeriesAttributes(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v134 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v138 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v129 = &v128 - v40;
  type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v128 - v46;
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v133 = &v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>(0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v143 = &v128 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v57 = &v128 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v128 - v59;
  v61 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v64 = &v128 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2[1];
  v137 = *a2;
  v136 = v65;
  v66 = *(a2 + 4);
  v67 = *(a2 + 5);
  (*(v68 + 16))(v64, v147, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v94 = *(v64 + 1);
      v95 = v64[16];
      v96 = *(v64 + 3);
      v97 = v64[32];
      v98 = *(v64 + 5);
      v99 = v64[48];
      *&v153 = *v64;
      v93 = v153;
      *(&v153 + 1) = v94;
      LOBYTE(v154) = v95;
      *(&v154 + 1) = v96;
      LOBYTE(v155) = v97;
      v156 = v98;
      v157 = v99;
      v100 = v138;
      v101 = v146;
      LineSeriesAttributes.series(from:chartHeight:yDomain:)(v145, v138);
      v102 = v93;
      v103 = v94;
      v104 = v95;
      if (!v101)
      {
        outlined consume of AttributeColor(v93, v94, v95);
        v105 = v100;
        v106 = v129;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v105, v129, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>);
        v107 = v106;
        v108 = v134;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v107, v134, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>);
        v109 = MEMORY[0x277CBB370];
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>, MEMORY[0x277CBB370]);
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v80 = v140;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v64, v140, type metadata accessor for MinMaxSeriesAttributes);
        v81 = v141;
        v82 = v146;
        MinMaxSeriesAttributes.series(from:chartHeight:yDomain:)(v145, v141);
        if (v82)
        {
          return _s12HealthCharts10DateDomainVWOhTm_0(v80, type metadata accessor for MinMaxSeriesAttributes);
        }

        _s12HealthCharts10DateDomainVWOhTm_0(v80, type metadata accessor for MinMaxSeriesAttributes);
        v121 = v81;
        v122 = v131;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v121, v131, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>);
        v123 = v122;
        v124 = v135;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v123, v135, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>);
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>, MEMORY[0x277CBB370]);
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v124, v144, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
        goto LABEL_19;
      }

      v116 = *v64;
      v117 = *(v64 + 1);
      v118 = v64[16];
      *&v153 = v116;
      *(&v153 + 1) = v117;
      LOBYTE(v154) = v118;
      v119 = v142;
      v120 = v146;
      CategoryLevelSeriesAttributes.series(from:chartHeight:yDomain:)(v145, v142);
      v102 = v116;
      v103 = v117;
      v104 = v118;
      if (!v120)
      {
        outlined consume of AttributeColor(v116, v117, v118);
        v125 = v132;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v119, v132, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>);
        v126 = v125;
        v127 = v135;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v126, v135, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>);
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, type metadata accessor for BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>, MEMORY[0x277CBB370]);
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v127, v144, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>);
        goto LABEL_19;
      }
    }

    return outlined consume of AttributeColor(v102, v103, v104);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v70 = *v64;
      v71 = *(v64 + 1);
      v72 = *(v64 + 3);
      v73 = v64[32];
      v74 = v64[16];
      v148 = v70;
      v149 = v71;
      v150 = v74;
      v151 = v72;
      v152 = v73;
      v153 = v137;
      v154 = v136;
      v155 = v66;
      v156 = v67;
      v75 = v146;
      DistributionSeriesAttributes.series(from:chartHeight:yDomain:)(v145, &v153, v44, a5);
      result = outlined consume of AttributeColor(v70, v71, v74);
      if (!v75)
      {
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v44, v47, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>);
        v77 = v133;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v47, v133, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>);
        v78 = MEMORY[0x277CBB370];
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>, MEMORY[0x277CBB370]);
        swift_storeEnumTagMultiPayload();
        v79 = v77;
LABEL_12:
        v92 = v143;
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v79, v143, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>);
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>, v78);
LABEL_18:
        swift_storeEnumTagMultiPayload();
        outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v92, v144, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>);
LABEL_19:
        type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSerie, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>, MEMORY[0x277CBB370]);
        return swift_storeEnumTagMultiPayload();
      }

      return result;
    }

    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v64, v32, type metadata accessor for DotSeriesAttributes);
    v110 = v139;
    v111 = v146;
    DotSeriesAttributes.series(from:chartHeight:yDomain:)(v145, v139);
    result = _s12HealthCharts10DateDomainVWOhTm_0(v32, type metadata accessor for DotSeriesAttributes);
    if (v111)
    {
      return result;
    }

    v112 = v110;
    v113 = v130;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v112, v130, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>);
    v114 = v113;
    v108 = v134;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v114, v134, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>);
    v109 = MEMORY[0x277CBB370];
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>, MEMORY[0x277CBB370]);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v115 = v108;
    v92 = v143;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v115, v143, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>);
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<LineSeries<Date>, LineSeries<Double>>, BuilderConditional<LineSeries<Date>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DotSeries<Double>, DotSeries<Date>>, BuilderConditional<DotSeries<Date>, BuilderEmpty>>>, v109);
    goto LABEL_18;
  }

  v83 = *v64;
  v84 = *(v64 + 1);
  v85 = *(v64 + 3);
  v86 = v64[32];
  v87 = *(v64 + 5);
  v88 = v64[48];
  v89 = v64[16];
  *&v153 = v83;
  *(&v153 + 1) = v84;
  LOBYTE(v154) = v89;
  *(&v154 + 1) = v85;
  LOBYTE(v155) = v86;
  v156 = v87;
  v157 = v88;
  v90 = v146;
  BarSeriesAttributes.series(from:chartHeight:yDomain:)(v145, v57);
  result = outlined consume of AttributeColor(v83, v84, v89);
  if (!v90)
  {
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v57, v60, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>);
    v91 = v133;
    outlined init with take of BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>(v60, v133, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>);
    v78 = MEMORY[0x277CBB370];
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<MinMaxSeries<Date, ClosedRange<Double>>, MinMaxSeries<Date, ClosedRange<Double>>>, BuilderEmpty>, BuilderConditional<BuilderConditional<CategoryLevelSeries, CategoryLevelSeries>, BuilderEmpty>>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>>.Storage, type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<BarSeries<DateInterval, ClosedRange<Double>>, BarSeries<DateInterval, ClosedRange<Double>>>, BuilderConditional<BarSeries<Double, Double>, BarSeries<ClosedRange<Double>, ClosedRange<Double>>>>, BuilderConditional<BarSeries<ClosedRange<Double>, ClosedRange<Double>>, BuilderEmpty>>, type metadata accessor for BuilderConditional<BuilderConditional<DistributionSeries<DateInterval, ClosedRange<Double>>, DistributionSeries<ClosedRange<Double>, ClosedRange<Double>>>, BuilderConditional<DistributionSeries<Date, ClosedRange<Double>>, BuilderEmpty>>, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v79 = v91;
    goto LABEL_12;
  }

  return result;
}

uint64_t HealthChartsAttributes.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + *(a1 + 36));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v6 = *(v5 + 8);
  v7 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v27 = v8;
  v28 = v7;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25145AFD0;
  *v31 = 0;
  *&v31[8] = 0xE000000000000000;
  MEMORY[0x2530761B0](0x28746867696568, 0xE700000000000000);
  v10 = *v2;
  Double.write<A>(to:)();
  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  v29 = *(a1 + 16);
  v11 = type metadata accessor for ChartAttributes();
  v12 = *(v11 + 36);
  v37.val[0] = v29;
  v37.val[1] = v29;
  vst2q_f64(v31, v37);
  v13 = type metadata accessor for ChartAttributes.AxisAttributes();
  v14 = ChartAttributes.AxisAttributes.debugDescription.getter(v13);
  MEMORY[0x2530761B0](v14);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v9 + 48) = 0x287369784178;
  *(v9 + 56) = 0xE600000000000000;
  v35 = 0x287369784179;
  v36 = 0xE600000000000000;
  v15 = v2 + *(v11 + 40);
  v16 = *(v15 + 5);
  v17 = *(v15 + 6);
  v31[0] = *v15;
  *&v31[8] = *(v15 + 8);
  v32 = *(v15 + 24);
  v33 = v16;
  v34 = v17;
  lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  v18 = type metadata accessor for ChartAttributes.AxisAttributes();
  v19 = ChartAttributes.AxisAttributes.debugDescription.getter(v18);
  MEMORY[0x2530761B0](v19);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v20 = v36;
  *(v9 + 64) = v35;
  *(v9 + 72) = v20;
  strcpy(v31, "description(");
  v31[13] = 0;
  *&v31[14] = -5120;
  MEMORY[0x2530761B0](v28, v27);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v21 = *&v31[8];
  *(v9 + 80) = *v31;
  *(v9 + 88) = v21;
  strcpy(v31, "series(");
  *&v31[8] = 0xE700000000000000;
  v30 = *(v2 + *(a1 + 40));
  v22 = type metadata accessor for HealthChartsAttributes.Series();
  v23 = HealthChartsAttributes.Series.debugDescription.getter(v22);
  MEMORY[0x2530761B0](v23);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  v24 = *&v31[8];
  *(v9 + 96) = *v31;
  *(v9 + 104) = v24;
  *v31 = v9;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v25 = BidirectionalCollection<>.joined(separator:)();

  return v25;
}

uint64_t ChartAttributes.AxisAttributes.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(21);

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 40) + 8);
  v6 = &v1[*(a1 + 52)];
  v7 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  MEMORY[0x2530761B0](v7);

  MEMORY[0x2530761B0](0x736C6562616C2C29, 0xE900000000000028);
  LOBYTE(v6) = *v2;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  type metadata accessor for ChartAttributes.AxisLabels();
  v10 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v10);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return 0x286E69616D6F64;
}

uint64_t HealthChartsAttributes.Series.debugDescription.getter(uint64_t a1)
{
  v11 = *v1;
  v2 = *(a1 + 24);
  v10[2] = *(a1 + 16);
  v10[3] = v2;
  type metadata accessor for HealthChartsAttributes.SeriesTypeAttributes();
  v3 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837D0];
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in HealthChartsAttributes.Series.debugDescription.getter, v10, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  v11 = v7;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], v5, MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t static ChartAttributes.AxisAttributes.empty<>()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for DateDomain(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for defaultDomain != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, static DateDomain.defaultDomain);
  outlined init with copy of MinMaxSeriesAttributes(v6, v5, type metadata accessor for DateDomain);
  _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_3(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
  v9 = 1;
  return ChartAttributes.AxisAttributes.init(labels:domain:)(&v9, v5, v2, a1);
}

{
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v13 + 1) = v2;
  *v14 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v12 = xmmword_25145AF50;
  memset(&v14[8], 0, 32);
  *&v14[40] = 256;
  outlined init with copy of AutomaticNumeric(&v12, v10);
  v3 = swift_allocObject();
  v4 = v11[0];
  v3[3] = v10[2];
  v3[4] = v4;
  *(v3 + 74) = *(v11 + 10);
  v5 = v10[1];
  v3[1] = v10[0];
  v3[2] = v5;
  v6 = swift_allocObject();
  v7 = *&v14[16];
  v6[3] = *v14;
  v6[4] = v7;
  *(v6 + 74) = *&v14[26];
  v8 = v13;
  v6[1] = v12;
  v6[2] = v8;
  *&v12 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  *(&v12 + 1) = v3;
  *&v13 = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  *(&v13 + 1) = v6;
  strcpy(v14, "automatic");
  *&v14[10] = 0;
  *&v14[12] = -385875968;
  lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  LOBYTE(v10[0]) = 1;
  return ChartAttributes.AxisAttributes.init(labels:domain:)(v10, &v12, &type metadata for ScalarDomain, a1);
}

__n128 static ChartAttributes.empty<>()@<Q0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultDomain != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DateDomain(0);
  v3 = __swift_project_value_buffer(v2, static DateDomain.defaultDomain);
  _s12HealthCharts15ChartAttributesVyAA10DateDomainVGMaTm_0(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v5 = v4;
  v6 = a1 + *(v4 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  outlined init with copy of MinMaxSeriesAttributes(v3, &v6[*(v7 + 52)], type metadata accessor for DateDomain);
  *v6 = 1;
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v19.n128_u64[1] = v8;
  *v20 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v18 = xmmword_25145AF50;
  memset(&v20[8], 0, 32);
  *&v20[40] = 256;
  outlined init with copy of AutomaticNumeric(&v18, v16);
  v9 = swift_allocObject();
  v10 = v17[0];
  v9[3] = v16[2];
  v9[4] = v10;
  *(v9 + 74) = *(v17 + 10);
  v11 = v16[1];
  v9[1] = v16[0];
  v9[2] = v11;
  v12 = swift_allocObject();
  v13 = *&v20[16];
  *(v12 + 48) = *v20;
  *(v12 + 64) = v13;
  *(v12 + 74) = *&v20[26];
  result = v19;
  *(v12 + 16) = v18;
  *(v12 + 32) = result;
  *a1 = 0x4062C00000000000;
  v15 = a1 + *(v5 + 40);
  *v15 = 1;
  *(v15 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 2) = v9;
  *(v15 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 4) = v12;
  *(v15 + 5) = 0x6974616D6F747561;
  *(v15 + 6) = 0xE900000000000063;
  return result;
}

__n128 static ChartAttributes.empty<>()@<Q0>(uint64_t a1@<X8>)
{
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  v3 = v2;
  v22.n128_u64[1] = v2;
  v4 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  *v23 = v4;
  v21 = xmmword_25145AF50;
  memset(&v23[8], 0, 32);
  *&v23[40] = 256;
  outlined init with copy of AutomaticNumeric(&v21, &v17);
  v5 = swift_allocObject();
  v6 = v20[0];
  v5[3] = v19;
  v5[4] = v6;
  *(v5 + 74) = *(v20 + 10);
  v7 = v18;
  v5[1] = v17;
  v5[2] = v7;
  v8 = swift_allocObject();
  v9 = *&v23[16];
  v8[3] = *v23;
  v8[4] = v9;
  *(v8 + 74) = *&v23[26];
  v10 = v22;
  v8[1] = v21;
  v8[2] = v10;
  v22.n128_u64[1] = v3;
  *v23 = v4;
  v21 = xmmword_25145AF50;
  memset(&v23[8], 0, 32);
  *&v23[40] = 256;
  outlined init with copy of AutomaticNumeric(&v21, &v17);
  v11 = swift_allocObject();
  v12 = v20[0];
  v11[3] = v19;
  v11[4] = v12;
  *(v11 + 74) = *(v20 + 10);
  v13 = v18;
  v11[1] = v17;
  v11[2] = v13;
  v14 = swift_allocObject();
  v15 = *&v23[16];
  *(v14 + 48) = *v23;
  *(v14 + 64) = v15;
  *(v14 + 74) = *&v23[26];
  result = v22;
  *(v14 + 16) = v21;
  *(v14 + 32) = result;
  *(a1 + 8) = 1;
  *(a1 + 16) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 24) = v5;
  *(a1 + 32) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0x6974616D6F747561;
  *(a1 + 56) = 0xE900000000000063;
  *a1 = 0x4062C00000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 80) = v11;
  *(a1 + 88) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(a1 + 96) = v14;
  *(a1 + 104) = 0x6974616D6F747561;
  *(a1 + 112) = 0xE900000000000063;
  return result;
}

uint64_t AttributeColor.debugDescription.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return 0x6D6F747375632ELL;
    }

    else if (*v0 == 0)
    {
      return 0x6F726765726F662ELL;
    }

    else
    {
      return 0x746E69742ELL;
    }
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

uint64_t BarAttributes.BarWidth.debugDescription.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  _s12HealthCharts18DescriptionMessageVyAA02NoC0VGMaTm_0(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x277D839F8], MEMORY[0x277CC9160]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  if (*(v0 + 8))
  {
    return 0x6974616D6F747561;
  }

  v24 = *v0;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v31 = vdupq_n_s64(4uLL);
  _sSNySdGMaTm_2(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  MEMORY[0x253075120](v8, v12);
  (*(v5 + 8))(v8, v28);
  v25 = *(v13 + 8);
  v25(v16, v12);
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  MEMORY[0x253075110](v4, v12);
  (*(v29 + 8))(v4, v30);
  v25(v19, v12);
  v31.i64[0] = v24;
  v26 = FloatingPointFormatStyle.format(_:)();
  v25(v22, v12);
  return v26;
}

uint64_t BarAttributes.EndStyle.debugDescription.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x6C676E6174636572;
    }

    else
    {
      return 0x656C7573706163;
    }
  }

  else
  {
    v2 = *v0;
    _StringGuts.grow(_:)(21);

    v3 = Double.description.getter();
    MEMORY[0x2530761B0](v3);

    return 0xD000000000000013;
  }
}

uint64_t BarSeriesAttributes.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25145AB30;
  outlined copy of AttributeColor(v1, v2, v7);
  v9 = String.init<A>(describing:)();
  MEMORY[0x2530761B0](v9);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v8 + 32) = 0x28726F6C6F63;
  *(v8 + 40) = 0xE600000000000000;
  v10 = BarAttributes.BarWidth.debugDescription.getter();
  MEMORY[0x2530761B0](v10);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v8 + 48) = 0x6874646957726162;
  *(v8 + 56) = 0xE900000000000028;
  if (v6 == 1)
  {
    if (v5)
    {
      v11 = 0x6C676E6174636572;
    }

    else
    {
      v11 = 0x656C7573706163;
    }

    if (v5)
    {
      v12 = 0xE900000000000065;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v13 = Double.description.getter();
    MEMORY[0x2530761B0](v13);

    v11 = 0xD000000000000013;
    v12 = 0x8000000251465160;
  }

  MEMORY[0x2530761B0](v11, v12);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  *(v8 + 64) = 0x656C797453646E65;
  *(v8 + 72) = 0xE900000000000028;
  type metadata accessor for _ContiguousArrayStorage<String>(0, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v14 = BidirectionalCollection<>.joined(separator:)();

  return v14;
}