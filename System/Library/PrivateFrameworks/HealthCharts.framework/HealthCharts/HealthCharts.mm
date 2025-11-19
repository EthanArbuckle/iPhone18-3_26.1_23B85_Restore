uint64_t DateDomain.ViewSpanAlignment.debugDescription.getter()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x676E696C69617274;
  if (*v0 != 2)
  {
    v2 = 0x6C61727574616ELL;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t DateDomain.ViewDateSpan.debugDescription.getter()
{
  v1 = type metadata accessor for HealthChartsData.Aggregation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of DateDomain.ViewDateSpan(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v2 + 32))(v5, v9, v1);
        v20 = 0x6C61767265746E69;
        v21 = 0xE900000000000028;
        v12 = HealthChartsData.Aggregation.debugDescription.getter();
        MEMORY[0x2530761B0](v12);

        MEMORY[0x2530761B0](41, 0xE100000000000000);
        v13 = v20;
        (*(v2 + 8))(v5, v1);
        return v13;
      }

      v16 = *v9;
      v20 = 0x2872756F68;
      v21 = 0xE500000000000000;
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v17 = 0x676E696C69617274;
        }

        else
        {
          v17 = 0x6C61727574616ELL;
        }
      }

      else if (v16)
      {
        v17 = 0x7265746E6563;
      }

      else
      {
        v17 = 0x676E696461656CLL;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v11 = 679043428;
      v15 = 0xE400000000000000;
    }

    else
    {
      v11 = 0x286B656577;
      v15 = 0xE500000000000000;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v11 = 0x72616559666C6168;
LABEL_20:
      v15 = 0xE800000000000000;
      goto LABEL_21;
    }

    v11 = 0x2868746E6F6DLL;
    v15 = 0xE600000000000000;
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        return 0x6974616D6F747561;
      }

      v11 = 0x73726165596E6574;
      goto LABEL_20;
    }

    v11 = 1918985593;
    v15 = 0xE400000000000000;
  }

LABEL_21:
  v20 = v11;
  v21 = v15;
  DateDomain.ViewDateSpan.alignment.getter(&v19);
  type metadata accessor for DateDomain.ViewSpanAlignment?(0, &lazy cache variable for type metadata for DateDomain.ViewSpanAlignment?, &type metadata for DateDomain.ViewSpanAlignment, MEMORY[0x277D83D88]);
  v17 = Optional.debugDescription.getter();
LABEL_22:
  MEMORY[0x2530761B0](v17);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v20;
}

uint64_t outlined init with copy of DateDomain.ViewDateSpan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateDomain.ViewDateSpan(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DateDomain.ViewDateSpan.alignment.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (!result)
    {
      result = outlined destroy of DateDomain.ViewDateSpan(v7, type metadata accessor for DateDomain.ViewDateSpan);
      v9 = 4;
      goto LABEL_7;
    }

LABEL_6:
    v9 = *v7;
    goto LABEL_7;
  }

  if (result < 8)
  {
    goto LABEL_6;
  }

  v9 = 4;
LABEL_7:
  *a1 = v9;
  return result;
}

uint64_t DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v89 = a1;
  v90 = a2;
  v91 = a4;
  v5 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v77 - v8;
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8], v5);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v77 - v15;
  v85 = type metadata accessor for DateInterval();
  v81 = *(v85 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v85);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for HealthChartsData.Aggregation();
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v77 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v77 - v26;
  v28 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v77 - v33;
  outlined init with copy of DateDomain.ViewDateSpan(v4, v77 - v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 7)
  {
    DateDomain.ViewDateSpan.fixedInterval(calendar:interval:)(v89, v90, v9);
    v36 = v88;
    v37 = v10;
    if ((*(v88 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of DateDomain.IntervalAggregation?(v9, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
      type metadata accessor for DateDomain.ViewSpanAlignment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_25145AB10;
      v93 = 0;
      v94 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      MEMORY[0x2530761B0](0xD00000000000003DLL, 0x8000000251460BA0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x2530761B0](0xD00000000000001BLL, 0x8000000251460BE0);
      lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2530761B0](v39);

      v40 = v93;
      v41 = v94;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 32) = v40;
      *(v38 + 40) = v41;
      print(_:separator:terminator:)();
    }

    else
    {
      v45 = v82;
      outlined init with take of DateDomain.IntervalAggregation(v9, v82, type metadata accessor for DateDomain.IntervalAggregation);
      v47 = v83;
      v46 = v84;
      v48 = v86;
      (*(v84 + 104))(v83, *MEMORY[0x277D10200], v86);
      lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation, MEMORY[0x277D10228]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      (*(v46 + 8))(v47, v48);
      if (v93 == v92 || (v49 = *(v37 + 20), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v93 == v92))
      {
        v50 = v91;
        outlined init with take of DateDomain.IntervalAggregation(v45, v91, type metadata accessor for DateDomain.IntervalAggregation);
        v42 = *(v36 + 56);
        v43 = v50;
        v44 = 0;
        return v42(v43, v44, 1, v37);
      }

      type metadata accessor for DateDomain.ViewSpanAlignment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_25145AB10;
      v93 = 0;
      v94 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x2530761B0](0xD000000000000033, 0x8000000251460C00);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x2530761B0](8236, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      v69 = v93;
      v70 = v94;
      *(v68 + 56) = MEMORY[0x277D837D0];
      *(v68 + 32) = v69;
      *(v68 + 40) = v70;
      print(_:separator:terminator:)();

      outlined destroy of DateDomain.ViewDateSpan(v45, type metadata accessor for DateDomain.IntervalAggregation);
    }

    v42 = *(v36 + 56);
    v43 = v91;
    v44 = 1;
    return v42(v43, v44, 1, v37);
  }

  v78 = v19;
  v79 = v24;
  v52 = v89;
  v80 = v4;
  v82 = v10;
  if (EnumCaseMultiPayload)
  {
    v65 = v89;
    v66 = v90;
    v67 = v87;
    DateDomain.ViewDateSpan.smallestEnclosingViewDateSpan(calendar:interval:dataAggregation:)(v89, v90, v87, v31);
    DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v65, v66, v67);
    return outlined destroy of DateDomain.ViewDateSpan(v31, type metadata accessor for DateDomain.ViewDateSpan);
  }

  else
  {
    v53 = v27;
    v54 = v16;
    v55 = v84;
    v56 = v53;
    v57 = v86;
    v77[0] = *(v84 + 32);
    v77[1] = v84 + 32;
    (v77[0])(v53, v34, v86);
    v58 = v83;
    (*(v55 + 104))(v83, *MEMORY[0x277D10200], v57);
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation, MEMORY[0x277D10228]);
    v59 = v87;
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = *(v55 + 8);
    v61(v58, v57);
    if (v60)
    {
      v62 = v79;
      v63 = v79;
      v64 = v56;
    }

    else
    {
      v62 = v79;
      v63 = v79;
      v64 = v59;
    }

    (*(v55 + 16))(v63, v64, v57);
    v71 = v78;
    DateDomain.ViewDateSpan.expandInterval(calendar:interval:to:)(v52, v90, v62, v54);
    v61(v56, v57);
    v72 = v81;
    v73 = v85;
    if ((*(v81 + 48))(v54, 1, v85) == 1)
    {
      v61(v62, v57);
      outlined destroy of DateDomain.IntervalAggregation?(v54, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
      return (*(v88 + 56))(v91, 1, 1, v82);
    }

    else
    {
      v74 = *(v72 + 32);
      v74(v71, v54, v73);
      v75 = v91;
      v74(v91, v71, v73);
      v76 = v82;
      (v77[0])(v75 + *(v82 + 20), v62, v57);
      return (*(v88 + 56))(v75, 0, 1, v76);
    }
  }
}

