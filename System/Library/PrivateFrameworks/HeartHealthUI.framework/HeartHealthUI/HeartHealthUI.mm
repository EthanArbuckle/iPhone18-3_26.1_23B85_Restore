uint64_t sub_2521C63B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2521C6424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2521C6494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB9B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2521C655C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521DB9B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2521C6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB9B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2521C66D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521DB9B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2521C6788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB9B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2521DBAD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2521C6878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2521DB9B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2521DBAD0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2521C69DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB8C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2521C6B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2521DB8C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2521C6C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2521DBAD0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2521C6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2521DBAD0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2521C6D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartRateAppChartViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2521C6E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartRateAppChartViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2521C6EC8()
{
  sub_2521D1738();
  sub_2521D28EC();
  sub_2521D1908();
  sub_2521D6418(255, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
  sub_2521D1A5C();
  sub_2521D21EC();
  sub_2521D1B30();
  sub_2521D20E8();
  sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30);
  sub_2521D217C();
  swift_getOpaqueTypeConformance2();
  sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC);
  swift_getOpaqueTypeConformance2();
  sub_2521D2850();
  swift_getOpaqueTypeConformance2();
  sub_2521D2F78();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2521C70BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2521C7128(uint64_t a1, uint64_t a2)
{
  v4 = sub_2521DB9B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2521C71B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2521C7208(uint64_t a1, uint64_t a2)
{
  sub_2521D5998(0, &qword_27F4D4F40, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C7288(uint64_t a1, uint64_t a2)
{
  sub_2521D6BFC(0, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C731C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2521C735C()
{
  v1 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + v3;
  v5 = v0 + v3;

  v6 = type metadata accessor for HeartRateAppChartViewModel();
  v7 = v6[6];
  v8 = sub_2521DB8C0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v5 + v6[10] + 8);

  v10 = *(v5 + v6[14]);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_2521C7490()
{
  v1 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for HeartRateAppChartViewModel();
  v6 = v5[6];
  v7 = sub_2521DB8C0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = *(v0 + v3 + v5[10] + 8);

  v9 = *(v0 + v3 + v5[14]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2521C75B8(uint64_t a1, uint64_t a2)
{
  sub_2521D22F4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C761C(uint64_t a1)
{
  sub_2521D22F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2521C7678(uint64_t a1, uint64_t a2)
{
  sub_2521D22F4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C76DC()
{
  sub_2521D57FC();
  sub_2521DBDF0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2521C77F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartRateSummaryStatistics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2521C78B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartRateSummaryStatistics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2521C796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521DB8C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2521C7A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521DB8C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2521C7AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2521C7B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2521C7C10(uint64_t a1, uint64_t a2)
{
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521C7C90()
{
  v1 = (type metadata accessor for HeartRateChartData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2521DB9B0();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v0 + v4 + 32);

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

int *sub_2521C7DA0()
{
  result = type metadata accessor for HeartRateBPMRange(0);
  v2 = (v0 + result[5]);
  v3 = v2[1];
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 == *v2)
  {
    v6 = 0.0;
    if (v5 == *(v0 + result[6]))
    {
      v6 = *(v0 + result[7]) + *(v0 + result[7]);
    }

    v7 = v5 - v6 + *(v0 + result[7]) + *(v0 + result[7]);
  }

  return result;
}

uint64_t sub_2521C7E2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t HeartRateDaySummary.dailyLowBPM.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HeartRateDaySummary.dailyHighBPM.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t HeartRateDaySummary.init(statistics:chartHeight:isLatestHeartRateInDateInterval:currentDate:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  LODWORD(v101) = a2;
  v80 = a4;
  v86 = type metadata accessor for HeartRateChartPoint(0);
  v85 = *(v86 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2521DBAD0();
  v10 = *(v102 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v102);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v99 = *(v96 - 8);
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v96);
  v16 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2521DB8C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2521DB9B0();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v87 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v98 = &v76 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v76 - v29;
  MEMORY[0x28223BE20](v28);
  v82 = v31;
  v32 = *(v31 + 16);
  v100 = &v76 - v33;
  v79 = a3;
  v84 = v31 + 16;
  v83 = v32;
  v32();
  v77 = v18;
  v34 = *(v18 + 16);
  v78 = v17;
  v34(v21, a1, v17);
  v81 = a1;
  if (v101)
  {
    sub_2521DB8B0();
    v36 = v35;
    result = type metadata accessor for HeartRateSummaryStatistics(0);
    v38 = *(a1 + *(result + 28));
    v97 = *(v38 + 16);
    if (v97)
    {
      v39 = 0;
      v40 = v36 / *(a1 + *(result + 24));
      v41 = *(v96 + 20);
      v95 = v38 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v96 = v41;
      v42 = (v82 + 8);
      v101 = (v10 + 16);
      v92 = (v10 + 8);
      v89 = 0x7FFFFFFFFFFFFFFFLL;
      v90 = 0x8000000000000000;
      v91 = MEMORY[0x277D84F90];
      v93 = v38;
      v94 = v21;
      while (v39 < *(v38 + 16))
      {
        sub_2521CB1C8(v95 + *(v99 + 72) * v39, v16, type metadata accessor for HeartRateSummaryStatisticsBucket);
        v43 = v98;
        sub_2521DB890();
        v44 = v40 * *v16;
        sub_2521DB960();
        v45 = *v42;
        (*v42)(v43, v22);
        v46 = *v101;
        v47 = v13;
        v48 = v13;
        v49 = v102;
        (*v101)(v47, v16 + v96, v102);
        sub_2521CBA5C(&qword_27F4D4C50, MEMORY[0x277CC9578]);
        if (sub_2521DC080())
        {
          v13 = v48;
          if (sub_2521DBA90())
          {
            (*v92)(v48, v102);
            v45(v30, v22);
            result = sub_2521CB168(v16, type metadata accessor for HeartRateSummaryStatisticsBucket);
          }

          else
          {
            result = sub_2521DBA60();
            if (v50)
            {
              goto LABEL_40;
            }

            v51 = v90;
            if (result > v90)
            {
              v51 = result;
            }

            v90 = v51;
            result = sub_2521DBA70();
            if (v52)
            {
              goto LABEL_39;
            }

            v53 = v89;
            if (result < v89)
            {
              v53 = result;
            }

            v89 = v53;
            v54 = v87;
            sub_2521DB960();
            v55 = v88;
            (v83)(v88, v54, v22);
            v46((v55 + *(v86 + 20)), v13, v102);
            v56 = v91;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_2521C9DD8(0, v56[2] + 1, 1, v56, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            v58 = v56[2];
            v57 = v56[3];
            v91 = v56;
            if (v58 >= v57 >> 1)
            {
              v91 = sub_2521C9DD8(v57 > 1, v58 + 1, 1, v91, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            v45(v87, v22);
            (*v92)(v13, v102);
            v45(v30, v22);
            sub_2521CB168(v16, type metadata accessor for HeartRateSummaryStatisticsBucket);
            v59 = v91;
            v91[2] = v58 + 1;
            result = sub_2521CB250(v88, v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v58, type metadata accessor for HeartRateChartPoint);
          }
        }

        else
        {
          (*v92)(v48, v49);
          v45(v30, v22);
          result = sub_2521CB168(v16, type metadata accessor for HeartRateSummaryStatisticsBucket);
          v13 = v48;
        }

        ++v39;
        v38 = v93;
        v21 = v94;
        if (v97 == v39)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    v89 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = 0x8000000000000000;
    v91 = MEMORY[0x277D84F90];
  }

  else
  {
    v89 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = 0x8000000000000000;
    v91 = MEMORY[0x277D84F90];
  }

LABEL_23:
  sub_2521C88D0(0);
  v60 = sub_2521DC0D0();
  v60[2] = 25;
  v61 = MEMORY[0x277D84F90];
  v60[4] = MEMORY[0x277D84F90];
  v60[5] = v61;
  v60[6] = v61;
  v60[7] = v61;
  v60[8] = v61;
  v60[9] = v61;
  v60[10] = v61;
  v60[11] = v61;
  v60[12] = v61;
  v60[13] = v61;
  v60[14] = v61;
  v60[15] = v61;
  v60[16] = v61;
  v60[17] = v61;
  v60[18] = v61;
  v60[19] = v61;
  v60[20] = v61;
  v60[21] = v61;
  v60[22] = v61;
  v60[23] = v61;
  v60[24] = v61;
  v60[25] = v61;
  v60[26] = v61;
  v60[27] = v61;
  v63 = v89;
  v62 = v90;
  v64 = v89 == 0x7FFFFFFFFFFFFFFFLL || v90 == 0x8000000000000000;
  v65 = v64;
  v60[28] = v61;
  if (v64)
  {
    v66 = v21;
    v67 = v60;
    v62 = 0;
    v63 = 0;
    v68 = v81;
LABEL_36:
    v103 = v65;
    v104 = v65;
    v70 = v100;
    v71 = sub_2521CAD88(v100, v67);

    v72 = *(v82 + 8);
    v72(v79, v22);
    (*(v77 + 8))(v66, v78);
    v72(v70, v22);
    sub_2521CB168(v68, type metadata accessor for HeartRateSummaryStatistics);

    v73 = v104;
    v74 = v103;
    v75 = v80;
    *v80 = v63;
    *(v75 + 8) = v73;
    v75[2] = v62;
    *(v75 + 24) = v74;
    v75[4] = v71;
    return result;
  }

  v69 = v62 - v63;
  v68 = v81;
  if (!__OFSUB__(v62, v63))
  {
    v66 = v21;
    if (!v69)
    {
      v69 = 10;
    }

    v67 = sub_2521CA174(v91, v62, v69 / a5, 3.0 / a5 * v69);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t HeartRateDaySummary.init(heartRateSummary:latestHeartRateSample:chartHeight:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v91 = a2;
  v88 = a3;
  v95 = type metadata accessor for HeartRateChartPoint(0);
  v94 = *(v95 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v97 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2521DBAD0();
  v104 = *(v114 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v114);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v110 = *(v107 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x28223BE20](v107);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_2521DB8C0();
  v89 = *(v90 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v111 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2521DB9B0();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v84 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v113 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v84 - v28;
  v112 = type metadata accessor for HeartRateSummaryStatistics(0);
  v30 = *(*(v112 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v112);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v84 - v34;
  v87 = a1;
  sub_2521CB1C8(a1, &v84 - v34, type metadata accessor for HeartRateSummaryStatistics);
  v36 = [v91 startDate];
  sub_2521DB980();

  LOBYTE(v36) = sub_2521DB8A0();
  v37 = v17[1];
  v109 = v29;
  v100 = v37;
  v101 = v17 + 1;
  v37(v29, v16);
  v84 = v35;
  sub_2521CB1C8(v35, v33, type metadata accessor for HeartRateSummaryStatistics);
  sub_2521DB9A0();
  v38 = v17[2];
  v86 = v27;
  v93 = v17 + 2;
  v92 = v38;
  v38(v113, v27, v16);
  v39 = v111;
  (*(v89 + 16))(v111, v33, v90);
  v85 = v33;
  if (v36)
  {
    v40 = v39;
    result = sub_2521DB8B0();
    v43 = *&v33[*(v112 + 28)];
    v108 = *(v43 + 16);
    if (v108)
    {
      v44 = v33;
      v45 = 0;
      v46 = v42 / *&v44[*(v112 + 24)];
      v47 = *(v107 + 20);
      v106 = v43 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
      v107 = v47;
      v112 = v104 + 16;
      v104 += 8;
      v103 = MEMORY[0x277D84F90];
      v98 = 0x7FFFFFFFFFFFFFFFLL;
      v99 = 0x8000000000000000;
      v49 = v100;
      v48 = v101;
      v50 = v102;
      v105 = v43;
      while (v45 < *(v43 + 16))
      {
        sub_2521CB1C8(v106 + *(v110 + 72) * v45, v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
        v51 = v109;
        sub_2521DB890();
        v52 = v46 * *v13;
        sub_2521DB960();
        v49(v51, v16);
        v53 = v48;
        v54 = *v112;
        v55 = v10;
        v56 = v10;
        v57 = v114;
        (*v112)(v55, v13 + v107, v114);
        sub_2521CBA5C(&qword_27F4D4C50, MEMORY[0x277CC9578]);
        if (sub_2521DC080())
        {
          v10 = v56;
          if (sub_2521DBA90())
          {
            (*v104)(v56, v114);
            v48 = v101;
            v50 = v102;
            v49 = v100;
            v100(v102, v16);
            result = sub_2521CB168(v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
          }

          else
          {
            result = sub_2521DBA60();
            if (v58)
            {
              goto LABEL_42;
            }

            v59 = v99;
            if (result > v99)
            {
              v59 = result;
            }

            v99 = v59;
            result = sub_2521DBA70();
            if (v60)
            {
              goto LABEL_41;
            }

            v61 = v98;
            if (result < v98)
            {
              v61 = result;
            }

            v98 = v61;
            v62 = v96;
            sub_2521DB960();
            v63 = v97;
            v92(v97, v62, v16);
            v54(v63 + *(v95 + 20), v10, v114);
            v64 = v103;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_2521C9DD8(0, v64[2] + 1, 1, v64, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            v66 = v64[2];
            v65 = v64[3];
            if (v66 >= v65 >> 1)
            {
              v103 = sub_2521C9DD8(v65 > 1, v66 + 1, 1, v64, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
            }

            else
            {
              v103 = v64;
            }

            v67 = v100;
            v48 = v101;
            v100(v96, v16);
            (*v104)(v10, v114);
            v68 = v102;
            v67(v102, v16);
            sub_2521CB168(v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
            v69 = v103;
            *(v103 + 16) = v66 + 1;
            v70 = v69 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v66;
            v49 = v67;
            v50 = v68;
            result = sub_2521CB250(v97, v70, type metadata accessor for HeartRateChartPoint);
          }
        }

        else
        {
          (*v104)(v56, v57);
          v49(v50, v16);
          result = sub_2521CB168(v13, type metadata accessor for HeartRateSummaryStatisticsBucket);
          v10 = v56;
          v48 = v53;
        }

        ++v45;
        v40 = v111;
        v43 = v105;
        if (v108 == v45)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v103 = MEMORY[0x277D84F90];
    v98 = 0x7FFFFFFFFFFFFFFFLL;
    v99 = 0x8000000000000000;
  }

  else
  {
    v99 = 0x8000000000000000;
    v98 = 0x7FFFFFFFFFFFFFFFLL;
    v103 = MEMORY[0x277D84F90];
    v40 = v39;
  }

  v49 = v100;
LABEL_25:
  sub_2521C88D0(0);
  v71 = sub_2521DC0D0();
  v71[2] = 25;
  v72 = MEMORY[0x277D84F90];
  v71[4] = MEMORY[0x277D84F90];
  v71[5] = v72;
  v71[6] = v72;
  v71[7] = v72;
  v71[8] = v72;
  v71[9] = v72;
  v71[10] = v72;
  v71[11] = v72;
  v71[12] = v72;
  v71[13] = v72;
  v71[14] = v72;
  v71[15] = v72;
  v71[16] = v72;
  v71[17] = v72;
  v71[18] = v72;
  v71[19] = v72;
  v71[20] = v72;
  v71[21] = v72;
  v71[22] = v72;
  v71[23] = v72;
  v71[24] = v72;
  v71[25] = v72;
  v71[26] = v72;
  v71[27] = v72;
  v73 = v98;
  v74 = v99;
  v75 = v98 == 0x7FFFFFFFFFFFFFFFLL || v99 == 0x8000000000000000;
  v76 = v75;
  v71[28] = v72;
  if (v75)
  {
    v77 = v71;
    v74 = 0;
    v73 = 0;
LABEL_38:
    v115 = v76;
    v116 = v76;
    v79 = v113;
    v80 = sub_2521CAD88(v113, v77);

    sub_2521CB168(v87, type metadata accessor for HeartRateSummary);
    (*(v89 + 8))(v40, v90);
    v49(v79, v16);
    v49(v86, v16);
    sub_2521CB168(v84, type metadata accessor for HeartRateSummaryStatistics);
    sub_2521CB168(v85, type metadata accessor for HeartRateSummaryStatistics);

    v81 = v116;
    v82 = v115;
    v83 = v88;
    *v88 = v73;
    *(v83 + 8) = v81;
    v83[2] = v74;
    *(v83 + 24) = v82;
    v83[4] = v80;
    return result;
  }

  v78 = v74 - v73;
  if (!__OFSUB__(v74, v73))
  {
    if (!v78)
    {
      v78 = 10;
    }

    v77 = sub_2521CA174(v103, v74, v78 / a4, 3.0 / a4 * v78);
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t static HeartRateDaySummary.emptyDaySummary()@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for HeartRateHourlyData(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2521DBA30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2521DB9B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_2521DBA00();
  sub_2521DB9A0();
  sub_2521DB9F0();
  v27 = *(v12 + 8);
  v28 = v11;
  v27(v16, v11);
  (*(v7 + 8))(v10, v6);
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = 25;
  do
  {
    sub_2521DB960();
    *&v5[*(v1 + 20)] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_2521C9DD8(0, v20[2] + 1, 1, v20, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_2521C9DD8(v22 > 1, v23 + 1, 1, v20, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
    }

    v20[2] = v23 + 1;
    sub_2521CB250(v5, v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23, type metadata accessor for HeartRateHourlyData);
    v19 += 3600;
    --v21;
  }

  while (v21);
  result = (v27)(v18, v28);
  v25 = v29;
  *v29 = 0;
  *(v25 + 8) = 1;
  v25[2] = 0;
  *(v25 + 24) = 1;
  v25[4] = v20;
  return result;
}

uint64_t static HeartRateDaySummary.templateDaySummary(with:chartHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v46 = a1;
  v5 = type metadata accessor for HeartRateChartPoint(0);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2521DBA30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2521DB9B0();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v43 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v43 - v23;
  sub_2521DBA00();
  sub_2521DB9A0();
  sub_2521DB9F0();
  v25 = v15[1];
  v51 = v22;
  v54 = v25;
  v55 = v15 + 1;
  v25(v22, v14);
  (*(v10 + 8))(v13, v9);
  v45 = v24;
  sub_2521DB960();
  v26 = sub_2521CB2B8();
  v27 = *(v26 + 16);
  if (v27)
  {
    v44 = a2;
    v49 = sub_2521DBAD0();
    v28 = *(v49 - 8);
    v29 = *(v28 + 80);
    v43[1] = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v48 = *(v28 + 72);
    v32 = v15[2];
    v31 = v15 + 2;
    v47 = v32;
    v33 = (v28 + 16);
    v34 = (v31 + 2);
    v35 = MEMORY[0x277D84F90];
    v50 = v31;
    do
    {
      v47(v8, v19, v14);
      (*v33)(&v8[*(v53 + 20)], v30, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2521C9DD8(0, v35[2] + 1, 1, v35, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
      }

      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        v35 = sub_2521C9DD8(v36 > 1, v37 + 1, 1, v35, &qword_27F4D4CF0, type metadata accessor for HeartRateChartPoint, type metadata accessor for HeartRateChartPoint);
      }

      v35[2] = v37 + 1;
      sub_2521CB250(v8, v35 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37, type metadata accessor for HeartRateChartPoint);
      v38 = v51;
      sub_2521DB960();
      v54(v19, v14);
      (*v34)(v19, v38, v14);
      v30 += v48;
      --v27;
    }

    while (v27);

    a2 = v44;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v39 = sub_2521CA174(v35, 173, 119.0 / a3, 3.0 / a3 * 119.0);

  v40 = sub_2521CAD88(v46, v39);

  v41 = v54;
  v54(v19, v14);
  result = v41(v45, v14);
  *a2 = 54;
  *(a2 + 8) = 0;
  *(a2 + 16) = 173;
  *(a2 + 24) = 0;
  *(a2 + 32) = v40;
  return result;
}

size_t sub_2521C9DD8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2521CBC58(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2521C9FCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2521CBCBC();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2521CA174(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for HeartRateBPMRange(0);
  v113 = *(v8 - 1);
  v9 = *(v113 + 64);
  (MEMORY[0x28223BE20])();
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2521DBA10();
  *&v114 = *(v100 - 8);
  v12 = *(v114 + 64);
  (MEMORY[0x28223BE20])();
  v99 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2521DBA30();
  v105 = *(v98 - 8);
  v14 = *(v105 + 64);
  (MEMORY[0x28223BE20])();
  v97 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2521DB9B0();
  v91 = *(v110 - 8);
  v16 = *(v91 + 64);
  (MEMORY[0x28223BE20])();
  v109 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for HeartRateChartData(0);
  v95 = *(v96 - 8);
  v18 = *(v95 + 64);
  v19 = (MEMORY[0x28223BE20])();
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v108 = &v82 - v23;
  MEMORY[0x28223BE20](v22);
  v107 = &v82 - v24;
  v112 = sub_2521DBAB0();
  v25 = *(v112 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v112);
  v103 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521CBBC4();
  v102 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for HeartRateChartPoint(0);
  v32 = *(v101 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v101);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521C88D0(0);
  v36 = sub_2521DC0D0();
  v36[2] = 25;
  v37 = MEMORY[0x277D84F90];
  v36[4] = MEMORY[0x277D84F90];
  v106 = v36 + 4;
  v36[5] = v37;
  v36[6] = v37;
  v36[7] = v37;
  v36[8] = v37;
  v36[9] = v37;
  v36[10] = v37;
  v36[11] = v37;
  v36[12] = v37;
  v36[13] = v37;
  v36[14] = v37;
  v36[15] = v37;
  v36[16] = v37;
  v36[17] = v37;
  v36[18] = v37;
  v36[19] = v37;
  v36[20] = v37;
  v36[21] = v37;
  v36[22] = v37;
  v36[23] = v37;
  v36[24] = v37;
  v36[25] = v37;
  v36[26] = v37;
  v36[27] = v37;
  v36[28] = v37;
  v104 = v36;
  v94 = *(a1 + 16);
  if (v94)
  {
    v38 = a1;
    v39 = 0;
    v93 = v38 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v92 = (v25 + 8);
    v89 = (v91 + 16);
    v88 = (v91 + 8);
    v87 = *MEMORY[0x277CC9980];
    v86 = (v114 + 104);
    v85 = (v114 + 8);
    v84 = (v105 + 8);
    v91 = *(v32 + 72);
    v83 = a2;
    v90 = v21;
    v111 = v35;
    do
    {
      v105 = v39;
      sub_2521CB1C8(v93 + v91 * v39, v35, type metadata accessor for HeartRateChartPoint);
      v40 = &v35[*(v101 + 20)];
      v41 = v103;
      sub_2521DBAC0();
      sub_2521DBAA0();
      (*v92)(v41, v112);
      v42 = *(v102 + 36);
      sub_2521CBA5C(&qword_27F4D4D00, MEMORY[0x277CC9A18]);
      sub_2521DC120();
      v43 = *&v31[v42];
      v44 = v115;
      v45 = MEMORY[0x277D84F90];
      while (v43 != v44)
      {
        v47 = sub_2521DC140();
        v50 = *v48;
        v49 = v48[1];
        v47(&v115, 0);
        result = sub_2521DC130();
        v52 = *(v45 + 2);
        if (!v52)
        {
          goto LABEL_15;
        }

        v53 = v52 - 1;
        v54 = &v45[16 * v52 - 16];
        v55 = *(v54 + 5);
        v56 = __OFSUB__(v50, v55);
        v57 = v50 - v55;
        if (v56)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v57 < a4)
        {
          v50 = *(v54 + 4);
          if (v49 < v50)
          {
            goto LABEL_37;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2521CA160(v45);
            v45 = result;
          }

          if (v52 > *(v45 + 2))
          {
            goto LABEL_38;
          }
        }

        else
        {
LABEL_15:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_2521C9FCC(0, v52 + 1, 1, v45);
          }

          v53 = *(v45 + 2);
          v58 = *(v45 + 3);
          if (v53 >= v58 >> 1)
          {
            v45 = sub_2521C9FCC((v58 > 1), v53 + 1, 1, v45);
          }

          *(v45 + 2) = v53 + 1;
        }

        v46 = &v45[16 * v53];
        *(v46 + 4) = v50;
        *(v46 + 5) = v49;
        sub_2521DC120();
        v43 = *&v31[v42];
        v44 = v115;
      }

      sub_2521CB168(v31, sub_2521CBBC4);
      v59 = *v89;
      v61 = v109;
      v60 = v110;
      (*v89)(v109, v111, v110);
      v59(v108, v61, v60);
      v62 = *(v45 + 2);
      if (v62)
      {
        v63 = (v45 + 32);
        v64 = MEMORY[0x277D84F90];
        v65 = v83;
        do
        {
          v114 = *v63;
          sub_2521DB9D0();
          *&v11[v8[5]] = v114;
          *&v11[v8[6]] = v65;
          *&v11[v8[7]] = a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_2521C9DD8(0, v64[2] + 1, 1, v64, &qword_27F4D4D10, type metadata accessor for HeartRateBPMRange, type metadata accessor for HeartRateBPMRange);
          }

          v67 = v64[2];
          v66 = v64[3];
          if (v67 >= v66 >> 1)
          {
            v64 = sub_2521C9DD8(v66 > 1, v67 + 1, 1, v64, &qword_27F4D4D10, type metadata accessor for HeartRateBPMRange, type metadata accessor for HeartRateBPMRange);
          }

          v64[2] = v67 + 1;
          sub_2521CB250(v11, v64 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v67, type metadata accessor for HeartRateBPMRange);
          ++v63;
          --v62;
        }

        while (v62);
      }

      else
      {
        v64 = MEMORY[0x277D84F90];
      }

      (*v88)(v109, v110);
      v69 = v107;
      v68 = v108;
      *&v108[*(v96 + 20)] = v64;
      sub_2521CB250(v68, v69, type metadata accessor for HeartRateChartData);
      v70 = v97;
      sub_2521DBA00();
      v71 = v99;
      v72 = v100;
      (*v86)(v99, v87, v100);
      v73 = sub_2521DBA20();
      (*v85)(v71, v72);
      (*v84)(v70, v98);
      v74 = v90;
      result = sub_2521CB1C8(v69, v90, type metadata accessor for HeartRateChartData);
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (v73 >= v104[2])
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v75 = v106;
      v76 = v106[v73];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[v73] = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = sub_2521C9DD8(0, v76[2] + 1, 1, v76, &qword_27F4D4D08, type metadata accessor for HeartRateChartData, type metadata accessor for HeartRateChartData);
        v106[v73] = v76;
      }

      v35 = v111;
      v79 = v76[2];
      v78 = v76[3];
      if (v79 >= v78 >> 1)
      {
        v81 = sub_2521C9DD8(v78 > 1, v79 + 1, 1, v76, &qword_27F4D4D08, type metadata accessor for HeartRateChartData, type metadata accessor for HeartRateChartData);
        v106[v73] = v81;
      }

      v39 = v105 + 1;
      sub_2521CB168(v107, type metadata accessor for HeartRateChartData);
      sub_2521CB168(v35, type metadata accessor for HeartRateChartPoint);
      v80 = v106[v73];
      *(v80 + 16) = v79 + 1;
      sub_2521CB250(v74, v80 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v79, type metadata accessor for HeartRateChartData);
    }

    while (v39 != v94);
  }

  return v104;
}

uint64_t sub_2521CAD88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeartRateHourlyData(0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2521DBA30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2521DB9B0();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v35);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  sub_2521DBA00();
  v34 = v18;
  sub_2521DB9F0();
  result = (*(v8 + 8))(v11, v7);
  v20 = *(a2 + 16);
  v31 = v12;
  if (v20)
  {
    v21 = 0;
    v22 = (a2 + 32);
    v23 = (v12 + 32);
    v24 = MEMORY[0x277D84F90];
    v25 = 0x91A2B3C4D5E70;
    while (v25)
    {
      v26 = *v22;
      swift_bridgeObjectRetain_n();
      sub_2521DB960();
      v27 = *(v26 + 16);

      if (!v27)
      {

        v26 = 0;
      }

      (*v23)(v6, v16, v35);
      *&v6[*(v33 + 20)] = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2521C9DD8(0, v24[2] + 1, 1, v24, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
      }

      v29 = v24[2];
      v28 = v24[3];
      if (v29 >= v28 >> 1)
      {
        v24 = sub_2521C9DD8(v28 > 1, v29 + 1, 1, v24, &qword_27F4D4CE8, type metadata accessor for HeartRateHourlyData, type metadata accessor for HeartRateHourlyData);
      }

      v24[2] = v29 + 1;
      result = sub_2521CB250(v6, v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, type metadata accessor for HeartRateHourlyData);
      v21 += 3600;
      --v25;
      ++v22;
      if (!--v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v31 + 8))(v34, v35);
    return v24;
  }

  return result;
}

uint64_t sub_2521CB168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2521CB1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521CB250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521CB2B8()
{
  v0 = sub_2521DBAD0();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_2521CBC58(0, &qword_27F4D4CD0, MEMORY[0x277CC9A28], MEMORY[0x277D84560]);
  v9 = *(v1 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = 8 * v9;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2521DC510;
  v15 = xmmword_2521DC520;
  sub_2521CBAF0(0, &qword_27F4D4CD8, MEMORY[0x277D83638]);
  sub_2521CBB50();
  sub_2521DBA40();
  v15 = xmmword_2521DC530;
  sub_2521DBA40();
  v15 = xmmword_2521DC540;
  sub_2521DBA40();
  sub_2521DBA80();
  v11 = *(v2 + 8);
  v11(v6, v0);
  v11(v8, v0);
  v15 = xmmword_2521DC550;
  sub_2521DBA40();
  v15 = xmmword_2521DC560;
  sub_2521DBA40();
  sub_2521DBA80();
  v11(v6, v0);
  v11(v8, v0);
  v15 = xmmword_2521DC570;
  sub_2521DBA40();
  v15 = xmmword_2521DC580;
  sub_2521DBA40();
  v15 = xmmword_2521DC590;
  sub_2521DBA40();
  v15 = xmmword_2521DC5A0;
  sub_2521DBA40();
  v15 = xmmword_2521DC5B0;
  sub_2521DBA40();
  sub_2521DBA80();
  v11(v6, v0);
  v11(v8, v0);
  v15 = xmmword_2521DC5C0;
  sub_2521DBA40();
  return v14;
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

uint64_t sub_2521CB67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2521CB6C4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_2521CB764(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2521CB79C()
{
  sub_2521DB9E0();
  if (v0 <= 0x3F)
  {
    sub_2521CBAF0(319, &qword_27F4D4C68, MEMORY[0x277D83D00]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2521CB90C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_2521DB9B0();
  if (v9 <= 0x3F)
  {
    sub_2521CBC58(319, a4, a5, a6);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2521CB9D8()
{
  result = sub_2521DB9B0();
  if (v1 <= 0x3F)
  {
    result = sub_2521DBAD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2521CBA5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2521CBAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2521CBB50()
{
  result = qword_27F4D4CE0;
  if (!qword_27F4D4CE0)
  {
    sub_2521CBAF0(255, &qword_27F4D4CD8, MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4CE0);
  }

  return result;
}

void sub_2521CBBC4()
{
  if (!qword_27F4D4CF8)
  {
    sub_2521DBAB0();
    sub_2521CBA5C(&qword_27F4D4D00, MEMORY[0x277CC9A18]);
    v0 = sub_2521DC170();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4CF8);
    }
  }
}

void sub_2521CBC58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2521CBCBC()
{
  if (!qword_27F4D4D18)
  {
    sub_2521CBAF0(255, &qword_27F4D4C68, MEMORY[0x277D83D00]);
    v0 = sub_2521DC190();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4D18);
    }
  }
}

uint64_t HeartRateSummaryStatistics.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2521DB8C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeartRateSummaryStatistics.dateInterval.setter(uint64_t a1)
{
  v3 = sub_2521DB8C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeartRateSummaryStatistics.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeartRateSummaryStatistics(0) + 20);

  return sub_2521CBE90(v3, a1);
}

uint64_t sub_2521CBE90(uint64_t a1, uint64_t a2)
{
  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateSummaryStatistics.sessionUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HeartRateSummaryStatistics(0) + 20);

  return sub_2521CBF68(a1, v3);
}

uint64_t sub_2521CBF68(uint64_t a1, uint64_t a2)
{
  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateSummaryStatistics.numberOfBuckets.setter(uint64_t a1)
{
  result = type metadata accessor for HeartRateSummaryStatistics(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HeartRateSummaryStatistics.buckets.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartRateSummaryStatistics(0) + 28));
}

uint64_t HeartRateSummaryStatistics.buckets.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateSummaryStatistics(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HeartRateSummaryStatistics.init(dateInterval:sessionUUID:numberOfBuckets:buckets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for HeartRateSummaryStatistics(0);
  v11 = v10[5];
  v12 = sub_2521DB9E0();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = sub_2521DB8C0();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  result = sub_2521CBF68(a2, a5 + v11);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t HeartRateSummaryStatistics.init(hkHeartRateSummaryStatistics:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521CCC34(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v8 = sub_2521DB8C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  v13 = swift_allocObject();
  *(v13 + 16) = &v31;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2521CC7BC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_2521CC868;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2521CC890;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [a1 enumerateBucketsWithBlock_];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v28[1] = v13;
    v17 = [a1 dateInterval];
    v28[0] = v12;
    sub_2521DB870();

    v18 = [a1 sessionUUID];
    v29 = v8;
    v19 = v9;
    if (v18)
    {
      v20 = v18;
      sub_2521DB9C0();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_2521DB9E0();
    v23 = *(*(v22 - 8) + 56);
    v23(v7, v21, 1, v22);
    v24 = [a1 numberOfBuckets];

    v25 = v31;
    v26 = type metadata accessor for HeartRateSummaryStatistics(0);
    v27 = v26[5];
    v23((a2 + v27), 1, 1, v22);
    (*(v19 + 32))(a2, v28[0], v29);

    sub_2521CBF68(v7, a2 + v27);
    *(a2 + v26[6]) = v24;
    *(a2 + v26[7]) = v25;
  }

  return result;
}

uint64_t sub_2521CC63C(void *a1, void **a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 bucketIndex];
  v11 = [a1 heartRatesInBeatsPerMinute];
  v12 = v9 + *(v5 + 28);
  sub_2521DBA50();

  *v9 = v10;
  v13 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_2521CA0F8(0, v13[2] + 1, 1, v13);
    *a2 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_2521CA0F8(v15 > 1, v16 + 1, 1, v13);
    *a2 = v13;
  }

  v13[2] = v16 + 1;
  return sub_2521CCD3C(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16);
}

void HeartRateSummaryStatisticsBucket.init(hkHeartRateSummaryStatisticsBucket:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 bucketIndex];
  v5 = [a1 heartRatesInBeatsPerMinute];
  v6 = a2 + *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  sub_2521DBA50();

  *a2 = v4;
}

uint64_t sub_2521CC868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2521CC890(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HeartRateSummaryStatisticsBucket.heartRatesInBeatsPerMinute.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  v4 = sub_2521DBAD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartRateSummaryStatisticsBucket.heartRatesInBeatsPerMinute.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  v4 = sub_2521DBAD0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeartRateSummaryStatisticsBucket.init(bucketIndex:heartRatesInBeatsPerMinute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for HeartRateSummaryStatisticsBucket(0) + 20);
  v6 = sub_2521DBAD0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

void sub_2521CCB30()
{
  sub_2521DB8C0();
  if (v0 <= 0x3F)
  {
    sub_2521CCC34(319, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2521CCC34(319, &qword_27F4D4D38, type metadata accessor for HeartRateSummaryStatisticsBucket, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2521CCC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2521CCCC0()
{
  result = sub_2521DBAD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2521CCD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateAppChartView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeartRateAppChartView(0);
  v5 = *(v4 + 20);
  sub_2521D6504(a1, a2, type metadata accessor for HeartRateAppChartViewModel);
  if (*(a1 + 8))
  {
    result = sub_2521D68D8(a1, type metadata accessor for HeartRateAppChartViewModel);
    *(a2 + v5) = 1;
    v7 = 0.5;
  }

  else
  {
    v8 = type metadata accessor for HeartRateAppChartViewModel();
    v9 = *(a1 + *(v8 + 56));
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v11 = *(a1 + *(v8 + 56));
      }

      v10 = sub_2521DC180();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_2521D68D8(a1, type metadata accessor for HeartRateAppChartViewModel);
    *(a2 + v5) = v10 > 0;
    v7 = 1.0;
    if (v10 > 0)
    {
      v7 = 0.5;
    }
  }

  *(a2 + *(v4 + 24)) = v7;
  return result;
}

uint64_t sub_2521CCED0@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  sub_2521D6C84(0, &qword_27F4D4FB8, MEMORY[0x277CBB480], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v114 = &v94 - v4;
  sub_2521D647C();
  v100 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v94 - v9;
  sub_2521D20E8();
  v106 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v102 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1B30();
  v103 = v13;
  v101 = *(v13 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v13);
  v123 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1A5C();
  v107 = v16;
  v105 = *(v16 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v16);
  v104 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1908();
  v110 = v19;
  v109 = *(v19 - 8);
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v19);
  v108 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1738();
  v113 = v22;
  v112 = *(v22 - 8);
  v23 = *(v112 + 64);
  MEMORY[0x28223BE20](v22);
  v111 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2521DB9B0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v126 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = (&v94 - v30);
  sub_2521DB9A0();
  sub_2521D80A8(v31, &v133);
  v97 = v26;
  v32 = *(v26 + 8);
  v125 = v31;
  v120 = v32;
  v121 = v26 + 8;
  v32(v31, v25);
  v33 = v133;
  v34 = v134;
  v35 = v135;
  v36 = v136;
  v116 = v137;
  v37 = type metadata accessor for HeartRateAppChartViewModel();
  v38 = *(v1 + v37[8]);
  if (v34)
  {
    v39 = 0;
  }

  else
  {
    v39 = v33;
  }

  v124 = sub_2521D8AF8();
  v41 = v40;
  v117 = *(v1 + v37[14]);
  v122 = v36;
  if (v36)
  {
    v42 = 10;
  }

  else
  {
    v42 = v35;
  }

  v43 = v39;
  v44 = v1;
  result = sub_2521D8B88(v43, v42);
  if (__OFADD__(v46, result))
  {
    __break(1u);
  }

  else
  {
    v118 = v46;
    v95 = result;
    v47 = vcvtd_n_f64_s64(v46 + result, 1uLL);
    v48 = v37[6];
    v49 = v125;
    sub_2521DB890();
    v119 = v25;
    v50 = v126;
    v51 = sub_2521DB880();
    v96 = &v94;
    LOBYTE(v129) = v34;
    LOBYTE(v127) = v122;
    v133 = v33;
    v134 = v34;
    v135 = v35;
    v136 = v122;
    v137 = v116;
    v138 = v38;
    MEMORY[0x28223BE20](v51);
    *(&v94 - 10) = &v133;
    *(&v94 - 9) = v1;
    *(&v94 - 8) = v124;
    *(&v94 - 56) = v41 & 1;
    *(&v94 - 6) = v49;
    *(&v94 - 5) = v50;
    *(&v94 - 4) = v117;
    *(&v94 - 3) = v47;
    *(&v94 - 2) = v38;
    sub_2521D1B94();
    sub_2521D1DBC();
    v52 = v38;
    sub_2521DBD30();
    sub_2521D6D3C(&qword_27F4D4C50, MEMORY[0x277CC9578]);
    v53 = v119;
    result = sub_2521DC080();
    if (result)
    {
      LODWORD(v117) = v34 & v122;
      v122 = v41 & 1;
      v54 = v97;
      v55 = *(v97 + 16);
      v56 = v98;
      v55(v98, v125, v53);
      v57 = v53;
      v58 = v100;
      v55((v56 + *(v100 + 48)), v126, v57);
      v59 = v99;
      sub_2521D6504(v56, v99, sub_2521D647C);
      v60 = *(v58 + 48);
      v61 = *(v54 + 32);
      v62 = v102;
      v61(v102, v59, v57);
      v63 = v120;
      v120(&v59[v60], v57);
      sub_2521D6740(v56, v59, sub_2521D647C);
      v64 = *(v58 + 48);
      v65 = v106;
      v61((v62 + *(v106 + 36)), &v59[v64], v57);
      v63(v59, v57);
      v66 = sub_2521DBE60();
      v67 = *(v66 - 8);
      v99 = *(v67 + 56);
      v68 = v44;
      v94 = v44;
      v100 = v67 + 56;
      v69 = v114;
      (v99)(v114, 1, 1, v66);
      v70 = sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30);
      v71 = sub_2521D217C();
      v72 = v104;
      v73 = v103;
      v74 = v123;
      sub_2521DBF90();
      v116 = MEMORY[0x277CBB480];
      sub_2521D656C(v69, &qword_27F4D4FB8, MEMORY[0x277CBB480]);
      sub_2521D68D8(v62, sub_2521D20E8);
      v75 = (*(v101 + 8))(v74, v73);
      MEMORY[0x28223BE20](v75);
      *(&v94 - 2) = v68;
      sub_2521D21EC();
      v77 = v76;
      v129 = v73;
      v130 = v65;
      v131 = v70;
      v132 = v71;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v79 = sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC);
      v80 = v108;
      v81 = v107;
      sub_2521DBF70();
      (*(v105 + 8))(v72, v81);
      v82 = v95;
      v127 = v95;
      v128 = v118;
      (v99)(v69, 1, 1, v66);
      sub_2521D6418(0, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
      v84 = v83;
      v129 = v81;
      v130 = v77;
      v131 = OpaqueTypeConformance2;
      v132 = v79;
      v85 = swift_getOpaqueTypeConformance2();
      v86 = sub_2521D2850();
      v87 = v111;
      v88 = v110;
      sub_2521DBFA0();
      sub_2521D656C(v69, &qword_27F4D4FB8, v116);
      v89 = (*(v109 + 8))(v80, v88);
      MEMORY[0x28223BE20](v89);
      v90 = v118;
      *(&v94 - 6) = v82;
      *(&v94 - 5) = v90;
      *(&v94 - 4) = v94;
      *(&v94 - 24) = v117;
      *(&v94 - 2) = v124;
      *(&v94 - 8) = v122;
      sub_2521D28EC();
      v129 = v88;
      v130 = v84;
      v131 = v85;
      v132 = v86;
      swift_getOpaqueTypeConformance2();
      sub_2521D2F78();
      v91 = v113;
      sub_2521DBF80();
      sub_2521D65FC(&v133);
      (*(v112 + 8))(v87, v91);
      v92 = v119;
      v93 = v120;
      v120(v126, v119);
      return v93(v125, v92);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2521CDB2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10@<D0>)
{
  v63 = a8;
  v61 = a6;
  v60 = a5;
  LODWORD(v68) = a4;
  v62 = a3;
  v67 = a9;
  v14 = type metadata accessor for HeartRateAverageLine(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D6C84(0, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v66 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v60 - v23;
  sub_2521D1C44();
  v26 = v25;
  v64 = *(v25 - 8);
  v27 = *(v64 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v69 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v70 = &v60 - v30;
  sub_2521DC110();
  v65 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = a1[1];
  v72 = *a1;
  v73 = v31;
  v74 = a1[2];
  v32 = a2;
  v33 = *(a2 + *(type metadata accessor for HeartRateAppChartView(0) + 24));
  sub_2521D1CC4();
  sub_2521DBBA0();
  if (v68)
  {
    v34 = 1;
    v35 = v24;
  }

  else
  {
    v36 = sub_2521DB9B0();
    v37 = *(*(v36 - 8) + 16);
    v37(v18, v60, v36);
    v37(&v18[*(v14 + 20)], v61, v36);
    v32 = a2;
    *&v18[*(v14 + 24)] = v62;
    v38 = v18;
    v35 = v24;
    sub_2521D6740(v38, v24, type metadata accessor for HeartRateAverageLine);
    v34 = 0;
  }

  (*(v15 + 56))(v35, v34, 1, v14);
  if (a7 >> 62)
  {
    if (sub_2521DC180())
    {
      goto LABEL_8;
    }

LABEL_16:
    a7 = 0;
    v49 = 0.0;
    v50 = 0;
    v68 = 0;
    v63 = 0;
    v48 = -1;
    goto LABEL_17;
  }

  if (!*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*(v32 + *(type metadata accessor for HeartRateAppChartViewModel() + 52)) != 1)
  {
    goto LABEL_13;
  }

  v39 = COERCE_DOUBLE(sub_2521D8C98());
  if (v39 == 0.0)
  {
    goto LABEL_13;
  }

  v40 = v39;
  v41 = sub_2521D8E6C();
  if (!v41)
  {

LABEL_13:
    v68 = 0;
    v45 = 0;
    v40 = *&a10;
    v43 = 1;
    v44 = v63;
    v42 = v63;
    goto LABEL_14;
  }

  v42 = v41;
  v43 = 0;
  v68 = a10;
  v44 = v63;
  v45 = v63;
LABEL_14:
  v46 = v44;

  v63 = v45;
  v48 = v43;
  sub_2521D6E34(v47, *&v40, v42, v68, v45, v43);
  v49 = v40;
  v50 = v42;
LABEL_17:
  v51 = v64;
  v52 = v69;
  (*(v64 + 16))(v69, v70, v26);
  v71[0] = v52;
  v62 = v26;
  v53 = v66;
  sub_2521D58DC(v35, v66, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
  *&v72 = a7;
  *(&v72 + 1) = v49;
  v54 = v35;
  v55 = v68;
  *&v73 = v50;
  *(&v73 + 1) = v68;
  v56 = v63;
  *&v74 = v63;
  BYTE8(v74) = v48;
  v71[1] = v53;
  v71[2] = &v72;
  sub_2521CE0D8(v71, v67);
  sub_2521D6E94(a7, *&v49, v50, v55, v56, v48);
  sub_2521D656C(v54, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine);
  v57 = *(v51 + 8);
  v58 = v62;
  v57(v70, v62);
  sub_2521D6E94(v72, *(&v72 + 1), v73, *(&v73 + 1), v74, SBYTE8(v74));
  sub_2521D656C(v53, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine);
  v57(v69, v58);
}

id sub_2521CE0D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521D6F14();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D1C44();
  v10 = v9;
  sub_2521D1CC4();
  v11 = *a1;
  v12 = v10;
  v30 = v10;
  v13 = *(v10 - 8);
  (*(v13 + 16))(v8, v11, v12);
  v14 = MEMORY[0x277D83D88];
  v29 = type metadata accessor for HeartRateAverageLine;
  sub_2521D6C84(0, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
  sub_2521D1EBC();
  v28 = *(v5 + 56);
  sub_2521D58DC(a1[1], &v8[v28], &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, v14);
  sub_2521D1D38();
  sub_2521D2DAC(&qword_27F4D4DC8, sub_2521D1D38, sub_2521D1F94);
  v15 = &v8[*(v5 + 72)];
  v16 = a1[2];
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = *(v16 + 32);
  LODWORD(v16) = *(v16 + 40);
  HIDWORD(v27) = v16;
  *v15 = v17;
  *(v15 + 1) = v18;
  *(v15 + 2) = v19;
  *(v15 + 3) = v20;
  *(v15 + 4) = v21;
  v15[40] = v16;
  (*(v13 + 32))(a2, v8, v30);
  sub_2521D6848(&v8[v28], a2 + *(v5 + 56), &qword_27F4D4D98, v29);
  v22 = a2 + *(v5 + 72);
  v23 = *(v15 + 4);
  v24 = v15[40];
  v25 = *(v15 + 1);
  *v22 = *v15;
  *(v22 + 16) = v25;
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  return sub_2521D6FCC(v17, v18, v19, v20, v21, SBYTE4(v27));
}

uint64_t sub_2521CE328(uint64_t a1)
{
  v2 = sub_2521DBC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2521DBBD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for HeartRateAppChartView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521D9040();
  sub_2521D6504(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeartRateAppChartView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_2521D6740(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for HeartRateAppChartView);
  sub_2521DBBC0();
  sub_2521DBC30();
  sub_2521D6A48(0, &qword_27F4D4E08, MEMORY[0x277CBB378]);
  sub_2521DB9B0();
  sub_2521D24B0();
  sub_2521DBE00();
}

uint64_t sub_2521CE5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2521D226C(0, &qword_27F4D4E40, sub_2521D237C);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  sub_2521D226C(0, &qword_27F4D4E10, sub_2521D22F4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  sub_2521D6A48(0, &qword_27F4D4E08, MEMORY[0x277CBB378]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v19 - v16;
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + *(type metadata accessor for HeartRateAppChartViewModel() + 36)) == 1)
  {
    sub_2521CE880(v13);
    sub_2521D6B70(v13, v17, &qword_27F4D4E10, sub_2521D22F4);
  }

  else
  {
    sub_2521CF080(a1, v9);
    sub_2521D6B70(v9, v17, &qword_27F4D4E40, sub_2521D237C);
  }

  sub_2521D6A48(0, &qword_27F4D4FE0, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_2521D6AF0(v17, a3, &qword_27F4D4E08, sub_2521D6A48);
}

uint64_t sub_2521CE880@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_2521DBC90();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2521DBD20();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v60 = v5;
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v56 - v7;
  sub_2521D237C();
  v61 = v9;
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D22F4();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v69 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v56 - v16;
  v18 = sub_2521DBDB0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v68 = sub_2521DBDD0();
  v65 = *(v68 - 8);
  v20 = *(v65 + 64);
  v21 = MEMORY[0x28223BE20](v68);
  v67 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v56 - v23;
  v66 = sub_2521DBAF0();
  v63 = *(v66 - 8);
  v25 = *(v63 + 64);
  v26 = MEMORY[0x28223BE20](v66);
  v64 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = v56 - v28;
  sub_2521DBAE0();
  sub_2521DBDA0();
  v29 = v24;
  sub_2521DBDC0();
  if (!sub_2521DBE30())
  {
    sub_2521DC050();
    v57 = v35;
    v36 = sub_2521DBD10();
    MEMORY[0x28223BE20](v36);
    sub_2521DBC80();
    v55 = MEMORY[0x277CE0BC8];
    v53 = &v52;
    v54 = MEMORY[0x277CE0BD8];
    v52 = sub_2521D6C64;
    sub_2521DBBE0();
    v34 = v8;
    goto LABEL_5;
  }

  v30 = 1;
  if (sub_2521DBE30() == 2)
  {
    sub_2521DC060();
    v57 = v31;
    v56[1] = v32;
    v33 = sub_2521DBD10();
    MEMORY[0x28223BE20](v33);
    sub_2521DBC80();
    v55 = MEMORY[0x277CE0BC8];
    v53 = &v52;
    v54 = MEMORY[0x277CE0BD8];
    v52 = sub_2521D6BDC;
    v34 = v8;
    sub_2521DBBE0();
LABEL_5:
    sub_2521D242C();
    v37 = v58;
    v38 = v60;
    sub_2521DBD90();
    (*(v62 + 8))(v34, v38);
    (*(v59 + 32))(v17, v37, v61);
    sub_2521D6BFC(0, &qword_27F4D4FE8, sub_2521D237C, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v30 = 0;
  }

  sub_2521D6BFC(0, &qword_27F4D4E20, sub_2521D237C, MEMORY[0x277CBB378]);
  (*(*(v39 - 8) + 56))(v17, v30, 1, v39);
  v40 = v63;
  v41 = v64;
  v42 = v66;
  (*(v63 + 16))(v64, v71, v66);
  v72[0] = v41;
  v43 = v65;
  v44 = v67;
  v45 = v29;
  v46 = v29;
  v47 = v68;
  (*(v65 + 16))(v67, v46, v68);
  v72[1] = v44;
  v48 = v69;
  sub_2521C75B8(v17, v69);
  v72[2] = v48;
  sub_2521D0CF4(v72, v70);
  sub_2521C761C(v17);
  v49 = *(v43 + 8);
  v49(v45, v47);
  v50 = *(v40 + 8);
  v50(v71, v42);
  sub_2521C761C(v48);
  v49(v44, v47);
  return (v50)(v41, v42);
}

uint64_t sub_2521CF080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v60 = a2;
  v2 = sub_2521DBC90();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2521DBD20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v55 = v6;
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  sub_2521D237C();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = sub_2521DBDB0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v52 = sub_2521DBDD0();
  v51 = *(v52 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v52);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v50 = sub_2521DBAF0();
  v24 = *(v50 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v50);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v30 = &v47 - v29;
  v48 = &v47 - v29;
  sub_2521DBAE0();
  sub_2521DBDA0();
  sub_2521DBDC0();
  sub_2521DBD10();
  v61 = v58;
  v62 = v59;
  sub_2521DBC80();
  sub_2521DBBE0();
  sub_2521D242C();
  v31 = v55;
  sub_2521DBD90();
  (*(v53 + 8))(v9, v31);
  v32 = v24[2];
  v49 = v28;
  v33 = v30;
  v34 = v50;
  v32(v28, v33, v50);
  v63[0] = v28;
  v35 = v51;
  v36 = *(v51 + 16);
  v47 = v21;
  v37 = v52;
  v36(v21, v23, v52);
  v63[1] = v21;
  v38 = v56;
  v39 = v57;
  v40 = v54;
  (*(v56 + 16))(v54, v15, v57);
  v63[2] = v40;
  sub_2521D0EF4(v63, v60);
  v41 = *(v38 + 8);
  v42 = v15;
  v43 = v39;
  v41(v42, v39);
  v44 = *(v35 + 8);
  v44(v23, v37);
  v45 = v24[1];
  v45(v48, v34);
  v41(v40, v43);
  v44(v47, v37);
  return (v45)(v49, v34);
}

uint64_t sub_2521CF668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v62 = a6;
  v63 = a5;
  v58 = a4;
  v55 = a1;
  v56 = a2;
  v66 = a7;
  sub_2521D6650();
  v65 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D6C84(0, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v53 - v15;
  v16 = sub_2521DBBD0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = type metadata accessor for HeartRateAppChartView(0);
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2521DBC40();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_2521D2990();
  v57 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - v29;
  sub_2521DC110();
  v60 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBBC0();
  sub_2521D66F0();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2521DC7E0;
  v32 = v56;
  *(v31 + 32) = v55;
  *(v31 + 40) = v32;
  sub_2521D6504(a3, &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeartRateAppChartView);
  v33 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v34 = v33 + v19;
  v35 = swift_allocObject();
  sub_2521D6740(v20, v35 + v33, type metadata accessor for HeartRateAppChartView);
  *(v35 + v34) = v58 & 1;
  sub_2521DBBC0();
  sub_2521D2A8C();
  sub_2521D2B68();
  v37 = v36;
  v38 = sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C);
  v67 = v37;
  v68 = MEMORY[0x277CE0F78];
  v69 = v38;
  v70 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  v39 = v30;
  v53 = v30;
  sub_2521DBE00();
  v40 = v59;
  sub_2521D03DC(v63, v62 & 1, v59);
  v41 = v24;
  v42 = *(v24 + 16);
  v43 = v39;
  v44 = v57;
  v42(v28, v43, v57);
  v45 = MEMORY[0x277D83D88];
  v46 = v61;
  sub_2521D58DC(v40, v61, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
  sub_2521D6D3C(&qword_27F4D4EF0, sub_2521D2990);
  v47 = v64;
  v42(v64, v28, v44);
  sub_2521D3030();
  v48 = v65;
  v49 = *(v65 + 48);
  sub_2521D58DC(v46, &v47[v49], &qword_27F4D4ED8, sub_2521D2EE8, v45);
  v50 = v66;
  (*(v41 + 32))(v66, v47, v44);
  sub_2521D6848(&v47[v49], v50 + *(v48 + 48), &qword_27F4D4ED8, sub_2521D2EE8);
  sub_2521D656C(v40, &qword_27F4D4ED8, sub_2521D2EE8);
  v51 = *(v41 + 8);
  v51(v53, v44);
  sub_2521D656C(v46, &qword_27F4D4ED8, sub_2521D2EE8);
  v51(v28, v44);
}

uint64_t sub_2521CFCE4(uint64_t a1, uint64_t a2, char a3)
{
  sub_2521D2B68();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521CFED4(a3 & 1, v8);
  v9 = *(a2 + *(type metadata accessor for HeartRateAppChartViewModel() + 32));
  sub_2521DBFE0();
  v10 = *(a2 + *(type metadata accessor for HeartRateAppChartView(0) + 24));
  v11 = sub_2521DC000();

  v13[1] = v11;
  sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C);
  sub_2521DBD80();

  sub_2521D68D8(v8, sub_2521D2B68);
}

uint64_t sub_2521CFED4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_2521DBC90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2521DBD20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2521D2C78();
  v12 = v11;
  v33 = *(v11 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D2BDC(0, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  if (a1 & 1) != 0 || (sub_2521DBE20(), (v37))
  {
    v22 = 1;
    v23 = v36;
  }

  else
  {
    if (sub_2521DBE30() == 1)
    {
      v24 = sub_2521DBD10();
      MEMORY[0x28223BE20](v24);
      sub_2521DBC80();
      sub_2521D6418(0, &qword_27F4D4EB0, MEMORY[0x277CE0BD8], MEMORY[0x277CDF758], MEMORY[0x277CDFAB8]);
      v31 = v25;
      v32 = sub_2521D2D08();
      v29 = sub_2521D69C0;
      v30 = &v29;
      sub_2521DBBE0();
      (*(v33 + 32))(v21, v15, v12);
    }

    else
    {
      v26 = sub_2521DBD10();
      MEMORY[0x28223BE20](v26);
      sub_2521DBC80();
      v32 = MEMORY[0x277CE0BC8];
      v30 = &v29;
      v31 = MEMORY[0x277CE0BD8];
      v29 = sub_2521D6938;
      sub_2521DBBE0();
      (*(v34 + 32))(v21, v6, v35);
    }

    sub_2521D2BDC(0, &qword_27F4D4FD8, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v27 = v36;
    sub_2521D6940(v21, v36);
    v23 = v27;
    v22 = 0;
  }

  return (*(v18 + 56))(v23, v22, 1, v17);
}

uint64_t sub_2521D03DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2521DBBD0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2521DBC40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2521D2EE8();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = *(v13 + 56);

    return v16(a3, 1, 1, v11);
  }

  else
  {
    v20 = v13;
    sub_2521DBBC0();
    sub_2521D66F0();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2521DC7F0;
    *(v18 + 32) = a1;
    *(swift_allocObject() + 16) = a1;
    sub_2521DBBC0();
    sub_2521D6418(0, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    sub_2521DBE00();
    (*(v20 + 32))(a3, v15, v11);
    return (*(v20 + 56))(a3, 0, 1, v11);
  }
}

uint64_t sub_2521D0694(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_2521DB930();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2521DB900();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2521DB910();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v49);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2521DB950();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v25 = *(v2 + *(type metadata accessor for HeartRateAppChartViewModel() + 48));
  v26 = (v6 + 8);
  v27 = (v10 + 8);
  v28 = (v15 + 8);
  if (v25 == 1)
  {
    MEMORY[0x25309B630]();
    sub_2521DB8F0();
    sub_2521DB8E0();
    (*v26)(v9, v50);
    sub_2521DB8D0();
    (*v27)(v13, v49);
    v29 = *v28;
    (*v28)(v22, v14);
    sub_2521D6D3C(&qword_27F4D5000, MEMORY[0x277CC9428]);
    sub_2521DB990();
    v29(v24, v14);
    v56 = 0;
    v57 = 0xE000000000000000;
    v30 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v30 = v58 & 0xFFFFFFFFFFFFLL;
    }

    v52 = v58;
    v53 = v59;
    v54 = 0;
    v55 = v30;
    v31 = sub_2521DC0B0();
    v33 = v32;
    if (v32)
    {
      v34 = v31;
      sub_2521DC110();
      do
      {
        sub_2521DC100();
        sub_2521DC0F0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v36 = sub_2521DC070();

        if ((v36 & 1) == 0)
        {
          MEMORY[0x25309BE70](v34, v33);
        }

        v34 = sub_2521DC0B0();
        v33 = v35;
      }

      while (v35);
LABEL_20:
      v33 = v56;
    }
  }

  else
  {
    MEMORY[0x25309B630]();
    sub_2521DB8F0();
    sub_2521DB8E0();
    (*v26)(v9, v50);
    sub_2521DB8D0();
    (*v27)(v13, v49);
    v37 = *v28;
    (*v28)(v19, v14);
    v38 = v46;
    sub_2521DB920();
    sub_2521DB940();
    (*(v47 + 8))(v38, v48);
    v37(v22, v14);
    sub_2521D6D3C(&qword_27F4D5000, MEMORY[0x277CC9428]);
    sub_2521DB990();
    v37(v24, v14);
    v56 = 0;
    v57 = 0xE000000000000000;
    v39 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v39 = v58 & 0xFFFFFFFFFFFFLL;
    }

    v52 = v58;
    v53 = v59;
    v54 = 0;
    v55 = v39;
    v40 = sub_2521DC0B0();
    v33 = v41;
    if (v41)
    {
      v42 = v40;
      sub_2521DC110();
      do
      {
        sub_2521DC100();
        sub_2521DC0F0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44 = sub_2521DC070();

        if ((v44 & 1) == 0)
        {
          MEMORY[0x25309BE70](v42, v33);
        }

        v42 = sub_2521DC0B0();
        v33 = v43;
      }

      while (v43);
      goto LABEL_20;
    }
  }

  return v33;
}

uint64_t sub_2521D0CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521D6DA4(0, &qword_27F4D5008, sub_2521D22F4);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_2521DBAF0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = sub_2521DBDD0();
  v12 = *(v5 + 56);
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  sub_2521D22F4();
  sub_2521D2DAC(&qword_27F4D4E58, sub_2521D22F4, sub_2521D2640);
  v14 = *(v5 + 72);
  sub_2521C75B8(a1[2], &v8[v14]);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v12], v11);
  return sub_2521C7678(&v8[v14], a2 + *(v5 + 72));
}

uint64_t sub_2521D0EF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521D6DA4(0, &qword_27F4D5010, sub_2521D237C);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = sub_2521DBAF0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = sub_2521DBDD0();
  v12 = *(v5 + 56);
  v21 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  sub_2521D237C();
  v15 = v14;
  sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
  sub_2521D242C();
  v16 = *(v5 + 72);
  v17 = a1[2];
  v18 = *(v15 - 8);
  (*(v18 + 16))(&v8[v16], v17, v15);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v21], v11);
  return (*(v18 + 32))(a2 + *(v5 + 72), &v8[v16], v15);
}

uint64_t sub_2521D1140@<X0>(uint64_t a1@<X8>)
{
  sub_2521D6C84(0, &qword_27F4D4FF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - v4;
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_2521DB9B0();
  sub_2521DBE20();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_2521D0694(v5);
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v19[0] = v9;
    v19[1] = v11;
    sub_2521D6CE8();
    v12 = sub_2521DBF60();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 16) = v16 & 1;
    *(a1 + 24) = v18;
  }

  return result;
}

double sub_2521D1340@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2521DBEB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEA0();
  sub_2521DBE90();
  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v4 = sub_2521DBF50();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  result = 0.0;
  *(a1 + 32) = xmmword_2521DC800;
  return result;
}

uint64_t sub_2521D14D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2521DBEB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEA0();
  sub_2521DBE90();
  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v4 = sub_2521DBF50();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_2521D16B4()
{
  result = type metadata accessor for HeartRateAppChartViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2521D1738()
{
  if (!qword_27F4D4D60)
  {
    sub_2521D1908();
    sub_2521D6418(255, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
    sub_2521D1A5C();
    sub_2521D21EC();
    sub_2521D1B30();
    sub_2521D20E8();
    sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30);
    sub_2521D217C();
    swift_getOpaqueTypeConformance2();
    sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC);
    swift_getOpaqueTypeConformance2();
    sub_2521D2850();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D60);
    }
  }
}

void sub_2521D1908()
{
  if (!qword_27F4D4D68)
  {
    sub_2521D1A5C();
    sub_2521D21EC();
    sub_2521D1B30();
    sub_2521D20E8();
    sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30);
    sub_2521D217C();
    swift_getOpaqueTypeConformance2();
    sub_2521D6D3C(&qword_27F4D4E70, sub_2521D21EC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D68);
    }
  }
}

void sub_2521D1A5C()
{
  if (!qword_27F4D4D70)
  {
    sub_2521D1B30();
    sub_2521D20E8();
    sub_2521D6D3C(&qword_27F4D4DF0, sub_2521D1B30);
    sub_2521D217C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D70);
    }
  }
}

void sub_2521D1B30()
{
  if (!qword_27F4D4D78)
  {
    sub_2521D1B94();
    sub_2521D1DBC();
    v0 = sub_2521DBD40();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4D78);
    }
  }
}

void sub_2521D1B94()
{
  if (!qword_27F4D4D80)
  {
    sub_2521D1C44();
    sub_2521D6C84(255, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
    sub_2521D1D38();
    v0 = sub_2521DBB00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4D80);
    }
  }
}

void sub_2521D1C44()
{
  if (!qword_27F4D4D88)
  {
    sub_2521D1CC4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4D88);
    }
  }
}

unint64_t sub_2521D1CC4()
{
  result = qword_27F4D4D90;
  if (!qword_27F4D4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4D90);
  }

  return result;
}

void sub_2521D1D38()
{
  if (!qword_27F4D4DA0)
  {
    sub_2521D6418(255, &qword_27F4D4DA8, &type metadata for HeartRateHighlightedBreathePoints, &type metadata for HeartRateHighlightedWorkoutPoints, MEMORY[0x277CBB378]);
    v0 = sub_2521DC150();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4DA0);
    }
  }
}

unint64_t sub_2521D1DBC()
{
  result = qword_27F4D4DB0;
  if (!qword_27F4D4DB0)
  {
    sub_2521D1B94();
    sub_2521D1CC4();
    swift_getOpaqueTypeConformance2();
    sub_2521D1EBC();
    sub_2521D2DAC(&qword_27F4D4DC8, sub_2521D1D38, sub_2521D1F94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DB0);
  }

  return result;
}

unint64_t sub_2521D1EBC()
{
  result = qword_27F4D4DB8;
  if (!qword_27F4D4DB8)
  {
    sub_2521D6C84(255, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
    sub_2521D6D3C(&qword_27F4D4DC0, type metadata accessor for HeartRateAverageLine);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DB8);
  }

  return result;
}

unint64_t sub_2521D1F94()
{
  result = qword_27F4D4DD0;
  if (!qword_27F4D4DD0)
  {
    sub_2521D6418(255, &qword_27F4D4DA8, &type metadata for HeartRateHighlightedBreathePoints, &type metadata for HeartRateHighlightedWorkoutPoints, MEMORY[0x277CBB378]);
    sub_2521D2040();
    sub_2521D2094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DD0);
  }

  return result;
}

unint64_t sub_2521D2040()
{
  result = qword_27F4D4DD8;
  if (!qword_27F4D4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DD8);
  }

  return result;
}

unint64_t sub_2521D2094()
{
  result = qword_27F4D4DE0;
  if (!qword_27F4D4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DE0);
  }

  return result;
}

void sub_2521D20E8()
{
  if (!qword_27F4D4DE8)
  {
    sub_2521DB9B0();
    sub_2521D6D3C(&qword_27F4D4C50, MEMORY[0x277CC9578]);
    v0 = sub_2521DC090();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4DE8);
    }
  }
}

unint64_t sub_2521D217C()
{
  result = qword_27F4D4DF8;
  if (!qword_27F4D4DF8)
  {
    sub_2521D20E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4DF8);
  }

  return result;
}

void sub_2521D21EC()
{
  if (!qword_27F4D4E00)
  {
    sub_2521D6A48(255, &qword_27F4D4E08, MEMORY[0x277CBB378]);
    sub_2521D24B0();
    v0 = sub_2521DBE10();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4E00);
    }
  }
}

void sub_2521D226C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2521DBAF0();
    sub_2521DBDD0();
    a3(255);
    v5 = sub_2521DBB00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2521D22F4()
{
  if (!qword_27F4D4E18)
  {
    sub_2521D6BFC(255, &qword_27F4D4E20, sub_2521D237C, MEMORY[0x277CBB378]);
    v0 = sub_2521DC150();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4E18);
    }
  }
}

void sub_2521D237C()
{
  if (!qword_27F4D4E28)
  {
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4E28);
    }
  }
}

unint64_t sub_2521D242C()
{
  result = qword_27F4D4E38;
  if (!qword_27F4D4E38)
  {
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E38);
  }

  return result;
}

unint64_t sub_2521D24B0()
{
  result = qword_27F4D4E48;
  if (!qword_27F4D4E48)
  {
    sub_2521D6A48(255, &qword_27F4D4E08, MEMORY[0x277CBB378]);
    sub_2521D254C();
    sub_2521D2744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E48);
  }

  return result;
}

unint64_t sub_2521D254C()
{
  result = qword_27F4D4E50;
  if (!qword_27F4D4E50)
  {
    sub_2521D226C(255, &qword_27F4D4E10, sub_2521D22F4);
    sub_2521D2DAC(&qword_27F4D4E58, sub_2521D22F4, sub_2521D2640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E50);
  }

  return result;
}

unint64_t sub_2521D2640()
{
  result = qword_27F4D4E60;
  if (!qword_27F4D4E60)
  {
    sub_2521D6BFC(255, &qword_27F4D4E20, sub_2521D237C, MEMORY[0x277CBB378]);
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E60);
  }

  return result;
}

