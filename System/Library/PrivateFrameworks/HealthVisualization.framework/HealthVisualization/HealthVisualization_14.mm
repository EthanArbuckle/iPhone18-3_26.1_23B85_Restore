uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.primaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 40));
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  if (v7)
  {
    v8 = v2[2];
  }

  else
  {
    v8 = [*(v4 + 24) unitForChartingDisplayType_];
    if (!v8)
    {
      v8 = [v6 _unit];
    }
  }

  v9 = v7;
  v10 = sub_1D14A1764(v5, v6, v8);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = *&v10;
    v14 = [v5 presentation];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v16 = [v14 adjustedValueForDaemonValue_];

    v8 = v8;
    v17 = [v5 hk:v8 valueFormatterForUnit:?];
    v18 = sub_1D15A3048();
    v19 = *(v4 + 24);
    v20 = v18;
    v21 = sub_1D15A3068();
    v22 = [v17 attributedStringFromValue:v16 displayType:v5 unit:v8 unitController:v19 valueFont:v20 unitFont:v21];

    if (v22)
    {
      sub_1D15A2428();
      v12 = 0;
      v23 = v8;
      v8 = v20;
    }

    else
    {
      v12 = 1;
      v23 = v16;
      v16 = v17;
      v17 = v20;
    }
  }

  v24 = sub_1D15A23F8();
  v25 = *(*(v24 - 8) + 56);

  return v25(a1, v12, 1, v24);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.displayableValue.getter()
{
  v1 = v0;
  v2 = *(v0 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 40));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (v5)
  {
    v6 = v1[2];
  }

  else
  {
    v6 = [*(v2 + 24) unitForChartingDisplayType_];
    if (!v6)
    {
      v6 = [v4 _unit];
    }
  }

  v7 = v5;
  v8 = sub_1D14A1764(v3, v4, v6);
  if (v9)
  {

    return 0;
  }

  else
  {
    v11 = *&v8;
    v12 = [v3 presentation];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v14 = [v12 adjustedValueForDaemonValue_];

    [v14 doubleValue];
    v16 = v15;

    return v16;
  }
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 36));
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = sub_1D15A23F8();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    v15 = v7 & 1;
    v11 = *(v6 + 1);
    v12 = v6[16];
    sub_1D1584E98(v6, v5, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
    v13 = *(v3 + 24);
    MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)(&v15, v11, v12, &v5[v13], a1);
    return sub_1D1584F00(&v5[v13], sub_1D1491C64);
  }
}

uint64_t sub_1D1587418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + *(a1 + 36));
  v9 = *v8;
  if (v9 == 2)
  {
    v10 = sub_1D15A23F8();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }

  else
  {
    v17 = v9 & 1;
    v13 = *(v8 + 1);
    v14 = v8[16];
    sub_1D1584E98(v8, v7, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
    v15 = *(v5 + 24);
    MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)(&v17, v13, v14, &v7[v15], a2);
    return sub_1D1584F00(&v7[v15], sub_1D1491C64);
  }
}

id QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.unitMode.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.unitMode.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.primaryString.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v5 = v7;
  sub_1D14A1FE8(v3, v4, &v7, a1);
  v6 = v7;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.displayableValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v12 = v3;
  v5 = (*(*v4 + 128))(&v12, v1, v2);
  v6 = sub_1D14A1764(v1, v2, v5);
  if (v7)
  {

    return 0;
  }

  else
  {
    v9 = (*(*v4 + 144))(v1, *&v6);
    [v9 doubleValue];
    v11 = v10;

    return v11;
  }
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D15A23F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1D1587850(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v5 = v7;
  sub_1D14A1FE8(v3, v4, &v7, a1);
  v6 = v7;
}

uint64_t sub_1D15878BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D15A23F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D1587960()
{
  result = sub_1D1453BA0(319, &qword_1EE05AD58);
  if (v1 <= 0x3F)
  {
    result = sub_1D1453BA0(319, &qword_1EE056798);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for StatisticsSnidgetStringBuilder();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D1587A9C()
{
  result = sub_1D1453BA0(319, &qword_1EE05AD58);
  if (v1 <= 0x3F)
  {
    result = sub_1D1453BA0(319, &qword_1EE056798);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SampleCountSnidgetStringBuilder();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_10Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1491C64();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 32)];

    return v12(v13, a2, v11);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_11Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_1D1491C64();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 32)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1D1587CF0()
{
  sub_1D14F55DC(319, &qword_1EE057818);
  if (v0 <= 0x3F)
  {
    sub_1D14F55DC(319, &qword_1EE059130);
    if (v1 <= 0x3F)
    {
      sub_1D14F55DC(319, &qword_1EE058E48);
      if (v2 <= 0x3F)
      {
        sub_1D14F55DC(319, &qword_1EE059748);
        if (v3 <= 0x3F)
        {
          sub_1D1491C64();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D1587E24()
{
  result = sub_1D1453BA0(319, &qword_1EE05AD58);
  if (v1 <= 0x3F)
  {
    result = sub_1D1453BA0(319, &qword_1EE056798);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MostRecentSampleSnidgetStringBuilder();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1D1587F34()
{
  sub_1D14F55DC(319, &qword_1EE057818);
  if (v0 <= 0x3F)
  {
    sub_1D14F55DC(319, &qword_1EE059748);
    if (v1 <= 0x3F)
    {
      sub_1D1491C64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D1588004(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1D158804C(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id HKCodableSummaryData.currentValueModel()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1D15A3268();
  v101 = *(v1 - 8);
  v102 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v100 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v85 - v4;
  sub_1D1589D20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v85 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  v13 = sub_1D15A2CD8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  sub_1D1453BA0(0, &qword_1EE056700);
  sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
  v26 = v0;
  sub_1D15A2F88();
  v27 = v14[6];
  if (v27(v12, 1, v13) == 1)
  {
    sub_1D1589D78(v12);
LABEL_7:
    v40 = v100;
    sub_1D15A31E8();
    v41 = v26;
    v42 = sub_1D15A3248();
    v43 = sub_1D15A4338();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v103[0] = v45;
      *v44 = 136315650;
      v46 = sub_1D15A4D18();
      v48 = sub_1D1479780(v46, v47, v103);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1D1479780(0xD000000000000013, 0x80000001D15C2720, v103);
      *(v44 + 22) = 2080;
      v49 = v41;
      v50 = [v49 description];
      v51 = sub_1D15A3F38();
      v53 = v52;

      v54 = sub_1D1479780(v51, v53, v103);

      *(v44 + 24) = v54;
      _os_log_impl(&dword_1D1446000, v42, v43, "[%s] %s: Version mismatch found when decoding summary data %s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v45, -1, -1);
      MEMORY[0x1D388BF00](v44, -1, -1);
    }

    (*(v101 + 8))(v40, v102);
    return 0;
  }

  v28 = v14[4];
  v92 = v14 + 4;
  v93 = v27;
  v91 = v28;
  v28(v25, v12, v13);
  sub_1D15A2CC8();
  v89 = v14[2];
  v89(v9, v25, v13);
  v29 = v14[7];
  v87 = v14 + 7;
  v88 = v29;
  v29(v9, 0, 1, v13);
  v30 = sub_1D15A2CB8();
  sub_1D1589D78(v9);
  v31 = v14[1];
  v31(v22, v13);
  if ((v30 & 1) == 0)
  {
    v31(v25, v13);
    goto LABEL_7;
  }

  v85 = v14 + 2;
  v86 = v25;
  v32 = v9;
  v90 = v31;
  v100 = v13;
  v33 = v26;
  v34 = [v26 contentData];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1D15A2518();
    v38 = v37;

    v39 = sub_1D15A24F8();
    sub_1D1498BF4(v36, v38);
  }

  else
  {
    v39 = 0;
  }

  v55 = [objc_allocWithZone(MEMORY[0x1E69A42A8]) initWithData_];

  if (v55)
  {
    sub_1D1453BA0(0, &qword_1EE056670);
    sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
    v57 = v97;
    sub_1D15A2F88();
    v58 = v100;
    if (v93(v57, 1, v100) == 1)
    {

      sub_1D1589D78(v57);
      goto LABEL_23;
    }

    v59 = v96;
    v91(v96, v57, v58);
    v60 = [v55 kindRawValue];
    if (v60)
    {
      v61 = v60;
      sub_1D15A3F38();

      v58 = v100;
      HKCodableSummaryCurrentValue.Kind.init(rawValue:)(v103);
      if (LOBYTE(v103[0]) != 23)
      {
        if (LOBYTE(v103[0]) == 3)
        {
          v64 = v94;
          sub_1D15A2CC8();
          v62 = v86;
          v63 = v32;
        }

        else
        {
          v62 = v86;
          v63 = v32;
          v64 = v94;
          sub_1D15A2CC8();
        }

        v80 = v95;
        v91(v95, v64, v58);
        v81 = v96;
        v89(v63, v96, v58);
        v88(v63, 0, 1, v58);
        v82 = sub_1D15A2CB8();
        sub_1D1589D78(v63);
        v83 = v80;
        v84 = v90;
        v90(v83, v58);
        v84(v81, v58);
        if (v82)
        {
          v84(v62, v58);
          return v55;
        }

        goto LABEL_22;
      }
    }

    else
    {
      LOBYTE(v103[0]) = 23;
    }

    v90(v59, v58);
LABEL_22:
  }

LABEL_23:
  v65 = v98;
  sub_1D15A31E8();
  v66 = v33;
  v67 = sub_1D15A3248();
  v68 = sub_1D15A4338();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v103[0] = v70;
    *v69 = 136315650;
    v71 = sub_1D15A4D18();
    v73 = sub_1D1479780(v71, v72, v103);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_1D1479780(0xD000000000000013, 0x80000001D15C2720, v103);
    *(v69 + 22) = 2080;
    v74 = v66;
    v75 = [v74 description];
    v76 = sub_1D15A3F38();
    v78 = v77;

    v79 = sub_1D1479780(v76, v78, v103);

    *(v69 + 24) = v79;
    _os_log_impl(&dword_1D1446000, v67, v68, "[%s] %s: Version mismatch found when decoding current value %s", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v70, -1, -1);
    MEMORY[0x1D388BF00](v69, -1, -1);

    (*(v101 + 8))(v98, v102);
  }

  else
  {

    (*(v101 + 8))(v65, v102);
  }

  v90(v86, v100);
  return 0;
}

void *HKCodableSummaryData.trendModel()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1D15A3268();
  v81 = *(v1 - 8);
  v82 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v70 - v4;
  sub_1D1589D20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  v13 = sub_1D15A2CD8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  sub_1D1453BA0(0, &qword_1EE056700);
  sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
  sub_1D15A2F88();
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    sub_1D1589D78(v12);
    v23 = v82;
LABEL_7:
    v32 = v80;
    sub_1D15A31E8();
    v33 = v0;
    v34 = sub_1D15A3248();
    v35 = sub_1D15A4338();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v83 = v37;
      *v36 = 136315650;
      v38 = sub_1D15A4D18();
      v40 = sub_1D1479780(v38, v39, &v83);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1D1479780(0x646F4D646E657274, 0xEC00000029286C65, &v83);
      *(v36 + 22) = 2080;
      v41 = v33;
      v42 = [v41 description];
      v43 = sub_1D15A3F38();
      v45 = v44;

      v46 = sub_1D1479780(v43, v45, &v83);

      *(v36 + 24) = v46;
      _os_log_impl(&dword_1D1446000, v34, v35, "[%s] %s: Version mismatch found when decoding summary data %s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v37, -1, -1);
      MEMORY[0x1D388BF00](v36, -1, -1);
    }

    (*(v81 + 8))(v32, v23);
    return 0;
  }

  v77 = v0;
  v73 = *(v14 + 32);
  v74 = v14 + 32;
  v73(v21, v12, v13);
  sub_1D15A2CC8();
  (*(v14 + 16))(v9, v21, v13);
  v72 = *(v14 + 56);
  v72(v9, 0, 1, v13);
  v24 = sub_1D15A2CB8();
  sub_1D1589D78(v9);
  v25 = *(v14 + 8);
  v25(v18, v13);
  if ((v24 & 1) == 0)
  {
    v25(v21, v13);
    v23 = v82;
    v0 = v77;
    goto LABEL_7;
  }

  v80 = v25;
  v71 = v21;
  v26 = [v77 contentData];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D15A2518();
    v30 = v29;

    v31 = sub_1D15A24F8();
    sub_1D1498BF4(v28, v30);
  }

  else
  {
    v31 = 0;
  }

  v47 = [objc_allocWithZone(MEMORY[0x1E69A4318]) initWithData_];

  if (v47)
  {
    sub_1D1453BA0(0, &qword_1EE056660);
    sub_1D1505A88(&qword_1EE056668, &qword_1EE056660);
    v48 = v76;
    v49 = v47;
    sub_1D15A2F88();
    if (v22(v48, 1, v13) == 1)
    {

      sub_1D1589D78(v48);
    }

    else
    {
      v50 = v75;
      v73(v75, v48, v13);
      sub_1D15A2CC8();
      v72(v9, 0, 1, v13);
      v51 = sub_1D15A2CB8();
      sub_1D1589D78(v9);
      v52 = v50;
      v53 = v80;
      (v80)(v52, v13);
      if (v51)
      {
        v53(v71, v13);
        return v49;
      }
    }
  }

  v55 = v78;
  sub_1D15A31E8();
  v56 = v77;
  v57 = sub_1D15A3248();
  v58 = sub_1D15A4338();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v83 = v60;
    *v59 = 136315650;
    v61 = sub_1D15A4D18();
    v63 = sub_1D1479780(v61, v62, &v83);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_1D1479780(0x646F4D646E657274, 0xEC00000029286C65, &v83);
    *(v59 + 22) = 2080;
    v64 = v56;
    v65 = [v64 description];
    v66 = sub_1D15A3F38();
    v68 = v67;

    v69 = sub_1D1479780(v66, v68, &v83);

    *(v59 + 24) = v69;
    _os_log_impl(&dword_1D1446000, v57, v58, "[%s] %s: Version mismatch found when decoding trend value %s", v59, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v60, -1, -1);
    MEMORY[0x1D388BF00](v59, -1, -1);

    (*(v81 + 8))(v78, v82);
  }

  else
  {

    (*(v81 + 8))(v55, v82);
  }

  (v80)(v71, v13);
  return 0;
}

uint64_t HKCodableSummaryData.chartModel()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1D15A3268();
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v73 - v4;
  sub_1D1589D20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  v13 = sub_1D15A2CD8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  sub_1D1453BA0(0, &qword_1EE056700);
  sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
  v87 = v0;
  sub_1D15A2F88();
  v22 = v14[6];
  if (v22(v12, 1, v13) == 1)
  {
    sub_1D1589D78(v12);
LABEL_8:
    v36 = v84;
    sub_1D15A31E8();
    v37 = v87;
    v38 = sub_1D15A3248();
    v39 = sub_1D15A4338();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v88 = v41;
      *v40 = 136315650;
      v42 = sub_1D15A4D18();
      v44 = sub_1D1479780(v42, v43, &v88);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1D1479780(0x646F4D7472616863, 0xEC00000029286C65, &v88);
      *(v40 + 22) = 2080;
      v45 = v37;
      v46 = [v45 description];
      v47 = sub_1D15A3F38();
      v49 = v48;

      v50 = sub_1D1479780(v47, v49, &v88);

      *(v40 + 24) = v50;
      _os_log_impl(&dword_1D1446000, v38, v39, "[%s] %s: Version mismatch found when decoding summary data from: %s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v41, -1, -1);
      MEMORY[0x1D388BF00](v40, -1, -1);
    }

    (*(v85 + 8))(v36, v86);
    return 0;
  }

  v78 = v14[4];
  v79 = v14 + 4;
  v78(v21, v12, v13);
  sub_1D15A2CC8();
  v76 = v14[2];
  v76(v9, v21, v13);
  v23 = v14[7];
  v77 = v14 + 7;
  v75 = v23;
  v23(v9, 0, 1, v13);
  v24 = sub_1D15A2CB8();
  sub_1D1589D78(v9);
  v27 = v14[1];
  v26 = (v14 + 1);
  v25 = v27;
  v27(v18, v13);
  if ((v24 & 1) == 0)
  {
    v25(v21, v13);
    goto LABEL_8;
  }

  v84 = v21;
  v28 = v87;
  if (![v87 hasContentData])
  {
    v25(v84, v13);
    return 1;
  }

  v74 = v25;
  v29 = [v28 contentData];
  v30 = v26;
  if (v29)
  {
    v31 = v29;
    v32 = sub_1D15A2518();
    v34 = v33;

    v35 = sub_1D15A24F8();
    sub_1D1498BF4(v32, v34);
  }

  else
  {
    v35 = 0;
  }

  v52 = v81;
  v53 = [objc_allocWithZone(MEMORY[0x1E69A4190]) initWithData_];

  if (v53)
  {
    v81 = v30;
    sub_1D1453BA0(0, &qword_1EC630F08);
    sub_1D1505A88(&qword_1EC630F10, &qword_1EC630F08);
    sub_1D15A2F88();
    if (v22(v52, 1, v13) == 1)
    {

      sub_1D1589D78(v52);
    }

    else
    {
      v54 = v80;
      v78(v80, v52, v13);
      sub_1D15A2CC8();
      v76(v9, v54, v13);
      v75(v9, 0, 1, v13);
      v55 = sub_1D15A2CB8();
      sub_1D1589D78(v9);
      v56 = v18;
      v57 = v74;
      v74(v56, v13);
      v57(v54, v13);
      if (v55)
      {
        v57(v84, v13);
        return v53;
      }
    }
  }

  v58 = v82;
  sub_1D15A31E8();
  v59 = v87;
  v60 = sub_1D15A3248();
  v61 = sub_1D15A4338();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v88 = v63;
    *v62 = 136315650;
    v64 = sub_1D15A4D18();
    v66 = sub_1D1479780(v64, v65, &v88);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_1D1479780(0x646F4D7472616863, 0xEC00000029286C65, &v88);
    *(v62 + 22) = 2080;
    v67 = v59;
    v68 = [v67 description];
    v69 = sub_1D15A3F38();
    v71 = v70;

    v72 = sub_1D1479780(v69, v71, &v88);

    *(v62 + 24) = v72;
    _os_log_impl(&dword_1D1446000, v60, v61, "[%s] %s: Version mismatch found when decoding chart model from: %s", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v63, -1, -1);
    MEMORY[0x1D388BF00](v62, -1, -1);

    (*(v85 + 8))(v82, v86);
  }

  else
  {

    (*(v85 + 8))(v58, v86);
  }

  v74(v84, v13);
  return 0;
}

void sub_1D1589D20()
{
  if (!qword_1EE059428)
  {
    sub_1D15A2CD8();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059428);
    }
  }
}

uint64_t sub_1D1589D78(uint64_t a1)
{
  sub_1D1589D20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D1589DD4()
{
  type metadata accessor for DiagramFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE068250 = result;
  return result;
}

uint64_t TimeBasedDistributionFlavor.hashValue.getter(char a1)
{
  sub_1D15A4C88();
  MEMORY[0x1D388B000](a1 & 1);
  return sub_1D15A4CB8();
}

uint64_t sub_1D1589EC8(uint64_t a1)
{
  v2 = sub_1D15A2838();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + *(type metadata accessor for TimeBasedDistribution() + 20));
  v7 = v6[1].i64[0];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6[2];
  v12 = *(v6 + 40 * v7 - 8);
  v13 = v8;
  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 88))(v5, v2);
  if (v9 != *MEMORY[0x1E6969A58])
  {
    if (v9 != *MEMORY[0x1E6969AB0] || (vaddvq_s32(vbicq_s8(xmmword_1D15B6AB0, vuzp1q_s32(vceqq_s64(v13, xmmword_1D15B3540), vceqq_s64(v12, xmmword_1D15B3590)))) & 0xF) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = v9 == *MEMORY[0x1E6969A58];
    (*(v3 + 8))(v5, v2);
    sub_1D154BAB8(a1);
    return v10;
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v13, xmmword_1D15B35B0), vceqq_s64(v12, xmmword_1D15B3600))))) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](0xD000000000000037, 0x80000001D15C2780);
  sub_1D15A48B8();
LABEL_9:
  result = sub_1D15A4908();
  __break(1u);
  return result;
}

