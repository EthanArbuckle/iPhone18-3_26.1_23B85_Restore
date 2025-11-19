void sub_1B4ADFF3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B4ADF968(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4ADFFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_168Tm);
}

uint64_t __swift_get_extra_inhabitant_index_168Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D17BCC();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B4AE0124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_169Tm);
}

uint64_t __swift_store_extra_inhabitant_index_169Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B4D17BCC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B4AE0298(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1B4AE0398()
{
  result = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B4AE0484()
{
  sub_1B4ADF968(319, qword_1EDC3B800, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B4ADF968(319, qword_1EDC3C7F8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B4AE0620()
{
  result = qword_1EB8A9BA8;
  if (!qword_1EB8A9BA8)
  {
    type metadata accessor for WorkoutGoalAchievementStatusFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9BA8);
  }

  return result;
}

unint64_t sub_1B4AE067C()
{
  result = qword_1EB8A9BB0;
  if (!qword_1EB8A9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9BB0);
  }

  return result;
}

uint64_t sub_1B4AE06DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4AE077C, 0, 0);
}

uint64_t sub_1B4AE077C()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4AE0878;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4B7A120(v6, v4);
}

uint64_t sub_1B4AE0878(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  sub_1B49933E8(v4);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t WorkoutProperties.init(startCacheIndex:endCacheIndex:records:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a4;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, v8, 0);
    v9 = a3 + 32;
    v10 = v37;
    for (i = v8 - 1; ; --i)
    {
      sub_1B498ADFC(v9, v22);
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      sub_1B496F398(&v27, v32 + 8);
      *&v28 = v6;
      *(&v28 + 1) = v7;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      *&v32[0] = v36;
      v37 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B4BCECFC((v12 > 1), v13 + 1, 1);
        v10 = v37;
      }

      *(v10 + 16) = v13 + 1;
      v14 = (v10 + 112 * v13);
      v15 = v28;
      v16 = v30;
      v14[3] = v29;
      v14[4] = v16;
      v14[2] = v15;
      v17 = v31;
      v18 = v32[0];
      v19 = v32[2];
      v14[7] = v32[1];
      v14[8] = v19;
      v14[5] = v17;
      v14[6] = v18;
      if (!i)
      {
        break;
      }

      v9 += 112;
    }

    v5 = a4;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *v5 = v6;
  v5[1] = v7;
  v5[2] = v10;
  return result;
}