unint64_t sub_2521D2744()
{
  result = qword_27F4D4E68;
  if (!qword_27F4D4E68)
  {
    sub_2521D226C(255, &qword_27F4D4E40, sub_2521D237C);
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E68);
  }

  return result;
}

unint64_t sub_2521D2850()
{
  result = qword_27F4D4E78;
  if (!qword_27F4D4E78)
  {
    sub_2521D6418(255, &qword_27F4D4CD8, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4E78);
  }

  return result;
}

void sub_2521D28EC()
{
  if (!qword_27F4D4E80)
  {
    sub_2521D2990();
    sub_2521D6C84(255, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
    v0 = sub_2521DBB00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4E80);
    }
  }
}

void sub_2521D2990()
{
  if (!qword_27F4D4E88)
  {
    sub_2521D2A8C();
    sub_2521D2B68();
    sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C);
    swift_getOpaqueTypeConformance2();
    v0 = sub_2521DBE10();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4E88);
    }
  }
}

void sub_2521D2A8C()
{
  if (!qword_27F4D4E90)
  {
    sub_2521D2B68();
    sub_2521D2DAC(&qword_27F4D4EC0, sub_2521D2B68, sub_2521D2E1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4E90);
    }
  }
}

void sub_2521D2B68()
{
  if (!qword_27F4D4E98)
  {
    sub_2521D2BDC(255, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
    v0 = sub_2521DC150();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4E98);
    }
  }
}