unint64_t sub_1D158A18C()
{
  result = qword_1EC6314D0;
  if (!qword_1EC6314D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314D0);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.adjustedForZeroDimensionsIfNecessary()()
{
  if (v2 <= 2.22507386e-308 || v3 <= 2.22507386e-308)
  {
    v5 = 0.01;
    if (v2 > 0.01)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0.01;
    }

    if (v3 > 0.01)
    {
      v5 = v3;
    }

    v0 = v0 - (v6 - v2) * 0.5;
    v1 = v1 - (v5 - v3) * 0.5;
    v2 = v6;
    v3 = v5;
  }

  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

uint64_t protocol witness for SharableModelVersionProviding.modelVersion() in conformance HKCodableSummaryActivityRingsValue()
{
  v1 = *v0;
  if ([v1 paused] & 1) == 0 && (objc_msgSend(v1, sel_hasAppleStandHoursGoal))
  {
    [v1 hasAppleExerciseTimeGoal];
  }

  return sub_1D15A2CC8();
}

UIEdgeInsets __swiftcall DiagramConfiguration.Insets.toInsets()()
{
  v1 = *v0;
  v2 = dbl_1D15BB670[v1];
  v3 = dbl_1D15BB690[v1];
  v4 = v2;
  v5 = v3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

Swift::Float __swiftcall DiagramConfiguration.AxisTickLength.toPoints()()
{
  result = 0.0;
  if (!*v0)
  {
    return 7.0;
  }

  return result;
}

Swift::String_optional __swiftcall DiagramConfiguration.ValueFormatter.format(value:)(NSNumber value)
{
  if (*(v1 + 8) == 1)
  {
    if (*v1)
    {
      v3 = [objc_opt_self() hk_percentNumberFormatter];
      v4 = [v3 stringFromNumber_];
      goto LABEL_8;
    }

    v5 = HKIntegerFormatter();
    if (!v5)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v5 = HKNumberFormatterWithDecimalPrecision();
    if (!v5)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_13;
    }
  }

  v3 = v5;
  v4 = [v5 stringFromNumber_];
LABEL_8:
  v7 = v4;

  if (!v7)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v8 = sub_1D15A3F38();
  v10 = v9;

  v6 = v10;
  v5 = v8;
LABEL_13:
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1D158A478()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D158A5A4()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D158A698()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D158A7DC()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D158A904()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D158A9F4()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t DiagramConfiguration.LineProperties.init(lineWidth:lineColor:lineHighlightColor:linePointRadius:lineCornerRadius:referenceAnnotationPosition:referenceLineColor:referenceLineWidth:referenceLineTextAttributes:dataGroupForPointLabels:pointLabels:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, unsigned __int8 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t *a12)
{
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  result = *a7;
  v19 = *a8;
  v20 = *a10;
  v21 = *a11;
  v22 = *a12;
  v23 = *(a12 + 4);
  v24 = *(a12 + 10);
  *a9 = v12;
  *(a9 + 1) = v13;
  *(a9 + 2) = v14;
  *(a9 + 3) = v15;
  *(a9 + 4) = v16;
  *(a9 + 5) = v17;
  *(a9 + 6) = result;
  *(a9 + 7) = v19;
  *(a9 + 8) = v20;
  *(a9 + 9) = v21;
  *(a9 + 16) = v22;
  *(a9 + 26) = v24;
  *(a9 + 24) = v23;
  return result;
}

HealthVisualization::DiagramConfiguration::AxisProperties __swiftcall DiagramConfiguration.AxisProperties.init(axisType:labelTextAttributes:labelColor:gridLineColor:gridLineWidth:majorTickLength:minorTickLength:)(HealthVisualization::DiagramConfiguration::AxisType axisType, HealthVisualization::DiagramConfiguration::TextAttributes labelTextAttributes, HealthVisualization::DiagramConfiguration::Color labelColor, HealthVisualization::DiagramConfiguration::Color gridLineColor, HealthVisualization::DiagramConfiguration::AxisLineWidth gridLineWidth, HealthVisualization::DiagramConfiguration::AxisTickLength majorTickLength, HealthVisualization::DiagramConfiguration::AxisTickLength minorTickLength)
{
  v8 = *labelTextAttributes;
  v9 = *labelColor;
  v10 = *gridLineColor;
  v11 = *gridLineWidth;
  v12 = *majorTickLength;
  v13 = *minorTickLength;
  *v7 = *axisType;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  v7[5] = v12;
  v7[6] = v13;
  result.axisType = axisType;
  return result;
}

HealthVisualization::DiagramConfiguration::Axis __swiftcall DiagramConfiguration.Axis.init(horizontal:vertical:)(HealthVisualization::DiagramConfiguration::AxisProperties_optional horizontal, HealthVisualization::DiagramConfiguration::AxisProperties_optional vertical)
{
  v3 = **&horizontal.value.axisType;
  v6 = *(*&horizontal.value.axisType + 4);
  v4 = *&horizontal.value.axisType + 4;
  v5 = v6;
  v7 = **&vertical.value.axisType;
  v9 = *(*&vertical.value.axisType + 4);
  v8 = *&vertical.value.axisType + 4;
  *(v2 + 4) = v5;
  *v2 = v3;
  *(v2 + 6) = *(v4 + 2);
  *(v2 + 11) = v9;
  *(v2 + 7) = v7;
  *(v2 + 13) = *(v8 + 2);
  *&result.vertical.value.labelTextAttributes = v8;
  *&result.vertical.value.majorTickLength = WORD2(v8);
  result.horizontal = v4;
  result.vertical.value.axisType = HIBYTE(v4);
  return result;
}

HealthVisualization::DiagramConfiguration::PointLabelAllPointsConfiguration __swiftcall DiagramConfiguration.PointLabelAllPointsConfiguration.init(maxPointsAttributes:minPointsAttributes:)(HealthVisualization::DiagramConfiguration::PointLabelAllPointsAttributes_optional maxPointsAttributes, HealthVisualization::DiagramConfiguration::PointLabelAllPointsAttributes_optional minPointsAttributes)
{
  v3 = *minPointsAttributes.value.valueAttributes;
  *v2 = *maxPointsAttributes.value.valueAttributes;
  v2[1] = v3;
  result.maxPointsAttributes = maxPointsAttributes;
  return result;
}

Swift::Float __swiftcall DiagramConfiguration.AxisLineWidth.toPoints()()
{
  result = 2.0;
  if (*v0)
  {
    return 1.0;
  }

  return result;
}

CGSize __swiftcall DiagramConfiguration.CornerSize.toSize()()
{
  v1 = dbl_1D15BB6B0[*v0];
  v2 = v1;
  result.height = v2;
  result.width = v1;
  return result;
}

HealthVisualization::DiagramConfiguration::PointLabelConfigurationKeys_optional __swiftcall DiagramConfiguration.PointLabelConfigurationKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x78614D6E696DLL && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1D15A4BA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x746E696F506C6C61 && object == 0xE900000000000073)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t DiagramConfiguration.PointLabelConfigurationKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t DiagramConfiguration.PointLabelConfigurationKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x746E696F506C6C61;
  }

  else
  {
    return 0x78614D6E696DLL;
  }
}

uint64_t sub_1D158AE5C()
{
  if (*v0)
  {
    return 0x746E696F506C6C61;
  }

  else
  {
    return 0x78614D6E696DLL;
  }
}

