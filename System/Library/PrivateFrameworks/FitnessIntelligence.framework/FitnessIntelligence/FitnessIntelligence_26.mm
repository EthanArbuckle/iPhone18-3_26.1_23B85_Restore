uint64_t CacheIndex.CacheIndexError.hashValue.getter()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t CacheIndex.add(days:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v52 = sub_1B4D1794C();
  v50 = *(v52 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  v54 = sub_1B4D1777C();
  v13 = *(v54 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v48 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v53 = v45 - v17;
  v59 = sub_1B4D175FC();
  v58 = *(v59 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v57 = v45 - v22;
  v23 = sub_1B4D1796C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v2;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v23, qword_1EDC3CE48);
  v55 = v24;
  v56 = v23;
  (*(v24 + 16))(v27, v29, v23);
  v30 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (!v30)
  {
    goto LABEL_8;
  }

  v47 = a2;
  v31 = v30;
  sub_1B4D1756C();

  (*(v58 + 32))(v57, v20, v59);
  sub_1B4D178FC();
  v32 = *(v13 + 48);
  v33 = v54;
  if (v32(v12, 1, v54) == 1)
  {
LABEL_7:
    (*(v58 + 8))(v57, v59);
    sub_1B497A590(v12);
LABEL_8:
    sub_1B4BD9F8C();
    swift_allocError();
    swift_willThrow();
    return (*(v55 + 8))(v27, v56);
  }

  v46 = v27;
  v45[0] = *(v13 + 32);
  v45[1] = v13 + 32;
  (v45[0])(v53, v12, v33);
  v35 = v49;
  v34 = v50;
  v36 = v52;
  (*(v50 + 104))(v49, *MEMORY[0x1E6969A48], v52);
  v27 = v46;
  sub_1B4D1790C();
  v37 = v54;
  (*(v34 + 8))(v35, v36);
  if (v32(v9, 1, v37) == 1)
  {
    (*(v13 + 8))(v53, v37);
    v12 = v9;
    goto LABEL_7;
  }

  v39 = v48;
  (v45[0])(v48, v9, v37);
  v40 = v37;
  v41 = sub_1B4D1771C();
  v42 = sub_1B4D178CC();
  v43 = _HKCacheIndexFromDate();

  v44 = *(v13 + 8);
  v44(v39, v40);
  v44(v53, v40);
  (*(v58 + 8))(v57, v59);
  result = (*(v55 + 8))(v27, v56);
  *v47 = v43;
  return result;
}

uint64_t *CacheIndex.days(until:)(uint64_t *a1)
{
  v4 = sub_1B4D175FC();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v16 = *a1;
  v33 = *v1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4D1796C();
  __swift_project_value_buffer(v17, qword_1EDC3CE48);
  v18 = &v33;
  CacheIndex.date(for:)(v15);
  if (!v2)
  {
    v33 = v16;
    CacheIndex.date(for:)(v12);
    v30 = 0;
    v29 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
    v19 = sub_1B4D1794C();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B4D1A800;
    (*(v20 + 104))(v23 + v22, *MEMORY[0x1E6969A48], v19);
    v28[1] = sub_1B49B56B4(v23);
    swift_setDeallocating();
    (*(v20 + 8))(v23 + v22, v19);
    swift_deallocClassInstance();
    sub_1B4D1787C();

    v24 = sub_1B4D1757C();
    if (v25)
    {
      sub_1B4BD9F8C();
      v18 = swift_allocError();
      swift_willThrow();
    }

    else
    {
      v18 = v24;
    }

    (*(v31 + 8))(v7, v32);
    v26 = *(v29 + 8);
    v26(v12, v8);
    v26(v15, v8);
  }

  return v18;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isEndOfMonth()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  v10 = *v0;
  v23 = *v0;
  CacheIndex.add(days:)(1, &v24);
  if (!v1)
  {
    v23 = v24;
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v12 = sub_1B4D1796C();
    __swift_project_value_buffer(v12, qword_1EDC3CE48);
    CacheIndex.dateComponents(for:)(v9);
    v24 = v10;
    CacheIndex.dateComponents(for:)(v6);
    v14 = sub_1B4D175AC();
    v22 = v15;
    v16 = sub_1B4D175AC();
    v18 = v17;
    v19 = *(v3 + 8);
    v19(v6, v2);
    v19(v9, v2);
    v20 = (v14 == v16) & ~v18;
    if (v22)
    {
      v20 = v18;
    }

    v11 = v20 ^ 1;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isEndOfTrimester()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4D1796C();
  __swift_project_value_buffer(v7, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v6);
  if (!v1)
  {
    v9 = sub_1B4D175AC();
    if (v10)
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    v11 = v9;
    v12 = sub_1B4D1757C();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    if (v14)
    {
      return 0;
    }

    if (v11 > 8)
    {
      if (v11 == 9)
      {
        return v12 == 30;
      }

      if (v11 != 12)
      {
        return 0;
      }
    }

    else if (v11 != 3)
    {
      v8 = v12 == 30;
      if (v11 != 6)
      {
        return 0;
      }

      return v8;
    }

    return v12 == 31;
  }

  return v8;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isEndOfWeek()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4D1796C();
  __swift_project_value_buffer(v7, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v6);
  if (!v1)
  {
    v9 = sub_1B4D175CC();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    v8 = (v9 == 1) & ~v11;
  }

  return v8 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isBeginningOfMonth()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4D1796C();
  __swift_project_value_buffer(v7, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v6);
  if (!v1)
  {
    v9 = sub_1B4D1757C();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    v8 = (v9 == 1) & ~v11;
  }

  return v8 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isBeginningOfYear()()
{
  v2 = sub_1B4D175FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4D1796C();
  __swift_project_value_buffer(v7, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v6);
  if (!v1)
  {
    v9 = sub_1B4D175AC();
    if (v10)
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    v11 = v9;
    v12 = sub_1B4D1757C();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    if (v14)
    {
      return 0;
    }

    v8 = v12 == 1;
    if (v11 != 1)
    {
      return 0;
    }
  }

  return v8;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CacheIndex.isBeginningOfWeek()()
{
  v2 = sub_1B4D1777C();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *v0;
  v24 = *v0;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D1796C();
  __swift_project_value_buffer(v13, qword_1EDC3CE48);
  v14 = &v24;
  CacheIndex.date(for:)(v8);
  if (!v1)
  {
    v22 = 0;
    v15 = sub_1B4D178CC();
    v16 = sub_1B4D1771C();
    v17 = v2;
    v18 = [v15 hk:v16 startOfFitnessWeekBeforeDate:?];

    sub_1B4D1775C();
    v19 = *(v23 + 8);
    v19(v8, v17);
    v24 = v12;
    v14 = &v24;
    v20 = v22;
    CacheIndex.date(for:)(v5);
    if (!v20)
    {
      LOBYTE(v14) = sub_1B4D1774C();
      v19(v5, v17);
    }

    v19(v11, v17);
  }

  return v14 & 1;
}

uint64_t CacheIndex.monthlyCacheIndexRange()@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v27 = *v1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4D1796C();
  v16 = __swift_project_value_buffer(v15, qword_1EDC3CE48);
  result = CacheIndex.date(for:)(v14);
  if (!v2)
  {
    v26 = a1;
    Date.beginningOfMonth()(v11);
    v18 = sub_1B4D1771C();
    v19 = sub_1B4D178CC();
    v25 = _HKCacheIndexFromDate();

    v20 = *(v5 + 8);
    v20(v11, v4);
    Date.endOfMonth(calendar:)(v16, v8);
    v21 = sub_1B4D1771C();
    v22 = sub_1B4D178CC();
    v23 = _HKCacheIndexFromDate();

    v20(v8, v4);
    result = (v20)(v14, v4);
    if (v23 < v25)
    {
      __break(1u);
    }

    else
    {
      v24 = v26;
      *v26 = v25;
      v24[1] = v23;
    }
  }

  return result;
}

uint64_t CacheIndex.allMonthlyCacheIndexRanges()()
{
  v3 = *v1;
  result = CacheIndex.monthlyCacheIndexRange()(v9);
  if (v2)
  {
    return i;
  }

  v5 = v9[0];
  if (v3 >= v9[0])
  {
    for (i = MEMORY[0x1E69E7CC0]; v9[0] >= 410227200; v3 = v9[1])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_1B4A1E900(0, *(i + 2) + 1, 1, i);
      }

      v7 = *(i + 2);
      v6 = *(i + 3);
      if (v7 >= v6 >> 1)
      {
        i = sub_1B4A1E900((v6 > 1), v7 + 1, 1, i);
      }

      *(i + 2) = v7 + 1;
      v8 = &i[16 * v7];
      *(v8 + 4) = v5;
      *(v8 + 5) = v3;
      CacheIndex.add(days:)(-1, &v10);
      CacheIndex.monthlyCacheIndexRange()(v9);
      v5 = v9[0];
    }

    return i;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B4BDBD4C()
{
  result = qword_1EB8AC0D0;
  if (!qword_1EB8AC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0D0);
  }

  return result;
}

unint64_t sub_1B4BDBDC0()
{
  result = qword_1EB8AC0D8;
  if (!qword_1EB8AC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0D8);
  }

  return result;
}

uint64_t sub_1B4BDBE38()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDBEA4()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](1);
  return sub_1B4D18EDC();
}

FitnessIntelligence::FactType_optional __swiftcall FactType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18DFC();

  v5 = 0;
  v6 = 19;
  switch(v3)
  {
    case 0:
      goto LABEL_33;
    case 1:
      v5 = 1;
      goto LABEL_33;
    case 2:
      v5 = 2;
      goto LABEL_33;
    case 3:
      v5 = 3;
      goto LABEL_33;
    case 4:
      v5 = 4;
      goto LABEL_33;
    case 5:
      v5 = 5;
      goto LABEL_33;
    case 6:
      v5 = 6;
      goto LABEL_33;
    case 7:
      v5 = 7;
      goto LABEL_33;
    case 8:
      v5 = 8;
      goto LABEL_33;
    case 9:
      v5 = 9;
      goto LABEL_33;
    case 10:
      v5 = 10;
      goto LABEL_33;
    case 11:
      v5 = 11;
      goto LABEL_33;
    case 12:
      v5 = 12;
      goto LABEL_33;
    case 13:
      v5 = 13;
      goto LABEL_33;
    case 14:
      v5 = 14;
      goto LABEL_33;
    case 15:
      v5 = 15;
      goto LABEL_33;
    case 16:
      v5 = 16;
      goto LABEL_33;
    case 17:
      v5 = 17;
      goto LABEL_33;
    case 18:
      v5 = 18;
LABEL_33:
      v6 = v5;
      break;
    case 19:
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    default:
      v6 = 37;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t FactType.rawValue.getter()
{
  result = 0x4474756F6B726F77;
  switch(*v0)
  {
    case 1:
      result = 0x4D74756F6B726F77;
      break;
    case 2:
      v2 = 1953718630;
      goto LABEL_14;
    case 3:
      v2 = 1735290732;
LABEL_14:
      result = v2 | 0x4474736500000000;
      break;
    case 4:
    case 8:
    case 0x1C:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 9:
    case 0x1F:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD00000000000001CLL;
      break;
    case 0xC:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0x74617453676E6972;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x73676E69526C6C61;
      break;
    case 0x10:
    case 0x11:
      result = 0xD000000000000015;
      break;
    case 0x12:
      result = 0x7461527472616568;
      break;
    case 0x13:
      result = 0x4174756F6B726F77;
      break;
    case 0x14:
      result = 0x676E696E69617274;
      break;
    case 0x15:
      result = 0x736C61746976;
      break;
    case 0x16:
      result = 0x44746E6572727563;
      break;
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 0x18:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
    case 0x1A:
      result = 0xD000000000000024;
      break;
    case 0x1B:
      result = 0xD000000000000019;
      break;
    case 0x1D:
    case 0x22:
      result = 0xD00000000000001DLL;
      break;
    case 0x1E:
      result = 0xD000000000000018;
      break;
    case 0x20:
      result = 0x5774756F6B726F77;
      break;
    case 0x21:
      result = 0x746165576576696CLL;
      break;
    case 0x23:
      result = 0xD000000000000019;
      break;
    case 0x24:
      result = 0x614679636167656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4BDC578(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FactType.rawValue.getter();
  v4 = v3;
  if (v2 == FactType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4BDC614()
{
  v1 = *v0;
  sub_1B4D18E8C();
  FactType.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDC67C()
{
  v2 = *v0;
  FactType.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4BDC6E0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  FactType.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDC750@<X0>(uint64_t *a1@<X8>)
{
  result = FactType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LegacyFact.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LegacyFact.nativeEncoded.getter()
{
  v1 = *(v0 + 24);
  sub_1B498FC0C(v1, *(v0 + 32));
  return v1;
}

uint64_t LegacyFact.resolve<A>()(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = *(v2 + 3);
  return LegacyFact.resolve<A>(_:)(a1, a1, a2);
}

uint64_t LegacyFact.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = v3[1];
  v19 = *v3;
  v6 = *(v3 + 16);
  v16 = v3[4];
  v17 = v3[3];
  v7 = *(a3 + 40);
  v7(v20, a2, a3);
  v24 = v6;
  v8 = FactType.rawValue.getter();
  v10 = v9;
  if (v8 == FactType.rawValue.getter() && v10 == v11)
  {

LABEL_5:
    v20[0] = v19;
    v20[1] = v18;
    v21 = v6;
    v22 = v17;
    v23 = v16;
    return static FactGenerating.resolve<A>(from:)(v20, a2, a2, a3, a3);
  }

  v12 = sub_1B4D18DCC();

  if (v12)
  {
    goto LABEL_5;
  }

  v7(v20, a2, a3);
  v14 = v20[0];
  sub_1B4BDCA80();
  swift_allocError();
  *v15 = v6;
  v15[1] = v14;
  return swift_willThrow();
}

unint64_t sub_1B4BDCA80()
{
  result = qword_1EB8AC0E0;
  if (!qword_1EB8AC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0E0);
  }

  return result;
}

uint64_t sub_1B4BDCAD8()
{
  v1 = 0x6570795474636166;
  if (*v0 != 1)
  {
    v1 = 0x6E4565766974616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_1B4BDCB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4BDDF64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4BDCB64(uint64_t a1)
{
  v2 = sub_1B4BDD8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BDCBA0(uint64_t a1)
{
  v2 = sub_1B4BDD8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0E8, &qword_1B4D3A470);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = *(v1 + 16);
  v10 = v1[3];
  v17 = v1[4];
  v18 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BDD8C0();
  sub_1B4D18EFC();
  LOBYTE(v20) = 0;
  v12 = v19;
  sub_1B4D18CBC();
  if (!v12)
  {
    v14 = v17;
    v13 = v18;
    LOBYTE(v20) = v22;
    v23 = 1;
    sub_1B4BDD914();
    sub_1B4D18D0C();
    v20 = v13;
    v21 = v14;
    v23 = 2;
    sub_1B498FC0C(v13, v14);
    sub_1B49DDCD8();
    sub_1B4D18D0C();
    sub_1B49DDD2C(v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t LegacyFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC100, &qword_1B4D3A478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BDD8C0();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_1B4D18BBC();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  sub_1B4BDD968();
  sub_1B4D18C0C();
  v19 = LOBYTE(v18[0]);
  v20 = 2;
  sub_1B49DDFEC();
  sub_1B4D18C0C();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;

  sub_1B498FC0C(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_1B49DDD2C(v15, v16);
}

uint64_t Array<A>.resolve<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    v10 = (a2 + 64);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 16);
      v14 = *(v10 - 3);
      v22[0] = *(v10 - 4);
      v22[1] = v14;
      v23 = v13;
      v24 = v12;
      v25 = v11;

      sub_1B498FC0C(v12, v11);
      if (sub_1B4BDD4AC(v22, a1, a3, a4))
      {
        break;
      }

      v10 += 5;
      v15 = v24;
      v16 = v25;

      sub_1B49DDD2C(v15, v16);
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v18 = v24;
    v19 = v25;
    static FactGenerating.resolve<A>(from:)(v22, a3, a3, a4, a4);

    sub_1B49DDD2C(v18, v19);
    v17 = 0;
  }

  else
  {
LABEL_5:
    v17 = 1;
  }

  v20 = *(*(a3 - 8) + 56);

  return v20(a5, v17, 1, a3);
}

uint64_t Array<A>.resolve<A>(_:)(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = isUniquelyReferenced_nonNull_native;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 64);
    v9 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_native;
    do
    {
      v13 = *(v8 - 1);
      v12 = *v8;
      v14 = *(v8 - 16);
      v15 = *(v8 - 3);
      v29 = *(v8 - 4);
      v30 = v15;
      v31 = v14;
      v32 = v13;
      v33 = v12;

      sub_1B498FC0C(v13, v12);
      if (sub_1B4BDD4AC(&v29, v6, v5, v4))
      {
        v17 = v29;
        v16 = v30;
        v18 = v31;
        v19 = v32;
        v28 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1B4BCF79C(0, *(v9 + 16) + 1, 1);
          v9 = v34;
        }

        v21 = *(v9 + 16);
        v20 = *(v9 + 24);
        if (v21 >= v20 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1B4BCF79C((v20 > 1), v21 + 1, 1);
          v9 = v34;
        }

        *(v9 + 16) = v21 + 1;
        v22 = v9 + 40 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v16;
        *(v22 + 48) = v18;
        v5 = a3;
        *(v22 + 56) = v19;
        *(v22 + 64) = v28;
        v6 = v25;
        v4 = a4;
      }

      else
      {
        v10 = v32;
        v11 = v33;

        isUniquelyReferenced_nonNull_native = sub_1B49DDD2C(v10, v11);
      }

      v8 += 5;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v29 = v9;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC108, &qword_1B4D3A480);
  sub_1B49B0578(&qword_1EB8AC110, &qword_1EB8AC108, &qword_1B4D3A480);
  v23 = sub_1B4D182BC();

  return v23;
}

uint64_t sub_1B4BDD4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  (*(a4 + 40))(&v12, a3, a4);
  BYTE1(v12) = v4;
  v5 = FactType.rawValue.getter();
  v7 = v6;
  if (v5 == FactType.rawValue.getter() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4BDD56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v12 = v8;
  v13 = *(a1 + 24);
  static FactGenerating.resolve<A>(from:)(v11, a2, a2, a3, a3);
  if (v4)
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return (*(*(a2 - 8) + 56))(a4, v9, 1, a2);
}

uint64_t sub_1B4BDD628(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B498FC0C(a3, a4);
          return sub_1B4A1CD44(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s19FitnessIntelligence10LegacyFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v9 = FactType.rawValue.getter();
  v11 = v10;
  if (v9 != FactType.rawValue.getter() || v11 != v12)
  {
    v13 = sub_1B4D18DCC();

    if (v13)
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:

  return sub_1B4BDD628(v3, v4, v6, v7);
}

unint64_t sub_1B4BDD8C0()
{
  result = qword_1EB8AC0F0;
  if (!qword_1EB8AC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0F0);
  }

  return result;
}

unint64_t sub_1B4BDD914()
{
  result = qword_1EB8AC0F8;
  if (!qword_1EB8AC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC0F8);
  }

  return result;
}

unint64_t sub_1B4BDD968()
{
  result = qword_1EDC36E90;
  if (!qword_1EDC36E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36E90);
  }

  return result;
}

unint64_t sub_1B4BDD9E0()
{
  result = qword_1EB8AC118;
  if (!qword_1EB8AC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC118);
  }

  return result;
}

unint64_t sub_1B4BDDA38()
{
  result = qword_1EB8AC120;
  if (!qword_1EB8AC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FactType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FactType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_1B4BDDC4C(uint64_t a1, int a2)
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

uint64_t sub_1B4BDDC94(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ResolveError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 65316 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65316 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65316;
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

      return (*a1 | (v4 << 16)) - 65316;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65316;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ResolveError(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65316 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65316 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 16) + 1;
    *result = a2 - 220;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4BDDE60()
{
  result = qword_1EB8AC138;
  if (!qword_1EB8AC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC138);
  }

  return result;
}

unint64_t sub_1B4BDDEB8()
{
  result = qword_1EB8AC140;
  if (!qword_1EB8AC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC140);
  }

  return result;
}

unint64_t sub_1B4BDDF10()
{
  result = qword_1EB8AC148;
  if (!qword_1EB8AC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC148);
  }

  return result;
}

uint64_t sub_1B4BDDF64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795474636166 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4565766974616ELL && a2 == 0xED00006465646F63)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4BDE080()
{
  result = qword_1EDC36E98;
  if (!qword_1EDC36E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36E98);
  }

  return result;
}

unint64_t sub_1B4BDE0D4()
{
  result = qword_1EB8AC150;
  if (!qword_1EB8AC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC150);
  }

  return result;
}

uint64_t SnapshotPropertiesType.analyticsKey.getter()
{
  v1 = 0x7374756F6B726F77;
  if (*v0 != 1)
  {
    v1 = 0x507373656E746966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6972;
  }
}

uint64_t static SnapshotProperties.empty(cacheIndex:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = v7;
  swift_getAssociatedTypeWitness();
  v5 = sub_1B4D1843C();
  return (*(a3 + 112))(&v8, &v7, v5, a2, a3);
}

uint64_t static SnapshotProperties.add(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *(a4 + 104);
  v34 = v18(a3, a4);
  v31 = a3;
  v32 = a4;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = KeyPath;
  v27 = a3;
  v28 = a4;
  v29 = sub_1B4BE0BD4;
  v30 = v7;
  swift_getAssociatedTypeWitness();
  v8 = sub_1B4D184BC();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  WitnessTable = swift_getWitnessTable();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  Sequence.groupBy<A>(key:)(sub_1B4BE07F4, v26, v8, AssociatedTypeWitness, WitnessTable, v16);

  v34 = v18(a3, a4);
  v24 = a3;
  v25 = a4;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v20 = a3;
  v21 = a4;
  v22 = sub_1B4BE0814;
  v23 = v12;

  Sequence.groupBy<A>(key:)(sub_1B4BE0BD8, v19, v8, AssociatedTypeWitness, WitnessTable, v16);

  result = sub_1B4D1800C();
  if (!v17)
  {
    v34 = result;
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v14);
    sub_1B4D1801C();
    swift_getWitnessTable();
    v15 = sub_1B4D182FC();

    (*(a4 + 88))(&v34, a3, a4);
    (*(a4 + 96))(&v33, a3, a4);
    return (*(a4 + 112))(&v34, &v33, v15, a3, a4);
  }

  return result;
}