void sub_2521D2BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D2C78();
    v7 = v6;
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2521D2C78()
{
  if (!qword_27F4D4EA8)
  {
    sub_2521D6418(255, &qword_27F4D4EB0, MEMORY[0x277CE0BD8], MEMORY[0x277CDF758], MEMORY[0x277CDFAB8]);
    sub_2521D2D08();
    v0 = sub_2521DBBF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4EA8);
    }
  }
}

unint64_t sub_2521D2D08()
{
  result = qword_27F4D4EB8;
  if (!qword_27F4D4EB8)
  {
    sub_2521D6418(255, &qword_27F4D4EB0, MEMORY[0x277CE0BD8], MEMORY[0x277CDF758], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EB8);
  }

  return result;
}

uint64_t sub_2521D2DAC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_2521D2E1C()
{
  result = qword_27F4D4EC8;
  if (!qword_27F4D4EC8)
  {
    sub_2521D2BDC(255, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
    sub_2521D6D3C(&qword_27F4D4ED0, sub_2521D2C78);
    sub_2521D242C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EC8);
  }

  return result;
}

void sub_2521D2EE8()
{
  if (!qword_27F4D4EE0)
  {
    sub_2521D6418(255, &qword_27F4D4E30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CBB330]);
    sub_2521D242C();
    v0 = sub_2521DBE10();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4EE0);
    }
  }
}