uint64_t DateDomain.ViewDateSpan.expandInterval(calendar:interval:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v68 = a4;
  v6 = type metadata accessor for DateInterval();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedDateDirection();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v55 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v57 = &v53 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  MEMORY[0x28223BE20](v29);
  v69 = &v53 - v30;
  v63 = a2;
  DateInterval.start.getter();
  v31 = *MEMORY[0x277D102F8];
  v59 = v10[13];
  v59(v13, v31, v9);
  v64 = a1;
  HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
  v32 = v10[1];
  v61 = v10 + 1;
  v62 = v9;
  v32(v13, v9);
  v33 = v21[1];
  v33(v28, v20);
  v65 = v21;
  v34 = v21[6];
  if (v34(v19, 1, v20) == 1)
  {
    v35 = v19;
LABEL_5:
    v38 = v68;
    outlined destroy of DateDomain.IntervalAggregation?(v35, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    v39 = 1;
    v41 = v66;
    v40 = v67;
    return (*(v41 + 56))(v38, v39, 1, v40);
  }

  v54 = v32;
  v53 = v65[4];
  v53(v69, v19, v20);
  v56 = v33;
  DateInterval.end.getter();
  v36 = v62;
  v59(v13, *MEMORY[0x277D102F0], v62);
  v35 = v60;
  HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
  v37 = v56;
  v54(v13, v36);
  v37(v28, v20);
  if (v34(v35, 1, v20) == 1)
  {
    v37(v69, v20);
    goto LABEL_5;
  }

  v42 = v57;
  v53(v57, v35, v20);
  v43 = v65[2];
  v43(v28, v69, v20);
  v43(v55, v42, v20);
  v44 = v58;
  DateInterval.init(start:end:)();
  DateInterval.duration.getter();
  if (v45 == 0.0)
  {
    v46 = v69;
    v43(v28, v69, v20);
    v38 = v68;
    DateInterval.init(start:duration:)();
    v41 = v66;
    v47 = v44;
    v48 = v67;
    (*(v66 + 8))(v47, v67);
    v49 = v56;
    v56(v42, v20);
    v49(v46, v20);
    v40 = v48;
  }

  else
  {
    v50 = v56;
    v56(v42, v20);
    v50(v69, v20);
    v41 = v66;
    v51 = v67;
    v38 = v68;
    (*(v66 + 32))(v68, v44, v67);
    v40 = v51;
  }

  v39 = 0;
  return (*(v41 + 56))(v38, v39, 1, v40);
}

uint64_t DateDomain.ViewDateSpan.smallestEnclosingViewDateSpan(calendar:interval:dataAggregation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v59 = a3;
  v55 = a1;
  v56 = a2;
  v44 = a4;
  v54 = type metadata accessor for Date();
  v47 = *(v54 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateInterval();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - v10;
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DateDomain.ViewDateSpan>, type metadata accessor for DateDomain.ViewDateSpan, MEMORY[0x277D84560]);
  v23 = *(v19 + 72);
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v42 = swift_allocObject();
  v25 = v42 + v24;
  *(v42 + v24) = 3;
  swift_storeEnumTagMultiPayload();
  *(v25 + v23) = 3;
  swift_storeEnumTagMultiPayload();
  *(v25 + 2 * v23) = 3;
  swift_storeEnumTagMultiPayload();
  *(v25 + 3 * v23) = 3;
  swift_storeEnumTagMultiPayload();
  *(v25 + 4 * v23) = 3;
  swift_storeEnumTagMultiPayload();
  *(v25 + 5 * v23) = 3;
  swift_storeEnumTagMultiPayload();
  v57 = v23;
  v26 = v22;
  *(v25 + 6 * v23) = 3;
  v28 = v55;
  v27 = v56;
  v29 = v6;
  v30 = 7;
  v43 = v18;
  v31 = v14;
  swift_storeEnumTagMultiPayload();
  v48 = (v46 + 32);
  v49 = (v46 + 16);
  v46 += 8;
  v47 += 8;
  v41 = v25;
  v45 = v14;
  v50 = v26;
  v58 = v17;
  do
  {
    outlined init with copy of DateDomain.ViewDateSpan(v25, v26);
    DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v28, v27, v59);
    outlined init with copy of Date?(v17, v31, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    v32 = type metadata accessor for DateDomain.IntervalAggregation(0);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      outlined destroy of DateDomain.IntervalAggregation?(v17, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
      outlined destroy of DateDomain.ViewDateSpan(v26, type metadata accessor for DateDomain.ViewDateSpan);
      outlined destroy of DateDomain.IntervalAggregation?(v31, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    }

    else
    {
      v33 = v54;
      v34 = v52;
      (*v49)(v52, v31, v29);
      outlined destroy of DateDomain.ViewDateSpan(v31, type metadata accessor for DateDomain.IntervalAggregation);
      v35 = v51;
      (*v48)(v51, v34, v29);
      v36 = v29;
      v37 = v53;
      DateInterval.start.getter();
      LOBYTE(v34) = DateInterval.contains(_:)();
      v38 = *v47;
      (*v47)(v37, v33);
      if (v34)
      {
        DateInterval.end.getter();
        v39 = DateInterval.contains(_:)();
        v38(v37, v33);
        (*v46)(v35, v36);
        outlined destroy of DateDomain.IntervalAggregation?(v58, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
        v29 = v36;
        if (v39)
        {
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          return outlined init with take of DateDomain.IntervalAggregation(v50, v44, type metadata accessor for DateDomain.ViewDateSpan);
        }
      }

      else
      {
        (*v46)(v35, v36);
        outlined destroy of DateDomain.IntervalAggregation?(v58, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
        v29 = v36;
      }

      v26 = v50;
      outlined destroy of DateDomain.ViewDateSpan(v50, type metadata accessor for DateDomain.ViewDateSpan);
      v28 = v55;
      v27 = v56;
      v17 = v58;
      v31 = v45;
    }

    v25 += v57;
    --v30;
  }

  while (v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v44 = 3;
  return swift_storeEnumTagMultiPayload();
}

uint64_t DateDomain.ViewDateSpan.fixedInterval(calendar:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v191 = a2;
  v195 = a1;
  v197 = a3;
  v180 = type metadata accessor for DateInterval();
  v179 = *(v180 - 8);
  v4 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for RoundedDateDirection();
  v189 = *(v193 - 8);
  v6 = *(v189 + 64);
  MEMORY[0x28223BE20](v193);
  v192 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v188 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v186 = (&v154 - v13);
  MEMORY[0x28223BE20](v14);
  v170 = &v154 - v15;
  MEMORY[0x28223BE20](v16);
  v185 = &v154 - v17;
  MEMORY[0x28223BE20](v18);
  v171 = &v154 - v19;
  MEMORY[0x28223BE20](v20);
  v176 = &v154 - v21;
  MEMORY[0x28223BE20](v22);
  v184 = (&v154 - v23);
  MEMORY[0x28223BE20](v24);
  v183 = &v154 - v25;
  v190 = type metadata accessor for Date();
  v194 = *(v190 - 8);
  v26 = *(v194 + 64);
  MEMORY[0x28223BE20](v190);
  v177 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v174 = &v154 - v29;
  MEMORY[0x28223BE20](v30);
  v169 = &v154 - v31;
  MEMORY[0x28223BE20](v32);
  v182 = &v154 - v33;
  MEMORY[0x28223BE20](v34);
  v175 = &v154 - v35;
  MEMORY[0x28223BE20](v36);
  v181 = &v154 - v37;
  MEMORY[0x28223BE20](v38);
  v196 = &v154 - v39;
  MEMORY[0x28223BE20](v40);
  v187 = &v154 - v41;
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?, type metadata accessor for (DateComponents, HealthChartsData.Aggregation), v8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v173 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v154 - v46;
  v48 = type metadata accessor for HealthChartsData.Aggregation();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v154 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DateComponents();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v168 = &v154 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v59 = &v154 - v58;
  v60 = v3;
  DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)(1, v47);
  type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
  v62 = v61;
  v63 = *(v61 - 8);
  v64 = *(v63 + 48);
  v172 = (v63 + 48);
  if (v64(v47, 1, v61) == 1)
  {
    v65 = &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?;
    v66 = type metadata accessor for (DateComponents, HealthChartsData.Aggregation);
LABEL_3:
    v67 = v66;
    v68 = v47;
LABEL_4:
    outlined destroy of DateDomain.IntervalAggregation?(v68, v65, v67);
LABEL_7:
    v72 = type metadata accessor for DateDomain.IntervalAggregation(0);
    v73 = *(*(v72 - 8) + 56);
    v74 = v197;
    return v73(v74, 1, 1, v72);
  }

  v163 = v64;
  v69 = *(v62 + 48);
  v70 = *(v54 + 32);
  v160 = v54 + 32;
  v159 = v70;
  v70(v59, v47, v53);
  v71 = *(v49 + 32);
  v165 = v49 + 32;
  v164 = v71;
  v71(v52, &v47[v69], v48);
  DateDomain.ViewDateSpan.alignment.getter(&v198);
  if (v198 == 4)
  {
    (*(v49 + 8))(v52, v48);
    (*(v54 + 8))(v59, v53);
    goto LABEL_7;
  }

  v156 = v60;
  v157 = v49;
  v167 = v52;
  v161 = v59;
  v162 = v48;
  v158 = v54;
  v166 = v53;
  v76 = (v189 + 104);
  v77 = (v189 + 8);
  v78 = v194;
  v79 = (v194 + 8);
  v189 = v194 + 48;
  if (v198 > 1u)
  {
    if (v198 == 2)
    {
      v94 = v196;
      DateInterval.end.getter();
      v95 = v192;
      v96 = v77;
      v97 = v193;
      (*v76)(v192, *MEMORY[0x277D102F0], v193);
      v98 = v185;
      v99 = v167;
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      v100 = v97;
      v101 = v98;
      (*v96)(v95, v100);
      v102 = v190;
      v186 = *v79;
      v186(v94, v190);
      v184 = *v189;
      if (v184(v101, 1, v102) == 1)
      {
        (*(v157 + 8))(v99, v162);
        (*(v158 + 8))(v161, v166);
        v65 = &lazy cache variable for type metadata for Date?;
        v103 = MEMORY[0x277CC9578];
      }

      else
      {
        v124 = *(v78 + 32);
        v125 = v174;
        v124(v174, v101, v102);
        v101 = v173;
        DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)(0, v173);
        if (v163(v101, 1, v62) != 1)
        {
          v185 = v124;
          v137 = *(v62 + 48);
          v138 = v168;
          v139 = v166;
          v159(v168, v101, v166);
          v192 = *(v157 + 8);
          v193 = v157 + 8;
          (v192)(v101 + v137, v162);
          v140 = v170;
          Calendar.date(byAdding:to:wrappingComponents:)();
          v141 = v79;
          v93 = v158;
          v142 = v139;
          v143 = *(v158 + 8);
          v143(v138, v142);
          v155 = v141;
          v186(v125, v102);
          v144 = v140;
          if (v184(v140, 1, v102) == 1)
          {
            (v192)(v167, v162);
            v143(v161, v166);
            v65 = &lazy cache variable for type metadata for Date?;
            v67 = MEMORY[0x277CC9578];
            v68 = v140;
            goto LABEL_4;
          }

          v88 = v102;
          v153 = v144;
          v122 = v187;
          (v185)(v187, v153, v102);
          v112 = v197;
          v123 = v161;
          v87 = v186;
          goto LABEL_27;
        }

        v186(v125, v102);
        (*(v157 + 8))(v167, v162);
        (*(v158 + 8))(v161, v166);
        v65 = &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?;
        v103 = type metadata accessor for (DateComponents, HealthChartsData.Aggregation);
      }

      v67 = v103;
      v68 = v101;
      goto LABEL_4;
    }

    v115 = v196;
    DateInterval.start.getter();
    v117 = v192;
    v116 = v193;
    (*v76)(v192, *MEMORY[0x277D102F8], v193);
    v118 = v186;
    DateDomain.ViewDateSpan.naturalDate(calendar:date:direction:)(v195, v115, v117, v186);
    v119 = v118;
    (*v77)(v117, v116);
    v87 = *v79;
    v88 = v190;
    (*v79)(v115, v190);
    v184 = *v189;
    if (v184(v119, 1, v88) == 1)
    {
      (*(v157 + 8))(v167, v162);
      (*(v158 + 8))(v161, v166);
      v65 = &lazy cache variable for type metadata for Date?;
      v67 = MEMORY[0x277CC9578];
      v68 = v119;
      goto LABEL_4;
    }

    v155 = v79;
    v122 = v187;
    v185 = *(v78 + 32);
    (v185)(v187, v119, v88);
    v112 = v197;
    v93 = v158;
    v123 = v161;
  }

  else
  {
    v155 = (v194 + 8);
    if (v198)
    {
      v104 = v196;
      DateInterval.start.getter();
      v105 = *v76;
      v106 = v192;
      LODWORD(v173) = *MEMORY[0x277D102F8];
      v107 = v193;
      v174 = v105;
      (v105)(v192);
      v108 = v184;
      DateDomain.ViewDateSpan.naturalDate(calendar:date:direction:)(v195, v104, v106, v184);
      v109 = *v77;
      v183 = v77;
      v172 = v109;
      v109(v106, v107);
      v88 = v190;
      v186 = *(v78 + 8);
      v186(v104, v190);
      v110 = *v189;
      v111 = (*v189)(v108, 1, v88);
      v112 = v197;
      v93 = v158;
      if (v111 == 1)
      {
        (*(v157 + 8))(v167, v162);
        (*(v93 + 8))(v161, v166);
        v113 = MEMORY[0x277CC9578];
        v114 = v108;
LABEL_29:
        outlined destroy of DateDomain.IntervalAggregation?(v114, &lazy cache variable for type metadata for Date?, v113);
        v72 = type metadata accessor for DateDomain.IntervalAggregation(0);
        v73 = *(*(v72 - 8) + 56);
        v74 = v112;
        return v73(v74, 1, 1, v72);
      }

      v126 = *(v78 + 32);
      v127 = v181;
      v170 = (v78 + 32);
      v185 = v126;
      (v126)(v181, v108, v88);
      v128 = v176;
      v129 = v161;
      v184 = v110;
      Calendar.date(byAdding:to:wrappingComponents:)();
      if (v184(v128, 1, v88) == 1)
      {
        v186(v127, v88);
        (*(v157 + 8))(v167, v162);
        (*(v93 + 8))(v129, v166);
        v65 = &lazy cache variable for type metadata for Date?;
        v67 = MEMORY[0x277CC9578];
        v68 = v128;
        goto LABEL_4;
      }

      v145 = v185;
      (v185)(v175, v128, v88);
      Date.timeIntervalSinceReferenceDate.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v146 = v196;
      DateInterval.start.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v147 = v186;
      v186(v146, v88);
      v148 = v182;
      DateInterval.end.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v147(v148, v88);
      v149 = v169;
      Date.init(timeIntervalSinceReferenceDate:)();
      v151 = v192;
      v150 = v193;
      (v174)(v192, v173, v193);
      v47 = v171;
      v152 = v167;
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      v172(v151, v150);
      v147(v149, v88);
      v147(v175, v88);
      v147(v181, v88);
      if (v184(v47, 1, v88) == 1)
      {
        (*(v157 + 8))(v152, v162);
        (*(v93 + 8))(v161, v166);
        v65 = &lazy cache variable for type metadata for Date?;
        v66 = MEMORY[0x277CC9578];
        goto LABEL_3;
      }

      v122 = v187;
      v145(v187, v47, v88);
      v123 = v161;
      v112 = v197;
      v87 = v186;
    }

    else
    {
      v80 = v196;
      DateInterval.start.getter();
      v82 = v192;
      v81 = v193;
      (*v76)(v192, *MEMORY[0x277D102F8], v193);
      v83 = v183;
      v84 = v167;
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      v85 = v81;
      v86 = v83;
      (*v77)(v82, v85);
      v87 = *v79;
      v88 = v190;
      (*v79)(v80, v190);
      v89 = *v189;
      v90 = (*v189)(v86, 1, v88);
      v91 = v197;
      v92 = v166;
      v93 = v158;
      if (v90 == 1)
      {
        (*(v157 + 8))(v84, v162);
        (*(v93 + 8))(v161, v92);
        outlined destroy of DateDomain.IntervalAggregation?(v86, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
        v72 = type metadata accessor for DateDomain.IntervalAggregation(0);
        v73 = *(*(v72 - 8) + 56);
        v74 = v91;
        return v73(v74, 1, 1, v72);
      }

      v120 = *(v78 + 32);
      v121 = v86;
      v122 = v187;
      v184 = v89;
      v185 = v120;
      (v120)(v187, v121, v88);
      v123 = v161;
      v112 = v91;
    }
  }

LABEL_27:
  v130 = v188;
  Calendar.date(byAdding:to:wrappingComponents:)();
  if (v184(v130, 1, v88) == 1)
  {
    v87(v122, v88);
    (*(v157 + 8))(v167, v162);
    (*(v93 + 8))(v123, v166);
    v113 = MEMORY[0x277CC9578];
    v114 = v130;
    goto LABEL_29;
  }

  v131 = v194;
  v132 = v177;
  (v185)(v177, v130, v88);
  v133 = *(v131 + 16);
  v133(v196, v122, v88);
  v133(v182, v132, v88);
  v134 = v178;
  DateInterval.init(start:end:)();
  v87(v132, v88);
  v87(v122, v88);
  (*(v93 + 8))(v123, v166);
  v135 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v136 = v197;
  v164(v197 + *(v135 + 20), v167, v162);
  (*(v179 + 32))(v136, v134, v180);
  return (*(*(v135 - 8) + 56))(v136, 0, 1, v135);
}

uint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of DateDomain.ViewDateSpan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of DateDomain.IntervalAggregation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for DateDomain.IntervalAggregation?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static DateDomain.ViewDateSpan.defaultIntervalAndAggregation(calendar:onDate:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v36 = a1;
  v37 = a3;
  v35 = type metadata accessor for HealthChartsData.Aggregation();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DateInterval();
  v20 = *(v34 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v34);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v33, v15, v22);
  DateInterval.init(start:duration:)();
  *v14 = 2;
  swift_storeEnumTagMultiPayload();
  v25 = *MEMORY[0x277D10200];
  v26 = v35;
  v33 = *(v3 + 104);
  v33(v6, v25, v35);
  DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v36, v24, v6, v10);
  v27 = v6;
  v28 = v26;
  (*(v3 + 8))(v27, v26);
  v29 = type metadata accessor for DateDomain.IntervalAggregation(0);
  if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
  {
    outlined destroy of DateDomain.IntervalAggregation?(v10, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    Date.init()();
    v30 = v37;
    DateInterval.init(start:duration:)();
    outlined destroy of DateDomain.ViewDateSpan(v14, type metadata accessor for DateDomain.ViewDateSpan);
    (*(v20 + 8))(v24, v34);
    return (v33)(v30 + *(v29 + 20), *MEMORY[0x277D101F0], v28);
  }

  else
  {
    outlined destroy of DateDomain.ViewDateSpan(v14, type metadata accessor for DateDomain.ViewDateSpan);
    (*(v20 + 8))(v24, v34);
    return outlined init with take of DateDomain.IntervalAggregation(v10, v37, type metadata accessor for DateDomain.IntervalAggregation);
  }
}

void type metadata accessor for DateDomain.ViewSpanAlignment?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v95 = a1;
  v2 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v88 - v7;
  MEMORY[0x28223BE20](v8);
  v92 = &v88 - v9;
  MEMORY[0x28223BE20](v10);
  v91 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v88 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v88 - v19;
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], v2);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v90 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v89 = &v88 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v88 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v88 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v88 - v39;
  v41 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v96, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v55 = type metadata accessor for Calendar();
        (*(*(v55 - 8) + 56))(v37, 1, 1, v55);
        v56 = type metadata accessor for TimeZone();
        (*(*(v56 - 8) + 56))(v17, 1, 1, v56);
        type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
        v49 = v57;
        v50 = *(v57 + 48);
        v51 = v97;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v52 = MEMORY[0x277D101F8];
      }

      else
      {
        v75 = type metadata accessor for Calendar();
        (*(*(v75 - 8) + 56))(v34, 1, 1, v75);
        v76 = type metadata accessor for TimeZone();
        (*(*(v76 - 8) + 56))(v14, 1, 1, v76);
        type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
        v49 = v77;
        v50 = *(v77 + 48);
        v51 = v97;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v52 = MEMORY[0x277D101F0];
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      v72 = type metadata accessor for Calendar();
      (*(*(v72 - 8) + 56))(v40, 1, 1, v72);
      v73 = type metadata accessor for TimeZone();
      (*(*(v73 - 8) + 56))(v20, 1, 1, v73);
      type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
      v49 = v74;
      v50 = *(v74 + 48);
      v51 = v97;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v52 = MEMORY[0x277D10220];
      goto LABEL_17;
    }

    outlined destroy of DateDomain.ViewDateSpan(v44, type metadata accessor for DateDomain.ViewDateSpan);