uint64_t sub_1D158AE9C(uint64_t a1)
{
  v2 = sub_1D1598554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158AED8(uint64_t a1)
{
  v2 = sub_1D1598554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.PointLabelConfiguration.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE0563B8, sub_1D1598554, &type metadata for DiagramConfiguration.PointLabelConfigurationKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 4) | (*(v1 + 10) << 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598554();
  sub_1D15A4CE8();
  if (v9 < 0)
  {
    v16 = v8;
    v15 = 1;
    sub_1D15985A8();
  }

  else
  {
    v11[2] = v8;
    v12 = v9;
    v13 = BYTE2(v9) & 1;
    v14 = 0;
    sub_1D15985FC();
  }

  sub_1D15A4B38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.PointLabelConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1D1448B94(0, &qword_1EE05AC98, sub_1D1598554, &type metadata for DiagramConfiguration.PointLabelConfigurationKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598554();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v19;
  v11 = sub_1D15A4A88();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v11 + v12 + 31);

    if (v13)
    {
      v24 = 1;
      sub_1D1598650();
      sub_1D15A4A78();
      (*(v9 + 8))(v8, v5);
      v14 = v25;
      v15 = 0x800000;
    }

    else
    {
      v23 = 0;
      sub_1D15986A4();
      sub_1D15A4A78();
      (*(v9 + 8))(v8, v5);
      v14 = v20;
      if (v22)
      {
        v16 = 0x10000;
      }

      else
      {
        v16 = 0;
      }

      v15 = v21 | v16;
    }

    *v10 = v14;
    *(v10 + 8) = v15;
    *(v10 + 10) = BYTE2(v15);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

HealthVisualization::DiagramConfiguration::PointLabelMinMaxConfiguration __swiftcall DiagramConfiguration.PointLabelMinMaxConfiguration.init(labelAttributes:valueAttributes:labelOptions:avoidOverlappingLabelWithDataGroups:)(HealthVisualization::DiagramConfiguration::TextAttributes labelAttributes, HealthVisualization::DiagramConfiguration::TextAttributes valueAttributes, HealthVisualization::DiagramConfiguration::PointLabelMinMaxSet labelOptions, Swift::Bool avoidOverlappingLabelWithDataGroups)
{
  v5 = *labelAttributes;
  v6 = *valueAttributes;
  *v4 = *labelOptions.rawValue;
  *(v4 + 8) = v5;
  *(v4 + 9) = v6;
  *(v4 + 10) = avoidOverlappingLabelWithDataGroups;
  result.labelAttributes = valueAttributes;
  LOBYTE(result.labelOptions.rawValue) = labelAttributes;
  return result;
}

unint64_t sub_1D158B4D0()
{
  v1 = 0x74704F6C6562616CLL;
  v2 = 0x74744165756C6176;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000023;
  }

  if (*v0)
  {
    v1 = 0x7474416C6562616CLL;
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

uint64_t sub_1D158B570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159C254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D158B598(uint64_t a1)
{
  v2 = sub_1D15986F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158B5D4(uint64_t a1)
{
  v2 = sub_1D15986F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.PointLabelMinMaxConfiguration.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE0563B0, sub_1D15986F8, &type metadata for DiagramConfiguration.PointLabelMinMaxConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v14 = *(v1 + 9);
  v15 = v9;
  v13[1] = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15986F8();
  sub_1D15A4CE8();
  v23 = v8;
  v22 = 0;
  sub_1D159874C();
  v10 = v16;
  sub_1D15A4B38();
  if (!v10)
  {
    v11 = v14;
    v21 = v15;
    v20 = 1;
    sub_1D15987A0();
    sub_1D15A4B38();
    v19 = v11;
    v18 = 2;
    sub_1D15A4B38();
    v17 = 3;
    sub_1D15A4B08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.PointLabelMinMaxConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1D1448B94(0, &qword_1EE05AC90, sub_1D15986F8, &type metadata for DiagramConfiguration.PointLabelMinMaxConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15986F8();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v24 = 0;
    sub_1D15987F4();
    v11 = v5;
    sub_1D15A4A78();
    v12 = v25;
    v22 = 1;
    sub_1D144A930();
    sub_1D15A4A78();
    v17 = v12;
    LOBYTE(v12) = v23;
    v20 = 2;
    sub_1D15A4A78();
    v14 = v12;
    LOBYTE(v12) = v21;
    v19 = 3;
    v15 = sub_1D15A4A48();
    (*(v9 + 8))(v8, v11);
    *v10 = v17;
    *(v10 + 8) = v14;
    *(v10 + 9) = v12;
    *(v10 + 10) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D158BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D15C28E0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C2900 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D158BC6C(uint64_t a1)
{
  v2 = sub_1D1598848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158BCA8(uint64_t a1)
{
  v2 = sub_1D1598848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.PointLabelAllPointsConfiguration.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EC6314E8, sub_1D1598848, &type metadata for DiagramConfiguration.PointLabelAllPointsConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598848();
  sub_1D15A4CE8();
  v16 = v8;
  v15 = 0;
  sub_1D159889C();
  v9 = v11[1];
  sub_1D15A4AE8();
  if (!v9)
  {
    v14 = v12;
    v13 = 1;
    sub_1D15A4AE8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.PointLabelAllPointsConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = a2;
  sub_1D1448B94(0, &qword_1EC631500, sub_1D1598848, &type metadata for DiagramConfiguration.PointLabelAllPointsConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598848();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v15;
    v18 = 0;
    sub_1D15988F0();
    sub_1D15A4A28();
    v11 = v19;
    v16 = 1;
    sub_1D15A4A28();
    (*(v9 + 8))(v8, v5);
    v13 = v17;
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static DiagramConfiguration.PointLabelAllPointsAttributes.== infix(_:_:)()
{
  v0 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v2 = v1;
  if (v0 == DiagramConfiguration.TextAttributes.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D15A4BA8();
  }

  return v5 & 1;
}

uint64_t sub_1D158C1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74744165756C6176 && a2 == 0xEF73657475626972)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D158C248(uint64_t a1)
{
  v2 = sub_1D1598944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158C284(uint64_t a1)
{
  v2 = sub_1D1598944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.PointLabelAllPointsAttributes.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EC631510, sub_1D1598944, &type metadata for DiagramConfiguration.PointLabelAllPointsAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598944();
  sub_1D15A4CE8();
  v10[31] = v8;
  sub_1D15987A0();
  sub_1D15A4B38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.PointLabelAllPointsAttributes.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = a2;
  sub_1D1448B94(0, &qword_1EC631520, sub_1D1598944, &type metadata for DiagramConfiguration.PointLabelAllPointsAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598944();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v12;
    sub_1D144A930();
    sub_1D15A4A78();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void DiagramConfiguration.Bar.axis.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  *a1 = *(v1 + 24);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

void __swiftcall DiagramConfiguration.Bar.init(width:topColor:bottomColor:cornerSize:highlightColor:axisLineColor:referenceLineColor:referenceLineTextAttributes:referenceAnnotationPosition:axisText:baseValue:axis:outerInsets:)(HealthVisualization::DiagramConfiguration::Bar *__return_ptr retstr, HealthVisualization::DiagramConfiguration::BarWidth width, HealthVisualization::DiagramConfiguration::Color topColor, HealthVisualization::DiagramConfiguration::Color bottomColor, HealthVisualization::DiagramConfiguration::CornerSize cornerSize, HealthVisualization::DiagramConfiguration::Color highlightColor, HealthVisualization::DiagramConfiguration::Color axisLineColor, HealthVisualization::DiagramConfiguration::Color referenceLineColor, HealthVisualization::DiagramConfiguration::TextAttributes referenceLineTextAttributes, HealthVisualization::DiagramConfiguration::ReferenceAnnotationPosition referenceAnnotationPosition, HealthVisualization::DiagramConfiguration::TextAttributes axisText, Swift::Double baseValue, HealthVisualization::DiagramConfiguration::Axis_optional axis, HealthVisualization::DiagramConfiguration::Insets outerInsets)
{
  v14 = *width;
  v15 = *topColor;
  v16 = *bottomColor;
  v17 = *cornerSize;
  v18 = *highlightColor;
  v19 = *axisLineColor;
  v20 = *referenceLineColor;
  v21 = *referenceLineTextAttributes;
  v22 = *referenceAnnotationPosition;
  v23 = **&axis.value.horizontal.value.axisType;
  v24 = **&axis.value.vertical.value.labelTextAttributes;
  v25 = *(*&axis.value.vertical.value.labelTextAttributes + 8);
  v26 = *(*&axis.value.vertical.value.labelTextAttributes + 12);
  v27 = *outerInsets;
  retstr->width = v14;
  retstr->topColor = v15;
  retstr->bottomColor = v16;
  retstr->cornerSize = v17;
  retstr->highlightColor.value = v18;
  retstr->axisLineColor = v19;
  retstr->referenceLineColor = v20;
  retstr->referenceLineTextAttributes = v21;
  retstr->referenceAnnotationPosition = v22;
  retstr->axisText = v23;
  retstr->baseValue = baseValue;
  *&retstr->axis.value.horizontal.value.axisType = v24;
  *&retstr->axis.value.vertical.value.majorTickLength = v26;
  *&retstr->axis.value.vertical.value.labelTextAttributes = v25;
  retstr->outerInsets = v27;
}

unint64_t sub_1D158C758(char a1)
{
  result = 0x6874646977;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F43706F74;
      break;
    case 2:
      result = 0x6F436D6F74746F62;
      break;
    case 3:
      result = 0x695372656E726F63;
      break;
    case 4:
      result = 0x6867696C68676968;
      break;
    case 5:
      result = 0x656E694C73697861;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0x7478655473697861;
      break;
    case 10:
      result = 0x756C615665736162;
      break;
    case 11:
      result = 1936291937;
      break;
    case 12:
      result = 0x736E49726574756FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D158C8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159C3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D158C910(uint64_t a1)
{
  v2 = sub_1D1598998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158C94C(uint64_t a1)
{
  v2 = sub_1D1598998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.Bar.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE0596C0, sub_1D1598998, &type metadata for DiagramConfiguration.Bar.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v31 = v1[2];
  v32 = v9;
  v10 = v1[3];
  v29 = v1[4];
  v30 = v10;
  v11 = v1[5];
  v27 = v1[6];
  v28 = v11;
  v12 = v1[7];
  v25 = v1[8];
  v26 = v12;
  v24 = v1[9];
  v13 = *(v1 + 3);
  v22 = *(v1 + 18);
  v23 = v13;
  v21 = *(v1 + 8);
  HIDWORD(v20) = v1[38];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598998();
  v14 = v4;
  sub_1D15A4CE8();
  LOBYTE(v34) = v8;
  v37 = 0;
  sub_1D15989EC();
  v15 = v33;
  sub_1D15A4B38();
  if (v15)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = v30;
  v17 = v31;
  v18 = v29;
  LOBYTE(v34) = v32;
  v37 = 1;
  sub_1D1598A40();
  sub_1D15A4B38();
  LOBYTE(v34) = v17;
  v37 = 2;
  sub_1D15A4B38();
  v33 = v5;
  LOBYTE(v34) = v16;
  v37 = 3;
  sub_1D1598A94();
  sub_1D15A4B38();
  LOBYTE(v34) = v18;
  v37 = 4;
  sub_1D15A4AE8();
  LOBYTE(v34) = v28;
  v37 = 5;
  sub_1D15A4B38();
  LOBYTE(v34) = v27;
  v37 = 6;
  sub_1D15A4B38();
  LOBYTE(v34) = v26;
  v37 = 7;
  sub_1D15987A0();
  sub_1D15A4B38();
  LOBYTE(v34) = v25;
  v37 = 8;
  sub_1D1598AE8();
  sub_1D15A4B38();
  LOBYTE(v34) = v24;
  v37 = 9;
  sub_1D15A4B38();
  LOBYTE(v34) = 10;
  sub_1D15A4B18();
  v34 = v23;
  v35 = v21;
  v36 = (v21 | (v22 << 32)) >> 32;
  v37 = 11;
  sub_1D1598B3C();
  sub_1D15A4AE8();
  LOBYTE(v34) = BYTE4(v20);
  v37 = 12;
  sub_1D1598B90();
  sub_1D15A4B38();
  return (*(v5 + 8))(v7, v14);
}

uint64_t DiagramConfiguration.Bar.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EE05AC80, sub_1D1598998, &type metadata for DiagramConfiguration.Bar.CodingKeys, MEMORY[0x1E69E6F48]);
  v38 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598998();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v42 = 0;
    sub_1D1598BE4();
    sub_1D15A4A78();
    v10 = v39;
    v42 = 1;
    sub_1D144A26C();
    sub_1D15A4A78();
    v37 = v10;
    v12 = v39;
    v42 = 2;
    sub_1D15A4A78();
    v36 = v12;
    v13 = v39;
    v42 = 3;
    sub_1D1598C38();
    sub_1D15A4A78();
    v35 = v13;
    v14 = v39;
    v42 = 4;
    sub_1D15A4A28();
    v34 = v14;
    v15 = v39;
    v42 = 5;
    sub_1D15A4A78();
    v33 = v15;
    v16 = v39;
    v42 = 6;
    sub_1D15A4A78();
    v32 = v16;
    LOBYTE(v16) = v39;
    v42 = 7;
    sub_1D144A930();
    sub_1D15A4A78();
    v31 = v39;
    v42 = 8;
    sub_1D144B518();
    sub_1D15A4A78();
    v30 = v39;
    v42 = 9;
    sub_1D15A4A78();
    v17 = v39;
    LOBYTE(v39) = 10;
    sub_1D15A4A58();
    v19 = v18;
    v42 = 11;
    sub_1D144AB70();
    sub_1D15A4A28();
    v20 = v39;
    v29 = v41;
    v28 = v40;
    v42 = 12;
    sub_1D144D050();
    sub_1D15A4A78();
    v21 = v28 | (v29 << 32);
    (*(v9 + 8))(v8, v38);
    v22 = v39;
    v23 = v36;
    *a2 = v37;
    *(a2 + 1) = v23;
    v24 = v34;
    *(a2 + 2) = v35;
    *(a2 + 3) = v24;
    v25 = v32;
    *(a2 + 4) = v33;
    *(a2 + 5) = v25;
    *(a2 + 6) = v16;
    v26 = v30;
    *(a2 + 7) = v31;
    *(a2 + 8) = v26;
    *(a2 + 9) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 36) = WORD2(v21);
    *(a2 + 32) = v21;
    *(a2 + 38) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DiagramConfiguration.Banner.bannerText.getter()
{
  v1 = *v0;

  return v1;
}

HealthVisualization::DiagramConfiguration::Banner __swiftcall DiagramConfiguration.Banner.init(bannerText:bannerTextStyle:)(HealthVisualization::DiagramConfiguration::Banner bannerText, HealthVisualization::DiagramConfiguration::TextAttributes bannerTextStyle)
{
  v3 = *bannerTextStyle;
  *v2 = bannerText.bannerText;
  *(v2 + 16) = v3;
  bannerText.bannerTextStyle = bannerTextStyle;
  return bannerText;
}

uint64_t sub_1D158D4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x655472656E6E6162 && a2 == 0xEA00000000007478;
  if (v5 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x655472656E6E6162 && a2 == 0xEF656C7974537478)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D158D5A0(uint64_t a1)
{
  v2 = sub_1D1598C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158D5DC(uint64_t a1)
{
  v2 = sub_1D1598C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.Banner.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EC631528, sub_1D1598C8C, &type metadata for DiagramConfiguration.Banner.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598C8C();
  sub_1D15A4CE8();
  v14 = 0;
  v8 = v10[1];
  sub_1D15A4AF8();
  if (!v8)
  {
    v13 = v11;
    v12 = 1;
    sub_1D15987A0();
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.Banner.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D1448B94(0, &qword_1EC631538, sub_1D1598C8C, &type metadata for DiagramConfiguration.Banner.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598C8C();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v17;
  v20 = 0;
  v10 = sub_1D15A4A38();
  v12 = v11;
  v13 = v10;
  v18 = 1;
  sub_1D144A930();
  sub_1D15A4A78();
  (*(v6 + 8))(v8, v5);
  v14 = v19;
  *v9 = v13;
  *(v9 + 8) = v12;
  *(v9 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void DiagramConfiguration.AxisOnly.axis.getter(uint64_t a1@<X8>)
{
  v2 = v1 + 1;
  v3 = *(v1 + 2);
  v4 = *v1;
  v7 = *(v1 + 7);
  v6 = v1 + 7;
  v5 = v7;
  LOWORD(v7) = *(v6 + 4);
  *(a1 + 4) = v3;
  *a1 = v4;
  *(a1 + 6) = *(v2 + 2);
  *(a1 + 7) = v5;
  *(a1 + 11) = v7;
  *(a1 + 13) = *(v6 + 6);
}

HealthVisualization::DiagramConfiguration::AxisOnly __swiftcall DiagramConfiguration.AxisOnly.init(axis:horizontalAxisInset:verticalAxisInset:innerHorizontalInset:innerVerticalInset:drawModelAreaForDebug:)(HealthVisualization::DiagramConfiguration::Axis axis, HealthVisualization::DiagramConfiguration::AxisInset horizontalAxisInset, HealthVisualization::DiagramConfiguration::AxisInset verticalAxisInset, HealthVisualization::DiagramConfiguration::AxisInset innerHorizontalInset, HealthVisualization::DiagramConfiguration::AxisInset innerVerticalInset, Swift::Bool drawModelAreaForDebug)
{
  v7 = *&axis.horizontal.value.axisType + 4;
  v8 = *(*&axis.horizontal.value.axisType + 4);
  v9 = **&axis.horizontal.value.axisType;
  v11 = *(*&axis.horizontal.value.axisType + 7);
  *&axis.horizontal.value.axisType += 7;
  v10 = v11;
  LOWORD(v11) = *(*&axis.horizontal.value.axisType + 4);
  *&axis.horizontal.value.axisType += 4;
  v12 = **&axis.vertical.value.labelTextAttributes;
  v13 = *horizontalAxisInset;
  v14 = *verticalAxisInset;
  v15 = *innerHorizontalInset;
  *(v6 + 4) = v8;
  *v6 = v9;
  *(v6 + 6) = *(v7 + 2);
  *(v6 + 7) = v10;
  *(v6 + 11) = v11;
  *(v6 + 13) = *(*&axis.horizontal.value.axisType + 2);
  *(v6 + 14) = v12;
  *(v6 + 15) = v13;
  *(v6 + 16) = v14;
  *(v6 + 17) = v15;
  *(v6 + 18) = innerVerticalInset;
  result.axis = axis;
  result.innerHorizontalInset = horizontalAxisInset;
  return result;
}

unint64_t sub_1D158DB0C()
{
  v1 = *v0;
  v2 = 1936291937;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000015;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D158DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159C81C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D158DBF0(uint64_t a1)
{
  v2 = sub_1D1598CE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158DC2C(uint64_t a1)
{
  v2 = sub_1D1598CE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.AxisOnly.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EC631540, sub_1D1598CE0, &type metadata for DiagramConfiguration.AxisOnly.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v24 = *(v1 + 2);
  v25 = *(v1 + 7);
  v7 = *v1;
  v23 = *(v1 + 11);
  v34 = *(v1 + 14);
  v8 = *(v1 + 15);
  v21 = *(v1 + 16);
  v22 = v8;
  v9 = *(v1 + 17);
  v19[2] = *(v1 + 18);
  v20 = v9;
  v10 = *(v1 + 6);
  v11 = *(v1 + 13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598CE0();
  sub_1D15A4CE8();
  v30 = v10;
  v29 = v24;
  v28 = v7;
  v33 = v11;
  v12 = v6;
  v32 = v23;
  v31 = v25;
  v35 = 0;
  sub_1D1598B3C();
  v13 = v27;
  sub_1D15A4B38();
  if (v13)
  {
    return (*(v26 + 8))(v6, v4);
  }

  v15 = v21;
  v16 = v22;
  v17 = v20;
  v18 = v26;
  LOBYTE(v28) = v34;
  v35 = 1;
  sub_1D1598D34();
  sub_1D15A4B38();
  LOBYTE(v28) = v16;
  v35 = 2;
  sub_1D15A4B38();
  LOBYTE(v28) = v15;
  v35 = 3;
  sub_1D15A4B38();
  LOBYTE(v28) = v17;
  v35 = 4;
  sub_1D15A4B38();
  LOBYTE(v28) = 5;
  sub_1D15A4B08();
  return (*(v18 + 8))(v12, v4);
}

uint64_t DiagramConfiguration.AxisOnly.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EC631558, sub_1D1598CE0, &type metadata for DiagramConfiguration.AxisOnly.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D1598CE0();
  sub_1D15A4CD8();
  if (!v2)
  {
    v11 = v7;
    v30 = a2;
    v39 = 0;
    sub_1D144AB70();
    v12 = v6;
    sub_1D15A4A78();
    v38 = v34;
    v28 = v33;
    v29 = v32;
    v13 = v37;
    v14 = v36;
    v15 = v35;
    v39 = 1;
    sub_1D1598D88();
    sub_1D15A4A78();
    HIDWORD(v25) = v14;
    v26 = v15;
    v27 = v13;
    LOBYTE(v13) = v32;
    v39 = 2;
    sub_1D15A4A78();
    LOBYTE(v14) = v32;
    v39 = 3;
    sub_1D15A4A78();
    LODWORD(v15) = v32;
    v39 = 4;
    sub_1D15A4A78();
    v16 = v32;
    LOBYTE(v32) = 5;
    v18 = sub_1D15A4A48();
    v19 = v12;
    v20 = v29 | ((v28 | (v38 << 16)) << 32);
    v21 = *(v11 + 8);
    LODWORD(v29) = v15;
    v22 = v26 | ((HIDWORD(v25) | (v27 << 16)) << 32);
    v21(v9, v19);
    v23 = v14;
    v24 = v30;
    *(v30 + 6) = BYTE6(v20);
    *(v24 + 4) = WORD2(v20);
    *v24 = v20;
    *(v24 + 13) = BYTE6(v22);
    *(v24 + 11) = WORD2(v22);
    *(v24 + 7) = v22;
    *(v24 + 14) = v13;
    *(v24 + 15) = v23;
    *(v24 + 16) = v29;
    *(v24 + 17) = v16;
    *(v24 + 18) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

HealthVisualization::DiagramConfiguration::BarWidth_optional __swiftcall DiagramConfiguration.BarWidth.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DiagramConfiguration.BarWidth.rawValue.getter()
{
  v1 = 0x7464695772756F68;
  v2 = 0x746469576B656577;
  if (*v0 != 2)
  {
    v2 = 0x5774686769736E69;
  }

  if (*v0)
  {
    v1 = 0x6874646957796164;
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

uint64_t sub_1D158E424()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D158E4F0()
{
  sub_1D15A3F88();
}

uint64_t sub_1D158E5A8()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D158E67C(uint64_t *a1@<X8>)
{
  v2 = 0x7464695772756F68;
  v3 = 0x746469576B656577;
  v4 = 0xEC00000068746469;
  if (*v1 == 2)
  {
    v4 = 0xE900000000000068;
  }

  else
  {
    v3 = 0x5774686769736E69;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x6874646957796164;
  }

  else
  {
    v5 = 0xE900000000000068;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

void DiagramConfiguration.Line.axis.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  *a1 = *(v1 + 8);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

void DiagramConfiguration.Line.valueFormatter.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO4LineV14lineProperties4axis14valueFormatter11outerInsetsAESayAC0eG0VG_AC4AxisVSgAC05ValueJ0OAC0L0OtcfC_0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 6);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a4;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 20) = v7;
  *(a5 + 16) = v6;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  *(a5 + 33) = v10;
  return result;
}

uint64_t sub_1D158E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159CA1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D158E864(uint64_t a1)
{
  v2 = sub_1D1449604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158E8A0(uint64_t a1)
{
  v2 = sub_1D1449604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.Line.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE05AC10, sub_1D1449604, &type metadata for DiagramConfiguration.Line.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v19 = *(v1 + 10);
  v20 = v8;
  v18 = *(v1 + 4);
  v17 = v1[3];
  v25 = *(v1 + 32);
  HIDWORD(v16) = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1449604();

  sub_1D15A4CE8();
  v22 = v9;
  v26 = 0;
  sub_1D1449658();
  sub_1D14496A8(&qword_1EE05ADB8, sub_1D1598DDC);
  v10 = v21;
  sub_1D15A4B38();
  if (v10)
  {
  }

  else
  {
    v11 = v25;
    v12 = v17;
    v13 = BYTE4(v16);
    v14 = v18 | (v19 << 32);

    v22 = v20;
    v24 = WORD2(v14);
    v23 = v14;
    v26 = 1;
    sub_1D1598B3C();
    sub_1D15A4AE8();
    v22 = v12;
    LOBYTE(v23) = v11;
    v26 = 2;
    sub_1D1598E30();
    sub_1D15A4B38();
    LOBYTE(v22) = v13;
    v26 = 3;
    sub_1D1598B90();
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

void DiagramConfiguration.LineProperties.pointLabels.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 26);
  *a1 = *(v1 + 16);
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1D158EC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159CB94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D158ECA4(uint64_t a1)
{
  v2 = sub_1D1449D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158ECE0(uint64_t a1)
{
  v2 = sub_1D1449D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.LineProperties.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE05AC20, sub_1D1449D38, &type metadata for DiagramConfiguration.LineProperties.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v33 = v1[2];
  v27 = v1[3];
  LODWORD(v28) = v9;
  v10 = v1[4];
  v25 = v1[5];
  v26 = v10;
  v11 = v1[6];
  v23 = v1[7];
  v24 = v11;
  v12 = v1[8];
  v21 = v1[9];
  v22 = v12;
  v20 = *(v1 + 2);
  v13 = v1[26];
  v18 = *(v1 + 12);
  v19 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1449D38();
  sub_1D15A4CE8();
  LOBYTE(v30) = v8;
  v34 = 0;
  sub_1D1598E84();
  v14 = v29;
  sub_1D15A4B38();
  if (v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = v33;
  v16 = v27;
  LOBYTE(v30) = v28;
  v34 = 1;
  sub_1D1598A40();
  sub_1D15A4B38();
  LOBYTE(v30) = v15;
  v34 = 2;
  sub_1D15A4B38();
  v28 = v5;
  LOBYTE(v30) = v16;
  v34 = 3;
  sub_1D1598ED8();
  v29 = 0;
  sub_1D15A4B38();
  LOBYTE(v30) = v26;
  v34 = 4;
  sub_1D15A4B38();
  LOBYTE(v30) = v25;
  v34 = 5;
  sub_1D1598AE8();
  sub_1D15A4B38();
  LOBYTE(v30) = v24;
  v34 = 6;
  sub_1D15A4B38();
  LOBYTE(v30) = v23;
  v34 = 7;
  sub_1D15A4B38();
  LOBYTE(v30) = v22;
  v34 = 8;
  sub_1D15987A0();
  sub_1D15A4B38();
  LOBYTE(v30) = v21;
  v34 = 9;
  sub_1D14C5BA8();
  sub_1D15A4B38();
  v30 = v20;
  v32 = (v18 | (v19 << 16)) >> 16;
  v31 = v18;
  v34 = 10;
  sub_1D1598F2C();
  sub_1D15A4AE8();
  return (*(v5 + 8))(v7, v29);
}

uint64_t DiagramConfiguration.LineWidth.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x57746C7561666564;
  v3 = 0x74646957666C6168;
  v4 = 0x64726968546F7774;
  if (v1 != 4)
  {
    v4 = 0x7269685472756F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656E696C72696168;
  if (v1 != 1)
  {
    v5 = 0x6472696854656E6FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D158F2F8()
{
  sub_1D15A3F88();
}

void sub_1D158F42C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000068746469;
  v4 = 0x57746C7561666564;
  v5 = 0xE900000000000068;
  v6 = 0x74646957666C6168;
  v7 = 0xEE00687464695773;
  v8 = 0x64726968546F7774;
  if (v2 != 4)
  {
    v8 = 0x7269685472756F66;
    v7 = 0xEF68746469577364;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656E696C72696168;
  if (v2 != 1)
  {
    v9 = 0x6472696854656E6FLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xED00006874646957;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t DiagramConfiguration.LineRadius.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x52746C7561666564;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69646152666C6168;
  if (v1 != 1)
  {
    v5 = 0x696461526F72657ALL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D158F66C()
{
  sub_1D15A3F88();
}

void sub_1D158F788(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007375696461;
  v4 = 0x52746C7561666564;
  v5 = 0x80000001D15BD0D0;
  v6 = 0xD00000000000001ALL;
  v7 = 0x80000001D15BD0F0;
  v8 = 0xD000000000000012;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001D15BD110;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x69646152666C6168;
  if (v2 != 1)
  {
    v9 = 0x696461526F72657ALL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xEA00000000007375;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

void DiagramConfiguration.Distribution.pointLabels.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 18);
  *a1 = *(v1 + 8);
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
}

__n128 DiagramConfiguration.Distribution.verticalLimits.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  result = *(v1 + 24);
  v5 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

void DiagramConfiguration.Distribution.axis.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 73);
  v3 = *(v1 + 77);
  *a1 = *(v1 + 65);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

void DiagramConfiguration.Distribution.valueFormatter.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
}

uint64_t DiagramConfiguration.Distribution.init(barWidth:padding:contentColor:highlightColor:referenceLineColor:referenceLineTextAttributes:referenceAnnotationPosition:dataGroupForPointLabels:pointLabels:verticalLimits:axis:outerInsets:valueFormatter:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, unsigned __int8 *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t *a12, char *a13, uint64_t *a14)
{
  v14 = *(a11 + 16);
  *(a9 + 24) = *a11;
  v15 = *a1;
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  result = *a5;
  v20 = *a6;
  v21 = *a7;
  v22 = *a8;
  v23 = *a10;
  v24 = *(a10 + 4);
  v25 = *(a10 + 10);
  v26 = *(a11 + 32);
  v27 = *(a11 + 40);
  v28 = *a12;
  v29 = *(a12 + 2);
  v30 = *(a12 + 6);
  v31 = *a13;
  v32 = *a14;
  v33 = *(a14 + 8);
  *a9 = v15;
  *(a9 + 1) = v16;
  *(a9 + 2) = v17;
  *(a9 + 3) = v18;
  *(a9 + 4) = result;
  *(a9 + 5) = v20;
  *(a9 + 6) = v21;
  *(a9 + 7) = v22;
  *(a9 + 8) = v23;
  *(a9 + 18) = v25;
  *(a9 + 16) = v24;
  *(a9 + 40) = v14;
  *(a9 + 56) = v26;
  *(a9 + 64) = v27;
  *(a9 + 65) = v28;
  *(a9 + 77) = v30;
  *(a9 + 73) = v29;
  *(a9 + 79) = v31;
  *(a9 + 80) = v32;
  *(a9 + 88) = v33;
  return result;
}

unint64_t sub_1D158FA6C(char a1)
{
  result = 0x6874646957726162;
  switch(a1)
  {
    case 1:
      result = 0x676E6964646170;
      break;
    case 2:
      result = 0x43746E65746E6F63;
      break;
    case 3:
      result = 0x6867696C68676968;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x62614C746E696F70;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 10:
      result = 1936291937;
      break;
    case 11:
      result = 0x736E49726574756FLL;
      break;
    case 12:
      result = 0x726F4665756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D158FC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159CF20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D158FC40(uint64_t a1)
{
  v2 = sub_1D1598F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158FC7C(uint64_t a1)
{
  v2 = sub_1D1598F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.Distribution.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE0563A8, sub_1D1598F80, &type metadata for DiagramConfiguration.Distribution.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v45 = v1[1];
  v9 = v1[2];
  v38 = v1[3];
  v39 = v9;
  v10 = v1[4];
  v36 = v1[5];
  v37 = v10;
  v11 = v1[6];
  v34 = v1[7];
  v35 = v11;
  v33 = *(v1 + 1);
  LODWORD(v6) = *(v1 + 8);
  v31 = v1[18];
  v32 = v6;
  v12 = *(v1 + 24);
  v29 = *(v1 + 40);
  v30 = v12;
  v13 = *(v1 + 7);
  v28 = v1[64];
  v26 = *(v1 + 65);
  v27 = v13;
  v25 = *(v1 + 77);
  v24 = *(v1 + 73);
  v23 = v1[79];
  v21 = *(v1 + 10);
  v22 = v1[88];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598F80();
  sub_1D15A4CE8();
  LOBYTE(v41) = v8;
  v46 = 0;
  sub_1D1598FD4();
  v14 = v40;
  sub_1D15A4B38();
  if (v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = v38;
  v15 = v39;
  v17 = v36;
  v18 = v37;
  v40 = v5;
  LOBYTE(v41) = v45;
  v46 = 1;
  sub_1D1599028();
  sub_1D15A4B38();
  LOBYTE(v41) = v15;
  v46 = 2;
  sub_1D1598A40();
  sub_1D15A4B38();
  LOBYTE(v41) = v16;
  v46 = 3;
  sub_1D15A4B38();
  LOBYTE(v41) = v18;
  v46 = 4;
  sub_1D15A4B38();
  LOBYTE(v41) = v17;
  v46 = 5;
  sub_1D15987A0();
  sub_1D15A4B38();
  LOBYTE(v41) = v35;
  v46 = 6;
  sub_1D1598AE8();
  sub_1D15A4B38();
  LOBYTE(v41) = v34;
  v46 = 7;
  sub_1D14C5BA8();
  sub_1D15A4B38();
  *&v41 = v33;
  BYTE10(v41) = (v32 | (v31 << 16)) >> 16;
  WORD4(v41) = v32;
  v46 = 8;
  sub_1D1598F2C();
  sub_1D15A4AE8();
  v42 = v29;
  v41 = v30;
  v43 = v27;
  v44 = v28;
  v46 = 9;
  sub_1D159907C();
  sub_1D15A4AE8();
  *&v41 = v26;
  WORD6(v41) = (v24 | (v25 << 32)) >> 32;
  DWORD2(v41) = v24;
  v46 = 10;
  sub_1D1598B3C();
  sub_1D15A4AE8();
  LOBYTE(v41) = v23;
  v46 = 11;
  sub_1D1598B90();
  sub_1D15A4B38();
  *&v41 = v21;
  BYTE8(v41) = v22;
  v46 = 12;
  sub_1D1598E30();
  sub_1D15A4B38();
  return (*(v40 + 8))(0, v4);
}

uint64_t DiagramConfiguration.Distribution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EE05AC88, sub_1D1598F80, &type metadata for DiagramConfiguration.Distribution.CodingKeys, MEMORY[0x1E69E6F48]);
  v43 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1598F80();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v49 = 0;
    sub_1D15990D0();
    sub_1D15A4A78();
    v10 = v44;
    v49 = 1;
    sub_1D1599124();
    sub_1D15A4A78();
    v42 = v10;
    v12 = v44;
    v49 = 2;
    sub_1D144A26C();
    sub_1D15A4A78();
    v41 = v12;
    v13 = v44;
    v49 = 3;
    sub_1D15A4A78();
    v40 = v13;
    LOBYTE(v13) = v44;
    v49 = 4;
    sub_1D15A4A78();
    LOBYTE(v10) = v13;
    v14 = v44;
    v49 = 5;
    sub_1D144A930();
    sub_1D15A4A78();
    v39 = v14;
    v15 = v44;
    v49 = 6;
    sub_1D144B518();
    sub_1D15A4A78();
    v38 = v15;
    LOBYTE(v15) = v44;
    v49 = 7;
    sub_1D144B808();
    sub_1D15A4A78();
    v37 = v44;
    v49 = 8;
    sub_1D144AAA0();
    sub_1D15A4A28();
    v36 = v44;
    v34 = WORD4(v44);
    LODWORD(v35) = BYTE10(v44);
    v49 = 9;
    sub_1D1599178();
    sub_1D15A4A28();
    v32 = v45;
    v33 = v44;
    v16 = v46;
    v31 = v47;
    v49 = 10;
    sub_1D144AB70();
    sub_1D15A4A28();
    v29 = WORD6(v44);
    v30 = v44;
    v28 = DWORD2(v44);
    v49 = 11;
    sub_1D144D050();
    sub_1D15A4A78();
    v27 = v44;
    v49 = 12;
    sub_1D144C2F4();
    sub_1D15A4A78();
    v17 = v34 | (v35 << 16);
    v18 = *(v9 + 8);
    v35 = v28 | (v29 << 32);
    v18(v8, v43);
    v19 = v44;
    v20 = BYTE8(v44);
    v48 = BYTE8(v44);
    v21 = v41;
    *a2 = v42;
    *(a2 + 1) = v21;
    v22 = v39;
    *(a2 + 2) = v40;
    *(a2 + 3) = v10;
    *(a2 + 4) = v22;
    v23 = v37;
    *(a2 + 5) = v38;
    *(a2 + 6) = v15;
    *(a2 + 7) = v23;
    v24 = v35;
    *(a2 + 8) = v36;
    *(a2 + 18) = BYTE2(v17);
    *(a2 + 16) = v17;
    v25 = v33;
    *(a2 + 40) = v32;
    *(a2 + 24) = v25;
    *(a2 + 56) = v16;
    *(a2 + 64) = v31;
    *(a2 + 65) = v30;
    *(a2 + 77) = WORD2(v24);
    *(a2 + 73) = v24;
    *(a2 + 79) = v27;
    *(a2 + 80) = v19;
    *(a2 + 88) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthVisualization::DiagramConfiguration::DistributionWidth_optional __swiftcall DiagramConfiguration.DistributionWidth.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DiagramConfiguration.DistributionWidth.rawValue.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD00000000000001ELL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D159097C()
{
  sub_1D15A3F88();
}

unint64_t sub_1D1590A6C@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "fourThirdsRadius";
  v5 = "DistributionWidth";
  v6 = 0xD00000000000001FLL;
  v7 = "alertHeartRateDistributionWidth";
  v8 = 0xD00000000000001ELL;
  result = 0xD00000000000001BLL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001BLL;
    v7 = "audioExposureDistributionWidth";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "defaultDistributionWidth";
  if (v3 != 1)
  {
    v2 = 0xD000000000000021;
    v10 = "weekDistributionWidth";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

HealthVisualization::DiagramConfiguration::DistributionPadding_optional __swiftcall DiagramConfiguration.DistributionPadding.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DiagramConfiguration.DistributionPadding.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646461506F72657ALL;
  }
}

uint64_t sub_1D1590C9C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1590D4C()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1590DE8()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1590EA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0xD00000000000001ALL;
  v5 = 0x80000001D15BD210;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x80000001D15BD230;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x646461506F72657ALL;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D1590FBC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = *a1;
  v4 = 0x80000001D15BD210;
  if (v3 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD00000000000001CLL;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001D15BD210;
  }

  else
  {
    v6 = 0x80000001D15BD230;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646461506F72657ALL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000676E69;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001CLL;
    v4 = 0x80000001D15BD230;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x646461506F72657ALL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000676E69;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

void __swiftcall DiagramConfiguration.DistributionLimits.init(limitGradientColor:gradientSpanPercent:lowLimit:highLimit:)(HealthVisualization::DiagramConfiguration::DistributionLimits *__return_ptr retstr, HealthVisualization::DiagramConfiguration::Color limitGradientColor, Swift::Double gradientSpanPercent, Swift::Double_optional lowLimit, Swift::Double_optional highLimit)
{
  retstr->limitGradientColor = *limitGradientColor;
  retstr->gradientSpanPercent = gradientSpanPercent;
  retstr->lowLimit.value = *&lowLimit.is_nil;
  retstr->lowLimit.is_nil = highLimit.is_nil;
  *(&retstr->highLimit.value + 7) = v5;
  retstr[1].limitGradientColor = v6 & 1;
}

unint64_t sub_1D15910F8()
{
  v1 = 0x74696D694C776F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x696D694C68676968;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D159117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159D358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D15911A4(uint64_t a1)
{
  v2 = sub_1D15991CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15911E0(uint64_t a1)
{
  v2 = sub_1D15991CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.DistributionLimits.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EC631568, sub_1D15991CC, &type metadata for DiagramConfiguration.DistributionLimits.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v14 = *(v1 + 2);
  v13 = v1[24];
  v12 = *(v1 + 4);
  v11[1] = v1[40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15991CC();
  sub_1D15A4CE8();
  v20 = v8;
  v19 = 0;
  sub_1D1598A40();
  v9 = v15;
  sub_1D15A4B38();
  if (!v9)
  {
    v18 = 1;
    sub_1D15A4B18();
    v17 = 2;
    sub_1D15A4AC8();
    v16 = 3;
    sub_1D15A4AC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.DistributionLimits.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D1448B94(0, &qword_1EC631578, sub_1D15991CC, &type metadata for DiagramConfiguration.DistributionLimits.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15991CC();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v21;
    v25 = 0;
    sub_1D144A26C();
    sub_1D15A4A78();
    v11 = v26;
    v24 = 1;
    sub_1D15A4A58();
    v13 = v12;
    v23 = 2;
    v20 = sub_1D15A4A08();
    v27 = v15 & 1;
    v22 = 3;
    v16 = sub_1D15A4A08();
    v18 = v17;
    (*(v9 + 8))(v8, v5);
    v19 = v27;
    *v10 = v11;
    *(v10 + 8) = v13;
    *(v10 + 16) = v20;
    *(v10 + 24) = v19;
    *(v10 + 32) = v16;
    *(v10 + 40) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthVisualization::DiagramConfiguration::HeartRateRecovery __swiftcall DiagramConfiguration.HeartRateRecovery.init(pointColor:pointRadius:minuteLineColor:minuteLineWidth:)(HealthVisualization::DiagramConfiguration::Color pointColor, HealthVisualization::DiagramConfiguration::LineRadius pointRadius, HealthVisualization::DiagramConfiguration::Color minuteLineColor, HealthVisualization::DiagramConfiguration::LineWidth minuteLineWidth)
{
  v5 = *pointRadius;
  v6 = *minuteLineColor;
  v7 = *minuteLineWidth;
  *v4 = *pointColor;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  result.pointColor = pointColor;
  return result;
}

uint64_t sub_1D1591768()
{
  v1 = 0x6C6F43746E696F70;
  if (*v0)
  {
    v1 = 0x646152746E696F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x694C6574756E696DLL;
  }
}

uint64_t sub_1D1591808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159D4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1591830(uint64_t a1)
{
  v2 = sub_1D1599220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D159186C(uint64_t a1)
{
  v2 = sub_1D1599220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.HeartRateRecovery.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EC631580, sub_1D1599220, &type metadata for DiagramConfiguration.HeartRateRecovery.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = v1[2];
  v17 = v9;
  v15 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1599220();
  sub_1D15A4CE8();
  v26 = v8;
  v25 = 0;
  sub_1D1598A40();
  v10 = v18;
  sub_1D15A4B38();
  if (!v10)
  {
    v11 = v15;
    v12 = v16;
    v24 = v17;
    v23 = 1;
    sub_1D1598ED8();
    sub_1D15A4B38();
    v22 = v12;
    v21 = 2;
    sub_1D15A4B38();
    v20 = v11;
    v19 = 3;
    sub_1D1598E84();
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiagramConfiguration.HeartRateRecovery.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  sub_1D1448B94(0, &qword_1EC631590, sub_1D1599220, &type metadata for DiagramConfiguration.HeartRateRecovery.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1599220();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v25 = 0;
    sub_1D144A26C();
    v11 = v5;
    sub_1D15A4A78();
    HIDWORD(v17) = v26;
    v23 = 1;
    sub_1D144A410();
    sub_1D15A4A78();
    v13 = v24;
    v21 = 2;
    sub_1D15A4A78();
    v14 = v13;
    v15 = v22;
    v19 = 3;
    sub_1D1449E34();
    sub_1D15A4A78();
    (*(v9 + 8))(v8, v11);
    v16 = v20;
    *v10 = BYTE4(v17);
    v10[1] = v14;
    v10[2] = v15;
    v10[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void DiagramConfiguration.Axis.horizontal.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 4) = *(v1 + 2);
  *a1 = v2;
  *(a1 + 6) = *(v1 + 6);
}

void DiagramConfiguration.Axis.vertical.getter(uint64_t a1@<X8>)
{
  v4 = *(v1 + 7);
  v3 = v1 + 7;
  v2 = v4;
  LOWORD(v4) = *(v3 + 4);
  *a1 = v2;
  *(a1 + 4) = v4;
  *(a1 + 6) = *(v3 + 6);
}

uint64_t sub_1D1591E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D1591F28(uint64_t a1)
{
  v2 = sub_1D144BA7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1591F64(uint64_t a1)
{
  v2 = sub_1D144BA7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.Axis.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE05AC18, sub_1D144BA7C, &type metadata for DiagramConfiguration.Axis.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 6);
  v8 = *(v1 + 2);
  v9 = *v1;
  v10 = *(v1 + 13);
  v14 = *(v1 + 11);
  v15 = v10;
  v16 = *(v1 + 7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144BA7C();
  sub_1D15A4CE8();
  v21 = v7;
  v20 = v8;
  v19 = v9;
  v22 = 0;
  sub_1D1599274();
  v11 = v18;
  sub_1D15A4AE8();
  if (v11)
  {
    return (*(v17 + 8))(v6, v4);
  }

  v13 = v17;
  v21 = (v16 | ((v14 | (v15 << 16)) << 32)) >> 48;
  v20 = (v16 | ((v14 | (v15 << 16)) << 32)) >> 32;
  v19 = v16;
  v22 = 1;
  sub_1D15A4AE8();
  return (*(v13 + 8))(v6, v4);
}

uint64_t sub_1D1592240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D159D654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1592268(uint64_t a1)
{
  v2 = sub_1D144B02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15922A4(uint64_t a1)
{
  v2 = sub_1D144B02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.AxisProperties.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE05AC28, sub_1D144B02C, &type metadata for DiagramConfiguration.AxisProperties.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  v24 = v1[2];
  v25 = v8;
  v9 = v1[3];
  v22 = v1[4];
  v23 = v9;
  v21 = v1[5];
  v10 = v1[6];
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1D144B02C();
  sub_1D15A4CE8();
  v40 = v7;
  v39 = 0;
  sub_1D15992C8();
  v15 = v26;
  sub_1D15A4B38();
  if (!v15)
  {
    v16 = v23;
    v17 = v24;
    v18 = v22;
    v38 = v25;
    v37 = 1;
    sub_1D15987A0();
    sub_1D15A4B38();
    v36 = v17;
    v35 = 2;
    sub_1D1598A40();
    sub_1D15A4B38();
    v34 = v16;
    v33 = 3;
    sub_1D15A4B38();
    v32 = v18;
    v31 = 4;
    sub_1D159931C();
    sub_1D15A4B38();
    v30 = v21;
    v29 = 5;
    sub_1D1599370();
    sub_1D15A4B38();
    v28 = v10;
    v27 = 6;
    sub_1D15A4B38();
  }

  return (*(v4 + 8))(v6, v14);
}

unint64_t DiagramConfiguration.AxisTickLength.rawValue.getter()
{
  v1 = 0x676E654C6F72657ALL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D1592688()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1592738()
{
  sub_1D15A3F88();
}

uint64_t sub_1D15927D4()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1592880(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006874;
  v4 = 0x676E654C6F72657ALL;
  if (v2 == 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001D15BD270;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001D15BD250;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1D159293C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006874;
  v3 = 0x676E654C6F72657ALL;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x676E654C6F72657ALL;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001D15BD270;
  }

  else
  {
    v6 = 0xEA00000000006874;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D15BD250;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001D15BD270;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D15BD250;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

HealthVisualization::DiagramConfiguration::AxisLineWidth_optional __swiftcall DiagramConfiguration.AxisLineWidth.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t DiagramConfiguration.AxisLineWidth.rawValue.getter()
{
  if (*v0)
  {
    return 0x74646957666C6168;
  }

  else
  {
    return 0x57746C7561666564;
  }
}

uint64_t sub_1D1592AC4()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1592B54()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1592BD0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1592C5C(uint64_t *a1@<X8>)
{
  v2 = 0x57746C7561666564;
  if (*v1)
  {
    v2 = 0x74646957666C6168;
  }

  v3 = 0xEC00000068746469;
  if (*v1)
  {
    v3 = 0xE900000000000068;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1592CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74646957666C6168;
  }

  else
  {
    v3 = 0x57746C7561666564;
  }

  if (v2)
  {
    v4 = 0xEC00000068746469;
  }

  else
  {
    v4 = 0xE900000000000068;
  }

  if (*a2)
  {
    v5 = 0x74646957666C6168;
  }

  else
  {
    v5 = 0x57746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE900000000000068;
  }

  else
  {
    v6 = 0xEC00000068746469;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();
  }

  return v8 & 1;
}

unint64_t DiagramConfiguration.AxisType.rawValue.getter()
{
  result = 0x44746C7561666564;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000014;
    case 2:
      return 0xD000000000000012;
    case 3:
    case 9:
      return 0xD000000000000011;
    case 4:
      v2 = 9;
      goto LABEL_13;
    case 5:
      v2 = 5;
      goto LABEL_13;
    case 6:
      v2 = 10;
LABEL_13:
      result = v2 | 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xB:
    case 0xE:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0x417961646B656577;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0x78416D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D1592FD0@<X0>(unint64_t *a1@<X8>)
{
  result = DiagramConfiguration.AxisType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HealthVisualization::DiagramConfiguration::CornerSize_optional __swiftcall DiagramConfiguration.CornerSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DiagramConfiguration.CornerSize.rawValue.getter()
{
  v1 = 0x6E726F436F72657ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D1593124()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D15931D4()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1593270()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1593328(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657A69537265;
  v4 = 0x6E726F436F72657ALL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001D15BD490;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x80000001D15BD460;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1D1593444(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00657A69537265;
  v3 = 0x6E726F436F72657ALL;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6E726F436F72657ALL;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v6 = 0xEE00657A69537265;
  }

  else
  {
    v6 = 0x80000001D15BD490;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D15BD460;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001D15BD490;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D15BD460;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t DiagramConfiguration.Color.rawValue.getter()
{
  result = 0x42746C7561666564;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
    case 0xC:
    case 0x1D:
      return 0xD000000000000014;
    case 3:
    case 0x19:
    case 0x22:
      v2 = 5;
      return v2 | 0xD000000000000010;
    case 4:
    case 8:
      v2 = 9;
      return v2 | 0xD000000000000010;
    case 5:
    case 0x12:
    case 0x16:
    case 0x1B:
      return 0xD000000000000013;
    case 6:
    case 0xD:
    case 0x1E:
      return 0xD000000000000016;
    case 7:
      return 0xD000000000000010;
    case 9:
      return 0x6F436D6F646E6172;
    case 0xA:
    case 0x11:
    case 0x18:
      return 0xD000000000000018;
    case 0xB:
      return 0xD000000000000017;
    case 0xE:
    case 0x1F:
      return 0xD00000000000001ELL;
    case 0xF:
      return 0x654B736C61746976;
    case 0x10:
      return 0xD000000000000010;
    case 0x13:
    case 0x20:
      return 0xD000000000000011;
    case 0x14:
      v2 = 10;
      return v2 | 0xD000000000000010;
    case 0x15:
      v3 = 0x4B7065656C73;
      goto LABEL_24;
    case 0x17:
      return 0x4B74756F6B726F77;
    case 0x1A:
      v3 = 0x4B726568746FLL;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7965000000000000;
      break;
    case 0x1C:
      result = 0xD000000000000012;
      break;
    case 0x21:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1593898@<X0>(uint64_t *a1@<X8>)
{
  result = DiagramConfiguration.Color.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HealthVisualization::DiagramConfiguration::AxisInset_optional __swiftcall DiagramConfiguration.AxisInset.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DiagramConfiguration.AxisInset.rawValue.getter()
{
  v1 = 0x65736E4965646977;
  if (*v0 != 1)
  {
    v1 = 0x7465736E496F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746C7561666564;
  }
}

uint64_t sub_1D15939EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65736E4965646977;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x7465736E496F6ELL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x49746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007465736ELL;
  }

  v7 = 0x65736E4965646977;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x7465736E496F6ELL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x49746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007465736ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D1593AFC()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1593BAC()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1593C48()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1593D00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007465736ELL;
  v4 = 0xE900000000000074;
  v5 = 0x65736E4965646977;
  if (v2 != 1)
  {
    v5 = 0x7465736E496F6ELL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x49746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t DiagramConfiguration.Insets.rawValue.getter()
{
  v1 = 0x65736E496F72657ALL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000019;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D1593EB8()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1593F90()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1594054()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1594128(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007374;
  v3 = 0x65736E496F72657ALL;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D15BD910;
  }

  v4 = 0x80000001D15BD8D0;
  v5 = 0xD000000000000019;
  if (*v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D15BD8F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static DiagramConfiguration.ValueFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1594248(uint64_t a1)
{
  v2 = sub_1D144CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1594284(uint64_t a1)
{
  v2 = sub_1D144CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D15942DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D159436C(uint64_t a1)
{
  v2 = sub_1D144CAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15943A8(uint64_t a1)
{
  v2 = sub_1D144CAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D15943E4(uint64_t a1)
{
  v2 = sub_1D144C9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1594420(uint64_t a1)
{
  v2 = sub_1D144C9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D159445C(uint64_t a1)
{
  v2 = sub_1D144CBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1594498(uint64_t a1)
{
  v2 = sub_1D144CBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.ValueFormatter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1D1448B94(0, &qword_1EE056390, sub_1D144C9EC, &type metadata for DiagramConfiguration.ValueFormatter.PercentCodingKeys, MEMORY[0x1E69E6F58]);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - v6;
  sub_1D1448B94(0, &qword_1EE056398, sub_1D144CAF0, &type metadata for DiagramConfiguration.ValueFormatter.DecimalCodingKeys, v4);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v24 - v8;
  sub_1D1448B94(0, &qword_1EE056388, sub_1D144CBF4, &type metadata for DiagramConfiguration.ValueFormatter.StandardCodingKeys, v4);
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v24 - v10;
  sub_1D1448B94(0, &qword_1EE0563A0, sub_1D144CCF8, &type metadata for DiagramConfiguration.ValueFormatter.CodingKeys, v4);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144CCF8();
  sub_1D15A4CE8();
  if (v17 == 1)
  {
    if (v16)
    {
      v35 = 2;
      sub_1D144C9EC();
      v18 = v27;
      sub_1D15A4A98();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v33 = 0;
      sub_1D144CBF4();
      v18 = v24;
      sub_1D15A4A98();
      v20 = v25;
      v19 = v26;
    }

    (*(v20 + 8))(v18, v19);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v34 = 1;
    sub_1D144CAF0();
    v21 = v30;
    sub_1D15A4A98();
    v22 = v32;
    sub_1D15A4B28();
    (*(v31 + 8))(v21, v22);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1D159493C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1594978(double a1)
{
  v2 = sub_1D15A3EF8();
  v3 = [objc_opt_self() fontWithName:v2 size:a1];

  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v4 setLineHeightMultiple_];
    [v4 setLineSpacing_];
    sub_1D1457C9C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D15B8480;
    v6 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v7 = sub_1D1453BA0(0, &qword_1EE05ACF0);
    v8 = MEMORY[0x1E69DB650];
    *(inited + 40) = v3;
    v9 = *v8;
    *(inited + 64) = v7;
    *(inited + 72) = v9;
    v10 = v6;
    v11 = v3;
    v12 = v9;
    isa = DiagramConfiguration.Color.toColor()().super.isa;
    v14 = sub_1D1453BA0(0, &qword_1EE059710);
    *(inited + 80) = isa;
    v15 = *MEMORY[0x1E69DB688];
    *(inited + 104) = v14;
    *(inited + 112) = v15;
    *(inited + 144) = sub_1D1453BA0(0, &qword_1EC631750);
    *(inited + 120) = v4;
    v16 = v15;
    v17 = v4;
    v18 = sub_1D1458674(inited);
    swift_setDeallocating();
    sub_1D1457C30();
    swift_arrayDestroy();

    return v18;
  }

  else
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

unint64_t DiagramConfiguration.TextAttributes.rawValue.getter()
{
  result = 0x41746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      v2 = 5;
      goto LABEL_12;
    case 4:
    case 0x14:
    case 0x15:
      result = 0xD000000000000011;
      break;
    case 5:
    case 0xD:
    case 0xE:
    case 0xF:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 0xC:
    case 0x10:
    case 0x11:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
    case 0xB:
      v2 = 9;
LABEL_12:
      result = v2 | 0xD000000000000012;
      break;
    case 0x12:
    case 0x13:
      result = 0xD000000000000016;
      break;
    case 0x16:
      result = 0x41676E6974736574;
      break;
    case 0x17:
      result = 0xD000000000000012;
      break;
    case 0x18:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1D1594E0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1D15A4C88();
  a3(v4);
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1594E94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1D15A3F88();
}

uint64_t sub_1D1594F14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1D15A4C88();
  a4(v5);
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

unint64_t sub_1D1594F80@<X0>(unint64_t *a1@<X8>)
{
  result = DiagramConfiguration.TextAttributes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D1594FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t DiagramConfiguration.ReferenceAnnotationPosition.rawValue.getter()
{
  v1 = 0x6772614D7466656CLL;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x614D6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x72614D7468676972;
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

uint64_t sub_1D159512C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1595200()
{
  sub_1D15A3F88();
}

uint64_t sub_1D15952C0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1595390(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006E69;
  v3 = 0x6772614D7466656CLL;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (*v1 != 2)
  {
    v5 = 0x614D6D6F74746F62;
    v4 = 0xEC0000006E696772;
  }

  if (*v1)
  {
    v3 = 0x72614D7468676972;
    v2 = 0xEB000000006E6967;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D159547C(uint64_t a1)
{
  v2 = sub_1D1448BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15954B8(uint64_t a1)
{
  v2 = sub_1D1448BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiagramConfiguration.encode(to:)(void *a1)
{
  sub_1D1448B94(0, &qword_1EE05AC30, sub_1D1448BFC, &type metadata for DiagramConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v8 = *v1;
  v7 = v1[1];
  v46 = *(v1 + 8);
  v9 = *(v1 + 18);
  v10 = *(v1 + 19) | (*(v1 + 23) << 32);
  v24 = v1[3];
  v25 = *(v1 + 32);
  v26 = *(v1 + 33);
  v27 = v9;
  v23 = *(v1 + 34) | (*(v1 + 19) << 32);
  v22 = *(v1 + 7);
  v19 = *(v1 + 5);
  v11 = v1[10];
  v21 = v1[9];
  v20 = v11;
  v12 = *(v1 + 88);
  v13 = a1[3];
  v14 = a1;
  v15 = v6;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D1448BFC();
  sub_1D15A4CE8();
  v16 = v12 >> 5;
  if (v12 >> 5 > 2)
  {
    if (v16 == 3)
    {
      v30 = v8;
      v31 = v7;
      v32 = v46;
      v33 = v27 & 1;
      v47 = 3;
      sub_1D1599528();
    }

    else if (v16 == 4)
    {
      v30 = v8;
      v31 = v7;
      v32 = v46;
      v33 = v27;
      v34 = v10;
      v35 = BYTE4(v10);
      v36 = v24;
      v37 = v25;
      v38 = v26;
      v39 = v23;
      v40 = WORD2(v23);
      v41 = v19;
      v42 = v22;
      v43 = v21;
      v44 = v20;
      v45 = v12 & 0x1F;
      v47 = 4;
      sub_1D15994D4();
    }

    else
    {
      LODWORD(v30) = v8;
      v47 = 5;
      sub_1D1599480();
    }
  }

  else if (v16)
  {
    v30 = v8;
    v31 = v7;
    if (v16 == 1)
    {
      LOBYTE(v32) = v46;
      v47 = 1;
      sub_1D15995D0();
    }

    else
    {
      v32 = v46;
      v33 = v27;
      LOWORD(v34) = v10;
      BYTE2(v34) = BYTE2(v10);
      v36 = v24;
      v37 = v25 & 1;
      v38 = v26;
      v47 = 2;
      sub_1D159957C();
    }
  }

  else
  {
    v30 = v8;
    v31 = v7;
    v32 = v46;
    v33 = v27;
    v34 = v10;
    v35 = BYTE4(v10);
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v23;
    LOBYTE(v40) = BYTE4(v23);
    v47 = 0;
    sub_1D1599624();
  }

  v17 = v28;
  sub_1D15A4B38();
  return (*(v29 + 8))(v15, v17);
}

void static DiagramConfiguration.Color.diagramColor(sampleType:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4 && (v5 = v4, v6 = [v4 displayTypeForObjectType_], v5, v6))
  {
    static DiagramConfiguration.Color.diagramColor(displayType:)(v6, a2);
  }

  else
  {
    sub_1D15A4908();
    __break(1u);
  }
}

void static DiagramConfiguration.Color.diagramColor(displayType:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [a1 displayCategory];
  v4 = [v3 categoryID];

  if ((v4 - 1) > 0xC)
  {
    v5 = 0;
  }

  else
  {
    v5 = byte_1D15BB6D4[(v4 - 1)];
  }

  *a2 = v5;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO016PointLabelMinMaxD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 10);
  v3 = *(a2 + 10);
  v4 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v6 = v5;
  if (v4 == DiagramConfiguration.TextAttributes.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D15A4BA8();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v12 = v11;
  if (v10 == DiagramConfiguration.TextAttributes.rawValue.getter() && v12 == v13)
  {

    return v2 ^ v3 ^ 1u;
  }

  v14 = sub_1D15A4BA8();

  if (v14)
  {
    return v2 ^ v3 ^ 1u;
  }

  return 0;
}

BOOL _s19HealthVisualization20DiagramConfigurationO019PointLabelAllPointsD0V2eeoiySbAE_AEtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  if (*a1 == 25)
  {
    if (v3 != 25)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 25)
    {
      return 0;
    }

    v5 = DiagramConfiguration.TextAttributes.rawValue.getter();
    v7 = v6;
    if (v5 == DiagramConfiguration.TextAttributes.rawValue.getter() && v7 == v8)
    {

      if (v2 == 25)
      {
        return v4 == 25;
      }

      goto LABEL_10;
    }

    v13 = sub_1D15A4BA8();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 == 25)
  {
    return v4 == 25;
  }

LABEL_10:
  if (v4 != 25)
  {
    v9 = DiagramConfiguration.TextAttributes.rawValue.getter();
    v11 = v10;
    if (v9 == DiagramConfiguration.TextAttributes.rawValue.getter() && v11 == v12)
    {

      return 1;
    }

    v14 = sub_1D15A4BA8();

    if (v14)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO010PointLabelD0O2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 4) | (*(a1 + 10) << 16);
  v3 = *a2;
  v4 = *(a2 + 4) | (*(a2 + 10) << 16);
  if (v2 < 0)
  {
    if (v4 < 0)
    {
      LOWORD(v10) = *a1;
      LOWORD(v7) = v3;
      v5 = _s19HealthVisualization20DiagramConfigurationO019PointLabelAllPointsD0V2eeoiySbAE_AEtFZ_0(&v10, &v7);
      return v5 & 1;
    }

    goto LABEL_5;
  }

  if (v4 < 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v10 = *a1;
  v11 = v2;
  v12 = BYTE2(v2) & 1;
  v7 = v3;
  v8 = v4;
  v9 = BYTE2(v4) & 1;
  v5 = _s19HealthVisualization20DiagramConfigurationO016PointLabelMinMaxD0V2eeoiySbAE_AEtFZ_0(&v10, &v7);
  return v5 & 1;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO18DistributionLimitsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = DiagramConfiguration.Color.rawValue.getter();
  v14 = v13;
  if (v12 == DiagramConfiguration.Color.rawValue.getter() && v14 == v15)
  {

    if (v3 != v8)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v9)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v7)
      {
        v18 = v9;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    if (v6)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v10)
      {
        v19 = v11;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    return 1;
  }

  v16 = sub_1D15A4BA8();

  result = 0;
  if ((v16 & 1) != 0 && v3 == v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO14AxisPropertiesV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[4];
  v43 = a1[6];
  v47 = a2[4];
  v45 = a1[5];
  v46 = a2[5];
  v44 = a2[6];
  v3 = DiagramConfiguration.AxisType.rawValue.getter();
  v5 = v4;
  if (v3 == DiagramConfiguration.AxisType.rawValue.getter() && v5 == v6)
  {
  }

  else
  {
    v7 = sub_1D15A4BA8();

    if ((v7 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v8 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v10 = v9;
  if (v8 == DiagramConfiguration.TextAttributes.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_1D15A4BA8();

    if ((v12 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v13 = DiagramConfiguration.Color.rawValue.getter();
  v15 = v14;
  if (v13 == DiagramConfiguration.Color.rawValue.getter() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_1D15A4BA8();

    if ((v17 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v18 = DiagramConfiguration.Color.rawValue.getter();
  v20 = v19;
  if (v18 == DiagramConfiguration.Color.rawValue.getter() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1D15A4BA8();

    if ((v22 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if (v2)
  {
    v23 = 0x74646957666C6168;
  }

  else
  {
    v23 = 0x57746C7561666564;
  }

  if (v2)
  {
    v24 = 0xE900000000000068;
  }

  else
  {
    v24 = 0xEC00000068746469;
  }

  if (v47)
  {
    v25 = 0x74646957666C6168;
  }

  else
  {
    v25 = 0x57746C7561666564;
  }

  if (v47)
  {
    v26 = 0xE900000000000068;
  }

  else
  {
    v26 = 0xEC00000068746469;
  }

  if (v23 == v25 && v24 == v26)
  {
  }

  else
  {
    v27 = sub_1D15A4BA8();

    if ((v27 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v28 = 0xEA00000000006874;
  v29 = 0x676E654C6F72657ALL;
  if (v45)
  {
    v30 = 0x676E654C6F72657ALL;
    v31 = 0xEA00000000006874;
    if (v45 != 1)
    {
      goto LABEL_38;
    }

    v32 = "defaultMinorLength";
  }

  else
  {
    v32 = "defaultMajorLength";
  }

  v31 = (v32 - 32) | 0x8000000000000000;
  v30 = 0xD000000000000012;
LABEL_38:
  if (!v46)
  {
    v35 = "defaultMajorLength";
    goto LABEL_42;
  }

  v33 = 0x676E654C6F72657ALL;
  v34 = 0xEA00000000006874;
  if (v46 == 1)
  {
    v35 = "defaultMinorLength";
LABEL_42:
    v34 = (v35 - 32) | 0x8000000000000000;
    v33 = 0xD000000000000012;
  }

  if (v30 == v33 && v31 == v34)
  {

    goto LABEL_47;
  }

  v36 = sub_1D15A4BA8();

  if ((v36 & 1) == 0)
  {
LABEL_50:
    v40 = 0;
    return v40 & 1;
  }

LABEL_47:
  if (v43)
  {
    v37 = 0x676E654C6F72657ALL;
    v38 = 0xEA00000000006874;
    if (v43 != 1)
    {
      goto LABEL_54;
    }

    v39 = "defaultMinorLength";
  }

  else
  {
    v39 = "defaultMajorLength";
  }

  v38 = (v39 - 32) | 0x8000000000000000;
  v37 = 0xD000000000000012;
LABEL_54:
  if (v44)
  {
    if (v44 != 1)
    {
      goto LABEL_59;
    }

    v42 = "defaultMinorLength";
  }

  else
  {
    v42 = "defaultMajorLength";
  }

  v28 = (v42 - 32) | 0x8000000000000000;
  v29 = 0xD000000000000012;
LABEL_59:
  if (v37 == v29 && v38 == v28)
  {
    v40 = 1;
  }

  else
  {
    v40 = sub_1D15A4BA8();
  }

  return v40 & 1;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO4AxisV2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | ((*(a1 + 2) | (*(a1 + 6) << 16)) << 32);
  v3 = *(a1 + 13);
  v4 = *(a1 + 11);
  v5 = *(a1 + 7);
  v6 = *a2 | ((*(a2 + 2) | (*(a2 + 6) << 16)) << 32);
  v7 = *(a2 + 13);
  v8 = *(a2 + 11);
  v9 = *(a2 + 7);
  if ((v2 & 0xFF00000000) != 0x200000000)
  {
    v18 = *a1;
    v20 = BYTE6(v2);
    v19 = WORD2(v2);
    if ((v6 & 0xFF00000000) == 0x200000000)
    {
      return 0;
    }

    v12 = v6;
    v13 = BYTE2(v6);
    v14 = BYTE3(v6);
    v15 = BYTE4(v6) & 1;
    v16 = BYTE5(v6);
    v17 = BYTE6(v6);
    if ((_s19HealthVisualization20DiagramConfigurationO14AxisPropertiesV2eeoiySbAE_AEtFZ_0(&v18, &v12) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v10 = v9 | ((v8 | (v7 << 16)) << 32);
    if (((v5 | ((v4 | (v3 << 16)) << 32)) & 0xFF00000000) == 0x200000000)
    {
      if ((v10 & 0xFF00000000) != 0x200000000)
      {
        return 0;
      }
    }

    else
    {
      v18 = v5;
      v20 = (v5 | ((v4 | (v3 << 16)) << 32)) >> 48;
      v19 = (v5 | ((v4 | (v3 << 16)) << 32)) >> 32;
      if ((v10 & 0xFF00000000) == 0x200000000)
      {
        return 0;
      }

      v12 = v9;
      v13 = BYTE2(v9);
      v14 = BYTE3(v9);
      v15 = BYTE4(v10) & 1;
      v16 = ((v9 | ((v8 | (v7 << 16)) << 32)) >> 32) >> 8;
      v17 = (v9 | ((v8 | (v7 << 16)) << 32)) >> 48;
      if ((_s19HealthVisualization20DiagramConfigurationO14AxisPropertiesV2eeoiySbAE_AEtFZ_0(&v18, &v12) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((v6 & 0xFF00000000) == 0x200000000)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO12DistributionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v78 = *(a1 + 6);
  v79 = *(a1 + 5);
  v75 = *(a1 + 7);
  v70 = *(a1 + 8);
  v66 = *(a1 + 40);
  v69 = *(a1 + 24);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v77 = *(a2 + 6);
  v76 = *(a2 + 7);
  v73 = *(a2 + 16);
  v74 = *(a2 + 18);
  v67 = *(a2 + 8);
  v68 = *(a2 + 24);
  v11 = *(a2 + 32);
  v58 = *(a2 + 40);
  v59 = *(a2 + 48);
  v61 = *(a2 + 56);
  v60 = *(a2 + 64);
  v53 = *(a2 + 77);
  v52 = *(a2 + 73);
  v12 = *(a2 + 80);
  v49 = *(a2 + 88);
  v71 = *(a1 + 16);
  v72 = *(a1 + 18);
  v65 = *(a1 + 56);
  v64 = *(a1 + 64);
  v62 = *(a1 + 65);
  v63 = *(a2 + 65);
  v57 = *(a1 + 77);
  v56 = *(a1 + 73);
  v54 = *(a1 + 79);
  v55 = *(a2 + 79);
  v51 = *(a1 + 80);
  v50 = *(a1 + 88);
  if ((sub_1D14784C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v48 = v12;
  v13 = 0xEB00000000676E69;
  v14 = 0x646461506F72657ALL;
  if (v2)
  {
    if (v2 == 1)
    {
      v15 = 0x80000001D15BD210;
      v16 = 0xD00000000000001ALL;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0x80000001D15BD230;
      v16 = 0xD00000000000001CLL;
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = 0x646461506F72657ALL;
    v15 = 0xEB00000000676E69;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v6 != 1)
  {
    v13 = 0x80000001D15BD230;
    if (v16 != 0xD00000000000001CLL)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v13 = 0x80000001D15BD210;
  v14 = 0xD00000000000001ALL;
LABEL_11:
  if (v16 != v14)
  {
LABEL_16:
    v17 = sub_1D15A4BA8();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v15 != v13)
  {
    goto LABEL_16;
  }

LABEL_17:
  LOBYTE(v85[0]) = v3;
  LOBYTE(v80) = v7;
  v18 = DiagramConfiguration.Color.rawValue.getter();
  v20 = v19;
  if (v18 == DiagramConfiguration.Color.rawValue.getter() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1D15A4BA8();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v85[0]) = v4;
  LOBYTE(v80) = v8;
  v23 = DiagramConfiguration.Color.rawValue.getter();
  v25 = v24;
  if (v23 == DiagramConfiguration.Color.rawValue.getter() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_1D15A4BA8();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v85[0]) = v5;
  LOBYTE(v80) = v9;
  v28 = DiagramConfiguration.Color.rawValue.getter();
  v30 = v29;
  if (v28 == DiagramConfiguration.Color.rawValue.getter() && v30 == v31)
  {
  }

  else
  {
    v32 = sub_1D15A4BA8();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v85[0]) = v79;
  LOBYTE(v80) = v10;
  v33 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v35 = v34;
  if (v33 == DiagramConfiguration.TextAttributes.rawValue.getter() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_1D15A4BA8();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1D1478164(v78, v77))
  {
    v38 = 0x746E65746E6F43;
    if (v75)
    {
      if (v75 == 1)
      {
        v39 = 0x80000001D15BCD70;
        v40 = 0xD000000000000012;
      }

      else
      {
        v40 = 0x636E657265666552;
        v39 = 0xED0000656E694C65;
      }
    }

    else
    {
      v39 = 0xE700000000000000;
      v40 = 0x746E65746E6F43;
    }

    if (v76)
    {
      if (v76 == 1)
      {
        v41 = 0x80000001D15BCD70;
        v38 = 0xD000000000000012;
      }

      else
      {
        v38 = 0x636E657265666552;
        v41 = 0xED0000656E694C65;
      }
    }

    else
    {
      v41 = 0xE700000000000000;
    }

    if (v40 == v38 && v39 == v41)
    {
    }

    else
    {
      v42 = sub_1D15A4BA8();

      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }

    v43 = v73 | (v74 << 16);
    if ((~(v71 | (v72 << 16)) & 0xFEE0E0) != 0)
    {
      *&v85[0] = v70;
      WORD4(v85[0]) = v71;
      BYTE10(v85[0]) = (v71 | (v72 << 16)) >> 16;
      v44 = v48;
      if ((~v43 & 0xFEE0E0) == 0)
      {
        return 0;
      }

      *&v80 = v67;
      WORD4(v80) = v73;
      BYTE10(v80) = (v73 | (v74 << 16)) >> 16;
      if ((_s19HealthVisualization20DiagramConfigurationO010PointLabelD0O2eeoiySbAE_AEtFZ_0(v85, &v80) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v44 = v48;
      if ((~v43 & 0xFEE0E0) != 0)
      {
        return 0;
      }
    }

    if (v69 == 35)
    {
      if (v68 != 35)
      {
        return 0;
      }
    }

    else
    {
      v85[0] = v69;
      v85[1] = v66;
      v86 = v65;
      v87 = v64;
      if (v68 == 35)
      {
        return 0;
      }

      LOBYTE(v80) = v68;
      *(&v80 + 1) = v11;
      v81 = v58;
      v82 = v59 & 1;
      v83 = v61;
      v84 = v60 & 1;
      if ((_s19HealthVisualization20DiagramConfigurationO18DistributionLimitsV2eeoiySbAE_AEtFZ_0(v85, &v80) & 1) == 0)
      {
        return 0;
      }
    }

    if ((v62 & 0xFF00000000) == 0x300000000)
    {
      if ((v63 & 0xFF00000000) != 0x300000000)
      {
        return 0;
      }
    }

    else
    {
      *&v85[0] = v62;
      DWORD2(v85[0]) = v56;
      WORD6(v85[0]) = (v56 | (v57 << 32)) >> 32;
      if ((v63 & 0xFF00000000) == 0x300000000)
      {
        return 0;
      }

      LODWORD(v80) = v63;
      BYTE6(v80) = BYTE6(v63);
      *(&v45 + 1) = v52 | (v53 << 32);
      *&v45 = v63;
      WORD2(v80) = WORD2(v63);
      *(&v80 + 7) = v45 >> 56;
      BYTE13(v80) = (v45 >> 56) >> 48;
      *(&v80 + 11) = (v45 >> 56) >> 32;
      if ((_s19HealthVisualization20DiagramConfigurationO4AxisV2eeoiySbAE_AEtFZ_0(v85, &v80) & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_1D1478040(v54, v55))
    {
      if (v50)
      {
        if (v51)
        {
          if (v49)
          {
            return v44 != 0;
          }
        }

        else if (v49)
        {
          return v44 == 0;
        }
      }

      else
      {
        v47 = v49;
        if (v51 != v44)
        {
          v47 = 1;
        }

        if ((v47 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO14LinePropertiesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v53 = *(a1 + 6);
  v54 = *(a1 + 5);
  v6 = *(a1 + 16);
  v45 = *(a1 + 26);
  v46 = *(a1 + 9);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v51 = *(a1 + 7);
  v52 = *(a2 + 6);
  v49 = *(a1 + 8);
  v50 = *(a2 + 7);
  v47 = *(a2 + 9);
  v48 = *(a2 + 8);
  v41 = *(a2 + 16);
  v43 = *(a2 + 26);
  v44 = *(a1 + 24);
  v42 = *(a2 + 24);
  if ((sub_1D1477CB0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v40 = v6;
  LOBYTE(v58) = v2;
  LOBYTE(v55) = v7;
  v12 = DiagramConfiguration.Color.rawValue.getter();
  v14 = v13;
  if (v12 == DiagramConfiguration.Color.rawValue.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_1D15A4BA8();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v58) = v3;
  LOBYTE(v55) = v8;
  v17 = DiagramConfiguration.Color.rawValue.getter();
  v19 = v18;
  if (v17 == DiagramConfiguration.Color.rawValue.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_1D15A4BA8();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1D14782C0(v4, v9) & 1) == 0 || (sub_1D14782C0(v5, v10) & 1) == 0 || (sub_1D1478164(v54, v11) & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v58) = v53;
  LOBYTE(v55) = v52;
  v22 = DiagramConfiguration.Color.rawValue.getter();
  v24 = v23;
  if (v22 == DiagramConfiguration.Color.rawValue.getter() && v24 == v25)
  {

    v26 = v40;
  }

  else
  {
    v27 = sub_1D15A4BA8();

    v26 = v40;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1D1477CB0(v51, v50))
  {
    LOBYTE(v58) = v49;
    LOBYTE(v55) = v48;
    v28 = DiagramConfiguration.TextAttributes.rawValue.getter();
    v30 = v29;
    if (v28 == DiagramConfiguration.TextAttributes.rawValue.getter() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_1D15A4BA8();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    v33 = 0x746E65746E6F43;
    if (v46)
    {
      if (v46 == 1)
      {
        v34 = 0xD000000000000012;
        v35 = 0x80000001D15BCD70;
      }

      else
      {
        v34 = 0x636E657265666552;
        v35 = 0xED0000656E694C65;
      }
    }

    else
    {
      v35 = 0xE700000000000000;
      v34 = 0x746E65746E6F43;
    }

    if (v47)
    {
      if (v47 == 1)
      {
        v33 = 0xD000000000000012;
        v36 = 0x80000001D15BCD70;
      }

      else
      {
        v33 = 0x636E657265666552;
        v36 = 0xED0000656E694C65;
      }
    }

    else
    {
      v36 = 0xE700000000000000;
    }

    if (v34 == v33 && v35 == v36)
    {

      goto LABEL_36;
    }

    v37 = sub_1D15A4BA8();

    if (v37)
    {
LABEL_36:
      v38 = v42 | (v43 << 16);
      if ((~(v44 | (v45 << 16)) & 0xFEE0E0) != 0)
      {
        v58 = v26;
        v59 = v44;
        v60 = (v44 | (v45 << 16)) >> 16;
        if ((~v38 & 0xFEE0E0) == 0)
        {
          return 0;
        }

        v55 = v41;
        v56 = v42;
        v57 = (v42 | (v43 << 16)) >> 16;
        if ((_s19HealthVisualization20DiagramConfigurationO010PointLabelD0O2eeoiySbAE_AEtFZ_0(&v58, &v55) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((~v38 & 0xFEE0E0) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO17HeartRateRecoveryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  v4 = *(a2 + 1);
  v5 = *(a2 + 3);
  v6 = DiagramConfiguration.Color.rawValue.getter();
  v8 = v7;
  if (v6 == DiagramConfiguration.Color.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D15A4BA8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1D14782C0(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v11 = DiagramConfiguration.Color.rawValue.getter();
  v13 = v12;
  if (v11 != DiagramConfiguration.Color.rawValue.getter() || v13 != v14)
  {
    v15 = sub_1D15A4BA8();

    if (v15)
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:

  return sub_1D1477CB0(v3, v5);
}

uint64_t _s19HealthVisualization20DiagramConfigurationO3BarV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v70 = *(a1 + 6);
  v71 = *(a1 + 5);
  v6 = *(a1 + 16);
  v61 = *(a1 + 24);
  v60 = *(a1 + 36);
  v59 = *(a1 + 32);
  v58 = *(a1 + 38);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v68 = *(a1 + 7);
  v69 = *(a2 + 6);
  v66 = *(a1 + 8);
  v67 = *(a2 + 7);
  v64 = *(a1 + 9);
  v65 = *(a2 + 8);
  v63 = *(a2 + 9);
  v12 = *(a2 + 16);
  v62 = *(a2 + 24);
  v56 = *(a2 + 36);
  v55 = *(a2 + 32);
  v57 = *(a2 + 38);
  if ((sub_1D1477EF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v78) = v2;
  LOBYTE(v72) = v7;
  v13 = DiagramConfiguration.Color.rawValue.getter();
  v15 = v14;
  if (v13 == DiagramConfiguration.Color.rawValue.getter() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_1D15A4BA8();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v78) = v3;
  LOBYTE(v72) = v8;
  v18 = DiagramConfiguration.Color.rawValue.getter();
  v20 = v19;
  if (v18 == DiagramConfiguration.Color.rawValue.getter() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1D15A4BA8();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = 0xEE00657A69537265;
  v24 = 0x6E726F436F72657ALL;
  if (v4)
  {
    v25 = 0x6E726F436F72657ALL;
    v26 = 0xEE00657A69537265;
    if (v4 != 1)
    {
      v26 = 0x80000001D15BD490;
      v25 = 0xD000000000000012;
    }

    if (v9)
    {
LABEL_14:
      if (v9 != 1)
      {
        v23 = 0x80000001D15BD490;
        v24 = 0xD000000000000012;
      }

      if (v25 != v24)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v26 = 0x80000001D15BD460;
    v25 = 0xD000000000000011;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  v23 = 0x80000001D15BD460;
  if (v25 != 0xD000000000000011)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (v26 == v23)
  {

    goto LABEL_23;
  }

LABEL_22:
  v27 = sub_1D15A4BA8();

  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if (v5 == 35)
  {
    if (v10 != 35)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == 35)
    {
      return 0;
    }

    LOBYTE(v78) = v5;
    LOBYTE(v72) = v10;
    v28 = DiagramConfiguration.Color.rawValue.getter();
    v30 = v29;
    if (v28 == DiagramConfiguration.Color.rawValue.getter() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_1D15A4BA8();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  LOBYTE(v78) = v71;
  LOBYTE(v72) = v11;
  v33 = DiagramConfiguration.Color.rawValue.getter();
  v35 = v34;
  if (v33 == DiagramConfiguration.Color.rawValue.getter() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_1D15A4BA8();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v78) = v70;
  LOBYTE(v72) = v69;
  v38 = DiagramConfiguration.Color.rawValue.getter();
  v40 = v39;
  if (v38 == DiagramConfiguration.Color.rawValue.getter() && v40 == v41)
  {
  }

  else
  {
    v42 = sub_1D15A4BA8();

    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  LOBYTE(v78) = v68;
  LOBYTE(v72) = v67;
  v43 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v45 = v44;
  if (v43 == DiagramConfiguration.TextAttributes.rawValue.getter() && v45 == v46)
  {
  }

  else
  {
    v47 = sub_1D15A4BA8();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1D1478164(v66, v65) & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v78) = v64;
  LOBYTE(v72) = v63;
  v48 = DiagramConfiguration.TextAttributes.rawValue.getter();
  v50 = v49;
  if (v48 == DiagramConfiguration.TextAttributes.rawValue.getter() && v50 == v51)
  {

    goto LABEL_48;
  }

  v52 = sub_1D15A4BA8();

  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  if (v6 != v12)
  {
    return 0;
  }

  if ((v61 & 0xFF00000000) == 0x300000000)
  {
    if ((v62 & 0xFF00000000) != 0x300000000)
    {
      return 0;
    }
  }

  else
  {
    v78 = v61;
    v79 = v59;
    v80 = (v59 | (v60 << 32)) >> 32;
    if ((v62 & 0xFF00000000) == 0x300000000)
    {
      return 0;
    }

    v72 = v62;
    v74 = BYTE6(v62);
    *(&v53 + 1) = v55 | (v56 << 32);
    *&v53 = v62;
    v73 = WORD2(v62);
    v75 = v53 >> 56;
    v77 = (v53 >> 56) >> 48;
    v76 = (v53 >> 56) >> 32;
    if ((_s19HealthVisualization20DiagramConfigurationO4AxisV2eeoiySbAE_AEtFZ_0(&v78, &v72) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D1478040(v58, v57);
}

uint64_t _s19HealthVisualization20DiagramConfigurationO4LineV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 20);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v17 = *(a2 + 33);
  v18 = *(a1 + 33);
  if ((sub_1D1488B58(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v2 & 0xFF00000000) == 0x300000000)
  {
    if ((v7 & 0xFF00000000) != 0x300000000)
    {
      return 0;
    }
  }

  else
  {
    v25 = v2;
    v26 = v4;
    v27 = (v4 | (v3 << 32)) >> 32;
    if ((v7 & 0xFF00000000) == 0x300000000)
    {
      return 0;
    }

    v19 = v7;
    v21 = BYTE6(v7);
    *(&v12 + 1) = v9 | (v8 << 32);
    *&v12 = v7;
    v20 = WORD2(v7);
    v22 = v12 >> 56;
    v24 = (v12 >> 56) >> 48;
    v23 = (v12 >> 56) >> 32;
    if ((_s19HealthVisualization20DiagramConfigurationO4AxisV2eeoiySbAE_AEtFZ_0(&v25, &v19) & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v5)
    {
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v13 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v10)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11;
      }

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v5 == v10)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return sub_1D1478040(v18, v17);
}

uint64_t _s19HealthVisualization20DiagramConfigurationO6BannerV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = 0, (sub_1D15A4BA8() & 1) != 0))
  {
    v4 = DiagramConfiguration.TextAttributes.rawValue.getter();
    v6 = v5;
    if (v4 == DiagramConfiguration.TextAttributes.rawValue.getter() && v6 == v7)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1D15A4BA8();
    }
  }

  return v3 & 1;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO8AxisOnlyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 14);
  v4 = *(a1 + 15);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v8 = *(a1 + 4);
  v9 = *(a1 + 7);
  v10 = *(a1 + 11);
  v11 = *a2;
  v12 = *(a2 + 14);
  v13 = *(a2 + 15);
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a2 + 18);
  v17 = *(a2 + 4);
  v18 = a2 + 7;
  v19 = *(a2 + 7);
  v20 = *(a2 + 11);
  v21 = *(a1 + 13);
  v22 = *(a2 + 6);
  LOBYTE(v18) = *(v18 + 6);
  v54 = *(a1 + 6);
  v53 = v8;
  v52 = v2;
  v57 = v21;
  v56 = v10;
  v55 = v9;
  v48 = v22;
  v47 = v17;
  v46 = v11;
  v51 = v18;
  v50 = v20;
  v49 = v19;
  if ((_s19HealthVisualization20DiagramConfigurationO4AxisV2eeoiySbAE_AEtFZ_0(&v52, &v46) & 1) == 0)
  {
    return 0;
  }

  v43 = v16;
  v44 = v7;
  v23 = 0xEC0000007465736ELL;
  v24 = 0x49746C7561666564;
  if (!v3)
  {
    v25 = 0x49746C7561666564;
    v26 = 0xEC0000007465736ELL;
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v3 != 1)
  {
    v26 = 0xE700000000000000;
    v25 = 0x7465736E496F6ELL;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_10:
    v27 = 0x49746C7561666564;
    v28 = 0xEC0000007465736ELL;
    goto LABEL_12;
  }

  v25 = 0x65736E4965646977;
  v26 = 0xE900000000000074;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v12 == 1)
  {
    v27 = 0x65736E4965646977;
    v28 = 0xE900000000000074;
  }

  else
  {
    v28 = 0xE700000000000000;
    v27 = 0x7465736E496F6ELL;
  }

LABEL_12:
  v45 = v15;
  if (v25 == v27 && v26 == v28)
  {
  }

  else
  {
    v29 = sub_1D15A4BA8();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v30 = 0x65736E4965646977;
      v31 = 0xE900000000000074;
      if (!v13)
      {
LABEL_25:
        v32 = 0xEC0000007465736ELL;
        if (v30 != 0x49746C7561666564)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v31 = 0xE700000000000000;
      v30 = 0x7465736E496F6ELL;
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v30 = 0x49746C7561666564;
    v31 = 0xEC0000007465736ELL;
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  if (v13 == 1)
  {
    v32 = 0xE900000000000074;
    if (v30 != 0x65736E4965646977)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v32 = 0xE700000000000000;
    if (v30 != 0x7465736E496F6ELL)
    {
      goto LABEL_30;
    }
  }

LABEL_28:
  if (v31 == v32)
  {

    goto LABEL_31;
  }

LABEL_30:
  v33 = sub_1D15A4BA8();

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (v5 == 1)
    {
      v34 = 0x65736E4965646977;
      v35 = 0xE900000000000074;
      if (!v14)
      {
LABEL_40:
        v36 = 0xEC0000007465736ELL;
        if (v34 != 0x49746C7561666564)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v35 = 0xE700000000000000;
      v34 = 0x7465736E496F6ELL;
      if (!v14)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v34 = 0x49746C7561666564;
    v35 = 0xEC0000007465736ELL;
    if (!v14)
    {
      goto LABEL_40;
    }
  }

  if (v14 == 1)
  {
    v36 = 0xE900000000000074;
    if (v34 != 0x65736E4965646977)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v36 = 0xE700000000000000;
    if (v34 != 0x7465736E496F6ELL)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v35 == v36)
  {

    goto LABEL_46;
  }

LABEL_45:
  v37 = sub_1D15A4BA8();

  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  if (v6)
  {
    v38 = v45;
    if (v6 == 1)
    {
      v39 = 0x65736E4965646977;
      v40 = 0xE900000000000074;
      if (!v45)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v40 = 0xE700000000000000;
      v39 = 0x7465736E496F6ELL;
      if (!v45)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v39 = 0x49746C7561666564;
    v40 = 0xEC0000007465736ELL;
    v38 = v45;
    if (!v45)
    {
      goto LABEL_55;
    }
  }

  if (v38 != 1)
  {
    v23 = 0xE700000000000000;
    if (v39 != 0x7465736E496F6ELL)
    {
      goto LABEL_60;
    }

LABEL_58:
    if (v40 == v23)
    {

      return v44 ^ v43 ^ 1u;
    }

    goto LABEL_60;
  }

  v24 = 0x65736E4965646977;
  v23 = 0xE900000000000074;
LABEL_55:
  if (v39 == v24)
  {
    goto LABEL_58;
  }

LABEL_60:
  v41 = sub_1D15A4BA8();

  if (v41)
  {
    return v44 ^ v43 ^ 1u;
  }

  return 0;
}

uint64_t _s19HealthVisualization20DiagramConfigurationO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *v52 = a1[2];
  *&v52[16] = v2;
  v4 = a1[3];
  *&v52[32] = a1[4];
  *&v52[41] = *(a1 + 73);
  v5 = a1[1];
  v50 = *a1;
  v51 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v55 = a2[2];
  v56 = v6;
  v8 = a2[3];
  *v57 = a2[4];
  *&v57[9] = *(a2 + 73);
  v9 = a2[1];
  v53 = *a2;
  v54 = v9;
  v58[2] = *v52;
  v58[3] = v4;
  v59[0] = a1[4];
  *(v59 + 9) = *(a1 + 73);
  v58[0] = v50;
  v58[1] = v3;
  *(v60 + 9) = *(a2 + 73);
  v10 = a2[4];
  v59[5] = v8;
  v60[0] = v10;
  v59[3] = v7;
  v59[4] = v55;
  v59[2] = v53;
  v11 = v5;
  v12 = (v5 >> 24) | (BYTE7(v5) << 32);
  v13 = *&v52[2] | (*&v52[6] << 32);
  v14 = v52[56] >> 5;
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if ((v57[24] & 0xE0) == 0x60)
      {
        v36 = v50;
        v37 = v5;
        v38 = BYTE2(v5) & 1;
        v29 = v53;
        LOWORD(v30) = v54;
        BYTE2(v30) = BYTE2(v54) & 1;
        v20 = _s19HealthVisualization20DiagramConfigurationO8AxisOnlyV2eeoiySbAE_AEtFZ_0(&v36, &v29);
        goto LABEL_22;
      }
    }

    else if (v14 == 4)
    {
      if ((v57[24] & 0xE0) == 0x80)
      {
        v36 = v50;
        v37 = v5;
        v38 = BYTE2(v5);
        v39 = v5 >> 24;
        v40 = BYTE4(v12);
        v41 = *(&v51 + 1);
        v42 = v52[0];
        v43 = v52[1];
        v44 = *&v52[2];
        v45 = WORD2(v13);
        v46 = *&v52[8];
        v47 = *&v52[24];
        v48 = *&v52[40];
        v49 = v52[56] & 0x1F;
        v29 = v53;
        v30 = v54;
        v31 = v55;
        v32 = v56;
        v33 = *v57;
        v34 = *&v57[16];
        v35 = v57[24] & 0x1F;
        v20 = _s19HealthVisualization20DiagramConfigurationO12DistributionV2eeoiySbAE_AEtFZ_0(&v36, &v29);
LABEL_22:
        v21 = v20;
        sub_1D159DA68(v58);
        return v21 & 1;
      }
    }

    else if ((v57[24] & 0xE0) == 0xA0)
    {
      LODWORD(v36) = v50;
      LODWORD(v29) = v53;
      v20 = _s19HealthVisualization20DiagramConfigurationO17HeartRateRecoveryV2eeoiySbAE_AEtFZ_0(&v36, &v29);
      goto LABEL_22;
    }

LABEL_24:
    v22 = &v53;
    goto LABEL_25;
  }

  if (!v14)
  {
    if (v57[24] <= 0x1Fu)
    {
      v36 = v50;
      v37 = v5;
      v38 = BYTE2(v5);
      v39 = *(&v51 + 3);
      v40 = BYTE4(v12);
      v41 = *(&v51 + 1);
      v42 = v52[0];
      v43 = v52[1];
      v44 = *&v52[2];
      LOBYTE(v45) = BYTE4(v13);
      v29 = v53;
      v30 = v54;
      BYTE6(v31) = BYTE6(v55);
      WORD2(v31) = WORD2(v55);
      LODWORD(v31) = v55;
      v20 = _s19HealthVisualization20DiagramConfigurationO3BarV2eeoiySbAE_AEtFZ_0(&v36, &v29);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v14 == 1)
  {
    if ((v57[24] & 0xE0) == 0x20)
    {
      if (v50 == v53 || (sub_1D15A4BA8() & 1) != 0)
      {
        LOBYTE(v29) = v11;
        LOBYTE(v24) = v54;
        v15 = DiagramConfiguration.TextAttributes.rawValue.getter();
        v17 = v16;
        if (v15 == DiagramConfiguration.TextAttributes.rawValue.getter() && v17 == v18)
        {
          v19 = 1;
        }

        else
        {
          v19 = sub_1D15A4BA8();
        }

        sub_1D1450714(&v53, &v36);
        sub_1D1450714(&v50, &v36);
        sub_1D1450714(&v53, &v36);
        sub_1D1450714(&v50, &v36);
        sub_1D159DA68(v58);

        sub_1D159DAD8(&v53);
        sub_1D159DAD8(&v50);
        if (v19)
        {
          v21 = 1;
          return v21 & 1;
        }

        goto LABEL_26;
      }

      sub_1D1450714(&v53, &v36);
      v22 = &v50;
LABEL_25:
      sub_1D1450714(v22, &v36);
      sub_1D159DA68(v58);
LABEL_26:
      v21 = 0;
      return v21 & 1;
    }

    goto LABEL_23;
  }

  if ((v57[24] & 0xE0) != 0x40)
  {
LABEL_23:

    goto LABEL_24;
  }

  v29 = v50;
  LOWORD(v30) = v5;
  BYTE2(v30) = BYTE2(v5);
  *(&v30 + 3) = v5 >> 24;
  BYTE5(v30) = (v5 >> 24) >> 16;
  *(&v30 + 1) = *(&v51 + 1);
  LOWORD(v31) = *v52 & 0xFF01;
  v24 = v53;
  v26 = WORD2(v54);
  v25 = v54;
  v27 = *(&v54 + 1);
  v28 = v55 & 0xFF01;
  sub_1D1450714(&v53, &v36);
  sub_1D1450714(&v50, &v36);
  sub_1D1450714(&v53, &v36);
  sub_1D1450714(&v50, &v36);
  v21 = _s19HealthVisualization20DiagramConfigurationO4LineV2eeoiySbAE_AEtFZ_0(&v29, &v24);
  sub_1D159DA68(v58);
  sub_1D159DAD8(&v53);
  sub_1D159DAD8(&v50);
  return v21 & 1;
}

unint64_t sub_1D1598554()
{
  result = qword_1EE05B190;
  if (!qword_1EE05B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B190);
  }

  return result;
}

unint64_t sub_1D15985A8()
{
  result = qword_1EC6314D8;
  if (!qword_1EC6314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314D8);
  }

  return result;
}

unint64_t sub_1D15985FC()
{
  result = qword_1EE058E18;
  if (!qword_1EE058E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E18);
  }

  return result;
}

unint64_t sub_1D1598650()
{
  result = qword_1EC6314E0;
  if (!qword_1EC6314E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314E0);
  }

  return result;
}

unint64_t sub_1D15986A4()
{
  result = qword_1EE05B170;
  if (!qword_1EE05B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B170);
  }

  return result;
}

unint64_t sub_1D15986F8()
{
  result = qword_1EE05B188;
  if (!qword_1EE05B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B188);
  }

  return result;
}

unint64_t sub_1D159874C()
{
  result = qword_1EE058DF0;
  if (!qword_1EE058DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058DF0);
  }

  return result;
}

unint64_t sub_1D15987A0()
{
  result = qword_1EE05B118;
  if (!qword_1EE05B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B118);
  }

  return result;
}

unint64_t sub_1D15987F4()
{
  result = qword_1EE05B0D0;
  if (!qword_1EE05B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0D0);
  }

  return result;
}

unint64_t sub_1D1598848()
{
  result = qword_1EC6314F0;
  if (!qword_1EC6314F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314F0);
  }

  return result;
}

unint64_t sub_1D159889C()
{
  result = qword_1EC6314F8;
  if (!qword_1EC6314F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314F8);
  }

  return result;
}

unint64_t sub_1D15988F0()
{
  result = qword_1EC631508;
  if (!qword_1EC631508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631508);
  }

  return result;
}

unint64_t sub_1D1598944()
{
  result = qword_1EC631518;
  if (!qword_1EC631518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631518);
  }

  return result;
}

unint64_t sub_1D1598998()
{
  result = qword_1EE05B4C8;
  if (!qword_1EE05B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4C8);
  }

  return result;
}

unint64_t sub_1D15989EC()
{
  result = qword_1EE05A400;
  if (!qword_1EE05A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A400);
  }

  return result;
}

unint64_t sub_1D1598A40()
{
  result = qword_1EE05B0A0;
  if (!qword_1EE05B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0A0);
  }

  return result;
}

unint64_t sub_1D1598A94()
{
  result = qword_1EE05A470;
  if (!qword_1EE05A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A470);
  }

  return result;
}

unint64_t sub_1D1598AE8()
{
  result = qword_1EE05B0C0;
  if (!qword_1EE05B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0C0);
  }

  return result;
}

unint64_t sub_1D1598B3C()
{
  result = qword_1EE05B0B0;
  if (!qword_1EE05B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0B0);
  }

  return result;
}

unint64_t sub_1D1598B90()
{
  result = qword_1EE05B098;
  if (!qword_1EE05B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B098);
  }

  return result;
}

unint64_t sub_1D1598BE4()
{
  result = qword_1EE05B088;
  if (!qword_1EE05B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B088);
  }

  return result;
}

unint64_t sub_1D1598C38()
{
  result = qword_1EE05B168;
  if (!qword_1EE05B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B168);
  }

  return result;
}

unint64_t sub_1D1598C8C()
{
  result = qword_1EC631530;
  if (!qword_1EC631530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631530);
  }

  return result;
}

unint64_t sub_1D1598CE0()
{
  result = qword_1EC631548;
  if (!qword_1EC631548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631548);
  }

  return result;
}

unint64_t sub_1D1598D34()
{
  result = qword_1EC631550;
  if (!qword_1EC631550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631550);
  }

  return result;
}

unint64_t sub_1D1598D88()
{
  result = qword_1EC631560;
  if (!qword_1EC631560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631560);
  }

  return result;
}

unint64_t sub_1D1598DDC()
{
  result = qword_1EE05B120;
  if (!qword_1EE05B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B120);
  }

  return result;
}

unint64_t sub_1D1598E30()
{
  result = qword_1EE05B110;
  if (!qword_1EE05B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B110);
  }

  return result;
}

unint64_t sub_1D1598E84()
{
  result = qword_1EE05B080;
  if (!qword_1EE05B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B080);
  }

  return result;
}

unint64_t sub_1D1598ED8()
{
  result = qword_1EE05B160;
  if (!qword_1EE05B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B160);
  }

  return result;
}

unint64_t sub_1D1598F2C()
{
  result = qword_1EE05B1A8;
  if (!qword_1EE05B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1A8);
  }

  return result;
}

unint64_t sub_1D1598F80()
{
  result = qword_1EE05B158;
  if (!qword_1EE05B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B158);
  }

  return result;
}

unint64_t sub_1D1598FD4()
{
  result = qword_1EE058E08;
  if (!qword_1EE058E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E08);
  }

  return result;
}

unint64_t sub_1D1599028()
{
  result = qword_1EE058DF8;
  if (!qword_1EE058DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058DF8);
  }

  return result;
}

unint64_t sub_1D159907C()
{
  result = qword_1EE058E00;
  if (!qword_1EE058E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E00);
  }

  return result;
}

unint64_t sub_1D15990D0()
{
  result = qword_1EE05B100;
  if (!qword_1EE05B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B100);
  }

  return result;
}

unint64_t sub_1D1599124()
{
  result = qword_1EE05B0E8;
  if (!qword_1EE05B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0E8);
  }

  return result;
}

unint64_t sub_1D1599178()
{
  result = qword_1EE05B0F8;
  if (!qword_1EE05B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0F8);
  }

  return result;
}

unint64_t sub_1D15991CC()
{
  result = qword_1EC631570;
  if (!qword_1EC631570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631570);
  }

  return result;
}

unint64_t sub_1D1599220()
{
  result = qword_1EC631588;
  if (!qword_1EC631588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631588);
  }

  return result;
}

unint64_t sub_1D1599274()
{
  result = qword_1EE05B130;
  if (!qword_1EE05B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B130);
  }

  return result;
}

unint64_t sub_1D15992C8()
{
  result = qword_1EE05B090;
  if (!qword_1EE05B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B090);
  }

  return result;
}

unint64_t sub_1D159931C()
{
  result = qword_1EE05B138;
  if (!qword_1EE05B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B138);
  }

  return result;
}

unint64_t sub_1D1599370()
{
  result = qword_1EE05B128;
  if (!qword_1EE05B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B128);
  }

  return result;
}

void sub_1D15993C4()
{
  if (!qword_1EC631598)
  {
    sub_1D1599434();
    sub_1D15A4818();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC631598);
    }
  }
}

unint64_t sub_1D1599434()
{
  result = qword_1EC6315A0;
  if (!qword_1EC6315A0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC6315A0);
  }

  return result;
}

unint64_t sub_1D1599480()
{
  result = qword_1EC6315A8;
  if (!qword_1EC6315A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315A8);
  }

  return result;
}

unint64_t sub_1D15994D4()
{
  result = qword_1EE058E10;
  if (!qword_1EE058E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E10);
  }

  return result;
}

unint64_t sub_1D1599528()
{
  result = qword_1EC6315B0;
  if (!qword_1EC6315B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315B0);
  }

  return result;
}

unint64_t sub_1D159957C()
{
  result = qword_1EE05B0A8;
  if (!qword_1EE05B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0A8);
  }

  return result;
}

unint64_t sub_1D15995D0()
{
  result = qword_1EC6315B8;
  if (!qword_1EC6315B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315B8);
  }

  return result;
}

unint64_t sub_1D1599624()
{
  result = qword_1EE05A408;
  if (!qword_1EE05A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A408);
  }

  return result;
}

unint64_t sub_1D1599678()
{
  result = qword_1EC6315C0;
  if (!qword_1EC6315C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315C0);
  }

  return result;
}

unint64_t sub_1D15996CC()
{
  result = qword_1EE05B140;
  if (!qword_1EE05B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B140);
  }

  return result;
}

unint64_t sub_1D1599720()
{
  result = qword_1EC6315C8;
  if (!qword_1EC6315C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315C8);
  }

  return result;
}

unint64_t sub_1D1599774()
{
  result = qword_1EC6315D0;
  if (!qword_1EC6315D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315D0);
  }

  return result;
}

unint64_t sub_1D15997C8()
{
  result = qword_1EE05B0B8;
  if (!qword_1EE05B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0B8);
  }

  return result;
}

unint64_t sub_1D1599820()
{
  result = qword_1EC6315D8;
  if (!qword_1EC6315D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315D8);
  }

  return result;
}

unint64_t sub_1D1599878()
{
  result = qword_1EE05B198;
  if (!qword_1EE05B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B198);
  }

  return result;
}

unint64_t sub_1D15998D0()
{
  result = qword_1EE05B1A0;
  if (!qword_1EE05B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1A0);
  }

  return result;
}

unint64_t sub_1D1599928()
{
  result = qword_1EE05B0D8;
  if (!qword_1EE05B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0D8);
  }

  return result;
}

unint64_t sub_1D1599980()
{
  result = qword_1EC6315E0;
  if (!qword_1EC6315E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315E0);
  }

  return result;
}

unint64_t sub_1D15999D8()
{
  result = qword_1EE05B0E0;
  if (!qword_1EE05B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0E0);
  }

  return result;
}

unint64_t sub_1D1599A30()
{
  result = qword_1EE05B0C8;
  if (!qword_1EE05B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0C8);
  }

  return result;
}

unint64_t sub_1D1599A88()
{
  result = qword_1EC6315E8;
  if (!qword_1EC6315E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315E8);
  }

  return result;
}

unint64_t sub_1D1599AE0()
{
  result = qword_1EC6315F0;
  if (!qword_1EC6315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315F0);
  }

  return result;
}

unint64_t sub_1D1599B38()
{
  result = qword_1EC6315F8;
  if (!qword_1EC6315F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6315F8);
  }

  return result;
}

unint64_t sub_1D1599B90()
{
  result = qword_1EC631600;
  if (!qword_1EC631600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631600);
  }

  return result;
}

unint64_t sub_1D1599BE8()
{
  result = qword_1EC631608;
  if (!qword_1EC631608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631608);
  }

  return result;
}

unint64_t sub_1D1599C40()
{
  result = qword_1EC631610;
  if (!qword_1EC631610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631610);
  }

  return result;
}

unint64_t sub_1D1599C98()
{
  result = qword_1EC631618;
  if (!qword_1EC631618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631618);
  }

  return result;
}

unint64_t sub_1D1599CF0()
{
  result = qword_1EC631620;
  if (!qword_1EC631620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631620);
  }

  return result;
}

unint64_t sub_1D1599D48()
{
  result = qword_1EC631628;
  if (!qword_1EC631628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631628);
  }

  return result;
}

unint64_t sub_1D1599DA0()
{
  result = qword_1EE05B490;
  if (!qword_1EE05B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B490);
  }

  return result;
}

unint64_t sub_1D1599DF8()
{
  result = qword_1EC631630;
  if (!qword_1EC631630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631630);
  }

  return result;
}

unint64_t sub_1D1599E50()
{
  result = qword_1EC631638;
  if (!qword_1EC631638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631638);
  }

  return result;
}

unint64_t sub_1D1599EA8()
{
  result = qword_1EC631640;
  if (!qword_1EC631640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631640);
  }

  return result;
}

unint64_t sub_1D1599F00()
{
  result = qword_1EC631648;
  if (!qword_1EC631648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631648);
  }

  return result;
}

uint64_t sub_1D1599F54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFB && *(a1 + 89))
  {
    return (*a1 + 8187);
  }

  v3 = ((*(a1 + 88) >> 5) | (8 * ((*(a1 + 72) >> 58) & 0x3F | (((*(a1 + 88) >> 1) & 0xF) << 6)))) ^ 0x1FFF;
  if (v3 >> 1 >= 0xFFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D1599FC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFA)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 8187;
    if (a3 >= 0x1FFB)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFB)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0x3FF;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 72) = v3 << 58;
      *(result + 80) = 0;
      *(result + 88) = ((v3 - (a2 << 10)) >> 5) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1D159A064(uint64_t result, char a2)
{
  v2 = *(result + 88) & 1 | (32 * a2);
  *(result + 72) &= 0x3FFFFFFFFFFFFFFuLL;
  *(result + 88) = v2;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.PointLabelConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFF && *(a1 + 11))
  {
    return (*a1 + 0x1FFF);
  }

  v3 = ((*(a1 + 10) >> 7) | (2 * ((*(a1 + 8) >> 10) & 0x38 | (*(a1 + 8) >> 5) & 0x3F | (((*(a1 + 10) >> 1) & 0x3F) << 6)))) ^ 0x1FFF;
  if (v3 >> 1 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D159A128(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x7F;
  *result = v2;
  return result;
}

uint64_t sub_1D159A144(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 2) << 16)) & 0x11F1F | (a2 << 23);
  *result = v3 & 0x1F1F;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.PointLabelMinMaxConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.PointLabelMinMaxConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.PointLabelAllPointsConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 65305 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65305 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65305;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65305;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65305;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x19)
  {
    v7 = 25;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 26;
  if (v6 < 0x19)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for DiagramConfiguration.PointLabelAllPointsConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65305 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65305 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 16) + 1;
    *result = a2 - 231;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy39_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D159A3D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 39))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 3);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D159A414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 39) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 39) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D159A474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D159A4BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy19_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.AxisOnly(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 18);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.AxisOnly(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D159A5EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 27))
  {
    return (*a1 + 8190);
  }

  v3 = *(a1 + 26);
  v4 = (*(a1 + 24) >> 10) & 0x38 | (*(a1 + 24) >> 5) & 0x3F | (((v3 >> 1) & 0x3F) << 6);
  v5 = 8190 - ((v3 >> 7) | (2 * v4));
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D159A660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = ((a2 ^ 0x1FFF) << 9) & 0xE000 | (32 * (((a2 ^ 0x1FFF) >> 1) & 7));
      *(result + 26) = ((((a2 ^ 0x1FFF) << 23) | ((a2 ^ 0x1FFF) << 10)) & 0xFE0000) >> 16;
    }
  }

  return result;
}

uint64_t sub_1D159A714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 89))
  {
    return (*a1 + 8190);
  }

  v3 = *(a1 + 18);
  v4 = (*(a1 + 16) >> 10) & 0x38 | (*(a1 + 16) >> 5) & 0x3F | (((v3 >> 1) & 0x3F) << 6);
  v5 = 8190 - ((v3 >> 7) | (2 * v4));
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D159A788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((a2 ^ 0x1FFF) << 9) & 0xE000 | (32 * (((a2 ^ 0x1FFF) >> 1) & 7));
      *(result + 18) = ((((a2 ^ 0x1FFF) << 23) | ((a2 ^ 0x1FFF) << 10)) & 0xFE0000) >> 16;
    }
  }

  return result;
}

uint64_t sub_1D159A84C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDE && a1[41])
  {
    return (*a1 + 222);
  }

  v3 = *a1;
  v4 = v3 >= 0x23;
  v5 = v3 - 35;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D159A890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xDD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 222;
    if (a3 >= 0xDE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xDE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 34;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.HeartRateRecovery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 4))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.HeartRateRecovery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 5;
    }
  }

  return result;
}

void *__swift_memcpy14_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.Axis(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 14))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.AxisProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.AxisType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.ValueFormatter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.ValueFormatter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D159ACB4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D159ACD0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D159AD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D159AEB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D159AF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D159B034()
{
  result = qword_1EC631650;
  if (!qword_1EC631650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631650);
  }

  return result;
}

unint64_t sub_1D159B08C()
{
  result = qword_1EC631658;
  if (!qword_1EC631658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631658);
  }

  return result;
}

unint64_t sub_1D159B0E4()
{
  result = qword_1EC631660;
  if (!qword_1EC631660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631660);
  }

  return result;
}

unint64_t sub_1D159B13C()
{
  result = qword_1EC631668;
  if (!qword_1EC631668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631668);
  }

  return result;
}

unint64_t sub_1D159B194()
{
  result = qword_1EC631670;
  if (!qword_1EC631670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631670);
  }

  return result;
}

unint64_t sub_1D159B1EC()
{
  result = qword_1EC631678;
  if (!qword_1EC631678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631678);
  }

  return result;
}

unint64_t sub_1D159B244()
{
  result = qword_1EC631680;
  if (!qword_1EC631680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631680);
  }

  return result;
}

unint64_t sub_1D159B29C()
{
  result = qword_1EC631688;
  if (!qword_1EC631688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631688);
  }

  return result;
}

unint64_t sub_1D159B2F4()
{
  result = qword_1EC631690;
  if (!qword_1EC631690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631690);
  }

  return result;
}

unint64_t sub_1D159B34C()
{
  result = qword_1EC631698;
  if (!qword_1EC631698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631698);
  }

  return result;
}

unint64_t sub_1D159B3A4()
{
  result = qword_1EC6316A0;
  if (!qword_1EC6316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316A0);
  }

  return result;
}

unint64_t sub_1D159B3FC()
{
  result = qword_1EC6316A8;
  if (!qword_1EC6316A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316A8);
  }

  return result;
}

unint64_t sub_1D159B454()
{
  result = qword_1EC6316B0;
  if (!qword_1EC6316B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316B0);
  }

  return result;
}