unint64_t sub_2521D2F78()
{
  result = qword_27F4D4EE8;
  if (!qword_27F4D4EE8)
  {
    sub_2521D28EC();
    sub_2521D6D3C(&qword_27F4D4EF0, sub_2521D2990);
    sub_2521D3030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EE8);
  }

  return result;
}

unint64_t sub_2521D3030()
{
  result = qword_27F4D4EF8;
  if (!qword_27F4D4EF8)
  {
    sub_2521D6C84(255, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
    sub_2521D6D3C(&qword_27F4D4F00, sub_2521D2EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4EF8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2521D311C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2521D3164(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2521D31B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2521D31FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2521D327C()
{
  result = sub_2521DB9B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2521D3314@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_2521D6418(0, &qword_27F4D4F18, MEMORY[0x277D83B88], MEMORY[0x277CBB5A0], MEMORY[0x277CBB340]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = v25 - v4;
  sub_2521D579C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v25[1] = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v25[0] = v25 - v9;
  v26 = sub_2521DBDF0();
  v28 = *(v26 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D57FC();
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DBEC0();
  sub_2521DB9B0();
  sub_2521DBC00();

  sub_2521DBEC0();
  v18 = type metadata accessor for HeartRateAverageLine(0);
  v19 = v1 + *(v18 + 20);
  sub_2521DBC00();

  sub_2521DBEC0();
  v35[0] = *(v1 + *(v18 + 24));
  sub_2521DBC00();

  sub_2521DBDE0();
  sub_2521DBE70();
  v20 = MEMORY[0x277CBB450];
  v21 = v26;
  sub_2521DBBB0();
  sub_2521D5880(v35);
  (*(v28 + 8))(v12, v21);
  v22 = sub_2521DBFF0();
  v33 = v20;
  v34 = v22;
  v32 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v29;
  sub_2521DBB90();

  return (*(v30 + 8))(v17, v23);
}

uint64_t sub_2521D377C()
{
  v0 = sub_2521DBC90();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2521DBD20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_2521DBD10();
  MEMORY[0x28223BE20](v4);
  sub_2521DBC80();
  v6[3] = MEMORY[0x277CE0BC8];
  v6[1] = v6;
  v6[2] = MEMORY[0x277CE0BD8];
  v6[0] = sub_2521D68D0;
  sub_2521DBBE0();
}

uint64_t sub_2521D3964@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2521DBEB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEA0();
  sub_2521DBE90();
  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v4 = sub_2521DBF50();
  v6 = v5;
  v8 = v7;
  sub_2521DBFF0();
  v9 = sub_2521DBF30();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_2521D6408(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_2521D3B74@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v42 = a2;
  v53 = a3;
  v6 = sub_2521DBCC0();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2521DBCF0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v13 = sub_2521DBD00();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D5B68();
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2521DBC70();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2521DB9B0();
  v45 = *(v25 - 8);
  v46 = v25;
  v26 = *(v45 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  sub_2521DC110();
  v41 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = [v29 quantity];
  [v30 _beatsPerMinute];
  v32 = v31;

  v33 = round(v32);
  v34 = [v29 date];
  sub_2521DB980();

  if (v33 >= a4)
  {
    sub_2521DBC60();
  }

  else
  {
    sub_2521DBC50();
  }

  sub_2521D5220(v28, v42, v20, *&v33);
  sub_2521DBCB0();
  sub_2521DBCD0();
  (*(v43 + 8))(v9, v44);
  sub_2521DBCE0();
  v35 = sub_2521DBCA0();
  MEMORY[0x28223BE20](v35);
  sub_2521DC040();
  sub_2521D5C30();
  v37 = v36;
  v54 = sub_2521DBE50();
  v55 = MEMORY[0x277CE0F78];
  v56 = MEMORY[0x277CBB468];
  v57 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v37;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v50;
  sub_2521DBB60();
  (*(v51 + 8))(v16, v52);
  (*(v49 + 8))(v20, v39);
  (*(v47 + 8))(v24, v48);
  (*(v45 + 8))(v28, v46);
}

uint64_t sub_2521D4124()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  swift_getKeyPath();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  sub_2521D6C84(0, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
  sub_2521D5A54();
  sub_2521D5CC8();
  sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C);
  sub_2521D5B68();
  sub_2521D5C30();
  sub_2521DBE50();
  swift_bridgeObjectRetain_n();
  v5 = v3;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2521DC020();
}

uint64_t sub_2521D4364@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a3;
  sub_2521D60AC(0, &qword_27F4D4F68, MEMORY[0x277CBB378]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v84 - v7;
  sub_2521D6BFC(0, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v84 - v10;
  v91 = sub_2521DBCC0();
  v90 = *(v91 - 1);
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2521DBCF0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = sub_2521DBD00();
  v95 = *(v17 - 8);
  v96 = v17;
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v17);
  v92 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D5B68();
  v102 = *(v20 - 8);
  v103 = v20;
  v21 = *(v102 + 64);
  MEMORY[0x28223BE20](v20);
  v101 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2521DBC70();
  v93 = *(v23 - 8);
  v94 = v23;
  v24 = *(v93 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v86 = &v84 - v28;
  sub_2521D5A54();
  v97 = *(v29 - 8);
  v98 = v29;
  v30 = *(v97 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v88 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v85 = &v84 - v33;
  sub_2521D5998(0, &qword_27F4D4F40, MEMORY[0x277CBB378]);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v105 = &v84 - v36;
  v37 = sub_2521DB9B0();
  v99 = *(v37 - 8);
  v100 = v37;
  v38 = *(v99 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  sub_2521DC110();
  v104 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = [v41 quantity];
  [v42 _beatsPerMinute];
  v44 = v43;

  v45 = round(v44);
  v46 = [v41 date];
  sub_2521DB980();

  v48 = *(a2 + 8);
  v47 = *(a2 + 16);
  if ([v48 isEqual_] && objc_msgSend(v41, sel_isEqual_, v48))
  {
    v49 = v86;
    if (*(a2 + 24) <= v45)
    {
      sub_2521DBC60();
    }

    else
    {
      sub_2521DBC50();
    }

    v75 = v101;
    sub_2521D5220(v40, *(a2 + 32), v101, *&v45);
    sub_2521DBCB0();
    sub_2521DBCD0();
    (*(v90 + 8))(v13, v91);
    sub_2521DBCE0();
    v76 = v92;
    v77 = sub_2521DBCA0();
    MEMORY[0x28223BE20](v77);
    sub_2521DC040();
    sub_2521D5C30();
    v79 = v78;
    v107 = sub_2521DBE50();
    v108 = MEMORY[0x277CE0F78];
    v109 = MEMORY[0x277CBB468];
    v110 = MEMORY[0x277CE0F60];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v107 = v79;
    v108 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v81 = v103;
    v82 = v85;
    sub_2521DBB60();
    (*(v95 + 8))(v76, v96);
    (*(v102 + 8))(v75, v81);
    (*(v93 + 8))(v49, v94);
    (*(v99 + 8))(v40, v100);
    v59 = v89;
    (*(v97 + 32))(v89, v82, v98);
    sub_2521D6BFC(0, &qword_27F4D4FA8, sub_2521D5A54, MEMORY[0x277CBB370]);
    goto LABEL_15;
  }

  if ([v41 isEqual_])
  {
    v50 = *(a2 + 32);
    sub_2521DBC50();
    v51 = v101;
    sub_2521D5220(v40, v50, v101, *&v45);
    sub_2521DBCB0();
    sub_2521DBCD0();
    (*(v90 + 8))(v13, v91);
    sub_2521DBCE0();
    v52 = v92;
    v53 = sub_2521DBCA0();
    MEMORY[0x28223BE20](v53);
    sub_2521DC040();
    sub_2521D5C30();
    v55 = v54;
    v107 = sub_2521DBE50();
    v108 = MEMORY[0x277CE0F78];
    v109 = MEMORY[0x277CBB468];
    v110 = MEMORY[0x277CE0F60];
    v56 = swift_getOpaqueTypeConformance2();
    v107 = v55;
    v108 = v56;
    swift_getOpaqueTypeConformance2();
    v57 = v103;
    v58 = v88;
    sub_2521DBB60();
    (*(v95 + 8))(v52, v96);
    (*(v102 + 8))(v51, v57);
    (*(v93 + 8))(v27, v94);
    (*(v99 + 8))(v40, v100);
    v59 = v89;
    (*(v97 + 32))(v89, v58, v98);
    sub_2521D6BFC(0, &qword_27F4D4FA8, sub_2521D5A54, MEMORY[0x277CBB370]);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v74 = v105;
    sub_2521C7288(v59, v105);
    goto LABEL_16;
  }

  v60 = [v41 isEqual_];
  v61 = *(a2 + 32);
  if (v60)
  {
    sub_2521DBC60();
    v62 = v101;
    sub_2521D5220(v40, v61, v101, *&v45);
    sub_2521DBCB0();
    sub_2521DBCD0();
    (*(v90 + 8))(v13, v91);
    sub_2521DBCE0();
    v63 = v92;
    v64 = sub_2521DBCA0();
    v91 = &v84;
    MEMORY[0x28223BE20](v64);
    sub_2521DC040();
    sub_2521D5C30();
    v66 = v65;
    v107 = sub_2521DBE50();
    v108 = MEMORY[0x277CE0F78];
    v109 = MEMORY[0x277CBB468];
    v110 = MEMORY[0x277CE0F60];
    v67 = swift_getOpaqueTypeConformance2();
    v107 = v66;
    v108 = v67;
    swift_getOpaqueTypeConformance2();
    v68 = v103;
    v69 = v88;
    sub_2521DBB60();
    (*(v95 + 8))(v63, v96);
    (*(v102 + 8))(v62, v68);
    (*(v93 + 8))(v27, v94);
    (*(v99 + 8))(v40, v100);
    v70 = v87;
    (*(v97 + 32))(v87, v69, v98);
    sub_2521D60AC(0, &qword_27F4D4F98, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v71 = v70;
  }

  else
  {
    v72 = v101;
    sub_2521D5220(v40, *(a2 + 32), v101, *&v45);
    (*(v99 + 8))(v40, v100);
    v73 = v87;
    (*(v102 + 32))(v87, v72, v103);
    sub_2521D60AC(0, &qword_27F4D4F98, MEMORY[0x277CBB370]);
    swift_storeEnumTagMultiPayload();
    v71 = v73;
  }

  v74 = v105;
  sub_2521D6AF0(v71, v105, &qword_27F4D4F68, sub_2521D60AC);
LABEL_16:
  sub_2521D5998(0, &qword_27F4D4FA0, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_2521C7208(v74, v106);
}

uint64_t sub_2521D5220@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<D0>)
{
  v28 = a2;
  v29 = a3;
  v24 = a1;
  sub_2521D6418(0, &qword_27F4D4FB0, MEMORY[0x277D839F8], MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2521D579C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2521DBE50();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521D5C30();
  v14 = *(v13 - 8);
  v26 = v13;
  v27 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DBEC0();
  sub_2521DB9B0();
  sub_2521DBC00();

  sub_2521DBEC0();
  v30 = a4;
  sub_2521DBC00();

  sub_2521DBE40();
  v18 = v28;
  v30 = sub_2521DBFE0();
  v19 = MEMORY[0x277CE0F78];
  v20 = MEMORY[0x277CBB468];
  v21 = MEMORY[0x277CE0F60];
  sub_2521DBB90();

  (*(v25 + 8))(v12, v9);
  v30 = v9;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_2521DBB70();
  return (*(v27 + 8))(v17, v22);
}

uint64_t sub_2521D55C4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v12 = *v0;
  v13 = v12;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v12;
  v5[3] = v1;
  v5[4] = v2;
  v5[5] = v3;
  v5[6] = v4;

  v6 = MEMORY[0x277D83940];
  sub_2521D58DC(&v13, v11, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
  sub_2521D6C84(0, &qword_27F4D4F30, sub_2521D594C, v6);
  sub_2521D5998(0, &qword_27F4D4F40, MEMORY[0x277CBB378]);
  sub_2521D5CC8();
  sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C);
  sub_2521D5D50();
  v7 = v1;
  v8 = v2;
  v9 = v4;
  return sub_2521DC020();
}

void sub_2521D579C()
{
  if (!qword_27F4D4F20)
  {
    sub_2521DB9B0();
    v0 = sub_2521DBC10();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4F20);
    }
  }
}

void sub_2521D57FC()
{
  if (!qword_27F4D4F28)
  {
    sub_2521DBDF0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F28);
    }
  }
}

uint64_t sub_2521D58DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2521D6C84(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_2521D594C()
{
  result = qword_27F4D4F38;
  if (!qword_27F4D4F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4D4F38);
  }

  return result;
}

void sub_2521D5998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D6BFC(255, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
    v7 = v6;
    sub_2521D60AC(255, &qword_27F4D4F68, MEMORY[0x277CBB378]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2521D5A54()
{
  if (!qword_27F4D4F50)
  {
    sub_2521D5B68();
    sub_2521D5C30();
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F50);
    }
  }
}

void sub_2521D5B68()
{
  if (!qword_27F4D4F58)
  {
    sub_2521D5C30();
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F58);
    }
  }
}

void sub_2521D5C30()
{
  if (!qword_27F4D4F60)
  {
    sub_2521DBE50();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D4F60);
    }
  }
}

unint64_t sub_2521D5CC8()
{
  result = qword_27F4D4F70;
  if (!qword_27F4D4F70)
  {
    sub_2521D6C84(255, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F70);
  }

  return result;
}

unint64_t sub_2521D5D50()
{
  result = qword_27F4D4F80;
  if (!qword_27F4D4F80)
  {
    sub_2521D5998(255, &qword_27F4D4F40, MEMORY[0x277CBB378]);
    sub_2521D5DEC();
    sub_2521D5F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F80);
  }

  return result;
}

unint64_t sub_2521D5DEC()
{
  result = qword_27F4D4F88;
  if (!qword_27F4D4F88)
  {
    sub_2521D6BFC(255, &qword_27F4D4F48, sub_2521D5A54, MEMORY[0x277CBB378]);
    sub_2521D5B68();
    sub_2521D5C30();
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F88);
  }

  return result;
}

unint64_t sub_2521D5F54()
{
  result = qword_27F4D4F90;
  if (!qword_27F4D4F90)
  {
    sub_2521D60AC(255, &qword_27F4D4F68, MEMORY[0x277CBB378]);
    sub_2521D5B68();
    sub_2521D5C30();
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4F90);
  }

  return result;
}

