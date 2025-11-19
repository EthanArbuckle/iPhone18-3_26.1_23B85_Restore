uint64_t sub_251B5FC44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251B5FCB8(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 80);
  return result;
}

uint64_t sub_251B5FD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5E0, type metadata accessor for PBTimeSeries.Value);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B5FDAC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B5FE18()
{
  sub_251B9ED44(&qword_27F47B518, type metadata accessor for PBTimeSeries.Value);

  return sub_251C705C4();
}

uint64_t sub_251B5FE98()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F50);
  __swift_project_value_buffer(v0, qword_27F4A1F50);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "start";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "end";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "value";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B600C0()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_251C704F4();
    }

    else if (result == 2 || result == 1)
    {
      sub_251C70514();
    }
  }

  return result;
}

uint64_t sub_251B6015C()
{
  if (!*v0 || (result = sub_251C70664(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_251C70664(), !v1))
    {
      if (!*(v0 + 16) || (result = sub_251C70644(), !v1))
      {
        v3 = v0 + *(type metadata accessor for PBBucket(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B60228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_251C703A4();
}

uint64_t sub_251B6029C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5F0, type metadata accessor for PBBucket);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6033C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B603A8()
{
  sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket);

  return sub_251C705C4();
}

uint64_t sub_251B60428()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F68);
  __swift_project_value_buffer(v0, qword_27F4A1F68);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "values";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "unit";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B60608()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PBHistogramSeries.Value(0);
        sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value);
        sub_251C70554();
      }

      else if (result == 2)
      {
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B60704()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBHistogramSeries.Value(0), sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value), result = sub_251C70694(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_251C70674(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PBHistogramSeries(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B60864(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B5F8, type metadata accessor for PBHistogramSeries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B60904(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479010, type metadata accessor for PBHistogramSeries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B60970()
{
  sub_251B9ED44(&qword_27F479010, type metadata accessor for PBHistogramSeries);

  return sub_251C705C4();
}

uint64_t sub_251B609EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_251A99400(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B60AB4()
{
  result = MEMORY[0x25308CDA0](0x65756C61562ELL, 0xE600000000000000);
  qword_27F4A1F80 = 0xD00000000000002ALL;
  *algn_27F4A1F88 = 0x8000000251C8D040;
  return result;
}

uint64_t sub_251B60B1C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1F90);
  __swift_project_value_buffer(v0, qword_27F4A1F90);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "recorded_time";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "buckets";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "identifier";
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B60D54()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for PBBucket(0);
          sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket);
          sub_251C70554();
          break;
        case 1:
LABEL_10:
          sub_251C70534();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B60E60()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for PBBucket(0), sub_251B9ED44(&qword_27F47B4F8, type metadata accessor for PBBucket), result = sub_251C70694(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_251C70674(), !v1))
      {
        v8 = v0 + *(type metadata accessor for PBHistogramSeries.Value(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B61004(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B600, type metadata accessor for PBHistogramSeries.Value);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B610A4(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B61110()
{
  sub_251B9ED44(&qword_27F47B4C0, type metadata accessor for PBHistogramSeries.Value);

  return sub_251C705C4();
}

uint64_t sub_251B611B0()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBSleepSeries.Value(0), sub_251B9ED44(&qword_27F47B488, type metadata accessor for PBSleepSeries.Value), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBSleepSeries(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B61324(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B608, type metadata accessor for PBSleepSeries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B613C4(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479008, type metadata accessor for PBSleepSeries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B61430()
{
  sub_251B9ED44(&qword_27F479008, type metadata accessor for PBSleepSeries);

  return sub_251C705C4();
}

uint64_t sub_251B614C4()
{
  result = MEMORY[0x25308CDA0](0x65756C61562ELL, 0xE600000000000000);
  qword_27F4A1FC0 = 0xD000000000000026;
  *algn_27F4A1FC8 = 0x8000000251C8D080;
  return result;
}

uint64_t sub_251B6152C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1FD0);
  __swift_project_value_buffer(v0, qword_27F4A1FD0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "recorded_time";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "mean_asleep";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "mean_in_bed";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "mean_time_to_sleep";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B61794()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_251C70544();
      }
    }

    else if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_251B61848()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_251C70684(), !v1))
    {
      if (!*(v0 + 5) || (result = sub_251C70684(), !v1))
      {
        if (!*(v0 + 6) || (result = sub_251C70684(), !v1))
        {
          v6 = v0 + *(type metadata accessor for PBSleepSeries.Value(0) + 32);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B6193C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 32);
  return sub_251C703A4();
}

uint64_t sub_251B619C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B610, type metadata accessor for PBSleepSeries.Value);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B61A64(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B488, type metadata accessor for PBSleepSeries.Value);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B61AD0()
{
  sub_251B9ED44(&qword_27F47B488, type metadata accessor for PBSleepSeries.Value);

  return sub_251C705C4();
}

uint64_t sub_251B61B50()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1FE8);
  __swift_project_value_buffer(v0, qword_27F4A1FE8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "schedule";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "sleep_goal";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B61D38()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PBSleepSummary.Schedule(0);
        sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule);
        sub_251C70554();
      }

      else if (result == 2)
      {
        sub_251C704E4();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B61E34()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBSleepSummary.Schedule(0), sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule), result = sub_251C70694(), !v1))
  {
    if (!v0[2] || (result = sub_251C70634(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PBSleepSummary(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B61F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251B61FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B618, type metadata accessor for PBSleepSummary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B62058(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479000, type metadata accessor for PBSleepSummary);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B620C4()
{
  sub_251B9ED44(&qword_27F479000, type metadata accessor for PBSleepSummary);

  return sub_251C705C4();
}

uint64_t sub_251B62140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_251A9B368(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B621F8()
{
  result = MEMORY[0x25308CDA0](0x6C7564656863532ELL, 0xE900000000000065);
  qword_27F4A2000 = 0xD000000000000027;
  *algn_27F4A2008 = 0x8000000251C8D0E0;
  return result;
}

uint64_t sub_251B62268()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2010);
  __swift_project_value_buffer(v0, qword_27F4A2010);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C7C1C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "sunday";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "monday";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "tuesday";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "wednesday";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "thursday";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "friday";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "saturday";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "bedtime";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "awake";
  *(v23 + 8) = 5;
  *(v23 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B62604()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2 || result == 1 || result == 2)
      {
LABEL_2:
        sub_251C70474();
      }
    }

    else
    {
      if (result < 8)
      {
        goto LABEL_2;
      }

      if (result == 8 || result == 9)
      {
        sub_251C70544();
      }
    }
  }
}

uint64_t sub_251B62718()
{
  if (*v0 != 1 || (result = sub_251C705F4(), !v1))
  {
    if (*(v0 + 1) != 1 || (result = sub_251C705F4(), !v1))
    {
      if (*(v0 + 2) != 1 || (result = sub_251C705F4(), !v1))
      {
        if (*(v0 + 3) != 1 || (result = sub_251C705F4(), !v1))
        {
          if (*(v0 + 4) != 1 || (result = sub_251C705F4(), !v1))
          {
            if (*(v0 + 5) != 1 || (result = sub_251C705F4(), !v1))
            {
              if (*(v0 + 6) != 1 || (result = sub_251C705F4(), !v1))
              {
                if (!*(v0 + 8) || (result = sub_251C70684(), !v1))
                {
                  if (!*(v0 + 12) || (result = sub_251C70684(), !v1))
                  {
                    v3 = v0 + *(type metadata accessor for PBSleepSummary.Schedule(0) + 52);
                    return sub_251C70394();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B628D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 3) = 0;
  v2 = a2 + *(a1 + 52);
  return sub_251C703A4();
}

uint64_t sub_251B62958(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B620, type metadata accessor for PBSleepSummary.Schedule);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B629F8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B62A64()
{
  sub_251B9ED44(&qword_27F47B450, type metadata accessor for PBSleepSummary.Schedule);

  return sub_251C705C4();
}

uint64_t sub_251B62AE4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2028);
  __swift_project_value_buffer(v0, qword_27F4A2028);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "date_range";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data_source";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "events";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B62D18()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PBCategorySeries.Event(0);
          sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event);
          sub_251C70554();
          break;
        case 2:
          sub_251C70534();
          break;
        case 1:
          sub_251B62E38();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B62E38()
{
  v0 = *(type metadata accessor for PBCategorySeries(0) + 28);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251B62EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B6301C(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_251C70674();
    }

    if (*(v3[2] + 16))
    {
      type metadata accessor for PBCategorySeries.Event(0);
      sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event);
      sub_251C70694();
    }

    v9 = v3 + *(type metadata accessor for PBCategorySeries(0) + 24);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B6301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCategorySeries(0);
  sub_251BB33C4(a1 + *(v14 + 28), v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251B632DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B628, type metadata accessor for PBCategorySeries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6337C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FB8, type metadata accessor for PBCategorySeries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B633E8()
{
  sub_251B9ED44(&qword_27F478FB8, type metadata accessor for PBCategorySeries);

  return sub_251C705C4();
}

uint64_t sub_251B63484()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2050);
  __swift_project_value_buffer(v0, qword_27F4A2050);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "min";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "max";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B636B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B630, type metadata accessor for PBCategorySeries.Range);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B63758(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B637C4()
{
  sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range);

  return sub_251C705C4();
}

uint64_t sub_251B6385C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x25308CDA0](a2, 0xE600000000000000);
  *a3 = 0xD000000000000029;
  *a4 = 0x8000000251C8D170;
  return result;
}

uint64_t sub_251B638C8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2078);
  __swift_project_value_buffer(v0, qword_27F4A2078);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251C75810;
  v5 = v28 + v4;
  v6 = v28 + v4 + *(v2 + 56);
  *(v28 + v4) = 1;
  *v6 = "raw";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v28 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v28 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "recorded_time";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v28 + v4 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 11;
  *v15 = "source";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v28 + v4 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "range";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v9();
  v18 = (v28 + v4 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "heart_rate_event_threshold";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v9();
  v20 = (v28 + v4 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "sleep_analysis";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  v22 = (v28 + v4 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 7;
  *v23 = "cycleFactor";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v9();
  v24 = v28 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v24 = "steadiness_event";
  *(v24 + 8) = 16;
  *(v24 + 16) = 2;
  v9();
  v25 = (v28 + v4 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 9;
  *v26 = "steadiness_classification";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B63CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            v11 = sub_251BB25F8;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBSleepAnalysis;
            v17 = 2;
          }

          else
          {
            v11 = sub_251BB264C;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBCycleFactors;
            v17 = 3;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v11 = sub_251BB26A0;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBAppleWalkingSteadinessEvent;
            v17 = 4;
LABEL_5:
            sub_251B64848(v12, v13, v14, v15, v11, v16, v17);
            break;
          case 9:
            v11 = sub_251BB26F4;
            v12 = a1;
            v13 = v5;
            v14 = a2;
            v15 = a3;
            v16 = &type metadata for PBAppleWalkingSteadinessClassification;
            v17 = 5;
            goto LABEL_5;
          case 11:
            goto LABEL_20;
        }
      }

      else if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

LABEL_20:
          sub_251C70534();
          goto LABEL_6;
        }

        sub_251C704F4();
      }

      else if (result == 3)
      {
        sub_251B63F04();
      }

      else if (result == 4)
      {
        sub_251B63FB8(v5, a1, a2, a3);
      }

      else
      {
        sub_251B64604(a1, v5);
      }

LABEL_6:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B63F04()
{
  v0 = *(type metadata accessor for PBCategorySeries.Event(0) + 36);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251B63FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBCategorySeries.Range(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251B67AAC(0, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v45 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v30 = v4;
  v31 = v29;
  v29(&v40 - v27, 1, 1, v30);
  v40 = *(type metadata accessor for PBCategorySeries.Event(0) + 28);
  sub_251BB33C4(v52 + v40, v14, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v41 = v16;
  v42 = (*(v16 + 48))(v14, 1, v15);
  if (v42 == 1)
  {
    sub_251BB3444(v14, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
LABEL_5:
    v32 = v48;
    goto LABEL_6;
  }

  sub_251BB23C4(v14, v22, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB23C4(v22, v20, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251BB2308(v20, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    goto LABEL_5;
  }

  sub_251BB3444(v28, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  v36 = v43;
  sub_251BB23C4(v20, v43, type metadata accessor for PBCategorySeries.Range);
  sub_251BB23C4(v36, v28, type metadata accessor for PBCategorySeries.Range);
  v32 = v48;
  v31(v28, 0, 1, v48);
LABEL_6:
  v33 = v46;
  sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range);
  v34 = v47;
  sub_251C70564();
  if (v34)
  {
    return sub_251BB3444(v28, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  }

  sub_251BB33C4(v28, v33, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  if ((*(v45 + 48))(v33, 1, v32) == 1)
  {
    sub_251BB3444(v28, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
    return sub_251BB3444(v33, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
  }

  else
  {
    v37 = v44;
    sub_251BB23C4(v33, v44, type metadata accessor for PBCategorySeries.Range);
    if (v42 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v28, &qword_27F47B660, type metadata accessor for PBCategorySeries.Range);
    v38 = v52;
    v39 = v40;
    sub_251BB3444(v52 + v40, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    sub_251BB23C4(v37, v38 + v39, type metadata accessor for PBCategorySeries.Range);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v38 + v39, 0, 1, v15);
  }
}

uint64_t sub_251B64604(uint64_t a1, uint64_t a2)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = sub_251C70524();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    v9 = (a2 + *(type metadata accessor for PBCategorySeries.Event(0) + 28));
    sub_251BB33C4(v9, v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v10 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
    v13 = *(v10 - 8);
    v11 = (*(v13 + 48))(v7, 1, v10);
    sub_251BB3444(v7, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    if (v11 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v9, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v12 = v17;
    *v9 = v14;
    v9[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v13 + 56))(v9, 0, 1, v10);
  }

  return result;
}

uint64_t sub_251B64848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, int a7)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - v14;
  v26 = 0;
  v27 = 256;
  a5(v13);
  result = sub_251C70484();
  if (!v7 && (v27 & 0x100) == 0)
  {
    v25 = a7;
    v28 = 0;
    v24 = v26;
    v23 = v27;
    v17 = a2 + *(type metadata accessor for PBCategorySeries.Event(0) + 28);
    sub_251BB33C4(v17, v15, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v18 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v15, 1, v18);
    sub_251BB3444(v15, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    if (v20 != 1)
    {
      v21 = v28;
      result = sub_251C70454();
      if (v21)
      {
        return result;
      }

      v28 = 0;
    }

    sub_251BB3444(v17, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v17 = v24;
    *(v17 + 8) = v23 & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v19 + 56))(v17, 0, 1, v18);
  }

  return result;
}

uint64_t sub_251B64AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  if (!*v3 || (result = sub_251C70644(), !v4))
  {
    v13 = *(v3 + 16);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = sub_251C70674(), !v4))
    {
      result = sub_251B64DCC(v3, a1, a2, a3);
      if (!v4)
      {
        v15 = type metadata accessor for PBCategorySeries.Event(0);
        sub_251BB33C4(v3 + *(v15 + 28), v11, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
        v16 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
        if ((*(*(v16 - 8) + 48))(v11, 1, v16) != 1)
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              sub_251B65600(v3);
            }

            else
            {
              sub_251B657C4(v3);
            }
          }

          else if (EnumCaseMultiPayload)
          {
            sub_251BB2308(v11, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
            sub_251B65288(v3);
          }

          else
          {
            sub_251B65018(v3, a1, a2, a3);
            sub_251BB2308(v11, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
          }
        }

        v17 = *(v3 + 32);
        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          sub_251C70674();
        }

        v19 = v3 + *(v15 + 32);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B64DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v14 + 36), v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251B65018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCategorySeries.Range(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v13 + 28), v8, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v14 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBCategorySeries.Range);
    sub_251B9ED44(&qword_27F47B418, type metadata accessor for PBCategorySeries.Range);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBCategorySeries.Range);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65288(uint64_t a1)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v6 + 28), v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v7 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BB3444(v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v5;
    v9 = v5[1];
    sub_251C70674();
  }

  result = sub_251BB2308(v5, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B6543C(uint64_t a1)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v6 + 28), v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v7 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BB3444(v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = v5[8];
    v10 = *v5;
    v11 = v8;
    sub_251BB25F8();
    return sub_251C70604();
  }

  result = sub_251BB2308(v5, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65600(uint64_t a1)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v6 + 28), v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v7 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BB3444(v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v8 = v5[8];
    v10 = *v5;
    v11 = v8;
    sub_251BB264C();
    return sub_251C70604();
  }

  result = sub_251BB2308(v5, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B657C4(uint64_t a1)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v6 + 28), v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v7 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BB3444(v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = v5[8];
    v10 = *v5;
    v11 = v8;
    sub_251BB26A0();
    return sub_251C70604();
  }

  result = sub_251BB2308(v5, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65988(uint64_t a1)
{
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PBCategorySeries.Event(0);
  sub_251BB33C4(a1 + *(v6 + 28), v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v7 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BB3444(v5, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v8 = v5[8];
    v10 = *v5;
    v11 = v8;
    sub_251BB26F4();
    return sub_251C70604();
  }

  result = sub_251BB2308(v5, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  __break(1u);
  return result;
}

uint64_t sub_251B65B4C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v4 = a1[7];
  v5 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + a1[8];
  sub_251C703A4();
  v7 = a1[9];
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_251B65C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B638, type metadata accessor for PBCategorySeries.Event);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B65D20(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B65D8C()
{
  sub_251B9ED44(&qword_27F47B3F8, type metadata accessor for PBCategorySeries.Event);

  return sub_251C705C4();
}

uint64_t sub_251B65E0C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2090);
  __swift_project_value_buffer(v0, qword_27F4A2090);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "blood_type";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "biological_sex";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "data_of_birth";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B66080(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B668, type metadata accessor for PBCharacteristics);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B66120(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FC8, type metadata accessor for PBCharacteristics);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B6618C()
{
  sub_251B9ED44(&qword_27F478FC8, type metadata accessor for PBCharacteristics);

  return sub_251C705C4();
}

uint64_t sub_251B66238()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A20A8);
  __swift_project_value_buffer(v0, qword_27F4A20A8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "total_energy_burned";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "total_distance";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "activity_type";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "total_flights_climbed";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "duration";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v18 = *MEMORY[0x277D21870];
  v10();
  v19 = (v6 + 5 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "date_range";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v10();
  v21 = (v6 + 6 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "total_swimming_stroke_count";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v10();
  v23 = (v6 + 7 * v3);
  v24 = v23 + *(v2 + 56);
  *v23 = 8;
  *v24 = "average_heart_rate";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B665A8()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            sub_251C70544();
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          sub_251B666F0();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_251BB2748();
        sub_251C70494();
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B666F0()
{
  v0 = *(type metadata accessor for PBWorkout(0) + 48);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251B667A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = sub_251C70684();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 4))
  {
    result = sub_251C70684();
    if (v4)
    {
      return result;
    }
  }

  if (nullsub_1(*(v3 + 8), *(v3 + 16)))
  {
    sub_251BB2748();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }

    if (!*(v3 + 20))
    {
      goto LABEL_11;
    }

LABEL_10:
    result = sub_251C70684();
    if (v4)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (*(v3 + 20))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!*(v3 + 24) || (result = sub_251C70684(), !v4))
  {
    result = sub_251B66958(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 28))
      {
        sub_251C70684();
      }

      if (*(v3 + 32))
      {
        sub_251C70684();
      }

      v9 = v3 + *(type metadata accessor for PBWorkout(0) + 44);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B66958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBWorkout(0);
  sub_251BB33C4(a1 + *(v14 + 48), v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251B66BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  v4 = a2 + *(a1 + 44);
  sub_251C703A4();
  v5 = *(a1 + 48);
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_251B66C54(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_251B66CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B670, type metadata accessor for PBWorkout);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B66D48(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FC0, type metadata accessor for PBWorkout);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B66DB4()
{
  sub_251B9ED44(&qword_27F478FC0, type metadata accessor for PBWorkout);

  return sub_251C705C4();
}

uint64_t sub_251B66E54()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBClinicalRecord(0), sub_251B9ED44(&qword_27F47B390, type metadata accessor for PBClinicalRecord), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBAllClinicalRecords(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B66FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B680, type metadata accessor for PBAllClinicalRecords);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B67068(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B670D4()
{
  sub_251B9ED44(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords);

  return sub_251C705C4();
}

uint64_t sub_251B67168()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A20D8);
  __swift_project_value_buffer(v0, qword_27F4A20D8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_251C7C1D0;
  v5 = v41 + v4;
  v6 = v41 + v4 + *(v2 + 56);
  *(v41 + v4) = 1;
  *v6 = "clinical_type_identifier";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "fhir_resource";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "primary_concept";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "allergy_record";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "condition_record";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "vaccination_record";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "medication_dispense_record";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "medication_order";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 10;
  *v23 = "diagnostic_test_result";
  *(v23 + 8) = 22;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 11;
  *v25 = "diagnostic_test_report";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 12;
  *v27 = "account_owner";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 13;
  *v29 = "procedure_record";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 16;
  *v31 = "medication_record";
  *(v31 + 1) = 17;
  v31[16] = 2;
  v9();
  v32 = (v5 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "source";
  *(v33 + 1) = 6;
  v33[16] = 2;
  v34 = *MEMORY[0x277D21870];
  v9();
  v35 = (v5 + 14 * v3);
  v36 = v35 + *(v2 + 56);
  *v35 = 17;
  *v36 = "gateway_id";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v3);
  v38 = v37 + *(v2 + 56);
  *v37 = 18;
  *v38 = "ios_derived_display_name";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v9();
  v39 = v5 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 19;
  *v39 = "medical_record_origin_type";
  *(v39 + 8) = 26;
  *(v39 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B67700()
{
  v0 = type metadata accessor for PBClinicalRecord._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  v5 = type metadata accessor for PBHKConcept(0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  v7 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  result = (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v9 = &v3[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v3[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v3[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v3[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType];
  *v12 = 0;
  v12[8] = 1;
  qword_27F47ABF0 = v3;
  return result;
}

uint64_t sub_251B67828()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v3 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_251B67948()
{
  sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_251B67AAC(319, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_251B67AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B67B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251B98414();
          break;
        case 2:
          sub_251AB6E48();
          break;
        case 3:
          sub_251B67DB4();
          break;
        case 4:
          sub_251B67E90(a1, a2, a3, a4);
          break;
        case 5:
          sub_251B6854C(a1, a2, a3, a4);
          break;
        case 6:
          sub_251B68C0C(a1, a2, a3, a4);
          break;
        case 7:
          sub_251B692CC(a1, a2, a3, a4);
          break;
        case 8:
          sub_251B6998C(a1, a2, a3, a4);
          break;
        case 10:
          sub_251B6A04C(a1, a2, a3, a4);
          break;
        case 11:
          sub_251B6A70C(a1, a2, a3, a4);
          break;
        case 12:
          sub_251B6ADCC(a1, a2, a3, a4);
          break;
        case 13:
          sub_251B6B48C(a1, a2, a3, a4);
          break;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source;
          goto LABEL_5;
        case 16:
          sub_251B6BB4C(a1, a2, a3, a4);
          break;
        case 17:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID;
          goto LABEL_5;
        case 18:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName;
LABEL_5:
          sub_251B8255C(v11, v12, v13, v14, v15);
          break;
        case 19:
          sub_251B6C20C();
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B67DB4()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B67E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKAllergyRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v51 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v47 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v46 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  v48 = v18;
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_5:
    v36 = v58;
    goto LABEL_6;
  }

  sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    goto LABEL_5;
  }

  sub_251BB3444(v31, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  v40 = v52;
  sub_251BB23C4(v23, v52, type metadata accessor for PBHKAllergyRecord);
  sub_251BB23C4(v40, v31, type metadata accessor for PBHKAllergyRecord);
  v36 = v58;
  v51(v31, 0, 1, v58);
LABEL_6:
  v37 = v56;
  sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord);
  v38 = v57;
  sub_251C70564();
  if (v38)
  {
    return sub_251BB3444(v31, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  }

  sub_251BB33C4(v31, v37, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  if ((*(v54 + 48))(v37, 1, v36) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
    return sub_251BB3444(v37, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
  }

  else
  {
    v41 = v53;
    sub_251BB23C4(v37, v53, type metadata accessor for PBHKAllergyRecord);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B698, type metadata accessor for PBHKAllergyRecord);
    v42 = v49;
    sub_251BB23C4(v41, v49, type metadata accessor for PBHKAllergyRecord);
    v43 = v48;
    swift_storeEnumTagMultiPayload();
    (*(v46 + 56))(v42, 0, 1, v43);
    v44 = v50;
    v45 = v47;
    swift_beginAccess();
    sub_251BB3050(v42, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKConditionRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251BB3444(v31, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKConditionRecord);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKConditionRecord);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
    return sub_251BB3444(v39, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKConditionRecord);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6A0, type metadata accessor for PBHKConditionRecord);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKConditionRecord);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B68C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKVaccinationRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251BB3444(v31, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKVaccinationRecord);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKVaccinationRecord);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
    return sub_251BB3444(v39, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKVaccinationRecord);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6A8, type metadata accessor for PBHKVaccinationRecord);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKVaccinationRecord);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B692CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_251BB3444(v31, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKMedicationDispenseRecord);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKMedicationDispenseRecord);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
    return sub_251BB3444(v39, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKMedicationDispenseRecord);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6B0, type metadata accessor for PBHKMedicationDispenseRecord);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKMedicationDispenseRecord);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKMedicationOrder(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_251BB3444(v31, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKMedicationOrder);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKMedicationOrder);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
    return sub_251BB3444(v39, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKMedicationOrder);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6B8, type metadata accessor for PBHKMedicationOrder);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKMedicationOrder);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_251BB3444(v31, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKDiagnosticTestResult);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKDiagnosticTestResult);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
    return sub_251BB3444(v39, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKDiagnosticTestResult);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6C0, type metadata accessor for PBHKDiagnosticTestResult);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKDiagnosticTestResult);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6A70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_251BB3444(v31, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKDiagnosticTestReport);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKDiagnosticTestReport);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
    return sub_251BB3444(v39, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKDiagnosticTestReport);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6C8, type metadata accessor for PBHKDiagnosticTestReport);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKDiagnosticTestReport);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKAccountOwner(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_251BB3444(v31, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKAccountOwner);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKAccountOwner);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
    return sub_251BB3444(v39, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKAccountOwner);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6D0, type metadata accessor for PBHKAccountOwner);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKAccountOwner);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKProcedureRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251BB3444(v31, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKProcedureRecord);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKProcedureRecord);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
    return sub_251BB3444(v39, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKProcedureRecord);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6D8, type metadata accessor for PBHKProcedureRecord);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKProcedureRecord);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6BB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for PBHKMedicationRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - v10;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v11 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  sub_251B67AAC(0, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord, v11);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v56 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v54 = v6;
  v32 = *(v6 + 56);
  v58 = v5;
  v33 = v5;
  v34 = v19;
  v52 = v32;
  v32(&v46 - v30, 1, 1, v33);
  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v50 = a1;
  v48 = v35;
  sub_251BB33C4(a1 + v35, v17, qword_2813E5D48, v55);
  v47 = v34;
  LODWORD(v55) = (*(v34 + 48))(v17, 1, v18);
  if (v55 == 1)
  {
    sub_251BB3444(v17, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
  }

  else
  {
    sub_251BB23C4(v17, v25, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB23C4(v25, v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v36 = v18;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_251BB3444(v31, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
      v37 = v53;
      sub_251BB23C4(v23, v53, type metadata accessor for PBHKMedicationRecord);
      sub_251BB23C4(v37, v31, type metadata accessor for PBHKMedicationRecord);
      v38 = v58;
      v52(v31, 0, 1, v58);
      goto LABEL_7;
    }

    sub_251BB2308(v23, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  v38 = v58;
LABEL_7:
  v39 = v56;
  sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord);
  v40 = v57;
  sub_251C70564();
  if (v40)
  {
    return sub_251BB3444(v31, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
  }

  sub_251BB33C4(v31, v39, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
  if ((*(v54 + 48))(v39, 1, v38) == 1)
  {
    sub_251BB3444(v31, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
    return sub_251BB3444(v39, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
  }

  else
  {
    v42 = v51;
    sub_251BB23C4(v39, v51, type metadata accessor for PBHKMedicationRecord);
    if (v55 != 1)
    {
      sub_251C70454();
    }

    sub_251BB3444(v31, &qword_27F47B6E0, type metadata accessor for PBHKMedicationRecord);
    v43 = v49;
    sub_251BB23C4(v42, v49, type metadata accessor for PBHKMedicationRecord);
    swift_storeEnumTagMultiPayload();
    (*(v47 + 56))(v43, 0, 1, v36);
    v44 = v50;
    v45 = v48;
    swift_beginAccess();
    sub_251BB3050(v43, v44 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    return swift_endAccess();
  }
}

uint64_t sub_251B6C20C()
{
  swift_beginAccess();
  sub_251BB279C();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B6C2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  swift_beginAccess();
  v16 = a1[3];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = a1[3];

    sub_251C70674();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = a1[5];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = a1[5];

    sub_251C70674();
    if (v4)
    {
    }
  }

  result = sub_251B6C8FC(a1, a2, a3, a4);
  if (!v4)
  {
    v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
    swift_beginAccess();
    sub_251BB33C4(a1 + v23, v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v24 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
    if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
    {
      sub_251BB33C4(v15, v13, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            sub_251B6D7F8(a1, a2, a3, a4);
          }

          else
          {
            sub_251B6DA80(a1, a2, a3, a4);
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_251B6DD08(a1, a2, a3, a4);
        }

        else if (EnumCaseMultiPayload == 8)
        {
          sub_251B6DF90(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_251B6CDD8(a1, a2, a3, a4);
        }

        else
        {
          sub_251B6CB54(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_251B6D060(a1, a2, a3, a4);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_251B6D2E8(a1, a2, a3, a4);
      }

      else
      {
        sub_251B6D570(a1, a2, a3, a4);
      }

      sub_251BB2308(v13, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    }

    sub_251BB3444(v15, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    v26 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
    swift_beginAccess();
    v27 = *v26;
    v28 = v26[1];
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      sub_251C70674();
    }

    sub_251B6E218(a1, a2, a3, a4);
    v30 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {

      sub_251C70674();
    }

    v34 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];
    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {

      sub_251C70674();
    }

    v38 = a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
    result = swift_beginAccess();
    if (*v38)
    {
      v39 = v38[8];
      v40[1] = *v38;
      v41 = v39;
      sub_251BB279C();
      return sub_251C70604();
    }
  }

  return result;
}

uint64_t sub_251B6C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B6CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKAllergyRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKAllergyRecord);
    sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKAllergyRecord);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6CDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConditionRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKConditionRecord);
    sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKConditionRecord);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKVaccinationRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKVaccinationRecord);
    sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKVaccinationRecord);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKMedicationDispenseRecord);
    sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKMedicationDispenseRecord);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKMedicationOrder(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKMedicationOrder);
    sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKMedicationOrder);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKDiagnosticTestResult);
    sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKDiagnosticTestResult);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKDiagnosticTestReport);
    sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKDiagnosticTestReport);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKAccountOwner(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKAccountOwner);
    sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKAccountOwner);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKProcedureRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKProcedureRecord);
    sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord);
    sub_251C706A4();
    return sub_251BB2308(v12, type metadata accessor for PBHKProcedureRecord);
  }

  result = sub_251BB2308(v8, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  __break(1u);
  return result;
}