uint64_t sub_1B4BDE744@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a8;
  v15 = sub_1B4D1880C();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v40 - v23;
  v24 = *a2;
  v56 = a1;
  v49 = a6;
  v50 = a7;
  v25 = a7;
  v26 = v24;
  v51 = v24;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC160, &qword_1B4D3AA28);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v29 = sub_1B49B0578(&qword_1EDC36E18, &qword_1EB8AC160, &qword_1B4D3AA28);
  v30 = v47;
  result = sub_1B498D2F0(sub_1B4BE0B58, v48, v27, a6, v28, v29, MEMORY[0x1E69E7288], &v55);
  if (!v30)
  {
    v41 = v26;
    v42 = v18;
    v47 = result;
    v56 = result;
    v32 = *(a6 - 8);
    v33 = (*(v32 + 56))(v21, 1, 1, a6);
    MEMORY[0x1EEE9AC00](v33);
    *(&v40 - 2) = a6;
    *(&v40 - 1) = v25;
    sub_1B4D184BC();
    swift_getWitnessTable();
    v34 = v45;
    sub_1B4D182DC();
    v40 = v25;
    v35 = v32;
    v36 = v44;
    v37 = *(v44 + 8);
    v37(v21, v34);

    v38 = v42;
    (*(v36 + 16))(v42, v46, v34);
    v39 = *(v35 + 48);
    if (v39(v38, 1, a6) == 1)
    {
      v56 = v41;
      static SnapshotProperties.empty(cacheIndex:)(&v56, a6, v40);
      v37(v46, v45);
      result = v39(v38, 1, a6);
      if (result != 1)
      {
        return (v37)(v38, v45);
      }
    }

    else
    {
      v37(v46, v45);
      return (*(v35 + 32))(v43, v38, a6);
    }
  }

  return result;
}

FitnessIntelligence::SnapshotPropertiesType_optional __swiftcall SnapshotPropertiesType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnapshotPropertiesType.rawValue.getter()
{
  v1 = 0x74756F6B726F77;
  if (*v0 != 1)
  {
    v1 = 0x507373656E746966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6972;
  }
}

uint64_t SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a4;
  v20[1] = a7;
  v21 = *(a5 - 8);
  v12 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v17 + 8))(&v24, v16, v17);
  v18 = v23;
  result = (*(a6 + 64))(a1, &v24, a2, a3, v22, a5, a6);
  if (!v18)
  {
    static SnapshotProperties.add(_:_:)(v20[2], v14, a5, a6);
    return (*(v21 + 8))(v14, a5);
  }

  return result;
}

uint64_t sub_1B4BDEDA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x74756F6B726F77;
  if (v2 != 1)
  {
    v4 = 0x507373656E746966;
    v3 = 0xEB0000000073756CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6972;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74756F6B726F77;
  if (*a2 != 1)
  {
    v8 = 0x507373656E746966;
    v7 = 0xEB0000000073756CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73676E6972;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4BDEEB8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BDEF60()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BDEFF4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BDF0A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74756F6B726F77;
  if (v2 != 1)
  {
    v5 = 0x507373656E746966;
    v4 = 0xEB0000000073756CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73676E6972;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SnapshotPropertiesType.serialized()()
{
  *v0;
  *v0;
  v1 = sub_1B4D173DC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  v4 = sub_1B4D173BC();

  return v4;
}

uint64_t SnapshotPropertiesType.init(serialized:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D173AC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4D1738C();
  if (v3)
  {
    sub_1B49DDD2C(a1, a2);
  }

  else
  {

    v11 = sub_1B4D18B1C();

    if (v11 >= 3)
    {
      sub_1B4BE0890();
      swift_allocError();
      *v12 = v13;
      v12[1] = v14;
      swift_willThrow();
      return sub_1B49DDD2C(a1, a2);
    }

    else
    {

      result = sub_1B49DDD2C(a1, a2);
      *a3 = v11;
    }
  }

  return result;
}

Swift::Bool __swiftcall SnapshotProperties.isEmpty()()
{
  (*(v0 + 104))();
  swift_getAssociatedTypeWitness();
  sub_1B4D184BC();
  swift_getWitnessTable();
  v1 = sub_1B4D186AC();

  return v1 & 1;
}

uint64_t static SnapshotProperties.make(startCacheIndex:endCacheIndex:records:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[2] = a6;
  v25 = *a1;
  v27 = *a2;
  v47 = a3;
  v44 = a4;
  v45 = a5;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = KeyPath;
  v24[3] = KeyPath;
  v40 = a4;
  v41 = a5;
  v42 = sub_1B4BE0BD4;
  v43 = v9;
  swift_getAssociatedTypeWitness();
  v10 = sub_1B4D184BC();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  WitnessTable = swift_getWitnessTable();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  v24[1] = WitnessTable;
  v14 = WitnessTable;
  v15 = v10;
  v16 = Sequence.groupBy<A>(key:)(sub_1B4BE0BD8, v39, v10, AssociatedTypeWitness, v14, v13);

  v47 = v16;
  v34 = a4;
  v35 = a5;
  v17 = v25;
  v36 = v26;
  v37 = v25;
  v38 = v27;
  v29 = a4;
  v30 = a5;
  v31 = sub_1B4BE08E4;
  v32 = &v33;
  v18 = sub_1B4D1801C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v20 = swift_getWitnessTable();
  v21 = sub_1B498D2F0(sub_1B4BE0940, v28, v18, v15, v19, v20, MEMORY[0x1E69E7288], v46);

  if (!v24[4])
  {
    v26 = v24;
    v47 = v21;
    MEMORY[0x1EEE9AC00](result);
    sub_1B4D184BC();
    swift_getWitnessTable();
    v23 = sub_1B4D182FC();

    v47 = v17;
    v46[0] = v27;
    return (*(a5 + 112))(&v47, v46, v23, a4, a5);
  }

  return result;
}

uint64_t sub_1B4BDF82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 72);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_1B4BDF8D8@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1B4BDF9C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4D184BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B4BDFADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v63 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_1B4D1880C();
  v71 = *(v65 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v61 = a6;
  v62 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1B4D1880C();
  v66 = *(v19 - 8);
  v67 = v19;
  v20 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v52 - v24;
  v72 = v18;
  v73 = *(v18 - 8);
  v25 = v73[8];
  MEMORY[0x1EEE9AC00](v26);
  v57 = &v52 - v27;
  v28 = *a1;
  v69 = *a2;
  v56 = v28;
  v75 = v28;
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D1868C();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = *(v29 + 48);
  if (v30(v17, 1, AssociatedTypeWitness) == 1)
  {
    v31 = *(v71 + 8);
    v71 += 8;
    v52 = v31;
    v31(v17, v65);
    v32 = v73[7];
    v54 = v22;
    v53 = v32;
    v32(v22, 1, 1, v72);
    v75 = v69;
    v33 = v55;
    sub_1B4D1868C();
    if (v30(v33, 1, AssociatedTypeWitness) == 1)
    {
      v52(v33, v65);
      v34 = v68;
      v35 = v68;
      v36 = 1;
    }

    else
    {
      v34 = v68;
      (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness);
      (*(v29 + 8))(v33, AssociatedTypeWitness);
      v35 = v34;
      v36 = 0;
    }

    v42 = v72;
    v53(v35, v36, 1, v72);
    v40 = v70;
    v37 = v42;
    v38 = v73;
    v43 = v73[6];
    v44 = v54;
    if (v43(v54, 1, v37) != 1)
    {
      (*(v66 + 8))(v44, v67);
    }

    v41 = v43(v34, 1, v37);
  }

  else
  {
    (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness);
    (*(v29 + 8))(v17, AssociatedTypeWitness);
    v37 = v72;
    v38 = v73;
    v39 = v73[7];
    v39(v22, 0, 1, v72);
    v34 = v68;
    (v38[4])(v68, v22, v37);
    v39(v34, 0, 1, v37);
    v40 = v70;
    v41 = (v38[6])(v34, 1, v37);
  }

  if (v41 == 1)
  {
    (*(v66 + 8))(v34, v67);
    result = sub_1B4D1843C();
    *v63 = result;
  }

  else
  {
    v46 = v57;
    (v38[4])(v57, v34, v37);
    v48 = v61;
    v47 = v62;
    (*(v62 + 88))(&v75, v61, v62);
    (*(v47 + 96))(v74, v48, v47);
    v49 = sub_1B4D1842C();
    v50 = (*(v47 + 72))(&v75, v74, v46, v49, v48, v47);
    if (v40)
    {
      (v38[1])(v46, v37);
    }

    else
    {
      v51 = v50;
      (v38[1])(v46, v37);

      *v63 = v51;
    }
  }

  return result;
}

uint64_t sub_1B4BE0198@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4D184BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a3 = result;
  return result;
}

uint64_t SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC160, &qword_1B4D3AA28);
  sub_1B49B0578(&qword_1EB8AC168, &qword_1EB8AC160, &qword_1B4D3AA28);
  return sub_1B4D182DC();
}

uint64_t static SnapshotProperties.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v36 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v33 - v12;
  v13 = sub_1B4D1880C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v18 = &v33 - v17;
  v20 = *(v19 + 56);
  v21 = *(*(v13 - 8) + 16);
  v21(&v33 - v17, a1, v13, v16);
  (v21)(&v18[v20], a2, v13);
  v22 = *(v8 + 48);
  LODWORD(v13) = v22(v18, 1, a3);
  v23 = v22(&v18[v20], 1, a3);
  if (v13 == 1)
  {
    if (v23 == 1)
    {
      v24 = 1;
      v25 = v36;
      return (*(v8 + 56))(v25, v24, 1, a3);
    }

    v25 = v36;
    (*(v8 + 32))(v36, &v18[v20], a3);
LABEL_7:
    v24 = 0;
    return (*(v8 + 56))(v25, v24, 1, a3);
  }

  v26 = *(v8 + 32);
  if (v23 == 1)
  {
    v25 = v36;
    v26(v36, v18, a3);
    goto LABEL_7;
  }

  v28 = v33;
  v26(v33, v18, a3);
  v29 = &v18[v20];
  v30 = v34;
  v26(v34, v29, a3);
  v25 = v36;
  v31 = v37;
  static SnapshotProperties.add(_:_:)(v28, v30, a3, v35);
  v32 = *(v8 + 8);
  v32(v30, a3);
  result = (v32)(v28, a3);
  if (!v31)
  {
    v24 = 0;
    return (*(v8 + 56))(v25, v24, 1, a3);
  }

  return result;
}

uint64_t sub_1B4BE0680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D1880C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v15 = &v18 - v14;
  v16 = *(a3 - 8);
  (*(v16 + 16))(&v18 - v14, a2, a3, v13);
  (*(v16 + 56))(v15, 0, 1, a3);
  static SnapshotProperties.add(_:_:)(a1, v15, a3, a4, a5);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1B4BE07F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1B4BDF8D8(*(v1 + 32), a1);
}

uint64_t sub_1B4BE0840(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  nullsub_1(a2);
}

uint64_t sub_1B4BE0870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1B4BE0198(a1, *(v2 + 32), a2);
}

unint64_t sub_1B4BE0890()
{
  result = qword_1EB8AC158;
  if (!qword_1EB8AC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC158);
  }

  return result;
}

uint64_t sub_1B4BE08E4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[6];
  v9 = v2[5];
  return (*(v4 + 72))(&v9, &v8, a1, a2, v3);
}

uint64_t sub_1B4BE0940@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return sub_1B4BDF9C0(a1, *(v3 + 32), a2, a3);
}

unint64_t sub_1B4BE09C4()
{
  result = qword_1EB8AC170;
  if (!qword_1EB8AC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC170);
  }

  return result;
}

uint64_t sub_1B4BE0B58(uint64_t a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[4];
  result = (*(v6 + 64))(a1, &v11, v7, v8, v9);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t RingStateFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t RingStateFact.TemplateString.rawValue.getter()
{
  v1 = 0xD00000000000002ALL;
  v2 = 0xD0000000000000C4;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000084;
  }

  if (*v0)
  {
    v1 = 0xD0000000000000A8;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BE0CEC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BE0DA4()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BE0E48()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BE0EFC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return RingStateFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4BE0F08(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = "ng";
  v4 = "e> is <ring_percentage>.";
  v5 = 0xD0000000000000C4;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000084;
    v4 = "s <ring_percentage>.";
  }

  if (*v1)
  {
    v2 = 0xD0000000000000A8;
    v3 = "l my activity rings today.";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t RingStateFact.placeholders()()
{
  v1 = type metadata accessor for RingStateFact();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1CBF0;
  v6 = sub_1B4B0793C(*(v0 + *(v2 + 28)));
  v8 = v7;
  *(v5 + 32) = 0x7079745F676E6972;
  *(v5 + 40) = 0xE900000000000065;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v5 + 48) = sub_1B4993DFC;
  *(v5 + 56) = v9;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v5 + 80) = 0xD000000000000012;
  *(v5 + 88) = 0x80000001B4D62E90;
  *(v5 + 96) = sub_1B4BE3050;
  *(v5 + 104) = v11;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v12 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v5 + 128) = 0x6C61765F676E6972;
  *(v5 + 136) = 0xEA00000000006575;
  *(v5 + 144) = sub_1B4BE3068;
  *(v5 + 152) = v12;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v13 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  *(v5 + 176) = 0x6C61765F6C616F67;
  *(v5 + 184) = 0xEA00000000006575;
  *(v5 + 192) = sub_1B4BE3080;
  *(v5 + 200) = v13;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  sub_1B4BE35A8(v0, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RingStateFact);
  v14 = swift_allocObject();
  sub_1B4BE2FEC(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  *(v5 + 224) = 0x7265705F676E6972;
  *(v5 + 232) = 0xEF656761746E6563;
  *(v5 + 240) = sub_1B4BE351C;
  *(v5 + 248) = v14;
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  return v5;
}

uint64_t sub_1B4BE1298(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for RingProgressType();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v2, v23, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v46 = *(v25 + 48);
      v26 = v47;
      (*(v47 + 32))(v19, v23 + *(v25 + 64), v14);
      v27 = [objc_opt_self() minutes];
      v28 = v48;
      sub_1B4D1745C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
      v29 = *(sub_1B4D18F8C() - 8);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1B4D1B2D0;
      sub_1B4D18F4C();
      sub_1B4D18F5C();
      sub_1B4D18F6C();
      sub_1B4D18F7C();
      v33 = sub_1B4BCA7BC(v32);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v34 = sub_1B4D15F5C(v28, v33);

      v35 = *(v26 + 8);
      v35(v28, v14);
      v35(v19, v14);
      v35(v23 + v46, v14);
      v35(v23, v14);
    }

    else
    {
      sub_1B4BE3810(v23);
      return 0;
    }
  }

  else
  {
    v36 = v46;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v48 = *(v37 + 48);
    (*(v4 + 32))(v13, v23 + *(v37 + 64), v3);
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    v38 = *(v36 + 16);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v39);
    v41 = v40;
    sub_1B4D1745C();
    v42 = sub_1B4D12160();
    v34 = sub_1B4D12A28();

    v43 = *(v4 + 8);
    v43(v7, v3);
    v43(v10, v3);
    v43(v13, v3);
    v43((v23 + v48), v3);
    v43(v23, v3);
  }

  return v34;
}