LABEL_9:
    type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
    return (*(*(v53 - 8) + 56))(v97, 1, 1, v53);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v64 = type metadata accessor for Calendar();
      (*(*(v64 - 8) + 56))(v89, 1, 1, v64);
      v65 = type metadata accessor for TimeZone();
      (*(*(v65 - 8) + 56))(v93, 1, 1, v65);
      type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
      v67 = v66;
      v68 = *(v66 + 48);
      v69 = v97;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v70 = *MEMORY[0x277D10218];
      v71 = type metadata accessor for HealthChartsData.Aggregation();
      (*(*(v71 - 8) + 104))(v69 + v68, v70, v71);
      return (*(*(v67 - 8) + 56))(v69, 0, 1, v67);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v46 = type metadata accessor for Calendar();
      (*(*(v46 - 8) + 56))(v90, 1, 1, v46);
      v47 = type metadata accessor for TimeZone();
      (*(*(v47 - 8) + 56))(v94, 1, 1, v47);
      type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
      v49 = v48;
      v50 = *(v48 + 48);
      v51 = v97;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v52 = MEMORY[0x277D10210];
LABEL_17:
      v78 = *v52;
      v79 = type metadata accessor for HealthChartsData.Aggregation();
      (*(*(v79 - 8) + 104))(v51 + v50, v78, v79);
      return (*(*(v49 - 8) + 56))(v51, 0, 1, v49);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v58 = type metadata accessor for Calendar();
    (*(*(v58 - 8) + 56))(v31, 1, 1, v58);
    v59 = type metadata accessor for TimeZone();
    (*(*(v59 - 8) + 56))(v91, 1, 1, v59);
    type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
    v49 = v60;
    v61 = *(v60 + 48);
    v51 = v97;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v62 = *MEMORY[0x277D101F0];
    v63 = type metadata accessor for HealthChartsData.Aggregation();
    (*(*(v63 - 8) + 104))(v51 + v61, v62, v63);
    return (*(*(v49 - 8) + 56))(v51, 0, 1, v49);
  }

  v80 = type metadata accessor for Calendar();
  (*(*(v80 - 8) + 56))(v28, 1, 1, v80);
  v81 = type metadata accessor for TimeZone();
  (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
  type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
  v83 = v82;
  v84 = *(v82 + 48);
  v85 = v97;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v86 = *MEMORY[0x277D10208];
  v87 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v87 - 8) + 104))(v85 + v84, v86, v87);
  return (*(*(v83 - 8) + 56))(v85, 0, 1, v83);
}