uint64_t sub_251B6E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = a4;
  v18[0] = a3;
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for PBHKMedicationRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251BB33C4(a1 + v13, v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_251BB3444(v8, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_251BB23C4(v8, v12, type metadata accessor for PBHKMedicationRecord);
    sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord);
    sub_251C706A4();
    v16 = type metadata accessor for PBHKMedicationRecord;
    v17 = v12;
  }

  else
  {
    v16 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
    v17 = v8;
  }

  return sub_251BB2308(v17, v16);
}

BOOL sub_251B6E49C(void *a1, void *a2)
{
  v4 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F47B568, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v80 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v84 = &v77 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v77 - v16;
  v17 = type metadata accessor for PBHKConcept(0);
  v86 = *(v17 - 8);
  v87 = v17;
  v18 = *(v86 + 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v10);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v85 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v77 - v29;
  swift_beginAccess();
  v31 = a1[2];
  v32 = a1[3];
  swift_beginAccess();
  if ((v31 != a2[2] || v32 != a2[3]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = a1[4];
  v34 = a1[5];
  swift_beginAccess();
  if ((v33 != a2[4] || v34 != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v77 = v15;
  v35 = a2;
  v36 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v36, v30, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v37 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  v38 = *(v21 + 48);
  sub_251BB33C4(v30, v24, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v35 + v37, &v24[v38], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v39 = v87;
  v40 = *(v86 + 6);
  if (v40(v24, 1, v87) == 1)
  {

    sub_251BB3444(v30, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v40(&v24[v38], 1, v39) == 1)
    {
      sub_251BB3444(v24, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_17;
    }

LABEL_12:
    sub_251BB242C(v24, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_23;
  }

  v86 = v30;
  v41 = v85;
  sub_251BB33C4(v24, v85, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v40(&v24[v38], 1, v39) == 1)
  {

    sub_251BB3444(v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v41, type metadata accessor for PBHKConcept);
    goto LABEL_12;
  }

  v42 = v79;
  sub_251BB23C4(&v24[v38], v79, type metadata accessor for PBHKConcept);
  v43 = *(v39 + 5);
  v44 = *(v41 + v43);
  v45 = *(v42 + v43);

  if (v44 != v45)
  {

    v46 = sub_251B70648(v44, v45);

    if ((v46 & 1) == 0)
    {
      sub_251BB2308(v42, type metadata accessor for PBHKConcept);
      sub_251BB3444(v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v41, type metadata accessor for PBHKConcept);
      sub_251BB3444(v24, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_23;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v47 = sub_251C70ED4();
  sub_251BB2308(v42, type metadata accessor for PBHKConcept);
  sub_251BB3444(v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v41, type metadata accessor for PBHKConcept);
  sub_251BB3444(v24, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v47 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v48 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v87 = a1;
  v49 = v81;
  sub_251BB33C4(a1 + v48, v81, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v50 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v51 = *(v80 + 48);
  v52 = v84;
  sub_251BB33C4(v49, v84, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  sub_251BB33C4(v35 + v50, v52 + v51, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v53 = v83;
  v54 = *(v82 + 48);
  if (v54(v52, 1, v83) != 1)
  {
    v55 = v77;
    sub_251BB33C4(v52, v77, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (v54(v52 + v51, 1, v53) != 1)
    {
      v57 = v52 + v51;
      v58 = v78;
      sub_251BB23C4(v57, v78, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      v59 = sub_251BAD450(v55, v58);
      sub_251BB2308(v58, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      sub_251BB3444(v49, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      sub_251BB2308(v55, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      sub_251BB3444(v52, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      if (v59)
      {
        goto LABEL_26;
      }

LABEL_23:

      return 0;
    }

    sub_251BB3444(v49, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB2308(v55, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_22:
    sub_251BB242C(v52, &qword_27F47B568, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    goto LABEL_23;
  }

  sub_251BB3444(v49, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  if (v54(v52 + v51, 1, v53) != 1)
  {
    goto LABEL_22;
  }

  sub_251BB3444(v52, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_26:
  v60 = (v87 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = (v35 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
  swift_beginAccess();
  if ((v61 != *v63 || v62 != v63[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v64 = (v87 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
  swift_beginAccess();
  v65 = *v64;
  v66 = v64[1];
  v67 = (v35 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
  swift_beginAccess();
  if ((v65 != *v67 || v66 != v67[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v68 = (v87 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v69 = *v68;
  v70 = v68[1];
  v71 = (v35 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  if ((v69 != *v71 || v70 != v71[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v72 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
  v73 = v87;
  swift_beginAccess();
  v74 = *(v73 + v72);

  v75 = v35 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
  swift_beginAccess();
  v76 = *v75;
  LODWORD(v75) = v75[8];

  if (v75 != 1)
  {
    return v74 == v76;
  }

  if (!v76)
  {
    return !v74;
  }

  if (v76 != 1)
  {
    return v74 == 2;
  }

  return v74 == 1;
}

uint64_t sub_251B6F194(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B688, type metadata accessor for PBClinicalRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6F234(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B390, type metadata accessor for PBClinicalRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B6F2A0()
{
  sub_251B9ED44(&qword_27F47B390, type metadata accessor for PBClinicalRecord);

  return sub_251C705C4();
}

uint64_t sub_251B6F360()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A20F0);
  __swift_project_value_buffer(v0, qword_27F4A20F0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "ORIGIN_NOT_SET";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "FHIR_RESOURCE";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "SIGNED_CLINICAL_DATA";
  *(v12 + 8) = 20;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B6F5AC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2108);
  __swift_project_value_buffer(v0, qword_27F4A2108);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "resource_type";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "identifier";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B6F7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B6E8, type metadata accessor for PBFHIRIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6F87C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B6F8E8()
{
  sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier);

  return sub_251C705C4();
}

uint64_t sub_251B6F964()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2120);
  __swift_project_value_buffer(v0, qword_27F4A2120);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "preferred_name";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "localized_preferred_name";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "raw_identifier";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "group_by";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "is_in_memory";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B6FC10()
{
  v0 = type metadata accessor for PBHKConcept._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  v5 = type metadata accessor for PBHKConcept(0);
  result = (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v3[OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory] = 0;
  qword_27F47ABF8 = v3;
  return result;
}

uint64_t sub_251B6FCB0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_251B6FD70()
{
  sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251B6FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = a7;
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = a6(v18);
    a7 = v24;

    *(v10 + v14) = v22;
    v17 = v22;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_251B6FF30()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_251B98414();
      }

      else if (result == 2)
      {
        sub_251AB6E48();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_251AB6ECC();
          break;
        case 4:
          sub_251B70038();
          break;
        case 5:
          sub_251B70114();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_251B70038()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B70114()
{
  swift_beginAccess();
  sub_251C70474();
  return swift_endAccess();
}

uint64_t sub_251B701A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B70220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = a1[3];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = a1[3], , sub_251C70674(), result = , !v4))
  {
    swift_beginAccess();
    v13 = a1[5];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (v15 = a1[5], , sub_251C70674(), result = , !v4))
    {
      swift_beginAccess();
      v16 = a1[7];
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = a1[6] & 0xFFFFFFFFFFFFLL;
      }

      if (!v17 || (v18 = a1[7], , sub_251C70674(), result = , !v4))
      {
        result = sub_251B703F0(a1, a2, a3, a4);
        if (!v4)
        {
          v19 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
          result = swift_beginAccess();
          if (*(a1 + v19) == 1)
          {
            return sub_251C705F4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B703F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B70648(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  swift_beginAccess();
  v20 = a1[2];
  v21 = a1[3];
  swift_beginAccess();
  if ((v20 != a2[2] || v21 != a2[3]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v22 = a1[4];
  v23 = a1[5];
  swift_beginAccess();
  if ((v22 != a2[4] || v23 != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v24 = a1[6];
  v25 = a1[7];
  swift_beginAccess();
  if ((v24 != a2[6] || v25 != a2[7]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_17;
  }

  v41 = v7;
  v42 = v17;
  v26 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  swift_beginAccess();
  sub_251BB33C4(a1 + v26, v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v27 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  swift_beginAccess();
  v28 = *(v9 + 48);
  sub_251BB33C4(v19, v12, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v27, &v12[v28], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v29 = *(v43 + 48);
  if (v29(v12, 1, v4) == 1)
  {

    sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v29(&v12[v28], 1, v4) == 1)
    {
      sub_251BB3444(v12, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_22:
      v39 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
      swift_beginAccess();
      LOBYTE(v39) = *(a1 + v39);

      v40 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
      swift_beginAccess();
      LOBYTE(v40) = *(a2 + v40);

      v31 = v39 ^ v40 ^ 1;
      return v31 & 1;
    }
  }

  else
  {
    v30 = v42;
    sub_251BB33C4(v12, v42, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v29(&v12[v28], 1, v4) != 1)
    {
      v33 = v41;
      sub_251BB23C4(&v12[v28], v41, type metadata accessor for PBHKConcept);
      v34 = *(v4 + 20);
      v35 = *(v30 + v34);
      v36 = *(v33 + v34);

      if (v35 == v36 || (, , v37 = sub_251B70648(v35, v36), , , (v37 & 1) != 0))
      {
        sub_251C703B4();
        sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
        v38 = sub_251C70ED4();
        sub_251BB2308(v33, type metadata accessor for PBHKConcept);
        sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
        sub_251BB2308(v30, type metadata accessor for PBHKConcept);
        sub_251BB3444(v12, qword_2813E6D28, type metadata accessor for PBHKConcept);
        if (v38)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_251BB2308(v33, type metadata accessor for PBHKConcept);
        sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
        sub_251BB2308(v30, type metadata accessor for PBHKConcept);
        sub_251BB3444(v12, qword_2813E6D28, type metadata accessor for PBHKConcept);
      }

      goto LABEL_16;
    }

    sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v30, type metadata accessor for PBHKConcept);
  }

  sub_251BB242C(v12, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_16:

LABEL_17:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_251B70E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B6F0, type metadata accessor for PBHKConcept);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B70EBC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B70F28()
{
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);

  return sub_251C705C4();
}

uint64_t sub_251B70FE8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2138);
  __swift_project_value_buffer(v0, qword_27F4A2138);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C78260;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "allergy";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "asserter";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "criticality";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "last_occurrence_date";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "onset_date";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "reactions";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "recorded_date";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "status";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B71354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
LABEL_4:
            sub_251C70534();
            goto LABEL_5;
          }

          if (result == 8)
          {
            sub_251B715CC();
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          type metadata accessor for PBHKAllergyReaction(0);
          sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction);
          sub_251C70554();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKAllergyRecord);
      }

      else if (result == 1)
      {
        sub_251B71518();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B71518()
{
  v0 = *(type metadata accessor for PBHKAllergyRecord(0) + 40);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B715CC()
{
  v0 = *(type metadata accessor for PBHKAllergyRecord(0) + 48);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B71680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B71890(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_251C70674();
    }

    sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKAllergyRecord, 3);
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_251C70674();
    }

    v14 = v3[5];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_251C70674();
    }

    if (*(v3[6] + 16))
    {
      type metadata accessor for PBHKAllergyReaction(0);
      sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction);
      sub_251C70694();
    }

    v16 = v3[8];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v3[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_251C70674();
    }

    sub_251B71ADC(v3, a1, a2, a3);
    v18 = v3 + *(type metadata accessor for PBHKAllergyRecord(0) + 36);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B71890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKAllergyRecord(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B71ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKAllergyRecord(0);
  sub_251BB33C4(a1 + *(v14 + 48), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B71D2C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = MEMORY[0x277D84F90];
  *(a2 + 7) = 0;
  *(a2 + 8) = 0xE000000000000000;
  v4 = &a2[a1[9]];
  sub_251C703A4();
  v5 = a1[10];
  v6 = type metadata accessor for PBHKConcept(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v9(&a2[a1[11]], 1, 1, v6);
  v7 = &a2[a1[12]];

  return (v9)(v7, 1, 1, v6);
}

uint64_t (*sub_251B71E4C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_251B71EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B6F8, type metadata accessor for PBHKAllergyRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B71F40(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B71FAC()
{
  sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord);

  return sub_251C705C4();
}

uint64_t sub_251B7202C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2150);
  __swift_project_value_buffer(v0, qword_27F4A2150);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "manifestations";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "onset_date";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "severity";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B72260()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_251B72380();
          break;
        case 2:
          sub_251C70534();
          break;
        case 1:
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
          sub_251C70554();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B72380()
{
  v0 = *(type metadata accessor for PBHKAllergyReaction(0) + 28);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B72434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBHKConcept(0), sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept), result = sub_251C70694(), !v4))
  {
    v9 = v3[2];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_251C70674(), !v4))
    {
      result = sub_251B72560(v3, a1, a2, a3);
      if (!v4)
      {
        v11 = v3 + *(type metadata accessor for PBHKAllergyReaction(0) + 24);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B72560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKAllergyReaction(0);
  sub_251BB33C4(a1 + *(v14 + 28), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B727D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, char *a6@<X8>)
{
  *a6 = a2;
  *(a6 + 1) = a3;
  *(a6 + 2) = a4;
  v9 = &a6[*(a1 + 24)];
  sub_251C703A4();
  v10 = *(a1 + 28);
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(&a6[v10], 1, 1, v11);
}

uint64_t sub_251B728B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B700, type metadata accessor for PBHKAllergyReaction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B72958(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B729C4()
{
  sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction);

  return sub_251C705C4();
}

uint64_t sub_251B72A44()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2168);
  __swift_project_value_buffer(v0, qword_27F4A2168);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251C75810;
  v5 = v28 + v4;
  v6 = v28 + v4 + *(v2 + 56);
  *(v28 + v4) = 1;
  *v6 = "abatement_string_value";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "asserter";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "body_sites";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "category";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "clinical_status";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "condition";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "onset_string_value";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "recorded_date";
  *(v23 + 1) = 13;
  v23[16] = 2;
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "severity";
  *(v24 + 8) = 8;
  *(v24 + 16) = 2;
  v9();
  v25 = (v5 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "verification_status";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B72E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            goto LABEL_4;
          }

          sub_251B73134();
        }

        else
        {
          switch(result)
          {
            case 8:
              goto LABEL_4;
            case 9:
              sub_251B8852C(a1, v5, a2, a3, type metadata accessor for PBHKConditionRecord);
              break;
            case 10:
              sub_251B885E4(a1, v5, a2, a3, type metadata accessor for PBHKConditionRecord);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_251C70534();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
        sub_251C70554();
      }

      else if (result == 4)
      {
        sub_251B73080();
      }

      else
      {
        sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKConditionRecord);
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B73080()
{
  v0 = *(type metadata accessor for PBHKConditionRecord(0) + 40);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B73134()
{
  v0 = *(type metadata accessor for PBHKConditionRecord(0) + 48);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B731E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_251C70674(), !v4))
    {
      if (!*(v3[4] + 16) || (type metadata accessor for PBHKConcept(0), sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept), result = sub_251C70694(), !v4))
      {
        result = sub_251B73450(v3, a1, a2, a3);
        if (!v4)
        {
          sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKConditionRecord, 5);
          sub_251B7369C(v3, a1, a2, a3);
          v14 = v3[6];
          v15 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v15 = v3[5] & 0xFFFFFFFFFFFFLL;
          }

          if (v15)
          {
            sub_251C70674();
          }

          v16 = v3[8];
          v17 = HIBYTE(v16) & 0xF;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v17 = v3[7] & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            sub_251C70674();
          }

          sub_251B88CB4(v3, a1, a2, a3, type metadata accessor for PBHKConditionRecord, 9);
          sub_251B88F08(v3, a1, a2, a3, type metadata accessor for PBHKConditionRecord, 10);
          v18 = v3 + *(type metadata accessor for PBHKConditionRecord(0) + 36);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B73450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKConditionRecord(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKConditionRecord(0);
  sub_251BB33C4(a1 + *(v14 + 48), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B738E8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = MEMORY[0x277D84F90];
  *(a2 + 5) = 0;
  *(a2 + 6) = 0xE000000000000000;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0xE000000000000000;
  v4 = &a2[a1[9]];
  sub_251C703A4();
  v5 = a1[10];
  v6 = type metadata accessor for PBHKConcept(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v9(&a2[a1[11]], 1, 1, v6);
  v9(&a2[a1[12]], 1, 1, v6);
  v9(&a2[a1[13]], 1, 1, v6);
  v7 = &a2[a1[14]];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_251B73A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B708, type metadata accessor for PBHKConditionRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B73B20(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B73B8C()
{
  sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord);

  return sub_251C705C4();
}

uint64_t sub_251B73C0C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2180);
  __swift_project_value_buffer(v0, qword_27F4A2180);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_251C7C1E0;
  v5 = v36 + v4;
  v6 = v36 + v4 + *(v2 + 56);
  *(v36 + v4) = 1;
  *v6 = "administration_date";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v36 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "body_site";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v36 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "dose_number";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v36 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "dose_quantity";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v36 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "expiration_date";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v36 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "not_given";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v36 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "patient_reported";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v36 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "performer";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v23 = *MEMORY[0x277D21870];
  v9();
  v24 = v36 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "reaction";
  *(v24 + 8) = 8;
  *(v24 + 16) = 2;
  v9();
  v25 = (v36 + v4 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "reasons";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v9();
  v27 = (v36 + v4 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 11;
  *v28 = "reasons_not_given";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v9();
  v29 = (v36 + v4 + 11 * v3);
  v30 = v29 + *(v2 + 56);
  *v29 = 12;
  *v30 = "route";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v9();
  v31 = (v36 + v4 + 12 * v3);
  v32 = v31 + *(v2 + 56);
  *v31 = 13;
  *v32 = "status";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v9();
  v33 = (v36 + v4 + 13 * v3);
  v34 = v33 + *(v2 + 56);
  *v33 = 14;
  *v34 = "vaccination";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B74100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 5:
        case 8:
        case 9:
          sub_251C70534();
          break;
        case 2:
          sub_251B8869C(a1, v5, a2, a3, type metadata accessor for PBHKVaccinationRecord);
          break;
        case 6:
        case 7:
          sub_251C70474();
          break;
        case 10:
        case 11:
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
          sub_251C70554();
          break;
        case 12:
          sub_251B88754(a1, v5, a2, a3, type metadata accessor for PBHKVaccinationRecord);
          break;
        case 13:
          sub_251B8880C(a1, v5, a2, a3, type metadata accessor for PBHKVaccinationRecord);
          break;
        case 14:
          sub_251B74358();
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B74358()
{
  v0 = *(type metadata accessor for PBHKVaccinationRecord(0) + 72);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B7440C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B8915C(v3, a1, a2, a3, type metadata accessor for PBHKVaccinationRecord, 2);
    if (!v4)
    {
      v12 = *(v3 + 24);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_251C70674();
      }

      v14 = *(v3 + 40);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        sub_251C70674();
      }

      v16 = *(v3 + 56);
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        sub_251C70674();
      }

      if (*(v3 + 64) == 1)
      {
        sub_251C705F4();
      }

      if (*(v3 + 65) == 1)
      {
        sub_251C705F4();
      }

      v18 = *(v3 + 80);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_251C70674();
      }

      v20 = *(v3 + 96);
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = *(v3 + 88) & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        sub_251C70674();
      }

      if (*(*(v3 + 104) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
        sub_251C70694();
      }

      if (*(*(v3 + 112) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
        sub_251C70694();
      }

      sub_251B893B0(v3, a1, a2, a3, type metadata accessor for PBHKVaccinationRecord, 12);
      sub_251B89604(v3, a1, a2, a3, type metadata accessor for PBHKVaccinationRecord);
      sub_251B74788(v3, a1, a2, a3);
      v22 = v3 + *(type metadata accessor for PBHKVaccinationRecord(0) + 56);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B74788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKVaccinationRecord(0);
  sub_251BB33C4(a1 + *(v14 + 72), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B749D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 104) = MEMORY[0x277D84F90];
  *(a2 + 112) = v4;
  v5 = a2 + a1[14];
  sub_251C703A4();
  v6 = a1[15];
  v7 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v10(a2 + a1[16], 1, 1, v7);
  v10(a2 + a1[17], 1, 1, v7);
  v8 = a2 + a1[18];

  return (v10)(v8, 1, 1, v7);
}

uint64_t (*sub_251B74B24(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_251B74B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B710, type metadata accessor for PBHKVaccinationRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B74C18(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B74C84()
{
  sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord);

  return sub_251C705C4();
}

uint64_t sub_251B74D04()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2198);
  __swift_project_value_buffer(v0, qword_27F4A2198);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "instruction";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "timingPeriod";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B74EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      sub_251B8EA80(a1, v5, a2, a3, type metadata accessor for PBMedicationDosage);
    }
  }

  return result;
}

uint64_t sub_251B74F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B8EC4C(v3, a1, a2, a3, type metadata accessor for PBMedicationDosage, 2);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for PBMedicationDosage(0) + 20);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B750B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B718, type metadata accessor for PBMedicationDosage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B75150(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B751BC()
{
  sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage);

  return sub_251C705C4();
}

uint64_t sub_251B7523C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21B0);
  __swift_project_value_buffer(v0, qword_27F4A21B0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "value";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "unitString";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B7541C()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70514();
    }

    else if (result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251B754A8()
{
  if (!*v0 || (result = sub_251C70664(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_251C70674(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PBQuantity(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B75560@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251B755D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B720, type metadata accessor for PBQuantity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B75678(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B756E4()
{
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity);

  return sub_251C705C4();
}

uint64_t sub_251B75760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    v4 = a3;
    v5 = *(a2 + 8);
    v6 = sub_251C719D4();
    a3 = v4;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a3 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B75834()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21C8);
  __swift_project_value_buffer(v0, qword_27F4A21C8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C7C1F0;
  v5 = v21 + v4;
  v6 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v6 = "earliest_dosage_date";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "medication";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "status";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "dosages";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "localized_preferred_name";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "rx_norm_code_set";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B75B20()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for PBMedicationDosage(0);
            sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage);
            sub_251C70554();
            break;
          case 5:
LABEL_18:
            sub_251C70534();
            break;
          case 6:
            sub_251C70504();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_251B75C9C();
            break;
          case 3:
            sub_251B75D50();
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B75C9C()
{
  v0 = *(type metadata accessor for PBGeneralMedication(0) + 36);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B75D50()
{
  v0 = *(type metadata accessor for PBGeneralMedication(0) + 40);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B75E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B75FA0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_251B761EC(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for PBMedicationDosage(0);
        sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage);
        sub_251C70694();
      }

      v12 = v3[4];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_251C70674();
      }

      if (*(v3[5] + 16))
      {
        sub_251C70654();
      }

      v14 = v3 + *(type metadata accessor for PBGeneralMedication(0) + 32);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B75FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBGeneralMedication(0);
  sub_251BB33C4(a1 + *(v14 + 36), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B761EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBGeneralMedication(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B76438@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = v4;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0xE000000000000000;
  *(a2 + 5) = v4;
  v5 = &a2[a1[8]];
  sub_251C703A4();
  v6 = a1[9];
  v7 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), &a2[v6], 1, 1, v7);
  v8 = &a2[a1[10]];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_251B7655C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B728, type metadata accessor for PBGeneralMedication);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B765FC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B76668()
{
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);

  return sub_251C705C4();
}

uint64_t sub_251B766E8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21E0);
  __swift_project_value_buffer(v0, qword_27F4A21E0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C7C1C0;
  v5 = v26 + v4;
  v6 = v26 + v4 + *(v2 + 56);
  *(v26 + v4) = 1;
  *v6 = "general_medication";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "asserter";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "assertion_date";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "asserter_type";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "effective_start_date";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "effective_end_date";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "not_taken";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "reason_for_use";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "reasons_not_taken";
  *(v24 + 8) = 17;
  *(v24 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B76A88()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
LABEL_4:
            sub_251C70534();
            goto LABEL_5;
          }

          sub_251BB2F54();
          sub_251C70494();
        }

        else if (result == 1)
        {
          sub_251B76CA0();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          sub_251C70474();
        }

        else if (result == 8 || result == 9)
        {
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
          sub_251C70554();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B76CA0()
{
  v0 = *(type metadata accessor for PBHKMedicationRecord(0) + 52);
  type metadata accessor for PBGeneralMedication(0);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);
  return sub_251C70564();
}

uint64_t sub_251B76D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B77014(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_251C70674();
    }

    v9 = *(v3 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_251C70674();
    }

    if (*(v3 + 32))
    {
      v16 = *(v3 + 32);
      v17 = *(v3 + 40);
      sub_251BB2F54();
      sub_251C70604();
    }

    v11 = *(v3 + 56);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_251C70674();
    }

    v13 = *(v3 + 72);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_251C70674();
    }

    if (*(v3 + 80) == 1)
    {
      sub_251C705F4();
    }

    if (*(*(v3 + 88) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
      sub_251C70694();
    }

    if (*(*(v3 + 96) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
      sub_251C70694();
    }

    v15 = v3 + *(type metadata accessor for PBHKMedicationRecord(0) + 48);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B77014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBGeneralMedication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationRecord(0);
  sub_251BB33C4(a1 + *(v14 + 52), v8, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBGeneralMedication);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBGeneralMedication);
}

uint64_t sub_251B77260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 88) = MEMORY[0x277D84F90];
  *(a2 + 96) = v4;
  v5 = a2 + *(a1 + 48);
  sub_251C703A4();
  v6 = *(a1 + 52);
  v7 = type metadata accessor for PBGeneralMedication(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t (*sub_251B7732C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_251B77380(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B730, type metadata accessor for PBHKMedicationRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B77420(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7748C()
{
  sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord);

  return sub_251C705C4();
}

uint64_t sub_251B7750C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21F8);
  __swift_project_value_buffer(v0, qword_27F4A21F8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "ACTOR_TYPE_NOT_SET";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "ACTOR_TYPE_NONE";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "ACTOR_TYPE_OTHER";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "ACTOR_TYPE_PATIENT";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "ACTOR_TYPE_PRACTITIONER";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "ACTOR_TYPE_RELATED_PERSON";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "ACTOR_TYPE_ORGANIZATION";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B77840()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2210);
  __swift_project_value_buffer(v0, qword_27F4A2210);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "general_medication";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "day_supply_quantity";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "hand_over_date";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "preparation_date";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "quantity_dispensed";
  *(v16 + 8) = 18;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B77AEC()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_251B77BDC();
      }

      else if (result == 2)
      {
        sub_251B77C90();
      }
    }

    else if (result == 3 || result == 4)
    {
      sub_251C70534();
    }

    else if (result == 5)
    {
      sub_251B77D44();
    }
  }

  return result;
}

uint64_t sub_251B77BDC()
{
  v0 = *(type metadata accessor for PBHKMedicationDispenseRecord(0) + 28);
  type metadata accessor for PBGeneralMedication(0);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);
  return sub_251C70564();
}

uint64_t sub_251B77C90()
{
  v0 = *(type metadata accessor for PBHKMedicationDispenseRecord(0) + 32);
  type metadata accessor for PBQuantity(0);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity);
  return sub_251C70564();
}

uint64_t sub_251B77D44()
{
  v0 = *(type metadata accessor for PBHKMedicationDispenseRecord(0) + 36);
  type metadata accessor for PBQuantity(0);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity);
  return sub_251C70564();
}

uint64_t sub_251B77DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B77F08(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251B78154(v3, a1, a2, a3);
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_251C70674();
    }

    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_251C70674();
    }

    sub_251B783A0(v3, a1, a2, a3);
    v14 = v3 + *(type metadata accessor for PBHKMedicationDispenseRecord(0) + 24);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B77F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBGeneralMedication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  sub_251BB33C4(a1 + *(v14 + 28), v8, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBGeneralMedication);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBGeneralMedication);
}

uint64_t sub_251B78154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBQuantity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  sub_251BB33C4(a1 + *(v14 + 32), v8, qword_2813E6F88, type metadata accessor for PBQuantity);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6F88, type metadata accessor for PBQuantity);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBQuantity);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBQuantity);
}

uint64_t sub_251B783A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBQuantity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  sub_251BB33C4(a1 + *(v14 + 36), v8, qword_2813E6F88, type metadata accessor for PBQuantity);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6F88, type metadata accessor for PBQuantity);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBQuantity);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBQuantity);
}

uint64_t sub_251B785EC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[a1[6]];
  sub_251C703A4();
  v5 = a1[7];
  v6 = type metadata accessor for PBGeneralMedication(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for PBQuantity(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), &a2[v7], 1, 1, v8);
  v9 = &a2[a1[9]];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_251B78748(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B740, type metadata accessor for PBHKMedicationDispenseRecord);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B787E8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B78854()
{
  sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord);

  return sub_251C705C4();
}

uint64_t sub_251B788D4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2228);
  __swift_project_value_buffer(v0, qword_27F4A2228);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C78260;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "general_medication";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "ended_date";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "number_of_fills";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "prescriber";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "reason";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "reason_ended";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "status_reason";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "written_date";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B78C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_251B78ED8();
          }

          else if (result == 8)
          {
LABEL_4:
            sub_251C70534();
          }
        }

        else if (result == 5)
        {
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
          sub_251C70554();
        }

        else
        {
          sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKMedicationOrder);
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_251C704F4();
      }

      else if (result == 1)
      {
        sub_251B78E24();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B78E24()
{
  v0 = *(type metadata accessor for PBHKMedicationOrder(0) + 40);
  type metadata accessor for PBGeneralMedication(0);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);
  return sub_251C70564();
}

uint64_t sub_251B78ED8()
{
  v0 = *(type metadata accessor for PBHKMedicationOrder(0) + 48);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  return sub_251C70564();
}

uint64_t sub_251B78F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B79184(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = *(v3 + 8);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_251C70674();
    }

    if (*(v3 + 16))
    {
      sub_251C70644();
    }

    v12 = *(v3 + 32);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_251C70674();
    }

    if (*(*(v3 + 40) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
      sub_251C70694();
    }

    sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKMedicationOrder, 6);
    sub_251B793D0(v3, a1, a2, a3);
    v14 = *(v3 + 56);
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_251C70674();
    }

    v16 = v3 + *(type metadata accessor for PBHKMedicationOrder(0) + 36);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B79184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBGeneralMedication(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationOrder(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBGeneralMedication);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBGeneralMedication);
}

uint64_t sub_251B793D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKMedicationOrder(0);
  sub_251BB33C4(a1 + *(v14 + 48), v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7961C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = MEMORY[0x277D84F90];
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v4 = a2 + a1[9];
  sub_251C703A4();
  v5 = a1[10];
  v6 = type metadata accessor for PBGeneralMedication(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[11];
  v8 = type metadata accessor for PBHKConcept(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[12];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_251B7978C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B748, type metadata accessor for PBHKMedicationOrder);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7982C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B79898()
{
  sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder);

  return sub_251C705C4();
}

uint64_t sub_251B79918()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2240);
  __swift_project_value_buffer(v0, qword_27F4A2240);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_251C7C200;
  v5 = v38 + v4;
  v6 = v38 + v4 + *(v2 + 56);
  *(v38 + v4) = 1;
  *v6 = "body_site";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v38 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "category";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v38 + v4 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "comments";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v38 + v4 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "diagnostic_test";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v38 + v4 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "effective_end_date";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  v18 = (v38 + v4 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "effective_start_date";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v9();
  v20 = (v38 + v4 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "interpretation_deprecated";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v9();
  v22 = (v38 + v4 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "issue_date";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v9();
  v24 = v38 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "method";
  *(v24 + 8) = 6;
  *(v24 + 16) = 2;
  v9();
  v25 = (v38 + v4 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "performers";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v9();
  v27 = (v38 + v4 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 11;
  *v28 = "referenceRanges";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v9();
  v29 = (v38 + v4 + 11 * v3);
  v30 = v29 + *(v2 + 56);
  *v29 = 12;
  *v30 = "status";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v9();
  v31 = (v38 + v4 + 12 * v3);
  v32 = v31 + *(v2 + 56);
  *v31 = 13;
  *v32 = "likelyDisplayString";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v9();
  v33 = (v38 + v4 + 13 * v3);
  v34 = v33 + *(v2 + 56);
  *v33 = 14;
  *v34 = "value";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v9();
  v35 = (v38 + v4 + 14 * v3);
  v36 = v35 + *(v2 + 56);
  *v35 = 15;
  *v36 = "interpretation";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B79E78()
{
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v2 = type metadata accessor for PBHKConcept(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated, 1, 1, v2);
  v8 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method, 1, 1, v2);
  v9 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges) = v9;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status, 1, 1, v2);
  v10 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v12 = type metadata accessor for PBHKInspectableValueCollection(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation) = v9;
  return v0;
}

uint64_t sub_251B7A05C(uint64_t a1)
{
  v96 = type metadata accessor for PBHKInspectableValueCollection;
  v3 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v81 - v6;
  v82 = type metadata accessor for PBHKConcept;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v81 - v9;
  v10 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v81 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v13 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v83 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  v12(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest, 1, 1, v11);
  v15 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  v84 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  v85 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v86 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  v12(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated, 1, 1, v11);
  v17 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  v87 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v88 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  v12(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method, 1, 1, v11);
  v89 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  v18 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers) = MEMORY[0x277D84F90];
  v90 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges) = v18;
  v91 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  v12(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status, 1, 1, v11);
  v19 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  v92 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v93 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v21 = type metadata accessor for PBHKInspectableValueCollection(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v94 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation) = v18;
  v22 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v97;
  v25 = v82;
  sub_251BB33C4(v23, v97, qword_2813E6D28, v82);
  v26 = v81;
  swift_beginAccess();
  sub_251BB3050(v24, v1 + v26, qword_2813E6D28, v25);
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  swift_beginAccess();
  v30 = v13[1];
  *v13 = v29;
  v13[1] = v28;

  v31 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  v34 = v14[1];
  *v14 = v33;
  v14[1] = v32;

  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  v36 = v97;
  sub_251BB33C4(a1 + v35, v97, qword_2813E6D28, v25);
  v37 = v83;
  swift_beginAccess();
  sub_251BB3050(v36, v1 + v37, qword_2813E6D28, v25);
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = v84;
  swift_beginAccess();
  v42 = v41[1];
  *v41 = v40;
  v41[1] = v39;

  v43 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  v46 = v85;
  swift_beginAccess();
  v47 = v46[1];
  *v46 = v45;
  v46[1] = v44;

  v48 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  swift_beginAccess();
  sub_251BB33C4(a1 + v48, v36, qword_2813E6D28, v25);
  v49 = v86;
  swift_beginAccess();
  sub_251BB3050(v36, v1 + v49, qword_2813E6D28, v25);
  swift_endAccess();
  v50 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v87;
  swift_beginAccess();
  v54 = v53[1];
  *v53 = v52;
  v53[1] = v51;

  v55 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  swift_beginAccess();
  sub_251BB33C4(a1 + v55, v36, qword_2813E6D28, v25);
  v56 = v88;
  swift_beginAccess();
  sub_251BB3050(v36, v1 + v56, qword_2813E6D28, v25);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  swift_beginAccess();
  v58 = *(a1 + v57);
  v59 = v89;
  swift_beginAccess();
  v60 = *(v1 + v59);
  *(v1 + v59) = v58;

  v61 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  swift_beginAccess();
  v62 = *(a1 + v61);
  v63 = v90;
  swift_beginAccess();
  v64 = *(v1 + v63);
  *(v1 + v63) = v62;

  v65 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  swift_beginAccess();
  sub_251BB33C4(a1 + v65, v36, qword_2813E6D28, v25);
  v66 = v91;
  swift_beginAccess();
  sub_251BB3050(v36, v1 + v66, qword_2813E6D28, v25);
  swift_endAccess();
  v67 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v92;
  swift_beginAccess();
  v71 = v70[1];
  *v70 = v69;
  v70[1] = v68;

  v72 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  swift_beginAccess();
  v74 = v95;
  v73 = v96;
  sub_251BB33C4(a1 + v72, v95, qword_2813E32E8, v96);
  v75 = v93;
  swift_beginAccess();
  sub_251BB3050(v74, v1 + v75, qword_2813E32E8, v73);
  swift_endAccess();
  v76 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
  swift_beginAccess();
  v77 = *(a1 + v76);

  v78 = v94;
  swift_beginAccess();
  v79 = *(v1 + v78);
  *(v1 + v78) = v77;

  return v1;
}

uint64_t sub_251B7A8D8()
{
  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v1 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments + 8);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v3 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate + 8);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v5 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate + 8);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v6 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers);

  v7 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v8 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString + 8);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v9 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation);

  return v0;
}

void sub_251B7AAA8()
{
  sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_251B67AAC(319, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_251B7AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251B7AE80();
          break;
        case 2:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category;
          goto LABEL_5;
        case 3:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments;
          goto LABEL_5;
        case 4:
          sub_251B7AF5C();
          break;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate;
          goto LABEL_5;
        case 6:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate;
          goto LABEL_5;
        case 7:
          sub_251B7B038();
          break;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate;
          goto LABEL_5;
        case 9:
          sub_251B7B114();
          break;
        case 10:
          sub_251B82240(a2, a1, a3, a4, &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers);
          break;
        case 11:
          sub_251B7B1F0();
          break;
        case 12:
          sub_251B7B2CC();
          break;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString;
LABEL_5:
          sub_251B8255C(v11, v12, v13, v14, v15);
          break;
        case 14:
          sub_251B7B3A8();
          break;
        case 15:
          sub_251B7B484();
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B7AE80()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7AF5C()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B038()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B114()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B1F0()
{
  swift_beginAccess();
  type metadata accessor for PBHKReferenceRange(0);
  sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange);
  sub_251C70554();
  return swift_endAccess();
}

uint64_t sub_251B7B2CC()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B3A8()
{
  swift_beginAccess();
  type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B484()
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C70554();
  return swift_endAccess();
}

uint64_t sub_251B7B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251B7BAB8(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_251C70674();
    }

    v14 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_251C70674();
    }

    sub_251B7BD10(a1, a2, a3, a4);
    v18 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      sub_251C70674();
    }

    v22 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
    swift_beginAccess();
    v23 = *v22;
    v22[1];

    sub_251C70674();

    sub_251B7BF68(a1, a2, a3, a4);
    v24 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
    swift_beginAccess();
    v25 = *v24;
    v24[1];

    sub_251C70674();

    sub_251B7C1C0(a1, a2, a3, a4);
    v26 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
    swift_beginAccess();
    if (*(*(a1 + v26) + 16))
    {

      sub_251C70654();
    }

    v27 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
    swift_beginAccess();
    if (*(*(a1 + v27) + 16))
    {
      type metadata accessor for PBHKReferenceRange(0);
      sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange);

      sub_251C70694();
    }

    sub_251B7C418(a1, a2, a3, a4);
    v28 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
    swift_beginAccess();
    v29 = *v28;
    v28[1];

    sub_251C70674();

    sub_251B7C670(a1, a2, a3, a4);
    v30 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
    result = swift_beginAccess();
    if (*(*(a1 + v30) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);

      sub_251C70694();
    }
  }

  return result;
}

uint64_t sub_251B7BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKInspectableValueCollection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  swift_beginAccess();
  sub_251BB33C4(a1 + v14, v8, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKInspectableValueCollection);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKInspectableValueCollection);
}

uint64_t sub_251B7C8C8(uint64_t a1, uint64_t a2)
{
  v255 = a2;
  v3 = type metadata accessor for PBHKInspectableValueCollection(0);
  v231 = *(v3 - 8);
  v232 = v3;
  v4 = *(v231 + 64);
  MEMORY[0x28223BE20](v3);
  v227 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v230 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v233 = &v225 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v228 = (&v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v235 = &v225 - v14;
  v15 = type metadata accessor for PBHKConcept(0);
  v16 = *(v15 - 8);
  v253 = v15;
  v254 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v229 = &v225 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v238 = &v225 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v240 = &v225 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v245 = &v225 - v25;
  MEMORY[0x28223BE20](v24);
  v252 = &v225 - v26;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v28 = v27;
  v29 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v236 = &v225 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v241 = &v225 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v244 = &v225 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v249 = &v225 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v225 - v38;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v9);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v234 = &v225 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v237 = &v225 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v239 = &v225 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v243 = &v225 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v242 = &v225 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v247 = &v225 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v246 = &v225 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v250 = &v225 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v251 = &v225 - v59;
  MEMORY[0x28223BE20](v58);
  v61 = &v225 - v60;
  v62 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  swift_beginAccess();
  sub_251BB33C4(a1 + v62, v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v63 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v64 = v255;
  swift_beginAccess();
  v248 = v28;
  v65 = *(v28 + 48);
  sub_251BB33C4(v61, v39, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v66 = v64 + v63;
  v67 = v253;
  v68 = v254;
  v69 = v39;
  sub_251BB33C4(v66, &v39[v65], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v72 = *(v68 + 48);
  v71 = v68 + 48;
  v70 = v72;
  if (v72(v39, 1, v67) == 1)
  {

    sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v70(&v39[v65], 1, v67) != 1)
    {
      goto LABEL_7;
    }

    v254 = v71;
    v73 = v67;
    sub_251BB3444(v39, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  else
  {
    v74 = v61;
    v75 = v251;
    sub_251BB33C4(v69, v251, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v70((v69 + v65), 1, v67) == 1)
    {

      sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
      v76 = v75;
LABEL_6:
      sub_251BB2308(v76, type metadata accessor for PBHKConcept);
      goto LABEL_7;
    }

    v226 = v70;
    v254 = v71;
    v83 = v252;
    sub_251BB23C4(v69 + v65, v252, type metadata accessor for PBHKConcept);
    v73 = v67;
    v84 = *(v67 + 20);
    v85 = *(v75 + v84);
    v86 = *(v83 + v84);

    if (v85 != v86)
    {

      v87 = sub_251B70648(v85, v86);

      if ((v87 & 1) == 0)
      {
        sub_251BB2308(v252, type metadata accessor for PBHKConcept);
        sub_251BB3444(v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
        sub_251BB2308(v75, type metadata accessor for PBHKConcept);
        v116 = v69;
        goto LABEL_29;
      }
    }

    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v88 = v252;
    v89 = sub_251C70ED4();
    sub_251BB2308(v88, type metadata accessor for PBHKConcept);
    sub_251BB3444(v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v75, type metadata accessor for PBHKConcept);
    sub_251BB3444(v69, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v70 = v226;
    if ((v89 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v90 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  v93 = (v255 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  if ((v91 != *v93 || v92 != v93[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v94 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  v97 = (v255 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  swift_beginAccess();
  if ((v95 != *v97 || v96 != v97[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v226 = v70;
  v98 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  v99 = v250;
  sub_251BB33C4(a1 + v98, v250, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v100 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  v101 = v255;
  swift_beginAccess();
  v102 = v249;
  v103 = *(v248 + 48);
  sub_251BB33C4(v99, v249, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v104 = v101 + v100;
  v105 = v226;
  v106 = v102;
  sub_251BB33C4(v104, v102 + v103, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v107 = v102;
  v108 = v73;
  v109 = v254;
  if (v105(v107, 1, v73) != 1)
  {
    v112 = v246;
    sub_251BB33C4(v106, v246, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v113 = v105(v106 + v103, 1, v108);
    v111 = v247;
    if (v113 == 1)
    {
      sub_251BB3444(v250, qword_2813E6D28, type metadata accessor for PBHKConcept);
      v114 = v112;
LABEL_25:
      sub_251BB2308(v114, type metadata accessor for PBHKConcept);
      goto LABEL_26;
    }

    v254 = v109;
    v117 = v245;
    sub_251BB23C4(v106 + v103, v245, type metadata accessor for PBHKConcept);
    v118 = *(v108 + 20);
    v119 = *(v112 + v118);
    v120 = *(v117 + v118);
    if (v119 == v120 || (v121 = *(v112 + v118), , , v122 = sub_251B70648(v119, v120), , , (v122 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v123 = sub_251C70ED4();
      sub_251BB2308(v117, type metadata accessor for PBHKConcept);
      sub_251BB3444(v250, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v112, type metadata accessor for PBHKConcept);
      sub_251BB3444(v249, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v123 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

    sub_251BB2308(v117, type metadata accessor for PBHKConcept);
    sub_251BB3444(v250, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v112, type metadata accessor for PBHKConcept);
    v116 = v249;
LABEL_29:
    sub_251BB3444(v116, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_9;
  }

  sub_251BB3444(v99, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v110 = v105(v106 + v103, 1, v73);
  v111 = v247;
  if (v110 != 1)
  {
    goto LABEL_26;
  }

  v254 = v109;
  sub_251BB3444(v106, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_33:
  v124 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  swift_beginAccess();
  v125 = *v124;
  v126 = v124[1];
  v127 = (v255 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  swift_beginAccess();
  if ((v125 != *v127 || v126 != v127[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v128 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  swift_beginAccess();
  v129 = *v128;
  v130 = v128[1];
  v131 = (v255 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  swift_beginAccess();
  if ((v129 != *v131 || v130 != v131[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v132 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  swift_beginAccess();
  sub_251BB33C4(a1 + v132, v111, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v133 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  v134 = v111;
  v135 = v255;
  swift_beginAccess();
  v136 = v248;
  v137 = *(v248 + 48);
  v106 = v244;
  sub_251BB33C4(v134, v244, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v138 = v135 + v133;
  v139 = v226;
  sub_251BB33C4(v138, v106 + v137, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v140 = v253;
  if (v139(v106, 1, v253) == 1)
  {
    sub_251BB3444(v134, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v141 = v139(v106 + v137, 1, v140);
    v142 = v243;
    if (v141 == 1)
    {
      v143 = v140;
      sub_251BB3444(v106, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_48;
    }

LABEL_26:
    v77 = &qword_27F4790E8;
    v78 = qword_2813E6D28;
    v115 = type metadata accessor for PBHKConcept;
LABEL_27:
    v79 = v115;
    v80 = v106;
    goto LABEL_8;
  }

  v144 = v242;
  sub_251BB33C4(v106, v242, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v145 = v139(v106 + v137, 1, v140);
  v142 = v243;
  if (v145 == 1)
  {
    sub_251BB3444(v247, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v114 = v144;
    goto LABEL_25;
  }

  v146 = v240;
  sub_251BB23C4(v106 + v137, v240, type metadata accessor for PBHKConcept);
  v147 = v144;
  v143 = v140;
  v148 = *(v140 + 20);
  v149 = *(v147 + v148);
  v150 = *(v146 + v148);
  if (v149 != v150)
  {
    v151 = *(v147 + v148);

    v152 = sub_251B70648(v149, v150);

    if ((v152 & 1) == 0)
    {
      sub_251BB2308(v146, type metadata accessor for PBHKConcept);
      sub_251BB3444(v247, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v242, type metadata accessor for PBHKConcept);
      v116 = v244;
      goto LABEL_29;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v153 = v242;
  v154 = sub_251C70ED4();
  sub_251BB2308(v146, type metadata accessor for PBHKConcept);
  sub_251BB3444(v247, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v153, type metadata accessor for PBHKConcept);
  sub_251BB3444(v244, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v154 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_48:
  v155 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[1];
  v158 = (v255 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  swift_beginAccess();
  if ((v156 != *v158 || v157 != v158[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v159 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  swift_beginAccess();
  sub_251BB33C4(a1 + v159, v142, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v160 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  v161 = v142;
  v162 = v255;
  swift_beginAccess();
  v163 = *(v136 + 48);
  v69 = v241;
  sub_251BB33C4(v161, v241, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v164 = v162 + v160;
  v165 = v226;
  sub_251BB33C4(v164, v69 + v163, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v165(v69, 1, v143) == 1)
  {
    sub_251BB3444(v161, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v165(v69 + v163, 1, v143) == 1)
    {
      v166 = v69;
      v167 = v143;
      sub_251BB3444(v166, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_60;
    }

LABEL_7:
    v77 = &qword_27F4790E8;
    v78 = qword_2813E6D28;
    v79 = type metadata accessor for PBHKConcept;
    v80 = v69;
LABEL_8:
    sub_251BB242C(v80, v77, v78, v79);
    goto LABEL_9;
  }

  v168 = v239;
  sub_251BB33C4(v69, v239, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v165(v69 + v163, 1, v143) == 1)
  {
    sub_251BB3444(v243, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v76 = v168;
    goto LABEL_6;
  }

  v169 = v238;
  sub_251BB23C4(v69 + v163, v238, type metadata accessor for PBHKConcept);
  v167 = v143;
  v170 = *(v143 + 20);
  v171 = *(v168 + v170);
  v172 = *(v169 + v170);
  v173 = v243;
  if (v171 != v172)
  {
    v174 = *(v168 + v170);

    v175 = sub_251B70648(v171, v172);

    if ((v175 & 1) == 0)
    {
      sub_251BB2308(v169, type metadata accessor for PBHKConcept);
      sub_251BB3444(v173, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v168, type metadata accessor for PBHKConcept);
      v116 = v241;
      goto LABEL_29;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v176 = sub_251C70ED4();
  sub_251BB2308(v169, type metadata accessor for PBHKConcept);
  sub_251BB3444(v173, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v168, type metadata accessor for PBHKConcept);
  sub_251BB3444(v241, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v176 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_60:
  v177 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  swift_beginAccess();
  v178 = *(a1 + v177);
  v179 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  v180 = v255;
  swift_beginAccess();
  if ((sub_251A93C70(v178, *(v180 + v179)) & 1) == 0)
  {
    goto LABEL_9;
  }

  v181 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  swift_beginAccess();
  v182 = *(a1 + v181);
  v183 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  v184 = v255;
  swift_beginAccess();
  v185 = *(v184 + v183);

  LOBYTE(v184) = sub_251A9B63C(v182, v185);

  if ((v184 & 1) == 0)
  {
    goto LABEL_9;
  }

  v186 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  swift_beginAccess();
  v187 = v237;
  sub_251BB33C4(a1 + v186, v237, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v188 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  v189 = v255;
  swift_beginAccess();
  v190 = *(v248 + 48);
  v191 = v236;
  sub_251BB33C4(v187, v236, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v192 = v189 + v188;
  v193 = v226;
  sub_251BB33C4(v192, v191 + v190, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v193(v191, 1, v167) == 1)
  {
    sub_251BB3444(v187, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v193(v191 + v190, 1, v167) == 1)
    {
      sub_251BB3444(v191, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_72;
    }

LABEL_68:
    v77 = &qword_27F4790E8;
    v78 = qword_2813E6D28;
    v79 = type metadata accessor for PBHKConcept;
    v80 = v191;
    goto LABEL_8;
  }

  v194 = v234;
  sub_251BB33C4(v191, v234, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v193(v191 + v190, 1, v167) == 1)
  {
    sub_251BB3444(v237, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v194, type metadata accessor for PBHKConcept);
    goto LABEL_68;
  }

  v195 = v229;
  sub_251BB23C4(v191 + v190, v229, type metadata accessor for PBHKConcept);
  v196 = *(v167 + 20);
  v197 = *(v194 + v196);
  v198 = *(v195 + v196);
  v199 = v237;
  if (v197 != v198)
  {
    v200 = *(v194 + v196);

    v201 = sub_251B70648(v197, v198);

    if ((v201 & 1) == 0)
    {
      sub_251BB2308(v195, type metadata accessor for PBHKConcept);
      sub_251BB3444(v199, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v194, type metadata accessor for PBHKConcept);
      v116 = v236;
      goto LABEL_29;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v202 = sub_251C70ED4();
  sub_251BB2308(v195, type metadata accessor for PBHKConcept);
  sub_251BB3444(v199, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v194, type metadata accessor for PBHKConcept);
  sub_251BB3444(v236, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v202 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_72:
  v203 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  swift_beginAccess();
  v204 = *v203;
  v205 = v203[1];
  v206 = (v255 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  swift_beginAccess();
  if ((v204 != *v206 || v205 != v206[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v207 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  swift_beginAccess();
  v208 = v235;
  sub_251BB33C4(a1 + v207, v235, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v209 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v210 = v255;
  swift_beginAccess();
  v211 = *(v230 + 48);
  v212 = v208;
  v213 = v233;
  sub_251BB33C4(v212, v233, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v106 = v213;
  sub_251BB33C4(v210 + v209, v213 + v211, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v214 = v232;
  v215 = *(v231 + 48);
  if (v215(v213, 1, v232) == 1)
  {
    sub_251BB3444(v235, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    if (v215(v213 + v211, 1, v214) == 1)
    {
      sub_251BB3444(v213, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
LABEL_83:
      v220 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
      swift_beginAccess();
      v221 = *(a1 + v220);
      v222 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
      v223 = v255;
      swift_beginAccess();
      v224 = *(v223 + v222);

      v81 = sub_251A956E8(v221, v224);

      return v81 & 1;
    }

    goto LABEL_80;
  }

  v216 = v228;
  sub_251BB33C4(v213, v228, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v215(v213 + v211, 1, v214) == 1)
  {
    sub_251BB3444(v235, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    sub_251BB2308(v216, type metadata accessor for PBHKInspectableValueCollection);
LABEL_80:
    v77 = &qword_27F4790F0;
    v78 = qword_2813E32E8;
    v115 = type metadata accessor for PBHKInspectableValueCollection;
    goto LABEL_27;
  }

  v217 = v213 + v211;
  v218 = v227;
  sub_251BB23C4(v217, v227, type metadata accessor for PBHKInspectableValueCollection);
  v219 = sub_251BAB4D4(v216, v218);
  sub_251BB2308(v218, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB3444(v235, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB2308(v216, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB3444(v213, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v219)
  {
    goto LABEL_83;
  }

LABEL_9:

  v81 = 0;
  return v81 & 1;
}

uint64_t sub_251B7E728(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B750, type metadata accessor for PBHKDiagnosticTestResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7E7C8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7E834()
{
  sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult);

  return sub_251C705C4();
}

uint64_t sub_251B7E8F4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2258);
  __swift_project_value_buffer(v0, qword_27F4A2258);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "identifier";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "valueRange";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B7EAD4()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      sub_251B7EB64();
    }
  }

  return result;
}

uint64_t sub_251B7EB64()
{
  v0 = *(type metadata accessor for PBHKReferenceRange(0) + 24);
  type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection);
  return sub_251C70564();
}

uint64_t sub_251B7EC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B7ECC4(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for PBHKReferenceRange(0) + 20);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B7ECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKInspectableValueCollection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKReferenceRange(0);
  sub_251BB33C4(a1 + *(v14 + 24), v8, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKInspectableValueCollection);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKInspectableValueCollection);
}

uint64_t sub_251B7EF28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  v6 = &a3[*(a1 + 20)];
  sub_251C703A4();
  v7 = *(a1 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_251B7F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B758, type metadata accessor for PBHKReferenceRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7F0AC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7F118()
{
  sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange);

  return sub_251C705C4();
}

uint64_t sub_251B7F198()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2270);
  __swift_project_value_buffer(v0, qword_27F4A2270);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "numerator";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "denominator";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B7F378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_251C70674(), !v5))
    {
      v13 = v4 + *(a4(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B7F494(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B760, type metadata accessor for PBHKRatioValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7F534(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7F5A0()
{
  sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue);

  return sub_251C705C4();
}

uint64_t sub_251B7F61C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2288);
  __swift_project_value_buffer(v0, qword_27F4A2288);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251C7C1F0;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "min";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "max";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "inspectableValues";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "unitString";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B7F8F4()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_251B7FC08();
            break;
          case 5:
            type metadata accessor for PBHKInspectableValue(0);
            sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
            sub_251C70554();
            break;
          case 6:
            sub_251C70534();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_251BB2FA8();
            sub_251C70494();
            break;
          case 2:
            sub_251B7FAA0();
            break;
          case 3:
            sub_251B7FB54();
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B7FAA0()
{
  v0 = *(type metadata accessor for PBHKInspectableValueCollection(0) + 32);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  return sub_251C70564();
}

uint64_t sub_251B7FB54()
{
  v0 = *(type metadata accessor for PBHKInspectableValueCollection(0) + 36);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  return sub_251C70564();
}

uint64_t sub_251B7FC08()
{
  v0 = *(type metadata accessor for PBHKInspectableValueCollection(0) + 40);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  return sub_251C70564();
}

uint64_t sub_251B7FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v12 = *v3, v13 = *(v3 + 8), sub_251BB2FA8(), result = sub_251C70604(), !v4))
  {
    result = sub_251B7FE6C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_251B800B8(v3, a1, a2, a3);
      sub_251B80304(v3, a1, a2, a3);
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for PBHKInspectableValue(0);
        sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
        sub_251C70694();
      }

      v9 = *(v3 + 32);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_251C70674();
      }

      v11 = v3 + *(type metadata accessor for PBHKInspectableValueCollection(0) + 28);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B7FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKInspectableValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251BB33C4(a1 + *(v14 + 32), v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B800B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKInspectableValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251BB33C4(a1 + *(v14 + 36), v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B80304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHKInspectableValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251BB33C4(a1 + *(v14 + 40), v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BB3444(v8, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v8, v13, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B80554@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v5 = a2 + a1[7];
  sub_251C703A4();
  v6 = a1[8];
  v7 = type metadata accessor for PBHKInspectableValue(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v10(a2 + a1[9], 1, 1, v7);
  v8 = a2 + a1[10];

  return (v10)(v8, 1, 1, v7);
}

uint64_t sub_251B806A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B768, type metadata accessor for PBHKInspectableValueCollection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B80744(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B807B0()
{
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection);

  return sub_251C705C4();
}

uint64_t sub_251B80830()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22A0);
  __swift_project_value_buffer(v0, qword_27F4A22A0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251C7C1E0;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "valueType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v35 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "stringValue";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v35 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "codedQuantityRawValue";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v35 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "ratioValue";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v35 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "medicalDateString";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v35 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "medicalDateIntervalString";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v35 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "dateFromDateComponents";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v35 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "medicalCodingsDisplayStrings";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v9();
  v23 = v35 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 10;
  *v23 = "dataAbsentReasonCodingsDisplayStrings";
  *(v23 + 8) = 37;
  *(v23 + 16) = 2;
  v9();
  v24 = (v35 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 11;
  *v25 = "codedValueCollectionValues";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v9();
  v26 = (v35 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 12;
  *v27 = "concept";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v9();
  v28 = (v35 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 13;
  *v29 = "dataAbsentReasonConcept";
  *(v29 + 1) = 23;
  v29[16] = 2;
  v9();
  v30 = (v35 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 14;
  *v31 = "unitString";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v9();
  v32 = (v35 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 15;
  *v33 = "codedQuantity";
  *(v33 + 1) = 13;
  v33[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B80D30(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_251B80D84()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  v2 = type metadata accessor for PBHKRatioValue(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  v5 = type metadata accessor for PBDateRange(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings) = v7;
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues) = v7;
  v8 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v0 + v8, 1, 1, v9);
  v10(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept, 1, 1, v9);
  v11 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  v13 = type metadata accessor for PBHKCodedQuantity(0);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  return v0;
}

uint64_t sub_251B80F70(uint64_t a1)
{
  v96 = type metadata accessor for PBHKCodedQuantity;
  v3 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = type metadata accessor for PBHKConcept;
  v95 = &v80 - v6;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v80 - v9;
  v89 = type metadata accessor for PBDateRange;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v3);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v80 - v12;
  v83 = type metadata accessor for PBHKRatioValue;
  sub_251B67AAC(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, v3);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v80 - v15;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v80 = (v1 + 48);
  *(v1 + 56) = 0xE000000000000000;
  v16 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  v81 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  v17 = type metadata accessor for PBHKRatioValue(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  v84 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  v20 = type metadata accessor for PBDateRange(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  v85 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v86 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  v22 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings) = MEMORY[0x277D84F90];
  v88 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings) = v22;
  v90 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues) = v22;
  v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  v24 = type metadata accessor for PBHKConcept(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v1 + v23, 1, 1, v24);
  v91 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  v25(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept, 1, 1, v24);
  v26 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  v92 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  v28 = type metadata accessor for PBHKCodedQuantity(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  swift_beginAccess();
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v29;
  *(v1 + 24) = v30;
  swift_beginAccess();
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v31;
  *(v1 + 40) = v32;
  swift_beginAccess();
  v34 = *(a1 + 48);
  v33 = *(a1 + 56);
  v35 = v80;
  swift_beginAccess();
  *v35 = v34;
  *(v1 + 56) = v33;
  v36 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;

  swift_beginAccess();
  v37 = a1 + v36;
  v39 = v82;
  v38 = v83;
  sub_251BB33C4(v37, v82, qword_2813E64E0, v83);
  v40 = v81;
  swift_beginAccess();
  sub_251BB3050(v39, v1 + v40, qword_2813E64E0, v38);
  swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  swift_beginAccess();
  v44 = v18[1];
  *v18 = v43;
  v18[1] = v42;

  v45 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  v46 = v87;
  v47 = v89;
  sub_251BB33C4(a1 + v45, v87, qword_2813E6EE8, v89);
  v48 = v84;
  swift_beginAccess();
  sub_251BB3050(v46, v1 + v48, qword_2813E6EE8, v47);
  swift_endAccess();
  v49 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v85;
  swift_beginAccess();
  v53 = v52[1];
  *v52 = v51;
  v52[1] = v50;

  v54 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = v86;
  swift_beginAccess();
  v57 = *(v1 + v56);
  *(v1 + v56) = v55;

  v58 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  swift_beginAccess();
  v59 = *(a1 + v58);
  v60 = v88;
  swift_beginAccess();
  v61 = *(v1 + v60);
  *(v1 + v60) = v59;

  v62 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  swift_beginAccess();
  v63 = *(a1 + v62);
  v64 = v90;
  swift_beginAccess();
  v65 = *(v1 + v64);
  *(v1 + v64) = v63;

  v66 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  v67 = v93;
  v68 = v94;
  sub_251BB33C4(a1 + v66, v93, qword_2813E6D28, v94);
  swift_beginAccess();
  sub_251BB3050(v67, v1 + v23, qword_2813E6D28, v68);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v69, v67, qword_2813E6D28, v68);
  v70 = v91;
  swift_beginAccess();
  sub_251BB3050(v67, v1 + v70, qword_2813E6D28, v68);
  swift_endAccess();
  v71 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  v73 = *v71;
  v72 = v71[1];
  swift_beginAccess();
  v74 = v26[1];
  *v26 = v73;
  v26[1] = v72;

  v75 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  v77 = v95;
  v76 = v96;
  sub_251BB33C4(a1 + v75, v95, qword_2813E5640, v96);

  v78 = v92;
  swift_beginAccess();
  sub_251BB3050(v77, v1 + v78, qword_2813E5640, v76);
  swift_endAccess();
  return v1;
}