void sub_2521D60AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D5A54();
    v7 = v6;
    sub_2521D5B68();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2521D611C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = *&a2;
  v7 = sub_2521DBEB0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2521DBEA0();
  sub_2521DBE90();
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2521DBE80();
  sub_2521DBE90();
  sub_2521DBED0();
  v6 = sub_2521DBF50();
  v2 = v9;
  v3 = v10;
  if (qword_27F4D4C40 != -1)
  {
LABEL_9:
    swift_once();
  }

  v11 = sub_2521DBF40();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2521D6408(v6, v2, v3 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_2521D631C()
{
  v0 = sub_2521DBF00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DBF10();
  sub_2521DBEF0();
  v5 = sub_2521DBF20();
  result = (*(v1 + 8))(v4, v0);
  qword_27F4D5560 = v5;
  return result;
}

uint64_t sub_2521D6408(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_2521D6418(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_2521D647C()
{
  if (!qword_27F4D4FC0)
  {
    sub_2521DB9B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4D4FC0);
    }
  }
}

uint64_t sub_2521D6504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521D656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2521D6C84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2521D6650()
{
  if (!qword_27F4D4FC8)
  {
    sub_2521D2990();
    sub_2521D6C84(255, &qword_27F4D4ED8, sub_2521D2EE8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4D4FC8);
    }
  }
}