uint64_t DateDomain.ViewDateSpan.naturalDate(calendar:date:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v131 = a3;
  v136 = a2;
  v138 = a1;
  v141 = a4;
  v6 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?, type metadata accessor for (DateComponents, HealthChartsData.Aggregation), MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = &v121 - v9;
  v142 = type metadata accessor for Date();
  v10 = *(v142 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v142);
  v122 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v121 - v14;
  MEMORY[0x28223BE20](v15);
  v124 = (&v121 - v16);
  MEMORY[0x28223BE20](v17);
  v123 = &v121 - v18;
  v19 = type metadata accessor for DateComponents();
  v129 = *(v19 - 8);
  v130 = v19;
  v20 = *(v129 + 64);
  MEMORY[0x28223BE20](v19);
  v126 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v121 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v121 - v26;
  v28 = type metadata accessor for RoundedDateDirection();
  v139 = *(v28 - 8);
  v140 = v28;
  v29 = *(v139 + 64);
  MEMORY[0x28223BE20](v28);
  v132 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v121 - v32;
  v34 = type metadata accessor for HealthChartsData.Aggregation();
  v133 = *(v34 - 8);
  v134 = v34;
  v35 = *(v133 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], v6);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v125 = &v121 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v137 = &v121 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v121 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v121 - v51;
  MEMORY[0x28223BE20](v53);
  v143 = &v121 - v54;
  v127 = v5;
  outlined init with copy of DateDomain.ViewDateSpan(v5, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v67 = v142;
      v56 = v143;
      if (EnumCaseMultiPayload == 2)
      {
        v68 = MEMORY[0x277D101F0];
      }

      else
      {
        v68 = MEMORY[0x277D10208];
      }

      v82 = v133;
      v81 = v134;
      (*(v133 + 104))(v37, *v68, v134);
      v84 = v139;
      v83 = v140;
      (*(v139 + 104))(v33, *MEMORY[0x277D102F8], v140);
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      (*(v84 + 8))(v33, v83);
      (*(v82 + 8))(v37, v81);
      goto LABEL_20;
    }

    v56 = v143;
    if (!EnumCaseMultiPayload)
    {
      outlined destroy of DateDomain.ViewDateSpan(v41, type metadata accessor for DateDomain.ViewDateSpan);
      return v10[7](v141, 1, 1, v142);
    }

    v78 = v133;
    v77 = v134;
    (*(v133 + 104))(v37, *MEMORY[0x277D101F8], v134);
    v80 = v139;
    v79 = v140;
    (*(v139 + 104))(v33, *MEMORY[0x277D102F8], v140);
    HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
    (*(v80 + 8))(v33, v79);
    (*(v78 + 8))(v37, v77);
LABEL_17:
    v67 = v142;
LABEL_20:
    v57 = v137;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v56 = v143;
    if (EnumCaseMultiPayload != 4)
    {
      v124 = v10;
      type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v105 = type metadata accessor for Calendar.Component();
      v106 = *(v105 - 8);
      v107 = *(v106 + 72);
      v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_25145AB30;
      v110 = v109 + v108;
      v111 = *(v106 + 104);
      v111(v110, *MEMORY[0x277CC9978], v105);
      v111(v110 + v107, *MEMORY[0x277CC9960], v105);
      v111(v110 + 2 * v107, *MEMORY[0x277CC9940], v105);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v109);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      DateComponents.weekOfYear.getter();
      if (v112)
      {
        (*(v129 + 8))(v27, v130);
        return v124[7](v141, 1, 1, v142);
      }

      DateComponents.weekOfYear.setter();
      Calendar.date(from:)();
      (*(v129 + 8))(v27, v130);
      v10 = v124;
      v67 = v142;
      v113 = (v124[6])(v52, 1, v142);
      v57 = v137;
      if (v113 == 1)
      {
        goto LABEL_39;
      }

      v114 = v10[4];
      v115 = v123;
      (v114)(v123, v52, v67);
      (v114)(v56, v115, v67);
      v10[7](v56, 0, 1, v67);
      goto LABEL_21;
    }

    v70 = v133;
    v69 = v134;
    (*(v133 + 104))(v37, *MEMORY[0x277D10218], v134);
    v72 = v139;
    v71 = v140;
    (*(v139 + 104))(v33, *MEMORY[0x277D102F8], v140);
    HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
    (*(v72 + 8))(v33, v71);
    (*(v70 + 8))(v37, v69);
    goto LABEL_17;
  }

  v56 = v143;
  v57 = v137;
  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v58 = type metadata accessor for Calendar.Component();
      v59 = *(v58 - 8);
      v60 = *(v59 + 72);
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_25145AB20;
      v63 = v62 + v61;
      v64 = *(v59 + 104);
      v64(v63, *MEMORY[0x277CC9978], v58);
      v64(v63 + v60, *MEMORY[0x277CC9988], v58);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v62);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      DateComponents.year.getter();
      if (v65)
      {
        (*(v129 + 8))(v24, v130);
        return v10[7](v141, 1, 1, v142);
      }

      DateComponents.year.setter();
      Calendar.date(from:)();
      (*(v129 + 8))(v24, v130);
      v67 = v142;
      if ((v10[6])(v49, 1, v142) == 1)
      {
        v90 = &lazy cache variable for type metadata for Date?;
        v91 = MEMORY[0x277CC9578];
        v89 = v49;
        goto LABEL_23;
      }

      v119 = v10[4];
      v120 = v124;
      (v119)(v124, v49, v67);
      (v119)(v56, v120, v67);
      v10[7](v56, 0, 1, v67);
      goto LABEL_20;
    }

    return v10[7](v141, 1, 1, v142);
  }

  v74 = v133;
  v73 = v134;
  (*(v133 + 104))(v37, *MEMORY[0x277D10210], v134);
  v76 = v139;
  v75 = v140;
  (*(v139 + 104))(v33, *MEMORY[0x277D102F8], v140);
  HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
  (*(v76 + 8))(v33, v75);
  (*(v74 + 8))(v37, v73);
  v67 = v142;
LABEL_21:
  outlined init with copy of Date?(v56, v57, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  v85 = v10[6];
  v86 = (v85)(v57, 1, v67);
  v87 = v135;
  if (v86 == 1)
  {
    v88 = MEMORY[0x277CC9578];
    outlined destroy of DateDomain.IntervalAggregation?(v56, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    v89 = v57;
    v90 = &lazy cache variable for type metadata for Date?;
    v91 = v88;
LABEL_23:
    outlined destroy of DateDomain.IntervalAggregation?(v89, v90, v91);
    v92 = v10[7];
    v93 = v141;
    v94 = 1;
    return v92(v93, v94, 1, v67);
  }

  v95 = v10[4];
  (v95)(v135, v57, v67);
  v97 = v139;
  v96 = v140;
  v98 = v132;
  (*(v139 + 16))(v132, v131, v140);
  v99 = (*(v97 + 88))(v98, v96);
  if (v99 == *MEMORY[0x277D102F8])
  {
    outlined destroy of DateDomain.IntervalAggregation?(v143, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
LABEL_26:
    v100 = v141;
    (v95)(v141, v87, v67);
    v92 = v10[7];
    v93 = v100;
    v94 = 0;
    return v92(v93, v94, 1, v67);
  }

  v101 = v143;
  if (v99 == *MEMORY[0x277D102F0])
  {
    v102 = v128;
    DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)(1, v128);
    type metadata accessor for (DateComponents, HealthChartsData.Aggregation)();
    v104 = v103;
    if ((*(*(v103 - 8) + 48))(v102, 1, v103) == 1)
    {
      (v10[1])(v135, v67);
      outlined destroy of DateDomain.IntervalAggregation?(v101, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      v90 = &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?;
      v91 = type metadata accessor for (DateComponents, HealthChartsData.Aggregation);
      v89 = v102;
      goto LABEL_23;
    }

    v116 = *(v104 + 48);
    v117 = v129;
    (*(v129 + 32))(v126, v102, v130);
    (*(v133 + 8))(v102 + v116, v134);
    v52 = v125;
    v118 = v135;
    Calendar.date(byAdding:to:wrappingComponents:)();
    (*(v117 + 8))(v126, v130);
    (v10[1])(v118, v67);
    outlined destroy of DateDomain.IntervalAggregation?(v143, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if ((v85)(v52, 1, v67) != 1)
    {
      v87 = v122;
      (v95)(v122, v52, v67);
      goto LABEL_26;
    }

LABEL_39:
    v90 = &lazy cache variable for type metadata for Date?;
    v91 = MEMORY[0x277CC9578];
    v89 = v52;
    goto LABEL_23;
  }

  (v10[1])(v87, v67);
  outlined destroy of DateDomain.IntervalAggregation?(v101, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  v10[7](v141, 1, 1, v67);
  return (*(v139 + 8))(v132, v140);
}

BOOL _sSo30_HKQuantityDistributionOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *_sSo30_HKQuantityDistributionOptionsVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *_sSo30_HKQuantityDistributionOptionsVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _sSo30_HKQuantityDistributionOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayG0x0fG7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *_sSo30_HKQuantityDistributionOptionsVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for DateDomain.IntervalAggregation?(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of DateDomain.IntervalAggregation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (DateComponents, HealthChartsData.Aggregation)()
{
  if (!lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation))
  {
    type metadata accessor for DateComponents();
    type metadata accessor for HealthChartsData.Aggregation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation));
    }
  }
}

void type metadata accessor for DateDomain.IntervalAggregation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id one-time initialization function for bundle()
{
  type metadata accessor for HealthChartsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static HealthChartsBundle.bundle = result;
  return result;
}

uint64_t HKBodyMassIndexStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462280);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v18, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v18, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v18, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v18, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBodyMassIndexStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4000000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPurpleColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