unint64_t sub_1D159B4AC()
{
  result = qword_1EC6316B8;
  if (!qword_1EC6316B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316B8);
  }

  return result;
}

unint64_t sub_1D159B504()
{
  result = qword_1EC6316C0;
  if (!qword_1EC6316C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316C0);
  }

  return result;
}

unint64_t sub_1D159B55C()
{
  result = qword_1EC6316C8;
  if (!qword_1EC6316C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316C8);
  }

  return result;
}

unint64_t sub_1D159B5B4()
{
  result = qword_1EC6316D0;
  if (!qword_1EC6316D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316D0);
  }

  return result;
}

unint64_t sub_1D159B60C()
{
  result = qword_1EC6316D8;
  if (!qword_1EC6316D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316D8);
  }

  return result;
}

unint64_t sub_1D159B664()
{
  result = qword_1EC6316E0;
  if (!qword_1EC6316E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316E0);
  }

  return result;
}

unint64_t sub_1D159B6BC()
{
  result = qword_1EC6316E8;
  if (!qword_1EC6316E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316E8);
  }

  return result;
}

unint64_t sub_1D159B714()
{
  result = qword_1EE05B148;
  if (!qword_1EE05B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B148);
  }

  return result;
}

unint64_t sub_1D159B76C()
{
  result = qword_1EE05B150;
  if (!qword_1EE05B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B150);
  }

  return result;
}