void sub_2521D66F0()
{
  if (!qword_27F4D4FD0)
  {
    v0 = sub_2521DC190();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4FD0);
    }
  }
}

uint64_t sub_2521D6740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2521D67A8(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_2521CFCE4(a1, v4, v5);
}

uint64_t sub_2521D6848(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2521D6C84(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2521D68D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2521D6940(uint64_t a1, uint64_t a2)
{
  sub_2521D2BDC(0, &qword_27F4D4EA0, MEMORY[0x277CBB378]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521D69C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeartRateAppChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2521CE5CC(a1, v6, a2);
}

void sub_2521D6A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521D226C(255, &qword_27F4D4E10, sub_2521D22F4);
    v7 = v6;
    sub_2521D226C(255, &qword_27F4D4E40, sub_2521D237C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2521D6AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CBB378]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2521D6B70(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2521D226C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2521D6BDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2521D1140(a1);
}

void sub_2521D6BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2521D6C64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2521D1140(a1);
}

void sub_2521D6C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2521D6CE8()
{
  result = qword_27F4D4FF8;
  if (!qword_27F4D4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4FF8);
  }

  return result;
}

uint64_t sub_2521D6D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2521D6D84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2521D1140(a1);
}

void sub_2521D6DA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_2521DBAF0();
    sub_2521DBDD0();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