_OWORD *_s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  v37 = a2[1];
  v10 = *(a2 + 16);
  v38 = a2[3];
  v11 = *(a2 + 32);
  v12 = type metadata accessor for AutomaticQuantity();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HealthChartsUnit();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthChartsUnit?(a1, v19, type metadata accessor for HealthChartsUnit?);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of HealthChartsUnit?(v19, type metadata accessor for HealthChartsUnit?);
    v25 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    *(&v42 + 1) = v26;
    *&v43 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v25);
    *&v41 = a4;
    *(&v41 + 1) = a5;
    *(&v43 + 1) = v9;
    *v44 = v37;
    *&v44[8] = v10 & 1;
    *&v44[16] = v38;
    v44[24] = v11 & 1;
    v44[25] = 0;
    *(a3 + 32) = 0x6974616D6F747561;
    *(a3 + 40) = 0xE900000000000063;
    outlined init with copy of AutomaticNumeric(&v41, v39);
    v27 = swift_allocObject();
    v28 = v40[0];
    v27[3] = v39[2];
    v27[4] = v28;
    *(v27 + 74) = *(v40 + 10);
    v29 = v39[1];
    v27[1] = v39[0];
    v27[2] = v29;
    *a3 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    *(a3 + 8) = v27;
    result = swift_allocObject();
    v31 = *v44;
    result[3] = v43;
    result[4] = v31;
    *(result + 74) = *&v44[10];
    v32 = v42;
    result[1] = v41;
    result[2] = v32;
    *(a3 + 16) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    *(a3 + 24) = result;
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    (*(v21 + 16))(&v15[*(v12 + 20)], v24, v20);
    v33 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    *(v15 + 3) = v34;
    *(v15 + 4) = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v33);
    *v15 = a4;
    *(v15 + 1) = a5;
    v35 = &v15[*(v12 + 24)];
    *v35 = v9;
    *(v35 + 1) = v37;
    *(v35 + 2) = v10 & 1;
    *(v35 + 3) = v38;
    v35[32] = v11 & 1;
    v35[33] = 0;
    _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v15, a3);
    return (*(v21 + 8))(v24, v20);
  }

  return result;
}

_OWORD *_s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  v37 = a2[1];
  v10 = *(a2 + 16);
  v38 = a2[3];
  v11 = *(a2 + 32);
  v12 = type metadata accessor for AutomaticQuantity();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HealthChartsUnit();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthChartsUnit?(a1, v19, type metadata accessor for HealthChartsUnit?);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of HealthChartsUnit?(v19, type metadata accessor for HealthChartsUnit?);
    v25 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(&v42 + 1) = v26;
    *&v43 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v25);
    *&v41 = a4;
    *(&v41 + 1) = a5;
    *(&v43 + 1) = v9;
    *v44 = v37;
    *&v44[8] = v10 & 1;
    *&v44[16] = v38;
    v44[24] = v11 & 1;
    v44[25] = 0;
    *(a3 + 32) = 0x6974616D6F747561;
    *(a3 + 40) = 0xE900000000000063;
    outlined init with copy of AutomaticNumeric(&v41, v39);
    v27 = swift_allocObject();
    v28 = v40[0];
    v27[3] = v39[2];
    v27[4] = v28;
    *(v27 + 74) = *(v40 + 10);
    v29 = v39[1];
    v27[1] = v39[0];
    v27[2] = v29;
    *a3 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    *(a3 + 8) = v27;
    result = swift_allocObject();
    v31 = *v44;
    result[3] = v43;
    result[4] = v31;
    *(result + 74) = *&v44[10];
    v32 = v42;
    result[1] = v41;
    result[2] = v32;
    *(a3 + 16) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    *(a3 + 24) = result;
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    (*(v21 + 16))(&v15[*(v12 + 20)], v24, v20);
    v33 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(v15 + 3) = v34;
    *(v15 + 4) = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v33);
    *v15 = a4;
    *(v15 + 1) = a5;
    v35 = &v15[*(v12 + 24)];
    *v35 = v9;
    *(v35 + 1) = v37;
    *(v35 + 2) = v10 & 1;
    *(v35 + 3) = v38;
    v35[32] = v11 & 1;
    v35[33] = 0;
    _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v15, a3);
    return (*(v21 + 8))(v24, v20);
  }

  return result;
}

uint64_t HKBodyFatPercentageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514622E0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](37, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBodyFatPercentageStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](37, 0xE100000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4010000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPurpleColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKHeightStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251461590);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](29798, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKHeightStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](28003, 0xE200000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4014000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPurpleColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKBodyMassStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514622B0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBodyMassStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4034000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v10, v38, v35, 0.0, 150.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPurpleColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKLeanBodyMassStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461500);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKLeanBodyMassStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4020000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPurpleColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKHeartRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v29 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  type metadata accessor for HealthChartsContext?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v11 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461630);
  v12 = MEMORY[0x2530763A0](v11);
  v13 = objc_opt_self();
  v14 = [v13 _countPerMinuteUnit];
  v15 = objc_opt_self();
  v16 = [v15 quantityWithUnit:v14 doubleValue:2.0];

  v17 = [v13 _countPerMinuteUnit];
  v18 = [v15 quantityWithUnit:v17 doubleValue:0.0];

  *&v32 = v12;
  *(&v32 + 1) = v16;
  v33 = 0;
  v34 = v18;
  v35 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v28, v10, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v32, v10, v6, v31);
  (*(v3 + 8))(v6, v29);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);
  if (*&v31[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v31[3];
    v21[3] = v31[2];
    v21[4] = v22;
    v23 = v31[5];
    v21[5] = v31[4];
    v21[6] = v23;
    v24 = v31[1];
    v21[1] = v31[0];
    v21[2] = v24;
    result = outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v32);
    v26 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v27 = v30;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v32);
    result = outlined destroy of HealthChartsQuantityDistributionDataProvider?(v31);
    v21 = 0;
    v26 = 0;
    v20 = 0;
    v27 = v30;
    v30[1] = 0;
    v27[2] = 0;
  }

  *v27 = v21;
  v27[3] = v26;
  v27[4] = v20;
  return result;
}

uint64_t _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of HealthChartsUnit?(a2, v11, type metadata accessor for HealthChartsContext?);
  v12 = type metadata accessor for HealthChartsContext();
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of HealthChartsUnit?(v11, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v14 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v13 = *v11;
  v14 = *v11;
  outlined destroy of HealthChartsUnit?(v11, type metadata accessor for HealthChartsContext);
  if (!v13)
  {
    goto LABEL_4;
  }

LABEL_5:
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v16 = v15;
  *(a4 + 80) = v15;
  *(a4 + 88) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance <> HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 56));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, a3, v16);
  *a4 = v14;
  v18 = a1[1];
  *(a4 + 8) = *a1;
  *(a4 + 24) = v18;
  *(a4 + 40) = a1[2];
  return outlined init with copy of HealthChartsQuantityDistributionQueryConfiguration(a1, v20);
}

unint64_t HKHeartRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4034000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v10, v38, v35, 0.0, 80.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4020000000000000;
  v6[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKStepsStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514610C0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for FixedQuantity();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  type metadata accessor for HealthChartsUnit?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HealthChartsUnit();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsUnit?);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsUnit?);
    v23 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(&v44 + 1) = v24;
    v45 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v23);
    *&v43 = a3;
    *(&v43 + 1) = a4;
    a2[4] = FixedNumeric.debugDescription.getter();
    a2[5] = v25;
    outlined init with copy of FixedNumeric(&v43, v41);
    v26 = swift_allocObject();
    v27 = v41[1];
    *(v26 + 16) = v41[0];
    *(v26 + 32) = v27;
    *(v26 + 48) = v42;
    result = swift_allocObject();
    v29 = result;
    v30 = v44;
    *(result + 16) = v43;
    *(result + 32) = v30;
    *(result + 48) = v45;
    v31 = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    v32 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    (*(v19 + 16))(&v13[*(v8 + 20)], v22, v18);
    v33 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(v13 + 3) = v34;
    *(v13 + 4) = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v33);
    *v13 = a3;
    *(v13 + 1) = a4;
    v35 = FixedQuantity.debugDescription.getter();
    v37 = v36;
    (*(v19 + 8))(v22, v18);
    a2[4] = v35;
    a2[5] = v37;
    outlined init with copy of HealthChartsUnit?(v13, v10, type metadata accessor for FixedQuantity);
    v38 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v26 = swift_allocObject();
    outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v10, v26 + v38, type metadata accessor for FixedQuantity);
    outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v13, v10, type metadata accessor for FixedQuantity);
    v29 = swift_allocObject();
    result = outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v10, v29 + v38, type metadata accessor for FixedQuantity);
    v31 = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
    v32 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  }

  *a2 = v32;
  a2[1] = v26;
  a2[2] = v31;
  a2[3] = v29;
  return result;
}

uint64_t HKDistanceWalkingRunningStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461840);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKBasalEnergyBurnedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462370);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](1818321771, 0xE400000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKActiveEnergyStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462570);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](1818321771, 0xE400000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKFlightsClimbedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514616F0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKNikeFuelStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514614D0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

void HKOxygenSaturationStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v32 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  type metadata accessor for HealthChartsContext?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v11 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  v30 = MEMORY[0x2530763A0](v11);
  v12 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  v13 = MEMORY[0x2530763A0](v12);
  v14 = [v13 canonicalUnit];

  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = objc_opt_self();
  v16 = [v15 quantityWithUnit:v14 doubleValue:0.25];

  v17 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  v18 = MEMORY[0x2530763A0](v17);
  v19 = [v18 canonicalUnit];

  if (!v19)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = [v15 quantityWithUnit:v19 doubleValue:0.0];

  *&v35 = v30;
  *(&v35 + 1) = v16;
  v36 = 1;
  v37 = v20;
  v38 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v31, v10, type metadata accessor for HealthChartsContext);
  v21 = type metadata accessor for HealthChartsContext();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v35, v10, v6, v34);
  (*(v3 + 8))(v6, v32);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);
  if (*&v34[0])
  {
    v22 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v23 = swift_allocObject();
    v24 = v34[3];
    v23[3] = v34[2];
    v23[4] = v24;
    v25 = v34[5];
    v23[5] = v34[4];
    v23[6] = v25;
    v26 = v34[1];
    v23[1] = v34[0];
    v23[2] = v26;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v35);
    v27 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v28 = v33;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v35);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v34);
    v23 = 0;
    v27 = 0;
    v22 = 0;
    v28 = v33;
    v33[1] = 0;
    v28[2] = 0;
  }

  *v28 = v23;
  v28[3] = v27;
  v28[4] = v22;
}

unint64_t HKOxygenSaturationStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](37, 0xE100000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 0;
  v38[0] = 0x4024000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0x4059000000000000;
  v41 = 0;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemCyanColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4020000000000000;
  v6[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

void HKBloodGlucoseStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v32 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  type metadata accessor for HealthChartsContext?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v11 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  v30 = MEMORY[0x2530763A0](v11);
  v12 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  v13 = MEMORY[0x2530763A0](v12);
  v14 = [v13 canonicalUnit];

  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = objc_opt_self();
  v16 = [v15 quantityWithUnit:v14 doubleValue:4.0];

  v17 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  v18 = MEMORY[0x2530763A0](v17);
  v19 = [v18 canonicalUnit];

  if (!v19)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = [v15 quantityWithUnit:v19 doubleValue:0.0];

  *&v35 = v30;
  *(&v35 + 1) = v16;
  v36 = 0;
  v37 = v20;
  v38 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v31, v10, type metadata accessor for HealthChartsContext);
  v21 = type metadata accessor for HealthChartsContext();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v35, v10, v6, v34);
  (*(v3 + 8))(v6, v32);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);
  if (*&v34[0])
  {
    v22 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v23 = swift_allocObject();
    v24 = v34[3];
    v23[3] = v34[2];
    v23[4] = v24;
    v25 = v34[5];
    v23[5] = v34[4];
    v23[6] = v25;
    v26 = v34[1];
    v23[1] = v34[0];
    v23[2] = v26;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v35);
    v27 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v28 = v33;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v35);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v34);
    v23 = 0;
    v27 = 0;
    v22 = 0;
    v28 = v33;
    v33[1] = 0;
    v28[2] = 0;
  }

  *v28 = v23;
  v28[3] = v27;
  v28[4] = v22;
}

unint64_t HKBloodGlucoseStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v34 = *(v2 - 8);
  v3 = v34;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x4C642F676DLL, 0xE500000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v10, v35, 0.0, 200.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4020000000000000;
  v6[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKBloodAlcoholContentStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251462340);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateMinMax<>()();
  v22 = MEMORY[0x253076160](37, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 12;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKPeripheralPerfusionIndexStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461390);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](37, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKPeripheralPerfusionIndexStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](37, 0xE100000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x3FC999999999999ALL;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKDietaryFatTotalStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461EC0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFatPolyunsaturatedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F20);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFatMonounsaturatedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F60);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFatSaturatedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461EF0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCholesterolStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462030);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietarySodiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461BF0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCarbohydratesStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251462090);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFiberStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461E90);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietarySugarStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461BC0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryEnergyStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002DLL, 0x8000000251461FA0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](1818321771, 0xE400000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryProteinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461C80);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](103, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminAStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461B60);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminB6StaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461B00);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminB12StaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461B30);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminCStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AD0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminDStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AA0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminEStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A70);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminKStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A40);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCalciumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514620C0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryIronStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251461E00);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryThiaminStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461B90);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryRiboflavinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461C50);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryNiacinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461D40);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFolateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E60);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryBiotinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462120);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryPantothenicAcidStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461D10);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryPhosphorusStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461CE0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryIodineStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E30);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryMagnesiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DD0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryZincStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514619E0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietarySeleniumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461C20);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCopperStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461FD0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryManganeseStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DA0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryChromiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462000);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryMolybdenumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461D70);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryChlorideStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462060);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryPotassiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461CB0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKNumberOfTimesFallenStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461460);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKElectrodermalActivityStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514617E0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](5464941, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKElectrodermalActivityStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](5464941, 0xE300000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x3FC999999999999ALL;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPurpleColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKInhalerUsageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461560);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKInhalerUsageStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4008000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemCyanColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKRespiratoryRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v29 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  type metadata accessor for HealthChartsContext?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v11 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461300);
  v12 = MEMORY[0x2530763A0](v11);
  v13 = objc_opt_self();
  v14 = [v13 _countPerMinuteUnit];
  v15 = objc_opt_self();
  v16 = [v15 quantityWithUnit:v14 doubleValue:0.5];

  v17 = [v13 _countPerMinuteUnit];
  v18 = [v15 quantityWithUnit:v17 doubleValue:0.0];

  *&v32 = v12;
  *(&v32 + 1) = v16;
  v33 = 0;
  v34 = v18;
  v35 = xmmword_25145AF40;
  outlined init with copy of HealthChartsUnit?(v28, v10, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v32, v10, v6, v31);
  (*(v3 + 8))(v6, v29);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);
  if (*&v31[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v31[3];
    v21[3] = v31[2];
    v21[4] = v22;
    v23 = v31[5];
    v21[5] = v31[4];
    v21[6] = v23;
    v24 = v31[1];
    v21[1] = v31[0];
    v21[2] = v24;
    result = outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v32);
    v26 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v27 = v30;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v32);
    result = outlined destroy of HealthChartsQuantityDistributionDataProvider?(v31);
    v21 = 0;
    v26 = 0;
    v20 = 0;
    v27 = v30;
    v30[1] = 0;
    v27[2] = 0;
  }

  *v27 = v21;
  v27[3] = v26;
  v27[4] = v20;
  return result;
}

