uint64_t sub_1B4C26A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD090, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C26AD0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C26B3C()
{
  sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C26BFC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC730);
  __swift_project_value_buffer(v0, qword_1EB8AC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B4D35480;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "WORKOUT_PROPERTIES";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RINGS_PROPERTIES";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ACTIVITY_SUMMARY_CONTEXT";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WORKOUT_WEEK_CONTEXT";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WEEKLY_SUMMARY_CONTEXT";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AWARDS_CONTEXT";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TRAINING_LOAD_CONTEXT";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "VITALS_CONTEXT";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ACTIVITY_SHARING_CONTEXT";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LOCATION_CONTEXT";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C2701C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC748);
  __swift_project_value_buffer(v0, qword_1EB8AC748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifiers";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryDescriptor";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CDC();
    }

    else if (result == 2)
    {
      sub_1B4C2798C(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    result = sub_1B4C27C90(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0) + 20);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C273AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  sub_1B4D17BBC();
  v5 = *(a1 + 24);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v7 = *(*(Descriptor - 8) + 56);

  return v7(&a2[v5], 1, 1, Descriptor);
}

uint64_t sub_1B4C27484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD088, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C27524(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C27590()
{
  sub_1B4C3E0DC(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C2762C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC760);
  __swift_project_value_buffer(v0, qword_1EB8AC760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifiers";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryDescriptor";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "component";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metrics";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4C27A44();
      }

      else if (result == 4)
      {
        sub_1B4C27AF8();
      }
    }

    else if (result == 1)
    {
      sub_1B4D17CDC();
    }

    else if (result == 2)
    {
      sub_1B4C2798C(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    }
  }

  return result;
}