id sub_2521D6E34(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {

    v7 = a3;
  }

  else
  {

    v9 = a2;
    v10 = a3;
    v7 = a5;
  }

  return v7;
}

void sub_2521D6E94(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_2521D6EAC(a1, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_2521D6EAC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{

  if (a6)
  {
    v9 = a3;
  }

  else
  {

    v9 = a5;
  }
}

void sub_2521D6F14()
{
  if (!qword_27F4D5018)
  {
    sub_2521D1C44();
    sub_2521D6C84(255, &qword_27F4D4D98, type metadata accessor for HeartRateAverageLine, MEMORY[0x277D83D88]);
    sub_2521D1D38();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4D5018);
    }
  }
}

id sub_2521D6FCC(id result, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    return sub_2521D6E34(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

void sub_2521D6FE4()
{
  if (!qword_27F4D5028)
  {
    sub_2521D6C84(255, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
    sub_2521D594C();
    sub_2521D5998(255, &qword_27F4D4F40, MEMORY[0x277CBB378]);
    sub_2521D5CC8();
    sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C);
    v0 = sub_2521DC030();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D5028);
    }
  }
}

unint64_t sub_2521D7104()
{
  result = qword_27F4D5030;
  if (!qword_27F4D5030)
  {
    sub_2521D723C();
    sub_2521D5B68();
    sub_2521D5C30();
    sub_2521DBE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D5030);
  }

  return result;
}

void sub_2521D723C()
{
  if (!qword_27F4D5038)
  {
    sub_2521D6C84(255, &qword_27F4D4F30, sub_2521D594C, MEMORY[0x277D83940]);
    sub_2521D594C();
    sub_2521D5A54();
    sub_2521D5CC8();
    sub_2521D6D3C(&qword_27F4D4F78, sub_2521D594C);
    v0 = sub_2521DC030();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D5038);
    }
  }
}

uint64_t sub_2521D7358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521D73C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HeartRateSummary.workoutRecoveryStatistics.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartRateSummary() + 20));
}