unint64_t HKRespiratoryRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v34 = *(v2 - 8);
  v3 = v34;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v10, v35, 0.0, 20.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemCyanColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4020000000000000;
  v6[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKBodyTemperatureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462250);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](1130849636, 0xE400000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

double HKSleepAnalysisStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemIndigoColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.23817171e223;
  *v28 = xmmword_25145AF60;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

double HKBiologicalSexStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemGrayColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 7.66991258e170;
  *v28 = xmmword_25145AF70;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

double _s12HealthCharts29HKSleepAnalysisStaticChartKeyVAA0aefG0A2aDP12dataProvider3for0aB4Core0ab4DataI0_pSgAA0aB7ContextV_tFTW_0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double HKDateOfBirthStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemGrayColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.33111024e-152;
  *v28 = xmmword_25145AF80;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

double HKBloodTypeStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemGrayColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 2.78730822e276;
  *v28 = xmmword_25145AF90;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

unint64_t HKAppleStandHourStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v34 + 1) = v14;
  v15 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v33 = xmmword_25145AF50;
  *&v35 = v15;
  *(&v35 + 1) = 0x40EFA40000000000;
  memset(v36, 0, 24);
  *&v36[24] = 1;
  outlined init with copy of AutomaticNumeric(&v33, v31);
  v16 = swift_allocObject();
  v17 = v32[0];
  v16[3] = v31[2];
  v16[4] = v17;
  *(v16 + 74) = *(v32 + 10);
  v18 = v31[1];
  v16[1] = v31[0];
  v16[2] = v18;
  v19 = swift_allocObject();
  v20 = *v36;
  v19[3] = v35;
  v19[4] = v20;
  *(v19 + 74) = *&v36[10];
  v21 = v34;
  v19[1] = v33;
  v19[2] = v21;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v8 + 40);
  *v22 = 1;
  *(v22 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 2) = v16;
  *(v22 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 4) = v19;
  *(v22 + 5) = 0x6974616D6F747561;
  *(v22 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = 1;
  v6[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = (a1 + *(v26 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  v28[3] = v29;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v28[4] = result;
  *v28 = 0xD000000000000010;
  v28[1] = 0x8000000251463EB0;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

uint64_t HKForcedVitalCapacityStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461690);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](76, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKForcedVitalCapacityStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](76, 0xE100000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x3FC999999999999ALL;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemCyanColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKForcedExpiratoryVolume1StaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002FLL, 0x80000002514616C0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](76, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKPeakExpiratoryFlowRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ELL, 0x80000002514613D0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](0x6E696D2F4CLL, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKPeakExpiratoryFlowRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x6E696D2F4CLL, 0xE500000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4024000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemCyanColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKAppleExerciseTimeStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462540);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](7235949, 0xE300000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCaffeineStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x80000002514620F0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

double HKWorkoutStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v31 = *(v2 - 8);
  v3 = v31;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v35 + 1) = v14;
  v36 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v13);
  v34 = xmmword_25145AFA0;
  v15 = FixedNumeric.debugDescription.getter();
  v17 = v16;
  outlined init with copy of FixedNumeric(&v34, v32);
  v18 = swift_allocObject();
  v19 = v32[1];
  *(v18 + 16) = v32[0];
  *(v18 + 32) = v19;
  *(v18 + 48) = v33;
  v20 = swift_allocObject();
  v21 = v35;
  *(v20 + 16) = v34;
  *(v20 + 32) = v21;
  *(v20 + 48) = v36;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v8 + 40);
  *v22 = 1;
  *(v22 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  *(v22 + 2) = v18;
  *(v22 + 3) = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  *(v22 + 4) = v20;
  *(v22 + 5) = v15;
  *(v22 + 6) = v17;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = 1;
  v6[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.82088753e-306;
  *v28 = xmmword_25145AFB0;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

unint64_t HKBloodPressureStaticChartKey.dataProvider(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for HealthChartsContext();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  outlined init with copy of HealthChartsUnit?(v8, v5, type metadata accessor for HealthChartsContext?);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    outlined destroy of HealthChartsUnit?(v5, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v12 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v11 = *v5;
  v12 = *v5;
  outlined destroy of HealthChartsUnit?(v5, type metadata accessor for HealthChartsContext);
  if (!v11)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  a1[3] = &type metadata for HealthChartsBloodPressureDataProvider;
  result = lazy protocol witness table accessor for type HealthChartsBloodPressureDataProvider and conformance HealthChartsBloodPressureDataProvider();
  a1[4] = result;
  *a1 = v12;
  return result;
}

unint64_t HKBloodPressureStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v58 = v2;
  v55 = *(v2 - 8);
  *&v56 = v55;
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MinMaxSeriesAttributes(0);
  v7 = *(v6 - 8);
  v57 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v16 = v15;
  v17 = a1 + *(v15 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v19 = &v17[*(v18 + 52)];
  v19[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  *v17 = 1;
  v21 = MEMORY[0x253076160](1732799853, 0xE400000000000000);
  v22 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v14, v59, 60.0, 160.0);
  outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsUnit?);
  v23 = v60;
  v24 = v61;
  v25 = v59[0];
  v26 = v59[1];
  v54 = a1;
  *a1 = 0x4072C00000000000;
  v27 = a1 + *(v16 + 40);
  *v27 = 1;
  *(v27 + 8) = v25;
  *(v27 + 24) = v26;
  *(v27 + 5) = v23;
  *(v27 + 6) = v24;
  v28 = objc_opt_self();
  v29 = [v28 labelColor];
  Color.init(uiColor:)();
  v30 = Color.opacity(_:)();

  v31 = [v28 labelColor];
  v32 = Color.init(uiColor:)();
  v33 = &v10[*(v57 + 28)];
  v53 = type metadata accessor for DotSeriesAttributes(0);
  v34 = *(v53 + 20);
  static ChartSymbolShape<>.circle.getter();
  v52 = type metadata accessor for DotSeriesAttributes.Symbol(0);
  swift_storeEnumTagMultiPayload();
  *v33 = v32;
  *(v33 + 1) = 0;
  v33[16] = 1;
  *v10 = v30;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *(v10 + 3) = 0x4020000000000000;
  v10[32] = 0;
  *(v10 + 5) = 0;
  v10[48] = 1;
  outlined init with copy of HealthChartsUnit?(v10, v5, type metadata accessor for MinMaxSeriesAttributes);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v35 = *(v55 + 72);
  v36 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v37 = swift_allocObject();
  v56 = xmmword_25145AB10;
  *(v37 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v37 + v36, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for MinMaxSeriesAttributes);
  v38 = [v28 systemPinkColor];
  Color.init(uiColor:)();
  v39 = Color.opacity(_:)();

  v40 = [v28 systemPinkColor];
  v41 = Color.init(uiColor:)();
  v42 = &v5[*(v57 + 28)];
  v43 = *(v53 + 20);
  static ChartSymbolShape<>.diamond.getter();
  swift_storeEnumTagMultiPayload();
  *v42 = v41;
  *(v42 + 1) = 0;
  v42[16] = 1;
  *v5 = v39;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4020000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 1;
  swift_storeEnumTagMultiPayload();
  v44 = swift_allocObject();
  *(v44 + 16) = v56;
  outlined init with copy of HealthChartsUnit?(v5, v44 + v36, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  *&v59[0] = v37;
  specialized Array.append<A>(contentsOf:)(v44);
  outlined destroy of HealthChartsUnit?(v5, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  v45 = *&v59[0];
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v47 = v46;
  v48 = v54;
  v49 = v54 + *(v46 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<BloodPressureMessage>, lazy protocol witness table accessor for type BloodPressureMessage and conformance BloodPressureMessage);
  *(v49 + 3) = v50;
  result = lazy protocol witness table accessor for type DescriptionMessage<BloodPressureMessage> and conformance DescriptionMessage<A>();
  *(v49 + 4) = result;
  *(v48 + *(v47 + 40)) = v45;
  return result;
}

uint64_t HKCyclingDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461970);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryWaterStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461A10);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](19565, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKFitzpatrickSkinTypeStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemGrayColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = (a1 + *(v26 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  v28[3] = v29;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v28[4] = result;
  *v28 = 0xD000000000000015;
  v28[1] = 0x8000000251462BF0;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

uint64_t HKUVExposureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251461030);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateMinMax<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 12;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBloodAlcoholContentStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v48 = a1;
  v49 = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v52 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MinMaxSeriesAttributes(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v21 = v20;
  v22 = a3 + *(v20 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v24 = &v22[*(v23 + 52)];
  v24[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  *v22 = 1;
  v26 = MEMORY[0x253076160](v48, v49);
  v27 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v19, v53, 0.0, a4);
  outlined destroy of HealthChartsUnit?(v19, type metadata accessor for HealthChartsUnit?);
  v28 = v54;
  v29 = v55;
  v30 = v53[0];
  v31 = v53[1];
  *a3 = 0x4072C00000000000;
  v32 = a3 + *(v21 + 40);
  *v32 = 1;
  *(v32 + 8) = v30;
  *(v32 + 24) = v31;
  *(v32 + 5) = v28;
  *(v32 + 6) = v29;
  v33 = objc_opt_self();
  v34 = [v33 systemBlueColor];
  Color.init(uiColor:)();
  v35 = Color.opacity(_:)();

  v36 = [v33 systemBlueColor];
  v37 = Color.init(uiColor:)();
  v38 = &v15[*(v12 + 28)];
  *&v38[*(type metadata accessor for DotSeriesAttributes(0) + 20)] = xmmword_25145AFC0;
  type metadata accessor for DotSeriesAttributes.Symbol(0);
  swift_storeEnumTagMultiPayload();
  *v38 = v37;
  *(v38 + 1) = 0;
  v38[16] = 1;
  *v15 = v35;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *(v15 + 3) = 0x4020000000000000;
  v15[32] = 0;
  *(v15 + 5) = 0;
  v15[48] = 1;
  outlined init with copy of HealthChartsUnit?(v15, v10, type metadata accessor for MinMaxSeriesAttributes);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v39 = *(v51 + 72);
  v40 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v10, v41 + v40, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  outlined destroy of HealthChartsUnit?(v15, type metadata accessor for MinMaxSeriesAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v43 = v42;
  v44 = a3 + *(v42 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity);
  *(v44 + 3) = v45;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v44 + 4) = result;
  *(a3 + *(v43 + 40)) = v41;
  return result;
}

uint64_t HKBasalBodyTemperatureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002CLL, 0x80000002514623A0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](1130849636, 0xE400000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

void HKCervicalMucusQualityStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v11 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CD0);
  v12 = MEMORY[0x253076390](v11);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25145AFD0;
  *(v13 + 32) = xmmword_25145AB10;
  *(v13 + 48) = xmmword_25145AFE0;
  *(v13 + 64) = 5;
  outlined init with copy of HealthChartsUnit?(a1, v10, type metadata accessor for HealthChartsContext);
  v14 = type metadata accessor for HealthChartsContext();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v10, 0, 1, v14);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v16 = swift_allocObject();
  *a2 = v16;
  outlined init with copy of HealthChartsUnit?(v10, v7, type metadata accessor for HealthChartsContext?);
  v17 = (*(v15 + 48))(v7, 1, v14);
  v18 = MEMORY[0x277D84F90];
  if (v17 == 1)
  {
    v19 = v12;

    outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v20 = *v7;
  v21 = *v7;
  v22 = v12;

  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext);
  if (!v20)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);

  v16[2] = v21;
  v16[3] = v13;
  v16[4] = v12;
  v16[5] = 0;
  v16[6] = v18;
}

unint64_t HKCervicalMucusQualityStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  v3 = v29;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  v28 = xmmword_25145AB10;
  *(v13 + 16) = xmmword_25145AFD0;
  *(v13 + 32) = xmmword_25145AB10;
  *(v13 + 48) = xmmword_25145AFE0;
  *(v13 + 64) = 5;
  v14 = specialized static HKCategoryValueCervicalMucusQuality.valueLabelDictionary.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  *a1 = 0x4072C00000000000;
  v17 = a1 + *(v8 + 40);
  *v17 = 1;
  *(v17 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v17 + 2) = v15;
  *(v17 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v17 + 4) = v16;
  *(v17 + 5) = 0xD000000000000015;
  *(v17 + 6) = 0x8000000251462D90;

  v18 = specialized static HKCategoryValueCervicalMucusQuality.valueLabelDictionary.getter();
  v19 = [objc_opt_self() systemIndigoColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v20 = *(v3 + 72);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v25[2] = v18;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

void HKOvulationTestResultStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v11 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463480);
  v12 = MEMORY[0x253076390](v11);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  v13[1] = xmmword_25145AFF0;
  v13[2] = xmmword_25145B000;
  v13[3] = xmmword_25145B010;
  outlined init with copy of HealthChartsUnit?(a1, v10, type metadata accessor for HealthChartsContext);
  v14 = type metadata accessor for HealthChartsContext();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v10, 0, 1, v14);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v16 = swift_allocObject();
  *a2 = v16;
  outlined init with copy of HealthChartsUnit?(v10, v7, type metadata accessor for HealthChartsContext?);
  v17 = (*(v15 + 48))(v7, 1, v14);
  v18 = MEMORY[0x277D84F90];
  if (v17 == 1)
  {
    v19 = v12;

    outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v20 = *v7;
  v21 = *v7;
  v22 = v12;

  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext);
  if (!v20)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);

  v16[2] = v21;
  v16[3] = v13;
  v16[4] = v12;
  v16[5] = 0;
  v16[6] = v18;
}