uint64_t sub_1B4BE1818(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for RingProgressType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  sub_1B4BE35A8(v2, v14, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v32 = *(v31 + 48);
      v33 = *(v31 + 64);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v35 = *(*(v34 - 8) + 8);
      v35(&v14[v33], v34);
      v35(&v14[v32], v34);
      v35(v14, v34);
    }

    else
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v46 = v45[12];
      v57 = v45[20];
      v58 = v46;
      v56 = v45[24];
      v47 = v45[32];
      v48 = v45[36];
      v49 = v45[44];
      v50 = v45[48];
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v52 = *(*(v51 - 8) + 8);
      v52(&v14[v50], v51);
      v52(&v14[v49], v51);
      v53 = *(v16 + 8);
      v53(&v14[v48], v15);
      v53(&v14[v47], v15);
      sub_1B4975024(&v14[v56], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v14[v57], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v14[v58], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v14, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }

    return 0;
  }

  else if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v57 = *(v36 + 48);
    v37 = *(v36 + 64);
    v38 = v4;
    (*(v4 + 32))(v10, v14, v3);
    v39 = *(v58 + 16);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v40);
    v42 = v41;
    sub_1B4D1745C();
    v43 = sub_1B4D12160();
    v30 = sub_1B4D12A28();

    v44 = *(v38 + 8);
    v44(v7, v3);
    v44(v10, v3);
    v44(&v14[v37], v3);
    v44(&v14[v57], v3);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    (*(v16 + 32))(v19, v14, v15);
    v24 = *(v16 + 8);
    v24(&v14[v23], v15);
    v24(&v14[v22], v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v25 = *(sub_1B4D18F8C() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v29 = sub_1B4BCA7BC(v28);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v30 = sub_1B4D15F5C(v19, v29);

    v24(v19, v15);
  }

  return v30;
}

uint64_t sub_1B4BE1E5C(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for RingProgressType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  sub_1B4BE35A8(v2, v14, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v31 = *(v30 + 48);
      v32 = *(v30 + 64);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v34 = *(*(v33 - 8) + 8);
      v34(&v14[v32], v33);
      v34(&v14[v31], v33);
      v34(v14, v33);
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v45 = v44[12];
      v56 = v44[20];
      v57 = v45;
      v55 = v44[24];
      v46 = v44[32];
      v47 = v44[36];
      v48 = v44[44];
      v49 = v44[48];
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v51 = *(*(v50 - 8) + 8);
      v51(&v14[v49], v50);
      v51(&v14[v48], v50);
      v52 = *(v16 + 8);
      v52(&v14[v47], v15);
      v52(&v14[v46], v15);
      sub_1B4975024(&v14[v55], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v14[v56], &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(&v14[v57], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v14, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }

    return 0;
  }

  else if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
    v36 = *(v35 + 64);
    v37 = v4;
    (*(v4 + 32))(v10, &v14[*(v35 + 48)], v3);
    v38 = *(v57 + 16);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v39);
    v41 = v40;
    sub_1B4D1745C();
    v42 = sub_1B4D12160();
    v29 = sub_1B4D12A28();

    v43 = *(v37 + 8);
    v43(v7, v3);
    v43(v10, v3);
    v43(&v14[v36], v3);
    v43(v14, v3);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v22 = *(v21 + 64);
    (*(v16 + 32))(v19, &v14[*(v21 + 48)], v15);
    v23 = *(v16 + 8);
    v23(&v14[v22], v15);
    v23(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v24 = *(sub_1B4D18F8C() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v28 = sub_1B4BCA7BC(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = sub_1B4D15F5C(v19, v28);

    v23(v19, v15);
  }

  return v29;
}

uint64_t sub_1B4BE2498()
{
  v1 = type metadata accessor for RingProgressType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v0, v4, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v12 = v11[12];
      v13 = v11[16];
      v14 = *&v4[v11[20]];
      v15 = &qword_1EB8A6868;
      v16 = &unk_1B4D1AB80;
      goto LABEL_8;
    }

LABEL_7:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v12 = v17[12];
    v13 = v17[16];
    v14 = *&v4[v17[20]];
    v15 = &qword_1EB8A6850;
    v16 = &unk_1B4D1BC10;
LABEL_8:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    v19 = *(*(v18 - 8) + 8);
    v19(&v4[v13], v18);
    v19(&v4[v12], v18);
    v19(v4, v18);
    v20 = sub_1B4D1270C();
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v22 = [v20 stringFromNumber_];

    if (!v22)
    {
      return 0;
    }

    v23 = sub_1B4D1818C();

    return v23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v7 = *(v6 + 48);
    v8 = *(v6 + 64);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v10 = *(*(v9 - 8) + 8);
    v10(&v4[v8], v9);
    v10(&v4[v7], v9);
    v10(v4, v9);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v37 = v25[12];
    v26 = v25[20];
    v27 = v25[24];
    v28 = v25[32];
    v29 = v25[36];
    v30 = v25[44];
    v31 = v25[48];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v33 = *(*(v32 - 8) + 8);
    v33(&v4[v31], v32);
    v33(&v4[v30], v32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v35 = *(*(v34 - 8) + 8);
    v35(&v4[v29], v34);
    v35(&v4[v28], v34);
    sub_1B4975024(&v4[v27], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v4[v26], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v4[v37], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v4, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  return 0;
}

uint64_t RingStateFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for RingProgressType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v1, v6, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
        v9 = *(v8 + 48);
        v10 = *(v8 + 64);
        *a1 = 4;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        v12 = *(*(v11 - 8) + 8);
        v12(&v6[v10], v11);
        v12(&v6[v9], v11);
        return (v12)(v6, v11);
      }

      else
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
        v35 = v23[12];
        v24 = v23[20];
        v33 = v23[24];
        v34 = v24;
        v25 = v23[32];
        v26 = v23[36];
        v27 = v23[44];
        v28 = v23[48];
        *a1 = 0;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        v30 = *(*(v29 - 8) + 8);
        v30(&v6[v28], v29);
        v30(&v6[v27], v29);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        v32 = *(*(v31 - 8) + 8);
        v32(&v6[v26], v31);
        v32(&v6[v25], v31);
        sub_1B4975024(&v6[v33], &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(&v6[v34], &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(&v6[v35], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        return sub_1B4975024(v6, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      }
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_7:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v15 = *(v19 + 48);
    v16 = *(v19 + 64);
    v17 = &qword_1EB8A6850;
    v18 = &unk_1B4D1BC10;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
  v15 = *(v14 + 48);
  v16 = *(v14 + 64);
  v17 = &qword_1EB8A6868;
  v18 = &unk_1B4D1AB80;
LABEL_8:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  v21 = *(*(v20 - 8) + 8);
  v21(&v6[v16], v20);
  v21(&v6[v15], v20);
  v21(v6, v20);
  result = sub_1B4BE2C88();
  if (result)
  {
    v22 = 1;
  }

  else
  {
    result = type metadata accessor for RingStateFact();
    if (*(v1 + *(result + 24)) == 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }
  }

  *a1 = v22;
  return result;
}

BOOL sub_1B4BE2C88()
{
  v1 = type metadata accessor for RingProgressType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4BE35A8(v0, v4, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v7 = v12[12];
      v8 = v12[16];
      v9 = *&v4[v12[20]];
      v10 = &qword_1EB8A6868;
      v11 = &unk_1B4D1AB80;
      goto LABEL_8;
    }

LABEL_7:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v7 = v13[12];
    v8 = v13[16];
    v9 = *&v4[v13[20]];
    v10 = &qword_1EB8A6850;
    v11 = &unk_1B4D1BC10;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v7 = v6[12];
    v8 = v6[16];
    v9 = *&v4[v6[20]];
    v10 = &qword_1EB8A6870;
    v11 = &unk_1B4D1C2C0;
LABEL_8:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v15 = *(*(v14 - 8) + 8);
    v15(&v4[v8], v14);
    v15(&v4[v7], v14);
    v15(v4, v14);
    return v9 >= 1.0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
  v29 = v17[12];
  v18 = v17[20];
  v19 = v17[24];
  v20 = v17[32];
  v21 = v17[36];
  v22 = v17[44];
  v23 = v17[48];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v25 = *(*(v24 - 8) + 8);
  v25(&v4[v23], v24);
  v25(&v4[v22], v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v27 = *(*(v26 - 8) + 8);
  v27(&v4[v21], v26);
  v27(&v4[v20], v26);
  sub_1B4975024(&v4[v19], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(&v4[v18], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(&v4[v29], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v4, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  return 1;
}

uint64_t sub_1B4BE2FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingStateFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = *(type metadata accessor for RingStateFact() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for RingProgressType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v23 = *(*(v22 - 8) + 8);
      v23(v0 + v3, v22);
      v24 = &qword_1EB8AA3F0;
      v25 = &qword_1B4D2E810;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
LABEL_16:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v23 = *(*(v22 - 8) + 8);
      v23(v0 + v3, v22);
      v24 = &qword_1EB8AA3D8;
      v25 = &qword_1B4D2E808;
LABEL_19:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      v23(v5 + *(v26 + 48), v22);
      v23(v5 + *(v26 + 64), v22);
      break;
    case 3:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v23 = *(*(v22 - 8) + 8);
      v23(v0 + v3, v22);
      v24 = &qword_1EB8AA3C8;
      v25 = &qword_1B4D2E800;
      goto LABEL_19;
    case 4:
      v28 = v4;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v8 = *(v7 - 8);
      v9 = *(v8 + 48);
      if (!v9(v0 + v3, 1, v7))
      {
        (*(v8 + 8))(v0 + v3, v7);
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v11 = v10[12];
      if (!v9(v5 + v11, 1, v7))
      {
        (*(v8 + 8))(v5 + v11, v7);
      }

      v12 = v10[20];
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (!v15(v5 + v12, 1, v13))
      {
        (*(v14 + 8))(v5 + v12, v13);
      }

      v16 = v10[24];
      v17 = v15(v5 + v16, 1, v13);
      v18 = *(v14 + 8);
      if (!v17)
      {
        v18(v5 + v16, v13);
      }

      v18(v5 + v10[32], v13);
      v18(v5 + v10[36], v13);
      v19 = v10[44];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v21 = *(*(v20 - 8) + 8);
      v21(v5 + v19, v20);
      v21(v5 + v10[48], v20);
      v4 = v28;
      break;
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4BE35A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4BE3614()
{
  result = qword_1EB8AC188;
  if (!qword_1EB8AC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC188);
  }

  return result;
}

unint64_t sub_1B4BE366C()
{
  result = qword_1EB8AC190;
  if (!qword_1EB8AC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC198, &qword_1B4D3AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC190);
  }

  return result;
}

unint64_t sub_1B4BE36D4()
{
  result = qword_1EB8AC1A0;
  if (!qword_1EB8AC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1A0);
  }

  return result;
}

unint64_t sub_1B4BE372C()
{
  result = qword_1EB8AC1A8;
  if (!qword_1EB8AC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1A8);
  }

  return result;
}

unint64_t sub_1B4BE3780(uint64_t a1)
{
  result = sub_1B4BE37A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BE37A8()
{
  result = qword_1EB8AC1B0;
  if (!qword_1EB8AC1B0)
  {
    type metadata accessor for RingStateFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1B0);
  }

  return result;
}

uint64_t sub_1B4BE3810(uint64_t a1)
{
  v2 = type metadata accessor for RingProgressType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioChunk.streamIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StreamingAudioChunk.rawAudioData.getter()
{
  v1 = *(v0 + 24);
  sub_1B498FC0C(v1, *(v0 + 32));
  return v1;
}

uint64_t StreamingAudioChunk.packetDescriptions.getter()
{
  v1 = *(v0 + 48);
  sub_1B498FC0C(v1, *(v0 + 56));
  return v1;
}

void StreamingAudioChunk.init(streamIdentifier:chunkIndex:audioData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = sub_1B4D17A3C();
  *(a5 + 32) = v7;
  *(a5 + 40) = sub_1B4D17A5C();
  v8 = sub_1B4D17A7C();
  v10 = v9;

  *(a5 + 48) = v8;
  *(a5 + 56) = v10;
}

uint64_t StreamingAudioChunk.init(streamIdentifier:chunkIndex:rawAudioData:packetCount:packetDescriptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

id StreamingAudioChunk.toAudioData(streamDescription:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = objc_allocWithZone(sub_1B4D17AAC());
  sub_1B498FC0C(v1, v2);
  sub_1B498FC0C(v4, v5);
  v7 = [v6 init];
  sub_1B4D17A9C();
  sub_1B4D17A4C();
  sub_1B4D17A6C();
  sub_1B4D17A8C();
  return v7;
}

uint64_t sub_1B4BE3A44(uint64_t a1, int a2)
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

uint64_t sub_1B4BE3A8C(uint64_t result, int a2, int a3)
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

uint64_t InferenceAvailability.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  sub_1B4BE3F84(qword_1EDC3BD10);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE3BA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *result = 1;
    *(result + 8) = 1;
    v5 = (result + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24));
    v6 = v5[1];

    *v5 = a2;
    v5[1] = a3;
  }

  else
  {
    *result = 0;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t sub_1B4BE3C2C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v8 = sub_1B4BE3FC8();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BE3F84(qword_1EDC3BD10);
    v4 = sub_1B4D17D6C();
    sub_1B4BE401C(v7);
  }

  return v4;
}

char *sub_1B4BE3D4C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_1B4B29B0C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4BE3D78()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  sub_1B4BE3F84(qword_1EDC3BD10);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE3E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B4BE3E40(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B4BE3E40(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    if (*a1)
    {
      v2 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24));
      v4 = *v2;
      v3 = v2[1];

      sub_1B4BE401C(a1);
      if (v3)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B4BE401C(a1);
      return 0;
    }
  }

  else
  {
    sub_1B4B29E0C();
    swift_allocError();
    swift_willThrow();
    return sub_1B4BE401C(a1);
  }
}

uint64_t sub_1B4BE3F84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4BE3FC8()
{
  result = qword_1EDC394B0[0];
  if (!qword_1EDC394B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC394B0);
  }

  return result;
}

uint64_t sub_1B4BE401C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BE408C()
{
  result = qword_1EB8AC1B8;
  if (!qword_1EB8AC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1B8);
  }

  return result;
}

uint64_t AudioSynthesisIntensity.init(_:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[8] == 1)
  {
    v8 = *a1;
    result = sub_1B4BE4400(a1);
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4D17F6C();
    __swift_project_value_buffer(v10, qword_1EDC3CED0);
    sub_1B4BE439C(a1, v7);
    v11 = sub_1B4D17F5C();
    v12 = sub_1B4D1871C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v15 = v7[8];
      v21[1] = *v7;
      v22 = v15;
      v16 = sub_1B4D181AC();
      v18 = v17;
      sub_1B4BE4400(v7);
      v19 = sub_1B49558AC(v16, v18, &v23);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1B4953000, v11, v12, "Unrecognized intensity: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B8C7DDA0](v14, -1, -1);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);

      v20 = a1;
    }

    else
    {

      sub_1B4BE4400(a1);
      v20 = v7;
    }

    result = sub_1B4BE4400(v20);
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t AudioSynthesisIntensity.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  sub_1B4BE46F8(&qword_1EB8A76F0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE439C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BE4400(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BE445C(uint64_t result, unsigned __int8 a2)
{
  *result = a2;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_1B4BE4470(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v8 = sub_1B4BE473C();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BE46F8(&qword_1EB8A76F0);
    v4 = sub_1B4D17D6C();
    sub_1B4BE4400(v7);
  }

  return v4;
}

uint64_t sub_1B4BE458C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B25D70(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4BE45C0()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  sub_1B4BE46F8(&qword_1EB8A76F0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE467C(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_1B4BE46F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4BE473C()
{
  result = qword_1EB8AC1C0;
  if (!qword_1EB8AC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1C0);
  }

  return result;
}

unint64_t sub_1B4BE47A8(void *a1)
{
  a1[1] = sub_1B4BE47E0();
  a1[2] = sub_1B49E05D4();
  result = sub_1B49E02B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4BE47E0()
{
  result = qword_1EB8AC1C8;
  if (!qword_1EB8AC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1C8);
  }

  return result;
}

uint64_t sub_1B4BE48E4()
{
  v0 = sub_1B4D173DC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49E02B0();
  v3 = sub_1B4D173BC();

  return v3;
}

uint64_t sub_1B4BE4964(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4D173AC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49E05D4();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

unint64_t sub_1B4BE4A00()
{
  result = qword_1EB8AC1D0;
  if (!qword_1EB8AC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1D0);
  }

  return result;
}

uint64_t FitnessPlusCatalogWorkout.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  FitnessPlusModalityKind.init(rawValue:)(v6);
  if (v11 == 15)
  {
    sub_1B49916EC();
    swift_allocError();
    swift_willThrow();
    return sub_1B4BE4BB4(a1);
  }

  else
  {
    v9 = *a1;
    v8 = a1[1];
    v10 = a1[2];

    result = sub_1B4BE4BB4(a1);
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t FitnessPlusCatalogWorkout.protobuf()()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v4 = *(v0 + 1);
  sub_1B4BE4E10();
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BE4BB4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BE4C10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v11 = a1[2];

  a1[2] = a4;
  v12 = 0xE800000000000000;
  v13 = 0x6E776F646C6F6F63;
  switch(a5)
  {
    case 1:
      v12 = 0xE400000000000000;
      v13 = 1701998435;
      break;
    case 2:
      v12 = 0xE700000000000000;
      v13 = 0x676E696C637963;
      break;
    case 3:
      v12 = 0xE500000000000000;
      v13 = 0x65636E6164;
      break;
    case 4:
      v12 = 0xE90000000000006ELL;
      v13 = 0x7552646564697567;
      break;
    case 5:
      v12 = 0xEA00000000006B6CLL;
      v13 = 0x6157646564697567;
      break;
    case 6:
      v12 = 0xE400000000000000;
      v13 = 1953065320;
      break;
    case 7:
      v13 = 0x69786F626B63696BLL;
      v12 = 0xEA0000000000676ELL;
      break;
    case 8:
      v12 = 0xEA00000000006E6FLL;
      v13 = 0x697461746964656DLL;
      break;
    case 9:
      v12 = 0xE700000000000000;
      v13 = 0x736574616C6970;
      break;
    case 10:
      v12 = 0xE600000000000000;
      v13 = 0x676E69776F72;
      break;
    case 11:
      v13 = 0x6874676E65727473;
      break;
    case 12:
      v13 = 0x6C696D6461657274;
      v12 = 0xE90000000000006CLL;
      break;
    case 13:
      v12 = 0xE400000000000000;
      v13 = 1634168697;
      break;
    case 14:
      v12 = 0xE500000000000000;
      v13 = 0x726568746FLL;
      break;
    default:
      break;
  }

  v14 = a1[4];

  a1[3] = v13;
  a1[4] = v12;
  return result;
}

unint64_t sub_1B4BE4E10()
{
  result = qword_1EB8A6A80;
  if (!qword_1EB8A6A80)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A80);
  }

  return result;
}

unint64_t sub_1B4BE4E7C()
{
  result = qword_1EB8AC1D8;
  if (!qword_1EB8AC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC1D8);
  }

  return result;
}

uint64_t sub_1B4BE4ED0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[13] = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4BE4F00, 0, 0);
}