unint64_t sub_1D159B7C4()
{
  result = qword_1EC6316F0;
  if (!qword_1EC6316F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316F0);
  }

  return result;
}

unint64_t sub_1D159B81C()
{
  result = qword_1EC6316F8;
  if (!qword_1EC6316F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6316F8);
  }

  return result;
}

unint64_t sub_1D159B874()
{
  result = qword_1EC631700;
  if (!qword_1EC631700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631700);
  }

  return result;
}

unint64_t sub_1D159B8CC()
{
  result = qword_1EC631708;
  if (!qword_1EC631708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631708);
  }

  return result;
}

unint64_t sub_1D159B924()
{
  result = qword_1EE05B4B8;
  if (!qword_1EE05B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4B8);
  }

  return result;
}

unint64_t sub_1D159B97C()
{
  result = qword_1EE05B4C0;
  if (!qword_1EE05B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4C0);
  }

  return result;
}

unint64_t sub_1D159B9D4()
{
  result = qword_1EC631710;
  if (!qword_1EC631710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631710);
  }

  return result;
}

unint64_t sub_1D159BA2C()
{
  result = qword_1EC631718;
  if (!qword_1EC631718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631718);
  }

  return result;
}

unint64_t sub_1D159BA84()
{
  result = qword_1EC631720;
  if (!qword_1EC631720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631720);
  }

  return result;
}