uint64_t type metadata accessor for HeartRateSummary()
{
  result = qword_27F4D5048;
  if (!qword_27F4D5048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeartRateSummary.workoutRecoveryStatistics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartRateSummary() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HeartRateSummary.init(allDayStatistics:workoutRecoveryStatistics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2521D7CB0(a1, a3, type metadata accessor for HeartRateSummaryStatistics);
  result = type metadata accessor for HeartRateSummary();
  *(a3 + *(result + 20)) = a2;
  return result;
}

size_t HeartRateSummary.init(hkHeartRateSummary:)@<X0>(void *a1@<X0>, uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  sub_2521D7FF0(0, &qword_27F4D4D20, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v53 = sub_2521DB8C0();
  v8 = *(v53 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v53);
  v56 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HeartRateSummaryStatistics(0);
  v15 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeartRateSummaryStatistics.init(hkHeartRateSummaryStatistics:)([a1 allDayStatistics], v17);
  v18 = [a1 workoutRecoveryStatistics];
  sub_2521D7C24();
  v19 = sub_2521DC0C0();

  v20 = v19;
  if (v19 >> 62)
  {
    goto LABEL_17;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    while (1)
    {
      v61 = MEMORY[0x277D84F90];
      result = sub_2521D7C70(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        break;
      }

      v42 = v17;
      v43 = a1;
      v44 = isEscapingClosureAtFileLocation;
      v23 = 0;
      a1 = v61;
      v24 = v20;
      v49 = v58;
      v50 = v20 & 0xC000000000000001;
      v45 = v8 + 4;
      v47 = v20;
      v48 = v14;
      v46 = v21;
      while (1)
      {
        v25 = v50 ? MEMORY[0x25309BF30](v23, v24) : *(v24 + 8 * v23 + 32);
        v8 = v25;
        v60 = MEMORY[0x277D84F90];
        v26 = swift_allocObject();
        *(v26 + 16) = &v60;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_2521CC7BC;
        *(v20 + 24) = v26;
        v58[2] = sub_2521D7C90;
        v59 = v20;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v58[0] = sub_2521CC890;
        v58[1] = &block_descriptor_0;
        v27 = _Block_copy(aBlock);
        v17 = v59;

        [v8 enumerateBucketsWithBlock_];
        _Block_release(v27);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        v28 = [v8 dateInterval];
        sub_2521DB870();

        v29 = [v8 sessionUUID];
        v54 = v23;
        v55 = a1;
        if (v29)
        {
          v30 = v29;
          sub_2521DB9C0();

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v14 = sub_2521DB9E0();
        v32 = *(*(v14 - 1) + 56);
        v32(v7, v31, 1, v14);
        v33 = [v8 numberOfBuckets];

        v34 = v60;
        v35 = v7;
        v36 = v51;
        v37 = *(v51 + 20);
        v38 = v48;
        v32(&v48[v37], 1, 1, v14);
        (*v45)(v38, v56, v53);

        v39 = v38 + v37;
        v7 = v35;
        sub_2521CBF68(v35, v39);
        *(v38 + *(v36 + 24)) = v33;
        *(v38 + *(v36 + 28)) = v34;

        a1 = v55;
        v61 = v55;
        v41 = v55[2];
        v40 = v55[3];
        if (v41 >= v40 >> 1)
        {
          sub_2521D7C70(v40 > 1, v41 + 1, 1);
          a1 = v61;
        }

        v23 = v54 + 1;
        a1[2] = v41 + 1;
        sub_2521D7CB0(v38, a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v41, type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics);
        v24 = v47;
        if (v46 == v23)
        {

          isEscapingClosureAtFileLocation = v44;
          v17 = v42;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      v21 = sub_2521DC180();
      if (!v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    a1 = MEMORY[0x277D84F90];
LABEL_19:
    sub_2521D7CB0(v17, isEscapingClosureAtFileLocation, type metadata accessor for HeartRateSummaryStatistics);
    result = type metadata accessor for HeartRateSummary();
    *(isEscapingClosureAtFileLocation + *(result + 20)) = a1;
  }

  return result;
}

unint64_t sub_2521D7C24()
{
  result = qword_27F4D5040;
  if (!qword_27F4D5040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4D5040);
  }

  return result;
}

size_t sub_2521D7C70(size_t a1, int64_t a2, char a3)
{
  result = sub_2521D7DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2521D7CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2521D7D40()
{
  type metadata accessor for HeartRateSummaryStatistics(319);
  if (v0 <= 0x3F)
  {
    sub_2521D7FF0(319, &qword_27F4D5058, type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

size_t sub_2521D7DF4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2521D7FF0(0, &qword_27F4D5060, type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2521D7FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2521D80A8@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v111 = a1;
  v87 = a2;
  v95 = type metadata accessor for HeartRateChartPoint(0);
  v94 = *(v95 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v97 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2521DBAD0();
  v7 = *(v6 - 8);
  v101 = v6;
  v102 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  v110 = *(v11 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_2521DB8C0();
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2521DB9B0();
  v88 = *(v18 - 8);
  v19 = v88[8];
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v85 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v85 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v32 = type metadata accessor for HeartRateSummaryStatistics(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v3;
  if (!*v3)
  {
    v67 = v87;

    return static HeartRateDaySummary.emptyDaySummary()(v67);
  }

  v104 = v11;
  v91 = v36;
  v105 = v34;
  v85 = v37;
  HeartRateSummaryStatistics.init(hkHeartRateSummaryStatistics:)(v85, v91);
  v38 = *(v3 + *(type metadata accessor for HeartRateAppChartViewModel() + 44));
  v39 = v88;
  v41 = v88 + 2;
  v40 = v88[2];
  v40(v31, v111, v18);
  v108 = v29;
  v86 = v31;
  v93 = v41;
  v92 = v40;
  v40(v29, v31, v18);
  (*(v89 + 16))(v17, v91, v90);
  v109 = v17;
  result = sub_2521DB8B0();
  v44 = *&v91[*(v105 + 28)];
  v106 = *(v44 + 16);
  if (v106)
  {
    v45 = 0;
    v46 = v43 / *&v91[*(v105 + 24)];
    v47 = *(v104 + 20);
    v104 = v44 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v105 = v47;
    v48 = (v39 + 1);
    v49 = v101;
    v111 = (v102 + 2);
    ++v102;
    v98 = 0x7FFFFFFFFFFFFFFFLL;
    v99 = 0x8000000000000000;
    v100 = MEMORY[0x277D84F90];
    v103 = v44;
    while (v45 < *(v44 + 16))
    {
      sub_2521D98A8(v104 + *(v110 + 72) * v45, v14);
      v50 = v107;
      sub_2521DB890();
      v51 = v46 * *v14;
      sub_2521DB960();
      v52 = *v48;
      (*v48)(v50, v18);
      v53 = *v111;
      (*v111)(v10, v14 + v105, v49);
      sub_2521D990C();
      if (sub_2521DC080())
      {
        if (sub_2521DBA90())
        {
          v49 = v101;
          (*v102)(v10, v101);
          v52(v26, v18);
          result = sub_2521D9964(v14, type metadata accessor for HeartRateSummaryStatisticsBucket);
        }

        else
        {
          result = sub_2521DBA60();
          if (v54)
          {
            goto LABEL_42;
          }

          v55 = v99;
          if (result > v99)
          {
            v55 = result;
          }

          v99 = v55;
          result = sub_2521DBA70();
          if (v56)
          {
            goto LABEL_41;
          }

          v57 = v98;
          if (result < v98)
          {
            v57 = result;
          }

          v98 = v57;
          v58 = v96;
          sub_2521DB960();
          v59 = v97;
          v92(v97, v58, v18);
          v53((v59 + *(v95 + 20)), v10, v101);
          v60 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_2521CA0C4(0, v60[2] + 1, 1, v60);
          }

          v62 = v60[2];
          v61 = v60[3];
          v100 = v60;
          if (v62 >= v61 >> 1)
          {
            v100 = sub_2521CA0C4(v61 > 1, v62 + 1, 1, v100);
          }

          v52(v96, v18);
          v63 = v10;
          v64 = v10;
          v65 = v101;
          (*v102)(v63, v101);
          v52(v26, v18);
          sub_2521D9964(v14, type metadata accessor for HeartRateSummaryStatisticsBucket);
          v66 = v100;
          v100[2] = v62 + 1;
          v49 = v65;
          v10 = v64;
          result = sub_2521D99C4(v97, v66 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v62);
        }
      }

      else
      {
        (*v102)(v10, v49);
        v52(v26, v18);
        result = sub_2521D9964(v14, type metadata accessor for HeartRateSummaryStatisticsBucket);
      }

      ++v45;
      v44 = v103;
      if (v106 == v45)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v98 = 0x7FFFFFFFFFFFFFFFLL;
  v99 = 0x8000000000000000;
  v100 = MEMORY[0x277D84F90];
LABEL_25:
  sub_2521C88D0(0);
  v68 = sub_2521DC0D0();
  v68[2] = 25;
  v69 = MEMORY[0x277D84F90];
  v68[4] = MEMORY[0x277D84F90];
  v68[5] = v69;
  v68[6] = v69;
  v68[7] = v69;
  v68[8] = v69;
  v68[9] = v69;
  v68[10] = v69;
  v68[11] = v69;
  v68[12] = v69;
  v68[13] = v69;
  v68[14] = v69;
  v68[15] = v69;
  v68[16] = v69;
  v68[17] = v69;
  v68[18] = v69;
  v68[19] = v69;
  v68[20] = v69;
  v68[21] = v69;
  v68[22] = v69;
  v68[23] = v69;
  v68[24] = v69;
  v68[25] = v69;
  v68[26] = v69;
  v68[27] = v69;
  v71 = v98;
  v70 = v99;
  v72 = v98 == 0x7FFFFFFFFFFFFFFFLL || v99 == 0x8000000000000000;
  v73 = v72;
  v68[28] = v69;
  if (v72)
  {
    v74 = v68;
    v70 = 0;
    v71 = 0;
    v75 = v90;
    v76 = v89;
    v78 = v108;
    v77 = v109;
LABEL_38:
    v112 = v73;
    v113 = v73;
    v80 = sub_2521CAD88(v78, v74);

    (*(v76 + 8))(v77, v75);
    v81 = v88[1];
    v81(v78, v18);
    v81(v86, v18);
    sub_2521D9964(v91, type metadata accessor for HeartRateSummaryStatistics);

    v82 = v113;
    v83 = v112;
    v84 = v87;
    *v87 = v71;
    *(v84 + 8) = v82;
    v84[2] = v70;
    *(v84 + 24) = v83;
    v84[4] = v80;
    return result;
  }

  v79 = v70 - v71;
  v75 = v90;
  v76 = v89;
  v78 = v108;
  if (!__OFSUB__(v70, v71))
  {
    if (!v79)
    {
      v79 = 10;
    }

    v77 = v109;
    v74 = sub_2521CA174(v100, v70, v79 / v38, 3.0 / v38 * v79);
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_2521D8AF8()
{
  if (!*(v0 + 8))
  {
    return 0;
  }

  result = [*(v0 + 8) _beatsPerMinute];
  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2521D8B88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    if (__OFSUB__(result, 5))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    a2 = result + 5;
    if (__OFADD__(result, 5))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a2 < result - 5)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    result -= 5;
  }

  else if (a2 < result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = result;
  v3 = a2;
  v4 = result - a2 + 10.0;
  if (v4 > 0.0)
  {
    v5 = v4 * 0.5;
    v2 = v2 - floor(v5);
    v3 = ceil(v5) + v3;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = v2;
  if (v3 < v2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

void *sub_2521D8C98()
{
  v1 = type metadata accessor for HeartRateAppChartViewModel();
  v2 = *(v0 + *(v1 + 56));
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
    do
    {
      v3 = v1;
      v4 = v2 & 0xC000000000000001;
      if ((v2 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }

LABEL_30:
      v5 = MEMORY[0x25309BF30](0, v2);
LABEL_6:
      v6 = v5;
      if (v3 == 1)
      {
        return v6;
      }

      v8 = 1;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x25309BF30](v8, v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v7 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v11 = [v6 quantity];
        [v11 _beatsPerMinute];
        v13 = v12;

        v14 = [v7 quantity];
        [v14 _beatsPerMinute];
        v16 = v15;

        if (v13 < v16)
        {

          v6 = v7;
          ++v8;
          if (v10 == v3)
          {
            return v7;
          }
        }

        else
        {

          ++v8;
          if (v10 == v3)
          {
            return v6;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!sub_2521DC180())
      {
        return 0;
      }

      v1 = sub_2521DC180();
    }

    while (v1);
    __break(1u);
  }

  return 0;
}

void *sub_2521D8E6C()
{
  v1 = type metadata accessor for HeartRateAppChartViewModel();
  v2 = *(v0 + *(v1 + 56));
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

LABEL_4:
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
    do
    {
      v3 = v1;
      v4 = v2 & 0xC000000000000001;
      if ((v2 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }

LABEL_30:
      v5 = MEMORY[0x25309BF30](0, v2);
LABEL_6:
      v6 = v5;
      if (v3 == 1)
      {
        return v6;
      }

      v8 = 1;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x25309BF30](v8, v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v7 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v11 = [v9 quantity];
        [v11 _beatsPerMinute];
        v13 = v12;

        v14 = [v6 quantity];
        [v14 _beatsPerMinute];
        v16 = v15;

        if (v13 < v16)
        {

          v6 = v7;
          ++v8;
          if (v10 == v3)
          {
            return v7;
          }
        }

        else
        {

          ++v8;
          if (v10 == v3)
          {
            return v6;
          }
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!sub_2521DC180())
      {
        return 0;
      }

      v1 = sub_2521DC180();
    }

    while (v1);
    __break(1u);
  }

  return 0;
}

char *sub_2521D9040()
{
  v1 = v0;
  v2 = sub_2521DB9B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v46 = &v35 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = type metadata accessor for HeartRateAppChartViewModel();
  if (!*(v1 + *(v18 + 28)))
  {
    return MEMORY[0x277D84F90];
  }

  v43 = v10;
  v19 = *(v18 + 24);
  sub_2521DB8B0();
  v44 = v19;
  sub_2521DB890();
  v41 = *(v3 + 16);
  v42 = v3 + 16;
  v41(v15, v17, v2);
  v20 = sub_2521CA12C(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_2521CA12C(v21 > 1, v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v40 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v39 = *(v3 + 72);
  v37 = *(v3 + 32);
  v38 = v3 + 32;
  v37(&v20[v40 + v39 * v22], v15, v2);
  v23 = v46;
  sub_2521DB880();
  v24 = sub_2521DB970();
  v25 = *(v3 + 8);
  v45 = v3 + 8;
  v25(v23, v2);
  if (v24)
  {
    v36 = v7;
    v26 = v43;
    do
    {
      v27 = v1;
      sub_2521DB960();
      v41(v7, v26, v2);
      v29 = *(v20 + 2);
      v28 = *(v20 + 3);
      if (v29 >= v28 >> 1)
      {
        v20 = sub_2521CA12C(v28 > 1, v29 + 1, 1, v20);
      }

      v25(v17, v2);
      *(v20 + 2) = v29 + 1;
      v30 = &v20[v40 + v29 * v39];
      v7 = v36;
      v31 = v37;
      v37(v30, v36, v2);
      v26 = v43;
      v31(v17, v43, v2);
      v1 = v27;
      v32 = v46;
      sub_2521DB880();
      v33 = sub_2521DB970();
      v25(v32, v2);
    }

    while ((v33 & 1) != 0);
  }

  v25(v17, v2);
  return v20;
}

uint64_t HeartRateAppChartViewModel.init(statistics:allDayHeartRate:dateInterval:numberOfSections:tintColor:useMinMaxTimeLabels:onUnavailableChartTap:chartHeight:isShortTimeLabel:isBreatheChart:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, char a11, char a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for HeartRateAppChartViewModel();
  v20 = v19[6];
  v21 = sub_2521DB8C0();
  v22 = *(v21 - 8);
  v30 = a3;
  (*(v22 + 16))(&a9[v20], a3, v21);
  *&a9[v19[7]] = a4;
  *&a9[v19[8]] = a5;
  a9[v19[9]] = a6;
  v23 = &a9[v19[10]];
  *v23 = a7;
  *(v23 + 1) = a8;
  *&a9[v19[11]] = a10;
  a9[v19[12]] = a11;
  a9[v19[13]] = a12;
  if (a1 && (v24 = [a1 highlightedReadings]) != 0)
  {
    v25 = v24;
    sub_2521D9810(0, &qword_27F4D4F38, 0x277CCD510);
    v26 = sub_2521DC0C0();
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  result = (*(v22 + 8))(v30, v21);
  *&a9[v19[14]] = v26;
  return result;
}

uint64_t type metadata accessor for HeartRateAppChartViewModel()
{
  result = qword_27F4D5068;
  if (!qword_27F4D5068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2521D9614()
{
  sub_2521D97A8(319, &qword_27F4D5078, &qword_27F4D5080, 0x277CCD518, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2521D97A8(319, &qword_27F4D5088, &qword_27F4D5090, 0x277CCD7E8, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2521DB8C0();
      if (v2 <= 0x3F)
      {
        sub_2521D9810(319, &qword_27F4D5098, 0x277D75348);
        if (v3 <= 0x3F)
        {
          sub_2521D9858();
          if (v4 <= 0x3F)
          {
            sub_2521D97A8(319, &qword_27F4D4F30, &qword_27F4D4F38, 0x277CCD510, MEMORY[0x277D83940]);
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

void sub_2521D97A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2521D9810(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2521D9810(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2521D9858()
{
  result = qword_27F4D50A0;
  if (!qword_27F4D50A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4D50A0);
  }

  return result;
}

uint64_t sub_2521D98A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatisticsBucket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2521D990C()
{
  result = qword_27F4D4C50;
  if (!qword_27F4D4C50)
  {
    sub_2521DB9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4C50);
  }

  return result;
}

uint64_t sub_2521D9964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2521D99C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateChartPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521D9A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateSummaryStatistics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HeartRateSummaryWorkoutRecoveryStatistics()
{
  result = qword_27F4D50A8;
  if (!qword_27F4D50A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2521D9B3C()
{
  result = type metadata accessor for HeartRateSummaryStatistics(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swiftcall HeartRateBasicChart.init(heartRateSummary:tintColor:)(HeartHealthUI::HeartRateBasicChart *__return_ptr retstr, HeartHealthUI::HeartRateDaySummary *heartRateSummary, UIColor tintColor)
{
  is_nil = heartRateSummary->dailyLowBPM.is_nil;
  v4 = *(&heartRateSummary->dailyHighBPM.value + 7);
  rawValue = heartRateSummary->heartRateDataByHour._rawValue;
  value = heartRateSummary[1].dailyLowBPM.value;
  retstr->heartRateSummary.dailyLowBPM.value = heartRateSummary->dailyLowBPM.value;
  retstr->heartRateSummary.dailyLowBPM.is_nil = is_nil;
  *(&retstr->heartRateSummary.dailyHighBPM.value + 7) = v4;
  LOBYTE(retstr->heartRateSummary.heartRateDataByHour._rawValue) = rawValue;
  retstr->tintColor.super.isa = value;
  retstr[1].heartRateSummary.dailyLowBPM.value = tintColor.super.isa;
}

uint64_t HeartRateBasicChart.body.getter()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v8[0] = v7[0];
  v8[1] = v1;
  v9 = *(v0 + 4);
  v6 = v9;
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_2521DA2B8(v8, v5);
  sub_2521DA314(v7, v5);
  sub_2521DA55C(0, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DB9B0();
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  sub_2521DA744(&qword_27F4D50F8, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DA794();
  sub_2521DA6FC(&qword_27F4D5118, type metadata accessor for HeartRateHourlyData);
  return sub_2521DC010();
}

uint64_t sub_2521D9D68@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  sub_2521DA34C();
  v28 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DB80C(0, &qword_27F4D4F18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2521D579C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2521DBD70();
  v26 = *(v14 - 8);
  v27 = v14;
  v15 = *(v26 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v26 - v20;
  sub_2521DC110();
  v29 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(a1 + *(type metadata accessor for HeartRateHourlyData(0) + 20));
  if (v22)
  {
    v31[6] = v22;
    v23 = swift_allocObject();
    v24 = a2[1];
    v23[1] = *a2;
    v23[2] = v24;
    v23[3] = a2[2];

    sub_2521DA314(a2, v31);
    sub_2521DA55C(0, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DB9B0();
    sub_2521DA454();
    sub_2521DA744(&qword_27F4D50F0, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DA860();
    sub_2521DA6FC(&qword_27F4D5138, type metadata accessor for HeartRateChartData);
    sub_2521DC010();
    (*(v6 + 32))(v21, v9, v28);
  }

  else
  {
    sub_2521DBEC0();
    sub_2521DB9B0();
    sub_2521DBC00();

    sub_2521DBEC0();
    v31[0] = 0;
    sub_2521DBC00();

    sub_2521DBD50();
    (*(v26 + 32))(v21, v17, v27);
  }

  sub_2521DB5E0(0, &qword_27F4D5130, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_2521C7C10(v21, v30);
}

void sub_2521DA34C()
{
  if (!qword_27F4D50C8)
  {
    sub_2521DA55C(255, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DB9B0();
    sub_2521DA454();
    sub_2521DA744(&qword_27F4D50F0, &qword_27F4D4C48, type metadata accessor for HeartRateChartData);
    sub_2521DA6FC(&qword_27F4D4CB0, MEMORY[0x277CC9578]);
    v0 = sub_2521DC030();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D50C8);
    }
  }
}

void sub_2521DA454()
{
  if (!qword_27F4D50D0)
  {
    sub_2521DA55C(255, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
    sub_2521DB9E0();
    sub_2521DA5B0();
    sub_2521DA744(&qword_27F4D50E8, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
    sub_2521DA6FC(&qword_27F4D4CB8, MEMORY[0x277CC95F0]);
    v0 = sub_2521DC030();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D50D0);
    }
  }
}

void sub_2521DA55C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2521DC0E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2521DA5B0()
{
  if (!qword_27F4D50D8)
  {
    sub_2521DA678();
    sub_2521DBD70();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D50D8);
    }
  }
}

void sub_2521DA678()
{
  if (!qword_27F4D50E0)
  {
    sub_2521DBD70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F4D50E0);
    }
  }
}

uint64_t sub_2521DA6FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2521DA744(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2521DA55C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2521DA794()
{
  result = qword_27F4D5100;
  if (!qword_27F4D5100)
  {
    sub_2521DB5E0(255, &qword_27F4D50C0, MEMORY[0x277CBB378]);
    sub_2521DB440(&qword_27F4D5108, sub_2521DA34C, sub_2521DA860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D5100);
  }

  return result;
}

unint64_t sub_2521DA860()
{
  result = qword_27F4D5110;
  if (!qword_27F4D5110)
  {
    sub_2521DA454();
    sub_2521DA678();
    sub_2521DBD70();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D5110);
  }

  return result;
}

uint64_t sub_2521DA968(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for HeartRateChartData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2521DC110();
  sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + *(v4 + 20));
  sub_2521DB698(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2521DB6FC(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  v9[2] = a2[2];

  sub_2521DA314(a2, &v16);
  sub_2521DA55C(0, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
  sub_2521DB9E0();
  sub_2521DA5B0();
  sub_2521DA744(&qword_27F4D50E8, &qword_27F4D4C98, type metadata accessor for HeartRateBPMRange);
  sub_2521DA678();
  v12 = v11;
  v16 = sub_2521DBD70();
  v17 = MEMORY[0x277CBB400];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v12;
  v17 = MEMORY[0x277CE0F78];
  v18 = OpaqueTypeConformance2;
  v19 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_2521DA6FC(&unk_27F4D5140, type metadata accessor for HeartRateBPMRange);
  sub_2521DC010();
}

uint64_t sub_2521DAC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a2;
  v46 = a3;
  v4 = sub_2521DBEE0();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DB80C(0, &qword_27F4D4FB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v35 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  sub_2521D579C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = sub_2521DBD70();
  v36 = *(v39 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v34 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DA678();
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15);
  v38 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521DC110();
  v37 = sub_2521DC100();
  sub_2521DC0F0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2521DBEC0();
  v33[1] = sub_2521DB9B0();
  sub_2521DBC00();

  sub_2521DBEC0();
  v18 = type metadata accessor for HeartRateBPMRange(0);
  v19 = *(a1 + v18[5]);
  v20 = v19;
  if (v19 == *(a1 + v18[6]))
  {
    v20 = v20 - (*(a1 + v18[7]) + *(a1 + v18[7]));
  }

  v47 = v20;
  sub_2521DBC00();

  sub_2521DBEC0();
  sub_2521C7DA0();
  v47 = v21;
  sub_2521DBC00();

  v22 = v34;
  sub_2521DBD60();
  v24 = v42;
  v23 = v43;
  v25 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x277CE0118], v44);
  v26 = MEMORY[0x277CBB400];
  v28 = v38;
  v27 = v39;
  sub_2521DBB80();
  (*(v23 + 8))(v24, v25);
  (*(v36 + 8))(v22, v27);
  v29 = *(v45 + 40);
  v30 = sub_2521DBFE0();
  v48 = v26;
  v49 = v30;
  v47 = *&v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_2521DBB90();

  (*(v40 + 8))(v28, v31);
}

uint64_t sub_2521DB1F4()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v8[0] = v7[0];
  v8[1] = v1;
  v9 = *(v0 + 4);
  v6 = v9;
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_2521DA2B8(v8, v5);
  sub_2521DA314(v7, v5);
  sub_2521DA55C(0, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DB9B0();
  sub_2521DB5E0(0, &qword_27F4D50C0, MEMORY[0x277CBB378]);
  sub_2521DA744(&qword_27F4D50F8, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
  sub_2521DA794();
  sub_2521DA6FC(&qword_27F4D5118, type metadata accessor for HeartRateHourlyData);
  return sub_2521DC010();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2521DB39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2521DB3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2521DB440(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_2521DB4BC()
{
  if (!qword_27F4D5128)
  {
    sub_2521DA55C(255, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
    sub_2521DB9B0();
    sub_2521DB5E0(255, &qword_27F4D50C0, MEMORY[0x277CBB378]);
    sub_2521DA744(&qword_27F4D50F8, &qword_27F4D50B8, type metadata accessor for HeartRateHourlyData);
    sub_2521DA6FC(&qword_27F4D4CB0, MEMORY[0x277CC9578]);
    v0 = sub_2521DC030();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D5128);
    }
  }
}

void sub_2521DB5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2521DA34C();
    v7 = v6;
    v8 = sub_2521DBD70();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2521DB698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateChartData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521DB6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateChartData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2521DB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeartRateChartData(0) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2521DAC5C(a1, v6, a2);
}

void sub_2521DB80C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2521DBC10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}