uint64_t sub_1B4BE4F00()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v14 = v0[11];
  v16 = &type metadata for FitnessContext;
  v17 = &protocol witness table for FitnessContext;
  *&v15 = v1;
  v0[14] = swift_getAssociatedTypeWitness();
  v0[15] = swift_getAssociatedConformanceWitness();
  FactContext.init(context:)(&v15, (v0 + 2));
  v3 = *(v14 + 48);

  v13 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1B4BE50B0;
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  return (v13)(v0 + 2, v10, v11, v8, v9, v6);
}

uint64_t sub_1B4BE50B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_1B4BE5274;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_1B4BE51D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B4BE51D8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for FactContext();
  (*(*(v3 - 8) + 8))(v0 + 2, v3);
  v4 = v0[1];
  v5 = v0[18];

  return v4(v5);
}

uint64_t sub_1B4BE5274()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for FactContext();
  (*(*(v3 - 8) + 8))(v0 + 2, v3);
  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t SnapshotContainers.ringsContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B4BE5358(v8, &v7);
}

uint64_t SnapshotContainers.workoutContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B4BE5400(v8, &v7);
}

uint64_t SnapshotContainers.fitnessPlusContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v9 = v1[12];
  v10 = v2;
  v11 = v1[14];
  v3 = v11;
  v4 = v1[11];
  v8[0] = v1[10];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B4BE54A8(v8, &v7);
}

__n128 SnapshotContainers.init(ringsContainer:workoutContainer:fitnessPlusContainer:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a1[3];
  a4[2] = a1[2];
  a4[3] = v4;
  v5 = a1[1];
  *a4 = *a1;
  a4[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a2;
  a4[6] = a2[1];
  a4[7] = v6;
  v9 = a2[4];
  a4[8] = v7;
  a4[9] = v9;
  a4[4] = a1[4];
  a4[5] = v8;
  v10 = *(a3 + 64);
  a4[13] = *(a3 + 48);
  a4[14] = v10;
  v11 = *(a3 + 32);
  a4[11] = *(a3 + 16);
  a4[12] = v11;
  result = *a3;
  a4[10] = *a3;
  return result;
}

uint64_t SnapshotContainers.cacheIndex.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[10];
  v5 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7110, &qword_1B4D1D080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1BE00;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  if (v4 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v5 >= v7)
  {
    v5 = v7;
  }

  result = swift_setDeallocating();
  *a1 = v5;
  return result;
}