unint64_t sub_1D159BADC()
{
  result = qword_1EC631728;
  if (!qword_1EC631728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631728);
  }

  return result;
}

unint64_t sub_1D159BB34()
{
  result = qword_1EE05B178;
  if (!qword_1EE05B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B178);
  }

  return result;
}

unint64_t sub_1D159BB8C()
{
  result = qword_1EE05B180;
  if (!qword_1EE05B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B180);
  }

  return result;
}

unint64_t sub_1D159BBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D159DC48();
    v3 = sub_1D15A4968();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D145892C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D159BCCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D159DCD4(0, &qword_1EE05ACB8);
    v3 = sub_1D15A4968();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D14800A4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D159BDE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D159DCD4(0, &qword_1EC631740);
    v3 = sub_1D15A4968();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D159DB70(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1D14800A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D1458AC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D159BEFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D159DB08(0, &qword_1EE05ACC0, sub_1D144D7AC);
    v3 = sub_1D15A4968();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 40);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_1D1451D94(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v13 = (v3[7] + 40 * result);
      *v13 = v6;
      v13[1] = v7;
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D159C040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D1482890();
    v3 = sub_1D15A4968();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D14801E4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D159C12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D159DB08(0, &qword_1EE056498, sub_1D1482AD8);
    v3 = sub_1D15A4968();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 32);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1D147FF58(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D159C254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74704F6C6562616CLL && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7474416C6562616CLL && a2 == 0xEF73657475626972 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74744165756C6176 && a2 == 0xEF73657475626972 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001D15C28B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D159C3D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F43706F74 && a2 == 0xE800000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F436D6F74746F62 && a2 == 0xEB00000000726F6CLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x695372656E726F63 && a2 == 0xEA0000000000657ALL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEE00726F6C6F4374 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E694C73697861 && a2 == 0xED0000726F6C6F43 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2920 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D15C2940 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D15C2960 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7478655473697861 && a2 == 0xE800000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x756C615665736162 && a2 == 0xE900000000000065 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E49726574756FLL && a2 == 0xEB00000000737465)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D159C81C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936291937 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C2980 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15C29A0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15C29C0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C29E0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D15C2A00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D159CA1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F7250656E696CLL && a2 == 0xEE00736569747265;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F4665756C6176 && a2 == 0xEE0072657474616DLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E49726574756FLL && a2 == 0xEB00000000737465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D159CB94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74646957656E696CLL && a2 == 0xE900000000000068;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F43656E696CLL && a2 == 0xE900000000000072 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2A20 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696F50656E696CLL && a2 == 0xEF73756964615274 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15C2A40 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D15C2960 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2920 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2A60 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D15C2940 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C2A80 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x62614C746E696F70 && a2 == 0xEB00000000736C65)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D159CF20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646957726162 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43746E65746E6F63 && a2 == 0xEC000000726F6C6FLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEE00726F6C6F4374 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2920 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D15C2940 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D15C2960 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C2A80 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x62614C746E696F70 && a2 == 0xEB00000000736C65 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEE007374696D694CLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736E49726574756FLL && a2 == 0xEB00000000737465 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726F4665756C6176 && a2 == 0xEE0072657474616DLL)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D159D358(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D15C2AA0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C2AC0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D694C776F6CLL && a2 == 0xE800000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696D694C68676968 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D159D4D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F43746E696F70 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646152746E696F70 && a2 == 0xEB00000000737569 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C6574756E696DLL && a2 == 0xEF726F6C6F43656ELL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694C6574756E696DLL && a2 == 0xEF6874646957656ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D159D654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795473697861 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C2AE0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F436C6562616CLL && a2 == 0xEA0000000000726FLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E694C64697267 && a2 == 0xED0000726F6C6F43 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E694C64697267 && a2 == 0xED00006874646957 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636954726F6A616DLL && a2 == 0xEF6874676E654C6BLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x636954726F6E696DLL && a2 == 0xEF6874676E654C6BLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

unint64_t sub_1D159D8C4()
{
  result = qword_1EC631730;
  if (!qword_1EC631730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631730);
  }

  return result;
}