void *sub_1B4AE0B18(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BD8, &qword_1B4D2B590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for RingStateFact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = (a3 + 32);
  v28 = v15;
  v20 = (v15 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    v22 = *v19++;
    v33 = v22;
    a1(&v33, v16);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1B4975024(v10, &qword_1EB8A9BD8, &qword_1B4D2B590);
    }

    else
    {
      v23 = v31;
      sub_1B4AE617C(v10, v31, type metadata accessor for RingStateFact);
      sub_1B4AE617C(v23, v32, type metadata accessor for RingStateFact);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1DA48(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_1B4A1DA48(v24 > 1, v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      sub_1B4AE617C(v32, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for RingStateFact);
      v11 = v29;
    }

    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

char *sub_1B4AE0DE0(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v5 + 32);
    v9 = *(v5 + 10);
    v10 = *(v5 + 9);
    v11 = *(v5 + 8);
    v22 = *v5;
    v23 = v11;
    v24 = v10;
    v25 = v9;
    v26 = *(v5 + 1);
    v27 = v8;
    v28(v19, &v22);
    if (v3)
    {
      break;
    }

    v12 = v21;
    if (v21)
    {
      v17 = v19[1];
      v18 = v19[0];
      v13 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B4A1DA70(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_1B4A1DA70((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v7 = &v6[48 * v15];
      *(v7 + 2) = v18;
      *(v7 + 3) = v17;
      *(v7 + 8) = v13;
      *(v7 + 9) = v12;
    }

    v5 += 5;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1B4AE0F50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C00, &qword_1B4D2B5C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for WorkoutAwardsFact(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(type metadata accessor for ActivityAchievementAward() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1B4975024(v10, &qword_1EB8A9C00, &qword_1B4D2B5C0);
    }

    else
    {
      v22 = v30;
      sub_1B4AE617C(v10, v30, type metadata accessor for WorkoutAwardsFact);
      sub_1B4AE617C(v22, v32, type metadata accessor for WorkoutAwardsFact);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1DB90(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1B4A1DB90(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_1B4AE617C(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for WorkoutAwardsFact);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1B4AE126C(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v11, &v14);
    if (v3)
    {
      break;
    }

    if (v12)
    {
      sub_1B496F398(&v11, v13);
      sub_1B496F398(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B4A1DBDC(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1B4A1DBDC((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_1B496F398(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_1B4975024(&v11, &qword_1EB8A9BE0, &qword_1B4D2B598);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1B4AE13D0(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; ++i)
  {
    v21 = *i;
    a1(v19, &v21);
    if (v3)
    {
      break;
    }

    if (v20)
    {
      v16 = v19[4];
      v17 = v19[5];
      v18 = v20;
      v12 = v19[0];
      v13 = v19[1];
      v14 = v19[2];
      v15 = v19[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B4A1DD0C(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1B4A1DD0C((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[112 * v9];
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      *(v10 + 7) = v17;
      *(v10 + 8) = v18;
      *(v10 + 5) = v15;
      *(v10 + 6) = v16;
    }

    else
    {
      sub_1B4975024(v19, &qword_1EB8A9BF0, &unk_1B4D2B5B0);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1B4AE1550(void (*a1)(_OWORD *__return_ptr, __int16 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 34);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v19 = *(v6 - 1);
    v20 = v8;
    a1(v17, &v19);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v13 = v17[0];
      v14 = v17[1];
      v15 = v17[2];
      v16 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B4A1DC00(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1B4A1DC00((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[64 * v10];
      *(v11 + 4) = v15;
      *(v11 + 5) = v16;
      *(v11 + 2) = v13;
      *(v11 + 3) = v14;
    }

    else
    {
      sub_1B4975024(v17, &qword_1EB8A9BD0, "h");
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t WorkoutProperties.resolve<A>(_:filter:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v59 = a4;
  v9 = sub_1B4D1880C();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v11;
  v12 = a1[1];
  v77[0] = *a1;
  v77[1] = v12;
  v77[2] = a1[2];
  v13 = *(v4 + 16);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v61 = a3;
  v62 = a2;
  v78 = v14;
  if (v14)
  {
    v16 = 0;
    v17 = (v13 + 32);
    while (v16 < *(v13 + 16))
    {
      sub_1B498ADFC(v17, v73);
      v18 = sub_1B4AE1D4C(v73, v77, a2, a3);
      if (v5)
      {
        goto LABEL_28;
      }

      if (v18)
      {
        v70 = v74[0];
        v71 = v74[1];
        v72 = v75;
        v66 = v73[0];
        v67 = v73[1];
        v68 = v73[2];
        v69 = v73[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v15 + 16) + 1, 1);
          v15 = v76;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B4BCECFC((v20 > 1), v21 + 1, 1);
          v15 = v76;
        }

        *(v15 + 16) = v21 + 1;
        v22 = (v15 + 112 * v21);
        v23 = v66;
        v24 = v68;
        v22[3] = v67;
        v22[4] = v24;
        v22[2] = v23;
        v25 = v69;
        v26 = v70;
        v27 = v72;
        v22[7] = v71;
        v22[8] = v27;
        v22[5] = v25;
        v22[6] = v26;
        a3 = v61;
        a2 = v62;
      }

      else
      {
        sub_1B498AE58(v73);
      }

      ++v16;
      v17 += 112;
      if (v78 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:

    sub_1B498AE58(v73);

    __break(1u);
    goto LABEL_29;
  }

LABEL_13:
  *&v73[0] = v15;

  sub_1B4AE42D0(v73);
  v17 = v5;
  if (v5)
  {
LABEL_29:

    __break(1u);
    return result;
  }

  v28 = *&v73[0];
  v29 = *(*&v73[0] + 16);
  if (v29)
  {
    v58 = 0;
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF0BC(0, v29, 0);
    v30 = v76;
    v57 = v28;
    v31 = v28 + 32;
    do
    {
      v78 = v29;
      v65 = v31;
      sub_1B498ADFC(v31, v73);
      v32 = v75;
      v33 = __swift_project_boxed_opaque_existential_1(v74 + 1, v75);
      v34 = *(*(&v32 + 1) + 8);
      v63 = *(v34 + 64);
      v64 = v33;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(&v67 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *&v68 = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
      v63(v32, v34);
      v38 = sub_1B498AE58(v73);
      v76 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1B4BCF0BC((v39 > 1), v40 + 1, 1);
      }

      v41 = *(*(AssociatedTypeWitness - 8) + 64);
      v42 = MEMORY[0x1EEE9AC00](v38);
      v44 = &v54 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, boxed_opaque_existential_1, AssociatedTypeWitness, v42);
      sub_1B4CB7620(v40, v44, &v76, AssociatedTypeWitness, AssociatedConformanceWitness);
      __swift_destroy_boxed_opaque_existential_1Tm(&v66);
      v30 = v76;
      v31 = v65 + 112;
      v29 = v78 - 1;
    }

    while (v78 != 1);

    a3 = v61;
    a2 = v62;
    v17 = v58;
  }

  else
  {
  }

  v46 = *(a3 + 8);
  v47 = v60;
  static SnapshotProperty.reduce(_:)(a2, v46, v60);

  if (!v17)
  {
    v49 = *(a2 - 8);
    v50 = a2;
    if ((*(v49 + 48))(v47, 1, a2) == 1)
    {
      (*(v55 + 8))(v47, v56);
      v51 = 1;
      v52 = v59;
    }

    else
    {
      v52 = v59;
      (*(v46 + 64))(v50, v46);
      (*(v49 + 8))(v47, v50);
      v51 = 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v53 = swift_getAssociatedTypeWitness();
    return (*(*(v53 - 8) + 56))(v52, v51, 1, v53);
  }

  return result;
}

uint64_t sub_1B4AE1D4C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v25[0] = *(a1 + 16);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v25[1] = v7;
  v25[2] = v10;
  v26 = *(a1 + 64);
  *&v21[48] = v8;
  v22 = v9;
  v23 = *(a1 + 48);
  v24 = *(a1 + 64);
  v11 = a2[1];
  *v21 = *a2;
  *&v21[16] = v11;
  *&v21[32] = a2[2];
  sub_1B498B0D4(v25, v27);
  v12 = WorkoutPropertyDimensions.matches(_:)(v21);
  v27[0] = *&v21[48];
  v27[1] = v22;
  v27[2] = v23;
  v28 = v24;
  sub_1B498AD54(v27);
  if (v12)
  {
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);
    __swift_project_boxed_opaque_existential_1((a1 + 72), v13);
    sub_1B4B70700(v13, *(v14 + 8));
    (*(*(a4 + 8) + 56))(v21, a3);
    v15 = WorkoutPropertyKind.rawValue.getter();
    v17 = v16;
    if (v15 == WorkoutPropertyKind.rawValue.getter() && v17 == v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_1B4D18DCC();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t WorkoutProperties.resolve(kind:filter:)@<X0>(unsigned __int8 *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v171 = *a1;
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v145 = a2[2];
  v146 = v6;
  v9 = a2[5];
  v143 = a2[4];
  v144 = v8;
  v147 = v9;
  v153 = *(v3 + 16);
  v10 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_64:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v151 = v7;
  v12 = 0;
  v141 = 0x80000001B4D48CC0;
  v142 = 0x80000001B4D48CE0;
  v139 = 0x80000001B4D48C80;
  v140 = 0x80000001B4D48CA0;
  v137 = 0x80000001B4D48C40;
  v138 = 0x80000001B4D48C60;
  v135 = 0x80000001B4D48C00;
  v136 = 0x80000001B4D48C20;
  v133 = 0x80000001B4D48BC0;
  v134 = 0x80000001B4D48BE0;
  v131 = 0x80000001B4D48B80;
  v132 = 0x80000001B4D48BA0;
  v129 = 0x80000001B4D48B40;
  v130 = 0x80000001B4D48B60;
  v127 = 0x80000001B4D488D0;
  v128 = 0x80000001B4D48B20;
  v126 = 0x80000001B4D48AF0;
  while (2)
  {
    if (v12 >= *(v10 + 16))
    {
      goto LABEL_270;
    }

    v13 = *(v10 + 16 * v12 + 32);
    v14 = *(v10 + 16 * v12++ + 40);
    v15 = *(v14 + 8);
    v16 = *(v15 + 56);
    v149 = v13;
    v4 = v13;
    v150 = v15;
    v16(&v165, v13);
    v17 = 0xEE00736369747369;
    v18 = 0x7461745365636170;
    switch(v165)
    {
      case 1:
        v18 = 0xD000000000000012;
        v17 = v127;
        break;
      case 2:
        break;
      case 3:
        v18 = 0xD000000000000017;
        v17 = v128;
        break;
      case 4:
        v18 = 0xD00000000000001ALL;
        v17 = v129;
        break;
      case 5:
        v18 = 0xD000000000000013;
        v17 = v130;
        break;
      case 6:
        v18 = 0xD000000000000012;
        v17 = v131;
        break;
      case 7:
        v18 = 0xD000000000000012;
        v17 = v132;
        break;
      case 8:
        v18 = 0xD00000000000001CLL;
        v17 = v133;
        break;
      case 9:
        v18 = 0xD000000000000015;
        v17 = v134;
        break;
      case 10:
        v18 = 0xD000000000000017;
        v17 = v135;
        break;
      case 11:
        v18 = 0xD000000000000013;
        v17 = v136;
        break;
      case 12:
        v18 = 0xD00000000000001CLL;
        v17 = v137;
        break;
      case 13:
        v18 = 0xD000000000000018;
        v17 = v138;
        break;
      case 14:
        v18 = 0xD000000000000017;
        v17 = v139;
        break;
      case 15:
        v18 = 0xD000000000000017;
        v17 = v140;
        break;
      case 16:
        v18 = 0xD000000000000017;
        v17 = v141;
        break;
      case 17:
        v18 = 0xD000000000000016;
        v17 = v142;
        break;
      case 18:
        v18 = 0x756F436C61746F74;
        v17 = 0xEA0000000000746ELL;
        break;
      default:
        v18 = 0xD000000000000011;
        v17 = v126;
        break;
    }

    v19 = 0x7461745365636170;
    v20 = 0xEE00736369747369;
    switch(v171)
    {
      case 1:
        v20 = v127;
        if (v18 == 0xD000000000000012)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      case 2:
        goto LABEL_57;
      case 3:
        v20 = v128;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 4:
        v20 = v129;
        if (v18 != 0xD00000000000001ALL)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 5:
        v20 = v130;
        if (v18 != 0xD000000000000013)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 6:
        v20 = v131;
        if (v18 != 0xD000000000000012)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 7:
        v20 = v132;
        if (v18 != 0xD000000000000012)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 8:
        v20 = v133;
        if (v18 != 0xD00000000000001CLL)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 9:
        v20 = v134;
        if (v18 != 0xD000000000000015)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 10:
        v19 = 0xD000000000000017;
        v20 = v135;
LABEL_57:
        if (v18 == v19)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      case 11:
        v20 = v136;
        if (v18 != 0xD000000000000013)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 12:
        v20 = v137;
        if (v18 != 0xD00000000000001CLL)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 13:
        v20 = v138;
        if (v18 != 0xD000000000000018)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 14:
        v20 = v139;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 15:
        v20 = v140;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 16:
        v20 = v141;
        if (v18 != 0xD000000000000017)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 17:
        v20 = v142;
        if (v18 != 0xD000000000000016)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      case 18:
        v20 = 0xEA0000000000746ELL;
        if (v18 != 0x756F436C61746F74)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      default:
        v20 = v126;
        if (v18 != 0xD000000000000011)
        {
          goto LABEL_59;
        }

LABEL_58:
        if (v17 != v20)
        {
LABEL_59:
          v21 = sub_1B4D18DCC();

          if (v21)
          {
            goto LABEL_66;
          }

          if (v11 == v12)
          {
            goto LABEL_64;
          }

          continue;
        }

LABEL_66:

        v120 = a3;
        v121 = v4;
        v23 = v153;
        v24 = MEMORY[0x1E69E7CC0];
        v25 = v151;
        v154 = *(v153 + 16);
        if (v154)
        {
          v4 = 0;
          v152 = (v153 + 32);
          v124 = v145 + 4;
          v125 = v146 + 32;
          v122 = v143 + 32;
          v123 = v144 + 4;
          do
          {
            if (v4 >= *(v23 + 16))
            {
              __break(1u);
LABEL_270:
              __break(1u);
LABEL_271:

              __break(1u);
              return result;
            }

            sub_1B498ADFC(&v152[14 * v4], &v165);
            v162 = *v166;
            v163 = *&v166[16];
            *v164 = v167;
            *&v164[16] = *&v168[0];
            if (!v25)
            {
              goto LABEL_193;
            }

            v26 = v162;
            if (v162 == 12 || !*(v25 + 16))
            {
              v27 = sub_1B498B0D4(&v162, &v155);
            }

            else
            {
              sub_1B498B0D4(&v162, &v155);
              v27 = sub_1B4978C4C(v26, v25);
              if ((v27 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            v28 = BYTE1(v162);
            if (BYTE1(v162) != 7)
            {
              v29 = *(v146 + 2);
              if (v29)
              {
                v30 = v125;
                do
                {
                  if (!v29)
                  {
LABEL_68:
                    v25 = v151;
                    v23 = v153;
                    goto LABEL_69;
                  }

                  v32 = *v30;
                  if (v32 <= 2)
                  {
                    v35 = 0xE900000000000079;
                    v36 = 0x616473656E646577;
                    if (v32 == 1)
                    {
                      v36 = 0x79616473657574;
                      v35 = 0xE700000000000000;
                    }

                    if (*v30)
                    {
                      v33 = v36;
                    }

                    else
                    {
                      v33 = 0x7961646E6F6DLL;
                    }

                    if (*v30)
                    {
                      v34 = v35;
                    }

                    else
                    {
                      v34 = 0xE600000000000000;
                    }

                    if (v28 > 2)
                    {
LABEL_106:
                      v37 = 0x7961646E7573;
                      if (v28 == 5)
                      {
                        v37 = 0x7961647275746173;
                        v38 = 0xE800000000000000;
                      }

                      else
                      {
                        v38 = 0xE600000000000000;
                      }

                      v39 = 0x7961647372756874;
                      if (v28 == 3)
                      {
                        v40 = 0xE800000000000000;
                      }

                      else
                      {
                        v39 = 0x796164697266;
                        v40 = 0xE600000000000000;
                      }

                      if (v28 <= 4)
                      {
                        v41 = v39;
                      }

                      else
                      {
                        v41 = v37;
                      }

                      if (v28 <= 4)
                      {
                        v42 = v40;
                      }

                      else
                      {
                        v42 = v38;
                      }

                      if (v33 != v41)
                      {
                        goto LABEL_82;
                      }

                      goto LABEL_131;
                    }
                  }

                  else if (*v30 > 4u)
                  {
                    if (v32 == 5)
                    {
                      v34 = 0xE800000000000000;
                      v33 = 0x7961647275746173;
                      if (v28 > 2)
                      {
                        goto LABEL_106;
                      }
                    }

                    else
                    {
                      v33 = 0x7961646E7573;
                      v34 = 0xE600000000000000;
                      if (v28 > 2)
                      {
                        goto LABEL_106;
                      }
                    }
                  }

                  else
                  {
                    if (v32 == 3)
                    {
                      v33 = 0x7961647372756874;
                    }

                    else
                    {
                      v33 = 0x796164697266;
                    }

                    if (v32 == 3)
                    {
                      v34 = 0xE800000000000000;
                    }

                    else
                    {
                      v34 = 0xE600000000000000;
                    }

                    if (v28 > 2)
                    {
                      goto LABEL_106;
                    }
                  }

                  if (v28)
                  {
                    if (v28 == 1)
                    {
                      v43 = 0x79616473657574;
                    }

                    else
                    {
                      v43 = 0x616473656E646577;
                    }

                    if (v28 == 1)
                    {
                      v42 = 0xE700000000000000;
                    }

                    else
                    {
                      v42 = 0xE900000000000079;
                    }

                    if (v33 != v43)
                    {
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    v42 = 0xE600000000000000;
                    if (v33 != 0x7961646E6F6DLL)
                    {
                      goto LABEL_82;
                    }
                  }

LABEL_131:
                  if (v34 == v42)
                  {

                    break;
                  }

LABEL_82:
                  v31 = sub_1B4D18DCC();

                  ++v30;
                  --v29;
                }

                while ((v31 & 1) == 0);
              }
            }

            if (v163)
            {
              v25 = v151;
              v23 = v153;
              if (v164[0])
              {
                goto LABEL_147;
              }
            }

            else
            {
              v44 = v145[2];
              v23 = v153;
              if (v44)
              {
                v45 = v124;
                v25 = v151;
                do
                {
                  if (!v44)
                  {
                    goto LABEL_69;
                  }

                  v46 = *v45++;
                  --v44;
                }

                while (v46 != *(&v162 + 1));
                if (v164[0])
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v25 = v151;
                if (v164[0])
                {
                  goto LABEL_147;
                }
              }
            }

            v47 = v144[2];
            if (v47)
            {
              v48 = v123;
              while (v47)
              {
                v49 = *v48++;
                --v47;
                if (v49 == *(&v163 + 1))
                {
                  goto LABEL_147;
                }
              }

LABEL_69:
              sub_1B498AD54(&v162);
              goto LABEL_70;
            }

LABEL_147:
            v50 = v164[1];
            if (v164[1] != 5)
            {
              v51 = *(v143 + 2);
              if (v51)
              {
                v52 = v122;
                do
                {
                  if (!v51)
                  {
                    goto LABEL_68;
                  }

                  v54 = *v52;
                  if (v54 <= 1)
                  {
                    if (*v52)
                    {
                      v55 = 0x726F6F646E69;
                    }

                    else
                    {
                      v55 = 0x6E776F6E6B6E75;
                    }

                    if (*v52)
                    {
                      v56 = 0xE600000000000000;
                    }

                    else
                    {
                      v56 = 0xE700000000000000;
                    }

                    if (v50 > 1)
                    {
LABEL_169:
                      v57 = 0x676E696D6D697773;
                      if (v50 == 3)
                      {
                        v57 = 0x657461576E65706FLL;
                      }

                      v58 = 0xEC0000006C6F6F50;
                      if (v50 == 3)
                      {
                        v58 = 0xE900000000000072;
                      }

                      if (v50 == 2)
                      {
                        v59 = 0x726F6F6474756FLL;
                      }

                      else
                      {
                        v59 = v57;
                      }

                      if (v50 == 2)
                      {
                        v60 = 0xE700000000000000;
                      }

                      else
                      {
                        v60 = v58;
                      }

                      if (v55 != v59)
                      {
                        goto LABEL_150;
                      }

                      goto LABEL_186;
                    }
                  }

                  else if (v54 == 2)
                  {
                    v56 = 0xE700000000000000;
                    v55 = 0x726F6F6474756FLL;
                    if (v50 > 1)
                    {
                      goto LABEL_169;
                    }
                  }

                  else
                  {
                    if (v54 == 3)
                    {
                      v55 = 0x657461576E65706FLL;
                    }

                    else
                    {
                      v55 = 0x676E696D6D697773;
                    }

                    if (v54 == 3)
                    {
                      v56 = 0xE900000000000072;
                    }

                    else
                    {
                      v56 = 0xEC0000006C6F6F50;
                    }

                    if (v50 > 1)
                    {
                      goto LABEL_169;
                    }
                  }

                  if (v50)
                  {
                    v60 = 0xE600000000000000;
                    if (v55 != 0x726F6F646E69)
                    {
                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    v60 = 0xE700000000000000;
                    if (v55 != 0x6E776F6E6B6E75)
                    {
                      goto LABEL_150;
                    }
                  }

LABEL_186:
                  if (v56 == v60)
                  {

                    break;
                  }

LABEL_150:
                  v53 = sub_1B4D18DCC();

                  ++v52;
                  --v51;
                }

                while ((v53 & 1) == 0);
              }
            }

            v25 = v151;
            if (!*&v164[16] || !*(v147 + 16))
            {
              sub_1B498AD54(&v162);
              v23 = v153;
LABEL_193:
              v64 = *(&v169 + 1);
              v63 = v169;
              __swift_project_boxed_opaque_existential_1(v168 + 1, v169);
              sub_1B4B70700(v63, *(v64 + 8));
              v65 = 0xEE00736369747369;
              v66 = 0x7461745365636170;
              switch(v155)
              {
                case 1:
                  v66 = 0xD000000000000012;
                  v65 = v127;
                  break;
                case 2:
                  break;
                case 3:
                  v66 = 0xD000000000000017;
                  v65 = v128;
                  break;
                case 4:
                  v66 = 0xD00000000000001ALL;
                  v65 = v129;
                  break;
                case 5:
                  v66 = 0xD000000000000013;
                  v65 = v130;
                  break;
                case 6:
                  v66 = 0xD000000000000012;
                  v65 = v131;
                  break;
                case 7:
                  v66 = 0xD000000000000012;
                  v65 = v132;
                  break;
                case 8:
                  v66 = 0xD00000000000001CLL;
                  v65 = v133;
                  break;
                case 9:
                  v66 = 0xD000000000000015;
                  v65 = v134;
                  break;
                case 10:
                  v66 = 0xD000000000000017;
                  v65 = v135;
                  break;
                case 11:
                  v66 = 0xD000000000000013;
                  v65 = v136;
                  break;
                case 12:
                  v66 = 0xD00000000000001CLL;
                  v65 = v137;
                  break;
                case 13:
                  v66 = 0xD000000000000018;
                  v65 = v138;
                  break;
                case 14:
                  v66 = 0xD000000000000017;
                  v65 = v139;
                  break;
                case 15:
                  v66 = 0xD000000000000017;
                  v65 = v140;
                  break;
                case 16:
                  v66 = 0xD000000000000017;
                  v65 = v141;
                  break;
                case 17:
                  v66 = 0xD000000000000016;
                  v65 = v142;
                  break;
                case 18:
                  v66 = 0x756F436C61746F74;
                  v65 = 0xEA0000000000746ELL;
                  break;
                default:
                  v66 = 0xD000000000000011;
                  v65 = v126;
                  break;
              }

              v67 = 0x7461745365636170;
              v68 = 0xEE00736369747369;
              switch(v171)
              {
                case 1:
                  v68 = v127;
                  if (v66 == 0xD000000000000012)
                  {
                    goto LABEL_247;
                  }

                  goto LABEL_250;
                case 2:
                  goto LABEL_246;
                case 3:
                  v68 = v128;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 4:
                  v68 = v129;
                  if (v66 != 0xD00000000000001ALL)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 5:
                  v68 = v130;
                  if (v66 != 0xD000000000000013)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 6:
                  v68 = v131;
                  if (v66 != 0xD000000000000012)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 7:
                  v68 = v132;
                  if (v66 != 0xD000000000000012)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 8:
                  v68 = v133;
                  if (v66 != 0xD00000000000001CLL)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 9:
                  v68 = v134;
                  if (v66 != 0xD000000000000015)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 10:
                  v67 = 0xD000000000000017;
                  v68 = v135;
LABEL_246:
                  if (v66 == v67)
                  {
                    goto LABEL_247;
                  }

                  goto LABEL_250;
                case 11:
                  v68 = v136;
                  if (v66 != 0xD000000000000013)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 12:
                  v68 = v137;
                  if (v66 != 0xD00000000000001CLL)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 13:
                  v68 = v138;
                  if (v66 != 0xD000000000000018)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 14:
                  v68 = v139;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 15:
                  v68 = v140;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 16:
                  v68 = v141;
                  if (v66 != 0xD000000000000017)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 17:
                  v68 = v142;
                  if (v66 != 0xD000000000000016)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                case 18:
                  v68 = 0xEA0000000000746ELL;
                  if (v66 != 0x756F436C61746F74)
                  {
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                default:
                  v68 = v126;
                  if (v66 != 0xD000000000000011)
                  {
                    goto LABEL_250;
                  }

LABEL_247:
                  if (v65 == v68)
                  {
                  }

                  else
                  {
LABEL_250:
                    v69 = sub_1B4D18DCC();

                    if ((v69 & 1) == 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  v159 = v168[0];
                  v160 = v168[1];
                  v161 = v169;
                  v155 = v165;
                  v156 = *v166;
                  v157 = *&v166[16];
                  v158 = v167;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v170[0] = v24;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1B4BCECFC(0, *(v24 + 16) + 1, 1);
                    v24 = v170[0];
                  }

                  v72 = *(v24 + 16);
                  v71 = *(v24 + 24);
                  if (v72 >= v71 >> 1)
                  {
                    sub_1B4BCECFC((v71 > 1), v72 + 1, 1);
                    v24 = v170[0];
                  }

                  *(v24 + 16) = v72 + 1;
                  v73 = (v24 + 112 * v72);
                  v74 = v155;
                  v75 = v157;
                  v73[3] = v156;
                  v73[4] = v75;
                  v73[2] = v74;
                  v76 = v158;
                  v77 = v159;
                  v78 = v161;
                  v73[7] = v160;
                  v73[8] = v78;
                  v73[5] = v76;
                  v73[6] = v77;
                  break;
              }

              goto LABEL_71;
            }

            v155 = *&v164[8];
            MEMORY[0x1EEE9AC00](v27);
            v118[2] = &v155;
            v61 = v148;
            v62 = sub_1B49B1748(sub_1B4AE535C, v118, v147);
            v148 = v61;
            sub_1B498AD54(&v162);
            v23 = v153;
            if (v62)
            {
              goto LABEL_193;
            }

LABEL_70:
            sub_1B498AE58(&v165);
LABEL_71:
            ++v4;
          }

          while (v4 != v154);
        }

        *&v165 = v24;

        v79 = v148;
        sub_1B4AE42D0(&v165);
        v4 = v79;
        if (v79)
        {
          goto LABEL_271;
        }

        v80 = v165;
        v81 = *(v165 + 16);
        if (v81)
        {
          v151 = 0;
          v170[0] = MEMORY[0x1E69E7CC0];
          sub_1B4BCF0BC(0, v81, 0);
          v82 = v170[0];
          v148 = v80;
          v83 = v80 + 32;
          do
          {
            v171 = v81;
            v154 = v83;
            sub_1B498ADFC(v83, &v165);
            v84 = v82;
            v85 = v169;
            v86 = __swift_project_boxed_opaque_existential_1(v168 + 1, v169);
            *(&v163 + 1) = v85;
            *v164 = *(*(&v85 + 1) + 8);
            v87 = *v164;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
            (*(*(v85 - 8) + 16))(boxed_opaque_existential_1, v86, v85);
            v89 = *(&v163 + 1);
            v90 = *v164;
            v91 = __swift_project_boxed_opaque_existential_1(&v162, *(&v163 + 1));
            v92 = *(v87 + 64);
            v152 = v91;
            v153 = v92;
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            *(&v156 + 1) = AssociatedTypeWitness;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            *&v157 = AssociatedConformanceWitness;
            v95 = __swift_allocate_boxed_opaque_existential_1(&v155);
            (v153)(v89, v90);
            sub_1B498AE58(&v165);
            v96 = __swift_destroy_boxed_opaque_existential_1Tm(&v162);
            v170[0] = v84;
            v98 = *(v84 + 16);
            v97 = *(v84 + 24);
            if (v98 >= v97 >> 1)
            {
              v96 = sub_1B4BCF0BC((v97 > 1), v98 + 1, 1);
            }

            v99 = *(*(AssociatedTypeWitness - 8) + 64);
            v100 = MEMORY[0x1EEE9AC00](v96);
            v102 = &v119 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v103 + 16))(v102, v95, AssociatedTypeWitness, v100);
            sub_1B4CB7620(v98, v102, v170, AssociatedTypeWitness, AssociatedConformanceWitness);
            __swift_destroy_boxed_opaque_existential_1Tm(&v155);
            v82 = v170[0];
            v83 = v154 + 112;
            v81 = v171 - 1;
          }

          while (v171 != 1);

          v4 = v151;
        }

        else
        {
        }

        v104 = v121;
        v105 = sub_1B4D1880C();
        v106 = *(v105 - 8);
        v107 = *(v106 + 64);
        MEMORY[0x1EEE9AC00](v105);
        v109 = &v119 - v108;
        static SnapshotProperty.reduce(_:)(v104, v150, &v119 - v108);

        if (!v4)
        {
          v110 = *(v104 - 8);
          if ((*(v110 + 48))(v109, 1, v104) == 1)
          {
            result = (*(v106 + 8))(v109, v105);
            v111 = v120;
            *(v120 + 32) = 0;
            *v111 = 0u;
            v111[1] = 0u;
          }

          else
          {
            *&v166[8] = v149;
            v112 = __swift_allocate_boxed_opaque_existential_1(&v165);
            (*(v110 + 32))(v112, v109, v104);
            v113 = *&v166[8];
            v114 = *&v166[16];
            v115 = __swift_project_boxed_opaque_existential_1(&v165, *&v166[8]);
            v116 = v120;
            *(v120 + 24) = v113;
            v116[4] = *(v114 + 8);
            v117 = __swift_allocate_boxed_opaque_existential_1(v116);
            (*(*(v113 - 8) + 16))(v117, v115, v113);
            return __swift_destroy_boxed_opaque_existential_1Tm(&v165);
          }
        }

        return result;
    }
  }
}

uint64_t static WorkoutProperties.from(_:cacheIndex:filters:groupBy:propertyKinds:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a2;
  v12 = a3[1];
  v55[0] = *a3;
  v55[1] = v12;
  v55[2] = a3[2];
  sub_1B497558C(a1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BC0, &qword_1B4D33730);
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v37, v54);
    v13 = sub_1B4AE537C(a5);
    MEMORY[0x1EEE9AC00](v13);
    v34[2] = v54;
    v34[3] = v55;
    v34[4] = a4;
    v34[5] = v11;
    v14 = sub_1B4AE13D0(sub_1B4AE54CC, v34, v13);

    if (!v6)
    {
      v35 = a6;
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      (*(v16 + 8))(&v56, v15, v16);
      v36 = v56;
      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 8))(&v53, v17, v18);
      v19 = v53;
      v20 = *(v14 + 2);
      if (v20)
      {
        v34[7] = 0;
        v52 = MEMORY[0x1E69E7CC0];
        sub_1B4BCECFC(0, v20, 0);
        v34[6] = v14;
        v21 = (v14 + 32);
        v22 = v52;
        for (i = v20 - 1; ; --i)
        {
          sub_1B498ADFC(v21, &v37);
          v48 = v38;
          v49 = v39;
          v50 = v40;
          v51 = v41;
          sub_1B496F398(&v42, v47 + 8);
          *&v43 = v36;
          *(&v43 + 1) = v19;
          v44 = v48;
          v45 = v49;
          v46 = v50;
          *&v47[0] = v51;
          v52 = v22;
          v25 = *(v22 + 16);
          v24 = *(v22 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1B4BCECFC((v24 > 1), v25 + 1, 1);
            v22 = v52;
          }

          *(v22 + 16) = v25 + 1;
          v26 = (v22 + 112 * v25);
          v27 = v43;
          v28 = v45;
          v26[3] = v44;
          v26[4] = v28;
          v26[2] = v27;
          v29 = v46;
          v30 = v47[0];
          v31 = v47[2];
          v26[7] = v47[1];
          v26[8] = v31;
          v26[5] = v29;
          v26[6] = v30;
          if (!i)
          {
            break;
          }

          v21 += 112;
        }
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v33 = v35;
      *v35 = v36;
      v33[1] = v19;
      v33[2] = v22;
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {
    *&v39 = 0;
    v37 = 0u;
    v38 = 0u;
    result = sub_1B4975024(&v37, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    *a6 = v11;
    a6[1] = v11;
    a6[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

double sub_1B4AE3858@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v9 = *a3;
  v49 = a3[1];
  v50 = v9;
  v48 = a3[2];
  v10 = *a1;
  v11 = a1[1];
  v12 = *(v11 + 8);
  (*(v12 + 56))(&v60, *a1, v12);
  LOBYTE(v52) = v60;
  static WorkoutPropertyDimensions.dimensions(from:for:)(a2, &v65);
  if (v71 == 1)
  {
    goto LABEL_6;
  }

  v42 = a2;
  v40 = v11;
  v13 = v65;
  v14 = v69;
  v15 = v70;
  v44 = v66;
  v45 = v67;
  v72 = v67 & 1;
  v64 = v69 & 1;
  LOWORD(v60) = v65;
  v38 = v65 >> 8;
  *(&v60 + 1) = v66;
  v73 = v67 & 1;
  LOBYTE(v61) = v67 & 1;
  v43 = v68;
  *(&v61 + 1) = v68;
  v37 = v69 & 1;
  LOWORD(v62) = v69 & 0xFF01;
  v39 = v69 >> 8;
  *(&v62 + 1) = v70;
  v63 = v71;
  v52 = v50;
  v53 = v49;
  v54 = v48;
  v16 = a3;
  v17 = v71;
  sub_1B4AE5DF8(v16, v59);
  v18 = WorkoutPropertyDimensions.matches(_:)(&v52);
  sub_1B4AE5E54(v52);
  if (!v18)
  {
    sub_1B4AE5ED4(v13, v44, v45, v43, v14, v15, v17);
LABEL_6:
    result = 0.0;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    return result;
  }

  *&v48 = v13;
  *&v49 = v17;
  v41 = v14;
  *&v50 = v15;
  v19 = sub_1B4D1880C();
  v36 = &v36;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v36 - v22;
  v24 = v51;
  static SnapshotProperty.from(representable:)(v42, v10, v12, &v36 - v22);
  if (v24)
  {
    sub_1B4AE5ED4(v48, v44, v45, v43, v41, v50, v49);
    return result;
  }

  v42 = v20;
  v51 = v19;
  v26 = *(v10 - 8);
  v27 = (*(v26 + 48))(v23, 1, v10);
  v28 = v50;
  v29 = v43;
  if (v27 == 1)
  {
    sub_1B4AE5ED4(v48, v44, v45, v43, v41, v50, v49);
    (v42[1])(v23, v51);
    goto LABEL_6;
  }

  v57 = v10;
  v58 = v40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
  (*(v26 + 32))(boxed_opaque_existential_1, v23, v10);
  sub_1B496F398(&v56, v59);
  v31 = v48;
  LOBYTE(v52) = v48;
  BYTE1(v52) = v38;
  v32 = v44;
  *(&v52 + 1) = v44;
  LOBYTE(v53) = v73;
  *(&v53 + 1) = v29;
  LOBYTE(v54) = v37;
  BYTE1(v54) = v39;
  v33 = v49;
  *(&v54 + 1) = v28;
  v55 = v49;
  WorkoutPropertyDimensions.mask(with:)(v46, &v60);
  sub_1B4AE5ED4(v31, v32, v45, v29, v41, v28, v33);
  sub_1B496F398(v59, a6 + 72);
  v34 = v47;
  *a6 = v47;
  *(a6 + 8) = v34;
  v35 = v61;
  *(a6 + 16) = v60;
  *(a6 + 32) = v35;
  result = *&v62;
  *(a6 + 48) = v62;
  *(a6 + 64) = v63;
  return result;
}

uint64_t sub_1B4AE3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v7, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if (swift_getDynamicType() == v6)
      {
        sub_1B496F398(&v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF35C(0, *(v8 + 16) + 1, 1);
          v8 = v18;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4BCF35C((v10 > 1), v11 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v11 + 1;
        a1 = sub_1B496F398(v15, v8 + 40 * v11 + 32);
      }

      else
      {
        a1 = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      }

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v16 = v8;
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BE8, &unk_1B4D2B5A0);
  v12 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4AE5D94();
  v13 = sub_1B4D182BC();

  return v13;
}

uint64_t sub_1B4AE3F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;
  return WorkoutProperties.init(startCacheIndex:endCacheIndex:records:)(&v7, &v6, a3, a4);
}

uint64_t sub_1B4AE3F50(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v11 = *v1;
  v12 = v8;
  v9 = sub_1B4AE5C30();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4AE6134(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    v4 = sub_1B4D17D6C();
    sub_1B4AE5D1C(v7);
  }

  return v4;
}

double sub_1B4AE408C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B226A8(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = v6;
  }

  return result;
}

uint64_t Array<A>.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B4AE3C7C(a3, a2, a3, a4);
}

{
  return sub_1B4B9E56C(a3, a2, a3, a4);
}

{
  return sub_1B4CB6490(a3, a2, a3, a4);
}

uint64_t sub_1B4AE40D8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 64))(v6, v7, v10);
  v11 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a3, v13 ^ 1u, 1, v12);
}

uint64_t sub_1B4AE42D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE228(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4AE433C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4AE433C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B4D18D4C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B4AE45A8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B4AE4434(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4AE4434(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 112 * a3;
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_1B498ADFC(v9, &v20);
      v10 = v9 - 7;
      sub_1B498ADFC((v9 - 7), v19);
      v11 = v20;
      v12 = v19[0];
      sub_1B498AE58(v19);
      result = sub_1B498AE58(&v20);
      if (v11 >= v12)
      {
LABEL_4:
        ++v4;
        v6 += 112;
        --v7;
        if (v4 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v23 = v9[3];
      v24 = v9[4];
      v25 = v9[5];
      v26 = v9[6];
      v20 = *v9;
      v21 = v9[1];
      v22 = v9[2];
      v13 = *(v9 - 6);
      *v9 = *v10;
      v9[1] = v13;
      v14 = *(v9 - 5);
      v15 = *(v9 - 4);
      v16 = *(v9 - 1);
      v9[5] = *(v9 - 2);
      v9[6] = v16;
      v17 = *(v9 - 3);
      v9[3] = v15;
      v9[4] = v17;
      v9[2] = v14;
      *(v9 - 2) = v25;
      *(v9 - 3) = v24;
      *(v9 - 4) = v23;
      *(v9 - 1) = v26;
      *v10 = v20;
      *(v9 - 6) = v21;
      *(v9 - 5) = v22;
      v9 -= 7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4AE45A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v90 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1B4CDDE84(v9);
      v9 = result;
    }

    v104 = v9;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = *&v9[16 * v83];
        v85 = *&v9[16 * v83 + 24];
        sub_1B4AE4D04((*a3 + 112 * v84), (*a3 + 112 * *&v9[16 * v83 + 16]), (*a3 + 112 * v85), v5);
        if (v6)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v9[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        v104 = v9;
        result = sub_1B4CDDDF8(v83 - 1);
        v9 = v104;
        v83 = *(v104 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v11 = *a3;
      sub_1B498ADFC(*a3 + 112 * (v8 + 1), &v97);
      v12 = 112 * v8;
      sub_1B498ADFC(v11 + 112 * v8, v96);
      v91 = v96[0];
      v93 = v97;
      sub_1B498AE58(v96);
      result = sub_1B498AE58(&v97);
      v13 = v8 + 2;
      v14 = v11 + 112 * v8 + 224;
      while (v7 != v13)
      {
        sub_1B498ADFC(v14, &v97);
        sub_1B498ADFC(v14 - 112, v96);
        v5 = v7;
        v15 = v6;
        v16 = v97;
        v17 = v96[0];
        sub_1B498AE58(v96);
        result = sub_1B498AE58(&v97);
        v18 = v16 < v17;
        v6 = v15;
        v7 = v5;
        v19 = !v18;
        ++v13;
        v14 += 112;
        if ((((v93 < v91) ^ v19) & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      v10 = v8;
      if (v93 < v91)
      {
        if (v7 < v8)
        {
          goto LABEL_121;
        }

        if (v8 < v7)
        {
          v20 = 112 * v7 - 112;
          v5 = v7;
          do
          {
            if (v10 != --v5)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v21 = (v22 + v20);
              v100 = *(v22 + v12 + 48);
              v101 = *(v22 + v12 + 64);
              v102 = *(v22 + v12 + 80);
              v103 = *(v22 + v12 + 96);
              v97 = *(v22 + v12);
              v98 = *(v22 + v12 + 16);
              v99 = *(v22 + v12 + 32);
              result = memmove((v22 + v12), (v22 + v20), 0x70uLL);
              v21[3] = v100;
              v21[4] = v101;
              v21[5] = v102;
              v21[6] = v103;
              *v21 = v97;
              v21[1] = v98;
              v21[2] = v99;
            }

            ++v10;
            v20 -= 112;
            v12 += 112;
          }

          while (v10 < v5);
          v10 = v8;
        }
      }
    }

    v23 = a3[1];
    if (v7 < v23)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_120;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_122;
        }

        if (&v10[a4] < v23)
        {
          v23 = &v10[a4];
        }

        if (v23 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v7 != v23)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_119;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v25 = *(v9 + 2);
    v24 = *(v9 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_1B4A1D58C((v24 > 1), v25 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v26;
    v27 = &v9[16 * v25];
    *(v27 + 4) = v10;
    *(v27 + 5) = v8;
    v28 = *v90;
    if (!*v90)
    {
      goto LABEL_129;
    }

    if (v25)
    {
      while (1)
      {
        v29 = v26 - 1;
        if (v26 >= 4)
        {
          break;
        }

        if (v26 == 3)
        {
          v30 = *(v9 + 4);
          v31 = *(v9 + 5);
          v40 = __OFSUB__(v31, v30);
          v32 = v31 - v30;
          v33 = v40;
LABEL_50:
          if (v33)
          {
            goto LABEL_108;
          }

          v46 = &v9[16 * v26];
          v48 = *v46;
          v47 = *(v46 + 1);
          v49 = __OFSUB__(v47, v48);
          v50 = v47 - v48;
          v51 = v49;
          if (v49)
          {
            goto LABEL_111;
          }

          v52 = &v9[16 * v29 + 32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v40 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v40)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v50, v55))
          {
            goto LABEL_115;
          }

          if (v50 + v55 >= v32)
          {
            if (v32 < v55)
            {
              v29 = v26 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v56 = &v9[16 * v26];
        v58 = *v56;
        v57 = *(v56 + 1);
        v40 = __OFSUB__(v57, v58);
        v50 = v57 - v58;
        v51 = v40;
LABEL_64:
        if (v51)
        {
          goto LABEL_110;
        }

        v59 = &v9[16 * v29];
        v61 = *(v59 + 4);
        v60 = *(v59 + 5);
        v40 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v40)
        {
          goto LABEL_113;
        }

        if (v62 < v50)
        {
          goto LABEL_3;
        }

LABEL_71:
        v67 = v29 - 1;
        if (v29 - 1 >= v26)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v5 = *&v9[16 * v67 + 32];
        v68 = *&v9[16 * v29 + 40];
        sub_1B4AE4D04((*a3 + 112 * v5), (*a3 + 112 * *&v9[16 * v29 + 32]), (*a3 + 112 * v68), v28);
        if (v6)
        {
        }

        if (v68 < v5)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v67 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v69 = &v9[16 * v67];
        *(v69 + 4) = v5;
        *(v69 + 5) = v68;
        v104 = v9;
        result = sub_1B4CDDDF8(v29);
        v9 = v104;
        v26 = *(v104 + 2);
        if (v26 <= 1)
        {
          goto LABEL_3;
        }
      }

      v34 = &v9[16 * v26 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_106;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_107;
      }

      v41 = &v9[16 * v26];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_109;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_112;
      }

      if (v45 >= v37)
      {
        v63 = &v9[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_116;
        }

        if (v32 < v66)
        {
          v29 = v26 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v92 = v23;
  v87 = v6;
  v5 = *a3;
  v70 = *a3 + 112 * v7;
  v89 = v10;
  v71 = &v10[-v7];
LABEL_83:
  v94 = v7;
  v72 = v71;
  v73 = v70;
  while (1)
  {
    sub_1B498ADFC(v73, &v97);
    v74 = v73 - 7;
    sub_1B498ADFC((v73 - 7), v96);
    v75 = v97;
    v76 = v96[0];
    sub_1B498AE58(v96);
    result = sub_1B498AE58(&v97);
    if (v75 >= v76)
    {
LABEL_82:
      v7 = v94 + 1;
      v70 += 112;
      --v71;
      if (v94 + 1 != v92)
      {
        goto LABEL_83;
      }

      v6 = v87;
      v8 = v92;
      v10 = v89;
      if (v92 < v89)
      {
        goto LABEL_119;
      }

      goto LABEL_31;
    }

    if (!v5)
    {
      break;
    }

    v100 = v73[3];
    v101 = v73[4];
    v102 = v73[5];
    v103 = v73[6];
    v97 = *v73;
    v98 = v73[1];
    v99 = v73[2];
    v77 = *(v73 - 6);
    *v73 = *v74;
    v73[1] = v77;
    v78 = *(v73 - 5);
    v79 = *(v73 - 4);
    v80 = *(v73 - 1);
    v73[5] = *(v73 - 2);
    v73[6] = v80;
    v81 = *(v73 - 3);
    v73[3] = v79;
    v73[4] = v81;
    v73[2] = v78;
    *(v73 - 2) = v102;
    *(v73 - 3) = v101;
    *(v73 - 4) = v100;
    *(v73 - 1) = v103;
    *v74 = v97;
    *(v73 - 6) = v98;
    *(v73 - 5) = v99;
    v73 -= 7;
    if (__CFADD__(v72++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1B4AE4D04(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 112;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 112;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[112 * v11] <= __dst)
    {
      memmove(__dst, a2, 112 * v11);
    }

    v12 = &v4[112 * v11];
    if (v10 < 112 || v6 <= v7)
    {
      v17 = v6;
      goto LABEL_35;
    }

    v30 = v4;
    while (1)
    {
      v18 = (v6 - 112);
      v19 = v12 - 112;
      v5 -= 112;
      while (1)
      {
        v12 = v19 + 112;
        v22 = v5 + 112;
        sub_1B498ADFC(v19, v29);
        v23 = v18;
        sub_1B498ADFC(v18, v28);
        v24 = v29[0];
        v25 = v28[0];
        sub_1B498AE58(v28);
        sub_1B498AE58(v29);
        if (v24 < v25)
        {
          break;
        }

        if (v22 != v12)
        {
          memmove(v5, v19, 0x70uLL);
        }

        v20 = v19 - 112;
        v5 -= 112;
        v21 = v19 > v30;
        v19 -= 112;
        v18 = v23;
        if (!v21)
        {
          v12 = v20 + 112;
          v17 = v6;
          v4 = v30;
          goto LABEL_35;
        }
      }

      v16 = v22 == v6;
      v17 = v23;
      if (!v16)
      {
        memmove(v5, v23, 0x70uLL);
      }

      v4 = v30;
      if (v12 > v30)
      {
        v6 = v17;
        if (v17 > v7)
        {
          continue;
        }
      }

      v12 = v19 + 112;
      goto LABEL_35;
    }
  }

  if (__dst != __src || &__src[112 * v9] <= __dst)
  {
    memmove(__dst, __src, 112 * v9);
  }

  v12 = &v4[112 * v9];
  if (v8 < 112 || v6 >= v5)
  {
    v17 = v7;
    goto LABEL_35;
  }

  do
  {
    sub_1B498ADFC(v6, v29);
    sub_1B498ADFC(v4, v28);
    v13 = v29[0];
    v14 = v28[0];
    sub_1B498AE58(v28);
    sub_1B498AE58(v29);
    if (v13 < v14)
    {
      v15 = v6;
      v16 = v7 == v6;
      v6 += 112;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v15, 0x70uLL);
      goto LABEL_13;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 112;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    v7 += 112;
  }

  while (v4 < v12 && v6 < v5);
  v17 = v7;
LABEL_35:
  v26 = (v12 - v4) / 112;
  if (v17 != v4 || v17 >= &v4[112 * v26])
  {
    memmove(v17, v4, 112 * v26);
  }

  return 1;
}

uint64_t _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BF8, &qword_1B4D471C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D25C30;
  v1 = sub_1B4AE5EE8();
  *(v0 + 32) = &type metadata for FastestPaceProperty;
  *(v0 + 40) = v1;
  v2 = sub_1B4AE5F3C();
  *(v0 + 48) = &type metadata for FastestByDistanceProperty;
  *(v0 + 56) = v2;
  v3 = sub_1B498ADA8();
  *(v0 + 64) = &type metadata for LongestDistanceProperty;
  *(v0 + 72) = v3;
  v4 = sub_1B4AE5F90();
  *(v0 + 80) = &type metadata for GreatestElevationProperty;
  *(v0 + 88) = v4;
  v5 = sub_1B4AE5FE4();
  *(v0 + 96) = &type metadata for MostCaloriesBurnedProperty;
  *(v0 + 104) = v5;
  v6 = sub_1B4AE6038();
  *(v0 + 112) = &type metadata for GreatestDurationProperty;
  *(v0 + 120) = v6;
  v7 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  v8 = sub_1B4AE6134(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty);
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  v9 = type metadata accessor for PaceStatisticsProperty(0);
  v10 = sub_1B4AE6134(&qword_1EDC392B0, type metadata accessor for PaceStatisticsProperty);
  *(v0 + 144) = v9;
  *(v0 + 152) = v10;
  v11 = type metadata accessor for ElevationGainStatisticsProperty(0);
  v12 = sub_1B4AE6134(&qword_1EDC38270, type metadata accessor for ElevationGainStatisticsProperty);
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  v13 = type metadata accessor for AverageHeartRateStatisticsProperty(0);
  v14 = sub_1B4AE6134(&qword_1EDC37E90, type metadata accessor for AverageHeartRateStatisticsProperty);
  *(v0 + 176) = v13;
  *(v0 + 184) = v14;
  v15 = type metadata accessor for DiveDepthStatisticsProperty(0);
  v16 = sub_1B4AE6134(&qword_1EDC38A68, type metadata accessor for DiveDepthStatisticsProperty);
  *(v0 + 192) = v15;
  *(v0 + 200) = v16;
  v17 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  v18 = sub_1B4AE6134(&qword_1EDC380B8, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  *(v0 + 208) = v17;
  *(v0 + 216) = v18;
  v19 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v20 = sub_1B4AE6134(&qword_1EDC37F58, type metadata accessor for WorkoutDurationStatisticsProperty);
  *(v0 + 224) = v19;
  *(v0 + 232) = v20;
  v21 = type metadata accessor for WeatherTemperatureStatisticsProperty(0);
  v22 = sub_1B4AE6134(&qword_1EDC37C98, type metadata accessor for WeatherTemperatureStatisticsProperty);
  *(v0 + 240) = v21;
  *(v0 + 248) = v22;
  v23 = sub_1B498AF48();
  *(v0 + 256) = &type metadata for WorkoutTotalCountProperty;
  *(v0 + 264) = v23;
  v24 = sub_1B4AE608C();
  *(v0 + 272) = &type metadata for WorkoutCountByWeatherConditionProperty;
  *(v0 + 280) = v24;
  v25 = sub_1B4AE60E0();
  *(v0 + 288) = &type metadata for WorkoutCountByRoundedDistanceProperty;
  *(v0 + 296) = v25;
  v26 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
  v27 = sub_1B4AE6134(&qword_1EDC37BE0, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  *(v0 + 304) = v26;
  *(v0 + 312) = v27;
  return v0;
}

uint64_t sub_1B4AE537C(uint64_t a1)
{
  if (a1)
  {
    v3 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 32;
      do
      {
        v11 = *(v3 + v6);
        (*(*(*(v3 + v6 + 8) + 8) + 56))(&v12);
        if (sub_1B4979398(v12, a1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B4BCF33C(0, *(v5 + 16) + 1, 1);
            v5 = v13;
          }

          v8 = *(v5 + 16);
          v7 = *(v5 + 24);
          if (v8 >= v7 >> 1)
          {
            sub_1B4BCF33C((v7 > 1), v8 + 1, 1);
            v5 = v13;
          }

          *(v5 + 16) = v8 + 1;
          *(v5 + 16 * v8 + 32) = v11;
        }

        v6 += 16;
        --v4;
      }

      while (v4);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v5;
  }

  else
  {

    return _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  }
}

uint64_t sub_1B4AE54EC(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v42 = *a1;
  v41 = *a2;
  v5 = a3[1];
  v52 = *a3;
  v53 = v5;
  v54 = a3[2];
  v55 = *(a3 + 6);
  *&v46 = a4;

  sub_1B4AE42D0(&v46);
  if (v4)
  {
LABEL_31:

    __break(1u);
    return result;
  }

  v56 = 0;
  v6 = v46;
  v7 = *(v46 + 16);
  if (v7)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF35C(0, v7, 0);
    v8 = v51;
    v9 = v6 + 32;
    do
    {
      sub_1B498ADFC(v9, &v46);
      sub_1B497558C(v50 + 8, v45);
      sub_1B498AE58(&v46);
      v51 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B4BCF35C((v10 > 1), v11 + 1, 1);
        v8 = v51;
      }

      *(v8 + 16) = v11 + 1;
      sub_1B496F398(v45, v8 + 40 * v11 + 32);
      v9 += 112;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v40 = *(v12 + 16);
  if (v40)
  {
    v15 = 0;
    v39 = v12;
    while (v15 < *(v13 + 16))
    {
      v44 = v14;
      v43 = *(v13 + 16 * v15 + 32);
      v17 = *(&v43 + 1);
      v16 = v43;
      sub_1B4AE3C7C(v43, v8, v43, *(&v43 + 1));
      v18 = *(v17 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      sub_1B4D18A7C();

      v19 = sub_1B4D1880C();
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x1EEE9AC00](v19);
      v23 = &v39 - v22;
      v4 = v56;
      static SnapshotProperty.reduce(_:)(v16, v18, &v39 - v22);
      v56 = v4;
      if (v4)
      {

        return v16;
      }

      v24 = *(v16 - 8);
      if ((*(v24 + 48))(v23, 1, v16) == 1)
      {
        (*(v20 + 8))(v23, v19);
        v14 = v44;
        v13 = v39;
      }

      else
      {
        *(&v45[1] + 8) = v43;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
        (*(v24 + 32))(boxed_opaque_existential_1, v23, v16);
        sub_1B496F398(v45, &v46);
        sub_1B496F398(&v46, v45);
        v14 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1B4A1DE34(0, v14[2] + 1, 1, v14);
        }

        v13 = v39;
        v27 = v14[2];
        v26 = v14[3];
        if (v27 >= v26 >> 1)
        {
          v14 = sub_1B4A1DE34((v26 > 1), v27 + 1, 1, v14);
        }

        v14[2] = v27 + 1;
        sub_1B496F398(v45, &v14[5 * v27 + 4]);
      }

      if (v40 == ++v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_21:

  v28 = v14[2];
  if (v28)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, v28, 0);
    v16 = v51;
    v29 = (v14 + 4);
    do
    {
      sub_1B497558C(v29, v50 + 8);
      *&v46 = v42;
      *(&v46 + 1) = v41;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      *&v50[0] = v55;
      sub_1B498B0D4(&v52, v45);
      v51 = v16;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B4BCECFC((v30 > 1), v31 + 1, 1);
        v16 = v51;
      }

      *(v16 + 16) = v31 + 1;
      v32 = (v16 + 112 * v31);
      v33 = v46;
      v34 = v48;
      v32[3] = v47;
      v32[4] = v34;
      v32[2] = v33;
      v35 = v49;
      v36 = v50[0];
      v37 = v50[2];
      v32[7] = v50[1];
      v32[8] = v37;
      v32[5] = v35;
      v32[6] = v36;
      v29 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

unint64_t sub_1B4AE5B58()
{
  result = qword_1EDC393F0;
  if (!qword_1EDC393F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC393F0);
  }

  return result;
}

unint64_t sub_1B4AE5BAC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4AE5BDC();
  result = sub_1B4AE5C30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4AE5BDC()
{
  result = qword_1EDC3CE20;
  if (!qword_1EDC3CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CE20);
  }

  return result;
}

unint64_t sub_1B4AE5C30()
{
  result = qword_1EDC3CE18;
  if (!qword_1EDC3CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CE18);
  }

  return result;
}

uint64_t sub_1B4AE5C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4AE5CCC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1B4AE5D1C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4AE5D94()
{
  result = qword_1EDC37900;
  if (!qword_1EDC37900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A9BE8, &unk_1B4D2B5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37900);
  }

  return result;
}

uint64_t sub_1B4AE5E54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4AE5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

unint64_t sub_1B4AE5EE8()
{
  result = qword_1EDC395B8;
  if (!qword_1EDC395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395B8);
  }

  return result;
}

unint64_t sub_1B4AE5F3C()
{
  result = qword_1EDC38E78;
  if (!qword_1EDC38E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38E78);
  }

  return result;
}

unint64_t sub_1B4AE5F90()
{
  result = qword_1EDC38DA8;
  if (!qword_1EDC38DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38DA8);
  }

  return result;
}

unint64_t sub_1B4AE5FE4()
{
  result = qword_1EDC38BD8;
  if (!qword_1EDC38BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38BD8);
  }

  return result;
}

unint64_t sub_1B4AE6038()
{
  result = qword_1EDC38F48;
  if (!qword_1EDC38F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F48);
  }

  return result;
}

unint64_t sub_1B4AE608C()
{
  result = qword_1EDC37A58;
  if (!qword_1EDC37A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A58);
  }

  return result;
}

unint64_t sub_1B4AE60E0()
{
  result = qword_1EDC37A98;
  if (!qword_1EDC37A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A98);
  }

  return result;
}

uint64_t sub_1B4AE6134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4AE617C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StepsDailyAverageComparisonFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4AE6264()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE62D8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE632C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t StepsDailyAverageComparisonFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for StepsDailyAverageComparisonFact();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1B2D0;
  sub_1B4AE6660(v0, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1B4AE66C4(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = 0x80000001B4D61330;
  *(v5 + 48) = sub_1B4AE6728;
  *(v5 + 56) = v7;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v19 = *v1;
  v8 = sub_1B4D18D5C();
  v10 = v9;
  *(v5 + 80) = 0xD000000000000015;
  *(v5 + 88) = 0x80000001B4D61350;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v5 + 96) = sub_1B4993DFC;
  *(v5 + 104) = v11;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v19 = v1[2];
  v12 = sub_1B4D18D5C();
  v14 = v13;
  *(v5 + 128) = 0xD000000000000013;
  *(v5 + 136) = 0x80000001B4D61370;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v5 + 144) = sub_1B4994004;
  *(v5 + 152) = v15;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  sub_1B4AE6660(v1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1B4AE66C4(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v6);
  *(v5 + 176) = 0xD000000000000013;
  *(v5 + 184) = 0x80000001B4D61390;
  *(v5 + 192) = sub_1B4AE68F8;
  *(v5 + 200) = v16;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  return v5;
}

uint64_t sub_1B4AE6660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepsDailyAverageComparisonFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AE66C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepsDailyAverageComparisonFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AE6728()
{
  v1 = type metadata accessor for StepsDailyAverageComparisonFact();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return sub_1B4D16340(v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for StepsDailyAverageComparisonFact();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v1 + 28);
  type metadata accessor for DateRangeDescriptor();
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v7 = sub_1B4D1777C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v8 = *(v1 + 32);
  if (swift_getEnumCaseMultiPayload() <= 0xF)
  {
    v9 = sub_1B4D1777C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4AE68F8()
{
  v1 = type metadata accessor for StepsDailyAverageComparisonFact();
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return sub_1B4D16340(v2);
}

unint64_t sub_1B4AE6964()
{
  result = qword_1EB8A9C08;
  if (!qword_1EB8A9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C08);
  }

  return result;
}

unint64_t sub_1B4AE69BC()
{
  result = qword_1EB8A9C10;
  if (!qword_1EB8A9C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A9C18, &qword_1B4D2B668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C10);
  }

  return result;
}

unint64_t sub_1B4AE6A24()
{
  result = qword_1EB8A9C20;
  if (!qword_1EB8A9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C20);
  }

  return result;
}

unint64_t sub_1B4AE6A7C()
{
  result = qword_1EB8A9C28;
  if (!qword_1EB8A9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C28);
  }

  return result;
}

unint64_t sub_1B4AE6AD0(uint64_t a1)
{
  result = sub_1B4AE6AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AE6AF8()
{
  result = qword_1EB8A9C30;
  if (!qword_1EB8A9C30)
  {
    type metadata accessor for StepsDailyAverageComparisonFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C30);
  }

  return result;
}

uint64_t ActivitySummaryContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v31 = &v28 - v16;
  v17 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  sub_1B4974FBC(a1 + v17, v13, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v18 = *(v4 + 48);
  v19 = v18(v13, 1, v3);
  sub_1B4975024(v13, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v19 == 1)
  {
    sub_1B4AE7700(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    v20 = 1;
    v21 = v31;
LABEL_11:
    v27 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v27 - 8) + 56))(v21, v20, 1, v27);
    return sub_1B4AE7518(v21, v30);
  }

  sub_1B4974FBC(a1 + v17, v10, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v18(v10, 1, v3) == 1)
  {
    v22 = v29;
    sub_1B4D17BBC();
    v23 = *(v3 + 20);
    if (qword_1EB8A64F8 != -1)
    {
      swift_once();
    }

    *(v22 + v23) = qword_1EB8AC7F8;
    v24 = v18(v10, 1, v3);

    v21 = v31;
    if (v24 != 1)
    {
      sub_1B4975024(v10, &qword_1EB8A9C38, &qword_1B4D2B6E0);
    }
  }

  else
  {
    v22 = v29;
    sub_1B4AE7634(v10, v29, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    v21 = v31;
  }

  v25 = v32;
  HKActivitySummaryRepresentable.init(_:)(v22, v21);
  result = sub_1B4AE7700(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  if (!v25)
  {
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t ActivitySummaryContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4AE76B8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4AE6FB0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for HKActivitySummaryRepresentable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a2, v10, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1B4975024(v10, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

  v17 = sub_1B4AE7634(v10, v15, type metadata accessor for HKActivitySummaryRepresentable);
  MEMORY[0x1EEE9AC00](v17);
  *(&v20 - 2) = v15;
  sub_1B4AE76B8(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4D17DAC();
  v18 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  v19 = v21;
  sub_1B4975024(v21 + v18, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4AE7634(v6, v19 + v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  (*(v20 + 56))(v19 + v18, 0, 1, v3);
  return sub_1B4AE7700(v15, type metadata accessor for HKActivitySummaryRepresentable);
}

uint64_t sub_1B4AE72D8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4AE76B8(&qword_1EB8A9C50, type metadata accessor for ActivitySummaryContext);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4AE76B8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    v1 = sub_1B4D17D6C();
    sub_1B4AE7700(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  return v1;
}

uint64_t sub_1B4AE7458()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4AE76B8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4AE7518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AE7634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AE76B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4AE7700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FitnessIntelligence::DarwinMessageCode_optional __swiftcall DarwinMessageCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DarwinMessageCode.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000026;
  if (v1 != 6)
  {
    v2 = 0xD00000000000002BLL;
  }

  v3 = 0xD000000000000019;
  if (v1 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000033;
  if (v1 != 2)
  {
    v4 = 0xD000000000000022;
  }

  v5 = 0xD000000000000027;
  if (!*v0)
  {
    v5 = 0xD000000000000030;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    result = v5;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

const char *sub_1B4AE78DC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "VoiceAssetSettingsChanged";
  v4 = 0xD000000000000026;
  if (v2 != 6)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "gistry.devicedidunpair";
  }

  v5 = "vailabilityChanged";
  v6 = 0xD000000000000019;
  if (v2 == 4)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v5 = "VoiceAssetCacheChanged";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "ailability.notification";
  v8 = 0xD000000000000033;
  if (v2 != 2)
  {
    v8 = 0xD000000000000022;
  }

  result = "com.apple.gms.availability.notification";
  if (v2 != 2)
  {
    v7 = "itialSyncCompletion";
  }

  v10 = 0xD000000000000027;
  if (*v1)
  {
    v11 = "rwinNotification";
  }

  else
  {
    v10 = 0xD000000000000030;
    v11 = "evious_date_range>.";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

unint64_t sub_1B4AE79C8()
{
  result = qword_1EDC39730[0];
  if (!qword_1EDC39730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC39730);
  }

  return result;
}

unint64_t sub_1B4AE7A3C()
{
  result = qword_1EDC378F8;
  if (!qword_1EDC378F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A9C60, &qword_1B4D2B7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC378F8);
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.workoutIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutMilestoneEntry() + 20);
  v4 = sub_1B4D177CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutMilestoneEntry()
{
  result = qword_1EB8A9CA8;
  if (!qword_1EB8A9CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutMilestoneEntry.localizedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutMilestoneEntry() + 24);

  return sub_1B4AE7BD8(v3, a1);
}

uint64_t sub_1B4AE7BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedDate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static WorkoutMilestoneEntry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutMilestoneEntry();
  v5 = *(v4 + 20);
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);

  return _s19FitnessIntelligence13LocalizedDateV2eeoiySbAC_ACtFZ_0((a1 + v6), (a2 + v6));
}

uint64_t WorkoutMilestoneEntry.hash(into:)()
{
  v1 = v0;
  MEMORY[0x1B8C7D2C0](*v0);
  v2 = type metadata accessor for WorkoutMilestoneEntry();
  v3 = *(v2 + 20);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
  sub_1B4D1808C();
  v4 = v1 + *(v2 + 24);
  return LocalizedDate.hash(into:)();
}

uint64_t WorkoutMilestoneEntry.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](*v0);
  v2 = type metadata accessor for WorkoutMilestoneEntry();
  v3 = *(v2 + 20);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
  sub_1B4D1808C();
  v4 = v1 + *(v2 + 24);
  LocalizedDate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE7E40(uint64_t a1)
{
  v3 = v1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](*v1);
  v4 = *(a1 + 20);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
  sub_1B4D1808C();
  v5 = v3 + *(a1 + 24);
  LocalizedDate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE7EFC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x1B8C7D2C0](*v2);
  v5 = *(a2 + 20);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
  sub_1B4D1808C();
  v6 = v4 + *(a2 + 24);
  return LocalizedDate.hash(into:)();
}

uint64_t sub_1B4AE7FA8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](*v2);
  v5 = *(a2 + 20);
  sub_1B4D177CC();
  sub_1B4AE8614(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
  sub_1B4D1808C();
  v6 = v4 + *(a2 + 24);
  LocalizedDate.hash(into:)();
  return sub_1B4D18EDC();
}

BOOL sub_1B4AE809C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_1B4D177AC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return static LocalizedDate.== infix(_:_:)((a1 + v7), (a2 + v7));
}

FitnessIntelligence::WorkoutMilestonePropertyValue __swiftcall WorkoutMilestonePropertyValue.init(currentCount:currentEntries:milestones:)(Swift::Int currentCount, Swift::OpaquePointer currentEntries, Swift::OpaquePointer milestones)
{
  v3->_rawValue = currentCount;
  v3[1]._rawValue = currentEntries._rawValue;
  v3[2]._rawValue = milestones._rawValue;
  result.milestones = milestones;
  result.currentEntries = currentEntries;
  result.currentCount = currentCount;
  return result;
}

BOOL static WorkoutMilestonePropertyValue.isMilestone(count:)(uint64_t a1)
{
  if (a1 > 249)
  {
    v5 = __ROR8__(0x1CAC083126E978D5 * a1, 1);
    v6 = 0x10624DD2F1A9FBFLL;
    return v5 < v6;
  }

  result = 1;
  if (a1 != 1 && a1 != 10)
  {
    v3 = __OFSUB__(a1, 25);
    v4 = a1 - 25;
    if (!v3)
    {
      v5 = 0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8;
      v6 = 0xA3D70A3D70A3D71;
      return v5 < v6;
    }

    __break(1u);
  }

  return result;
}

void static WorkoutMilestonePropertyValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[2];
    v3 = a1[2];
    if (sub_1B4A0A844(a1[1], a2[1]))
    {

      sub_1B4A23BDC(v3, v2);
    }
  }
}

uint64_t WorkoutMilestonePropertyValue.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  MEMORY[0x1B8C7D290](*v1);
  sub_1B49C2B0C(a1, v3);

  return sub_1B4A277A8(a1, v4);
}

uint64_t WorkoutMilestonePropertyValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  sub_1B49C2B0C(v5, v2);
  sub_1B4A277A8(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE8310@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL sub_1B4AE831C(uint64_t a1)
{
  if (a1 > 249)
  {
    v5 = __ROR8__(0x1CAC083126E978D5 * a1, 1);
    v6 = 0x10624DD2F1A9FBFLL;
    return v5 < v6;
  }

  result = 1;
  if (a1 != 1 && a1 != 10)
  {
    v3 = __OFSUB__(a1, 25);
    v4 = a1 - 25;
    if (!v3)
    {
      v5 = 0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8;
      v6 = 0xA3D70A3D70A3D71;
      return v5 < v6;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4AE83B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  sub_1B49C2B0C(v5, v2);
  sub_1B4A277A8(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE8420(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  MEMORY[0x1B8C7D290](*v1);
  sub_1B49C2B0C(a1, v3);

  return sub_1B4A277A8(a1, v4);
}

uint64_t sub_1B4AE847C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  sub_1B49C2B0C(v5, v2);
  sub_1B4A277A8(v5, v3);
  return sub_1B4D18EDC();
}

void sub_1B4AE84E4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[2];
    v3 = a1[2];
    if (sub_1B4A0A844(a1[1], a2[1]))
    {

      sub_1B4A23BDC(v3, v2);
    }
  }
}

uint64_t sub_1B4AE8548(uint64_t a1)
{
  *(a1 + 8) = sub_1B4AE8614(&qword_1EB8A9C68, type metadata accessor for WorkoutMilestoneEntry);
  result = sub_1B4AE8614(&qword_1EB8A9C70, type metadata accessor for WorkoutMilestoneEntry);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4AE8614(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4AE865C(uint64_t a1)
{
  result = sub_1B4AE8684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AE8684()
{
  result = qword_1EB8A9C88;
  if (!qword_1EB8A9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C88);
  }

  return result;
}

unint64_t sub_1B4AE86D8(uint64_t a1)
{
  *(a1 + 8) = sub_1B4AE8708();
  result = sub_1B4AE875C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4AE8708()
{
  result = qword_1EB8A9C90;
  if (!qword_1EB8A9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C90);
  }

  return result;
}

unint64_t sub_1B4AE875C()
{
  result = qword_1EB8A9C98;
  if (!qword_1EB8A9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9C98);
  }

  return result;
}

unint64_t sub_1B4AE87B4()
{
  result = qword_1EB8A9CA0;
  if (!qword_1EB8A9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CA0);
  }

  return result;
}

uint64_t sub_1B4AE8830()
{
  result = sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocalizedDate();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4AE88C4(uint64_t a1, int a2)
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

uint64_t sub_1B4AE890C(uint64_t result, int a2, int a3)
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

uint64_t WorkoutDictionaryPropertyValue.init(dictionary:missed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t WorkoutDictionaryPropertyValue.dictionary.getter()
{
  sub_1B4959850();
}

uint64_t static WorkoutDictionaryPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(*(a6 + 16) + 8);
  return sub_1B4D1803C() & (v7 == v9);
}

uint64_t WorkoutDictionaryPropertyValue.hash(into:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2[5] + 16);
  sub_1B4D1802C();
  return MEMORY[0x1B8C7D290](v4);
}

uint64_t WorkoutDictionaryPropertyValue.hashValue.getter(void *a1)
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_1B4D18E8C();
  WorkoutDictionaryPropertyValue.hash(into:)(v5, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE8A74()
{
  sub_1B4959850();
}

uint64_t sub_1B4AE8AAC(uint64_t a1, void *a2)
{
  sub_1B4D18E8C();
  WorkoutDictionaryPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AE8B10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4AE8B4C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4AE8B88(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4AE8C04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4AE8C88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = sub_1B4C95ED4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9CF8, &qword_1B4D2BD88);
  result = swift_arrayDestroy();
  *a4 = v5;
  return result;
}

uint64_t SignificantDistanceDuringWorkoutFact.init(activityType:distanceReference:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

unint64_t sub_1B4AE8D10()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1B4AE8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D613B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4AE8E30(uint64_t a1)
{
  v2 = sub_1B4AE9590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE8E6C(uint64_t a1)
{
  v2 = sub_1B4AE9590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantDistanceDuringWorkoutFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9CB8, &unk_1B4D2BB90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AE9590();
  v11 = v9;
  sub_1B4D18EFC();
  v18 = v11;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18D0C();

  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_1B4AE95E4();
    sub_1B4D18D0C();
  }

  return (*(v5 + 8))(v8, v4);
}

void SignificantDistanceDuringWorkoutFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9CD0, &qword_1B4D2BBA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AE9590();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v14[15] = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18C0C();
    v11 = v15;
    v14[13] = 1;
    sub_1B4AE9638();
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v12 = v14[14];
    *a2 = v11;
    *(a2 + 8) = v12;
    v13 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t _s19FitnessIntelligence36SignificantDistanceDuringWorkoutFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *a2;
  v15 = *(a2 + 8);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16 || (v17 = v16, objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B49DF540();
    if (sub_1B4D187AC())
    {
      goto LABEL_7;
    }

LABEL_9:
    v28 = 0;
    return v28 & 1;
  }

  v19 = v18;
  v31 = v12;
  v20 = v14;
  [v17 coordinate];
  v22 = v21;
  [v19 coordinate];
  if (v22 != v23)
  {

    goto LABEL_9;
  }

  [v17 coordinate];
  v25 = v24;
  [v19 coordinate];
  v27 = v26;

  if (v25 != v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v33 = v13;
  v32 = v15;
  DistanceReference.rawValue.getter();
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v28 = sub_1B4D1816C();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v29(v11, v4);
  return v28 & 1;
}

unint64_t sub_1B4AE9590()
{
  result = qword_1EB8A9CC0;
  if (!qword_1EB8A9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CC0);
  }

  return result;
}

unint64_t sub_1B4AE95E4()
{
  result = qword_1EB8A9CC8;
  if (!qword_1EB8A9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CC8);
  }

  return result;
}

unint64_t sub_1B4AE9638()
{
  result = qword_1EB8A9CD8;
  if (!qword_1EB8A9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CD8);
  }

  return result;
}

uint64_t sub_1B4AE968C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B4AE96D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4AE9738()
{
  result = qword_1EB8A9CE0;
  if (!qword_1EB8A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CE0);
  }

  return result;
}

unint64_t sub_1B4AE9790()
{
  result = qword_1EB8A9CE8;
  if (!qword_1EB8A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CE8);
  }

  return result;
}

unint64_t sub_1B4AE97E8()
{
  result = qword_1EB8A9CF0;
  if (!qword_1EB8A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9CF0);
  }

  return result;
}

uint64_t sub_1B4AE9840()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t sub_1B4AE9874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4AE9950(uint64_t a1)
{
  v2 = sub_1B4AEEEBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE998C(uint64_t a1)
{
  v2 = sub_1B4AEEEBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4AE99C8()
{
  if (*v0)
  {
    result = 0x6D6F747375437369;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1B4AE99F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4AE9ACC(uint64_t a1)
{
  v2 = sub_1B4AEEF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE9B08(uint64_t a1)
{
  v2 = sub_1B4AEEF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4AE9B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4AE9BD0(uint64_t a1)
{
  v2 = sub_1B4AEEF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AE9C0C(uint64_t a1)
{
  v2 = sub_1B4AEEF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutSplitFact.SplitFactType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D00, &unk_1B4D2BD90);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D08, &unk_1B4D2BDA0);
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D10, &qword_1B4D2BDB0);
  v45 = *(v48 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v22 = &v36 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AEEEBC();
  v24 = v22;
  sub_1B4D18EFC();
  sub_1B4AEF0D4(v44, v19, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v36;
    v26 = v37;
    v27 = v38;
    (*(v37 + 32))(v36, v19, v38);
    v53 = 1;
    sub_1B4AEEF10();
    v28 = v39;
    v29 = v48;
    sub_1B4D18C5C();
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    v30 = v43;
    sub_1B4D18D0C();
    (*(v42 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    return (*(v45 + 8))(v24, v29);
  }

  else
  {
    v32 = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48)];
    (*(v46 + 32))(v15, v19, v47);
    v52 = 0;
    sub_1B4AEEF64();
    v33 = v48;
    sub_1B4D18C5C();
    v51 = 0;
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    v34 = v41;
    v35 = v49;
    sub_1B4D18D0C();
    if (!v35)
    {
      v50 = 1;
      sub_1B4D18CCC();
    }

    (*(v40 + 8))(v11, v34);
    (*(v46 + 8))(v15, v47);
    return (*(v45 + 8))(v22, v33);
  }
}

uint64_t WorkoutSplitFact.SplitFactType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D38, &qword_1B4D2BDC0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v44 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D40, &qword_1B4D2BDC8);
  v50 = *(v47 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D48, &unk_1B4D2BDD0);
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B4AEEEBC();
  v24 = v54;
  sub_1B4D18EEC();
  if (!v24)
  {
    v44 = v15;
    v45 = v18;
    v25 = v51;
    v26 = v52;
    v54 = v12;
    v27 = sub_1B4D18C2C();
    v28 = (2 * *(v27 + 16)) | 1;
    v56 = v27;
    v57 = v27 + 32;
    v58 = 0;
    v59 = v28;
    v29 = sub_1B49C7F78();
    v30 = v11;
    if (v29 == 2 || v58 != v59 >> 1)
    {
      v34 = sub_1B4D189BC();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
      *v36 = v54;
      sub_1B4D18B5C();
      sub_1B4D189AC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v53 + 8))(v30, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v60 = 1;
        sub_1B4AEEF10();
        sub_1B4D18B4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
        v31 = v44;
        v32 = v49;
        sub_1B4D18C0C();
        (*(v48 + 8))(v26, v32);
        (*(v53 + 8))(v30, v8);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v31;
      }

      else
      {
        v60 = 0;
        sub_1B4AEEF64();
        sub_1B4D18B4C();
        v52 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        v60 = 0;
        sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
        v39 = v47;
        sub_1B4D18C0C();
        v40 = v53;
        v60 = 1;
        v41 = sub_1B4D18BCC();
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
        (*(v50 + 8))(v25, v39);
        (*(v40 + 8))(v30, v52);
        swift_unknownObjectRelease();
        v43 = v45;
        v45[v42] = v41 & 1;
        swift_storeEnumTagMultiPayload();
        v33 = v43;
      }

      sub_1B4AEEFB8(v33, v21);
      sub_1B4AEEFB8(v21, v46);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

uint64_t WorkoutSplitFact.init(activityType:splitNumber:type:progressDuration:totalWorkoutDuration:distance:totalDistance:pace:averagePower:elevationGained:totalEnergyBurned:splitAverageHeartRate:currentHeartRate:isFastestSplit:isSummarizing:isFasterThanPreviousSplit:isHigherHeartRateThanLastSplit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, char a17, char a18)
{
  *a9 = a1;
  a9[1] = a2;
  v25 = type metadata accessor for WorkoutSplitFact(0);
  sub_1B4AEEFB8(a3, a9 + v25[6]);
  sub_1B498B270(a4, a9 + v25[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(a5, a9 + v25[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(a6, a9 + v25[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a7, a9 + v25[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a8, a9 + v25[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B498B270(a10, a9 + v25[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B498B270(a11, a9 + v25[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a12, a9 + v25[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(a13, a9 + v25[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
  result = sub_1B498B270(a14, a9 + v25[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(a9 + v25[17]) = a15;
  *(a9 + v25[18]) = a16;
  *(a9 + v25[19]) = a17;
  *(a9 + v25[20]) = a18;
  return result;
}

unint64_t sub_1B4AEAF64(char a1)
{
  result = 0x6D754E74696C7073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x65636E6174736964;
      break;
    case 6:
      result = 0x7369446C61746F74;
      break;
    case 7:
      result = 1701011824;
      break;
    case 8:
      result = 0x5065676172657661;
      break;
    case 9:
      result = 0x6F69746176656C65;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      v3 = 5;
      goto LABEL_11;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x7365747361467369;
      break;
    case 14:
      result = 0x72616D6D75537369;
      break;
    case 15:
      v3 = 9;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1B4AEB184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4AEFA84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4AEB1AC(uint64_t a1)
{
  v2 = sub_1B4AEF03C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AEB1E8(uint64_t a1)
{
  v2 = sub_1B4AEF03C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutSplitFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D50, &unk_1B4D2BDE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AEF03C();
  sub_1B4D18EFC();
  v35 = *v3;
  v34 = 0;
  v11 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18D0C();
  if (v2)
  {
  }

  else
  {

    v12 = *(v3 + 8);
    LOBYTE(v35) = 1;
    sub_1B4D18CEC();
    v13 = type metadata accessor for WorkoutSplitFact(0);
    v14 = *(v13 + 24);
    LOBYTE(v35) = 2;
    type metadata accessor for WorkoutSplitFact.SplitFactType(0);
    sub_1B4AEF090(&qword_1EB8A9D60);
    sub_1B4D18D0C();
    v33 = v13;
    v15 = *(v13 + 28);
    LOBYTE(v35) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18CAC();
    v16 = v33;
    v17 = v33[8];
    LOBYTE(v35) = 4;
    sub_1B4D18CAC();
    v18 = v16[9];
    LOBYTE(v35) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18CAC();
    v19 = v33;
    v20 = v33[10];
    LOBYTE(v35) = 6;
    sub_1B4D18CAC();
    v21 = v19[11];
    LOBYTE(v35) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B4D18CAC();
    v22 = v33[12];
    LOBYTE(v35) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B4D18CAC();
    v23 = v33;
    v24 = v33[13];
    LOBYTE(v35) = 9;
    sub_1B4D18CAC();
    v25 = v23[14];
    LOBYTE(v35) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B4D18CAC();
    v26 = v33[15];
    LOBYTE(v35) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B49B0578(&qword_1EB8A9D68, &qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B4D18CAC();
    v27 = v33[16];
    LOBYTE(v35) = 12;
    sub_1B4D18CAC();
    v28 = *(v3 + v33[17]);
    LOBYTE(v35) = 13;
    sub_1B4D18C7C();
    v29 = *(v3 + v33[18]);
    LOBYTE(v35) = 14;
    sub_1B4D18CCC();
    v30 = *(v3 + v33[19]);
    LOBYTE(v35) = 15;
    sub_1B4D18C7C();
    v31 = *(v3 + v33[20]);
    LOBYTE(v35) = 16;
    sub_1B4D18C7C();
  }

  return (*(v6 + 8))(v9, v5);
}

void WorkoutSplitFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v68 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v30 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D70, &qword_1B4D2BDF0);
  v69 = *(v71 - 8);
  v34 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v36 = &v55 - v35;
  v37 = type metadata accessor for WorkoutSplitFact(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v42 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1B4AEF03C();
  v70 = v36;
  v43 = v72;
  sub_1B4D18EEC();
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  else
  {
    v56 = v29;
    v57 = v33;
    v58 = v37;
    v72 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v74 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18C0C();
    v44 = v72;
    *v72 = v75;
    LOBYTE(v75) = 1;
    v44[1] = sub_1B4D18BEC();
    LOBYTE(v75) = 2;
    sub_1B4AEF090(&qword_1EB8A9D78);
    v45 = v57;
    sub_1B4D18C0C();
    v46 = v58;
    sub_1B4AEEFB8(v45, v44 + v58[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    LOBYTE(v75) = 3;
    sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
    v47 = v56;
    sub_1B4D18BAC();
    sub_1B498B270(v47, v44 + v46[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    LOBYTE(v75) = 4;
    v48 = v68;
    sub_1B4D18BAC();
    sub_1B498B270(v48, v44 + v46[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    LOBYTE(v75) = 5;
    sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
    v49 = v67;
    sub_1B4D18BAC();
    sub_1B498B270(v49, v44 + v46[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    LOBYTE(v75) = 6;
    v50 = v66;
    sub_1B4D18BAC();
    sub_1B498B270(v50, v44 + v46[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    LOBYTE(v75) = 7;
    sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    v51 = v65;
    sub_1B4D18BAC();
    sub_1B498B270(v51, v72 + v58[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    LOBYTE(v75) = 8;
    sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00);
    v52 = v64;
    sub_1B4D18BAC();
    sub_1B498B270(v52, v72 + v58[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    LOBYTE(v75) = 9;
    sub_1B4D18BAC();
    sub_1B498B270(v63, v72 + v58[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    LOBYTE(v75) = 10;
    sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B4D18BAC();
    sub_1B498B270(v62, v72 + v58[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    LOBYTE(v75) = 11;
    sub_1B49B0578(&qword_1EB8A9D80, &qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B4D18BAC();
    sub_1B498B270(v61, v72 + v58[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
    LOBYTE(v75) = 12;
    sub_1B4D18BAC();
    sub_1B498B270(v60, v72 + v58[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
    LOBYTE(v75) = 13;
    *(v72 + v58[17]) = sub_1B4D18B7C();
    LOBYTE(v75) = 14;
    *(v72 + v58[18]) = sub_1B4D18BCC() & 1;
    LOBYTE(v75) = 15;
    *(v72 + v58[19]) = sub_1B4D18B7C();
    LOBYTE(v75) = 16;
    LOBYTE(v52) = sub_1B4D18B7C();
    (*(v69 + 8))(v70, v71);
    v53 = v59;
    v54 = v72;
    *(v72 + v58[20]) = v52;
    sub_1B4AEF0D4(v54, v53, type metadata accessor for WorkoutSplitFact);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    sub_1B4AEF13C(v54, type metadata accessor for WorkoutSplitFact);
  }
}

BOOL _s19FitnessIntelligence16WorkoutSplitFactV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v212 = *(v216 - 8);
  v4 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v206 = &v204 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v207 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v209 = &v204 - v10;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E10, &unk_1B4D46A80);
  v11 = *(*(v211 - 8) + 64);
  MEMORY[0x1EEE9AC00](v211);
  v210 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v215 = &v204 - v14;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v219 = *(v220 - 8);
  v15 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v208 = &v204 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v214 = &v204 - v19;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  v20 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v218 = &v204 - v21;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v229 = *(v227 - 8);
  v22 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v221 = &v204 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v223 = &v204 - v26;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  v27 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v204 - v28;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v234 = *(v232 - 8);
  v29 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v224 = &v204 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v228 = &v204 - v33;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  v34 = *(*(v230 - 8) + 64);
  MEMORY[0x1EEE9AC00](v230);
  v231 = &v204 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v37 = *(v36 - 8);
  v239 = v36;
  v240 = v37;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v235 = &v204 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v217 = &v204 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v233 = &v204 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v237 = &v204 - v46;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  v47 = *(*(v242 - 8) + 64);
  MEMORY[0x1EEE9AC00](v242);
  v222 = &v204 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v236 = &v204 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v238 = &v204 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v244 = *(v53 - 8);
  v54 = v244[8];
  MEMORY[0x1EEE9AC00](v53);
  v243 = &v204 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v241 = &v204 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v204 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v204 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v204 - v67;
  v245 = a1;
  v246 = a2;
  v69 = *a1;
  v70 = *a2;
  objc_opt_self();
  v71 = swift_dynamicCastObjCClass();
  if (v71 && (v72 = v71, objc_opt_self(), (v73 = swift_dynamicCastObjCClass()) != 0))
  {
    v74 = v73;
    v75 = v69;
    v76 = v70;
    [v72 coordinate];
    v78 = v77;
    [v74 coordinate];
    if (v78 != v79)
    {

      return 0;
    }

    [v72 coordinate];
    v81 = v80;
    [v74 coordinate];
    v83 = v82;

    if (v81 != v83)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  v84 = v245;
  v85 = v246;
  if (v245[1] != v246[1])
  {
    return 0;
  }

  v86 = type metadata accessor for WorkoutSplitFact(0);
  if ((_s19FitnessIntelligence16WorkoutSplitFactV0dE4TypeO2eeoiySbAE_AEtFZ_0(v84 + *(v86 + 24), v85 + *(v86 + 24)) & 1) == 0)
  {
    return 0;
  }

  v205 = v86;
  v87 = *(v86 + 28);
  v88 = *(v62 + 48);
  sub_1B4974FBC(v84 + v87, v68, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(v85 + v87, &v68[v88], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v89 = v244[6];
  if (v89(v68, 1, v53) == 1)
  {
    if (v89(&v68[v88], 1, v53) == 1)
    {
      sub_1B4975024(v68, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_17;
    }

LABEL_15:
    v90 = &qword_1EB8A6F60;
    v91 = &qword_1B4D2C420;
    v92 = v68;
LABEL_31:
    sub_1B4975024(v92, v90, v91);
    return 0;
  }

  sub_1B4974FBC(v68, v61, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v89(&v68[v88], 1, v53) == 1)
  {
    (v244[1])(v61, v53);
    goto LABEL_15;
  }

  v93 = v244;
  (v244[4])(v243, &v68[v88], v53);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  v94 = sub_1B4D1816C();
  v95 = v93[1];
  v95(v243, v53);
  v95(v61, v53);
  sub_1B4975024(v68, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v94 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v96 = v205;
  v97 = v205[8];
  v98 = *(v62 + 48);
  v99 = v245;
  sub_1B4974FBC(v245 + v97, v65, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(v246 + v97, &v65[v98], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v89(v65, 1, v53) == 1)
  {
    if (v89(&v65[v98], 1, v53) == 1)
    {
      sub_1B4975024(v65, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_25;
    }

LABEL_22:
    v90 = &qword_1EB8A6F60;
    v91 = &qword_1B4D2C420;
LABEL_23:
    v92 = v65;
    goto LABEL_31;
  }

  v100 = v241;
  sub_1B4974FBC(v65, v241, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v89(&v65[v98], 1, v53) == 1)
  {
    (v244[1])(v100, v53);
    goto LABEL_22;
  }

  v102 = v243;
  v101 = v244;
  (v244[4])(v243, &v65[v98], v53);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  v103 = v100;
  v104 = sub_1B4D1816C();
  v105 = v101[1];
  v105(v102, v53);
  v105(v103, v53);
  sub_1B4975024(v65, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v106 = v96[9];
  v107 = *(v242 + 48);
  v108 = v238;
  sub_1B4974FBC(v99 + v106, v238, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v246 + v106, v108 + v107, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v110 = v239;
  v109 = v240;
  v111 = *(v240 + 48);
  if ((v111)(v108, 1, v239) == 1)
  {
    if ((v111)(v108 + v107, 1, v110) == 1)
    {
      v244 = v111;
      v112 = v99;
      sub_1B4975024(v108, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_35;
    }

LABEL_30:
    v90 = &qword_1EB8A6F50;
    v91 = &qword_1B4D425A0;
    v92 = v108;
    goto LABEL_31;
  }

  v113 = v237;
  sub_1B4974FBC(v108, v237, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v111)(v108 + v107, 1, v110) == 1)
  {
    (*(v109 + 8))(v113, v110);
    goto LABEL_30;
  }

  v244 = v111;
  v112 = v99;
  v115 = v235;
  (*(v109 + 32))(v235, v108 + v107, v110);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v116 = sub_1B4D1816C();
  v117 = *(v109 + 8);
  v117(v115, v110);
  v117(v113, v110);
  sub_1B4975024(v108, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v118 = v205[10];
  v119 = *(v242 + 48);
  v120 = v112;
  v65 = v236;
  sub_1B4974FBC(v112 + v118, v236, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v246 + v118, &v65[v119], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v121 = v244;
  if ((v244)(v65, 1, v110) == 1)
  {
    if ((v121)(&v65[v119], 1, v110) == 1)
    {
      v244 = v121;
      sub_1B4975024(v65, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_42;
    }

LABEL_40:
    v90 = &qword_1EB8A6F50;
    v91 = &qword_1B4D425A0;
    goto LABEL_23;
  }

  v122 = v233;
  sub_1B4974FBC(v65, v233, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v121)(&v65[v119], 1, v110) == 1)
  {
    (*(v240 + 8))(v122, v110);
    goto LABEL_40;
  }

  v244 = v121;
  v123 = v240;
  v124 = &v65[v119];
  v125 = v65;
  v126 = v235;
  (*(v240 + 32))(v235, v124, v110);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v127 = sub_1B4D1816C();
  v128 = *(v123 + 8);
  v128(v126, v110);
  v128(v122, v110);
  sub_1B4975024(v125, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v127 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v129 = v205;
  v130 = v205[11];
  v65 = v231;
  v131 = *(v230 + 48);
  sub_1B4974FBC(v120 + v130, v231, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v246 + v130, &v65[v131], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v132 = *(v234 + 48);
  v133 = v232;
  if (v132(v65, 1, v232) == 1)
  {
    if (v132(&v65[v131], 1, v133) == 1)
    {
      sub_1B4975024(v65, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_49;
    }

LABEL_47:
    v90 = &qword_1EB8A9E18;
    v91 = &unk_1B4D2C410;
    goto LABEL_23;
  }

  v134 = v228;
  sub_1B4974FBC(v65, v228, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v132(&v65[v131], 1, v133) == 1)
  {
    (*(v234 + 8))(v134, v133);
    goto LABEL_47;
  }

  v135 = v65;
  v136 = v234;
  v137 = v135 + v131;
  v138 = v224;
  (*(v234 + 32))(v224, v137, v133);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v139 = sub_1B4D1816C();
  v140 = *(v136 + 8);
  v140(v138, v133);
  v140(v134, v133);
  sub_1B4975024(v135, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v129 = v205;
  if ((v139 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v141 = v129[12];
  v142 = *(v225 + 48);
  v143 = v226;
  sub_1B4974FBC(v120 + v141, v226, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v246 + v141, &v142[v143], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v144 = *(v229 + 48);
  v145 = v227;
  if (v144(v143, 1, v227) == 1)
  {
    if (v144(&v142[v143], 1, v145) == 1)
    {
      sub_1B4975024(v143, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      goto LABEL_56;
    }

LABEL_54:
    v90 = &qword_1EB8A7878;
    v91 = &unk_1B4D2D8B0;
    v92 = v143;
    goto LABEL_31;
  }

  v146 = v223;
  sub_1B4974FBC(v143, v223, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v243 = v142;
  if (v144(&v142[v143], 1, v145) == 1)
  {
    (*(v229 + 8))(v146, v145);
    goto LABEL_54;
  }

  v147 = v229;
  v148 = v221;
  (*(v229 + 32))(v221, &v243[v143], v145);
  sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
  LODWORD(v243) = sub_1B4D1816C();
  v149 = *(v147 + 8);
  v149(v148, v145);
  v149(v146, v145);
  sub_1B4975024(v143, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((v243 & 1) == 0)
  {
    return 0;
  }

LABEL_56:
  v150 = v129[13];
  v151 = *(v242 + 48);
  v65 = v222;
  sub_1B4974FBC(v120 + v150, v222, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v246 + v150, &v65[v151], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v152 = v244;
  if ((v244)(v65, 1, v110) == 1)
  {
    if (v152(&v65[v151], 1, v110) == 1)
    {
      sub_1B4975024(v65, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_62;
    }

    goto LABEL_40;
  }

  v153 = v217;
  sub_1B4974FBC(v65, v217, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v152(&v65[v151], 1, v110) == 1)
  {
    (*(v240 + 8))(v153, v110);
    goto LABEL_40;
  }

  v154 = v240;
  v155 = v235;
  (*(v240 + 32))(v235, &v65[v151], v110);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v156 = sub_1B4D1816C();
  v157 = *(v154 + 8);
  v157(v155, v110);
  v157(v153, v110);
  sub_1B4975024(v65, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v156 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v158 = v129[14];
  v159 = *(v213 + 48);
  v160 = v218;
  sub_1B4974FBC(v120 + v158, v218, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v246 + v158, v160 + v159, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v161 = *(v219 + 48);
  v162 = v220;
  if (v161(v160, 1, v220) == 1)
  {
    if (v161(v160 + v159, 1, v162) == 1)
    {
      sub_1B4975024(v160, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  sub_1B4974FBC(v160, v214, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v161(v160 + v159, 1, v162) == 1)
  {
    (*(v219 + 8))(v214, v220);
    v160 = v218;
LABEL_67:
    v90 = &qword_1EB8A6F68;
    v91 = &unk_1B4D1C550;
    v92 = v160;
    goto LABEL_31;
  }

  v163 = v219;
  v164 = v218;
  v165 = v218 + v159;
  v166 = v208;
  v167 = v220;
  (*(v219 + 32))(v208, v165, v220);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  v168 = v214;
  v169 = sub_1B4D1816C();
  v170 = *(v163 + 8);
  v170(v166, v167);
  v170(v168, v167);
  sub_1B4975024(v164, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((v169 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v171 = v205[15];
  v172 = *(v211 + 48);
  v173 = v215;
  sub_1B4974FBC(v245 + v171, v215, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v246 + v171, v173 + v172, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v174 = *(v212 + 48);
  if (v174(v173, 1, v216) == 1)
  {
    if (v174(v215 + v172, 1, v216) == 1)
    {
      sub_1B4975024(v215, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  v175 = v215;
  sub_1B4974FBC(v215, v209, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v174(v175 + v172, 1, v216) == 1)
  {
    (*(v212 + 8))(v209, v216);
LABEL_74:
    v90 = &qword_1EB8A9E10;
    v91 = &unk_1B4D46A80;
    v92 = v215;
    goto LABEL_31;
  }

  v176 = v212;
  v177 = v215;
  v178 = v206;
  v179 = v216;
  (*(v212 + 32))(v206, v215 + v172, v216);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
  v180 = v209;
  v181 = sub_1B4D1816C();
  v182 = *(v176 + 8);
  v182(v178, v179);
  v182(v180, v179);
  sub_1B4975024(v177, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v181 & 1) == 0)
  {
    return 0;
  }

LABEL_76:
  v183 = v205[16];
  v184 = *(v211 + 48);
  v185 = v210;
  sub_1B4974FBC(v245 + v183, v210, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v246 + v183, v185 + v184, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v174(v185, 1, v216) == 1)
  {
    if (v174(v210 + v184, 1, v216) == 1)
    {
      sub_1B4975024(v210, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v186 = v210;
  sub_1B4974FBC(v210, v207, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v174(v186 + v184, 1, v216) == 1)
  {
    (*(v212 + 8))(v207, v216);
LABEL_81:
    v90 = &qword_1EB8A9E10;
    v91 = &unk_1B4D46A80;
    v92 = v210;
    goto LABEL_31;
  }

  v187 = v212;
  v188 = v210;
  v189 = v210 + v184;
  v190 = v206;
  v191 = v216;
  (*(v212 + 32))(v206, v189, v216);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
  v192 = v207;
  v193 = sub_1B4D1816C();
  v194 = *(v187 + 8);
  v194(v190, v191);
  v194(v192, v191);
  sub_1B4975024(v188, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v193 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v195 = v205[17];
  v196 = *(v245 + v195);
  v197 = *(v246 + v195);
  if (v196 == 2)
  {
    if (v197 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v197 == 2 || ((v197 ^ v196) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v245 + v205[18]) != *(v246 + v205[18]))
  {
    return 0;
  }

  v198 = v205[19];
  v199 = *(v245 + v198);
  v200 = *(v246 + v198);
  if (v199 == 2)
  {
    if (v200 != 2)
    {
      return 0;
    }

    goto LABEL_94;
  }

  result = 0;
  if (v200 != 2 && ((v200 ^ v199) & 1) == 0)
  {
LABEL_94:
    v201 = v205[20];
    v202 = *(v245 + v201);
    v203 = *(v246 + v201);
    if (v202 != 2)
    {
      return v203 != 2 && ((v203 ^ v202) & 1) == 0;
    }

    return v203 == 2;
  }

  return result;
}

uint64_t _s19FitnessIntelligence16WorkoutSplitFactV0dE4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E20, &qword_1B4D2C428);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v33 - v19;
  v22 = &v33 + *(v21 + 56) - v19;
  sub_1B4AEF0D4(v35, &v33 - v19, type metadata accessor for WorkoutSplitFact.SplitFactType);
  sub_1B4AEF0D4(v36, v22, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4AEF0D4(v20, v16, type metadata accessor for WorkoutSplitFact.SplitFactType);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
    v28 = v16[v27];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v22[v27];
      (*(v6 + 32))(v9, v22, v5);
      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      v31 = sub_1B4D1816C();
      v32 = *(v6 + 8);
      v32(v9, v5);
      v32(v16, v5);
      if (v31)
      {
        sub_1B4AEF13C(v20, type metadata accessor for WorkoutSplitFact.SplitFactType);
        v25 = v28 ^ v30 ^ 1;
        return v25 & 1;
      }

      sub_1B4AEF13C(v20, type metadata accessor for WorkoutSplitFact.SplitFactType);
      goto LABEL_8;
    }

    (*(v6 + 8))(v16, v5);
LABEL_7:
    sub_1B4975024(v20, &qword_1EB8A9E20, &qword_1B4D2C428);
LABEL_8:
    v25 = 0;
    return v25 & 1;
  }

  sub_1B4AEF0D4(v20, v13, type metadata accessor for WorkoutSplitFact.SplitFactType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 8))(v13, v2);
    goto LABEL_7;
  }

  v24 = v33;
  v23 = v34;
  (*(v34 + 32))(v33, v22, v2);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  v25 = sub_1B4D1816C();
  v26 = *(v23 + 8);
  v26(v24, v2);
  v26(v13, v2);
  sub_1B4AEF13C(v20, type metadata accessor for WorkoutSplitFact.SplitFactType);
  return v25 & 1;
}

unint64_t sub_1B4AEEEBC()
{
  result = qword_1EB8A9D18;
  if (!qword_1EB8A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D18);
  }

  return result;
}

unint64_t sub_1B4AEEF10()
{
  result = qword_1EB8A9D20;
  if (!qword_1EB8A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D20);
  }

  return result;
}

unint64_t sub_1B4AEEF64()
{
  result = qword_1EB8A9D30;
  if (!qword_1EB8A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D30);
  }

  return result;
}

uint64_t sub_1B4AEEFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4AEF03C()
{
  result = qword_1EB8A9D58;
  if (!qword_1EB8A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9D58);
  }

  return result;
}

uint64_t sub_1B4AEF090(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSplitFact.SplitFactType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4AEF0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AEF13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B4AEF1C4()
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutSplitFact.SplitFactType(319);
    if (v1 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10);
      if (v2 <= 0x3F)
      {
        sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
        if (v3 <= 0x3F)
        {
          sub_1B49AFCD8(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
          if (v4 <= 0x3F)
          {
            sub_1B49AFCD8(319, &qword_1EDC37880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
            if (v5 <= 0x3F)
            {
              sub_1B49AFCD8(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80);
              if (v6 <= 0x3F)
              {
                sub_1B49AFCD8(319, &qword_1EDC37868, &qword_1EB8A6CD0, &unk_1B4D1F270);
                if (v7 <= 0x3F)
                {
                  sub_1B49AFD84();
                  if (v8 <= 0x3F)
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
  }
}

void sub_1B4AEF3CC()
{
  sub_1B4AEF46C();
  if (v0 <= 0x3F)
  {
    sub_1B49BEEDC(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B4AEF46C()
{
  if (!qword_1EB8A9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB8A9DA8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutSplitFact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutSplitFact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4AEF668()
{
  result = qword_1EB8A9DB0;
  if (!qword_1EB8A9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DB0);
  }

  return result;
}

unint64_t sub_1B4AEF6C0()
{
  result = qword_1EB8A9DB8;
  if (!qword_1EB8A9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DB8);
  }

  return result;
}

unint64_t sub_1B4AEF718()
{
  result = qword_1EB8A9DC0;
  if (!qword_1EB8A9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DC0);
  }

  return result;
}

unint64_t sub_1B4AEF770()
{
  result = qword_1EB8A9DC8;
  if (!qword_1EB8A9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DC8);
  }

  return result;
}

unint64_t sub_1B4AEF7C8()
{
  result = qword_1EB8A9DD0;
  if (!qword_1EB8A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DD0);
  }

  return result;
}

unint64_t sub_1B4AEF820()
{
  result = qword_1EB8A9DD8;
  if (!qword_1EB8A9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DD8);
  }

  return result;
}

unint64_t sub_1B4AEF878()
{
  result = qword_1EB8A9DE0;
  if (!qword_1EB8A9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DE0);
  }

  return result;
}

unint64_t sub_1B4AEF8D0()
{
  result = qword_1EB8A9DE8;
  if (!qword_1EB8A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DE8);
  }

  return result;
}

unint64_t sub_1B4AEF928()
{
  result = qword_1EB8A9DF0;
  if (!qword_1EB8A9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DF0);
  }

  return result;
}

unint64_t sub_1B4AEF980()
{
  result = qword_1EB8A9DF8;
  if (!qword_1EB8A9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9DF8);
  }

  return result;
}

unint64_t sub_1B4AEF9D8()
{
  result = qword_1EB8A9E00;
  if (!qword_1EB8A9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E00);
  }

  return result;
}

unint64_t sub_1B4AEFA30()
{
  result = qword_1EB8A9E08;
  if (!qword_1EB8A9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E08);
  }

  return result;
}

uint64_t sub_1B4AEFA84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E74696C7073 && a2 == 0xEB00000000726562 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D613E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D61400 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7369446C61746F74 && a2 == 0xED000065636E6174 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xEF64656E6961476ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D61420 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D61440 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61460 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7365747361467369 && a2 == 0xEE0074696C705374 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x72616D6D75537369 && a2 == 0xED0000676E697A69 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4D61480 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B4D614A0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t type metadata accessor for RingClosureStreakFact()
{
  result = qword_1EB8A9E40;
  if (!qword_1EB8A9E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4AF0100()
{
  v1 = *v0;
  v2 = 0x6C416B6165727473;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

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
    return v3;
  }
}

uint64_t sub_1B4AF01B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4AF0C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4AF01D8(uint64_t a1)
{
  v2 = sub_1B4AF0920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF0214(uint64_t a1)
{
  v2 = sub_1B4AF0920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RingClosureStreakFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E28, &qword_1B4D2C430);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF0920();
  sub_1B4D18EFC();
  v11 = *v3;
  v18[15] = 0;
  sub_1B4D18CEC();
  if (!v2)
  {
    v12 = type metadata accessor for RingClosureStreakFact();
    v13 = v12[5];
    v18[14] = 1;
    type metadata accessor for RingProgressType();
    sub_1B49951E4(&qword_1EB8A6BE0);
    sub_1B4D18D0C();
    v14 = *(v3 + v12[6]);
    v18[13] = 2;
    sub_1B4D18CCC();
    v15 = *(v3 + v12[7]);
    v18[12] = 3;
    sub_1B4D18CCC();
    v16 = *(v3 + v12[8]);
    v18[11] = 4;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RingClosureStreakFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for RingProgressType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E38, &qword_1B4D2C438);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for RingClosureStreakFact();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF0920();
  v28 = v10;
  v16 = v29;
  sub_1B4D18EEC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = a1;
  v19 = v26;
  v18 = v27;
  v34 = 0;
  v20 = sub_1B4D18BEC();
  v29 = v14;
  *v14 = v20;
  v33 = 1;
  sub_1B49951E4(&qword_1EB8A6BF0);
  sub_1B4D18C0C();
  v21 = v29;
  sub_1B4995228(v6, v29 + v11[5]);
  v32 = 2;
  *(v21 + v11[6]) = sub_1B4D18BCC() & 1;
  v31 = 3;
  *(v21 + v11[7]) = sub_1B4D18BCC() & 1;
  v30 = 4;
  v23 = sub_1B4D18BCC();
  (*(v19 + 8))(v28, v18);
  *(v21 + v11[8]) = v23 & 1;
  sub_1B4AF0974(v21, v25, type metadata accessor for RingClosureStreakFact);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return sub_1B4AF09DC(v21, type metadata accessor for RingClosureStreakFact);
}

uint64_t _s19FitnessIntelligence21RingClosureStreakFactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for RingClosureStreakFact();
  if ((static RingProgressType.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B4AF0920()
{
  result = qword_1EB8A9E30;
  if (!qword_1EB8A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E30);
  }

  return result;
}

uint64_t sub_1B4AF0974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AF09DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AF0A64()
{
  result = type metadata accessor for RingProgressType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AF0B00()
{
  result = qword_1EB8A9E50;
  if (!qword_1EB8A9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E50);
  }

  return result;
}

unint64_t sub_1B4AF0B58()
{
  result = qword_1EB8A9E58;
  if (!qword_1EB8A9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E58);
  }

  return result;
}

unint64_t sub_1B4AF0BB0()
{
  result = qword_1EB8A9E60;
  if (!qword_1EB8A9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E60);
  }

  return result;
}

uint64_t sub_1B4AF0C04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C416B6165727473 && a2 == 0xED0000656D69546CLL;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F000 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F020 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F040 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4D61540 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void __swiftcall WorkoutMediaCurrentPlayingItemFact.init(mediaDetails:)(FitnessIntelligence::WorkoutMediaCurrentPlayingItemFact *__return_ptr retstr, FitnessIntelligence::WorkoutMediaDetails *mediaDetails)
{
  v2 = *&mediaDetails->isFavorited;
  retstr->mediaDetails.genreName = mediaDetails->genreName;
  *&retstr->mediaDetails.isFavorited = v2;
  *(&retstr->mediaDetails.duration.value + 5) = *(&mediaDetails->duration.value + 5);
  LOBYTE(retstr[1].mediaDetails.title.value._object) = mediaDetails[1].title.value._object;
  artistName = mediaDetails->artistName;
  retstr->mediaDetails.title = mediaDetails->title;
  retstr->mediaDetails.artistName = artistName;
}

BOOL static WorkoutMediaCurrentPlayingItemFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v25 = *(a1 + 32);
  v26 = v2;
  v4 = *(a1 + 48);
  v27 = *(a1 + 64);
  v5 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v6;
  v8 = *(a2 + 48);
  v32 = *(a2 + 64);
  v9 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v9;
  v20 = v25;
  v21 = v4;
  v22 = *(a1 + 64);
  v18 = v24[0];
  v19 = v3;
  v14 = v30;
  v15 = v8;
  v16 = *(a2 + 64);
  v28 = *(a1 + 80);
  v33 = *(a2 + 80);
  v23 = *(a1 + 80);
  v17 = *(a2 + 80);
  v12 = v29[0];
  v13 = v7;
  v10 = _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(&v18, &v12);
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v35 = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_1B4A22530(v24, v36);
  sub_1B4A22530(v29, v36);
  sub_1B4A22568(v34);
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  sub_1B4A22568(v36);
  return v10;
}

uint64_t sub_1B4AF0F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746544616964656DLL && a2 == 0xEC000000736C6961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4AF0FB4(uint64_t a1)
{
  v2 = sub_1B4AF14D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF0FF0(uint64_t a1)
{
  v2 = sub_1B4AF14D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMediaCurrentPlayingItemFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E68, &qword_1B4D2C610);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[3];
  v22 = v1[2];
  v23 = v8;
  v24 = v1[4];
  v25 = *(v1 + 80);
  v9 = v1[1];
  v20 = *v1;
  v21 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A22530(&v20, &v14);
  sub_1B4AF14D0();
  sub_1B4D18EFC();
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v21;
  sub_1B4AF1524();
  sub_1B4D18D0C();
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  sub_1B4A22568(v12);
  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkoutMediaCurrentPlayingItemFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E80, &qword_1B4D2C618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF14D0();
  sub_1B4D18EEC();
  if (!v2)
  {
    sub_1B4AF1578();
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v11 = v17;
    *(a2 + 32) = v16;
    *(a2 + 48) = v11;
    *(a2 + 64) = v18;
    *(a2 + 80) = v19;
    v12 = v15;
    *a2 = *&v14[8];
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL sub_1B4AF13B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v25 = *(a1 + 32);
  v26 = v2;
  v4 = *(a1 + 48);
  v27 = *(a1 + 64);
  v5 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v30 = *(a2 + 32);
  v31 = v6;
  v8 = *(a2 + 48);
  v32 = *(a2 + 64);
  v9 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v9;
  v20 = v25;
  v21 = v4;
  v22 = *(a1 + 64);
  v18 = v24[0];
  v19 = v3;
  v14 = v30;
  v15 = v8;
  v16 = *(a2 + 64);
  v28 = *(a1 + 80);
  v33 = *(a2 + 80);
  v23 = *(a1 + 80);
  v17 = *(a2 + 80);
  v12 = v29[0];
  v13 = v7;
  v10 = _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(&v18, &v12);
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v35 = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_1B4A22530(v24, v36);
  sub_1B4A22530(v29, v36);
  sub_1B4A22568(v34);
  v36[2] = v20;
  v36[3] = v21;
  v36[4] = v22;
  v37 = v23;
  v36[0] = v18;
  v36[1] = v19;
  sub_1B4A22568(v36);
  return v10;
}

unint64_t sub_1B4AF14D0()
{
  result = qword_1EB8A9E70;
  if (!qword_1EB8A9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E70);
  }

  return result;
}

unint64_t sub_1B4AF1524()
{
  result = qword_1EB8A9E78;
  if (!qword_1EB8A9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E78);
  }

  return result;
}

unint64_t sub_1B4AF1578()
{
  result = qword_1EB8A9E88;
  if (!qword_1EB8A9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E88);
  }

  return result;
}

unint64_t sub_1B4AF15F0()
{
  result = qword_1EB8A9E90;
  if (!qword_1EB8A9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E90);
  }

  return result;
}

unint64_t sub_1B4AF1648()
{
  result = qword_1EB8A9E98;
  if (!qword_1EB8A9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9E98);
  }

  return result;
}

unint64_t sub_1B4AF16A0()
{
  result = qword_1EB8A9EA0;
  if (!qword_1EB8A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9EA0);
  }

  return result;
}

uint64_t WorkoutAwardsFact.init(date:dateEarned:awardType:templateUniqueName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B4D1777C();
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v14 = type metadata accessor for WorkoutAwardsFact(0);
  v13(a6 + v14[5], a2, v12);
  result = sub_1B4AF3DB8(a3, a6 + v14[6], type metadata accessor for WorkoutAwardsFact.AwardType);
  v16 = (a6 + v14[7]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t WorkoutAwardsFact.AwardDistance.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t WorkoutAwardsFact.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D1777C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutAwardsFact.dateEarned.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutAwardsFact(0) + 20);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutAwardsFact.templateUniqueName.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutAwardsFact(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static WorkoutAwardsFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutAwardsFact(0);
  v5 = v4[5];
  if ((sub_1B4D1774C() & 1) == 0 || (_s19FitnessIntelligence17WorkoutAwardsFactV9AwardTypeO2eeoiySbAE_AEtFZ_0(a1 + v4[6], (a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1B4D18DCC();
}

uint64_t sub_1B4AF1AE0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[5];
  if ((sub_1B4D1774C() & 1) == 0 || (static WorkoutAwardsFact.AwardType.== infix(_:_:)(a1 + a3[6], (a2 + a3[6])) & 1) == 0)
  {
    return 0;
  }

  v7 = a3[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_1B4D18DCC();
}

uint64_t _s19FitnessIntelligence17WorkoutAwardsFactV9RingValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F70, &qword_1B4D2C9C8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v50 - v29;
  v32 = *(v31 + 56);
  sub_1B4AF3CF0(v58, &v50 - v29, type metadata accessor for WorkoutAwardsFact.RingValue);
  sub_1B4AF3CF0(v59, &v30[v32], type metadata accessor for WorkoutAwardsFact.RingValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1B4AF3CF0(v30, v17, type metadata accessor for WorkoutAwardsFact.RingValue);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v54 + 8))(v17, v55);
        goto LABEL_16;
      }

      v43 = v54;
      v42 = v55;
      v44 = &v30[v32];
      v45 = v52;
      (*(v54 + 32))(v52, v44, v55);
      sub_1B4A1F6B0(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
      v37 = sub_1B4D1816C();
      v46 = *(v43 + 8);
      v46(v45, v42);
      v46(v17, v42);
LABEL_18:
      sub_1B4AF3D58(v30, type metadata accessor for WorkoutAwardsFact.RingValue);
      return v37 & 1;
    }

    sub_1B4AF3CF0(v30, v20, type metadata accessor for WorkoutAwardsFact.RingValue);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v56 + 8))(v20, v57);
      goto LABEL_16;
    }

    v35 = v56;
    v34 = v57;
    v36 = v51;
    (*(v56 + 32))(v51, &v30[v32], v57);
    sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
    v37 = sub_1B4D1816C();
    v38 = *(v35 + 8);
    v38(v36, v34);
    v39 = v20;
LABEL_10:
    v38(v39, v34);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B4AF3CF0(v30, v23, type metadata accessor for WorkoutAwardsFact.RingValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v56 + 8))(v23, v57);
      goto LABEL_16;
    }

    v40 = v56;
    v34 = v57;
    v41 = v50;
    (*(v56 + 32))(v50, &v30[v32], v57);
    sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
    v37 = sub_1B4D1816C();
    v38 = *(v40 + 8);
    v38(v41, v34);
    v39 = v23;
    goto LABEL_10;
  }

  sub_1B4AF3CF0(v30, v26, type metadata accessor for WorkoutAwardsFact.RingValue);
  if (!swift_getEnumCaseMultiPayload())
  {
    v47 = v53;
    (*(v53 + 32))(v13, &v30[v32], v10);
    sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
    v37 = sub_1B4D1816C();
    v48 = *(v47 + 8);
    v48(v13, v10);
    v48(v26, v10);
    goto LABEL_18;
  }

  (*(v53 + 8))(v26, v10);
LABEL_16:
  sub_1B4975024(v30, &qword_1EB8A9F70, &qword_1B4D2C9C8);
  v37 = 0;
  return v37 & 1;
}

uint64_t _s19FitnessIntelligence17WorkoutAwardsFactV9AwardTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v204 = a1;
  v205 = a2;
  v2 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v185 = &v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v184 = &v178 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v202 = *(v7 - 8);
  v203 = v7;
  v8 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v187 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v188 = &v178 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v186 = &v178 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v191 = &v178 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v189 = *(v16 - 8);
  v190 = v16;
  v17 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v178 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v200 = *(v21 - 8);
  v201 = v21;
  v22 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v178 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v178 = &v178 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v179 = &v178 - v29;
  v30 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v199 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v198 = (&v178 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v196 = (&v178 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v194 = &v178 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v193 = &v178 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v197 = &v178 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v195 = &v178 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v178 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v192 = (&v178 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v178 - v51);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v178 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v178 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = (&v178 - v60);
  MEMORY[0x1EEE9AC00](v62);
  v64 = (&v178 - v63);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F78, &unk_1B4D2C9D0);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v68 = &v178 - v67;
  v70 = &v178 + *(v69 + 56) - v67;
  sub_1B4AF3CF0(v204, &v178 - v67, type metadata accessor for WorkoutAwardsFact.AwardType);
  v71 = v205;
  v205 = v70;
  sub_1B4AF3CF0(v71, v70, type metadata accessor for WorkoutAwardsFact.AwardType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4AF3CF0(v68, v61, type metadata accessor for WorkoutAwardsFact.AwardType);
      v76 = v205;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      v89 = *v61;
      goto LABEL_27;
    case 2u:
      sub_1B4AF3CF0(v68, v58, type metadata accessor for WorkoutAwardsFact.AwardType);
      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
      v96 = v205;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v189 + 8))(&v58[v95], v190);
        goto LABEL_53;
      }

      v97 = *v58;
      v98 = *v96;
      v99 = v189;
      v100 = *(v189 + 32);
      v101 = &v58[v95];
      v102 = v181;
      v103 = v190;
      v100(v181, v101, v190);
      v104 = &v96[v95];
      v105 = v180;
      v100(v180, v104, v103);
      if (v97 == v98)
      {
        sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
        v87 = sub_1B4D1816C();
        v106 = *(v99 + 8);
        v106(v105, v103);
        v107 = v102;
        goto LABEL_57;
      }

      v169 = *(v99 + 8);
      v169(v105, v103);
      v170 = v102;
      goto LABEL_70;
    case 3u:
      sub_1B4AF3CF0(v68, v55, type metadata accessor for WorkoutAwardsFact.AwardType);
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
      v109 = v205;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v200 + 8))(&v55[v108], v201);
        goto LABEL_53;
      }

      v110 = *v55;
      v111 = *v109;
      v112 = v200;
      v113 = *(v200 + 32);
      v114 = &v55[v108];
      v115 = v183;
      v116 = v201;
      v113(v183, v114, v201);
      v117 = &v109[v108];
      v118 = v182;
      v113(v182, v117, v116);
      v207 = v110;
      v206 = v111;
      v119 = FitnessPlusModalityKind.rawValue.getter();
      v121 = v120;
      if (v119 == FitnessPlusModalityKind.rawValue.getter() && v121 == v122)
      {

LABEL_61:
        sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
        v87 = sub_1B4D1816C();
        v172 = *(v112 + 8);
        v172(v118, v116);
        v172(v115, v116);
        goto LABEL_62;
      }

      v171 = sub_1B4D18DCC();

      if (v171)
      {
        goto LABEL_61;
      }

      v177 = *(v112 + 8);
      v177(v118, v116);
      v177(v115, v116);
LABEL_72:
      sub_1B4AF3D58(v68, type metadata accessor for WorkoutAwardsFact.AwardType);
LABEL_54:
      v87 = 0;
      return v87 & 1;
    case 4u:
      sub_1B4AF3CF0(v68, v52, type metadata accessor for WorkoutAwardsFact.AwardType);
      v72 = *v52;
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0) + 48);
      v78 = v205;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v202 + 8))(v52 + v77, v203);
        goto LABEL_52;
      }

      v79 = *v78;
      v81 = v202;
      v80 = v203;
      v82 = *(v202 + 32);
      v82(v191, v52 + v77, v203);
      v83 = v78 + v77;
      v84 = v186;
      v82(v186, v83, v80);
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v85 = sub_1B4D187AC();

      if (v85)
      {
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v86 = v191;
        v87 = sub_1B4D1816C();
        v88 = *(v81 + 8);
        v88(v84, v80);
        v88(v86, v80);
        goto LABEL_62;
      }

      v168 = *(v81 + 8);
      v168(v84, v80);
      v168(v191, v80);
      goto LABEL_72;
    case 5u:
      v127 = v192;
      sub_1B4AF3CF0(v68, v192, type metadata accessor for WorkoutAwardsFact.AwardType);
      v72 = *v127;
      v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30) + 48);
      v129 = v205;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v202 + 8))(v127 + v128, v203);
        goto LABEL_52;
      }

      v130 = *v129;
      v131 = v202;
      v132 = *(v202 + 32);
      v133 = v127 + v128;
      v134 = v188;
      v135 = v203;
      v132(v188, v133, v203);
      v136 = v129 + v128;
      v137 = v187;
      v132(v187, v136, v135);
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v138 = sub_1B4D187AC();

      if (v138)
      {
        sub_1B4A1F6B0(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
        v87 = sub_1B4D1816C();
        v139 = *(v131 + 8);
        v139(v137, v135);
        v139(v134, v135);
        goto LABEL_62;
      }

      v175 = *(v131 + 8);
      v175(v137, v135);
      v175(v134, v135);
      goto LABEL_72;
    case 6u:
      sub_1B4AF3CF0(v68, v47, type metadata accessor for WorkoutAwardsFact.AwardType);
      v72 = *v47;
      v149 = v205;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_52;
      }

      v150 = *v149;
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v87 = sub_1B4D187AC();

      goto LABEL_62;
    case 7u:
      v123 = v195;
      sub_1B4AF3CF0(v68, v195, type metadata accessor for WorkoutAwardsFact.AwardType);
      v124 = v205;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_47;
      }

      v125 = v124;
      v126 = &v212;
      goto LABEL_46;
    case 8u:
      v123 = v197;
      sub_1B4AF3CF0(v68, v197, type metadata accessor for WorkoutAwardsFact.AwardType);
      v158 = v205;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_47:
        sub_1B4AF3D58(v123, type metadata accessor for WorkoutAwardsFact.RingValue);
        goto LABEL_53;
      }

      v125 = v158;
      v126 = &v213;
LABEL_46:
      v159 = *(v126 - 32);
      sub_1B4AF3DB8(v125, v159, type metadata accessor for WorkoutAwardsFact.RingValue);
      v87 = _s19FitnessIntelligence17WorkoutAwardsFactV9RingValueO2eeoiySbAE_AEtFZ_0(v123, v159);
      sub_1B4AF3D58(v159, type metadata accessor for WorkoutAwardsFact.RingValue);
      sub_1B4AF3D58(v123, type metadata accessor for WorkoutAwardsFact.RingValue);
      goto LABEL_62;
    case 9u:
      v90 = v193;
      sub_1B4AF3CF0(v68, v193, type metadata accessor for WorkoutAwardsFact.AwardType);
      v91 = *(v90 + 8);
      v92 = v205;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_53;
      }

      v93 = v92[1];
      if ((sub_1B4975CE8(*v90, *v92) & 1) == 0)
      {
        goto LABEL_72;
      }

      v94 = v91 == v93;
      goto LABEL_28;
    case 0xAu:
      v151 = v194;
      sub_1B4AF3CF0(v68, v194, type metadata accessor for WorkoutAwardsFact.AwardType);
      v152 = v205;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_53;
      }

      v153 = *v152;
      v209 = *v151;
      v208 = v153;
      v154 = FitnessPlusModalityKind.rawValue.getter();
      v156 = v155;
      if (v154 == FitnessPlusModalityKind.rawValue.getter() && v156 == v157)
      {
      }

      else
      {
        v176 = sub_1B4D18DCC();

        if ((v176 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

LABEL_68:
      sub_1B4AF3D58(v68, type metadata accessor for WorkoutAwardsFact.AwardType);
      v87 = 1;
      return v87 & 1;
    case 0xBu:
      v75 = v196;
      sub_1B4AF3CF0(v68, v196, type metadata accessor for WorkoutAwardsFact.AwardType);
      v76 = v205;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_12;
    case 0xCu:
      v75 = v198;
      sub_1B4AF3CF0(v68, v198, type metadata accessor for WorkoutAwardsFact.AwardType);
      v76 = v205;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_53;
      }

LABEL_12:
      v89 = *v75;
LABEL_27:
      v94 = v89 == *v76;
      goto LABEL_28;
    case 0xDu:
      v140 = v199;
      sub_1B4AF3CF0(v68, v199, type metadata accessor for WorkoutAwardsFact.AwardType);
      v141 = *(v140 + 8);
      v142 = v205;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_53;
      }

      v143 = *v142;
      v144 = v142[1];
      v211 = *v140;
      v210 = v143;
      v145 = FitnessPlusModalityKind.rawValue.getter();
      v147 = v146;
      if (v145 == FitnessPlusModalityKind.rawValue.getter() && v147 == v148)
      {

        v94 = v141 == v144;
      }

      else
      {
        v174 = sub_1B4D18DCC();

        if ((v174 & 1) == 0)
        {
          goto LABEL_72;
        }

        v94 = v141 == v144;
      }

LABEL_28:
      v87 = v94;
      goto LABEL_62;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    default:
      sub_1B4AF3CF0(v68, v64, type metadata accessor for WorkoutAwardsFact.AwardType);
      v72 = *v64;
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
      v74 = v205;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v200 + 8))(v64 + v73, v201);
LABEL_52:

LABEL_53:
        sub_1B4975024(v68, &qword_1EB8A9F78, &unk_1B4D2C9D0);
        goto LABEL_54;
      }

      v160 = *v74;
      v161 = v200;
      v103 = v201;
      v162 = *(v200 + 32);
      v163 = v64 + v73;
      v164 = v179;
      v162(v179, v163, v201);
      v165 = v74 + v73;
      v166 = v178;
      v162(v178, v165, v103);
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v167 = sub_1B4D187AC();

      if ((v167 & 1) == 0)
      {
        v169 = *(v161 + 8);
        v169(v166, v103);
        v170 = v164;
LABEL_70:
        v169(v170, v103);
        goto LABEL_72;
      }

      sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
      v87 = sub_1B4D1816C();
      v106 = *(v161 + 8);
      v106(v166, v103);
      v107 = v164;
LABEL_57:
      v106(v107, v103);
LABEL_62:
      sub_1B4AF3D58(v68, type metadata accessor for WorkoutAwardsFact.AwardType);
      return v87 & 1;
  }
}

unint64_t sub_1B4AF34E4()
{
  result = qword_1EB8A9EA8;
  if (!qword_1EB8A9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9EA8);
  }

  return result;
}

uint64_t sub_1B4AF3560()
{
  result = sub_1B4D1777C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkoutAwardsFact.AwardType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4AF35EC()
{
  sub_1B4AF3908(319, &qword_1EB8A9ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
  if (v0 <= 0x3F)
  {
    sub_1B4AF37E8();
    if (v1 <= 0x3F)
    {
      sub_1B4AF3818();
      if (v2 <= 0x3F)
      {
        sub_1B4AF3890();
        if (v3 <= 0x3F)
        {
          sub_1B4AF3908(319, &qword_1EB8A9EF0, &qword_1EB8A6830, &unk_1B4D1AB40);
          if (v4 <= 0x3F)
          {
            sub_1B4AF3908(319, &qword_1EB8A9EF8, &qword_1EB8A6830, &unk_1B4D1AB40);
            if (v5 <= 0x3F)
            {
              sub_1B4AF39A0();
              if (v6 <= 0x3F)
              {
                sub_1B4AF39F8(319, &qword_1EB8A9F08, type metadata accessor for WorkoutAwardsFact.RingValue);
                if (v7 <= 0x3F)
                {
                  sub_1B4AF3AF4(319, &qword_1EB8A9F10);
                  if (v8 <= 0x3F)
                  {
                    sub_1B4AF3A64();
                    if (v9 <= 0x3F)
                    {
                      sub_1B4AF3A94();
                      if (v10 <= 0x3F)
                      {
                        sub_1B4AF3AC4();
                        if (v11 <= 0x3F)
                        {
                          sub_1B4AF3AF4(319, &qword_1EB8A9F30);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B4AF37E8()
{
  result = qword_1EB8A9ED8;
  if (!qword_1EB8A9ED8)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB8A9ED8);
  }

  return result;
}

void sub_1B4AF3818()
{
  if (!qword_1EB8A9EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB8A9EE0);
    }
  }
}

void sub_1B4AF3890()
{
  if (!qword_1EB8A9EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB8A9EE8);
    }
  }
}

void sub_1B4AF3908(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1B498AFB8(255, &qword_1EDC36DC8, 0x1E699C9F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B4AF39A0()
{
  if (!qword_1EB8A9F00)
  {
    v0 = sub_1B498AFB8(0, &qword_1EDC36DC8, 0x1E699C9F0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A9F00);
    }
  }
}

void sub_1B4AF39F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_1B4AF3A64()
{
  result = qword_1EB8A9F18;
  if (!qword_1EB8A9F18)
  {
    result = &type metadata for FitnessPlusModalityKind;
    atomic_store(&type metadata for FitnessPlusModalityKind, &qword_1EB8A9F18);
  }

  return result;
}

uint64_t sub_1B4AF3A94()
{
  result = qword_1EB8A9F20;
  if (!qword_1EB8A9F20)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB8A9F20);
  }

  return result;
}

uint64_t sub_1B4AF3AC4()
{
  result = qword_1EB8A9F28;
  if (!qword_1EB8A9F28)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB8A9F28);
  }

  return result;
}

void sub_1B4AF3AF4(uint64_t a1, unint64_t *a2)
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

void sub_1B4AF3B60()
{
  sub_1B4AF3C44(319, &qword_1EB8A9F48, &qword_1EB8A9F50, &qword_1EDC378C8, 0x1E696B030);
  if (v0 <= 0x3F)
  {
    sub_1B4AF3C44(319, &qword_1EB8A9F58, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008);
    if (v1 <= 0x3F)
    {
      sub_1B4AF39F8(319, &qword_1EB8A9F60, sub_1B4AF3C98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B4AF3C44(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1B49E4D9C(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B4AF3C98()
{
  if (!qword_1EB8A9F68)
  {
    type metadata accessor for UnitCount();
    v0 = sub_1B4D1746C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A9F68);
    }
  }
}

uint64_t sub_1B4AF3CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AF3D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AF3DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static RingsHighestMetricPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v5 = type metadata accessor for RingsBestMeasurementEntry();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v51 - v7;
  v61 = sub_1B4D1777C();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = (&v51 - v13);
  v14 = type metadata accessor for LocalizedDate();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v51 - v18;
  v19 = sub_1B4D1746C();
  v20 = sub_1B4D1880C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v51 - v24;
  v26 = *(v19 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v51 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v51 - v30;
  v32 = *a2;
  sub_1B49A8448(a1, &v63);
  if (!v64)
  {
    result = sub_1B4975024(&v63, &qword_1EB8A6E58, &qword_1B4D1C110);
    goto LABEL_10;
  }

  sub_1B49A24C4(&v63, v65);
  LOBYTE(v63) = v32;
  sub_1B4AF461C(v65, &v63, v25);
  if ((*(v26 + 48))(v25, 1, v19) == 1)
  {
    (*(v21 + 8))(v25, v20);
LABEL_4:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v65);
LABEL_10:
    *v62 = 0;
    return result;
  }

  (*(v26 + 32))(v31, v25, v19);
  v34 = v66;
  v35 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  (*(*(v35 + 8) + 8))(&v63, v34);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v36 = sub_1B4D1796C();
  __swift_project_value_buffer(v36, qword_1EDC3CE48);
  CacheIndex.date(for:)(v10);
  v37 = v60;
  static LocalizedDate.from(_:)(v10, v60);
  (*(v59 + 8))(v10, v61);
  if ((*(v57 + 48))(v37, 1, v58) == 1)
  {
    (*(v26 + 8))(v31, v19);
    sub_1B4975024(v37, &qword_1EB8A6820, &qword_1B4D2CA00);
    goto LABEL_4;
  }

  v38 = v53;
  sub_1B4AF497C(v37, v53);
  v39 = v66;
  v40 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  (*(*(v40 + 8) + 8))(&v63, v39);
  v41 = v52;
  sub_1B4AE7BD8(v38, v52);
  v42 = v51;
  (*(v26 + 16))(v51, v31, v19);
  v43 = v54;
  sub_1B4B02C28(&v63, v41, v42, v54);
  v44 = v56;
  sub_1B4D18D6C();
  v45 = v55;
  v46 = *(v55 + 72);
  v47 = *(v55 + 80);
  swift_allocObject();
  v48 = sub_1B4D1841C();
  (*(v45 + 32))(v49, v43, v44);
  v50 = sub_1B49BA6A8(v48);
  sub_1B4AF49E0(v38);
  (*(v26 + 8))(v31, v19);
  swift_getWitnessTable();
  RingsBestMetricPropertyValue.init(topEntries:)(v50, &v63);
  *v62 = v63;
  return __swift_destroy_boxed_opaque_existential_1Tm(v65);
}

uint64_t sub_1B4AF461C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = *a2;
  if (v14 == 24)
  {
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    (*(v22 + 112))(v21, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    if ((*(*(v23 - 8) + 48))(v9, 1, v23) == 1)
    {
      v18 = &qword_1EB8A6CC0;
      v19 = &unk_1B4D1BC00;
      v20 = v9;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v14 == 23)
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 96))(v15, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
    {
      v18 = &qword_1EB8A6D18;
      v19 = &unk_1B4D1BCA0;
      v20 = v13;
LABEL_7:
      sub_1B4975024(v20, v18, v19);
      v24 = sub_1B4D1746C();
      return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
    }

LABEL_11:
    v28 = sub_1B4D1746C();
    if (swift_dynamicCast())
    {
      v29 = a3;
      v30 = 0;
    }

    else
    {
      v29 = a3;
      v30 = 1;
    }

    return (*(*(v28 - 8) + 56))(v29, v30, 1, v28);
  }

  v26 = sub_1B4D1746C();
  v27 = *(*(v26 - 8) + 56);

  return v27(a3, 1, 1, v26);
}

uint64_t sub_1B4AF497C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedDate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AF49E0(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedDate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4AF4A3C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t WorkoutDetailFact.place.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutDetailFact.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetailFact() + 24);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutDetailFact()
{
  result = qword_1EB8A9FA8;
  if (!qword_1EB8A9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetailFact.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutDetailFact() + 28);

  return sub_1B4A315C4(v3, a1);
}

uint64_t WorkoutDetailFact.goal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetailFact() + 32);
  v4 = sub_1B4D179EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetailFact.init(activityType:place:startDate:endDate:goal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for WorkoutDetailFact();
  v12 = v11[6];
  v13 = sub_1B4D1777C();
  (*(*(v13 - 8) + 32))(&a7[v12], a4, v13);
  sub_1B4AF4D5C(a5, &a7[v11[7]]);
  v14 = v11[8];
  v15 = sub_1B4D179EC();
  v16 = *(*(v15 - 8) + 32);

  return v16(&a7[v14], a6, v15);
}

uint64_t sub_1B4AF4D5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4AF4DD0()
{
  v1 = *v0;
  v2 = 0x6563616C70;
  v3 = 0x7461447472617473;
  v4 = 0x65746144646E65;
  if (v1 != 3)
  {
    v4 = 1818324839;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4AF4E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4AF5FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4AF4E90(uint64_t a1)
{
  v2 = sub_1B4AF5CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF4ECC(uint64_t a1)
{
  v2 = sub_1B4AF5CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutDetailFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F80, &qword_1B4D2CA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF5CAC();
  sub_1B4D18EFC();
  v20 = *v3;
  v19[15] = 0;
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0);
  sub_1B4D18D0C();

  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v19[14] = 1;
    sub_1B4D18C6C();
    v14 = type metadata accessor for WorkoutDetailFact();
    v15 = v14[6];
    v19[13] = 2;
    sub_1B4D1777C();
    sub_1B4AF6180(&qword_1EDC37820, MEMORY[0x1E6969530]);
    sub_1B4D18D0C();
    v16 = v14[7];
    v19[12] = 3;
    sub_1B4D18CAC();
    v17 = v14[8];
    v19[11] = 4;
    sub_1B4D179EC();
    sub_1B4AF6180(&qword_1EB8A9F90, MEMORY[0x1E6985B58]);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

void WorkoutDetailFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_1B4D179EC();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v26 - v7;
  v8 = sub_1B4D1777C();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9F98, &qword_1B4D2CA88);
  v33 = *(v35 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v26 - v13;
  v15 = type metadata accessor for WorkoutDetailFact();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF5CAC();
  v34 = v14;
  v20 = v36;
  sub_1B4D18EEC();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v21 = v33;
    v36 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v41 = 0;
    sub_1B49B1148(&qword_1EB8A6FB0);
    sub_1B4D18C0C();
    *v18 = v42;
    v40 = 1;
    *(v18 + 1) = sub_1B4D18B6C();
    *(v18 + 2) = v22;
    v39 = 2;
    sub_1B4AF6180(&qword_1EB8A6FB8, MEMORY[0x1E6969530]);
    v26 = 0;
    sub_1B4D18C0C();
    (*(v32 + 32))(&v18[v36[6]], v11, v8);
    v38 = 3;
    v23 = v31;
    sub_1B4D18BAC();
    sub_1B4AF4D5C(v23, &v18[v36[7]]);
    v37 = 4;
    sub_1B4AF6180(&qword_1EB8A9FA0, MEMORY[0x1E6985B58]);
    v24 = v29;
    v25 = v30;
    sub_1B4D18C0C();
    (*(v21 + 8))(v34, v35);
    (*(v27 + 32))(&v18[v36[8]], v25, v24);
    sub_1B4A3123C(v18, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4AF5D00(v18);
  }
}

uint64_t _s19FitnessIntelligence17WorkoutDetailFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FD0, &qword_1B4D2CC58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v16 = *a1;
  v17 = *a2;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18 && (v19 = v18, objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
  {
    v21 = v20;
    v22 = v16;
    v23 = v17;
    [v19 coordinate];
    v25 = v24;
    [v21 coordinate];
    if (v25 != v26)
    {

      goto LABEL_22;
    }

    [v19 coordinate];
    v28 = v27;
    [v21 coordinate];
    v30 = v29;

    if (v28 != v30)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v31 = *(a1 + 16);
  v32 = *(a2 + 16);
  if (v31)
  {
    if (!v32 || (*(a1 + 8) != *(a2 + 8) || v31 != v32) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v32)
  {
    goto LABEL_22;
  }

  v33 = type metadata accessor for WorkoutDetailFact();
  v34 = v33[6];
  if (sub_1B4D1774C())
  {
    v35 = v33[7];
    v36 = *(v12 + 48);
    sub_1B4A315C4(a1 + v35, v15);
    sub_1B4A315C4(a2 + v35, &v15[v36]);
    v37 = v47;
    v38 = *(v48 + 48);
    if (v38(v15, 1, v47) == 1)
    {
      if (v38(&v15[v36], 1, v37) == 1)
      {
        sub_1B4975024(v15, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_25:
        v39 = MEMORY[0x1B8C7BDC0](a1 + v33[8], a2 + v33[8]);
        return v39 & 1;
      }

      goto LABEL_21;
    }

    sub_1B4A315C4(v15, v11);
    if (v38(&v15[v36], 1, v37) == 1)
    {
      (*(v48 + 8))(v11, v37);
LABEL_21:
      sub_1B4975024(v15, &qword_1EB8A9FD0, &qword_1B4D2CC58);
      goto LABEL_22;
    }

    v41 = v48;
    v42 = v46;
    (*(v48 + 32))(v46, &v15[v36], v37);
    sub_1B4AF6180(&qword_1EB8A9FD8, MEMORY[0x1E6969530]);
    v43 = sub_1B4D1816C();
    v44 = *(v41 + 8);
    v44(v42, v37);
    v44(v11, v37);
    sub_1B4975024(v15, &qword_1EB8A6790, &qword_1B4D1BBC0);
    if (v43)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  v39 = 0;
  return v39 & 1;
}

unint64_t sub_1B4AF5CAC()
{
  result = qword_1EB8A9F88;
  if (!qword_1EB8A9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9F88);
  }

  return result;
}

uint64_t sub_1B4AF5D00(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetailFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4AF5D84()
{
  sub_1B49B13FC();
  if (v0 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v1 <= 0x3F)
    {
      sub_1B4D1777C();
      if (v2 <= 0x3F)
      {
        sub_1B4AF5E50();
        if (v3 <= 0x3F)
        {
          sub_1B4D179EC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4AF5E50()
{
  if (!qword_1EDC37818)
  {
    sub_1B4D1777C();
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC37818);
    }
  }
}

unint64_t sub_1B4AF5EBC()
{
  result = qword_1EB8A9FB8;
  if (!qword_1EB8A9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FB8);
  }

  return result;
}

unint64_t sub_1B4AF5F14()
{
  result = qword_1EB8A9FC0;
  if (!qword_1EB8A9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FC0);
  }

  return result;
}

unint64_t sub_1B4AF5F6C()
{
  result = qword_1EB8A9FC8;
  if (!qword_1EB8A9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FC8);
  }

  return result;
}

uint64_t sub_1B4AF5FC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C70 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4AF6180(unint64_t *a1, void (*a2)(uint64_t))
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

FitnessIntelligence::HeartRateZonesFact __swiftcall HeartRateZonesFact.init(highlightedZone:percentage:)(Swift::Int highlightedZone, Swift::Double percentage)
{
  *v2 = highlightedZone;
  *(v2 + 8) = percentage;
  result.percentage = percentage;
  result.highlightedZone = highlightedZone;
  return result;
}

uint64_t sub_1B4AF6200()
{
  if (*v0)
  {
    result = 0x61746E6563726570;
  }

  else
  {
    result = 0x6867696C68676968;
  }

  *v0;
  return result;
}

uint64_t sub_1B4AF624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6867696C68676968 && a2 == 0xEF656E6F5A646574;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4AF6338(uint64_t a1)
{
  v2 = sub_1B4AF6544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF6374(uint64_t a1)
{
  v2 = sub_1B4AF6544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeartRateZonesFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FE0, &qword_1B4D2CC60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6544();
  sub_1B4D18EFC();
  v13[15] = 0;
  sub_1B4D18CEC();
  if (!v2)
  {
    v13[14] = 1;
    sub_1B4D18CDC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B4AF6544()
{
  result = qword_1EB8A9FE8;
  if (!qword_1EB8A9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FE8);
  }

  return result;
}

uint64_t HeartRateZonesFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FF0, &qword_1B4D2CC68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6544();
  sub_1B4D18EEC();
  if (!v2)
  {
    v15[15] = 0;
    v11 = sub_1B4D18BEC();
    v15[14] = 1;
    sub_1B4D18BDC();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t getEnumTagSinglePayload for HeartRateZonesFact(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}