uint64_t *static SnapshotContainers.empty(cacheIndex:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = v2;
  a2[5] = v2;
  a2[6] = v3;
  a2[7] = v2;
  a2[8] = v2;
  a2[9] = v3;
  a2[10] = v2;
  a2[11] = v2;
  a2[12] = v2;
  a2[13] = v3;
  a2[14] = v2;
  a2[15] = v2;
  a2[16] = v3;
  a2[17] = v2;
  a2[18] = v2;
  a2[19] = v3;
  a2[20] = v2;
  a2[21] = v2;
  a2[22] = v2;
  a2[23] = v3;
  a2[24] = v2;
  a2[25] = v2;
  a2[26] = v3;
  a2[27] = v2;
  a2[28] = v2;
  a2[29] = v3;
  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1B4BE5660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1B4BE56A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4BE5734(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v31 = v1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4FC(0, v6, 0);
    v8 = -1 << *(a1 + 32);
    v29 = a1 + 64;
    v30 = v36;
    result = sub_1B4D188DC();
    v9 = result;
    v10 = 0;
    v33 = *(a1 + 36);
    v26 = a1 + 72;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v29 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v13 = *(*(a1 + 56) + 8 * v9);
      v35 = *(*(a1 + 48) + v9);
      v34 = v13;
      MEMORY[0x1EEE9AC00](result);
      *(&v26 - 2) = &v35;
      *(&v26 - 1) = &v34;
      sub_1B4BF5CF8(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

      v14 = v31;
      sub_1B4D17DAC();
      if (v14)
      {
      }

      v31 = 0;

      v15 = v30;
      v36 = v30;
      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF4FC(v16 > 1, v17 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v17 + 1;
      v18 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = v15;
      result = sub_1B4BF5D94(v32, v15 + v18 + *(v27 + 72) * v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_27;
      }

      v19 = *(v29 + 8 * v12);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v26 + 8 * v12);
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B497CD6C(v9, v33, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v9, v33, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v30;
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
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BE5AF8(uint64_t a1)
{
  v2 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF4FC(0, v11, 0);
  v12 = v58;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = sub_1B4D188DC();
  v16 = result;
  v17 = 0;
  v56 = *(a1 + 36);
  v42 = a1 + 72;
  v43 = v11;
  v44 = a1 + 64;
  v45 = a1;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_24;
    }

    if (v56 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v52 = 1 << v16;
    v53 = v16 >> 6;
    v51 = v17;
    v20 = v12;
    v21 = v50;
    v22 = *(v50 + 48);
    v23 = *(a1 + 48);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v25 = *(v24 - 8);
    v12 = *(v25 + 16);
    v54 = v2;
    v26 = v23 + *(v25 + 72) * v16;
    v27 = v48;
    (v12)(v48, v26, v24);
    *(v27 + v22) = *(*(a1 + 56) + 8 * v16);
    v28 = v49;
    (v12)(v49, v27, v24);
    v29 = *(v21 + 48);
    v30 = *(v27 + v22);
    v31 = sub_1B4975024(v27, &qword_1EB8A81D8, &unk_1B4D3B2B0);
    *(v28 + v29) = v30;
    v57 = v30;
    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 2) = v28;
    *(&v42 - 1) = &v57;
    sub_1B4BF5CF8(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v32 = v54;
    sub_1B4D17DAC();
    v2 = v32;
    if (v32)
    {
      sub_1B4975024(v28, &qword_1EB8A81D8, &unk_1B4D3B2B0);

      return v12;
    }

    sub_1B4975024(v28, &qword_1EB8A81D8, &unk_1B4D3B2B0);
    v12 = v20;
    v58 = v20;
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1B4BCF4FC(v33 > 1, v34 + 1, 1);
      v12 = v58;
    }

    *(v12 + 16) = v34 + 1;
    result = sub_1B4BF5D94(v55, v12 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    a1 = v45;
    v18 = 1 << *(v45 + 32);
    if (v16 >= v18)
    {
      goto LABEL_26;
    }

    v13 = v44;
    v35 = *(v44 + 8 * v53);
    if ((v35 & v52) == 0)
    {
      goto LABEL_27;
    }

    if (v56 != *(v45 + 36))
    {
      goto LABEL_28;
    }

    v36 = v35 & (-2 << (v16 & 0x3F));
    if (v36)
    {
      v18 = __clz(__rbit64(v36)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
    }

    else
    {
      v37 = v53 << 6;
      v38 = v53 + 1;
      v19 = v43;
      v39 = (v42 + 8 * v53);
      while (v38 < (v18 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          result = sub_1B497CD6C(v16, v56, 0);
          v18 = __clz(__rbit64(v40)) + v37;
          goto LABEL_4;
        }
      }

      result = sub_1B497CD6C(v16, v56, 0);
    }

LABEL_4:
    v17 = v51 + 1;
    v16 = v18;
    if (v51 + 1 == v19)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B4BE5FE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4FC(0, v7, 0);
    v9 = -1 << *(a1 + 32);
    v30 = a1 + 64;
    v31 = v36;
    result = sub_1B4D188DC();
    v10 = result;
    v11 = 0;
    v33 = *(a1 + 36);
    v26 = a1 + 72;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v30 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = *(*(a1 + 48) + 8 * v10);
      v34 = *(*(a1 + 56) + 8 * v10);
      v35 = v14;
      MEMORY[0x1EEE9AC00](result);
      *(&v26 - 2) = &v35;
      *(&v26 - 1) = &v34;
      sub_1B4BF5CF8(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      sub_1B4D17DAC();
      if (v2)
      {
      }

      v29 = 0;
      v15 = v31;
      v36 = v31;
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF4FC(v16 > 1, v17 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v17 + 1;
      v18 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v31 = v15;
      result = sub_1B4BF5D94(v32, v15 + v18 + *(v27 + 72) * v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_27;
      }

      v19 = *(v30 + 8 * v13);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = (v26 + 8 * v13);
        while (v22 < (v12 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B497CD6C(v10, v33, 0);
            v12 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v10, v33, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      v2 = v29;
      if (v11 == v7)
      {
        return v31;
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
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BE6388(uint64_t a1)
{
  v2 = v1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - v7;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF53C(0, v12, 0);
    v61 = v62;
    v14 = a1 + 64;
    v15 = -1 << *(a1 + 32);
    result = sub_1B4D188DC();
    v16 = result;
    v17 = 0;
    v18 = *(a1 + 36);
    v47 = a1 + 72;
    v48 = v12;
    v49 = v18;
    v50 = a1 + 64;
    v51 = a1;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      if (v18 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v58 = 1 << v16;
      v59 = v16 >> 6;
      v57 = v17;
      v20 = v11;
      v21 = v56;
      v22 = *(v56 + 48);
      v23 = *(a1 + 56);
      v24 = v54;
      *v54 = *(*(a1 + 48) + 8 * v16);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v26 = *(v25 - 8);
      v60 = v2;
      v27 = v26;
      (*(v26 + 16))(&v24[v22], v23 + *(v26 + 72) * v16, v25);
      v28 = v55;
      *v55 = *v24;
      v29 = *(v21 + 48);
      v11 = v20;
      v30 = &v28[v29];
      v31 = (*(v27 + 32))(&v28[v29], &v24[v22], v25);
      v32 = *v28;
      MEMORY[0x1EEE9AC00](v31);
      *(&v46 - 2) = v33;
      *(&v46 - 1) = v30;
      sub_1B4BF5CF8(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      v34 = v60;
      sub_1B4D17DAC();
      v2 = v34;
      sub_1B4975024(v28, &qword_1EB8A81C8, &unk_1B4D20E30);
      v35 = v61;
      v62 = v61;
      v37 = *(v61 + 16);
      v36 = *(v61 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B4BCF53C(v36 > 1, v37 + 1, 1);
        v35 = v62;
      }

      *(v35 + 16) = v37 + 1;
      v38 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v61 = v35;
      result = sub_1B4BF5D94(v20, v35 + v38 + *(v52 + 72) * v37, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      a1 = v51;
      v19 = 1 << *(v51 + 32);
      if (v16 >= v19)
      {
        goto LABEL_25;
      }

      v14 = v50;
      v39 = *(v50 + 8 * v59);
      if ((v39 & v58) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v18) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v16 & 0x3F));
      if (v40)
      {
        v19 = __clz(__rbit64(v40)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v59 << 6;
        v42 = v59 + 1;
        v43 = (v47 + 8 * v59);
        while (v42 < (v19 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_1B497CD6C(v16, v49, 0);
            v19 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v16, v49, 0);
      }

LABEL_4:
      v17 = v57 + 1;
      v16 = v19;
      if (v57 + 1 == v48)
      {
        return v61;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BE6870@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v78 = &v69 - v15;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300);
  v21 = *(v83 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v24 = (&v69 - v23);
  v25 = a1[1];
  v77 = *a1;
  v79 = a1;
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v70 = v7;
    v71 = a2;
    v84 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEEFC(0, v26, 0);
    v82 = type metadata accessor for UnitCount();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = v84;
    v29 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v80 = *(v17 + 72);
    v81 = ObjCClassFromMetadata;
    do
    {
      sub_1B4BF5DFC(v29, v20, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      v30 = *(v83 + 48);
      *v24 = *v20;
      v31 = v20[1];
      v32 = [v81 baseUnit];
      sub_1B4D1741C();
      sub_1B4BF5E64(v20, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
      v84 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B4BCEEFC(v33 > 1, v34 + 1, 1);
        v27 = v84;
      }

      *(v27 + 16) = v34 + 1;
      sub_1B498B270(v24, v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v34, &qword_1EB8AC200, &unk_1B4D3B300);
      v29 += v80;
      --v26;
    }

    while (v26);
    v7 = v70;
    a2 = v71;
  }

  v35 = v79;
  v36 = v75;
  if (*(v27 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
    v37 = sub_1B4D18AEC();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = v76;
  v84 = v37;

  v40 = v73;
  sub_1B4BF4528(v39, 1, &v84);
  if (v40)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v83 = v84;
    v41 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
    v42 = v74;
    sub_1B4974FBC(v35 + v41, v74, &qword_1EB8A69A0, &qword_1B4D27A90);
    v43 = *(v36 + 48);
    if (v43(v42, 1, v38) == 1)
    {
      sub_1B4BF5E64(v35, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      sub_1B4975024(v42, &qword_1EB8A69A0, &qword_1B4D27A90);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
      v45 = v78;
      (*(*(v44 - 8) + 56))(v78, 1, 1, v44);
    }

    else
    {
      v82 = 0;
      sub_1B4975024(v42, &qword_1EB8A69A0, &qword_1B4D27A90);
      v46 = v35 + v41;
      v47 = v72;
      sub_1B4974FBC(v46, v72, &qword_1EB8A69A0, &qword_1B4D27A90);
      if (v43(v47, 1, v38) == 1)
      {
        *(v7 + 1) = 0u;
        *(v7 + 2) = 0u;
        *v7 = 0u;
        v48 = &v7[*(v38 + 40)];
        sub_1B4D17BBC();
        if (v43(v47, 1, v38) != 1)
        {
          sub_1B4975024(v47, &qword_1EB8A69A0, &qword_1B4D27A90);
        }
      }

      else
      {
        sub_1B4BF5D94(v47, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      }

      v81 = *(v7 + 1);
      v49 = *v7;
      type metadata accessor for UnitCount();
      v50 = swift_getObjCClassFromMetadata();
      v51 = [v50 baseUnit];
      v52 = v7;
      v45 = v78;
      sub_1B4D1741C();
      v53 = v52[3];
      v54 = [v50 baseUnit];
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
      v56 = v45 + v55[8];
      sub_1B4D1741C();
      v57 = v52[4];
      v58 = [v50 baseUnit];
      v59 = v45 + v55[9];
      sub_1B4D1741C();
      v60 = v52[2];
      v61 = [v50 baseUnit];
      v62 = v45 + v55[10];
      sub_1B4D1741C();
      v63 = v52[5];
      v64 = [v50 baseUnit];
      v65 = v45 + v55[11];
      sub_1B4D1741C();
      sub_1B4BF5E64(v52, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4BF5E64(v35, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      *(v45 + v55[7]) = v81;
      (*(*(v55 - 1) + 56))(v45, 0, 1, v55);
    }

    v66 = v83;
    *a2 = v77;
    a2[1] = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
    return sub_1B498B270(v45, a2 + *(v67 + 32), &qword_1EB8A8370, &unk_1B4D21F00);
  }

  return result;
}

uint64_t sub_1B4BE7074(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = a2[1];
  *a1 = *a2;
  v17 = sub_1B4BE6388(v16);
  v18 = *(a1 + 1);

  *(a1 + 1) = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4974FBC(a2 + *(v19 + 32), v10, &qword_1EB8A8370, &unk_1B4D21F00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1B4975024(v10, &qword_1EB8A8370, &unk_1B4D21F00);
  }

  v21 = sub_1B498B270(v10, v15, &qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v21);
  *(&v24 - 2) = v15;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v22 = v25;
  sub_1B4D17DAC();
  sub_1B4975024(v15, &qword_1EB8A6928, &qword_1B4D20480);
  v23 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B4975024(&a1[v23], &qword_1EB8A69A0, &qword_1B4D27A90);
  sub_1B4BF5D94(v22, &a1[v23], type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return (*(v26 + 56))(&a1[v23], 0, 1, v4);
}

uint64_t sub_1B4BE73D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v107 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v128 = v105 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v111 = *(v10 - 8);
  v11 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for LocalizedDate();
  v14 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v120 = v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v105 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B8, &unk_1B4D3B2E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v127 = v105 - v25;
  v110 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v26 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v126 = v105 - v30;
  v125 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v115 = *(v125 - 8);
  v31 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v33 = v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v108 = v105 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v132 = v105 - v37;
  v38 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v118 = *(v43 - 8);
  v119 = v43;
  v44 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v131 = v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v117 = v105 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v116 = v105 - v49;
  v50 = *a1;
  v51 = *(*a1 + 16);
  if (!v51)
  {
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    *v107 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v129 = v10;
  v130 = v33;
  v105[1] = v2;
  v106 = a1;
  v136 = MEMORY[0x1E69E7CC0];
  v123 = v51;
  v124 = v50;
  result = sub_1B4BCEF7C(0, v51, 0);
  v53 = 0;
  v54 = v124;
  v114 = v124 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v133 = v136;
  v115 += 56;
  v111 += 48;
  v113 = v22;
  v112 = v39;
  while (v53 < *(v54 + 16))
  {
    sub_1B4BF5DFC(v114 + *(v39 + 72) * v53, v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v55 = v126;
    sub_1B4974FBC(v42, v126, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v56 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {
      v134 = 0u;
      v135 = 0u;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v108;
        sub_1B4BF5D94(v55, v108, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        v58 = v125;
        *(&v135 + 1) = v125;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v134);
        sub_1B4BF5D94(v57, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        goto LABEL_10;
      }

      v60 = v55;
      v61 = v109;
      sub_1B4BF5D94(v60, v109, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      *(&v135 + 1) = v110;
      v62 = __swift_allocate_boxed_opaque_existential_1(&v134);
      sub_1B4BF5D94(v61, v62, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    }

    v58 = v125;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v63 = v127;
    v64 = swift_dynamicCast();
    v65 = *v115;
    if (!v64)
    {
      v65(v63, 1, 1, v58);
      sub_1B4975024(v63, &qword_1EB8A93B8, &unk_1B4D3B2E0);
      sub_1B4A089F0();
      swift_allocError();
      *v104 = 1;
      swift_willThrow();
      sub_1B4BF5E64(v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      sub_1B4BF5E64(v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    v66 = v53;
    v67 = v13;
    v68 = v42;
    v69 = v16;
    v65(v63, 0, 1, v58);
    v70 = v132;
    sub_1B4BF5D94(v63, v132, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v71 = v130;
    sub_1B4BF5DFC(v70, v130, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v72 = *v71;
    v73 = v71[1];
    sub_1B4D1778C();
    v74 = sub_1B4D177CC();
    v75 = v58;
    v76 = *(v74 - 8);
    result = (*(v76 + 48))(v22, 1, v74);
    if (result == 1)
    {
      goto LABEL_26;
    }

    (*(v76 + 32))(v131, v22, v74);
    v77 = v128;
    sub_1B4974FBC(v71 + *(v75 + 28), v128, &qword_1EB8A7158, &unk_1B4D20310);
    v78 = *v111;
    v79 = v129;
    if ((*v111)(v77, 1, v129) == 1)
    {
      v13 = v67;
      *v67 = 0;
      *(v67 + 8) = 0;
      *(v67 + 16) = 0;
      v80 = v67 + *(v79 + 36);
      sub_1B4D17BBC();
      v81 = (v67 + *(v79 + 40));
      *v81 = 0;
      v81[1] = 0;
      v82 = v78(v77, 1, v79);
      v83 = v122;
      v16 = v69;
      if (v82 != 1)
      {
        sub_1B4975024(v128, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      v13 = v67;
      sub_1B4BF5D94(v77, v67, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v83 = v122;
      v16 = v69;
    }

    v84 = *(v13 + 1);
    *&v85 = *v13;
    *(&v85 + 1) = HIDWORD(*v13);
    v86 = v85;
    *&v85 = v84;
    *(&v85 + 1) = SHIDWORD(v84);
    *v16 = v86;
    *(v16 + 1) = v85;
    *(v16 + 4) = *(v13 + 4);
    v87 = &v13[*(v129 + 40)];
    v42 = v68;
    if (*(v87 + 1))
    {
      v88 = *v87;
      v89 = *(v87 + 1);

      sub_1B4D1797C();

      sub_1B4BF5E64(v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B4BF5E64(v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v90 = sub_1B4D179BC();
      (*(*(v90 - 8) + 56))(v83, 1, 1, v90);
    }

    sub_1B498B270(v83, &v16[*(v121 + 36)], &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v91 = v120;
    sub_1B4BF5D94(v16, v120, type metadata accessor for LocalizedDate);
    v92 = v119;
    v93 = v131;
    sub_1B4BF5D94(v91, &v131[*(v119 + 28)], type metadata accessor for LocalizedDate);
    v94 = v130;
    v95 = v130[2];
    type metadata accessor for UnitPace();
    v96 = [swift_getObjCClassFromMetadata() baseUnit];
    v97 = v93 + *(v92 + 32);
    sub_1B4D1741C();
    sub_1B4BF5E64(v94, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v98 = v117;
    sub_1B498B270(v93, v117, &qword_1EB8A6CF8, &unk_1B4D1BC80);
    sub_1B4BF5E64(v132, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4BF5E64(v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v99 = v116;
    sub_1B498B270(v98, v116, &qword_1EB8A6CF8, &unk_1B4D1BC80);
    v100 = v133;
    v136 = v133;
    v102 = *(v133 + 16);
    v101 = *(v133 + 24);
    if (v102 >= v101 >> 1)
    {
      sub_1B4BCEF7C(v101 > 1, v102 + 1, 1);
      v100 = v136;
    }

    v53 = v66 + 1;
    *(v100 + 16) = v102 + 1;
    v103 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v133 = v100;
    result = sub_1B498B270(v99, v100 + v103 + *(v118 + 72) * v102, &qword_1EB8A6CF8, &unk_1B4D1BC80);
    v54 = v124;
    v22 = v113;
    v39 = v112;
    if (v123 == v66 + 1)
    {
      result = sub_1B4BF5E64(v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *v107 = v133;
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B4BE8108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, double)@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v142 = a5;
  v143 = a6;
  v123 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v121 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = v121 - v18;
  v139 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v131 = *(v139 - 8);
  v19 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v21 = v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for LocalizedDate();
  v22 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v150 = (v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v137 = v121 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v148 = v121 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B8, &unk_1B4D3B2E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v147 = v121 - v31;
  v126 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v32 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v146 = v121 - v36;
  v145 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v133 = *(v145 - 8);
  v37 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v39 = (v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v124 = v121 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v151 = v121 - v43;
  v44 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v153 = v121 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v135 = *(v136 - 8);
  v48 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v149 = v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v134 = v121 - v51;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v55 = *a1;
  v56 = *(*a1 + 16);
  if (!v56)
  {
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    *v123 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v129 = a2;
  v121[1] = v7;
  v122 = a1;
  v156 = MEMORY[0x1E69E7CC0];
  v130 = v121 - v53;
  v144 = v56;
  result = a4(0, v56, 0, v54);
  v58 = 0;
  v132 = v55 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v152 = v156;
  v133 += 56;
  v131 += 48;
  v121[0] = a4;
  v128 = v45;
  v127 = v55;
  while (v58 < *(v55 + 16))
  {
    v59 = v153;
    sub_1B4BF5DFC(v132 + *(v45 + 72) * v58, v153, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v60 = v146;
    sub_1B4974FBC(v59, v146, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v61 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {
      v154 = 0u;
      v155 = 0u;
      v63 = v147;
      v62 = v148;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v63 = v147;
      v62 = v148;
      if (EnumCaseMultiPayload == 1)
      {
        v65 = v39;
        v66 = v15;
        v67 = v124;
        sub_1B4BF5D94(v60, v124, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        v68 = v145;
        *(&v155 + 1) = v145;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v154);
        v70 = v67;
        v15 = v66;
        v39 = v65;
        sub_1B4BF5D94(v70, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        goto LABEL_10;
      }

      v71 = v60;
      v72 = v125;
      sub_1B4BF5D94(v71, v125, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      *(&v155 + 1) = v126;
      v73 = __swift_allocate_boxed_opaque_existential_1(&v154);
      sub_1B4BF5D94(v72, v73, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    }

    v68 = v145;
LABEL_10:
    v74 = v133;
    v75 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v76 = swift_dynamicCast();
    v77 = *v74;
    if (!v76)
    {
      v77(v63, 1, 1, v68);
      sub_1B4975024(v63, &qword_1EB8A93B8, &unk_1B4D3B2E0);
      sub_1B4A089F0();
      swift_allocError();
      *v120 = 1;
      swift_willThrow();
      sub_1B4BF5E64(v153, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      sub_1B4BF5E64(v122, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    v77(v63, 0, 1, v68);
    v78 = v63;
    v79 = v151;
    sub_1B4BF5D94(v78, v151, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4BF5DFC(v79, v39, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v80 = *v39;
    v81 = v39[1];
    sub_1B4D1778C();
    v82 = sub_1B4D177CC();
    v83 = v68;
    v84 = *(v82 - 8);
    result = (*(v84 + 48))(v62, 1, v82);
    if (result == 1)
    {
      goto LABEL_26;
    }

    (*(v84 + 32))(v149, v62, v82);
    v85 = v39 + *(v83 + 28);
    v86 = v140;
    sub_1B4974FBC(v85, v140, &qword_1EB8A7158, &unk_1B4D20310);
    v87 = *v75;
    v88 = v139;
    if ((*v75)(v86, 1, v139) == 1)
    {
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v21 + 4) = 0;
      v89 = &v21[*(v88 + 36)];
      sub_1B4D17BBC();
      v90 = &v21[*(v88 + 40)];
      *v90 = 0;
      *(v90 + 1) = 0;
      v91 = v87(v86, 1, v88);
      v92 = v141;
      if (v91 != 1)
      {
        sub_1B4975024(v86, &qword_1EB8A7158, &unk_1B4D20310);
      }
    }

    else
    {
      sub_1B4BF5D94(v86, v21, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v92 = v141;
    }

    v93 = *(v21 + 1);
    *&v94 = *v21;
    *(&v94 + 1) = HIDWORD(*v21);
    v95 = v94;
    *&v94 = v93;
    *(&v94 + 1) = SHIDWORD(v93);
    v96 = v150;
    *v150 = v95;
    v96[1] = v94;
    *(v96 + 4) = *(v21 + 4);
    v97 = &v21[*(v88 + 40)];
    if (*(v97 + 1))
    {
      v98 = *v97;
      v99 = *(v97 + 1);

      sub_1B4D1797C();

      sub_1B4BF5E64(v21, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    }

    else
    {
      sub_1B4BF5E64(v21, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v100 = sub_1B4D179BC();
      (*(*(v100 - 8) + 56))(v15, 1, 1, v100);
    }

    v101 = v150;
    v102 = v15;
    sub_1B498B270(v15, v150 + *(v138 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v103 = v101;
    v104 = v137;
    sub_1B4BF5D94(v103, v137, type metadata accessor for LocalizedDate);
    v105 = v136;
    v106 = v149;
    sub_1B4BF5D94(v104, &v149[*(v136 + 28)], type metadata accessor for LocalizedDate);
    v107 = v39[2];
    sub_1B498AFB8(0, v142, v143);
    v108 = [swift_getObjCClassFromMetadata() baseUnit];
    v109 = &v106[*(v105 + 32)];
    sub_1B4D1741C();
    sub_1B4BF5E64(v39, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v110 = v106;
    v111 = v134;
    v112 = v129;
    sub_1B498B270(v110, v134, v129, v92);
    sub_1B4BF5E64(v151, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4BF5E64(v153, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
    v113 = v111;
    v114 = v130;
    sub_1B498B270(v113, v130, v112, v92);
    v115 = v152;
    v156 = v152;
    v116 = v92;
    v118 = *(v152 + 16);
    v117 = *(v152 + 24);
    if (v118 >= v117 >> 1)
    {
      (v121[0])(v117 > 1, v118 + 1, 1);
      v114 = v130;
      v115 = v156;
    }

    ++v58;
    *(v115 + 16) = v118 + 1;
    v119 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v152 = v115;
    result = sub_1B498B270(v114, v115 + v119 + *(v135 + 72) * v118, v112, v116);
    v15 = v102;
    v45 = v128;
    v55 = v127;
    if (v144 == v58)
    {
      result = sub_1B4BF5E64(v122, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *v123 = v152;
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B4BE8E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B0, &unk_1B4D27AB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v56 - v8;
  v61 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v56 - v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v70 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v56 - v22;
  v23 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v74 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v67 = *(v27 - 8);
  v28 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v71 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = *a1;
  v33 = *(*a1 + 16);
  if (v33)
  {
    v65 = &v56 - v31;
    v57 = a2;
    v58 = a1;
    v78 = MEMORY[0x1E69E7CC0];
    v63 = v33;
    result = sub_1B4BCEF9C(0, v33, 0);
    v35 = 0;
    v68 = v32 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v36 = v78;
    v69 = (v16 + 56);
    v72 = v15;
    v66 = v24;
    v64 = v32;
    while (v35 < *(v32 + 16))
    {
      v37 = v74;
      sub_1B4BF5DFC(v68 + *(v24 + 72) * v35, v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      v38 = v75;
      sub_1B4974FBC(v37, v75, &qword_1EB8A7BC8, &unk_1B4D1FD60);
      v39 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        v76 = 0u;
        v77 = 0u;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v40 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
          v41 = v60;
          sub_1B4BF5D94(v75, v60, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
          *(&v77 + 1) = v61;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
          v43 = v41;
          v15 = v72;
        }

        else
        {
          v40 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
          v62 = v3;
          v44 = v59;
          sub_1B4BF5D94(v75, v59, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
          *(&v77 + 1) = v15;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
          v43 = v44;
          v3 = v62;
        }

        sub_1B4BF5D94(v43, boxed_opaque_existential_1, v40);
      }

      v45 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
      v46 = swift_dynamicCast();
      v47 = *v45;
      v48 = v71;
      if (!v46)
      {
        v47(v9, 1, 1, v15);
        sub_1B4975024(v9, &qword_1EB8A93B0, &unk_1B4D27AB0);
        sub_1B4A089F0();
        swift_allocError();
        *v55 = 1;
        swift_willThrow();
LABEL_19:
        sub_1B4BF5E64(v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
        sub_1B4BF5E64(v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      }

      v47(v9, 0, 1, v15);
      v49 = v73;
      sub_1B4BF5D94(v9, v73, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v50 = v70;
      sub_1B4BF5DFC(v49, v70, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      sub_1B4BEA208(v50, v48);
      if (v3)
      {
        sub_1B4BF5E64(v73, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        goto LABEL_19;
      }

      v51 = v9;
      sub_1B4BF5E64(v73, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      sub_1B4BF5E64(v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      v52 = v65;
      sub_1B498B270(v48, v65, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v78 = v36;
      v54 = *(v36 + 16);
      v53 = *(v36 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1B4BCEF9C(v53 > 1, v54 + 1, 1);
        v36 = v78;
      }

      ++v35;
      *(v36 + 16) = v54 + 1;
      result = sub_1B498B270(v52, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v54, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v32 = v64;
      v9 = v51;
      v15 = v72;
      v24 = v66;
      if (v63 == v35)
      {
        result = sub_1B4BF5E64(v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        *v57 = v36;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B4BE961C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v35 = a5;
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
  v33 = *(v16 - 8);
  v34 = v16;
  v17 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  if (v20)
  {
    v30 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF51C(0, v20, 0);
    v38 = v39;
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v31 = *(v12 + 72);
    v32 = v15;
    while (1)
    {
      v37 = v20;
      v22 = sub_1B4974FBC(v21, v15, a3, a4);
      MEMORY[0x1EEE9AC00](v22);
      *(&v29 - 2) = v15;
      sub_1B4BF5CF8(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      sub_1B4D17DAC();
      if (v8)
      {
        break;
      }

      v36 = 0;
      sub_1B4975024(v15, a3, a4);
      v23 = v38;
      v39 = v38;
      v25 = *(v38 + 16);
      v24 = *(v38 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B4BCF51C(v24 > 1, v25 + 1, 1);
        v23 = v39;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = v23;
      sub_1B4BF5D94(v19, v23 + v26 + *(v33 + 72) * v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
      v21 += v31;
      v20 = v37 - 1;
      v15 = v32;
      v8 = v36;
      if (v37 == 1)
      {
        a1 = v30;
        goto LABEL_10;
      }
    }

    sub_1B4975024(v15, a3, a4);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v28 = *a1;

    *a1 = v38;
  }

  return result;
}

uint64_t sub_1B4BE9948(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4BF5CF8(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BE9B08(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BE9CC8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BE9E88(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BEA048(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4BF5CF8(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BEA208@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v80 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v83 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for LocalizedDate();
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v88 = &v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC1F0, &qword_1B4D3B2D8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v80 - v20;
  v22 = type metadata accessor for DistanceSampleIntervalRecord();
  v90 = *(v22 - 1);
  v23 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = (&v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v80 - v34;
  v81 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v36 = *(v81 + 20);
  v93 = a1;
  sub_1B4974FBC(a1 + v36, v35, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v37 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  if ((*(*(v37 - 8) + 48))(v35, 1, v37) == 1)
  {
    v95 = 0u;
    v96 = 0u;
  }

  else
  {
    sub_1B4BF5D94(v35, v31, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4BF5DFC(v31, v28, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    *(&v96 + 1) = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
    *boxed_opaque_existential_1 = *v28;
    boxed_opaque_existential_1[1] = v28[1];
    v39 = v28[2];
    v40 = objc_opt_self();
    v41 = [v40 meters];
    v80 = v2;
    v42 = v22[6];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    v43 = v28[3];
    v44 = [v40 meters];
    v45 = boxed_opaque_existential_1 + v22[7];
    sub_1B4D1741C();
    v46 = v28[4];
    v47 = [objc_opt_self() seconds];
    v48 = v22[8];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    sub_1B4BF5E64(v28, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4BF5E64(v31, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  sub_1B4974FBC(&v95, v94, &qword_1EB8A6DE8, &qword_1B4D1FC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v49 = swift_dynamicCast();
  v50 = v91;
  v51 = *(v90 + 56);
  v53 = v92;
  v52 = v93;
  if (v49)
  {
    v51(v21, 0, 1, v22);
    sub_1B4BF5D94(v21, v89, type metadata accessor for DistanceSampleIntervalRecord);
    v54 = *v52;
    v55 = v52[1];
    v56 = v88;
    sub_1B4D1778C();
    v57 = sub_1B4D177CC();
    v58 = *(v57 - 8);
    result = (*(v58 + 48))(v56, 1, v57);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v60 = v87;
      (*(v58 + 32))(v87, v56, v57);
      v61 = v82;
      sub_1B4974FBC(v52 + *(v81 + 28), v82, &qword_1EB8A7158, &unk_1B4D20310);
      v62 = *(v50 + 48);
      v63 = v62(v61, 1, v53);
      v64 = v85;
      v65 = v83;
      if (v63 == 1)
      {
        *v83 = 0;
        v65[1] = 0;
        *(v65 + 4) = 0;
        v66 = v65 + *(v53 + 36);
        sub_1B4D17BBC();
        v67 = (v65 + *(v53 + 40));
        *v67 = 0;
        v67[1] = 0;
        v68 = v62(v61, 1, v53) == 1;
        v69 = v61;
        v70 = v86;
        if (!v68)
        {
          sub_1B4975024(v69, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4BF5D94(v61, v83, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v70 = v86;
      }

      v72 = v65[1];
      *&v73 = *v65;
      *(&v73 + 1) = HIDWORD(*v65);
      v74 = v73;
      *&v73 = v72;
      *(&v73 + 1) = SHIDWORD(v72);
      *v64 = v74;
      *(v64 + 16) = v73;
      *(v64 + 32) = *(v65 + 4);
      v75 = (v65 + *(v53 + 40));
      if (v75[1])
      {
        v76 = *v75;
        v77 = v75[1];

        sub_1B4D1797C();

        sub_1B4BF5E64(v65, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4BF5E64(v65, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v78 = sub_1B4D179BC();
        (*(*(v78 - 8) + 56))(v70, 1, 1, v78);
      }

      sub_1B498B270(v70, v64 + *(v84 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
      sub_1B4975024(&v95, &qword_1EB8A6DE8, &qword_1B4D1FC10);
      sub_1B4BF5E64(v52, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4BF5D94(v64, v60 + *(v79 + 36), type metadata accessor for LocalizedDate);
      return sub_1B4BF5D94(v89, v60 + *(v79 + 40), type metadata accessor for DistanceSampleIntervalRecord);
    }
  }

  else
  {
    v51(v21, 1, 1, v22);
    sub_1B4975024(v21, &qword_1EB8AC1F0, &qword_1B4D3B2D8);
    sub_1B4A089F0();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
    sub_1B4975024(&v95, &qword_1EB8A6DE8, &qword_1B4D1FC10);
    return sub_1B4BF5E64(v52, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  return result;
}

uint64_t sub_1B4BEABB4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v31 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1779C();
  v17 = v16;
  v18 = a1[1];

  *a1 = v15;
  a1[1] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v33 = a2 + *(v19 + 36);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v20 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v21 = *(v20 + 28);
  sub_1B4975024(a1 + v21, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v14, a1 + v21, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v11 + 56))(a1 + v21, 0, 1, v10);
  v22 = *(v19 + 40);
  v23 = sub_1B4BF5CF8(&qword_1EDC388E0, type metadata accessor for DistanceSampleIntervalRecord);
  v24 = *(v23 + 32);
  v25 = type metadata accessor for DistanceSampleIntervalRecord();
  v26 = v34;
  result = v24(v25, v23);
  if (!v2)
  {
    v28 = v32;
    sub_1B4BF5D94(v26, v32, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    v29 = *(v20 + 20);
    sub_1B4975024(a1 + v29, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4BF5D94(v28, a1 + v29, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    v30 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
    return (*(*(v30 - 8) + 56))(a1 + v29, 0, 1, v30);
  }

  return result;
}

uint64_t sub_1B4BEAF04(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1779C();
  v15 = v14;
  v16 = a1[1];

  *a1 = v13;
  a1[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v27 = a2 + *(v17 + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v18 = v25;
  sub_1B4D17DAC();
  v25 = v18;
  v19 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v19, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v12, a1 + v19, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v19, 0, 1, v8);
  v20 = *(v17 + 32);
  type metadata accessor for UnitPace();
  v21 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v23 = v22;
  result = (*(v26 + 8))(v7, v4);
  a1[2] = v23;
  return result;
}

uint64_t sub_1B4BEB1D0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1779C();
  v15 = v14;
  v16 = a1[1];

  *a1 = v13;
  a1[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v27 = a2 + *(v17 + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v18 = v25;
  sub_1B4D17DAC();
  v25 = v18;
  v19 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v19, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v12, a1 + v19, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v19, 0, 1, v8);
  v20 = *(v17 + 32);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v21 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v23 = v22;
  result = (*(v26 + 8))(v7, v4);
  a1[2] = v23;
  return result;
}

uint64_t sub_1B4BEB4AC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1779C();
  v15 = v14;
  v16 = a1[1];

  *a1 = v13;
  a1[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v27 = a2 + *(v17 + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v18 = v25;
  sub_1B4D17DAC();
  v25 = v18;
  v19 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v19, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v12, a1 + v19, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v19, 0, 1, v8);
  v20 = *(v17 + 32);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v21 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v23 = v22;
  result = (*(v26 + 8))(v7, v4);
  a1[2] = v23;
  return result;
}

uint64_t sub_1B4BEB788(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1779C();
  v15 = v14;
  v16 = a1[1];

  *a1 = v13;
  a1[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72E0, &unk_1B4D1D790);
  v27 = a2 + *(v17 + 28);
  sub_1B4BF5CF8(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v18 = v25;
  sub_1B4D17DAC();
  v25 = v18;
  v19 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  sub_1B4975024(a1 + v19, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4BF5D94(v12, a1 + v19, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(a1 + v19, 0, 1, v8);
  v20 = *(v17 + 32);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v21 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v23 = v22;
  result = (*(v26 + 8))(v7, v4);
  a1[2] = v23;
  return result;
}

uint64_t WorkoutProperty.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBBA4()
{
  v2 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBD24()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBED0()
{
  v2 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEBFAC()
{
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BEC0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for WorkoutDistanceStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for WorkoutDistanceStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BEC28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for PaceStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for PaceStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for PaceStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BEC470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for ElevationGainStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for ElevationGainStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for ElevationGainStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BEC654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for AverageHeartRateStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for AverageHeartRateStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BEC838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for DiveDepthStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for DiveDepthStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for DiveDepthStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BECA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BECC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for WorkoutDurationStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for WorkoutDurationStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BECDE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v11, type metadata accessor for WeatherTemperatureStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v15 = v11;
  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4BF5E64(v11, type metadata accessor for WeatherTemperatureStatisticsProperty);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1B4BF0A84(v7, a1);
}

uint64_t sub_1B4BECFC8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-v7];
  v9 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BF5DFC(a2, v12, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v16 = v12;
  sub_1B4BF5CF8(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  sub_1B4D17DAC();
  result = sub_1B4BF5E64(v12, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  if (!v2)
  {
    v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    return sub_1B4BF0A84(v8, a1);
  }

  return result;
}

uint64_t sub_1B4BED1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v182 = a1;
  v152 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
  v5 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v156 = v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = v150 - v8;
  v159 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
  v9 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v158 = v150 - v12;
  v162 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v13 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = v150 - v16;
  v165 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  v17 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v164 = v150 - v20;
  v168 = type metadata accessor for DiveDepthStatisticsProperty(0);
  v21 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v166 = v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v167 = v150 - v24;
  v171 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
  v25 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v169 = v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v170 = v150 - v28;
  v174 = type metadata accessor for ElevationGainStatisticsProperty(0);
  v29 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v172 = v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v173 = v150 - v32;
  v177 = type metadata accessor for PaceStatisticsProperty(0);
  v33 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v175 = v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v176 = v150 - v36;
  v180 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  v37 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v178 = v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v150 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v151 = v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v153 = v150 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v155 = v150 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v179 = v150 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v181 = v150 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v150 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = v150 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v150 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v150 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = v150 - v66;
  v68 = *(*(a3 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v69);
  v72 = v150 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v73;
  v74 = *(v73 + 16);
  v150[1] = a2;
  v74(v72, a2, a3, v70);
  if (!swift_dynamicCast())
  {
    v80 = a3;
    if (swift_dynamicCast())
    {
      v79 = a3;
      v81 = DynamicType;
      v82 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v82);
      v150[-2] = v81;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v83 = v186;
      sub_1B4D17DAC();

      if (v83)
      {
        return (*(v183 + 8))(v72, v79);
      }

      v84 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v84 - 8) + 56))(v64, 0, 1, v84);
      v85 = v64;
      goto LABEL_7;
    }

    if (swift_dynamicCast())
    {
      v86 = DynamicType;
      v87 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v87);
      v150[-2] = v86;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v88 = v186;
      sub_1B4D17DAC();
      if (v88)
      {

        v79 = a3;
        return (*(v183 + 8))(v72, v79);
      }

      v99 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v99 - 8) + 56))(v61, 0, 1, v99);
      sub_1B4BF0A84(v61, v182);
      return (*(v183 + 8))(v72, v80);
    }

    if (swift_dynamicCast())
    {
      v79 = a3;
      v91 = DynamicType;
      v92 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v92);
      v150[-2] = v91;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v93 = v186;
      sub_1B4D17DAC();
      if (!v93)
      {

        v94 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v94 - 8) + 56))(v58, 0, 1, v94);
        v85 = v58;
LABEL_7:
        sub_1B4BF0A84(v85, v182);
        v80 = v79;
        return (*(v183 + 8))(v72, v80);
      }
    }

    else if (swift_dynamicCast())
    {
      v79 = a3;
      v95 = DynamicType;
      v96 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v96);
      v150[-2] = v95;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v97 = v186;
      sub_1B4D17DAC();
      if (!v97)
      {

        v98 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v98 - 8) + 56))(v55, 0, 1, v98);
        v85 = v55;
        goto LABEL_7;
      }
    }

    else
    {
      v100 = swift_dynamicCast();
      v101 = v186;
      if (!v100)
      {
        if (swift_dynamicCast())
        {
          v105 = v178;
          sub_1B4BF5D94(v41, v178, type metadata accessor for WorkoutDistanceStatisticsProperty);
          v106 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
          MEMORY[0x1EEE9AC00](v106);
          v150[-2] = v105;
          sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
          v107 = v179;
          sub_1B4D17DAC();
          sub_1B4BF5E64(v105, type metadata accessor for WorkoutDistanceStatisticsProperty);
          v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        }

        else
        {
          v109 = v176;
          if (swift_dynamicCast())
          {
            v110 = v175;
            sub_1B4BF5D94(v109, v175, type metadata accessor for PaceStatisticsProperty);
            v111 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
            MEMORY[0x1EEE9AC00](v111);
            v150[-2] = v110;
            sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
            v107 = v179;
            sub_1B4D17DAC();
            sub_1B4BF5E64(v110, type metadata accessor for PaceStatisticsProperty);
            v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
          }

          else
          {
            v113 = v173;
            if (swift_dynamicCast())
            {
              v114 = v172;
              sub_1B4BF5D94(v113, v172, type metadata accessor for ElevationGainStatisticsProperty);
              v115 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
              MEMORY[0x1EEE9AC00](v115);
              v150[-2] = v114;
              sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
              v107 = v179;
              sub_1B4D17DAC();
              sub_1B4BF5E64(v114, type metadata accessor for ElevationGainStatisticsProperty);
              v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
            }

            else
            {
              v116 = v170;
              if (swift_dynamicCast())
              {
                v117 = v169;
                sub_1B4BF5D94(v116, v169, type metadata accessor for AverageHeartRateStatisticsProperty);
                v118 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                MEMORY[0x1EEE9AC00](v118);
                v150[-2] = v117;
                sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                v107 = v179;
                sub_1B4D17DAC();
                sub_1B4BF5E64(v117, type metadata accessor for AverageHeartRateStatisticsProperty);
                v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
              }

              else
              {
                v119 = v167;
                if (swift_dynamicCast())
                {
                  v120 = v166;
                  sub_1B4BF5D94(v119, v166, type metadata accessor for DiveDepthStatisticsProperty);
                  v121 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                  MEMORY[0x1EEE9AC00](v121);
                  v150[-2] = v120;
                  sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                  v107 = v179;
                  sub_1B4D17DAC();
                  sub_1B4BF5E64(v120, type metadata accessor for DiveDepthStatisticsProperty);
                  v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                }

                else
                {
                  v122 = v164;
                  if (swift_dynamicCast())
                  {
                    v123 = v163;
                    sub_1B4BF5D94(v122, v163, type metadata accessor for WorkoutCaloriesStatisticsProperty);
                    v124 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                    MEMORY[0x1EEE9AC00](v124);
                    v150[-2] = v123;
                    sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                    v107 = v179;
                    sub_1B4D17DAC();
                    sub_1B4BF5E64(v123, type metadata accessor for WorkoutCaloriesStatisticsProperty);
                    v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                  }

                  else
                  {
                    v125 = v161;
                    if (swift_dynamicCast())
                    {
                      v126 = v160;
                      sub_1B4BF5D94(v125, v160, type metadata accessor for WorkoutDurationStatisticsProperty);
                      v127 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                      MEMORY[0x1EEE9AC00](v127);
                      v150[-2] = v126;
                      sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                      v107 = v179;
                      sub_1B4D17DAC();
                      sub_1B4BF5E64(v126, type metadata accessor for WorkoutDurationStatisticsProperty);
                      v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                    }

                    else
                    {
                      v128 = v158;
                      if (!swift_dynamicCast())
                      {
                        v131 = v156;
                        v79 = a3;
                        if (swift_dynamicCast())
                        {
                          v132 = DynamicType;
                          v133 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v133);
                          v150[-2] = v132;
                          sub_1B4BF5CF8(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
                          v134 = v179;
                          sub_1B4D17DAC();
                          v135 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                        }

                        else if (swift_dynamicCast())
                        {
                          v136 = DynamicType;
                          v137 = v185;
                          v138 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v138);
                          v150[-2] = v136;
                          v150[-1] = v137;
                          sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
                          v139 = v186;
                          sub_1B4D17DAC();
                          if (v139)
                          {
                            goto LABEL_22;
                          }

                          v135 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                          v134 = v155;
                        }

                        else if (swift_dynamicCast())
                        {
                          v140 = DynamicType;
                          v141 = v185;
                          v142 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v142);
                          v150[-2] = v140;
                          v150[-1] = v141;
                          sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
                          v143 = v186;
                          sub_1B4D17DAC();
                          if (v143)
                          {
                            goto LABEL_22;
                          }

                          v135 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                          v134 = v153;
                        }

                        else
                        {
                          if (!swift_dynamicCast())
                          {
                            DynamicType = swift_getDynamicType();
                            swift_getMetatypeMetadata();
                            v146 = sub_1B4D181AC();
                            v148 = v147;
                            sub_1B4BF5CA4();
                            swift_allocError();
                            *v149 = v146;
                            v149[1] = v148;
                            swift_willThrow();
                            return (*(v183 + 8))(v72, v79);
                          }

                          sub_1B4BF5D94(v154, v131, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
                          v144 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
                          MEMORY[0x1EEE9AC00](v144);
                          v150[-2] = v131;
                          sub_1B4BF5CF8(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
                          v145 = v186;
                          sub_1B4D17DAC();
                          if (v145)
                          {
                            sub_1B4BF5E64(v131, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
                            return (*(v183 + 8))(v72, v79);
                          }

                          sub_1B4BF5E64(v131, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
                          v135 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                          v134 = v151;
                        }

                        swift_storeEnumTagMultiPayload();
                        (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
                        v85 = v134;
                        goto LABEL_7;
                      }

                      v129 = v157;
                      sub_1B4BF5D94(v128, v157, type metadata accessor for WeatherTemperatureStatisticsProperty);
                      v130 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
                      MEMORY[0x1EEE9AC00](v130);
                      v150[-2] = v129;
                      sub_1B4BF5CF8(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
                      v107 = v179;
                      sub_1B4D17DAC();
                      sub_1B4BF5E64(v129, type metadata accessor for WeatherTemperatureStatisticsProperty);
                      v108 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
                    }
                  }
                }
              }
            }
          }
        }

        swift_storeEnumTagMultiPayload();
        (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
        sub_1B4BF0A84(v107, v182);
        return (*(v183 + 8))(v72, v80);
      }

      v79 = a3;
      v102 = DynamicType;
      v103 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
      MEMORY[0x1EEE9AC00](v103);
      v150[-2] = v102;
      sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v104 = v181;
      sub_1B4D17DAC();
      if (!v101)
      {

        v112 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v112 - 8) + 56))(v104, 0, 1, v112);
        v85 = v104;
        goto LABEL_7;
      }
    }

LABEL_22:

    return (*(v183 + 8))(v72, v79);
  }

  v75 = DynamicType;
  v76 = v185;
  v77 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v77);
  v150[-2] = v75;
  v150[-1] = v76;
  sub_1B4BF5CF8(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v78 = v186;
  sub_1B4D17DAC();

  if (!v78)
  {
    v89 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v89 - 8) + 56))(v67, 0, 1, v89);
    sub_1B4BF0A84(v67, v182);
    v80 = a3;
    return (*(v183 + 8))(v72, v80);
  }

  v79 = a3;
  return (*(v183 + 8))(v72, v79);
}

uint64_t static WorkoutPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4BF5CF8(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  result = sub_1B4D17D7C();
  if (!v3)
  {
    sub_1B4BEEFE8(v12, a3);
    return sub_1B4BF5E64(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  return result;
}

uint64_t sub_1B4BEEFE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v249 = a1;
  v247 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v244 = (&v231 - v4);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v242 = (&v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v243 = &v231 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v241 = (&v231 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v245 = (&v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v246 = &v231 - v17;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v238 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v240 = &v231 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v237 = &v231 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v239 = &v231 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v235 = &v231 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v236 = &v231 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v233 = &v231 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v234 = &v231 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v231 = &v231 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v232 = &v231 - v38;
  v39 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v231 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v231 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v231 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v231 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v231 - v53);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v231 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v61 = &v231 - v60;
  sub_1B4974FBC(v249, &v231 - v60, &qword_1EB8A7CC8, &qword_1B4D20180);
  v62 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
  {
    sub_1B4BF5CA4();
    swift_allocError();
    *v63 = 0;
    v63[1] = 0;
    return swift_willThrow();
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v154 = v61;
        v155 = v232;
        sub_1B4BF5D94(v154, v232, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v156 = v231;
        sub_1B4BF5DFC(v155, v231, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v157 = v248;
        sub_1B4BE73D8(v156, &v250);
        result = sub_1B4BF5E64(v155, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (!v157)
        {
          v98 = v250;
          v99 = v247;
          v247[3] = &type metadata for FastestPaceProperty;
          result = sub_1B4AE5EE8();
          goto LABEL_39;
        }

        return result;
      case 2u:
        v130 = v61;
        v131 = v234;
        sub_1B4BF5D94(v130, v234, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v132 = v233;
        sub_1B4BF5DFC(v131, v233, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v133 = v248;
        sub_1B4BE8108(v132, &qword_1EB8A6818, &unk_1B4D1AB30, sub_1B4BCEF5C, &qword_1EDC3CB80, 0x1E696B058, &v250);
        result = sub_1B4BF5E64(v131, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (!v133)
        {
          v98 = v250;
          v99 = v247;
          v247[3] = &type metadata for LongestDistanceProperty;
          result = sub_1B498ADA8();
          goto LABEL_39;
        }

        return result;
      case 3u:
        v135 = v61;
        v136 = v236;
        sub_1B4BF5D94(v135, v236, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v137 = v235;
        sub_1B4BF5DFC(v136, v235, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v138 = v248;
        sub_1B4BE8108(v137, &qword_1EB8A6818, &unk_1B4D1AB30, sub_1B4BCEF5C, &qword_1EDC3CB80, 0x1E696B058, &v250);
        result = sub_1B4BF5E64(v136, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (!v138)
        {
          v98 = v250;
          v99 = v247;
          v247[3] = &type metadata for GreatestElevationProperty;
          result = sub_1B4AE5F90();
          goto LABEL_39;
        }

        return result;
      case 4u:
        v94 = v61;
        v95 = v239;
        sub_1B4BF5D94(v94, v239, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v96 = v237;
        sub_1B4BF5DFC(v95, v237, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v97 = v248;
        sub_1B4BE8108(v96, &qword_1EB8A6CF0, &unk_1B4D1BC70, sub_1B4BCEF3C, &qword_1EDC378C8, 0x1E696B030, &v250);
        if (v97)
        {
          goto LABEL_26;
        }

        sub_1B4BF5E64(v95, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v98 = v250;
        v99 = v247;
        v247[3] = &type metadata for MostCaloriesBurnedProperty;
        result = sub_1B4AE5FE4();
        goto LABEL_39;
      case 5u:
        v163 = v61;
        v95 = v240;
        sub_1B4BF5D94(v163, v240, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v164 = v238;
        sub_1B4BF5DFC(v95, v238, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v165 = v248;
        sub_1B4BE8108(v164, &qword_1EB8A72E0, &unk_1B4D1D790, sub_1B4BCEF1C, &qword_1EDC378C0, 0x1E696B008, &v250);
        if (v165)
        {
LABEL_26:
          v162 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          return sub_1B4BF5E64(v95, v162);
        }

        sub_1B4BF5E64(v95, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        v98 = v250;
        v99 = v247;
        v247[3] = &type metadata for GreatestDurationProperty;
        result = sub_1B4AE6038();
LABEL_39:
        v99[4] = result;
        *v99 = v98;
        return result;
      case 6u:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v181 = *v74;
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v183 = [ObjCClassFromMetadata baseUnit];
        v184 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
        v185 = v247;
        v247[3] = v184;
        v185[4] = sub_1B4BF5CF8(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v185);
        sub_1B4D1741C();
        v186 = v74[3];
        v187 = [ObjCClassFromMetadata baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        v188 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v189 = v74[4];
        v190 = [ObjCClassFromMetadata baseUnit];
        v191 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v192 = v74[2];
        v193 = [ObjCClassFromMetadata baseUnit];
        v194 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v195 = v74[5];
        v93 = [ObjCClassFromMetadata baseUnit];
        goto LABEL_32;
      case 7u:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v139 = *v74;
        type metadata accessor for UnitPace();
        v140 = swift_getObjCClassFromMetadata();
        v141 = [v140 baseUnit];
        v142 = type metadata accessor for PaceStatisticsProperty(0);
        v143 = v247;
        v247[3] = v142;
        v143[4] = sub_1B4BF5CF8(&qword_1EDC392B0, type metadata accessor for PaceStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v143);
        sub_1B4D1741C();
        v144 = v74[3];
        v145 = [v140 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
        v146 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v147 = v74[4];
        v148 = [v140 baseUnit];
        v149 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v150 = v74[2];
        v151 = [v140 baseUnit];
        v152 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v153 = v74[5];
        v93 = [v140 baseUnit];
        goto LABEL_32;
      case 8u:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v211 = *v74;
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v212 = swift_getObjCClassFromMetadata();
        v213 = [v212 baseUnit];
        v214 = type metadata accessor for ElevationGainStatisticsProperty(0);
        v215 = v247;
        v247[3] = v214;
        v215[4] = sub_1B4BF5CF8(&qword_1EDC38270, type metadata accessor for ElevationGainStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v215);
        sub_1B4D1741C();
        v216 = v74[3];
        v217 = [v212 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        v218 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v219 = v74[4];
        v220 = [v212 baseUnit];
        v221 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v222 = v74[2];
        v223 = [v212 baseUnit];
        v224 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v225 = v74[5];
        v93 = [v212 baseUnit];
        goto LABEL_32;
      case 9u:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v115 = *v74;
        sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
        v116 = swift_getObjCClassFromMetadata();
        v117 = [v116 baseUnit];
        v118 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
        v119 = v247;
        v247[3] = v118;
        v119[4] = sub_1B4BF5CF8(&qword_1EDC37E90, type metadata accessor for AverageHeartRateStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v119);
        sub_1B4D1741C();
        v120 = v74[3];
        v121 = [v116 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
        v122 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v123 = v74[4];
        v124 = [v116 baseUnit];
        v125 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v126 = v74[2];
        v127 = [v116 baseUnit];
        v128 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v129 = v74[5];
        v93 = [v116 baseUnit];
        goto LABEL_32;
      case 0xAu:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v196 = *v74;
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v197 = swift_getObjCClassFromMetadata();
        v198 = [v197 baseUnit];
        v199 = type metadata accessor for DiveDepthStatisticsProperty(0);
        v200 = v247;
        v247[3] = v199;
        v200[4] = sub_1B4BF5CF8(&qword_1EDC38A68, type metadata accessor for DiveDepthStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v200);
        sub_1B4D1741C();
        v201 = v74[3];
        v202 = [v197 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        v203 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v204 = v74[4];
        v205 = [v197 baseUnit];
        v206 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v207 = v74[2];
        v208 = [v197 baseUnit];
        v209 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v210 = v74[5];
        v93 = [v197 baseUnit];
        goto LABEL_32;
      case 0xBu:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v76 = *v74;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v77 = swift_getObjCClassFromMetadata();
        v78 = [v77 baseUnit];
        v79 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
        v80 = v247;
        v247[3] = v79;
        v80[4] = sub_1B4BF5CF8(&qword_1EDC380B8, type metadata accessor for WorkoutCaloriesStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
        sub_1B4D1741C();
        v82 = v74[3];
        v83 = [v77 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        v85 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v86 = v74[4];
        v87 = [v77 baseUnit];
        v88 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v89 = v74[2];
        v90 = [v77 baseUnit];
        v91 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v92 = v74[5];
        v93 = [v77 baseUnit];
        goto LABEL_32;
      case 0xCu:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v100 = *v74;
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v101 = swift_getObjCClassFromMetadata();
        v102 = [v101 baseUnit];
        v103 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
        v104 = v247;
        v247[3] = v103;
        v104[4] = sub_1B4BF5CF8(&qword_1EDC37F58, type metadata accessor for WorkoutDurationStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
        sub_1B4D1741C();
        v105 = v74[3];
        v106 = [v101 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        v107 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v108 = v74[4];
        v109 = [v101 baseUnit];
        v110 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v111 = v74[2];
        v112 = [v101 baseUnit];
        v113 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v114 = v74[5];
        v93 = [v101 baseUnit];
        goto LABEL_32;
      case 0xDu:
        v73 = v246;
        sub_1B4BF5D94(v61, v246, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v74 = v245;
        sub_1B4BF5DFC(v73, v245, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v75 = v74[1];
        v166 = *v74;
        sub_1B498AFB8(0, &qword_1EDC378B0, 0x1E696B080);
        v167 = swift_getObjCClassFromMetadata();
        v168 = [v167 baseUnit];
        v169 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
        v170 = v247;
        v247[3] = v169;
        v170[4] = sub_1B4BF5CF8(&qword_1EDC37C98, type metadata accessor for WeatherTemperatureStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v170);
        sub_1B4D1741C();
        v171 = v74[3];
        v172 = [v167 baseUnit];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
        v173 = boxed_opaque_existential_1 + v84[8];
        sub_1B4D1741C();
        v174 = v74[4];
        v175 = [v167 baseUnit];
        v176 = boxed_opaque_existential_1 + v84[9];
        sub_1B4D1741C();
        v177 = v74[2];
        v178 = [v167 baseUnit];
        v179 = boxed_opaque_existential_1 + v84[10];
        sub_1B4D1741C();
        v180 = v74[5];
        v93 = [v167 baseUnit];
LABEL_32:
        v226 = v93;
        v227 = boxed_opaque_existential_1 + v84[11];
        sub_1B4D1741C();
        sub_1B4BF5E64(v74, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        result = sub_1B4BF5E64(v73, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        *(boxed_opaque_existential_1 + v84[7]) = v75;
        return result;
      case 0xEu:
        v70 = v241;
        sub_1B4BF5D94(v61, v241, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v71 = *v70;
        sub_1B4BF5E64(v70, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v72 = v247;
        v247[3] = &type metadata for WorkoutTotalCountProperty;
        result = sub_1B498AF48();
        v72[4] = result;
        *v72 = v71;
        return result;
      case 0xFu:
        sub_1B4BF5D94(v61, v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5DFC(v51, v48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v134 = v248;
        sub_1B4BF0E28(v48, &v250);
        if (v134)
        {
          return sub_1B4BF5E64(v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        }

        sub_1B4BF5E64(v51, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v66 = v250;
        v67 = v251;
        v68 = v247;
        v247[3] = &type metadata for WorkoutCountByWeatherConditionProperty;
        result = sub_1B4AE608C();
        goto LABEL_36;
      case 0x10u:
        sub_1B4BF5D94(v61, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5DFC(v45, v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v69 = v248;
        sub_1B4BF1130(v42, &v250);
        if (v69)
        {
          result = sub_1B4BF5E64(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        }

        else
        {
          sub_1B4BF5E64(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
          v66 = v250;
          v67 = v251;
          v68 = v247;
          v247[3] = &type metadata for WorkoutCountByRoundedDistanceProperty;
          result = sub_1B4AE60E0();
LABEL_36:
          v68[4] = result;
          *v68 = v66;
          v68[1] = v67;
        }

        break;
      case 0x11u:
        v158 = v61;
        v95 = v243;
        sub_1B4BF5D94(v158, v243, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
        v159 = v242;
        sub_1B4BF5DFC(v95, v242, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
        v160 = v244;
        v161 = v248;
        sub_1B4BE6870(v159, v244);
        if (v161)
        {
          v162 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue;
          return sub_1B4BF5E64(v95, v162);
        }

        else
        {
          sub_1B4BF5E64(v95, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
          v228 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
          v229 = v247;
          v247[3] = v228;
          v229[4] = sub_1B4BF5CF8(&qword_1EDC37BE0, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
          v230 = __swift_allocate_boxed_opaque_existential_1(v229);
          return sub_1B498B270(v160, v230, &qword_1EB8A79B0, &qword_1B4D20FC0);
        }

      default:
        sub_1B4BF5D94(v61, v57, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5DFC(v57, v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v65 = v248;
        sub_1B4BF0B10(v54, &v250);
        result = sub_1B4BF5E64(v57, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        if (v65)
        {
          return result;
        }

        v66 = v250;
        v67 = v251;
        v68 = v247;
        v247[3] = &type metadata for FastestByDistanceProperty;
        result = sub_1B4AE5F3C();
        goto LABEL_36;
    }
  }

  return result;
}

uint64_t sub_1B4BF0A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BF0B10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = 0;
    v30 = v11 - 1;
    v13 = MEMORY[0x1E69E7CC0];
    v33 = a2;
    while (2)
    {
      v14 = v12;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_1B4BF5DFC(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        sub_1B4BF266C(v9, &v31);
        if (v2)
        {
          sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
          sub_1B4BF5E64(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        }

        sub_1B4BF5E64(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        v15 = v32;
        if (v32)
        {
          break;
        }

        ++v14;

        if (v11 == v14)
        {
          a2 = v33;
          if (v13[2])
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        }
      }

      v28 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1B4A1D320(0, v13[2] + 1, 1, v13);
      }

      v18 = v13[2];
      v17 = v13[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v27 = v18 + 1;
        v21 = sub_1B4A1D320((v17 > 1), v18 + 1, 1, v13);
        v19 = v27;
        v13 = v21;
      }

      v12 = v14 + 1;
      v13[2] = v19;
      v20 = &v13[2 * v18];
      a1 = v29;
      *(v20 + 32) = v28;
      v20[5] = v15;
      a2 = v33;
      if (v30 != v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v13[2])
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
    v22 = sub_1B4D18AEC();
  }

  else
  {
LABEL_20:
    v22 = MEMORY[0x1E69E7CC8];
  }

  v31 = v22;
  sub_1B4C4E108(v13, 1, &v31);
  if (v2)
  {
LABEL_24:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v24 = v31;
    v25 = a1;
    v26 = a1[1];
    result = sub_1B4BF5E64(v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    *a2 = v24;
    a2[1] = v26;
  }

  return result;
}

uint64_t sub_1B4BF0E28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v11 - 1;
    v14 = MEMORY[0x1E69E7CC0];
    v32 = a2;
LABEL_3:
    v15 = v12;
    do
    {
      if (v15 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_1B4BF5DFC(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      sub_1B4BF1F34(v9, &v30);
      if (v2)
      {
        sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5E64(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      }

      sub_1B4BF5E64(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      if ((v31 & 1) == 0)
      {
        v28 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_1B4A1D21C(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v27 = v18 + 1;
          v21 = sub_1B4A1D21C((v17 > 1), v18 + 1, 1, v14);
          v19 = v27;
          v14 = v21;
        }

        v12 = v15 + 1;
        *(v14 + 2) = v19;
        *&v14[16 * v18 + 32] = v28;
        v13 = v29;
        v20 = v29 == v15;
        a2 = v32;
        if (v20)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      ++v15;
    }

    while (v11 != v15);
    a2 = v32;
    if (*(v14 + 2))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_17:
    if (*(v14 + 2))
    {
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
      v22 = sub_1B4D18AEC();
      goto LABEL_22;
    }
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_22:
  *&v30 = v22;
  sub_1B4BF4A78(v14, 1, &v30);
  if (v2)
  {
LABEL_25:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v24 = v30;
    v25 = a1[1];
    result = sub_1B4BF5E64(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    *a2 = v24;
    a2[1] = v25;
  }

  return result;
}

uint64_t sub_1B4BF1130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC1F8, &unk_1B4D3B2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v32 - v13;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v18 = *a1;
  v19 = *(*a1 + 16);
  if (v19)
  {
    v20 = 0;
    v36 = v9;
    v41 = MEMORY[0x1E69E7CC0];
    v37 = v8;
    v35 = v19;
    while (v20 < *(v18 + 16))
    {
      sub_1B4BF5DFC(v18 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v20, v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      sub_1B4BF15E0(v17, v7);
      if (v2)
      {
        sub_1B4BF5E64(v34, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        sub_1B4BF5E64(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      }

      sub_1B4BF5E64(v17, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1B4975024(v7, &qword_1EB8AC1F8, &unk_1B4D3B2F0);
      }

      else
      {
        v21 = v38;
        sub_1B498B270(v7, v38, &qword_1EB8A7F20, &qword_1B4D20450);
        sub_1B498B270(v21, v39, &qword_1EB8A7F20, &qword_1B4D20450);
        v22 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1B4A1D1F8(0, v22[2] + 1, 1, v22);
        }

        v24 = v22[2];
        v23 = v22[3];
        v41 = v22;
        if (v24 >= v23 >> 1)
        {
          v41 = sub_1B4A1D1F8(v23 > 1, v24 + 1, 1, v41);
        }

        v25 = v41;
        v41[2] = v24 + 1;
        sub_1B498B270(v39, v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v24, &qword_1EB8A7F20, &qword_1B4D20450);
        v8 = v37;
        v19 = v35;
      }

      if (v19 == ++v20)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_14:
    if (v41[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
      v26 = sub_1B4D18AEC();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC8];
    }

    v42 = v26;

    sub_1B4BD96FC(v28, 1, &v42);
    if (!v2)
    {

      v29 = v42;
      v30 = *(v34 + 8);
      result = sub_1B4BF5E64(v34, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v31 = v33;
      *v33 = v29;
      v31[1] = v30;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B4BF15E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v67 - v8;
  v71 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v69 = *(v71 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v80 = *(v28 - 8);
  v29 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v67 - v30;
  v75 = v3;
  v31 = *(v3 + 20);
  v77 = a1;
  sub_1B4974FBC(a1 + v31, v20, &qword_1EB8A7EA0, &unk_1B4D42260);
  v32 = *(v22 + 48);
  if (v32(v20, 1, v21) == 1)
  {
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = -1;
    v33 = &v27[*(v21 + 20)];
    sub_1B4D17BBC();
    if (v32(v20, 1, v21) != 1)
    {
      sub_1B4975024(v20, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4BF5D94(v20, v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  sub_1B4BF2D8C(v27, v79);
  sub_1B4BF5E64(v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v34 = swift_dynamicCast();
  v35 = v80;
  v36 = *(v80 + 56);
  if (v34)
  {
    v36(v14, 0, 1, v28);
    v37 = *(v35 + 32);
    v38 = v68;
    v37(v68, v14, v28);
    v39 = v72;
    sub_1B4974FBC(v77 + *(v75 + 24), v72, &qword_1EB8A7E90, &unk_1B4D25C60);
    v40 = *(v69 + 48);
    v41 = v71;
    if (v40(v39, 1, v71) == 1)
    {
      v42 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      v43 = v73;
      (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
      v44 = v43 + *(v41 + 20);
      sub_1B4D17BBC();
      v45 = v40(v39, 1, v41);
      v46 = v78;
      if (v45 != 1)
      {
        sub_1B4975024(v39, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      v43 = v73;
      sub_1B4BF5D94(v39, v73, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      v46 = v78;
    }

    sub_1B4BF3114(v43, v79);
    sub_1B4BF5E64(v43, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (v46)
    {
      return (*(v80 + 8))(v38, v28);
    }

    else
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
      v60 = *(v59 + 48);
      v61 = v74;
      v37(v74, v38, v28);
      *&v61[v60] = v79[0];
      return (*(*(v59 - 8) + 56))(v61, 0, 1, v59);
    }
  }

  else
  {
    v36(v14, 1, 1, v28);
    sub_1B4975024(v14, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (qword_1EDC3CBB8 != -1)
    {
      swift_once();
    }

    v47 = sub_1B4D17F6C();
    __swift_project_value_buffer(v47, qword_1EDC37A40);
    v48 = v76;
    sub_1B4BF5DFC(v77, v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v49 = sub_1B4D17F5C();
    v50 = sub_1B4D1871C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v70;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v79[0] = v54;
      *v53 = 136315138;
      v55 = v48 + *(v75 + 20);
      v56 = v67;
      sub_1B4974FBC(v55, v67, &qword_1EB8A7EA0, &unk_1B4D42260);
      if (v32(v56, 1, v21) == 1)
      {
        *v52 = 0;
        *(v52 + 8) = 0;
        *(v52 + 16) = -1;
        v57 = v52 + *(v21 + 20);
        sub_1B4D17BBC();
        if (v32(v56, 1, v21) != 1)
        {
          sub_1B4975024(v56, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4BF5D94(v56, v52, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v62 = sub_1B4D181AC();
      v64 = v63;
      sub_1B4BF5E64(v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v65 = sub_1B49558AC(v62, v64, v79);

      *(v53 + 4) = v65;
      _os_log_impl(&dword_1B4953000, v49, v50, "Unexpected key = %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1B8C7DDA0](v54, -1, -1);
      MEMORY[0x1B8C7DDA0](v53, -1, -1);
    }

    else
    {

      sub_1B4BF5E64(v48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F20, &qword_1B4D20450);
    return (*(*(v66 - 8) + 56))(v74, 1, 1, v66);
  }
}

void sub_1B4BF1F34(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = (&v55 - v8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v55 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v62 = v3;
  v26 = *(v3 + 20);
  v27 = a1;
  sub_1B4974FBC(a1 + v26, v18, &qword_1EB8A7EA0, &unk_1B4D42260);
  v28 = *(v20 + 48);
  if (v28(v18, 1, v19) == 1)
  {
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = -1;
    v29 = &v25[*(v19 + 20)];
    sub_1B4D17BBC();
    if (v28(v18, 1, v19) != 1)
    {
      sub_1B4975024(v18, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4BF5D94(v18, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  sub_1B4BF2D8C(v25, v64);
  sub_1B4BF5E64(v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  type metadata accessor for _HKPrivateWeatherCondition(0);
  if (swift_dynamicCast())
  {
    v30 = v63;
    v31 = v27 + *(v62 + 24);
    v32 = v58;
    sub_1B4974FBC(v31, v58, &qword_1EB8A7E90, &unk_1B4D25C60);
    v33 = v57;
    v34 = *(v56 + 48);
    if (v34(v32, 1, v57) == 1)
    {
      v35 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
      v36 = &v12[*(v33 + 20)];
      sub_1B4D17BBC();
      if (v34(v32, 1, v33) != 1)
      {
        sub_1B4975024(v32, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      sub_1B4BF5D94(v32, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    }

    v46 = v64[5];
    sub_1B4BF3114(v12, v64);
    sub_1B4BF5E64(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (!v46)
    {
      v47 = v64[0];
      v48 = v61;
      *v61 = v30;
      v48[1] = v47;
      *(v48 + 16) = 0;
    }
  }

  else
  {
    if (qword_1EDC3CBB8 != -1)
    {
      swift_once();
    }

    v37 = sub_1B4D17F6C();
    __swift_project_value_buffer(v37, qword_1EDC37A40);
    v38 = v60;
    sub_1B4BF5DFC(v27, v60, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v39 = sub_1B4D17F5C();
    v40 = sub_1B4D1871C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v59;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64[0] = v58;
      *v43 = 136315138;
      sub_1B4974FBC(v38 + *(v62 + 20), v42, &qword_1EB8A7EA0, &unk_1B4D42260);
      if (v28(v42, 1, v19) == 1)
      {
        v44 = v55;
        *v55 = 0;
        v44[1] = 0;
        *(v44 + 16) = -1;
        v45 = v44 + *(v19 + 20);
        sub_1B4D17BBC();
        if (v28(v42, 1, v19) != 1)
        {
          sub_1B4975024(v42, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4BF5D94(v42, v55, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v49 = sub_1B4D181AC();
      v51 = v50;
      sub_1B4BF5E64(v38, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v52 = sub_1B49558AC(v49, v51, v64);

      *(v43 + 4) = v52;
      _os_log_impl(&dword_1B4953000, v39, v40, "Unexpected key = %s", v43, 0xCu);
      v53 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1B8C7DDA0](v53, -1, -1);
      MEMORY[0x1B8C7DDA0](v43, -1, -1);
    }

    else
    {

      sub_1B4BF5E64(v38, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v54 = v61;
    *v61 = 0;
    v54[1] = 0;
    *(v54 + 16) = 1;
  }
}

void sub_1B4BF266C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  sub_1B4974FBC(a1 + *(v3 + 20), v17, &qword_1EB8A7EA0, &unk_1B4D42260);
  v26 = *(v19 + 48);
  if (v26(v17, 1, v18) == 1)
  {
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = -1;
    v27 = &v25[*(v18 + 20)];
    sub_1B4D17BBC();
    if (v26(v17, 1, v18) != 1)
    {
      sub_1B4975024(v17, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4BF5D94(v17, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  sub_1B4BF2D8C(v25, v59);
  sub_1B4BF5E64(v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  if ((swift_dynamicCast() & 1) != 0 && (v28 = v60, v60 != 16))
  {
    v37 = v53;
    sub_1B4974FBC(a1 + *(v3 + 24), v53, &qword_1EB8A7E90, &unk_1B4D25C60);
    v38 = v52;
    v39 = *(v51 + 48);
    if (v39(v37, 1, v52) == 1)
    {
      v40 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      v41 = v54;
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v42 = v41 + *(v38 + 20);
      sub_1B4D17BBC();
      if (v39(v37, 1, v38) != 1)
      {
        sub_1B4975024(v37, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      v41 = v54;
      sub_1B4BF5D94(v37, v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    }

    v49 = v57;
    sub_1B4BF3370(v41, v59);
    sub_1B4BF5E64(v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (!v49)
    {
      v50 = v56;
      *v56 = v28;
      *(v50 + 1) = v59[0];
    }
  }

  else
  {
    if (qword_1EDC3CBB8 != -1)
    {
      swift_once();
    }

    v29 = sub_1B4D17F6C();
    __swift_project_value_buffer(v29, qword_1EDC37A40);
    v30 = v58;
    sub_1B4BF5DFC(a1, v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v31 = sub_1B4D17F5C();
    v32 = sub_1B4D1871C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59[0] = v54;
      *v33 = 136315138;
      v34 = v30 + *(v3 + 20);
      v35 = v55;
      sub_1B4974FBC(v34, v55, &qword_1EB8A7EA0, &unk_1B4D42260);
      if (v26(v35, 1, v18) == 1)
      {
        *v22 = 0;
        *(v22 + 1) = 0;
        v22[16] = -1;
        v36 = &v22[*(v18 + 20)];
        sub_1B4D17BBC();
        if (v26(v35, 1, v18) != 1)
        {
          sub_1B4975024(v35, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4BF5D94(v35, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v43 = sub_1B4D181AC();
      v45 = v44;
      sub_1B4BF5E64(v58, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v46 = sub_1B49558AC(v43, v45, v59);

      *(v33 + 4) = v46;
      _os_log_impl(&dword_1B4953000, v31, v32, "Unexpected key = %s", v33, 0xCu);
      v47 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1B8C7DDA0](v47, -1, -1);
      MEMORY[0x1B8C7DDA0](v33, -1, -1);
    }

    else
    {

      sub_1B4BF5E64(v30, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v48 = v56;
    *v56 = 0;
    *(v48 + 1) = 0;
  }
}

void sub_1B4BF2D8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10];
  v12 = *a1;
  v13 = *(a1 + 16);
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        v18 = *a1;
        v19 = [objc_opt_self() meters];
        *(a2 + 24) = v4;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1741C();
        return;
      }

      goto LABEL_17;
    }

    v23 = *a1;
    v24 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    (*(v5 + 16))(v8, v11, v4);
    DistanceReference.init(rawValue:)(v8, &v29);
    v25 = v29;
    if (v29 == 16)
    {
      (*(v5 + 8))(v11, v4);
LABEL_17:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    *(a2 + 24) = &type metadata for DistanceReference;
    *a2 = v25;
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (!*(a1 + 16))
    {
      v20 = *(a1 + 8);

      v21._countAndFlagsBits = v12;
      v21._object = v20;
      DayOfWeek.init(rawValue:)(v21);
      v22 = v28;
      if (v28 != 7)
      {
        *(a2 + 24) = &type metadata for DayOfWeek;
        *a2 = v22;
        return;
      }

      goto LABEL_17;
    }

    if (v13 == 1)
    {
      if (v12 >= 0x18)
      {
        if (qword_1EDC3CEC8 != -1)
        {
          swift_once();
        }

        v14 = sub_1B4D17F6C();
        __swift_project_value_buffer(v14, qword_1EDC3CED0);
        v15 = sub_1B4D17F5C();
        v16 = sub_1B4D1871C();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 134217984;
          *(v17 + 4) = v12;
          _os_log_impl(&dword_1B4953000, v15, v16, "Invalid hourOfDay: %lld", v17, 0xCu);
          MEMORY[0x1B8C7DDA0](v17, -1, -1);
        }

        goto LABEL_17;
      }

      *(a2 + 24) = &type metadata for HourOfDay;
    }

    else
    {
      type metadata accessor for _HKPrivateWeatherCondition(0);
      *(a2 + 24) = v26;
    }

    *a2 = v12;
  }
}

uint64_t sub_1B4BF3114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22[-v15];
  result = sub_1B4BF42F4(a1, v22);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v18 = swift_dynamicCast();
    v19 = *(v10 + 56);
    if (v18)
    {
      v19(v8, 0, 1, v9);
      sub_1B4BF5D94(v8, v16, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4BF5D94(v16, v13, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v20 = *v13;
      result = sub_1B4BF5E64(v13, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      *a2 = v20;
    }

    else
    {
      v19(v8, 1, 1, v9);
      sub_1B4975024(v8, &qword_1EB8A93A0, &qword_1B4D27A98);
      sub_1B4BF5D40();
      swift_allocError();
      *v21 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B4BF3370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-v15];
  result = sub_1B4BF42F4(a1, v21);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v18 = swift_dynamicCast();
    v19 = *(v10 + 56);
    if (v18)
    {
      v19(v8, 0, 1, v9);
      sub_1B4BF5D94(v8, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4BF5DFC(v16, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4BE8E70(v13, a2);
      return sub_1B4BF5E64(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    else
    {
      v19(v8, 1, 1, v9);
      sub_1B4975024(v8, &qword_1EB8A9398, &qword_1B4D27A88);
      sub_1B4BF5D40();
      swift_allocError();
      *v20 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B4BF35E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a2);
  if (!v4)
  {
    v8 = result;
    v9 = *a1;

    *a1 = v8;
    a1[1] = a3;
  }

  return result;
}

uint64_t sub_1B4BF3634(uint64_t a1, char a2, uint64_t a3)
{
  v26 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v27 = &v29;
  v28 = a3;
  sub_1B4BF5CF8(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v24 = v7;
    v25 = 0;
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v18 = *(v17 + 20);
    v19 = v26;
    sub_1B4975024(v26 + v18, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4BF5D94(v15, v19 + v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v20 = (*(v12 + 56))(v19 + v18, 0, 1, v11);
    MEMORY[0x1EEE9AC00](v20);
    *(&v23 - 2) = &v28;
    *(&v23 - 1) = &v29;
    sub_1B4BF5CF8(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v21 = v25;
    result = sub_1B4D17DAC();
    if (!v21)
    {
      v22 = *(v17 + 24);
      sub_1B4975024(v19 + v22, &qword_1EB8A7E90, &unk_1B4D25C60);
      sub_1B4BF5D94(v10, v19 + v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      return (*(v24 + 56))(v19 + v22, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_1B4BF3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v27 = a2;
  sub_1B4BF5CF8(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v24 = v7;
    v25 = 0;
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v18 = *(v17 + 20);
    v19 = v26;
    sub_1B4975024(v26 + v18, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4BF5D94(v15, v19 + v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v20 = (*(v12 + 56))(v19 + v18, 0, 1, v11);
    MEMORY[0x1EEE9AC00](v20);
    *(&v23 - 2) = &v28;
    *(&v23 - 1) = a2;
    sub_1B4BF5CF8(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v21 = v25;
    result = sub_1B4D17DAC();
    if (!v21)
    {
      v22 = *(v17 + 24);
      sub_1B4975024(v19 + v22, &qword_1EB8A7E90, &unk_1B4D25C60);
      sub_1B4BF5D94(v10, v19 + v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      return (*(v24 + 56))(v19 + v22, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_1B4BF3C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v27 = &v29;
  v28 = a3;
  sub_1B4BF5CF8(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v3)
  {
    v24 = v7;
    v25 = 0;
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v18 = *(v17 + 20);
    v19 = v26;
    sub_1B4975024(v26 + v18, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4BF5D94(v15, v19 + v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v20 = (*(v12 + 56))(v19 + v18, 0, 1, v11);
    MEMORY[0x1EEE9AC00](v20);
    *(&v23 - 2) = &v28;
    *(&v23 - 1) = &v29;
    sub_1B4BF5CF8(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v21 = v25;
    result = sub_1B4D17DAC();
    if (!v21)
    {
      v22 = *(v17 + 24);
      sub_1B4975024(v19 + v22, &qword_1EB8A7E90, &unk_1B4D25C60);
      sub_1B4BF5D94(v10, v19 + v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      return (*(v24 + 56))(v19 + v22, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_1B4BF3F9C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v18 = a2;
  DistanceReference.rawValue.getter();
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v12 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1B4D1742C();
  v15 = v14;
  v13(v11, v4);
  result = sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  return result;
}

uint64_t sub_1B4BF4140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  (*(v5 + 16))(v18 - v11, a2, v4, v10);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v13 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v12, v4);
  result = sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  return result;
}

uint64_t sub_1B4BF42F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  sub_1B4974FBC(a1, &v21 - v14, &qword_1EB8A7E80, &unk_1B4D25C50);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  result = (*(*(v16 - 8) + 48))(v15, 1, v16);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4BF5D94(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *(a2 + 24) = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v20 = v7;
    }

    else
    {
      v18 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      sub_1B4BF5D94(v15, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      *(a2 + 24) = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v20 = v11;
    }

    return sub_1B4BF5D94(v20, boxed_opaque_existential_1, v18);
  }

  return result;
}

void sub_1B4BF4528(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v56 - v16);
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  v57 = v19;
  sub_1B4974FBC(a1 + v19, &v56 - v16, &qword_1EB8AC200, &unk_1B4D3B300);
  v59 = v8;
  v20 = *(v8 + 32);
  v70 = *v17;
  v21 = v70;
  v61 = v18;
  v65 = v7;
  v66 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v23 = sub_1B49E9C38(v21);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v24;
  if (v22[3] < v28)
  {
    sub_1B4984574(v28, a2 & 1);
    v30 = *a3;
    v23 = sub_1B49E9C38(v21);
    if ((v29 & 1) != (v31 & 1))
    {
LABEL_5:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v29)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v34 = v23;
  sub_1B4988954();
  v23 = v34;
  if (v29)
  {
LABEL_9:
    v32 = swift_allocError();
    swift_willThrow();
    v69 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v59 + 8))(v66, v65);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = *a3;
  *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  *(v35[6] + 8 * v23) = v21;
  v36 = v35[7];
  v60 = *(v59 + 72);
  v37 = v65;
  v20((v36 + v60 * v23), v66, v65);
  v38 = v35[2];
  v27 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v27)
  {
    v35[2] = v39;
    v40 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v64 + v62 + v57;
    v42 = 1;
    while (v42 < *(v40 + 16))
    {
      sub_1B4974FBC(v41, v17, &qword_1EB8AC200, &unk_1B4D3B300);
      v70 = *v17;
      v43 = v70;
      v20(v66, v17 + v61, v37);
      v44 = *a3;
      v45 = sub_1B49E9C38(v43);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v27 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v27)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_1B4984574(v49, 1);
        v51 = *a3;
        v45 = sub_1B49E9C38(v43);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      *(v53[6] + 8 * v45) = v70;
      v37 = v65;
      v20((v53[7] + v60 * v45), v66, v65);
      v54 = v53[2];
      v27 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      ++v42;
      v53[2] = v55;
      v41 += v62;
      v40 = v64;
      if (v63 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

void sub_1B4BF4A78(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_1B49EF0C0(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984C80(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_1B49EF0C0(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for _HKPrivateWeatherCondition(0);
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1B4988E3C();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    type metadata accessor for _HKPrivateWeatherCondition(0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v25 = *v6;
      v26 = *a3;
      v27 = sub_1B49EF0C0(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B4984C80(v31, 1);
        v32 = *a3;
        v27 = sub_1B49EF0C0(v8);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v8;
      *(v34[7] + 8 * v27) = v25;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1B4BF4DB8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  result = sub_1B4D1742C();
  a1[1] = v6;
  return result;
}

uint64_t sub_1B4BF4E0C(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = *a2;
  sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4BF5D94(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4BF5D94(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4BF4FD0(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12[-v7];
  v9 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v13 = v9;
  sub_1B4BF5CF8(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1B4BF0A84(v8, a1);
  }

  return result;
}

uint64_t sub_1B4BF5140(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11[-v6];
  v8 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v12 = v8;
  sub_1B4BF5CF8(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4D17DAC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  return sub_1B4BF0A84(v7, a1);
}