uint64_t sub_1B4C2798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C27A44()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C27AF8()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4C3E0DC(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    result = sub_1B4C27C90(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    if (!v4)
    {
      sub_1B4C27EB0(v3, a1, a2, a3);
      sub_1B4C280CC(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 20);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C27C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v19[3] = a4;
  v19[0] = a2;
  v19[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v12 = *(Descriptor - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](Descriptor);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0, v14);
  sub_1B4974FBC(a1 + *(v17 + 24), v10, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if ((*(v12 + 48))(v10, 1, Descriptor) == 1)
  {
    return sub_1B4975024(v10, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  }

  sub_1B4C2FF48(v10, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4C3E0DC(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
}

uint64_t sub_1B4C27EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
}

uint64_t sub_1B4C280CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v10 = *(Metrics - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  if ((*(v10 + 48))(v8, 1, Metrics) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4C3E0DC(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
}

uint64_t sub_1B4C28334@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[a1[5]];
  sub_1B4D17BBC();
  v5 = a1[6];
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 56))(&a2[v5], 1, 1, Descriptor);
  v7 = a1[7];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[8];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v11 = *(*(Metrics - 8) + 56);

  return v11(&a2[v9], 1, 1, Metrics);
}

uint64_t sub_1B4C2849C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD080, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C2853C(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C285A8()
{
  sub_1B4C3E0DC(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_FitnessContext.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0), sub_1B4C3E0DC(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C28880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD078, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C28920(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C2898C()
{
  sub_1B4C3E0DC(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C28A3C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC790);
  __swift_project_value_buffer(v0, qword_1EB8AC790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D3CDC0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "activitySharingContext";
  *(v9 + 8) = 22;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "activitySummaryContext";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ringsProperties";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "weeklySummaryContext";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "trainingLoadContext";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "vitalsContext";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "awardsContext";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "workoutProperties";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "workoutWeekContext";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "locationContext";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C28E8C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v0 + v9, 1, 1, Context);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  return v0;
}

uint64_t sub_1B4C29188(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v97 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v92 = &v83 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v90 = &v83 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v85 = &v83 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v83 - v32;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v34 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  v35 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  v39 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  v83 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  v41 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  v84 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v1 + v42, 1, 1, Context);
  v44 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  v86 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v45 - 8) + 56))(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  v87 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  v47 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v47 - 8) + 56))(v1 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  v88 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  v49 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v49 - 8) + 56))(v1 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  v89 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  v51 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v51 - 8) + 56))(v1 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v91 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v53 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v53 - 8) + 56))(v1 + v52, 1, 1, v53);
  swift_beginAccess();
  v54 = *(a1 + 16);
  v55 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v54;
  *(v1 + 24) = v55;
  v56 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v56, v33, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  swift_beginAccess();
  sub_1B49A205C(v33, v1 + v34, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  v58 = v85;
  sub_1B4974FBC(a1 + v57, v85, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  swift_beginAccess();
  sub_1B49A205C(v58, v1 + v36, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  v60 = v90;
  sub_1B4974FBC(a1 + v59, v90, &qword_1EB8A6678, &qword_1B4D3CE20);
  swift_beginAccess();
  sub_1B49A205C(v60, v1 + v38, &qword_1EB8A6678, &qword_1B4D3CE20);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  v62 = v92;
  sub_1B4974FBC(a1 + v61, v92, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v63 = v83;
  swift_beginAccess();
  sub_1B49A205C(v62, v1 + v63, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  v65 = v93;
  sub_1B4974FBC(a1 + v64, v93, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v66 = v84;
  swift_beginAccess();
  sub_1B49A205C(v65, v1 + v66, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  v68 = v94;
  sub_1B4974FBC(a1 + v67, v94, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v69 = v86;
  swift_beginAccess();
  sub_1B49A205C(v68, v1 + v69, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  swift_endAccess();
  v70 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  v71 = v95;
  sub_1B4974FBC(a1 + v70, v95, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v72 = v87;
  swift_beginAccess();
  sub_1B49A205C(v71, v1 + v72, &qword_1EB8ACB00, &unk_1B4D3CE40);
  swift_endAccess();
  v73 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  v74 = v96;
  sub_1B4974FBC(a1 + v73, v96, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v75 = v88;
  swift_beginAccess();
  sub_1B49A205C(v74, v1 + v75, &qword_1EB8A6660, &unk_1B4D2FDB0);
  swift_endAccess();
  v76 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v77 = v97;
  sub_1B4974FBC(a1 + v76, v97, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v78 = v89;
  swift_beginAccess();
  sub_1B49A205C(v77, v1 + v78, &qword_1EB8ACB18, &qword_1B4D3CE50);
  swift_endAccess();
  v79 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  v80 = v98;
  sub_1B4974FBC(a1 + v79, v98, &qword_1EB8ACB28, &unk_1B4D3CE58);

  v81 = v91;
  swift_beginAccess();
  sub_1B49A205C(v80, v1 + v81, &qword_1EB8ACB28, &unk_1B4D3CE58);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B4C29CD0()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext, &qword_1EB8ACB00, &unk_1B4D3CE40);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext, &qword_1EB8ACB18, &qword_1B4D3CE50);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4C29ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_1B4C29F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1B4C2A1C0(a2, a1, a3, a4, sub_1B4C41D48);
          }

          else if (result == 2)
          {
            sub_1B4C2A264();
          }
        }

        else if (result == 3)
        {
          sub_1B4C2A340();
        }

        else if (result == 4)
        {
          sub_1B4C2A41C();
        }

        else
        {
          sub_1B4C2A4F8();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            sub_1B4C2A868();
            break;
          case 10:
            sub_1B4C2A944();
            break;
          case 11:
            sub_1B4C2AA20();
            break;
        }
      }

      else if (result == 6)
      {
        sub_1B4C2A5D4();
      }

      else if (result == 7)
      {
        sub_1B4C2A6B0();
      }

      else
      {
        sub_1B4C2A78C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C2A1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = swift_beginAccess();
  a5(v6);
  sub_1B4D17C6C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A264()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A340()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A41C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4C3E0DC(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A4F8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A5D4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A6B0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A78C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A868()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4C3E0DC(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2A944()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2AA20()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2AB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C2ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (v10 = *(a1 + 16), v11 = *(a1 + 24), sub_1B4C41D48(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4C2AD4C(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1B4C2AF74(a1, a2, a3, a4);
      sub_1B4C2B19C(a1, a2, a3, a4);
      sub_1B4C2B3C4(a1, a2, a3, a4);
      sub_1B4C2B5EC(a1, a2, a3, a4);
      sub_1B4C2B814(a1, a2, a3, a4);
      sub_1B4C2BA3C(a1, a2, a3, a4);
      sub_1B4C2BC64(a1, a2, a3, a4);
      sub_1B4C2BE8C(a1, a2, a3, a4);
      return sub_1B4C2C0B4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B4C2AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
}

uint64_t sub_1B4C2AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
}

uint64_t sub_1B4C2B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4C3E0DC(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
}

uint64_t sub_1B4C2B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
}

uint64_t sub_1B4C2B5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v10 = *(Context - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  if ((*(v10 + 48))(v8, 1, Context) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
}

uint64_t sub_1B4C2B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
}

uint64_t sub_1B4C2BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACB00, &unk_1B4D3CE40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACB00, &unk_1B4D3CE40);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
}

uint64_t sub_1B4C2BC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4C3E0DC(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
}

uint64_t sub_1B4C2BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACB18, &qword_1B4D3CE50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACB18, &qword_1B4D3CE50);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
}

uint64_t sub_1B4C2C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ACB28, &unk_1B4D3CE58);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ACB28, &unk_1B4D3CE58);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
}

BOOL sub_1B4C2C320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v257 = *(v4 - 8);
  v5 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v254 = &v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0D8, &qword_1B4D3F938);
  v7 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v9 = &v252 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v256 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v259 = &v252 - v14;
  v266 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v262 = *(v266 - 8);
  v15 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v258 = (&v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0E0, &unk_1B4D3F940);
  v17 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v267 = &v252 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v263 = (&v252 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v265 = &v252 - v23;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v270 = *(v24 - 8);
  v271 = v24;
  v25 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v260 = (&v252 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF18, &qword_1B4D32540);
  v27 = *(*(v269 - 8) + 64);
  MEMORY[0x1EEE9AC00](v269);
  v272 = &v252 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v264 = (&v252 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v274 = &v252 - v33;
  v279 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v277 = *(v279 - 8);
  v34 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v279);
  v268 = &v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0E8, &qword_1B4D3F950);
  v36 = *(*(v276 - 8) + 64);
  MEMORY[0x1EEE9AC00](v276);
  v278 = &v252 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v273 = &v252 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v281 = &v252 - v42;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v284 = *(v43 - 8);
  v285 = v43;
  v44 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v275 = &v252 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0F0, &qword_1B4D3F958);
  v46 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283);
  v286 = &v252 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v280 = &v252 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v288 = &v252 - v52;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v291 = *(Context - 8);
  v292 = Context;
  v54 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v282 = &v252 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0F8, &qword_1B4D3F960);
  v56 = *(*(v290 - 8) + 64);
  MEMORY[0x1EEE9AC00](v290);
  v293 = &v252 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v287 = &v252 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v295 = &v252 - v62;
  v300 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v298 = *(v300 - 8);
  v63 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v289 = &v252 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD100, &unk_1B4D3F968);
  v65 = *(*(v297 - 8) + 64);
  MEMORY[0x1EEE9AC00](v297);
  v299 = &v252 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v294 = (&v252 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v70);
  v307 = &v252 - v71;
  v306 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v304 = *(v306 - 8);
  v72 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v296 = (&v252 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF08, &unk_1B4D32530);
  v74 = *(*(v303 - 8) + 64);
  MEMORY[0x1EEE9AC00](v303);
  v305 = &v252 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v301 = (&v252 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v79);
  v314 = &v252 - v80;
  v81 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v311 = *(v81 - 8);
  v312 = v81;
  v82 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v302 = &v252 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD108, &qword_1B4D3F978);
  v84 = *(*(v310 - 8) + 64);
  MEMORY[0x1EEE9AC00](v310);
  v313 = &v252 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v308 = &v252 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v315 = &v252 - v90;
  v318 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v91 = *(v318 - 8);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v309 = (&v252 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD110, &unk_1B4D3F980);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v252 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98 - 8);
  v316 = (&v252 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v252 - v102;
  swift_beginAccess();
  v104 = *(a1 + 16);
  swift_beginAccess();
  v105 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v105 > 4)
    {
      if (v105 <= 6)
      {
        if (v105 == 5)
        {
          if (v104 != 5)
          {
            return 0;
          }
        }

        else if (v104 != 6)
        {
          return 0;
        }
      }

      else if (v105 == 7)
      {
        if (v104 != 7)
        {
          return 0;
        }
      }

      else if (v105 == 8)
      {
        if (v104 != 8)
        {
          return 0;
        }
      }

      else if (v104 != 9)
      {
        return 0;
      }
    }

    else if (v105 <= 1)
    {
      if (v105)
      {
        if (v104 != 1)
        {
          return 0;
        }
      }

      else if (v104)
      {
        return 0;
      }
    }

    else if (v105 == 2)
    {
      if (v104 != 2)
      {
        return 0;
      }
    }

    else if (v105 == 3)
    {
      if (v104 != 3)
      {
        return 0;
      }
    }

    else if (v104 != 4)
    {
      return 0;
    }
  }

  else if (v104 != v105)
  {
    return 0;
  }

  v252 = v4;
  v253 = v9;
  v317 = a2;
  v106 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  v107 = a1;
  sub_1B4974FBC(a1 + v106, v103, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v108 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  v109 = v317;
  swift_beginAccess();
  v110 = *(v94 + 48);
  sub_1B4974FBC(v103, v97, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  sub_1B4974FBC(v109 + v108, &v97[v110], &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v111 = *(v91 + 48);
  v112 = v318;
  if (v111(v97, 1, v318) == 1)
  {

    sub_1B4975024(v103, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    v113 = v111(&v97[v110], 1, v112);
    v114 = v107;
    if (v113 == 1)
    {
      sub_1B4975024(v97, &qword_1EB8ACAA8, &qword_1B4D3CE10);
      goto LABEL_12;
    }

LABEL_22:
    v126 = &qword_1EB8AD110;
    v127 = &unk_1B4D3F980;
    v128 = v97;
LABEL_72:
    sub_1B4975024(v128, v126, v127);
    goto LABEL_73;
  }

  v124 = v107;
  v125 = v316;
  sub_1B4974FBC(v97, v316, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  if (v111(&v97[v110], 1, v112) == 1)
  {

    sub_1B4975024(v103, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    sub_1B4C3DEFC(v125, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    goto LABEL_22;
  }

  v129 = &v97[v110];
  v130 = v309;
  sub_1B4C2FF48(v129, v309, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  v131 = *v125;
  v132 = *v130;

  if ((sub_1B4A142B4(v131, v132) & 1) == 0)
  {
    sub_1B4975024(v103, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    sub_1B4C3DEFC(v130, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    sub_1B4C3DEFC(v125, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    sub_1B4975024(v97, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    goto LABEL_73;
  }

  v133 = *(v318 + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v134 = sub_1B4D1816C();
  sub_1B4975024(v103, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  sub_1B4C3DEFC(v130, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4C3DEFC(v125, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  sub_1B4975024(v97, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v114 = v124;
  v109 = v317;
  if ((v134 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_12:
  v115 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  v116 = v315;
  sub_1B4974FBC(v114 + v115, v315, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v117 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  v118 = *(v310 + 48);
  v119 = v313;
  sub_1B4974FBC(v116, v313, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  sub_1B4974FBC(v109 + v117, v119 + v118, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v120 = v312;
  v121 = *(v311 + 48);
  if (v121(v119, 1, v312) == 1)
  {
    sub_1B4975024(v116, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    v122 = v121(v119 + v118, 1, v120);
    v123 = v314;
    if (v122 == 1)
    {
      sub_1B4975024(v119, &qword_1EB8ACAB8, &qword_1B4D3CE18);
      goto LABEL_49;
    }

    goto LABEL_34;
  }

  v135 = v308;
  sub_1B4974FBC(v119, v308, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v136 = v121(v119 + v118, 1, v120);
  v123 = v314;
  if (v136 == 1)
  {
    sub_1B4975024(v315, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    sub_1B4C3DEFC(v135, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
LABEL_34:
    v126 = &qword_1EB8AD108;
    v127 = &qword_1B4D3F978;
    v128 = v119;
    goto LABEL_72;
  }

  v137 = v119 + v118;
  v138 = v302;
  sub_1B4C2FF48(v137, v302, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  v139 = _s19FitnessIntelligence06Apple_a1_B23_ActivitySummaryContextV2eeoiySbAC_ACtFZ_0(v135, v138);
  sub_1B4C3DEFC(v138, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4975024(v315, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  sub_1B4C3DEFC(v135, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  sub_1B4975024(v119, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  if ((v139 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_49:
  v140 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v114 + v140, v123, &qword_1EB8A6678, &qword_1B4D3CE20);
  v141 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  v142 = *(v303 + 48);
  v143 = v305;
  sub_1B4974FBC(v123, v305, &qword_1EB8A6678, &qword_1B4D3CE20);
  v144 = v109 + v141;
  v145 = v143;
  sub_1B4974FBC(v144, v143 + v142, &qword_1EB8A6678, &qword_1B4D3CE20);
  v146 = *(v304 + 48);
  v147 = v143;
  v148 = v306;
  if (v146(v147, 1, v306) == 1)
  {
    sub_1B4975024(v123, &qword_1EB8A6678, &qword_1B4D3CE20);
    v149 = v146(v145 + v142, 1, v148);
    v150 = v307;
    if (v149 == 1)
    {
      sub_1B4975024(v145, &qword_1EB8A6678, &qword_1B4D3CE20);
      goto LABEL_52;
    }

LABEL_60:
    v126 = &qword_1EB8AAF08;
    v127 = &unk_1B4D32530;
LABEL_71:
    v128 = v145;
    goto LABEL_72;
  }

  v169 = v301;
  sub_1B4974FBC(v145, v301, &qword_1EB8A6678, &qword_1B4D3CE20);
  v170 = v146(v145 + v142, 1, v148);
  v150 = v307;
  if (v170 == 1)
  {
    sub_1B4975024(v123, &qword_1EB8A6678, &qword_1B4D3CE20);
    sub_1B4C3DEFC(v169, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    goto LABEL_60;
  }

  v171 = v145 + v142;
  v172 = v296;
  sub_1B4C2FF48(v171, v296, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  if (*v169 != *v172 || v169[1] != v172[1] || (sub_1B4A1A2C8(v169[2], v172[2]) & 1) == 0)
  {
    v175 = &qword_1EB8A6678;
    v176 = &qword_1B4D3CE20;
    sub_1B4975024(v123, &qword_1EB8A6678, &qword_1B4D3CE20);
    v177 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties;
    v178 = v172;
    v179 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties;
LABEL_67:
    sub_1B4C3DEFC(v178, v177);
    sub_1B4C3DEFC(v169, v179);
    v128 = v145;
    v126 = v175;
    v127 = v176;
    goto LABEL_72;
  }

  v173 = *(v306 + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v174 = sub_1B4D1816C();
  sub_1B4975024(v123, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4C3DEFC(v172, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4C3DEFC(v169, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4975024(v145, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((v174 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_52:
  v151 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v114 + v151, v150, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v152 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  v153 = *(v297 + 48);
  v154 = v150;
  v155 = v150;
  v156 = v299;
  sub_1B4974FBC(v154, v299, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v157 = v109 + v152;
  v145 = v156;
  sub_1B4974FBC(v157, v156 + v153, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v158 = *(v298 + 48);
  v159 = v156;
  v160 = v300;
  if (v158(v159, 1, v300) == 1)
  {
    sub_1B4975024(v155, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    v161 = v158(v145 + v153, 1, v160);
    v162 = v295;
    if (v161 == 1)
    {
      sub_1B4975024(v145, &qword_1EB8ACAD0, &qword_1B4D3CE28);
      goto LABEL_55;
    }

    goto LABEL_70;
  }

  v169 = v294;
  sub_1B4974FBC(v145, v294, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  if (v158(v145 + v153, 1, v160) == 1)
  {
    sub_1B4975024(v307, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    sub_1B4C3DEFC(v169, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
LABEL_70:
    v126 = &qword_1EB8AD100;
    v127 = &unk_1B4D3F968;
    goto LABEL_71;
  }

  v181 = v289;
  sub_1B4C2FF48(v145 + v153, v289, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  if ((sub_1B4A14918(*v169, *v181) & 1) == 0 || (sub_1B4A14918(v169[1], *(v181 + 8)) & 1) == 0)
  {
    v175 = &qword_1EB8ACAD0;
    v176 = &qword_1B4D3CE28;
    sub_1B4975024(v307, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    v177 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext;
LABEL_80:
    v179 = v177;
    v178 = v181;
    goto LABEL_67;
  }

  v182 = *(v300 + 24);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v183 = sub_1B4D1816C();
  sub_1B4975024(v307, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  sub_1B4C3DEFC(v181, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4C3DEFC(v169, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  sub_1B4975024(v145, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v162 = v295;
  if ((v183 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_55:
  v163 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v114 + v163, v162, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v164 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  v165 = *(v290 + 48);
  v166 = v293;
  sub_1B4974FBC(v162, v293, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  sub_1B4974FBC(v109 + v164, v166 + v165, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v167 = v292;
  v168 = *(v291 + 48);
  if (v168(v166, 1, v292) == 1)
  {
    sub_1B4975024(v162, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    if (v168(v166 + v165, 1, v167) == 1)
    {
      sub_1B4975024(v166, &qword_1EB8ACAE0, &qword_1B4D3CE30);
      goto LABEL_85;
    }

LABEL_83:
    v126 = &qword_1EB8AD0F8;
    v127 = &qword_1B4D3F960;
LABEL_91:
    v128 = v166;
    goto LABEL_72;
  }

  v184 = v287;
  sub_1B4974FBC(v166, v287, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  if (v168(v166 + v165, 1, v167) == 1)
  {
    sub_1B4975024(v295, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    sub_1B4C3DEFC(v184, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    goto LABEL_83;
  }

  v185 = v166 + v165;
  v186 = v282;
  sub_1B4C2FF48(v185, v282, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  ContextV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B20_TrainingLoadContextV2eeoiySbAC_ACtFZ_0(v184, v186);
  sub_1B4C3DEFC(v186, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4975024(v295, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  sub_1B4C3DEFC(v184, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  sub_1B4975024(v166, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  if ((ContextV2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_85:
  v188 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  v189 = v288;
  sub_1B4974FBC(v114 + v188, v288, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v190 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  v191 = *(v283 + 48);
  v192 = v286;
  sub_1B4974FBC(v189, v286, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v166 = v192;
  sub_1B4974FBC(v109 + v190, v192 + v191, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v193 = v285;
  v194 = *(v284 + 48);
  if (v194(v192, 1, v285) == 1)
  {
    sub_1B4975024(v189, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    if (v194(v192 + v191, 1, v193) == 1)
    {
      sub_1B4975024(v192, &qword_1EB8ACAF0, &qword_1B4D3CE38);
      goto LABEL_93;
    }

    goto LABEL_90;
  }

  v195 = v280;
  sub_1B4974FBC(v192, v280, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  if (v194(v192 + v191, 1, v193) == 1)
  {
    sub_1B4975024(v288, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    sub_1B4C3DEFC(v195, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
LABEL_90:
    v126 = &qword_1EB8AD0F0;
    v127 = &qword_1B4D3F958;
    goto LABEL_91;
  }

  v196 = v192 + v191;
  v197 = v275;
  sub_1B4C2FF48(v196, v275, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  v198 = _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV2eeoiySbAC_ACtFZ_0(v195, v197);
  sub_1B4C3DEFC(v197, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4975024(v288, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  sub_1B4C3DEFC(v195, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  sub_1B4975024(v192, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  if ((v198 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_93:
  v199 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  v200 = v281;
  sub_1B4974FBC(v114 + v199, v281, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v201 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  v202 = *(v276 + 48);
  v203 = v278;
  sub_1B4974FBC(v200, v278, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v204 = v109 + v201;
  v145 = v203;
  sub_1B4974FBC(v204, v203 + v202, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v205 = *(v277 + 48);
  v206 = v203;
  v207 = v279;
  if (v205(v206, 1, v279) == 1)
  {
    sub_1B4975024(v200, &qword_1EB8ACB00, &unk_1B4D3CE40);
    if (v205(v145 + v202, 1, v207) == 1)
    {
      sub_1B4975024(v145, &qword_1EB8ACB00, &unk_1B4D3CE40);
      goto LABEL_96;
    }

    goto LABEL_107;
  }

  v232 = v273;
  sub_1B4974FBC(v145, v273, &qword_1EB8ACB00, &unk_1B4D3CE40);
  if (v205(v145 + v202, 1, v207) == 1)
  {
    sub_1B4975024(v281, &qword_1EB8ACB00, &unk_1B4D3CE40);
    sub_1B4C3DEFC(v232, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
LABEL_107:
    v126 = &qword_1EB8AD0E8;
    v127 = &qword_1B4D3F950;
    goto LABEL_71;
  }

  v181 = v268;
  sub_1B4C2FF48(v145 + v202, v268, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  if ((sub_1B4A1A7B8(*v232, *v181) & 1) == 0 || *(v232 + 8) != *(v181 + 8) || *(v232 + 16) != *(v181 + 16))
  {
    v175 = &qword_1EB8ACB00;
    v169 = v232;
    v176 = &unk_1B4D3CE40;
    sub_1B4975024(v281, &qword_1EB8ACB00, &unk_1B4D3CE40);
    v177 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext;
    goto LABEL_80;
  }

  v233 = v232;
  v234 = *(v279 + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v235 = sub_1B4D1816C();
  sub_1B4975024(v281, &qword_1EB8ACB00, &unk_1B4D3CE40);
  sub_1B4C3DEFC(v181, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4C3DEFC(v233, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  sub_1B4975024(v145, &qword_1EB8ACB00, &unk_1B4D3CE40);
  if ((v235 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_96:
  v208 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  v209 = v274;
  sub_1B4974FBC(v114 + v208, v274, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v210 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  v211 = *(v269 + 48);
  v212 = v209;
  v213 = v272;
  sub_1B4974FBC(v212, v272, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v166 = v213;
  sub_1B4974FBC(v109 + v210, v213 + v211, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v214 = v271;
  v215 = *(v270 + 48);
  if (v215(v213, 1, v271) == 1)
  {
    sub_1B4975024(v274, &qword_1EB8A6660, &unk_1B4D2FDB0);
    if (v215(v213 + v211, 1, v214) == 1)
    {
      sub_1B4975024(v213, &qword_1EB8A6660, &unk_1B4D2FDB0);
      goto LABEL_99;
    }

    goto LABEL_116;
  }

  v236 = v264;
  sub_1B4974FBC(v213, v264, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if (v215(v213 + v211, 1, v214) == 1)
  {
    sub_1B4975024(v274, &qword_1EB8A6660, &unk_1B4D2FDB0);
    sub_1B4C3DEFC(v236, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
LABEL_116:
    v126 = &qword_1EB8AAF18;
    v127 = &qword_1B4D32540;
    goto LABEL_91;
  }

  v237 = v260;
  sub_1B4C2FF48(v166 + v211, v260, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  if (*v236 != *v237 || v236[1] != v237[1] || (sub_1B4A185B4(v236[2], v237[2]) & 1) == 0)
  {
    sub_1B4975024(v274, &qword_1EB8A6660, &unk_1B4D2FDB0);
    sub_1B4C3DEFC(v237, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4C3DEFC(v236, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4975024(v272, &qword_1EB8A6660, &unk_1B4D2FDB0);
    goto LABEL_73;
  }

  v238 = *(v271 + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v239 = sub_1B4D1816C();
  sub_1B4975024(v274, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4C3DEFC(v237, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4C3DEFC(v236, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4975024(v272, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v109 = v317;
  if ((v239 & 1) == 0)
  {
LABEL_73:

    return 0;
  }

LABEL_99:
  v216 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v217 = v114;
  v218 = v265;
  sub_1B4974FBC(v114 + v216, v265, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v219 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v220 = *(v261 + 48);
  v221 = v218;
  v222 = v267;
  sub_1B4974FBC(v221, v267, &qword_1EB8ACB18, &qword_1B4D3CE50);
  sub_1B4974FBC(v109 + v219, v222 + v220, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v223 = *(v262 + 48);
  if (v223(v222, 1, v266) == 1)
  {
    sub_1B4975024(v265, &qword_1EB8ACB18, &qword_1B4D3CE50);
    if (v223(v267 + v220, 1, v266) == 1)
    {
      sub_1B4975024(v267, &qword_1EB8ACB18, &qword_1B4D3CE50);
      goto LABEL_102;
    }

    goto LABEL_125;
  }

  v240 = v267;
  sub_1B4974FBC(v267, v263, &qword_1EB8ACB18, &qword_1B4D3CE50);
  if (v223(v240 + v220, 1, v266) == 1)
  {
    sub_1B4975024(v265, &qword_1EB8ACB18, &qword_1B4D3CE50);
    sub_1B4C3DEFC(v263, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
LABEL_125:
    v126 = &qword_1EB8AD0E0;
    v127 = &unk_1B4D3F940;
    v128 = v267;
    goto LABEL_72;
  }

  v241 = v258;
  sub_1B4C2FF48(v267 + v220, v258, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  if ((sub_1B4A15BE0(*v263, *v241) & 1) == 0)
  {
    sub_1B4975024(v265, &qword_1EB8ACB18, &qword_1B4D3CE50);
    sub_1B4C3DEFC(v258, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    sub_1B4C3DEFC(v263, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    v128 = v267;
    v126 = &qword_1EB8ACB18;
    v127 = &qword_1B4D3CE50;
    goto LABEL_72;
  }

  v242 = *(v266 + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v243 = v263;
  v244 = v258;
  v245 = sub_1B4D1816C();
  sub_1B4975024(v265, &qword_1EB8ACB18, &qword_1B4D3CE50);
  sub_1B4C3DEFC(v244, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4C3DEFC(v243, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  sub_1B4975024(v267, &qword_1EB8ACB18, &qword_1B4D3CE50);
  if ((v245 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_102:
  v224 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  v225 = v259;
  sub_1B4974FBC(v217 + v224, v259, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v226 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  v227 = v317;
  swift_beginAccess();
  v228 = *(v255 + 48);
  v229 = v225;
  v230 = v253;
  sub_1B4974FBC(v229, v253, &qword_1EB8ACB28, &unk_1B4D3CE58);
  sub_1B4974FBC(v227 + v226, v230 + v228, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v231 = *(v257 + 48);
  if (v231(v230, 1, v252) != 1)
  {
    v246 = v253;
    sub_1B4974FBC(v253, v256, &qword_1EB8ACB28, &unk_1B4D3CE58);
    if (v231(v246 + v228, 1, v252) == 1)
    {

      sub_1B4975024(v259, &qword_1EB8ACB28, &unk_1B4D3CE58);
      sub_1B4C3DEFC(v256, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
      goto LABEL_131;
    }

    v247 = v253;
    v248 = &v253[v228];
    v249 = v254;
    sub_1B4C2FF48(v248, v254, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    v250 = v256;
    v251 = _s19FitnessIntelligence06Apple_a1_B16_LocationContextV2eeoiySbAC_ACtFZ_0(v256, v249);

    sub_1B4C3DEFC(v249, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    sub_1B4975024(v259, &qword_1EB8ACB28, &unk_1B4D3CE58);
    sub_1B4C3DEFC(v250, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    sub_1B4975024(v247, &qword_1EB8ACB28, &unk_1B4D3CE58);
    return (v251 & 1) != 0;
  }

  sub_1B4975024(v259, &qword_1EB8ACB28, &unk_1B4D3CE58);
  if (v231(&v253[v228], 1, v252) != 1)
  {
LABEL_131:
    sub_1B4975024(v253, &qword_1EB8AD0D8, &qword_1B4D3F938);
    return 0;
  }

  sub_1B4975024(v253, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return 1;
}

uint64_t sub_1B4C2ED84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD070, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C2EE24(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C2EE90()
{
  sub_1B4C3E0DC(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C2EF50()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC7B0);
  __swift_project_value_buffer(v0, qword_1EB8AC7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B4D35480;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "ACTIVITY_SHARING";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ACTIVITY_SUMMARY";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RINGS_PROPERTIES";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WEEKLY_SUMMARY";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TRAINING_LOAD";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "VITALS";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AWARDS";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "WORKOUT_PROPERTIES";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "WORKOUT_WEEK_CONTEXT";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LOCATION_CONTEXT";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C2F368()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC7C8);
  __swift_project_value_buffer(v0, qword_1EB8AC7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indoor";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutActivityType.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1B4D17C5C();
        break;
      case 1:
LABEL_8:
        sub_1B4D17CAC();
        break;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutActivityType.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17DFC(), !v1))
  {
    if (*(v0 + 4) != 1 || (result = sub_1B4D17DCC(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_1B4D17DFC(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C2F754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C2F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD068, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C2F86C(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C2F8D8()
{
  sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C2F974()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC7E0);
  __swift_project_value_buffer(v0, qword_1EB8AC7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B4D2FD70;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "cacheIndex";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "pausedInterval";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "moveGoal";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "moveProgress";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "moveMinutesGoal";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "moveMinutesProgress";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "exerciseGoal";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "exerciseProgress";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "standGoal";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "standProgress";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "stepCount";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "flightCount";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "distance";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "activityMoveMode";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isWheelchairUser";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isPaused";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C2FEF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B4C2FF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C30070()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  *v14 = 0;
  *(v14 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser) = 2;
  *(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused) = 0;
  return v0;
}

uint64_t sub_1B4C301F4()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1B4C3D764(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_1B4C3031C(v11, a1, a2, a3);
}

uint64_t sub_1B4C3031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1B4AC9620();
          break;
        case 2:
          sub_1B4C305C4();
          break;
        case 3:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
          goto LABEL_5;
        case 4:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
          goto LABEL_5;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
          goto LABEL_5;
        case 6:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
          goto LABEL_5;
        case 7:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
          goto LABEL_5;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
          goto LABEL_5;
        case 9:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
          goto LABEL_5;
        case 10:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
          goto LABEL_5;
        case 11:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
          goto LABEL_5;
        case 12:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
          goto LABEL_5;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
LABEL_5:
          sub_1B4C306A0(v11, v12, v13, v14, v15);
          break;
        case 14:
          sub_1B4C30728();
          break;
        case 15:
          v16 = MEMORY[0x1E69AAC38];
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
          goto LABEL_16;
        case 16:
          v16 = MEMORY[0x1E69AAC40];
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
LABEL_16:
          sub_1B4C307B4(v17, v18, v19, v20, v21, v16);
          break;
        default:
          break;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C305C4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4C3E0DC(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C306A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1B4D17CEC();
  return swift_endAccess();
}

uint64_t sub_1B4C30728()
{
  swift_beginAccess();
  sub_1B4D17C9C();
  return swift_endAccess();
}

uint64_t sub_1B4C307B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B4C3088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4C30B30(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance);
      sub_1B4C30DE8(a1);
      sub_1B4C30E74(a1);
      v10 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
      result = swift_beginAccess();
      if (*(a1 + v10) == 1)
      {
        return sub_1B4D17DCC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C30B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8AB768, &unk_1B4D3CDE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8AB768, &unk_1B4D3CDE0);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4C3E0DC(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
}

uint64_t sub_1B4C30D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4C30DE8(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return sub_1B4D17DFC();
  }

  return result;
}

uint64_t sub_1B4C30E74(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4C30F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v109 = *(v4 - 8);
  v5 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0B0, &unk_1B4D3F900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v105 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108 = (&v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  if (v18 != *(a2 + 16))
  {
    goto LABEL_18;
  }

  v106 = v7;
  v107 = a2;
  v19 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  v20 = a1;
  sub_1B4974FBC(a1 + v19, v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v21 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  v22 = v107;
  swift_beginAccess();
  v23 = *(v8 + 48);
  sub_1B4974FBC(v17, v11, &qword_1EB8AB768, &unk_1B4D3CDE0);
  sub_1B4974FBC(v22 + v21, &v11[v23], &qword_1EB8AB768, &unk_1B4D3CDE0);
  v24 = *(v109 + 48);
  if (v24(v11, 1, v4) == 1)
  {

    sub_1B4975024(v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
    v25 = v24(&v11[v23], 1, v4);
    v26 = a1;
    if (v25 == 1)
    {
      sub_1B4975024(v11, &qword_1EB8AB768, &unk_1B4D3CDE0);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v32 = v108;
  sub_1B4974FBC(v11, v108, &qword_1EB8AB768, &unk_1B4D3CDE0);
  if (v24(&v11[v23], 1, v4) == 1)
  {

    sub_1B4975024(v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
    sub_1B4C3DEFC(v32, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
LABEL_10:
    v33 = &qword_1EB8AD0B0;
    v34 = &unk_1B4D3F900;
    v35 = v11;
LABEL_16:
    sub_1B4975024(v35, v33, v34);
    goto LABEL_17;
  }

  v36 = &v11[v23];
  v37 = v106;
  sub_1B4C2FF48(v36, v106, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  if (*v32 != *v37 || v32[1] != v37[1])
  {

    sub_1B4C3DEFC(v37, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    sub_1B4975024(v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
    sub_1B4C3DEFC(v32, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    v35 = v11;
    v33 = &qword_1EB8AB768;
    v34 = &unk_1B4D3CDE0;
    goto LABEL_16;
  }

  v38 = *(v4 + 24);
  sub_1B4D17BCC();
  v109 = sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v26 = v20;

  v39 = sub_1B4D1816C();
  sub_1B4C3DEFC(v37, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  sub_1B4975024(v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
  sub_1B4C3DEFC(v32, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  v22 = v107;
  sub_1B4975024(v11, &qword_1EB8AB768, &unk_1B4D3CDE0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v27 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  swift_beginAccess();
  v31 = *(v30 + 8);
  if (v29)
  {
    if ((*(v30 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v30 + 8) & 1) != 0 || v28 != *v30)
  {
    goto LABEL_17;
  }

  v42 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  swift_beginAccess();
  v46 = *(v45 + 8);
  if (v44)
  {
    if ((*(v45 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v45 + 8) & 1) != 0 || v43 != *v45)
  {
    goto LABEL_17;
  }

  v47 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  swift_beginAccess();
  v48 = *v47;
  v49 = *(v47 + 8);
  v50 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  swift_beginAccess();
  v51 = *(v50 + 8);
  if (v49)
  {
    if ((*(v50 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v50 + 8) & 1) != 0 || v48 != *v50)
  {
    goto LABEL_17;
  }

  v52 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  swift_beginAccess();
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  swift_beginAccess();
  v56 = *(v55 + 8);
  if (v54)
  {
    if ((*(v55 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v55 + 8) & 1) != 0 || v53 != *v55)
  {
    goto LABEL_17;
  }

  v57 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  swift_beginAccess();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  swift_beginAccess();
  v61 = *(v60 + 8);
  if (v59)
  {
    if ((*(v60 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v60 + 8) & 1) != 0 || v58 != *v60)
  {
    goto LABEL_17;
  }

  v62 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  swift_beginAccess();
  v63 = *v62;
  v64 = *(v62 + 8);
  v65 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  swift_beginAccess();
  v66 = *(v65 + 8);
  if (v64)
  {
    if ((*(v65 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v65 + 8) & 1) != 0 || v63 != *v65)
  {
    goto LABEL_17;
  }

  v67 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  swift_beginAccess();
  v71 = *(v70 + 8);
  if (v69)
  {
    if ((*(v70 + 8) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(v70 + 8) & 1) != 0 || v68 != *v70)
  {
    goto LABEL_17;
  }

  v72 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  swift_beginAccess();
  v73 = *v72;
  v74 = *(v72 + 8);
  v75 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  swift_beginAccess();
  v76 = *(v75 + 8);
  if ((v74 & 1) == 0)
  {
    if ((*(v75 + 8) & 1) != 0 || v73 != *v75)
    {
      goto LABEL_17;
    }

LABEL_57:
    v77 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
    swift_beginAccess();
    v78 = *v77;
    v79 = *(v77 + 8);
    v80 = v22 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
    swift_beginAccess();
    v81 = *(v80 + 8);
    if (v79)
    {
      if ((*(v80 + 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v80 + 8) & 1) != 0 || v78 != *v80)
    {
      goto LABEL_17;
    }

    v82 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
    swift_beginAccess();
    v83 = *v82;
    v84 = *(v82 + 8);
    v85 = v107 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
    swift_beginAccess();
    v86 = *(v85 + 8);
    if (v84)
    {
      if ((*(v85 + 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v85 + 8) & 1) != 0 || v83 != *v85)
    {
      goto LABEL_17;
    }

    v87 = v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
    swift_beginAccess();
    v88 = *v87;
    v89 = *(v87 + 8);
    v90 = v107 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
    swift_beginAccess();
    v91 = *(v90 + 8);
    if (v89)
    {
      if ((*(v90 + 8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v90 + 8) & 1) != 0 || v88 != *v90)
    {
      goto LABEL_17;
    }

    v92 = (v26 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode);
    swift_beginAccess();
    v93 = *v92;
    v94 = *(v92 + 4);
    v95 = v107 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
    swift_beginAccess();
    v96 = *(v95 + 4);
    if (v94)
    {
      if ((*(v95 + 4) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((*(v95 + 4) & 1) != 0 || v93 != *v95)
    {
      goto LABEL_17;
    }

    v97 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
    swift_beginAccess();
    v98 = *(v26 + v97);
    v99 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
    v100 = v107;
    swift_beginAccess();
    v101 = *(v100 + v99);
    if (v98 == 2)
    {
      if (v101 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v101 == 2 || ((v98 ^ v101) & 1) != 0)
    {
      goto LABEL_17;
    }

    v102 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
    swift_beginAccess();
    LOBYTE(v102) = *(v26 + v102);

    v103 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
    v104 = v107;
    swift_beginAccess();
    LOBYTE(v103) = *(v104 + v103);

    v40 = v102 ^ v103 ^ 1;
    return v40 & 1;
  }

  if (*(v75 + 8))
  {
    goto LABEL_57;
  }

LABEL_17:

LABEL_18:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1B4C31A7C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_1B4D17BBC();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1B4C31B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD060, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C31BE4(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C31C50()
{
  sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0), sub_1B4C3E0DC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C31F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD058, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C32008(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C32074()
{
  sub_1B4C3E0DC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C32154()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC828);
  __swift_project_value_buffer(v0, qword_1EB8AC828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D35480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fullName";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timeZoneIdentifier";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "workouts";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "relationshipStartDate";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "hasCompletedCompetition";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isCompetitionActive";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 9;
  *v23 = "activitySummaries";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "activeCompetitionUUID";
  *(v25 + 1) = 21;
  v25[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_1B4D17CFC();
            goto LABEL_6;
          }

LABEL_25:
          sub_1B4D17C5C();
          goto LABEL_6;
        }

        switch(result)
        {
          case 8:
            goto LABEL_25;
          case 9:
            v5 = v0;
            type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
            sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
LABEL_28:
            v0 = v5;
            sub_1B4D17D3C();
            break;
          case 10:
            v3 = v0;
            v6 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56);
            goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v3 = v0;
            v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 48);
LABEL_5:
            v0 = v3;
            sub_1B4D17D0C();
            goto LABEL_6;
          }

          if (result == 4)
          {
            v3 = v0;
            v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 52);
            goto LABEL_5;
          }

          v5 = v0;
          type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
          sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
          goto LABEL_28;
        }

        if (result == 1)
        {
          sub_1B4D17D1C();
        }

        else if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    result = sub_1B4C32A1C(v3);
    if (!v4)
    {
      sub_1B4C371F8(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      sub_1B4C3727C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
        sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
        sub_1B4D17E5C();
      }

      if (*(v3 + 24))
      {
        sub_1B4D17E2C();
      }

      if (*(v3 + 32) == 1)
      {
        sub_1B4D17DCC();
      }

      if (*(v3 + 33) == 1)
      {
        sub_1B4D17DCC();
      }

      if (*(*(v3 + 40) + 16))
      {
        type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
        sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        sub_1B4D17E5C();
      }

      sub_1B4C32A94(v3);
      v12 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 40);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C32A1C(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C32A94(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v3 = (a1 + *(result + 56));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C32B58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v4;
  v5 = a2 + a1[10];
  result = sub_1B4D17BBC();
  v7 = a1[12];
  v8 = (a2 + a1[11]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[14];
  v11 = (a2 + a1[13]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_1B4C32C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD050, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C32CC4(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C32D30()
{
  sub_1B4C3E0DC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C32DD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000031;
  *a5 = 0x80000001B4D632A0;
  return result;
}

uint64_t sub_1B4C32E68()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC850);
  __swift_project_value_buffer(v0, qword_1EB8AC850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "endDate";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1B4D17CFC();
    }

    else if (result == 1)
    {
      sub_1B4C33144();
    }
  }

  return result;
}

uint64_t sub_1B4C33144()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4C332BC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1B4D17E2C();
    }

    if (v3[1])
    {
      sub_1B4D17E2C();
    }

    v6 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 24);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C332BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  sub_1B4C3E0DC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
}

uint64_t sub_1B4C33524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = &a2[*(a1 + 24)];
  sub_1B4D17BBC();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4C33600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD048, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C336A0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3370C()
{
  sub_1B4C3E0DC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C33810()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C338F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4974FBC(a1 + *(v14 + 20), v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
}

uint64_t sub_1B4C33BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD040, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C33C5C(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C33CC8()
{
  sub_1B4C3E0DC(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C33DCC()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C33EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4974FBC(a1 + *(Context + 20), v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
}

uint64_t sub_1B4C3412C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1B4D17BBC();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1B4C34200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD038, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C342A0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3430C()
{
  sub_1B4C3E0DC(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C3438C()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D63AF0);
  qword_1EB8AC898 = 0xD00000000000002ELL;
  unk_1EB8AC8A0 = 0x80000001B4D63320;
  return result;
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CAC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17DFC(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0) + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C3464C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C346C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD030, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C34768(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C347D4()
{
  sub_1B4C3E0DC(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C34850(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C34978(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4C349FC()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4C34ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C34B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4974FBC(a1 + *(v14 + 20), v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
}

uint64_t sub_1B4C34E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD028, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C34EA8(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C34F14()
{
  sub_1B4C3E0DC(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C34F94()
{
  result = MEMORY[0x1B8C7C620](0x44736C617469562ELL, 0xEA00000000007961);
  qword_1EB8AC8D8 = 0xD000000000000028;
  unk_1EB8AC8E0 = 0x80000001B4D63350;
  return result;
}

uint64_t sub_1B4C3502C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC8E8);
  __swift_project_value_buffer(v0, qword_1EB8AC8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "heartRate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bloodOxygen";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "respiratoryRate";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wristTemperature";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "timeAsleep";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.VitalsDay.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          sub_1B4D17CAC();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.VitalsDay.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17DFC(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17DFC(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17DFC(), !v1))
      {
        if (!v0[3] || (result = sub_1B4D17DFC(), !v1))
        {
          if (!v0[4] || (result = sub_1B4D17DFC(), !v1))
          {
            v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0) + 36);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4C354F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 36);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C35570(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD020, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C35610(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3567C()
{
  sub_1B4C3E0DC(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C35718()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC900);
  __swift_project_value_buffer(v0, qword_1EB8AC900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "earnedAchievements";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dateIntervalStart";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dateIntervalEnd";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1B4D17CFC();
      }

      else if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
        sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0), sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award), result = sub_1B4D17E5C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E2C(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17E2C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C35BD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  v3 = a2 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C35C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD018, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C35CF0(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C35D5C()
{
  sub_1B4C3E0DC(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C35DDC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC918);
  __swift_project_value_buffer(v0, qword_1EB8AC918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WORKOUT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OTHER";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C36044()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC940);
  __swift_project_value_buffer(v0, qword_1EB8AC940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "year";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "month";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "day";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.DateComponents.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1B4D17CAC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.DateComponents.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17DFC(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17DFC(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17DFC(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4C36418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C36498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD010, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C36538(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C365A4()
{
  sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C36644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000028;
  *a5 = 0x80000001B4D63380;
  return result;
}

uint64_t sub_1B4C366D8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC968);
  __swift_project_value_buffer(v0, qword_1EB8AC968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1AA90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "templateUniqueName";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "earnedDateComponents";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "section";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "earnedInstanceCount";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "valueDouble";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "valueUnitString";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "goalDouble";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "goalUnitString";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "externalIdentifier";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1B4C3E124();
            sub_1B4D17C6C();
          }

          else if (result == 4)
          {
            sub_1B4D17D2C();
          }
        }

        else if (result == 1)
        {
          sub_1B4D17D1C();
        }

        else if (result == 2)
        {
          sub_1B4C36C58();
        }
      }

      else
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            v3 = v0;
            v6 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 40);
            goto LABEL_5;
          }

          v7 = v0;
          v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
          goto LABEL_27;
        }

        switch(result)
        {
          case 8:
            v7 = v0;
            v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
LABEL_27:
            v0 = v7;
            sub_1B4D17CEC();
            break;
          case 9:
            v3 = v0;
            v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 48);
LABEL_5:
            v0 = v3;
            sub_1B4D17D0C();
            break;
          case 10:
            v3 = v0;
            v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 52);
            goto LABEL_5;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C36C58()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    result = sub_1B4C36EEC(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        v13 = *(v3 + 16);
        v14 = *(v3 + 24);
        sub_1B4C3E124();
        sub_1B4D17DDC();
      }

      if (*(v3 + 28))
      {
        sub_1B4D17E4C();
      }

      sub_1B4C37108(v3);
      sub_1B4C37CA4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      sub_1B4C37180(v3);
      sub_1B4C371F8(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      sub_1B4C3727C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v12 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 28);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4C36EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  sub_1B4C3E0DC(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
}

uint64_t sub_1B4C37108(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4C37180(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4C371F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C3727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 52));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C3734C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 28) = 0;
  v4 = a2 + a1[7];
  sub_1B4D17BBC();
  v5 = a1[8];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a1[10];
  v9 = a2 + a1[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[12];
  v12 = a2 + a1[11];
  *(v12 + 8) = 1;
  *v12 = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + a1[13]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

uint64_t sub_1B4C37474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD008, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C37514(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C37580()
{
  sub_1B4C3E0DC(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C3761C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC980);
  __swift_project_value_buffer(v0, qword_1EB8AC980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B4D223F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "startDate";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "endDate";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "activityType";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "locationType";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "catalogWorkoutIdentifier";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "fitnessPlusCatalogWorkout";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        goto LABEL_16;
      }

      if (result == 2 || result == 3)
      {
        sub_1B4D17CFC();
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 40);
        sub_1B4D17D0C();
      }

      else if (result == 7)
      {
        sub_1B4C37A7C();
      }
    }

    else if (result == 4)
    {
      sub_1B4D17CCC();
    }

    else
    {
LABEL_16:
      sub_1B4D17D1C();
    }
  }
}

uint64_t sub_1B4C37A7C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  sub_1B4C3E0DC(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    if (!v3[2] || (result = sub_1B4D17E2C(), !v4))
    {
      if (!v3[3] || (result = sub_1B4D17E2C(), !v4))
      {
        if (!v3[4] || (result = sub_1B4D17E0C(), !v4))
        {
          v12 = v3[6];
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = v3[5] & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_1B4D17E3C(), !v4))
          {
            result = sub_1B4C37CA4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
            if (!v4)
            {
              sub_1B4C37D28(v3, a1, a2, a3);
              v14 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 36);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4C37CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C37D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(a1 + *(v14 + 44), v8, &qword_1EB8A6A28, &qword_1B4D20160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6A28, &qword_1B4D20160);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4C3E0DC(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
}

uint64_t sub_1B4C37F90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0xE000000000000000;
  v4 = a2 + a1[9];
  sub_1B4D17BBC();
  v5 = a1[10];
  v6 = a1[11];
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v6, 1, 1, v8);
}

uint64_t sub_1B4C38078(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8AD000, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C38118(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C38184()
{
  sub_1B4C3E0DC(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C382B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1B4C3E0DC(a5, a6);
      sub_1B4D17D3C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutWeekContext.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0), sub_1B4C3E0DC(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C384A4(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C385F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFF8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C38690(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C386FC()
{
  sub_1B4C3E0DC(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C38790(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C38858()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC9B0);
  __swift_project_value_buffer(v0, qword_1EB8AC9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentWeekSummaries";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "previousWeekSummaries";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
        sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0), sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary), result = sub_1B4D17E5C(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0), sub_1B4C3E0DC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary), result = sub_1B4D17E5C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_WeeklySummaryContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A14918(*a1, *a2) & 1) == 0 || (sub_1B4A14918(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0) + 24);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C38DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C38E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFF0, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C38EEC(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C38F58()
{
  sub_1B4C3E0DC(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C38FD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A14918(*a1, *a2) & 1) == 0 || (sub_1B4A14918(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C390A8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC9C8);
  __swift_project_value_buffer(v0, qword_1EB8AC9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "latitude";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "longitude";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "altitude";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1B4D17CFC();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E2C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E2C(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17E2C(), !v1))
      {
        if (!v0[3] || (result = sub_1B4D17E2C(), !v1))
        {
          v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0) + 32);
          return sub_1B4D17BAC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4C3954C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFE8, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C395EC(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C39658()
{
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4C396F4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC9E0);
  __swift_project_value_buffer(v0, qword_1EB8AC9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locality";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_LocationContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32);
LABEL_3:
        v0 = 0;
        sub_1B4D17D0C();
      }
    }

    else if (result == 1)
    {
      sub_1B4C39A54();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_1B4C39A54()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_LocationContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4C39BA8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4C39DC4(v3);
    sub_1B4C39E3C(v3);
    sub_1B4C39EB4(v3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4C39BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4974FBC(a1 + *(v14 + 20), v8, &qword_1EB8ABC28, &qword_1B4D38428);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

uint64_t sub_1B4C39DC4(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C39E3C(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C39EB4(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4C39F78(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4C3E0DC(a2, a3);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C3A000@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1B4C3A0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E0DC(&qword_1EB8ACFE0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4C3A180(uint64_t a1)
{
  v2 = sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4C3A1EC()
{
  sub_1B4C3E0DC(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A28ContextCoalescedQueryRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v5 = *(Descriptor - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD120, &qword_1B4D3F998);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v34 - v15;
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  v18 = a1;
  v19 = a2;
  v34[0] = Request;
  v34[1] = v18;
  v20 = *(Request + 24);
  v21 = *(v13 + 48);
  sub_1B4974FBC(v18 + v20, v16, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  sub_1B4974FBC(v19 + v20, &v16[v21], &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v22 = *(v5 + 48);
  if (v22(v16, 1, Descriptor) == 1)
  {
    if (v22(&v16[v21], 1, Descriptor) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8AA6B8, &qword_1B4D2FC68);
LABEL_14:
      v33 = *(v34[0] + 20);
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v25 = sub_1B4D1816C();
      return v25 & 1;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if (v22(&v16[v21], 1, Descriptor) == 1)
  {
    sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
LABEL_7:
    v23 = &qword_1EB8AD120;
    v24 = &qword_1B4D3F998;
LABEL_8:
    sub_1B4975024(v16, v23, v24);
    goto LABEL_9;
  }

  sub_1B4C2FF48(&v16[v21], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v27 = *(Descriptor + 20);
  v28 = *&v12[v27];
  v29 = *&v8[v27];
  if (v28 != v29)
  {
    v30 = *&v12[v27];

    v31 = sub_1B4C25BC8(v28, v29);

    if (!v31)
    {
      sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      v23 = &qword_1EB8AA6B8;
      v24 = &qword_1B4D2FC68;
      goto LABEL_8;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v32 = sub_1B4D1816C();
  sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4975024(v16, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if (v32)
  {
    goto LABEL_14;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A18ContextQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v86 = *(Metrics - 8);
  v87 = Metrics;
  v5 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v83 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v79 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  v11 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v13 = &v79 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v90 = *(v14 - 8);
  v91 = v14;
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v88 = &v79 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD118, &qword_1B4D3F990);
  v20 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v79 - v21;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v23 = *(Descriptor - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD120, &qword_1B4D3F998);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v79 - v33;
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    goto LABEL_35;
  }

  v79 = v10;
  v81 = v13;
  v80 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  v35 = *(v80 + 24);
  v36 = a1;
  v37 = *(v31 + 48);
  v82 = v36;
  sub_1B4974FBC(v36 + v35, v34, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v38 = a2 + v35;
  v39 = a2;
  sub_1B4974FBC(v38, &v34[v37], &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v40 = *(v23 + 48);
  if (v40(v34, 1, Descriptor) == 1)
  {
    if (v40(&v34[v37], 1, Descriptor) == 1)
    {
      sub_1B4975024(v34, &qword_1EB8AA6B8, &qword_1B4D2FC68);
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v34, v30, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if (v40(&v34[v37], 1, Descriptor) == 1)
  {
    sub_1B4C3DEFC(v30, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
LABEL_7:
    v41 = &qword_1EB8AD120;
    v42 = &qword_1B4D3F998;
LABEL_8:
    v43 = v34;
LABEL_34:
    sub_1B4975024(v43, v41, v42);
    goto LABEL_35;
  }

  sub_1B4C2FF48(&v34[v37], v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v44 = *(Descriptor + 20);
  v45 = *&v30[v44];
  v46 = *&v26[v44];
  if (v45 != v46)
  {
    v47 = *&v30[v44];

    v48 = sub_1B4C25BC8(v45, v46);

    if (!v48)
    {
      sub_1B4C3DEFC(v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      sub_1B4C3DEFC(v30, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      v41 = &qword_1EB8AA6B8;
      v42 = &qword_1B4D2FC68;
      goto LABEL_8;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v49 = sub_1B4D1816C();
  sub_1B4C3DEFC(v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4C3DEFC(v30, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  sub_1B4975024(v34, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  if ((v49 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  v50 = v80;
  v51 = *(v80 + 28);
  v52 = *(v89 + 48);
  v53 = v82;
  v54 = v92;
  sub_1B4974FBC(v82 + v51, v92, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  sub_1B4974FBC(v39 + v51, v54 + v52, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v55 = v91;
  v56 = *(v90 + 48);
  if (v56(v54, 1, v91) == 1)
  {
    v57 = v56(v54 + v52, 1, v55);
    v58 = v81;
    if (v57 == 1)
    {
      sub_1B4975024(v54, &qword_1EB8ACAA0, &unk_1B4D3CE00);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v59 = v88;
  sub_1B4974FBC(v54, v88, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v60 = v56(v54 + v52, 1, v55);
  v58 = v81;
  if (v60 == 1)
  {
    sub_1B4C3DEFC(v59, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
LABEL_17:
    v41 = &qword_1EB8AD118;
    v42 = &qword_1B4D3F990;
LABEL_18:
    v43 = v54;
    goto LABEL_34;
  }

  v61 = v84;
  sub_1B4C2FF48(v54 + v52, v84, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  v62 = *(v55 + 20);
  v63 = *(v59 + v62);
  v64 = *(v61 + v62);
  if (v63 != v64)
  {
    v65 = *(v59 + v62);

    v66 = sub_1B4C2C320(v63, v64);

    if (!v66)
    {
      sub_1B4C3DEFC(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      sub_1B4C3DEFC(v59, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      v41 = &qword_1EB8ACAA0;
      v42 = &unk_1B4D3CE00;
      goto LABEL_18;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v67 = sub_1B4D1816C();
  sub_1B4C3DEFC(v61, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4C3DEFC(v59, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  sub_1B4975024(v54, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  if ((v67 & 1) == 0)
  {
LABEL_35:
    v73 = 0;
    return v73 & 1;
  }

LABEL_22:
  v68 = *(v50 + 32);
  v69 = *(v85 + 48);
  sub_1B4974FBC(v53 + v68, v58, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4974FBC(v39 + v68, v58 + v69, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v70 = v87;
  v71 = *(v86 + 48);
  if (v71(v58, 1, v87) != 1)
  {
    v74 = v79;
    sub_1B4974FBC(v58, v79, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v71(v58 + v69, 1, v70) != 1)
    {
      v75 = v58 + v69;
      v76 = v83;
      sub_1B4C2FF48(v75, v83, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v74 == *v76 && *(v74 + 8) == *(v76 + 8) && *(v74 + 16) == *(v76 + 16))
      {
        v78 = *(v70 + 28);
        sub_1B4D17BCC();
        sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v78) = sub_1B4D1816C();
        sub_1B4C3DEFC(v76, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v78)
        {
          sub_1B4C3DEFC(v79, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_24;
        }
      }

      else
      {
        sub_1B4C3DEFC(v76, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4C3DEFC(v79, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v41 = &qword_1EB8A6670;
      v42 = &unk_1B4D2FDA0;
      v43 = v58;
      goto LABEL_34;
    }

    sub_1B4C3DEFC(v74, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_28;
  }

  if (v71(v58 + v69, 1, v70) != 1)
  {
LABEL_28:
    v41 = &qword_1EB8AAEF0;
    v42 = &qword_1B4D32518;
    v43 = v58;
    goto LABEL_34;
  }

LABEL_24:
  sub_1B4975024(v58, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v72 = *(v50 + 20);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v73 = sub_1B4D1816C();
  return v73 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_ActivitySummaryContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31[0] = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0D0, &qword_1B4D3F928);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  v17 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  v18 = *(v13 + 56);
  v31[1] = a1;
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A9C38, &qword_1B4D2B6E0);
LABEL_12:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v22 = sub_1B4D1816C();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v11, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
LABEL_6:
    v20 = &qword_1EB8AD0D0;
    v21 = &qword_1B4D3F928;
LABEL_7:
    sub_1B4975024(v16, v20, v21);
    goto LABEL_8;
  }

  v23 = v31[0];
  sub_1B4C2FF48(&v16[v18], v31[0], type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v24 = *(v4 + 20);
  v25 = *&v11[v24];
  v26 = *(v23 + v24);
  if (v25 != v26)
  {
    v27 = *&v11[v24];

    v28 = sub_1B4C30F48(v25, v26);

    if ((v28 & 1) == 0)
    {
      sub_1B4C3DEFC(v23, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v20 = &qword_1EB8A9C38;
      v21 = &qword_1B4D2B6E0;
      goto LABEL_7;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v29 = sub_1B4D1816C();
  sub_1B4C3DEFC(v23, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  sub_1B4975024(v16, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_ActivitySharingContextV7WorkoutV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC0, &qword_1B4D3F930);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v29 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v17 = *(v29 + 28);
  v18 = *(v13 + 56);
  v31 = a1;
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8A7CB8, &unk_1B4D20170);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1B4974FBC(v16, v11, &qword_1EB8A7CB8, &unk_1B4D20170);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v30;
      sub_1B4C2FF48(&v16[v18], v30, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      if (*v11 == *v24 && v11[4] == *(v24 + 4) && *(v11 + 2) == *(v24 + 8))
      {
        v25 = *(v4 + 28);
        sub_1B4D17BCC();
        sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v26 = sub_1B4D1816C();
        sub_1B4C3DEFC(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
        if (v26)
        {
          sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B4C3DEFC(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      }

      sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      v22 = &qword_1EB8A7CB8;
      v23 = &unk_1B4D20170;
LABEL_16:
      sub_1B4975024(v16, v22, v23);
LABEL_17:
      v21 = 0;
      return v21 & 1;
    }

    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
LABEL_8:
    v22 = &qword_1EB8A7CC0;
    v23 = &qword_1B4D3F930;
    goto LABEL_16;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B4975024(v16, &qword_1EB8A7CB8, &unk_1B4D20170);
  if (*v31 != *a2 || v31[1] != a2[1])
  {
    goto LABEL_17;
  }

  v20 = *(v29 + 24);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v21 = sub_1B4D1816C();
  return v21 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_ActivitySharingContextV6FriendV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v6 = v5[11];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[12];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v5[13];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (sub_1B4A14308(*(a1 + 16), *(a2 + 16)) & 1) != 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && (sub_1B4A14918(*(a1 + 40), *(a2 + 40)))
  {
    v24 = v5[14];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28 && (*v25 == *v27 && v26 == v28 || (sub_1B4D18DCC() & 1) != 0))
      {
        goto LABEL_43;
      }
    }

    else if (!v28)
    {
LABEL_43:
      v29 = v5[10];
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      return sub_1B4D1816C() & 1;
    }
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_WorkoutActivityTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0) + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_TrainingLoadContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0C8, &qword_1B4D3F920);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8AA510, &unk_1B4D3CDD0);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8AA510, &unk_1B4D3CDD0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1B4974FBC(v16, v11, &qword_1EB8AA510, &unk_1B4D3CDD0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v27[0];
      sub_1B4C2FF48(&v16[v18], v27[0], type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      if (*v11 == *v24)
      {
        v25 = *(v4 + 20);
        sub_1B4D17BCC();
        sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v26 = sub_1B4D1816C();
        sub_1B4C3DEFC(v24, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        sub_1B4975024(v16, &qword_1EB8AA510, &unk_1B4D3CDD0);
        if (v26)
        {
          goto LABEL_4;
        }

LABEL_9:
        v20 = 0;
        return v20 & 1;
      }

      sub_1B4C3DEFC(v24, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      v21 = &qword_1EB8AA510;
      v22 = &unk_1B4D3CDD0;
LABEL_8:
      sub_1B4975024(v16, v21, v22);
      goto LABEL_9;
    }

    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
LABEL_7:
    v21 = &qword_1EB8AD0C8;
    v22 = &qword_1B4D3F920;
    goto LABEL_8;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1B4975024(v16, &qword_1EB8AA510, &unk_1B4D3CDD0);
LABEL_4:
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v20 = sub_1B4D1816C();
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_LocationCoordinateV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0) + 32);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_LocationContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v43 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0A8, &qword_1B4D3F8F8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v46 = a1;
  v17 = *(v45 + 20);
  v18 = *(v13 + 56);
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8ABC28, &qword_1B4D38428);
  v19 = a2 + v17;
  v20 = a2;
  sub_1B4974FBC(v19, &v16[v18], &qword_1EB8ABC28, &qword_1B4D38428);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1B4974FBC(v16, v11, &qword_1EB8ABC28, &qword_1B4D38428);
    if (v21(&v16[v18], 1, v4) != 1)
    {
      v24 = v44;
      sub_1B4C2FF48(&v16[v18], v44, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      v25 = _s19FitnessIntelligence06Apple_a1_B19_LocationCoordinateV2eeoiySbAC_ACtFZ_0(v11, v24);
      sub_1B4C3DEFC(v24, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      sub_1B4975024(v16, &qword_1EB8ABC28, &qword_1B4D38428);
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8AD0A8, &qword_1B4D3F8F8);
    goto LABEL_7;
  }

  if (v21(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v16, &qword_1EB8ABC28, &qword_1B4D38428);
LABEL_10:
  v27 = v45;
  v26 = v46;
  v28 = *(v45 + 24);
  v29 = (v46 + v28);
  v30 = *(v46 + v28 + 8);
  v31 = (v20 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v32)
  {
    goto LABEL_7;
  }

  v33 = *(v27 + 28);
  v34 = (v26 + v33);
  v35 = *(v26 + v33 + 8);
  v36 = (v20 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v37)
  {
    goto LABEL_7;
  }

  v38 = *(v27 + 32);
  v39 = (v26 + v38);
  v40 = *(v26 + v38 + 8);
  v41 = (v20 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (v42 && (*v39 == *v41 && v40 == v42 || (sub_1B4D18DCC() & 1) != 0))
    {
      goto LABEL_31;
    }
  }

  else if (!v42)
  {
LABEL_31:
    sub_1B4D17BCC();
    sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v22 = sub_1B4D1816C();
    return v22 & 1;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1B4C3C66C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_WorkoutRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB0, &qword_1B4D20168);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v18 = *(v17 + 40);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22 || (*v19 != *v21 || v20 != v22) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v22)
  {
    goto LABEL_23;
  }

  v33 = v17;
  v23 = *(v17 + 44);
  v24 = *(v13 + 48);
  sub_1B4974FBC(a1 + v23, v16, &qword_1EB8A6A28, &qword_1B4D20160);
  v25 = a2 + v23;
  v26 = v24;
  sub_1B4974FBC(v25, &v16[v24], &qword_1EB8A6A28, &qword_1B4D20160);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v26], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6A28, &qword_1B4D20160);
LABEL_26:
      v31 = *(v33 + 36);
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v28 = sub_1B4D1816C();
      return v28 & 1;
    }

    goto LABEL_22;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A6A28, &qword_1B4D20160);
  if (v27(&v16[v26], 1, v4) == 1)
  {
    sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
LABEL_22:
    sub_1B4975024(v16, &qword_1EB8A7CB0, &qword_1B4D20168);
    goto LABEL_23;
  }

  sub_1B4C2FF48(&v16[v26], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  v30 = _s19FitnessIntelligence06Apple_a1_b1_A18PlusCatalogWorkoutV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  sub_1B4975024(v16, &qword_1EB8A6A28, &qword_1B4D20160);
  if (v30)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0C0, &qword_1B4D3F918);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8AA6C8, &unk_1B4D2FC70);
LABEL_9:
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v11, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8AD0C0, &qword_1B4D3F918);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1B4C2FF48(&v16[v18], v24[0], type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  v22 = _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV0D3DayV2eeoiySbAE_AEtFZ_0(v11, v21);
  sub_1B4C3DEFC(v21, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4C3DEFC(v11, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4975024(v16, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_VitalsContextV0D3DayV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0) + 36);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_AwardsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4A1A7B8(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0) + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_AwardsContextV5AwardV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v59 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0B8, &qword_1B4D3F910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v18 = *(v17 + 32);
  v19 = a1;
  v20 = *(v13 + 48);
  v59 = v17;
  v60 = v19;
  sub_1B4974FBC(v19 + v18, v16, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v21 = a2 + v18;
  v22 = a2;
  sub_1B4974FBC(v21, &v16[v20], &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v20], 1, v4) == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  if (v23(&v16[v20], 1, v4) == 1)
  {
    sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
LABEL_14:
    v27 = &qword_1EB8AD0B8;
    v28 = &qword_1B4D3F910;
LABEL_22:
    sub_1B4975024(v16, v27, v28);
    goto LABEL_23;
  }

  sub_1B4C2FF48(&v16[v20], v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  if (*v12 != *v8 || v12[1] != v8[1] || v12[2] != v8[2])
  {
    sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    goto LABEL_21;
  }

  v29 = *(v4 + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v30 = sub_1B4D1816C();
  sub_1B4C3DEFC(v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  if ((v30 & 1) == 0)
  {
LABEL_21:
    sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    v27 = &qword_1EB8ABFE8;
    v28 = &unk_1B4D3CDF0;
    goto LABEL_22;
  }

  sub_1B4C3DEFC(v12, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v22 = a2;
LABEL_6:
  sub_1B4975024(v16, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v24 = v60;
  v25 = v60[2];
  v26 = v22[2];
  if (*(v60 + 24))
  {
    v25 = v25 != 0;
  }

  if (*(v22 + 24) == 1)
  {
    if (v26)
    {
      if (v25 != 1)
      {
        goto LABEL_23;
      }
    }

    else if (v25)
    {
      goto LABEL_23;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_23;
  }

  if (*(v60 + 7) == *(v22 + 7))
  {
    v33 = v59[9];
    v34 = (v60 + v33);
    v35 = *(v60 + v33 + 8);
    v36 = (v22 + v33);
    v37 = *(v22 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
        goto LABEL_23;
      }
    }

    v38 = v59[10];
    v39 = (v60 + v38);
    v40 = *(v60 + v38 + 8);
    v41 = (v22 + v38);
    v42 = v41[1];
    if (v40)
    {
      if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v42)
    {
      goto LABEL_23;
    }

    v43 = v59[11];
    v44 = (v24 + v43);
    v45 = *(v24 + v43 + 8);
    v46 = (v22 + v43);
    v47 = *(v22 + v43 + 8);
    if (v45)
    {
      if (!v47)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (*v44 != *v46)
      {
        LOBYTE(v47) = 1;
      }

      if (v47)
      {
        goto LABEL_23;
      }
    }

    v48 = v59[12];
    v49 = (v24 + v48);
    v50 = *(v24 + v48 + 8);
    v51 = (v22 + v48);
    v52 = v51[1];
    if (v50)
    {
      if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1B4D18DCC() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v52)
    {
      goto LABEL_23;
    }

    v53 = v59[13];
    v54 = (v24 + v53);
    v55 = *(v24 + v53 + 8);
    v56 = (v22 + v53);
    v57 = v56[1];
    if (v55)
    {
      if (v57 && (*v54 == *v56 && v55 == v57 || (sub_1B4D18DCC() & 1) != 0))
      {
        goto LABEL_62;
      }
    }

    else if (!v57)
    {
LABEL_62:
      v58 = v59[7];
      sub_1B4D17BCC();
      sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v31 = sub_1B4D1816C();
      return v31 & 1;
    }
  }

LABEL_23:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_AwardsContextV14DateComponentsV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0) + 28);
  sub_1B4D17BCC();
  sub_1B4C3E0DC(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4C3D764(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v61 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  v62 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  v63 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  v64 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  v65 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  v66 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  v67 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  v68 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  v69 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  v70 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  *(v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser) = 2;
  v71 = v21;
  v72 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  *(v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused) = 0;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v22;
  v23 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v23, v6, &qword_1EB8AB768, &unk_1B4D3CDE0);
  swift_beginAccess();
  sub_1B49A205C(v6, v1 + v7, &qword_1EB8AB768, &unk_1B4D3CDE0);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  swift_beginAccess();
  *v9 = v25;
  *(v9 + 8) = v24;
  v26 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v10 = v27;
  *(v10 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v11 = v29;
  *(v11 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = v62;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v30;
  v33 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v63;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = v64;
  swift_beginAccess();
  *v38 = v37;
  *(v38 + 8) = v36;
  v39 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal);
  swift_beginAccess();
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = v65;
  swift_beginAccess();
  *v41 = v40;
  *(v41 + 8) = v39;
  v42 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  v44 = v66;
  swift_beginAccess();
  *v44 = v43;
  *(v44 + 8) = v42;
  v45 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = v67;
  swift_beginAccess();
  *v47 = v46;
  *(v47 + 8) = v45;
  v48 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount);
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  v50 = v68;
  swift_beginAccess();
  *v50 = v49;
  *(v50 + 8) = v48;
  v51 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance);
  swift_beginAccess();
  v52 = *v51;
  LOBYTE(v51) = *(v51 + 8);
  v53 = v69;
  swift_beginAccess();
  *v53 = v52;
  *(v53 + 8) = v51;
  v54 = a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  LODWORD(v52) = *v54;
  LOBYTE(v54) = *(v54 + 4);
  v55 = v70;
  swift_beginAccess();
  *v55 = v52;
  *(v55 + 4) = v54;
  v56 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + v56);
  v57 = v71;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v58);
  v59 = v72;
  swift_beginAccess();
  *(v1 + v59) = a1;
  return v1;
}

uint64_t sub_1B4C3DE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C3DEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C3E0DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4C3E124()
{
  result = qword_1EB8ACBC0;
  if (!qword_1EB8ACBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACBC0);
  }

  return result;
}

unint64_t sub_1B4C3E17C()
{
  result = qword_1EB8ACBF8;
  if (!qword_1EB8ACBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACBF8);
  }

  return result;
}

unint64_t sub_1B4C3E1D4()
{
  result = qword_1EB8ACC00;
  if (!qword_1EB8ACC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC00);
  }

  return result;
}

unint64_t sub_1B4C3E25C()
{
  result = qword_1EB8ACC18;
  if (!qword_1EB8ACC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC18);
  }

  return result;
}

unint64_t sub_1B4C3E2B4()
{
  result = qword_1EB8ACC20;
  if (!qword_1EB8ACC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC20);
  }

  return result;
}

unint64_t sub_1B4C3E30C()
{
  result = qword_1EB8ACC28;
  if (!qword_1EB8ACC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC28);
  }

  return result;
}

unint64_t sub_1B4C3E394()
{
  result = qword_1EB8ACC40;
  if (!qword_1EB8ACC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC40);
  }

  return result;
}

unint64_t sub_1B4C3E3EC()
{
  result = qword_1EB8ACC48;
  if (!qword_1EB8ACC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC48);
  }

  return result;
}

unint64_t sub_1B4C3E444()
{
  result = qword_1EB8ACC50;
  if (!qword_1EB8ACC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC50);
  }

  return result;
}

unint64_t sub_1B4C3E4CC()
{
  result = qword_1EB8ACC68;
  if (!qword_1EB8ACC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ACC68);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(a2(0) + 20));
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  *a3 = *(v4 + 16);
  *(a3 + 8) = v6;
  return result;
}

void sub_1B4C3FFDC()
{
  sub_1B4C410D0(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACDA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C400F4()
{
  sub_1B4C410D0(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACDA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4C40274(319, &qword_1EB8ACDB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B4C40274(319, &qword_1EB8AACF0, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4C40274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D17BCC();
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

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4D17BCC();
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

uint64_t sub_1B4C40558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B4D17BCC();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4C40654()
{
  sub_1B4C40274(319, &qword_1EB8ACE30, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACE38, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v2 <= 0x3F)
      {
        sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4C407DC()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACE50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C40958()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_255Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B4D17BCC();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_256Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1B4D17BCC();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1B4C40C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4D17BCC();
  if (v7 <= 0x3F)
  {
    sub_1B4C40274(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C40D10()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4C40DC0()
{
  sub_1B4C40274(319, &qword_1EB8ACED0, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C40EC8()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4C40F74()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACEF8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4C410D0(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4C410D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4C41148()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4C40274(319, &qword_1EB8ACF10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C412AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4C40274(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4C41374()
{
  sub_1B4C40274(319, &qword_1EB8ACE38, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4C41450()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4C414F8()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4C40274(319, &qword_1EB8ACF60, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4C410D0(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C415F8()
{
  sub_1B4C40274(319, &qword_1EB8AACE0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B4C40274(319, &qword_1EB8AAD08, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B4C40274(319, &qword_1EB8ACF60, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B4C417A4()
{
  sub_1B4C40274(319, &qword_1EB8ACF88, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v20 = *(v0 - 8) + 64;
    sub_1B4C40274(319, &qword_1EB8ACF90, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v21 = *(v2 - 8) + 64;
      sub_1B4C40274(319, &qword_1EB8AAD10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v22 = *(v4 - 8) + 64;
        sub_1B4C40274(319, &qword_1EB8ACF98, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v23 = *(v6 - 8) + 64;
          sub_1B4C40274(319, &qword_1EB8ACFA0, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v24 = *(v8 - 8) + 64;
            sub_1B4C40274(319, &qword_1EB8ACFA8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v25 = *(v10 - 8) + 64;
              sub_1B4C40274(319, &qword_1EB8ACFB0, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v26 = *(v12 - 8) + 64;
                sub_1B4C40274(319, &qword_1EB8AACE8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v27 = *(v14 - 8) + 64;
                  sub_1B4C40274(319, &qword_1EB8ACFB8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, MEMORY[0x1E69E6720]);
                  if (v17 <= 0x3F)
                  {
                    v28 = *(v16 - 8) + 64;
                    sub_1B4C40274(319, &qword_1EB8ACFC0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, MEMORY[0x1E69E6720]);
                    if (v19 <= 0x3F)
                    {
                      v29 = *(v18 - 8) + 64;
                      swift_updateClassMetadata2();
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

void sub_1B4C41C40()
{
  sub_1B4C40274(319, &qword_1EB8ACFD8, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B4C41D48()
{
  result = qword_1EB8AD098;
  if (!qword_1EB8AD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD098);
  }

  return result;
}

unint64_t sub_1B4C41D9C()
{
  result = qword_1EB8AD0A0;
  if (!qword_1EB8AD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD0A0);
  }

  return result;
}

uint64_t StreamingAudioRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

FitnessIntelligence::RingsPropertyKind_optional __swiftcall RingsPropertyKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18DFC();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
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
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t RingsPropertyKind.rawValue.getter()
{
  result = 0x6572745365766F6DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6573696372657865;
      break;
    case 2:
      result = 0x727453646E617473;
      break;
    case 3:
    case 7:
      result = 0xD000000000000013;
      break;
    case 4:
    case 0xA:
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 0xD:
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x6174537370657473;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xB:
    case 0x14:
    case 0x17:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
    case 0x18:
      result = 0xD000000000000014;
      break;
    case 0x11:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0x616F47646E617473;
      break;
    case 0x13:
      result = 0xD000000000000011;
      break;
    case 0x19:
      result = 0x756F436C61746F74;
      break;
    default:
      return result;
  }

  return result;
}

FitnessIntelligence::RingGoal_optional __swiftcall RingGoal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RingGoal.rawValue.getter()
{
  v1 = 0x736569726F6C6163;
  v2 = 0x6573696372657865;
  if (*v0 != 2)
  {
    v2 = 0x616F47646E617473;
  }

  if (*v0)
  {
    v1 = 0x756E694D65766F6DLL;
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

uint64_t sub_1B4C4242C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C42504()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C425C8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C426A8(uint64_t *a1@<X8>)
{
  v2 = 0x736569726F6C6163;
  v3 = 0x6573696372657865;
  v4 = 0xE90000000000006CLL;
  if (*v1 == 2)
  {
    v4 = 0xEC0000006C616F47;
  }

  else
  {
    v3 = 0x616F47646E617473;
  }

  v5 = 0xEF6C616F47736574;
  if (*v1)
  {
    v2 = 0x756E694D65766F6DLL;
  }

  else
  {
    v5 = 0xEC0000006C616F47;
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

FitnessIntelligence::Ring_optional __swiftcall Ring.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Ring.rawValue.getter()
{
  v1 = 1702260589;
  v2 = 0x646E617473;
  if (*v0 != 2)
  {
    v2 = 0x65657268546C6C61;
  }

  if (*v0)
  {
    v1 = 0x6573696372657865;
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

uint64_t sub_1B4C4283C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C42900()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C429B0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4C42A7C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1702260589;
  v4 = 0xE500000000000000;
  v5 = 0x646E617473;
  if (*v1 != 2)
  {
    v5 = 0x65657268546C6C61;
    v4 = 0xED000073676E6952;
  }

  if (*v1)
  {
    v3 = 0x6573696372657865;
    v2 = 0xE800000000000000;
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

FitnessIntelligence::RingsMetric_optional __swiftcall RingsMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RingsMetric.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E695265766F6DLL;
  v3 = 0x73746867696C66;
  if (v1 != 5)
  {
    v3 = 0x65636E6174736964;
  }

  v4 = 0x6E6952646E617473;
  if (v1 != 3)
  {
    v4 = 0x7370657473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x756E694D65766F6DLL;
  if (v1 != 1)
  {
    v5 = 0x6573696372657865;
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

uint64_t sub_1B4C42C7C()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

void sub_1B4C42DB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x676E695265766F6DLL;
  v5 = 0xE700000000000000;
  v6 = 0x73746867696C66;
  if (v2 != 5)
  {
    v6 = 0x65636E6174736964;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6952646E617473;
  if (v2 != 3)
  {
    v8 = 0x7370657473;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00676E69526574;
  v10 = 0x756E694D65766F6DLL;
  if (v2 != 1)
  {
    v10 = 0x6573696372657865;
    v9 = 0xEC000000676E6952;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1B4C42EC8()
{
  result = qword_1EB8AD128;
  if (!qword_1EB8AD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD128);
  }

  return result;
}

unint64_t sub_1B4C42F50()
{
  result = qword_1EB8AD140;
  if (!qword_1EB8AD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD140);
  }

  return result;
}

unint64_t sub_1B4C42FD8()
{
  result = qword_1EB8AD158;
  if (!qword_1EB8AD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD158);
  }

  return result;
}

uint64_t sub_1B4C4305C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = RingsPropertyKind.rawValue.getter();
  v4 = v3;
  if (v2 == RingsPropertyKind.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4C430FC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  RingsPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43164()
{
  v2 = *v0;
  RingsPropertyKind.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4C431C8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  RingsPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4C43238@<X0>(unint64_t *a1@<X8>)
{
  result = RingsPropertyKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4C43260(void *a1)
{
  a1[1] = sub_1B4C43298();
  a1[2] = sub_1B4C432EC();
  result = sub_1B4C43340();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4C43298()
{
  result = qword_1EB8AD170;
  if (!qword_1EB8AD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD170);
  }

  return result;
}

unint64_t sub_1B4C432EC()
{
  result = qword_1EB8AD178;
  if (!qword_1EB8AD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD178);
  }

  return result;
}

unint64_t sub_1B4C43340()
{
  result = qword_1EB8AD180;
  if (!qword_1EB8AD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RingsPropertyKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RingsPropertyKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
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
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void static StreakPropertyGenerator.from(_:for:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1B49A8448(a1, &v35);
  if (!*(&v36 + 1))
  {
    sub_1B49A84B8(&v35);
LABEL_7:
    sub_1B496F544(&v35);
    v10 = v42;
    *(a3 + 96) = v41;
    *(a3 + 112) = v10;
    *(a3 + 128) = v43;
    v11 = v38;
    *(a3 + 32) = v37;
    *(a3 + 48) = v11;
    v12 = v40;
    *(a3 + 64) = v39;
    *(a3 + 80) = v12;
    v13 = v36;
    *a3 = v35;
    *(a3 + 16) = v13;
    return;
  }

  sub_1B49A24C4(&v35, v44);
  if (v4 >= 4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    goto LABEL_7;
  }

  v5 = v45;
  v6 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v6 + 16))(&v35, v5, v6);
  if (v36)
  {
LABEL_4:
    __swift_project_boxed_opaque_existential_1(v44, v45);
    LOBYTE(v35) = v4;
    LOBYTE(v7) = RingsRepresentable.hasClosedRing(for:)(&v35);
    v8 = v7;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = v45;
  v15 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v15 + 16))(&v35, v14, v15);
  v16 = *(&v35 + 1);
  v9 = v36;
  v18 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(*(v17 + 8) + 8))(&v35, v18);
  if (v9 == 1)
  {
    v8 = 0;
  }

  else
  {
    if (v16 == v35)
    {
      goto LABEL_4;
    }

    v8 = 0;
    v9 = 1;
  }

LABEL_12:
  v20 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(*(v19 + 8) + 8))(&v35, v20);
  v21 = v35;
  v22 = v45;
  v23 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v23 + 16))(&v35, v22, v23);
  if (v36)
  {
    v24 = MEMORY[0x1E69E7CC0];
    if (((v8 | v9) & 1) == 0)
    {
LABEL_14:
      v25 = v21;
      goto LABEL_19;
    }
  }

  else
  {
    v33 = v35;
    v24 = sub_1B4A1E31C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1B4A1E31C((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    *&v24[16 * v27 + 32] = v33;
    if (((v8 | v9) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v34 = v21;
  CacheIndex.add(days:)(1, &v35);
  v25 = v35;
LABEL_19:
  v28 = v8 & 1;
  CacheIndex.add(days:)(v9 + v28, &v34);
  if (v34 < v21)
  {
    __break(1u);
  }

  else
  {
    *&v35 = v21;
    *(&v35 + 1) = v28;
    *&v36 = v9;
    *(&v36 + 1) = v21;
    *&v37 = v34;
    *(&v37 + 1) = v25;
    *&v38 = v28;
    *(&v38 + 1) = v9;
    *&v39 = v21;
    *(&v39 + 1) = v34;
    *&v40 = v25;
    *(&v40 + 1) = v28;
    *&v41 = v9;
    *(&v41 + 1) = v21;
    *&v42 = v34;
    *(&v42 + 1) = v25;
    v43 = v24;
    nullsub_1(&v35);
    v29 = v42;
    *(a3 + 96) = v41;
    *(a3 + 112) = v29;
    *(a3 + 128) = v43;
    v30 = v38;
    *(a3 + 32) = v37;
    *(a3 + 48) = v30;
    v31 = v40;
    *(a3 + 64) = v39;
    *(a3 + 80) = v31;
    v32 = v36;
    *a3 = v35;
    *(a3 + 16) = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }
}

unint64_t sub_1B4C438EC(uint64_t a1)
{
  result = sub_1B4BA88E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C43918()
{
  result = qword_1EDC39560;
  if (!qword_1EDC39560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39560);
  }

  return result;
}

uint64_t Adapter.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4C43A28()
{
  result = qword_1EB8AD188;
  if (!qword_1EB8AD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD188);
  }

  return result;
}

uint64_t sub_1B4C43A7C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43AF8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43B50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1B4C43BB4()
{
  result = qword_1EB8AD190;
  if (!qword_1EB8AD190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD198, &qword_1B4D3FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD190);
  }

  return result;
}

FitnessIntelligence::SnapshotProcessingReason_optional __swiftcall SnapshotProcessingReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

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

uint64_t SnapshotProcessingReason.rawValue.getter()
{
  if (*v0)
  {
    result = 0x736154796C696164;
  }

  else
  {
    result = 0x7463617265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_1B4C43CE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736154796C696164;
  }

  else
  {
    v4 = 0x7463617265746E69;
  }

  if (v3)
  {
    v5 = 0xEB00000000657669;
  }

  else
  {
    v5 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v6 = 0x736154796C696164;
  }

  else
  {
    v6 = 0x7463617265746E69;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006BLL;
  }

  else
  {
    v7 = 0xEB00000000657669;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

unint64_t sub_1B4C43DA0()
{
  result = qword_1EB8AD1A0;
  if (!qword_1EB8AD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1A0);
  }

  return result;
}

uint64_t sub_1B4C43DF4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43E84()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C43F00()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4C43F8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4C43FEC(uint64_t *a1@<X8>)
{
  v2 = 0x7463617265746E69;
  if (*v1)
  {
    v2 = 0x736154796C696164;
  }

  v3 = 0xEB00000000657669;
  if (*v1)
  {
    v3 = 0xE90000000000006BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B4C440A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D17B8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C440E4()
{
  v1 = sub_1B4D17B8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v0;
  *v0;
  sub_1B4D17B9C();
  sub_1B4C440A0(&qword_1EDC37998);
  v6 = sub_1B4D17D6C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1B4C4424C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B26420(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

unint64_t sub_1B4C442A4()
{
  result = qword_1EB8AD1E0;
  if (!qword_1EB8AD1E0)
  {
    type metadata accessor for AverageWorkoutPaceFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1E0);
  }

  return result;
}

unint64_t sub_1B4C44300()
{
  result = qword_1EB8AD1E8;
  if (!qword_1EB8AD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1E8);
  }

  return result;
}

uint64_t sub_1B4C44354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  __swift_allocate_value_buffer(v0, qword_1EB8AD1B0);
  __swift_project_value_buffer(v0, qword_1EB8AD1B0);
  v1 = [objc_opt_self() kilometersPerHour];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  return sub_1B4D1741C();
}

uint64_t sub_1B4C44400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  __swift_allocate_value_buffer(v0, qword_1EB8AD1C8);
  __swift_project_value_buffer(v0, qword_1EB8AD1C8);
  v1 = [objc_opt_self() meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  return sub_1B4D1741C();
}

uint64_t sub_1B4C444B4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C44528()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C4457C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1B4C445F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return (sub_1B4C447F0)(a1, a2, a3, a4);
}

unint64_t sub_1B4C446C0(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C446F0();
  result = sub_1B4C44744();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C446F0()
{
  result = qword_1EB8AD1F0;
  if (!qword_1EB8AD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1F0);
  }

  return result;
}

unint64_t sub_1B4C44744()
{
  result = qword_1EB8AD1F8;
  if (!qword_1EB8AD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD1F8);
  }

  return result;
}

unint64_t sub_1B4C4479C()
{
  result = qword_1EB8AD200;
  if (!qword_1EB8AD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD200);
  }

  return result;
}

uint64_t sub_1B4C447F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v3[24] = v8;
  v9 = *(v8 - 8);
  v3[25] = v9;
  v10 = *(v9 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3[31] = v12;
  v13 = *(v12 - 8);
  v3[32] = v13;
  v14 = *(v13 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3[38] = v16;
  v17 = *(v16 - 8);
  v3[39] = v17;
  v18 = *(v17 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C44B3C, 0, 0);
}

uint64_t sub_1B4C44B3C()
{
  v201 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for WorkoutState();
  if (*(v1 + *(v2 + 48)) < 600.0)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = *(v0 + 96);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 88) = &type metadata for AverageWorkoutPaceFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD208, &qword_1B4D40260);
  v199 = sub_1B4D181CC();
  v200 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ELL, 0x80000001B4D4B380);
  (*(v6 + 8))(v199, v200, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v5, v6);

  v8 = *(v0 + 80);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 296);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1B4CE458C((v0 + 16), v8, v11);
  v12 = *(v0 + 296);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {

    v14 = &qword_1EB8A7978;
    v15 = &unk_1B4D1F2F0;
    v16 = v12;
LABEL_5:
    sub_1B4975024(v16, v14, v15);
LABEL_6:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v17 = sub_1B4D17F6C();
    __swift_project_value_buffer(v17, qword_1EDC36F00);
    v18 = sub_1B4D17F5C();
    v19 = sub_1B4D1873C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v199 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v199);
      _os_log_impl(&dword_1B4953000, v18, v19, "Context or snapshots don't exist for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1B8C7DDA0](v21, -1, -1);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
    }

    goto LABEL_11;
  }

  v195 = v3;
  v35 = *(v0 + 328);
  v34 = *(v0 + 336);
  v36 = *(v0 + 312);
  v37 = *(v0 + 304);
  v38 = *(v0 + 240);
  (*(v36 + 16))(v35, v12, v37);
  sub_1B4975024(v12, &qword_1EB8A6840, &unk_1B4D20FA0);
  (*(v36 + 32))(v34, v35, v37);
  sub_1B4CE5168((v0 + 16), v8, v38);
  v39 = *(v0 + 240);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    v41 = *(v0 + 240);
    (*(*(v0 + 312) + 8))(*(v0 + 336), *(v0 + 304));
    v14 = &qword_1EB8A7530;
    v15 = &unk_1B4D40250;
    v16 = v41;
    goto LABEL_5;
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 288);
  v44 = *(v0 + 248);
  v45 = *(v0 + 256);
  v46 = *(v0 + 240);
  v47 = *(v0 + 192);
  v48 = *(v0 + 200);
  v49 = *(v0 + 184);
  v50 = *(v0 + 112);
  (*(v45 + 16))(v42, v46, v44);
  sub_1B4975024(v46, &qword_1EB8A6858, &qword_1B4D1AB70);
  (*(v45 + 32))(v43, v42, v44);
  sub_1B4C46378(v50 + *(v195 + 68), v49);
  if ((*(v48 + 48))(v49, 1, v47) == 1)
  {
    v51 = *(v0 + 336);
    v52 = *(v0 + 304);
    v53 = *(v0 + 312);
    v54 = *(v0 + 184);
    (*(*(v0 + 256) + 8))(*(v0 + 288), *(v0 + 248));
    (*(v53 + 8))(v51, v52);
    v14 = &qword_1EB8A6CB0;
    v15 = &unk_1B4D1BBF0;
    v16 = v54;
    goto LABEL_5;
  }

  (*(*(v0 + 200) + 32))(*(v0 + 232), *(v0 + 184), *(v0 + 192));
  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 224);
  v56 = *(v0 + 232);
  v57 = *(v0 + 192);
  v58 = *(v0 + 200);
  v59 = *(v0 + 176);
  v189 = qword_1EDC36E88;
  sub_1B4D1745C();
  sub_1B4D1742C();
  v60 = *(v58 + 8);
  v60(v55, v57);
  v61 = [objc_opt_self() metersPerSecond];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  sub_1B4D1741C();
  if (qword_1EB8A65B8 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 176);
  v63 = *(v0 + 120);
  v64 = *(v0 + 128);
  __swift_project_value_buffer(v63, qword_1EB8AD1B0);
  sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
  v65 = sub_1B4D1810C();
  v66 = *(v64 + 8);
  v66(v62, v63);
  if ((v65 & 1) == 0)
  {
    v93 = *(v0 + 336);
    v94 = *(v0 + 304);
    v95 = *(v0 + 312);
    v96 = *(v0 + 288);
    v97 = *(v0 + 248);
    v98 = *(v0 + 256);
    v60(*(v0 + 232), *(v0 + 192));
    (*(v98 + 8))(v96, v97);
    (*(v95 + 8))(v93, v94);
    goto LABEL_6;
  }

  v193 = v60;
  if (qword_1EB8A65C0 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 336);
  __swift_project_value_buffer(*(v0 + 304), qword_1EB8AD1C8);
  sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v68 = sub_1B4D1810C();
  v69 = *(v0 + 336);
  if ((v68 & 1) == 0)
  {
    v99 = *(v0 + 304);
    v100 = *(v0 + 312);
    v101 = *(v0 + 288);
    v102 = *(v0 + 248);
    v103 = *(v0 + 256);
    v193(*(v0 + 232), *(v0 + 192));
    (*(v103 + 8))(v101, v102);
    (*(v100 + 8))(v69, v99);
    goto LABEL_6;
  }

  v186 = v66;
  v71 = *(v0 + 312);
  v70 = *(v0 + 320);
  v72 = *(v0 + 304);
  v73 = *(v0 + 288);
  v74 = *(v0 + 272);
  v75 = *(v0 + 248);
  v76 = *(v0 + 256);
  v164 = *(v0 + 216);
  v166 = *(v0 + 192);
  v169 = *(v0 + 224);
  v172 = *(v0 + 168);
  v175 = *(v0 + 120);
  v163 = objc_opt_self();
  v77 = [v163 seconds];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v182 = *(v76 + 8);
  v182(v74, v75);
  v78 = [objc_opt_self() meters];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v178 = *(v71 + 8);
  v178(v70, v72);
  type metadata accessor for UnitPace();
  v79 = v189;
  sub_1B4D1741C();
  sub_1B4D1745C();
  sub_1B4D1742C();
  v193(v169, v166);
  v80 = [objc_opt_self() metersPerSecond];
  sub_1B4D1741C();
  LOBYTE(v73) = sub_1B4D1810C();
  v186(v172, v175);
  if ((v73 & 1) == 0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v104 = sub_1B4D17F6C();
    __swift_project_value_buffer(v104, qword_1EDC36F00);
    v88 = sub_1B4D17F5C();
    v89 = sub_1B4D1873C();
    if (!os_log_type_enabled(v88, v89))
    {
      goto LABEL_41;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v199 = v91;
    *v90 = 136315138;
    *(v90 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v199);
    v92 = "Last 4 weeks average pace is not significant %s";
    goto LABEL_40;
  }

  v81 = *(v0 + 232);
  v82 = *(v0 + 192);
  sub_1B4D1742C();
  if (v83 == 0.0 || (v84 = *(v0 + 216), v85 = *(v0 + 192), sub_1B4D1742C(), v86 == 0.0))
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v87 = sub_1B4D17F6C();
    __swift_project_value_buffer(v87, qword_1EDC36F00);
    v88 = sub_1B4D17F5C();
    v89 = sub_1B4D1873C();
    if (!os_log_type_enabled(v88, v89))
    {
      goto LABEL_41;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v199 = v91;
    *v90 = 136315138;
    *(v90 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v199);
    v92 = "average paces don't exist for %s";
LABEL_40:
    _os_log_impl(&dword_1B4953000, v88, v89, v92, v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    MEMORY[0x1B8C7DDA0](v91, -1, -1);
    MEMORY[0x1B8C7DDA0](v90, -1, -1);
LABEL_41:

    v105 = *(v0 + 336);
    v106 = *(v0 + 304);
    v107 = *(v0 + 288);
    v108 = *(v0 + 248);
    v109 = *(v0 + 232);
    v110 = *(v0 + 192);
    v193(*(v0 + 216), v110);
    v193(v109, v110);
    v182(v107, v108);
    v178(v105, v106);
LABEL_11:
    v198 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v112 = *(v0 + 224);
  v111 = *(v0 + 232);
  v190 = *(v0 + 208);
  v113 = *(v0 + 192);
  v167 = *(v0 + 216);
  v170 = *(v0 + 152);
  v114 = *(v0 + 136);
  v165 = *(v0 + 144);
  v173 = *(v0 + 120);
  v176 = *(v0 + 160);
  sub_1B4D1744C();
  sub_1B4D1745C();
  v193(v112, v113);
  sub_1B4D1745C();
  sub_1B4D1742C();
  v193(v112, v113);
  v115 = [objc_opt_self() metersPerSecond];
  sub_1B4D1741C();
  sub_1B4D1745C();
  sub_1B4D1742C();
  v193(v112, v113);
  v116 = [objc_opt_self() metersPerSecond];
  sub_1B4D1741C();
  sub_1B4D1744C();
  v186(v114, v173);
  v186(v165, v173);
  v117 = [objc_opt_self() metersPerSecond];
  sub_1B4D1745C();

  v186(v170, v173);
  sub_1B4D1742C();
  if (v118 <= 0.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v126 = sub_1B4D17F6C();
    __swift_project_value_buffer(v126, qword_1EDC36F00);
    v121 = sub_1B4D17F5C();
    v122 = sub_1B4D1873C();
    if (!os_log_type_enabled(v121, v122))
    {
      goto LABEL_56;
    }

    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v199 = v124;
    *v123 = 136315138;
    *(v123 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v199);
    v125 = "average pace is not faster %s";
    goto LABEL_55;
  }

  v196 = *(*(v0 + 112) + *(v195 + 24));
  if ([v196 effectiveTypeIdentifier] == 13)
  {
    if (qword_1EB8A6000 != -1)
    {
      swift_once();
    }

    v119 = *(v0 + 160);
    __swift_project_value_buffer(*(v0 + 120), qword_1EB8F3AD0);
    if ((sub_1B4D1810C() & 1) == 0)
    {
LABEL_47:
      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v120 = sub_1B4D17F6C();
      __swift_project_value_buffer(v120, qword_1EDC36F00);
      v121 = sub_1B4D17F5C();
      v122 = sub_1B4D1873C();
      if (!os_log_type_enabled(v121, v122))
      {
        goto LABEL_56;
      }

      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v199 = v124;
      *v123 = 136315138;
      *(v123 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v199);
      v125 = "Average pace not significantly faster %s";
LABEL_55:
      _os_log_impl(&dword_1B4953000, v121, v122, v125, v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      MEMORY[0x1B8C7DDA0](v124, -1, -1);
      MEMORY[0x1B8C7DDA0](v123, -1, -1);
LABEL_56:

      v127 = *(v0 + 336);
      v128 = *(v0 + 304);
      v129 = *(v0 + 288);
      v130 = *(v0 + 248);
      v131 = *(v0 + 232);
      v133 = *(v0 + 208);
      v132 = *(v0 + 216);
      v134 = *(v0 + 192);
      v186(*(v0 + 160), *(v0 + 120));
      v193(v133, v134);
      v193(v132, v134);
      v193(v131, v134);
      v182(v129, v130);
      v178(v127, v128);
      goto LABEL_11;
    }
  }

  else
  {
    v135 = [*(v0 + 104) userDistanceHKUnitForActivityType_];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v136 = [objc_opt_self() mileUnit];
    v137 = sub_1B4D187AC();

    if (v137)
    {
      if (qword_1EB8A6478 != -1)
      {
        swift_once();
      }

      v138 = &qword_1EB8AC490;
    }

    else
    {
      if (qword_1EB8A6480 != -1)
      {
        swift_once();
      }

      v138 = &qword_1EB8AC498;
    }

    v140 = *(v0 + 264);
    v139 = *(v0 + 272);
    v141 = *(v0 + 248);
    v142 = *(v0 + 224);
    v143 = *(v0 + 208);
    v144 = *(v0 + 192);
    v145 = *v138;

    sub_1B4D1745C();
    sub_1B4D1742C();
    v193(v142, v144);
    v146 = [v163 minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v147 = [v163 seconds];
    sub_1B4D1745C();

    v182(v139, v141);
    if (qword_1EB8A5FF0 != -1)
    {
      swift_once();
    }

    v148 = *(v0 + 264);
    v149 = *(v0 + 248);
    __swift_project_value_buffer(v149, qword_1EB8F3AA0);
    sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
    v150 = sub_1B4D1810C();
    v182(v148, v149);
    if ((v150 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v191 = *(v0 + 336);
  v180 = *(v0 + 304);
  v174 = *(v0 + 248);
  v177 = *(v0 + 288);
  v151 = *(v0 + 208);
  v168 = *(v0 + 216);
  v171 = *(v0 + 232);
  v153 = *(v0 + 192);
  v152 = *(v0 + 200);
  v154 = *(v0 + 160);
  v156 = *(v0 + 120);
  v155 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD218, &qword_1B4D40268);
  v157 = (type metadata accessor for AverageWorkoutPaceFact() - 8);
  v158 = *(*v157 + 72);
  v159 = (*(*v157 + 80) + 32) & ~*(*v157 + 80);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_1B4D1A800;
  v198 = v160;
  v161 = (v160 + v159);
  (*(v152 + 16))(v160 + v159 + v157[7], v151, v153);
  (*(v155 + 16))(&v161[v157[8]], v154, v156);
  *v161 = v196;
  v162 = v196;
  v186(v154, v156);
  v193(v151, v153);
  v193(v168, v153);
  v193(v171, v153);
  v182(v177, v174);
  v178(v191, v180);
LABEL_12:
  v23 = *(v0 + 328);
  v22 = *(v0 + 336);
  v24 = *(v0 + 320);
  v26 = *(v0 + 288);
  v25 = *(v0 + 296);
  v28 = *(v0 + 272);
  v27 = *(v0 + 280);
  v29 = *(v0 + 264);
  v31 = *(v0 + 232);
  v30 = *(v0 + 240);
  v179 = *(v0 + 224);
  v181 = *(v0 + 216);
  v183 = *(v0 + 208);
  v184 = *(v0 + 184);
  v185 = *(v0 + 176);
  v187 = *(v0 + 168);
  v188 = *(v0 + 160);
  v192 = *(v0 + 152);
  v194 = *(v0 + 144);
  v197 = *(v0 + 136);

  v32 = *(v0 + 8);

  return v32(v198);
}

uint64_t sub_1B4C46378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4C463E8(uint64_t a1)
{
  v2 = sub_1B4CAC70C(a1);
  v3 = *(v2 + 2);
  v4 = 32;
  while (v3)
  {
    v5 = *&v2[v4];
    v4 += 8;
    --v3;
    if (v5 == 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD220, &qword_1B4D40270);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD228, &unk_1B4D40278) - 8);
      v7 = *(v6 + 72);
      v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1B4D1A800;
      v10 = v9 + v8;
      v11 = type metadata accessor for WorkoutState();
      v12 = *(v11 + 36);
      v13 = sub_1B4D1777C();
      (*(*(v13 - 8) + 16))(v10, a1 + v12, v13);
      type metadata accessor for DateRangeDescriptor();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B4D1A800;
      *(v14 + 32) = [*(a1 + *(v11 + 24)) effectiveTypeIdentifier];
      v15 = type metadata accessor for WorkoutPropertiesQuery();
      v16 = (v10 + v15[5]);
      v17 = MEMORY[0x1E69E7CC0];
      *v16 = MEMORY[0x1E69E7CC0];
      v16[1] = v17;
      v16[2] = v17;
      v16[3] = v14;
      v16[4] = v17;
      v16[5] = v17;
      *(v10 + v15[6]) = v17;
      *(v10 + v15[7]) = &unk_1F2CB9790;
      type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v18 = sub_1B4C97044(v9);
      swift_setDeallocating();
      sub_1B4975024(v10, &qword_1EB8AD228, &unk_1B4D40278);
      swift_deallocClassInstance();
      return v18;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v20 = sub_1B4D17F6C();
  __swift_project_value_buffer(v20, qword_1EDC36F00);
  v21 = sub_1B4D17F5C();
  v22 = sub_1B4D1873C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D40120, &v26);
    _os_log_impl(&dword_1B4953000, v21, v22, "%s does not support this workout state", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B8C7DDA0](v24, -1, -1);
    MEMORY[0x1B8C7DDA0](v23, -1, -1);
  }

  v25 = MEMORY[0x1E69E7CC0];

  return sub_1B4C97044(v25);
}

__n128 WorkoutRecord.init(identifier:startDate:endDate:activityType:locationType:catalogWorkoutIdentifier:fitnessPlusCatalogWorkout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a5;
  v25 = *a8;
  v24 = a8[1].n128_u64[0];
  v23 = a8[1].n128_u8[8];
  v15 = sub_1B4D177CC();
  (*(*(v15 - 8) + 32))(a9, a1, v15);
  v16 = type metadata accessor for WorkoutRecord();
  v17 = v16[5];
  v18 = sub_1B4D1777C();
  v19 = *(*(v18 - 8) + 32);
  v19(a9 + v17, a2, v18);
  v19(a9 + v16[6], a3, v18);
  *(a9 + v16[7]) = a4;
  *(a9 + v16[8]) = v14;
  v20 = (a9 + v16[9]);
  *v20 = a6;
  v20[1] = a7;
  v21 = (a9 + v16[10]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v24;
  v21[1].n128_u8[8] = v23;
  return result;
}

uint64_t type metadata accessor for WorkoutRecord()
{
  result = qword_1EB8AD230;
  if (!qword_1EB8AD230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WorkoutRecord.fi_activityType.getter()
{
  v1 = type metadata accessor for WorkoutRecord();
  v2 = *(v0 + *(v1 + 28));
  if (*(v0 + *(v1 + 32)) <= 1u && *(v0 + *(v1 + 32)))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1B4D18DCC();
  }

  v4 = objc_allocWithZone(MEMORY[0x1E699C9F0]);

  return [v4 initWithActivityTypeIdentifier:v2 isIndoor:v3 & 1];
}