unint64_t sub_1D159D918()
{
  result = qword_1EE05B500;
  if (!qword_1EE05B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B500);
  }

  return result;
}

unint64_t sub_1D159D96C()
{
  result = qword_1EE05B0F0;
  if (!qword_1EE05B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B0F0);
  }

  return result;
}

unint64_t sub_1D159D9C0()
{
  result = qword_1EE05B108;
  if (!qword_1EE05B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B108);
  }

  return result;
}

unint64_t sub_1D159DA14()
{
  result = qword_1EE05B488;
  if (!qword_1EE05B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B488);
  }

  return result;
}

uint64_t sub_1D159DA68(uint64_t a1)
{
  sub_1D159DBF0(0, &qword_1EC631738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D159DB08(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D15A4978();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D159DB70(uint64_t a1, uint64_t a2)
{
  sub_1D159DBF0(0, &qword_1EC631748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D159DBF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D159DC48()
{
  if (!qword_1EE05ACB0)
  {
    type metadata accessor for Key(255);
    sub_1D1453BA0(255, &qword_1EE05ACD0);
    sub_1D14587E0();
    v0 = sub_1D15A4978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ACB0);
    }
  }
}

void sub_1D159DCD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D15A4978();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t CoreChartTrendBarSeries.init(dataViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D159E4E8(a1, a2, type metadata accessor for CoreChartTrendViewModel);
  v4 = *(a1 + 16);
  sub_1D1474E30(a1);
  v5 = *(type metadata accessor for CoreChartTrendBarSeries() + 20);
  v6 = sub_1D15A2838();
  v7 = *(*(v6 - 8) + 104);
  if ((v4 - 2) > 3u)
  {
    v8 = MEMORY[0x1E6969A48];
  }

  else
  {
    v8 = qword_1E83E6E10[(v4 - 2)];
  }

  v9 = *v8;

  return v7(a2 + v5, v9, v6);
}

uint64_t type metadata accessor for CoreChartTrendBarSeries()
{
  result = qword_1EE058AB0;
  if (!qword_1EE058AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CoreChartTrendBarSeries.barSeries.getter()
{
  v1 = type metadata accessor for CoreChartTrendBarSeries();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v8[5] = *(v0 + *(type metadata accessor for CoreChartTrendViewModel(0) + 36));
  sub_1D159E4E8(v0, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoreChartTrendBarSeries);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1D159E550(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_1D1559818(0, &qword_1EE056840, type metadata accessor for CoreChartTrendDataElement, MEMORY[0x1E69E62F8]);
  sub_1D15A26A8();
  sub_1D14EF408();
  sub_1D1475AD8();
  v6 = sub_1D15A3538();

  v8[1] = v6;
  v8[2] = MEMORY[0x1E69815C0];
  v8[3] = MEMORY[0x1E695B228];
  v8[4] = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1D15597A8(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement);
  return sub_1D15A3D28();
}

uint64_t sub_1D159E0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a2;
  v17 = a1;
  v19 = a3;
  sub_1D1476D98();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1559818(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  sub_1D1476E54();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D15A3538();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  v16[1] = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D15A38B8();
  type metadata accessor for CoreChartTrendBarSeries();
  v13 = sub_1D15A2848();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = v17;
  sub_1D15A33F8();

  sub_1D1476EB4(v7);
  sub_1D15A38B8();
  v20 = *(v14 + *(type metadata accessor for CoreChartTrendDataElement(0) + 20));
  sub_1D15A3408();

  sub_1D15A26A8();
  sub_1D15A3528();
  if (qword_1EE058CB0 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE068218;
  sub_1D15A3328();
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D159E4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D159E550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreChartTrendBarSeries();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D159E5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CoreChartTrendBarSeries() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D159E0C8(a1, v6, a2);
}

uint64_t sub_1D159E65C()
{

  sub_1D15A2D38();
}

uint64_t sub_1D159E6CC()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D159E71C()
{
  v1 = qword_1EE057800;
  v2 = *&v0[qword_1EE057800];
  if (v2)
  {
    v3 = *&v0[qword_1EE057800];
  }

  else
  {
    v4 = sub_1D159E780(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D159E780(char *a1)
{
  v2 = sub_1D15A23A8();
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = objc_opt_self();
  v13 = &a1[qword_1EE068178];
  sub_1D15A2288();
  v14 = sub_1D15A2618();
  v15 = *(v6 + 8);
  v15(v11, v5);
  sub_1D15A2258();
  v16 = sub_1D15A2618();
  v48 = v6 + 8;
  v49 = v5;
  v45 = v15;
  v15(v11, v5);
  v17 = [v12 predicateForSamplesWithStartDate:v14 endDate:v16 options:0];

  v18 = a1;
  v19 = *&a1[qword_1EE057810];
  Configuration = type metadata accessor for ValueHistogramCollectionQueryConfiguration();
  v51 = v13[*(Configuration + 20)];
  v21 = v8;
  AnchorDate.date.getter();
  v22 = v13[*(Configuration + 24)];
  v43 = v19;
  if (v22 <= 1)
  {
    if (v22)
    {
      if (qword_1EE05B410 != -1)
      {
        swift_once();
      }

      v23 = qword_1EE05B418;
    }

    else
    {
      if (qword_1EE059550 != -1)
      {
        swift_once();
      }

      v23 = qword_1EE059558;
    }
  }

  else if (v22 == 2)
  {
    if (qword_1EE059530 != -1)
    {
      swift_once();
    }

    v23 = qword_1EE059538;
  }

  else if (v22 == 3)
  {
    if (qword_1EE0594F0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EE0594F8;
  }

  else
  {
    if (qword_1EE059510 != -1)
    {
      swift_once();
    }

    v23 = qword_1EE059518;
  }

  v24 = v46;
  v25 = __swift_project_value_buffer(v46, v23);
  v26 = v47;
  v27 = v44;
  (*(v47 + 16))(v44, v25, v24);
  v28 = swift_allocObject();
  v40 = v18;
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(MEMORY[0x1E696C580]);

  v29 = v17;
  v42 = v21;
  v30 = sub_1D15A2618();
  v31 = sub_1D15A22F8();
  sub_1D1453BA0(0, &qword_1EE056740);
  v32 = sub_1D15A40A8();
  aBlock[4] = sub_1D15A03B4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D14E2280;
  aBlock[3] = &block_descriptor_20;
  v33 = _Block_copy(aBlock);
  v34 = [v41 initWithQuantityType:v43 quantitySamplePredicate:v29 anchorDate:v30 intervalComponents:v31 quantityRanges:v32 resultsHandler:v33];
  _Block_release(v33);

  (*(v26 + 8))(v27, v24);
  v45(v42, v49);

  v35 = v34;
  v36 = v40;
  v37 = [v40 name];
  [v35 setDebugIdentifier_];

  [v35 setQualityOfService_];
  return v35;
}

void sub_1D159ED2C(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D159FA10(a2, a3);
  }
}

uint64_t sub_1D159ED9C@<X0>(uint64_t a1@<X8>)
{
  sub_1D15A02B0(0, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  v9 = qword_1EE0577F8;
  swift_beginAccess();
  sub_1D1548F2C(v1 + v9, v8);
  v10 = sub_1D15A31D8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D15A031C(v8);
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE05B398;
  v13 = v1;
  sub_1D15A31C8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D1548FC0(v5, v1 + v9);
  return swift_endAccess();
}

id ValueHistogramCollectionQueryOperation.__allocating_init(quantityType:configuration:name:queryQualityOfService:healthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v6);
  v14 = qword_1EE057808;
  sub_1D1487B04();
  v15 = swift_allocError();
  *v16 = 0;
  v26 = v15;
  LOBYTE(v27) = 1;
  sub_1D15A02B0(0, &qword_1EE0593E0, sub_1D159F3FC, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v13[v14] = sub_1D15A2D68();
  *&v13[qword_1EE057800] = 0;
  v17 = qword_1EE0577F8;
  v18 = sub_1D15A31D8();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  *&v13[qword_1EE057810] = a1;
  sub_1D159F48C(a2, &v13[qword_1EE068178]);
  *&v13[qword_1EE068170] = a5;
  *&v13[qword_1EE068180] = a6;
  v25.receiver = v13;
  v25.super_class = v7;
  v19 = a1;
  v20 = a6;
  v21 = objc_msgSendSuper2(&v25, sel_init);
  v22 = v21;
  if (a4)
  {
    v23 = sub_1D15A3EF8();
  }

  else
  {
    v23 = 0;
  }

  [v21 setName_];

  sub_1D159F4F0(a2);
  return v21;
}

id ValueHistogramCollectionQueryOperation.init(quantityType:configuration:name:queryQualityOfService:healthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = qword_1EE057808;
  sub_1D1487B04();
  v14 = swift_allocError();
  *v15 = 0;
  v25 = v14;
  LOBYTE(v26) = 1;
  sub_1D15A02B0(0, &qword_1EE0593E0, sub_1D159F3FC, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v6[v13] = sub_1D15A2D68();
  *&v6[qword_1EE057800] = 0;
  v16 = qword_1EE0577F8;
  v17 = sub_1D15A31D8();
  (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
  *&v7[qword_1EE057810] = a1;
  sub_1D159F48C(a2, &v7[qword_1EE068178]);
  *&v7[qword_1EE068170] = a5;
  *&v7[qword_1EE068180] = a6;
  v24.receiver = v7;
  v24.super_class = type metadata accessor for ValueHistogramCollectionQueryOperation();
  v18 = a1;
  v19 = a6;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  v21 = v20;
  if (a4)
  {
    v22 = sub_1D15A3EF8();
  }

  else
  {
    v22 = 0;
  }

  [v20 setName_];

  sub_1D159F4F0(a2);
  return v20;
}

void sub_1D159F3FC()
{
  if (!qword_1EE056220)
  {
    sub_1D1453BA0(255, &qword_1EE056698);
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056220);
    }
  }
}

uint64_t sub_1D159F48C(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for ValueHistogramCollectionQueryConfiguration();
  (*(*(Configuration - 8) + 16))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1D159F4F0(uint64_t a1)
{
  Configuration = type metadata accessor for ValueHistogramCollectionQueryConfiguration();
  (*(*(Configuration - 8) + 8))(a1, Configuration);
  return a1;
}

uint64_t type metadata accessor for ValueHistogramCollectionQueryOperation()
{
  result = qword_1EE0577E8;
  if (!qword_1EE0577E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D159F598()
{
  v1 = v0;
  v2 = sub_1D15A31D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1487B04();
  v6 = swift_allocError();
  *v7 = 2;
  v26 = v6;
  v27 = 1;

  sub_1D15A2D38();

  v8 = *&v0[qword_1EE057810];
  v9 = [v8 identifier];
  v10 = sub_1D15A3F38();
  v12 = v11;

  v13._countAndFlagsBits = 0x676E696E6E7572;
  v13._object = 0xE700000000000000;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v13, v14);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE05B398;
  v16 = v1;
  sub_1D15A31C8();
  sub_1D15A4478();
  sub_1D1487C24();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D15ACDD0;
  v18 = [v8 identifier];
  v19 = sub_1D15A3F38();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D1487C8C();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1D15A31A8();

  v22 = *&v16[qword_1EE068180];
  v23 = sub_1D159E71C();
  [v22 executeQuery_];

  return (*(v3 + 8))(v5, v2);
}

void sub_1D159F88C(void *a1)
{
  v1 = a1;
  sub_1D159F598();
}

void sub_1D159F8D4()
{
  if ([v0 isCancelled])
  {
    v1._countAndFlagsBits = 0x656C6C65636E6163;
    v1._object = 0xE900000000000064;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v1, v2);
    sub_1D1487B04();
    v3 = swift_allocError();
    *v4 = 3;
    MEMORY[0x1EEE9AC00](v3);

    sub_1D15A2D38();
  }

  v5 = *&v0[qword_1EE068180];
  v6 = sub_1D159E71C();
  [v5 stopQuery_];
}

void sub_1D159FA10(void *a1, unint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = sub_1D15A31D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = DateInterval.stringWithISO8601Format()();
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D159ED9C(v8);
  sub_1D1487C24();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D15ACDD0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D1487C8C();
  *(v10 + 32) = v9;
  sub_1D15A31A8();

  (*(v6 + 8))(v8, v5);
  if ([v3 isCancelled] & 1) != 0 || (v11 = objc_msgSend(v3, sel_isFinished), (v11))
  {
    v12._object = 0x80000001D15BDC90;
    v12._countAndFlagsBits = 0xD00000000000002DLL;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v12, v13);
  }

  else
  {
    v14 = a1;
    if (!a1)
    {
      v15 = v27;
      if (v27)
      {
        v16 = 0xD00000000000002DLL;
      }

      else
      {
        v16 = 0;
      }

      if (v27)
      {
        v17 = 0x80000001D15C2C80;
      }

      else
      {
        v17 = 0;
      }

      if (v27)
      {
        v18 = v27 | 0x8000000000000000;
      }

      else
      {
        v18 = 0xC000000000000000;
      }

      v26 = sub_1D1487F34();
      v19 = swift_allocError();
      *v20 = v16;
      v20[1] = v17;
      v20[2] = v18;
      swift_getErrorValue();
      v21 = v15;
      sub_1D1487F88(v16, v17, v18);
      v22._countAndFlagsBits = sub_1D15A4C08();
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      NSOperation.logErrorString(_:withInfo:)(v22, v23);

      v14 = swift_allocError();
      *v24 = v16;
      v24[1] = v17;
      v24[2] = v18;
      v11 = v14;
    }

    MEMORY[0x1EEE9AC00](v11);
    v25 = a1;
    sub_1D15A2DA8();
    sub_1D14A8208(v14);
    sub_1D14A8208(v14);
  }
}

uint64_t sub_1D159FDA4(uint64_t a1)
{

  sub_1D15A2D38();

  v2 = [*(a1 + qword_1EE057810) identifier];
  v3 = sub_1D15A3F38();
  v5 = v4;

  v6._countAndFlagsBits = 0x64656873696E6966;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v6, v7);
}

id ValueHistogramCollectionQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D159FF0C()
{

  sub_1D159F4F0(v0 + qword_1EE068178);
  v1 = v0 + qword_1EE0577F8;

  return sub_1D15A031C(v1);
}

id ValueHistogramCollectionQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ValueHistogramCollectionQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D159FFC4(uint64_t a1)
{

  sub_1D159F4F0(a1 + qword_1EE068178);
  v2 = a1 + qword_1EE0577F8;

  return sub_1D15A031C(v2);
}

uint64_t sub_1D15A0050@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + class metadata base offset for ValueHistogramCollectionQueryOperation + 80))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_1D15A00D0()
{
  type metadata accessor for ValueHistogramCollectionQueryConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1D15A02B0(319, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1D15A02B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D15A031C(uint64_t a1)
{
  sub_1D15A02B0(0, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy.init(intervalMatchDateComponents:intervalDownsampleFactor:enumerationAlgorithm:useMajorTicksOnly:labelDateFormatter:boundsLabelDateFormatter:prefersRelativeDateFormatting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, void *a5@<X4>, id a6@<X5>, char a7@<W6>, _BYTE *a8@<X8>)
{
  v15 = *a3;
  v16 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  v17 = v16[5];
  v18 = sub_1D15A23A8();
  result = (*(*(v18 - 8) + 32))(&a8[v17], a1, v18);
  *&a8[v16[6]] = a2;
  a8[v16[7]] = a4;
  *&a8[v16[8]] = a5;
  if (!a6)
  {
    result = a5;
    a6 = result;
  }

  *&a8[v16[9]] = a6;
  *a8 = v15;
  a8[v16[10]] = a7 & 1;
  return result;
}

uint64_t DiagramDateAxisMetricsCalculator.init(boundsLabelsShouldShowDaySpan:customLabelDateFormatter:)(char a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DiagramDateAxisMetricsCalculator.__allocating_init(boundsLabelsShouldShowDaySpan:customLabelDateFormatter:)(char a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_1D15A051C(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v44 = a1;
  v5 = sub_1D15A22A8();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D15A26A8();
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  sub_1D14564BC(0, &qword_1EE059690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15AEBB0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1D14A78B4(0, 2, 0);
  v18 = v50;
  sub_1D15A2538();
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_1D14A78B4(v19 > 1, v20 + 1, 1);
    v18 = v50;
  }

  *(v18 + 16) = v20 + 1;
  v47 = v7;
  v23 = *(v7 + 32);
  v21 = v7 + 32;
  v22 = v23;
  v24 = (*(v21 + 48) + 32) & ~*(v21 + 48);
  v25 = *(v21 + 40);
  v23(v18 + v24 + v25 * v20, v16, v49);

  sub_1D15A2538();
  v50 = v18;
  v27 = *(v18 + 16);
  v26 = *(v18 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_1D14A78B4(v26 > 1, v27 + 1, 1);
    v18 = v50;
  }

  *(v18 + 16) = v27 + 1;
  v28 = v18 + v24 + v27 * v25;
  v29 = v49;
  v22(v28, v13, v49);
  v30 = *(v18 + 16);
  if (!v30)
  {
    __break(1u);
    goto LABEL_13;
  }

  v31 = *(v47 + 16);
  v31(v48, v18 + v24, v29);
  if (v30 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31(v45, v18 + v24 + v25, v29);
  v32 = v46;
  sub_1D15A2268();
  v33 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
  if (!v33)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v34 = v33;

  v35 = sub_1D15A2228();
  v36 = [v34 stringFromDateInterval_];

  if (v36)
  {
    v37 = sub_1D15A3F38();
    v39 = v38;

    sub_1D14564BC(0, &qword_1EE0596A0);
    v36 = swift_allocObject();
    *(v36 + 1) = xmmword_1D15ACDD0;
    *(v36 + 4) = v37;
    *(v36 + 5) = v39;
    *(v36 + 6) = a2;
    *(v36 + 7) = 1;
    *(v36 + 16) = 1144750080;

    (*(v42 + 8))(v32, v43);
  }

  else
  {
    (*(v42 + 8))(v32, v43);

    a2 = 0.0;
    a3 = 0.0;
  }

  v40 = v44;
  *v44 = v36;
  v40[1] = a2;
  v40[2] = a3;
}

uint64_t DiagramDateAxisMetricsCalculator.IntervalEnumerationAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

id DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy.labelDateFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy() + 32));

  return v1;
}

size_t sub_1D15A0A78(double a1, double a2, double a3)
{
  v6 = sub_1D15A26A8();
  v7 = *(v6 - 8);
  v8 = (MEMORY[0x1EEE9AC00])(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - v11;
  v13 = sub_1D15A1930(a1, a2, a3);
  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1D14A78B4(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    goto LABEL_31;
  }

  v32 = v6;
  v15 = v33;
  v16 = 0;
  v17 = 0;
  if (v13)
  {
    v31[2] = v7 + 32;
    v18 = a1;
    do
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        if (v16 & 1 | (v18 != a2))
        {
          goto LABEL_29;
        }

        v16 = 1;
        v20 = v18;
      }

      else
      {
        v21 = __OFADD__(v17++, 1);
        if (v21)
        {
          goto LABEL_30;
        }

        v20 = a1 + v17 * a3;
      }

      sub_1D15A2538();
      v33 = v15;
      v22 = v10;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D14A78B4(v23 > 1, v24 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v24 + 1;
      result = (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v22, v32);
      v25 = v20;
      v18 = v20;
      --v13;
      v10 = v22;
    }

    while (v13);
  }

  else
  {
    v25 = a1;
  }

  v26 = v32;
  while (1)
  {
    v27 = v25 <= a2;
    if (a3 > 0.0)
    {
      v27 = v25 >= a2;
    }

    if (!v27)
    {
      break;
    }

    if ((v25 != a2) | v16 & 1)
    {
      return v15;
    }

    v16 = 1;
    v28 = v25;
LABEL_24:
    sub_1D15A2538();
    v33 = v15;
    v30 = *(v15 + 16);
    v29 = *(v15 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D14A78B4(v29 > 1, v30 + 1, 1);
      v15 = v33;
    }

    *(v15 + 16) = v30 + 1;
    result = (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v12, v26);
    v25 = v28;
  }

  v21 = __OFADD__(v17++, 1);
  if (!v21)
  {
    v28 = a1 + v17 * a3;
    goto LABEL_24;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_1D15A0D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1D145482C(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  sub_1D145482C(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1D15A23A8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2818();
  v21 = sub_1D15A2848();
  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  v22 = sub_1D15A2898();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_1D15A2378();
  result = HKDateFormatterFromTemplate();
  if (result)
  {
    v24 = result;
    (*(v15 + 32))(&v20[v18[5]], v17, v14);
    *&v20[v18[6]] = 1;
    v20[v18[7]] = 1;
    *&v20[v18[8]] = v24;
    *&v20[v18[9]] = v24;
    *v20 = 1;
    v20[v18[10]] = 0;
    v25 = v24;
    sub_1D14548E4(a1, v20, a2, a3, a4);
    return sub_1D1455FB8(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D15A1128(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D151DF58(v7);
      v7 = result;
    }

    v88 = (v7 + 16);
    v89 = *(v7 + 16);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = (v7 + 16 * v89);
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1D15A1704((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_114;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_115;
        }

        *v90 = v91;
        v90[1] = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_116;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v95 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 16);
      v10 = 40 * v8;
      v11 = *a3 + 40 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[5];
        v14 += 5;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 40 * v6 - 40;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v28 + v10);
            v21 = *(v28 + v10 + 16);
            v22 = (v28 + v17);
            v23 = *(v20 + 3);
            v24 = *(v20 + 8);
            v25 = *v20;
            v26 = *(v22 + 4);
            v27 = v22[1];
            *v20 = *v22;
            v20[1] = v27;
            *(v20 + 4) = v26;
            *v22 = v25;
            *(v22 + 2) = v21;
            *(v22 + 3) = v23;
            *(v22 + 8) = v24;
          }

          ++v19;
          v17 -= 40;
          v10 += 40;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D148B89C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v41 = *(v7 + 16);
    v40 = *(v7 + 24);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1D148B89C((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v42;
    v43 = v7 + 32;
    v44 = (v7 + 32 + 16 * v41);
    *v44 = v8;
    v44[1] = v6;
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v7 + 32);
          v47 = *(v7 + 40);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = (v7 + 16 * v42);
          v64 = *v62;
          v63 = v62[1];
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = (v43 + 16 * v45);
          v70 = *v68;
          v69 = v68[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v72 = (v7 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_72:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = (v43 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_110;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v83 = (v43 + 16 * (v45 - 1));
        v84 = *v83;
        v85 = (v43 + 16 * v45);
        v86 = v85[1];
        sub_1D15A1704((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v97);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_99;
        }

        if (v45 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *(v7 + 16);
        if (v45 >= v87)
        {
          goto LABEL_101;
        }

        v42 = v87 - 1;
        result = memmove((v43 + 16 * v45), v85 + 2, 16 * (v87 - 1 - v45));
        *(v7 + 16) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_3;
        }
      }

      v50 = v43 + 16 * v42;
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = (v7 + 16 * v42);
      v59 = *v57;
      v58 = v57[1];
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = (v43 + 16 * v45);
        v81 = *v79;
        v80 = v79[1];
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v95;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 56);
    if (v34 >= *(v33 + 16))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v33 + 64);
    v36 = *(v33 + 40);
    v37 = *(v33 + 16);
    *(v33 + 40) = *v33;
    v38 = *(v33 + 72);
    *(v33 + 56) = v37;
    *(v33 + 72) = *(v33 + 32);
    *v33 = v36;
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 32) = v38;
    v33 -= 40;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D15A1704(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 5 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 5;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 5;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    v7[4] = v14[4];
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 5 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v19 = (v5 + 40);
      if (*(v13 - 3) < *(v6 - 3))
      {
        v23 = v6 - 5;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 5, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 5;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 3);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 5;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 5 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 8);
  }

  return 1;
}

uint64_t sub_1D15A1930(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1D15A19A4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  if (a1 > a3)
  {
    sub_1D15A3218();
    v14 = sub_1D15A3248();
    v15 = sub_1D15A4338();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D1446000, v14, v15, "DiagramDateAxisMetricsCalculator asked to compute tick interval for a duration below the lower bound. Returning the smallest configured tick interval.", v16, 2u);
      MEMORY[0x1D388BF00](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return;
  }

  v17 = floor(a3 / a1);
  if (v17 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = ceil(a3 / a2);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v17;
  v20 = v18;
  if (v17 < v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v21 = qword_1F4D3A1A8;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11.i64[0] = v21;
    v23.i64[0] = vdupq_laneq_s64(xmmword_1F4D3A1D0, 1).u64[0];
    v23.i64[1] = unk_1F4D3A1E0;
    v24 = vdupq_n_s64(v20);
    v11 = vceqq_s64(vzip1q_s64(v11, xmmword_1F4D3A1B0), v24);
    if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(v11, vceqq_s64(vextq_s8(xmmword_1F4D3A1B0, xmmword_1F4D3A1C0, 8uLL), v24)), vuzp1q_s32(vceqq_s64(vzip1q_s64(vdupq_laneq_s64(xmmword_1F4D3A1C0, 1), xmmword_1F4D3A1D0), v24), vceqq_s64(v23, v24))))))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D14A7874(0, *(v22 + 16) + 1, 1);
        v22 = v35;
      }

      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D14A7874((v26 > 1), v27 + 1, 1);
        v22 = v35;
      }

      *(v22 + 16) = v27 + 1;
      *(v22 + 8 * v27 + 32) = v20;
      v21 = qword_1F4D3A1A8;
    }

    if (v19 == v20)
    {
      break;
    }

    if (__OFADD__(v20++, 1))
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  v29 = *(v22 + 16);
  if (v29)
  {
    v30 = floor(vcvtd_n_f64_u64(v29, 1uLL));
    if (v30 != INFINITY)
    {
      if (v30 > -9.22337204e18)
      {
        if (v30 < 9.22337204e18)
        {
          if ((v30 & 0x8000000000000000) == 0)
          {
            if (v29 > v30)
            {

              return;
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_1D15A3218();
  v31 = sub_1D15A3248();
  v32 = sub_1D15A4318();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349312;
    *(v33 + 4) = a3;
    *(v33 + 12) = 2050;
    *(v33 + 14) = v19;
    _os_log_impl(&dword_1D1446000, v31, v32, "DiagramDateAxisMetricsCalculator was unable to compute a desirable tick interval for provided duration (%{public}f). Returning interval upper tick interval (%{public}ld)", v33, 0x16u);
    MEMORY[0x1D388BF00](v33, -1, -1);
  }

  (*(v7 + 8))(v13, v6);
}

unint64_t sub_1D15A1E10()
{
  result = qword_1EC631758;
  if (!qword_1EC631758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631758);
  }

  return result;
}

void boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>()
{
  __assert_rtn("ibeta_series", "beta.hpp", 552, "(p_derivative == 0) || normalised");
}

{
  __assert_rtn("ibeta_series", "beta.hpp", 584, "*p_derivative >= 0");
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  MEMORY[0x1EEE63AD0](this);
}

{
  MEMORY[0x1EEE63AD8](this);
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  MEMORY[0x1EEE63B68](this);
}

{
  MEMORY[0x1EEE63B70](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}