unint64_t HKOvulationTestResultStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  v3 = v29;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  v13[1] = xmmword_25145AFF0;
  v13[2] = xmmword_25145B000;
  v13[3] = xmmword_25145B010;
  v14 = specialized static HKCategoryValueOvulationTestResult.valueLabelDictionary.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  *a1 = 0x4072C00000000000;
  v17 = a1 + *(v8 + 40);
  *v17 = 1;
  *(v17 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v17 + 2) = v15;
  *(v17 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v17 + 4) = v16;
  *(v17 + 5) = 0xD000000000000015;
  *(v17 + 6) = 0x8000000251462D90;

  v18 = specialized static HKCategoryValueOvulationTestResult.valueLabelDictionary.getter();
  v19 = [objc_opt_self() systemIndigoColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v20 = *(v3 + 72);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v25[2] = v18;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

void HKMenstruationStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v11 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463580);
  v12 = MEMORY[0x253076390](v11);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25145AFD0;
  *(v13 + 32) = xmmword_25145B020;
  *(v13 + 48) = xmmword_25145B030;
  *(v13 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v10, type metadata accessor for HealthChartsContext);
  v14 = type metadata accessor for HealthChartsContext();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v10, 0, 1, v14);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v16 = swift_allocObject();
  *a2 = v16;
  outlined init with copy of HealthChartsUnit?(v10, v7, type metadata accessor for HealthChartsContext?);
  v17 = (*(v15 + 48))(v7, 1, v14);
  v18 = MEMORY[0x277D84F90];
  if (v17 == 1)
  {
    v19 = v12;

    outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v21 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v20 = *v7;
  v21 = *v7;
  v22 = v12;

  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext);
  if (!v20)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);

  v16[2] = v21;
  v16[3] = v13;
  v16[4] = v12;
  v16[5] = 0;
  v16[6] = v18;
}

double HKSexualActivityStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v36 + 1) = v14;
  v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v13);
  v35 = xmmword_25145B040;
  v15 = FixedNumeric.debugDescription.getter();
  v17 = v16;
  outlined init with copy of FixedNumeric(&v35, v33);
  v18 = swift_allocObject();
  v19 = v33[1];
  *(v18 + 16) = v33[0];
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = v35;
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v8 + 40);
  *v22 = 1;
  *(v22 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 2) = v18;
  *(v22 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 4) = v20;
  *(v22 + 5) = v15;
  *(v22 + 6) = v17;
  v23 = [objc_opt_self() systemIndigoColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = 1;
  v6[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v24 = *(v3 + 72);
  v25 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v26 + v25, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v28 = v27;
  v29 = a1 + *(v27 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v29 + 3) = v30;
  *(v29 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 538160.729;
  *v29 = xmmword_25145B050;
  *(a1 + *(v28 + 40)) = v26;
  return result;
}

double HKMindfulSessionStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v36 + 1) = v14;
  v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v13);
  v35 = xmmword_25145B060;
  v15 = FixedNumeric.debugDescription.getter();
  v17 = v16;
  outlined init with copy of FixedNumeric(&v35, v33);
  v18 = swift_allocObject();
  v19 = v33[1];
  *(v18 + 16) = v33[0];
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = v35;
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v8 + 40);
  *v22 = 1;
  *(v22 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 2) = v18;
  *(v22 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 4) = v20;
  *(v22 + 5) = v15;
  *(v22 + 6) = v17;
  v23 = [objc_opt_self() systemMintColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = 1;
  v6[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v24 = *(v3 + 72);
  v25 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v26 + v25, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v28 = v27;
  v29 = a1 + *(v27 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v29 + 3) = v30;
  *(v29 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.6980311e-152;
  *v29 = xmmword_25145B070;
  *(a1 + *(v28 + 40)) = v26;
  return result;
}

uint64_t HKPushCountStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461330);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

double HKLocationSeriesStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v14;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v15 = swift_allocObject();
  v16 = v31[0];
  v15[3] = v30[2];
  v15[4] = v16;
  *(v15 + 74) = *(v31 + 10);
  v17 = v30[1];
  v15[1] = v30[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v34[16];
  v18[3] = *v34;
  v18[4] = v19;
  *(v18 + 74) = *&v34[26];
  v20 = v33;
  v18[1] = v32;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = *(v3 + 72);
  v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v24 + v23, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v26 = v25;
  v27 = a1 + *(v25 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v27 + 3) = v28;
  *(v27 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 9.08367203e223;
  *v27 = xmmword_25145B080;
  *(a1 + *(v26 + 40)) = v24;
  return result;
}

double HKWheelchairUseStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemGrayColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.71439354e161;
  *v28 = xmmword_25145B090;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

double HKCDADocumentStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemGrayColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = a1 + *(v26 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  *(v28 + 3) = v29;
  *(v28 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 2.91811673e257;
  *v28 = xmmword_25145B0A0;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

uint64_t HKSwimmingDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461870);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](109, 0xE100000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKSwimmingStrokesStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461090);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKWheelchairDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251461810);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKWaistCircumferenceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460FB0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](28003, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKRestingHeartRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000028, 0x80000002514612D0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRestingHeartRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4034000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

unint64_t HKHeartbeatSeriesStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = (a1 + *(v26 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  v28[3] = v29;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v28[4] = result;
  *v28 = 0xD000000000000010;
  v28[1] = 0x80000002514626A0;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}

uint64_t HKVO2MaxStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251460FE0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](0x6D2A676B282F6C6DLL, 0xEB00000000296E69);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKVO2MaxStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](0x6D2A676B282F6C6DLL, 0xEB00000000296E69);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4030000000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

uint64_t HKWalkingHeartRateAverageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251460F00);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDownhillSnowSportsDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461930);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v22 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 16;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

uint64_t HKHeartRateVariabilitySDNNStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  type metadata accessor for HealthChartsContext?(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v21 = MEMORY[0x253076160](0xD000000000000030, 0x80000002514615B0);
  v31 = MEMORY[0x2530763A0](v21);
  outlined init with copy of HealthChartsUnit?(a1, v20, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v20, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v22 = MEMORY[0x253076160](29549, 0xE200000000000000);
  v23 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v24 = swift_allocObject();
  *a2 = v24;
  outlined init with copy of HealthChartsUnit?(v20, v17, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v27 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v25 = v30;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v17, v30, type metadata accessor for HealthChartsContext);
  v26 = *v25;
  v27 = *v25;
  outlined destroy of HealthChartsUnit?(v25, type metadata accessor for HealthChartsContext);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_5:
  v24[6] = v9;
  v24[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 3);
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  v24[2] = v27;
  v24[8] = v31;
  v24[9] = 2;
  v24[10] = v23;
  (*(v10 + 8))(v13, v9);
  return outlined destroy of HealthChartsUnit?(v20, type metadata accessor for HealthChartsContext?);
}

unint64_t HKHeartRateVariabilitySDNNStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v33 = *(v2 - 8);
  v3 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v12 = v11;
  v13 = a1 + *(v11 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v15 = &v13[*(v14 + 52)];
  v15[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  *v13 = 1;
  v17 = MEMORY[0x253076160](29549, 0xE200000000000000);
  v18 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v35[0]) = 0;
  v34 = 1;
  v38[0] = 0x4062C00000000000;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v10, v38, v35, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsUnit?);
  v19 = v36;
  v20 = v37;
  v21 = v35[0];
  v22 = v35[1];
  *a1 = 0x4072C00000000000;
  v23 = a1 + *(v12 + 40);
  *v23 = 1;
  *(v23 + 8) = v21;
  *(v23 + 24) = v22;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v24 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v25 = *(v3 + 72);
  v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v27 + v26, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v29 = v28;
  v30 = a1 + *(v28 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity);
  *(v30 + 3) = v31;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v30 + 4) = result;
  *(a1 + *(v29 + 40)) = v27;
  return result;
}

unint64_t HKTachycardiaEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v36 + 1) = v14;
  v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v13);
  v35 = xmmword_25145B0B0;
  v15 = FixedNumeric.debugDescription.getter();
  v17 = v16;
  outlined init with copy of FixedNumeric(&v35, v33);
  v18 = swift_allocObject();
  v19 = v33[1];
  *(v18 + 16) = v33[0];
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = v35;
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v8 + 40);
  *v22 = 1;
  *(v22 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 2) = v18;
  *(v22 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v22 + 4) = v20;
  *(v22 + 5) = v15;
  *(v22 + 6) = v17;
  v23 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = 1;
  v6[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v24 = *(v3 + 72);
  v25 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v26 + v25, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v28 = v27;
  v29 = (a1 + *(v27 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  v29[3] = v30;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v29[4] = result;
  *v29 = 0xD000000000000011;
  v29[1] = 0x8000000251463850;
  *(a1 + *(v28 + 40)) = v26;
  return result;
}

unint64_t HKElectrocardiogramStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v32 = *(v2 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = a1 + *(v7 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v11 = &v9[*(v10 + 52)];
  v11[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *v9 = 1;
  v13 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v36 + 1) = v14;
  *v37 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v13);
  v35 = xmmword_25145AF50;
  memset(&v37[8], 0, 32);
  *&v37[40] = 256;
  outlined init with copy of AutomaticNumeric(&v35, v33);
  v15 = swift_allocObject();
  v16 = v34[0];
  v15[3] = v33[2];
  v15[4] = v16;
  *(v15 + 74) = *(v34 + 10);
  v17 = v33[1];
  v15[1] = v33[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *&v37[16];
  v18[3] = *v37;
  v18[4] = v19;
  *(v18 + 74) = *&v37[26];
  v20 = v36;
  v18[1] = v35;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v8 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  v22 = [objc_opt_self() systemPinkColor];
  *v6 = Color.init(uiColor:)();
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4000000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v23 = *(v3 + 72);
  v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v6, v25 + v24, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v27 = v26;
  v28 = (a1 + *(v26 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription);
  v28[3] = v29;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v28[4] = result;
  *v28 = 0xD000000000000011;
  v28[1] = 0x80000002514626F0;
  *(a1 + *(v27 + 40)) = v25;
  return result;
}