uint64_t sub_1B642F39C()
{
  v0 = sub_1B67D89EC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlobalESLService();
  sub_1B67D899C();
  v5 = *MEMORY[0x1E69D6AD0];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_1B67D889C();

  v7 = v1[1];
  v7(v4, v0);
  type metadata accessor for TagESLService();
  sub_1B67D899C();
  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B63F3DA0(0, &unk_1EDB1F010, off_1E7C34E00);
  sub_1B67D899C();
  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  type metadata accessor for BridgedFeedItemService();
  sub_1B67D899C();
  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0A8, &qword_1B6814F40);
  sub_1B67D89AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0B0, &unk_1B6814F48);
  sub_1B67D89AC();
  v6(v4, v5, v0);
  sub_1B67D889C();

  return (v7)(v4, v0);
}

void *sub_1B642F784(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF98, "\u0383");
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0A8, &qword_1B6814F40);
  result = sub_1B67D88DC();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0B0, &unk_1B6814F48);
  result = sub_1B67D88DC();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  result = sub_1B67D88CC();
  if (result)
  {
    v10 = result;
    type metadata accessor for GlobalESLService();
    return sub_1B6430394(v4, v6, &v13, &v11, v10);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B642F93C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E590, off_1E7C342A8);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B642F9A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0C8, &unk_1B6814F68);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0D0, &unk_1B6814F78);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0D8, &qword_1B6814F88);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E0, &unk_1B681A0C0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E8, &unk_1B6814F90);
  result = sub_1B67D88DC();
  if (v18)
  {
    RequestFactory = type metadata accessor for SmarterFetchRequestFactory();
    result = sub_1B642FD50(v6, v8, v10, v12, v14, &v17);
    a2[3] = RequestFactory;
    a2[4] = &off_1F2DC1CF0;
    *a2 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_1B642FBBC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E590, off_1E7C342A8);
  result = sub_1B67D88CC();
  if (result)
  {
    v3 = result;
    v4 = [result subscriptionList];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B642FC44(void *a1, SEL *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (result)
  {
    v5 = [result *a2];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B642FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  sub_1B6416D08(a6, (v12 + 7));
  return v12;
}

uint64_t sub_1B642FDCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B63F3DA0(0, &qword_1EDB1F020, off_1E7C34968);
    result = sub_1B67D88CC();
    if (result)
    {
      v8 = result;
      Service = type metadata accessor for SmarterFetchService();
      result = sub_1B642FED8(v6, v8);
      a2[3] = Service;
      a2[4] = &off_1F2DBEAB0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B642FED8(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1B642FF38(a1, a2);
  swift_unknownObjectRelease();

  return v4;
}

void *sub_1B642FF38(uint64_t a1, void *a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v26 = sub_1B67D88AC();
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B67D9CEC();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D9CBC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1B67D949C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  strcpy((v2 + 16), "SmarterFetch");
  *(v2 + 29) = 0;
  *(v2 + 30) = -5120;
  v14 = sub_1B63F3DA0(0, &qword_1EDB1FB00, 0x1E69E9610);
  v21[0] = "feedPersonalizer";
  v21[1] = v14;
  sub_1B67D948C();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1B643034C(&qword_1EDB1FB08, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A980, &unk_1B6810130);
  sub_1B6458C04(&qword_1EDB1FB10, &unk_1EB94A980, &unk_1B6810130);
  sub_1B67D9E5C();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v22);
  *(v2 + 56) = sub_1B67D9D2C();
  v15 = v24;
  v3[4] = v23;
  v3[5] = v15;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1B643034C(&qword_1EDB1FA30, MEMORY[0x1E69D6420]);
  swift_unknownObjectRetain();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AAC8, &qword_1B6813120);
  sub_1B6458C04(qword_1EDB1F040, &unk_1EB94AAC8, &qword_1B6813120);
  sub_1B67D9E5C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AAD8, &qword_1B6813128);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v3[6] = sub_1B67D89DC();
  return v3;
}

uint64_t sub_1B6430304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B643034C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1B6430394(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  sub_1B6416D08(a3, (v10 + 4));
  sub_1B6416D08(a4, (v10 + 9));
  v10[14] = a5;
  return v10;
}

id sub_1B643040C(void *a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D856C();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_1B67D85FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  v19 = sub_1B67D88CC();
  if (!v19)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v20 = [v19 contentDirectory];
  sub_1B67D964C();

  v49 = v11;
  v50 = v10;
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v51 + 104))(v5, *MEMORY[0x1E6968F70], v52);
  sub_1B67D85CC();
  sub_1B67D859C();
  v21 = NewsCoreUserDefaults();
  v22 = [v21 BOOLForKey_];

  v23 = v15;
  if (v22)
  {
    v24 = [objc_opt_self() defaultManager];
    v25 = sub_1B67D858C();
    v53[0] = 0;
    v26 = [v24 removeItemAtURL:v25 error:v53];

    if (v26)
    {
      v27 = v53[0];
    }

    else
    {
      v28 = v53[0];
      v29 = sub_1B67D855C();

      swift_willThrow();
    }

    v30 = NewsCoreUserDefaults();
    [v30 setBool:0 forKey:@"news.esl_inventory.force_enable_all_tags"];
  }

  v52 = v17;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagESLService();
  v32 = sub_1B67D88CC();
  if (!v32)
  {
    goto LABEL_11;
  }

  v33 = v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
  v35 = sub_1B67D88CC();
  v36 = v49;
  v37 = v50;
  if (!v35)
  {
    goto LABEL_12;
  }

  v38 = v35;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E558, off_1E7C350A0);
  v40 = sub_1B67D88CC();
  v41 = objc_allocWithZone(FCFeedItemInventory);
  v42 = sub_1B67D858C();
  v43 = sub_1B67D963C();
  v44 = [v41 initWithFeedItemService:v33 feedPersonalizer:v38 readingHistory:v40 fileURL:v42 version:1 refreshInterval:v43 loggingKey:86400.0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v45 = *(v36 + 8);
  v45(v23, v37);
  v45(v52, v37);
  v46 = *MEMORY[0x1E69E9840];
  return v44;
}

void *sub_1B6430948(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E0, &unk_1B681A0C0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0D0, &unk_1B6814F78);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0A8, &qword_1B6814F40);
  result = sub_1B67D88DC();
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0B0, &unk_1B6814F48);
  result = sub_1B67D88DC();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  result = sub_1B67D88CC();
  if (result)
  {
    v12 = result;
    type metadata accessor for TagESLService();
    return sub_1B6430B50(v4, v6, v8, &v15, &v13, v12);
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1B6430B50(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_1B6416D08(a4, (v12 + 5));
  sub_1B6416D08(a5, (v12 + 10));
  v12[15] = a6;
  return v12;
}

void *sub_1B6430BD8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v50 = a2;
  v3 = sub_1B67D8A9C();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B67D856C();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v43 - v11;
  v13 = sub_1B67D85FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v44 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v43 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v43[1] = result;
  v25 = [result contentDirectory];
  sub_1B67D964C();

  v45 = v14;
  v46 = v13;
  (*(v14 + 56))(v12, 1, 1, v13);
  (*(v52 + 104))(v51, *MEMORY[0x1E6968F70], v53);
  sub_1B67D85CC();
  sub_1B67D859C();
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = result;
  v28 = v20;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B098, &qword_1B6814F38);
  result = sub_1B67D88DC();
  v30 = v54[0];
  if (!v54[0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B090, &qword_1B6814F30);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v32 = result;
  type metadata accessor for ListBasedRecipeItemService();
  v55 = sub_1B6431778(v27, v30, v32);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B120, &qword_1B6814FD8);

  result = sub_1B67D88DC();
  v35 = v45;
  v34 = v46;
  if (v54[3])
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B128, &unk_1B6814FE0);
    v37 = v44;
    (*(v35 + 16))(v44, v28, v34);
    v38 = sub_1B64318C8();
    v39 = v47;
    (*(v48 + 16))(v47, v38, v49);
    v40 = sub_1B6431974(&v55, v54, v37, v39);
    v41 = v50;
    v50[3] = v36;
    v41[4] = &off_1F2DC11F0;

    swift_unknownObjectRelease();
    *v41 = v40;
    v42 = *(v35 + 8);
    v42(v28, v34);
    return (v42)(v22, v34);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B6431124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B110, &qword_1B6814FC8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B6814E60;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = type metadata accessor for GlobalRecipeListProvider();
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 56) = v6;
  *(v4 + 64) = &off_1F2DBFAF8;
  *(v4 + 32) = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for RecentRecipeListProvider();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v4 + 96) = v9;
  *(v4 + 104) = &protocol witness table for RecentRecipeListProvider;
  *(v4 + 72) = result;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = type metadata accessor for TrendingRecipeListProvider();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 136) = v11;
  *(v4 + 144) = &protocol witness table for TrendingRecipeListProvider;
  *(v4 + 112) = result;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = type metadata accessor for PersonalizedRecipeListProvider();
  result = sub_1B67D88CC();
  if (result)
  {
    *(v4 + 176) = v13;
    *(v4 + 184) = &off_1F2DBFB10;
    *(v4 + 152) = result;
    *a2 = v4;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B64312B4(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (result)
  {
    v8 = result;
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF98, "\u0383");
    result = sub_1B67D88CC();
    if (result)
    {
      v10 = result;
      a2(0);
      return a3(v8, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64313C8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B6431438(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (result)
  {
    v3 = result;
    type metadata accessor for TrendingRecipeListProvider();
    return sub_1B64314B0(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64314B0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *sub_1B64314E4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF98, "\u0383");
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E0, &unk_1B681A0C0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1E560, off_1E7C35350);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B108, &qword_1B6814FC0);
  result = sub_1B67D88CC();
  if (result)
  {
    v12 = result;
    type metadata accessor for PersonalizedRecipeListProvider();
    return sub_1B6431698(v4, v6, v8, v10, v12);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1B6431698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *sub_1B6431778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0x40BC200000000000;
  return result;
}

uint64_t sub_1B64317E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1B67D8A9C();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B64318EC()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB20508);
  __swift_project_value_buffer(v0, qword_1EDB20508);
  return sub_1B67D8A8C();
}

char *sub_1B6431974(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = sub_1B6431A18(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v12;
}

char *sub_1B6431A18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v27 = a4;
  v9 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_1B67D85FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v9 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B600, &qword_1B6816720);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *&v5[v19] = v20;
  *(v20 + 16) = 0;
  (*(*(*(v9 + 80) - 8) + 16))(&v5[*(*v5 + 96)], a1);
  sub_1B6431D18(a2, &v5[*(*v5 + 104)]);
  type metadata accessor for RecipeItemDatabase(0);
  (*(v15 + 16))(v18, a3, v14);
  v21 = sub_1B67D8A9C();
  v22 = *(v21 - 8);
  v23 = v27;
  (*(v22 + 16))(v13, v27, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  v24 = sub_1B64321B4(v18, v13);
  (*(v15 + 8))(a3, v14);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *&v5[*(*v5 + 112)] = v24;
  (*(v22 + 32))(&v5[*(*v5 + 128)], v23, v21);
  return v5;
}

uint64_t sub_1B6431D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B6431D9C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6431DD4()
{
  result = sub_1B67D85FC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B67D8A9C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B6431EAC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1B67D8A9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6D0, &unk_1B68174D0);
  v14 = swift_allocObject();
  *(v14 + 44) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = -1;
  *(v2 + v13) = v14;
  v15 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_fileURL;
  v16 = sub_1B67D85FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v25 = v2;
  v18(v2 + v15, a1, v16);
  v19 = v24;
  sub_1B6415FF0(v24, v7, &unk_1EB94B3E0, &qword_1B68165A0);
  v20 = *(v9 + 48);
  if (v20(v7, 1, v8) == 1)
  {
    v21 = sub_1B647172C();
    (*(v9 + 16))(v12, v21, v8);
    sub_1B6418AB4(v19, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v17 + 8))(a1, v16);
    if (v20(v7, 1, v8) != 1)
    {
      sub_1B6418AB4(v7, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    sub_1B6418AB4(v19, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v17 + 8))(a1, v16);
    (*(v9 + 32))(v12, v7, v8);
  }

  v22 = v25;
  (*(v9 + 32))(v25 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_logger, v12, v8);
  return v22;
}

uint64_t sub_1B64321B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1B6431EAC(a1, a2);
  return v7;
}

id sub_1B6432214(void *a1)
{
  v2 = sub_1B67D856C();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = [result contentDirectory];
  sub_1B67D964C();

  v34 = v10;
  v35 = v9;
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v37 + 104))(v36, *MEMORY[0x1E6968F70], v38);
  sub_1B67D85CC();
  sub_1B67D859C();
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1F010, off_1E7C34E00);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = result;
  v22 = v16;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
  result = sub_1B67D88CC();
  if (result)
  {
    v24 = result;
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B63F3DA0(0, &qword_1EDB1E558, off_1E7C350A0);
    v26 = sub_1B67D88CC();
    v27 = objc_allocWithZone(FCFeedItemInventory);
    v28 = sub_1B67D858C();
    v29 = sub_1B67D963C();
    v30 = [v27 initWithFeedItemService:v21 feedPersonalizer:v24 readingHistory:v26 fileURL:v28 version:0 refreshInterval:v29 loggingKey:0.0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v31 = v35;
    v32 = *(v34 + 8);
    v32(v14, v35);
    v32(v22, v31);
    return v30;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B6432644(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0C8, &unk_1B6814F68);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0F8, &unk_1B6814FB0);
  result = sub_1B67D88CC();
  if (result)
  {
    v8 = [objc_allocWithZone(FCPeopleAlsoReadFeedItemService) initWithConfigurationManager:v4 contentContext:v6 readingHistory:result];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B6432810@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E590, off_1E7C342A8);
  result = sub_1B67D88CC();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
    result = sub_1B67D88CC();
    if (result)
    {
      v8 = result;
      v9 = type metadata accessor for MyArticlesRequestFactory();
      result = sub_1B64313C8(v6, v8);
      a2[3] = v9;
      a2[4] = &off_1F2DBEA60;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B643291C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1FC90, off_1E7C34430);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0A8, &qword_1B6814F40);
  result = sub_1B67D88DC();
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0B0, &unk_1B6814F48);
  result = sub_1B67D88DC();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  result = sub_1B67D88CC();
  if (result)
  {
    v12 = result;
    v13 = type metadata accessor for MyArticlesService();
    result = sub_1B6430394(v6, v8, &v16, &v14, v12);
    a2[3] = v13;
    a2[4] = &off_1F2DBE580;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id FCURLForTodayPrivateDataTransactionQueue()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayPrivateDataTransactionQueue" isDirectory:0];

  return v3;
}

void sub_1B6433A1C(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B6415FF0(v3 + v4, a1, &unk_1EB94A100, &qword_1B680FD50);

  os_unfair_lock_unlock((v3 + v5));
}

void FCDateRange.init(dateInterval:)(uint64_t a1)
{
  v2 = sub_1B67D877C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B67D842C();
  v8 = sub_1B67D86DC();
  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_1B67D840C();
  v10 = sub_1B67D86DC();
  v9(v6, v2);
  v11 = [v7 initWithEarlierDate:v8 laterDate:v10];

  if (v11)
  {
    v12 = sub_1B67D843C();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B6434858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6434A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCSwizzleClassMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    ClassMethod = class_getClassMethod(a1, a2);
    v6 = class_getClassMethod(a1, a3);
    if (ClassMethod)
    {
      if (v6)
      {

        method_exchangeImplementations(ClassMethod, v6);
      }
    }
  }
}

void sub_1B64350F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t RecipeBoxType.recipeIDs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6435778;

  return v9(a1, a2);
}

uint64_t sub_1B64355E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6435678;

  return sub_1B641EE54();
}

uint64_t sub_1B6435678(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1B6435778(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64358AC, 0, 0);
  }
}

uint64_t sub_1B64358AC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 48);
    do
    {
      v18 = *(v4 - 1);
      v19 = *v4;
      v5 = RecipeBoxItem.recipeID.getter();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B6456B24((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 2;
      --v2;
    }

    while (v2);
    v12 = *(v0 + 24);
  }

  else
  {
    v13 = *(v0 + 24);

    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v0 + 8);

  return v14(v3);
}

void sub_1B6436358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCSpecialTagFeedTypeForTagID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 foodHubTagID];
    v7 = [v3 isEqualToString:v6];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v5 recipeCatalogTagID];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B6436AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FCUpdateAssetURLHostIfNeeded_block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_205 = [v0 BOOLForKey:@"replace_cdn_with_cvws"];
}

uint64_t FCContentModeFromString(void *a1)
{
  v1 = a1;
  if (v1 && ([&unk_1F2E71938 objectForKeyedSubscript:v1], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [&unk_1F2E71938 objectForKeyedSubscript:v1];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t FCUpdateAssetURLHostIfNeeded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1EDB27940 != -1)
  {
    v5 = v1;
    dispatch_once(&qword_1EDB27940, &__block_literal_global_165);
    v2 = v5;
  }

  if (_MergedGlobals_205 == 1)
  {
    v4 = v2;
    v1 = FCAllowedToRewriteAssetURLComponents(v2);
    v2 = v4;
    if (v1)
    {
      v1 = [v4 setHost:@"cvws.icloud-content.com"];
      v2 = v4;
    }
  }

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void sub_1B6438208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 64));
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FCTagAdjustName(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = FCBundle();
    v6 = [v5 localizedStringForKey:@"Sports" value:&stru_1F2DC7DC0 table:0];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id FCHeadlinesByArticleIDFromHeldRecords(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = FCIssuesWithHeldRecords(v16, a6, v19);
  if (a8)
  {
    v21 = -[FCHeadlineExperimentalTitleProvider initWithShouldShowAlternateHeadlines:]([FCHeadlineExperimentalTitleProvider alloc], "initWithShouldShowAlternateHeadlines:", [v15 shouldShowAlternateHeadlines]);
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x1E695DF20];
  v23 = [v17 allObjects];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __FCHeadlinesByArticleIDFromHeldRecords_block_invoke;
  v32[3] = &unk_1E7C406C8;
  v33 = v15;
  v34 = v16;
  v35 = v18;
  v36 = v19;
  v38 = v21;
  v39 = a7;
  v37 = v20;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v16;
  v29 = v15;
  v30 = [v22 fc_dictionaryWithKeys:v23 allowingNil:1 valueBlock:v32];

  return v30;
}

id FCIssuesWithHeldRecords(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v19 = "NSDictionary<NSString *,FCIssue *> *FCIssuesWithHeldRecords(FCAssetManager *__strong, FCHeldRecords<NTPBIssueRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong)";
    v20 = 2080;
    v21 = "FCArticleHeadlineUtilities.m";
    v22 = 1024;
    v23 = 82;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __FCIssuesWithHeldRecords_block_invoke;
  v15[3] = &unk_1E7C3B1B0;
  v16 = v7;
  v17 = v5;
  v8 = v5;
  v9 = v7;
  v10 = [v6 transformRecordsWithBlock:v15];
  v11 = [v10 fc_dictionaryWithKeySelector:sel_identifier];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1B6439F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

FCArticleHeadline *FCHeadlineWithHeldRecords(void *a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v48 = a8;
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v51 = "id<FCHeadlineProviding> FCHeadlineWithHeldRecords(__strong id<FCCoreConfiguration>, FCAssetManager *__strong, NSString *__strong, FCHeldRecords<NTPBArticleRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong, BOOL, NSDictionary<NSString *,FCIssue *> *__strong, FCHeadlineExperimentalTitleProvider *__strong)";
    v52 = 2080;
    v53 = "FCArticleHeadlineUtilities.m";
    v54 = 1024;
    v55 = 27;
    v56 = 2114;
    v57 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v51 = "id<FCHeadlineProviding> FCHeadlineWithHeldRecords(__strong id<FCCoreConfiguration>, FCAssetManager *__strong, NSString *__strong, FCHeldRecords<NTPBArticleRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong, BOOL, NSDictionary<NSString *,FCIssue *> *__strong, FCHeadlineExperimentalTitleProvider *__strong)";
    v52 = 2080;
    v53 = "FCArticleHeadlineUtilities.m";
    v54 = 1024;
    v55 = 28;
    v56 = 2114;
    v57 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v51 = "id<FCHeadlineProviding> FCHeadlineWithHeldRecords(__strong id<FCCoreConfiguration>, FCAssetManager *__strong, NSString *__strong, FCHeldRecords<NTPBArticleRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong, BOOL, NSDictionary<NSString *,FCIssue *> *__strong, FCHeadlineExperimentalTitleProvider *__strong)";
    v52 = 2080;
    v53 = "FCArticleHeadlineUtilities.m";
    v54 = 1024;
    v55 = 29;
    v56 = 2114;
    v57 = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v44 = [v17 recordsByID];
  v20 = [v44 objectForKeyedSubscript:v16];
  v49 = [v17 interestTokenForID:v16];
  v21 = [v20 sourceChannelTagID];

  if (v21)
  {
    v22 = [v20 sourceChannelTagID];
    v23 = [v18 objectForKeyedSubscript:v22];
  }

  else
  {
    v23 = 0;
  }

  v47 = v18;
  v24 = [v20 parentIssueID];
  if (v24 && (v25 = v24, [v14 paidBundleConfig], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "areMagazinesEnabled"), v26, v25, v27))
  {
    v28 = [v20 parentIssueID];
    v29 = [v19 objectForKeyedSubscript:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  v31 = a6;
  if (v23)
  {
    v31 = 0;
  }

  if (v20 && v49 && (v31 & 1) == 0)
  {
    v42 = [FCArticleHeadline alloc];
    [v14 topStoriesConfig];
    v32 = v46 = v17;
    [v32 styleConfigurations];
    v43 = v19;
    v34 = v33 = v15;
    [v14 topStoriesConfig];
    v36 = v35 = v16;
    v30 = -[FCArticleHeadline initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:](v42, "initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:", v20, v49, v23, v29, v34, [v36 storyTypeTimeout], objc_msgSend(v14, "articleRapidUpdatesTimeout"), v33, v48);

    v16 = v35;
    v15 = v33;
    v19 = v43;

    v17 = v46;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v30;
}

double FCCGRectFromBuffer(unint64_t a1)
{
  if (a1)
  {
    return HIWORD(a1) / 65535.0;
  }

  result = *MEMORY[0x1E695F058];
  v2 = *(MEMORY[0x1E695F058] + 8);
  v3 = *(MEMORY[0x1E695F058] + 16);
  v4 = *(MEMORY[0x1E695F058] + 24);
  return result;
}

uint64_t FCArticleRoleFromPBRole(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 8)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *FCCKLocalizedArticleArticleRecirculationConfigurationKey()
{
  v0 = +[FCAppleAccount sharedAccount];
  v1 = [v0 isContentStoreFrontSupported];

  v2 = @"articleRecirculationConfiguration";
  if (v1)
  {
    v3 = +[FCAppleAccount sharedAccount];
    v4 = [v3 contentStoreFrontID];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", @"articleRecirculationConfiguration", v4];
  }

  return v2;
}

FCProxyHeadline *FCAssignSingleHeadlineMetadata(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [[FCProxyHeadline alloc] initWithHeadline:v5 overrideMetadata:v6 configuration:v7];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

void sub_1B643CB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B643E998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6440134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B6441230()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = type metadata accessor for ThrottleRegistry();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v2[v3] = v4;
  *&v2[OBJC_IVAR___FCThrottleRegistry_userDefaults] = v0;
  *&v2[OBJC_IVAR___FCThrottleRegistry_maxRetryAfter] = 0x40E5180000000000;
  v6.receiver = v2;
  v6.super_class = v1;
  result = objc_msgSendSuper2(&v6, sel_init);
  qword_1EDB20630 = result;
  return result;
}

uint64_t sub_1B6441388(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_1B67D877C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1B67D9EFC();

  *&v23[0] = 0xD000000000000016;
  *(&v23[0] + 1) = 0x80000001B682A1D0;
  MEMORY[0x1B8C94910](a1, a2);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_1B67D963C();

  v17 = [v15 objectForKey_];

  if (v17)
  {
    sub_1B67D9E3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_1B6418AB4(v23, &qword_1EB94B738, &unk_1B6819580);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_9;
  }

  v18 = swift_dynamicCast();
  (*(v11 + 56))(v9, v18 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_9:
    sub_1B6418AB4(v9, &unk_1EB94A100, &qword_1B680FD50);
    return 0;
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1B67D872C();
  if (v19 > 0.0)
  {
    *a3 = ceil(v19) + 1.0;
    (*(v11 + 8))(v14, v10);
    return 1;
  }

  (*(v11 + 8))(v14, v10);
  return 0;
}

void sub_1B64426A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void FCOperationFlagsApplyToURLRequest(char a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 setAllowsCellularAccess:0];
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 setAllowsExpensiveNetworkAccess:0];
  v3 = v4;
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v4 setAllowsConstrainedNetworkAccess:0];
    v3 = v4;
  }

LABEL_5:
}

id FCClientInfoHeaderValue()
{
  if (qword_1EDB27810 != -1)
  {
    dispatch_once(&qword_1EDB27810, &__block_literal_global_147);
  }

  v1 = _MergedGlobals_193;

  return v1;
}

void __FCClientInfoHeaderValue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v1 = CKProductType();
  v2 = @"UNKNOWN";
  if (!v1)
  {
    v1 = @"UNKNOWN";
  }

  v29 = v1;
  v25 = v0;
  [v0 appendFormat:@"<%@>", v1];
  v3 = [MEMORY[0x1E695B880] sharedOptions];
  v4 = [v3 productName];

  v5 = [MEMORY[0x1E695B880] sharedOptions];
  v6 = [v5 productVersion];

  v7 = [MEMORY[0x1E695B880] sharedOptions];
  v8 = [v7 buildVersion];

  v28 = v4;
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = @"UNKNOWN";
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v27 = v8;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = @"UNKNOWN";
  }

  [v0 appendFormat:@" <%@;%@;%@>", v9, v10, v11];
  v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.newscore"];
  v12 = [v26 infoDictionary];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v14 = *MEMORY[0x1E695E148];
  v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E148]];
  v24 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v24 infoDictionary];
  v17 = [MEMORY[0x1E696AAE8] mainBundle];
  v18 = [v17 bundleIdentifier];

  v19 = [v16 objectForKeyedSubscript:v14];
  if ([(__CFString *)v13 length])
  {
    v20 = v13;
  }

  else
  {
    v20 = @"UNKNOWN";
  }

  if ([(__CFString *)v15 length])
  {
    v21 = v15;
  }

  else
  {
    v21 = @"1.0";
  }

  if ([(__CFString *)v18 length])
  {
    v2 = v18;
  }

  if ([(__CFString *)v19 length])
  {
    v22 = v19;
  }

  else
  {
    v22 = @"1.0";
  }

  [v25 appendFormat:@" <%@/%@ (%@/%@)>", v20, v21, v2, v22];
  v23 = _MergedGlobals_193;
  _MergedGlobals_193 = v25;
}

id FCUserAgentHeaderValue()
{
  if (qword_1EDB27820 != -1)
  {
    dispatch_once(&qword_1EDB27820, &__block_literal_global_29_0);
  }

  v1 = qword_1EDB27818;

  return v1;
}

void __FCUserAgentHeaderValue_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.news.widget"];

  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v14 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    [v3 stringWithFormat:@"AppleNewsWidget/%@ Version/%@", v4, v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.newsd"];

    v10 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v14 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v5 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    v6 = v11;
    if (v9)
    {
      [v10 stringWithFormat:@"AppleNewsAgent/%@ Version/%@", v4, v11];
    }

    else
    {
      [v10 stringWithFormat:@"AppleNews/%@ Version/%@", v4, v11];
    }
  }
  v12 = ;
  v13 = qword_1EDB27818;
  qword_1EDB27818 = v12;
}

void sub_1B64439A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCFlattenArrayToArray(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          FCFlattenArrayToArray(v9, v4);
        }

        else
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B64454BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B64462C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_1B6446F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1B6447348()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v2 = sub_1B67D9ACC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_1B67D9A8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  (*(v8 + 8))(v0 + v10, v7);
  v14 = *(v0 + v12 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v11 | 7);
}

uint64_t sub_1B64474EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447528()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447560()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64475B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B64475CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B644763C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447674()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B64476B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
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

uint64_t sub_1B644777C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
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

uint64_t sub_1B6447844()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447880()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B64478B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644790C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B644795C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B64479BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B64479FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447A34()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6447A90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447AC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447B00()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B6447C1C()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447C74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B6447DBC()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447E0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447E44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447E7C()
{
  Request = type metadata accessor for SmarterFetchRequest(0);
  v31 = *(*(Request - 1) + 80);
  v28 = *(*(Request - 1) + 64);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  v2 = *(v30 - 8);
  v3 = *(v2 + 80);
  v26 = *(v2 + 64);
  v4 = sub_1B67D877C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v27 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v29 = (v31 + 40) & ~v31;
  v9 = v0 + v29;
  type metadata accessor for SmarterFetchRequest.DataType(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v25 = *(v5 + 8);
    v25(v9, v4);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0) + 48);
    if (!(*(v5 + 48))(v9 + v10, 1, v4))
    {
      v25(v9 + v10, v4);
    }
  }

  v11 = *(v9 + Request[5] + 8);

  v12 = *(v9 + Request[6] + 8);

  v13 = *(v9 + Request[7]);

  v14 = *(v9 + Request[9]);

  v15 = *(v9 + Request[10]);

  v16 = *(v9 + Request[11]);

  v17 = *(v9 + Request[12]);

  v18 = *(v9 + Request[13]);

  v19 = *(v9 + Request[14] + 8);

  v20 = (v9 + Request[15]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_1B645745C(*v20, v21);
  }

  v22 = (v29 + v28 + v3) & ~v3;
  v23 = (v22 + v26 + v6) & ~v6;
  (*(v2 + 8))(v0 + v22, v30);
  (*(v5 + 8))(v0 + v23, v4);

  return MEMORY[0x1EEE6BDD0](v0, v23 + v27, v31 | v3 | v6 | 7);
}

uint64_t sub_1B64481A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64481E4()
{
  v1 = sub_1B67D877C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B64482B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6448300()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6448340()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B644839C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64483D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6448414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B6448578()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF8, &qword_1B6816E10);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64485EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B64486BC()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64486F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B6448884()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B64488FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6448954()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B64489A0()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64489D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B6448A28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6448A68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6448AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6448AE4()
{
  sub_1B645745C(v0[2], v0[3]);
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B6448B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B67D87BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B67D877C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B6448C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B67D87BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B67D877C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B6448D24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  type metadata accessor for FeedItemSequence();

  return swift_getWitnessTable();
}

uint64_t sub_1B6448D80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6448DCC()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6448E04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6448E44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for FeedItemInventory.Metadata();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = v0 + v5;
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5, 1, v9))
  {
    (*(v10 + 8))(v0 + v5, v9);
  }

  v11 = *(v3 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  if (!(*(v13 + 48))(v8 + v11, 1, AssociatedTypeWitness))
  {
    (*(v13 + 8))(v8 + v11, AssociatedTypeWitness);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B6449014()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644904C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B644909C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B64490E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644912C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B644916C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B6449214()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for RecipeItemInventory.Metadata();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  v9 = &v0[v5];
  v10 = sub_1B67D877C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v0[v5], 1, v10))
  {
    (*(v11 + 8))(&v0[v5], v10);
  }

  v12 = *(v3 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, AssociatedTypeWitness))
  {
    (*(v14 + 8))(&v9[v12], AssociatedTypeWitness);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B64493E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF8, &qword_1B6816E10);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6449458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B698, &qword_1B6816E18);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6A0, &unk_1B6816E20);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6449510()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B644955C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B644959C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B64495DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B67D85FC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6449648(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B67D85FC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 sub_1B64496D4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B64496E0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B6449720()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange();
  v3 = sub_1B67D999C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 88) & ~v5;
  v7 = *(v4 + 64);
  v8 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1B6449848()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6449880()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64498B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6449904()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B6449A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SmarterFetchRequest.DataType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6449AE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6449B20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B6449D2C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_1B6449D58(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v56 = sub_1B67DA45C();
  v55 = *(v56 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v50 - v17;
  v19 = *(a5[2] + 8);
  sub_1B67D8C2C();
  v20 = *(a5[1] + 8);
  sub_1B67D8AAC();
  *&v68 = a1;
  *(&v68 + 1) = a2;
  sub_1B67D8DDC();

  v21 = a5[3];
  v53 = a5;
  v21(a4, a5);
  v71 = a3;
  v22 = [a3 modificationDate];
  if (v22)
  {
    v23 = v22;
    sub_1B67D874C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1B67D877C();
  (*(*(v25 - 8) + 56))(v18, v24, 1, v25);
  sub_1B67D8DDC();

  *(&v69 + 1) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v68);
  v51 = *(a4 - 8);
  v27 = *(v51 + 16);
  v57 = a6;
  v58 = a4;
  v27(boxed_opaque_existential_0, a6, a4);
  sub_1B67DA43C();
  v54 = v14;
  sub_1B67DA44C();
  v28 = sub_1B67DA00C();

  sub_1B67DA10C();
  v69 = v66;
  v70 = v67;
  v68 = v65;
  if (*(&v67 + 1))
  {
    v29 = &qword_1EB949A68;
    v59 = v28;
    do
    {

      sub_1B644A4F0(&v69, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A50, &qword_1B680FD58);
      if (swift_dynamicCast())
      {
        v30 = v29;
        sub_1B6416D08(v63, &v65);
        v32 = *(&v66 + 1);
        v31 = v67;
        __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
        if ((*(v31 + 8))(v32, v31))
        {
          [v71 encryptedValues];
          swift_getObjectType();
          v33 = *(&v66 + 1);
          v34 = v67;
          __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          (*(v34 + 24))(v33, v34);
          sub_1B67D9D3C();

          swift_unknownObjectRelease();
        }

        else
        {
          v35 = *(&v66 + 1);
          v36 = v67;
          __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          (*(v36 + 24))(v35, v36);
          sub_1B644A500();
          sub_1B67D9D3C();
        }

        v29 = v30;
        sub_1B644A54C(v63, &v60);
        if (v61)
        {
          sub_1B6416D08(&v60, v62);
          sub_1B6431D18(v62, &v60);
          v37 = *(&v66 + 1);
          v38 = v67;
          __swift_mutable_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          (*(v38 + 40))(&v60, v37, v38);
          __swift_destroy_boxed_opaque_existential_1(v62);
        }

        else
        {
          sub_1B6418AB4(&v60, v30, &qword_1B680FD68);
          v39 = *(&v66 + 1);
          v40 = v67;
          __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          if ((*(v40 + 16))(v39, v40))
          {
            v44 = *(&v66 + 1);
            v45 = v67;
            __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
            v46 = (*(v45 + 24))(v44, v45);
            v48 = v47;
            sub_1B644A5BC();
            swift_allocError();
            *v49 = v46;
            v49[1] = v48;
            swift_willThrow();

            sub_1B6418AB4(v63, &qword_1EB949A68, &qword_1B680FD68);
            (*(v55 + 8))(v54, v56);
            (*(v51 + 8))(v57, v58);
            __swift_destroy_boxed_opaque_existential_1(&v65);
            return;
          }
        }

        sub_1B6418AB4(v63, v30, &qword_1B680FD68);
        __swift_destroy_boxed_opaque_existential_1(&v65);
      }

      else
      {
        v64 = 0;
        memset(v63, 0, sizeof(v63));
        sub_1B6418AB4(v63, &qword_1EB949A58, &qword_1B680FD60);
      }

      sub_1B67DA10C();
      v69 = v66;
      v70 = v67;
      v68 = v65;
    }

    while (*(&v67 + 1));
  }

  v41 = v57;
  v42 = v52;
  v43 = v58;
  (v53[4])(v58);
  if (v42)
  {

    (*(v55 + 8))(v54, v56);
    (*(v51 + 8))(v41, v43);
  }

  else
  {
    (*(v55 + 8))(v54, v56);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1B644A4F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B644A500()
{
  result = qword_1EB949A60;
  if (!qword_1EB949A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB949A60);
  }

  return result;
}

uint64_t sub_1B644A54C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A68, &qword_1B680FD68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B644A5BC()
{
  result = qword_1EB950610[0];
  if (!qword_1EB950610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950610);
  }

  return result;
}

uint64_t sub_1B644A610(void *a1, uint64_t a2)
{
  v32 = sub_1B67DA45C();
  v31 = *(v32 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v41 + 1) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v2, a2);
  sub_1B67DA43C();
  v30 = v7;
  sub_1B67DA44C();
  v9 = sub_1B67DA00C();

  sub_1B67DA10C();
  v41 = v38;
  v42 = v39;
  v40 = v37;
  if (*(&v39 + 1))
  {
    v43 = v9;
    do
    {

      sub_1B644A4F0(&v41, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A50, &qword_1B680FD58);
      if (swift_dynamicCast())
      {
        sub_1B6416D08(v35, &v37);
        v10 = *(&v38 + 1);
        v11 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(v11 + 32))(&v33, v10, v11);
        if (v34)
        {
          sub_1B6416D08(&v33, v35);
          v12 = *(&v38 + 1);
          v13 = v39;
          __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
          if ((*(v13 + 8))(v12, v13))
          {
            [a1 encryptedValues];
            swift_getObjectType();
            v14 = a1;
            v16 = *(&v38 + 1);
            v15 = v39;
            __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
            v17 = v16;
            a1 = v14;
            (*(v15 + 24))(v17, v15);
            sub_1B6431D18(v35, &v33);
            sub_1B67D9D4C();
            swift_unknownObjectRelease();
          }

          else
          {
            v20 = *(&v38 + 1);
            v21 = v39;
            __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
            (*(v21 + 24))(v20, v21);
            sub_1B6431D18(v35, &v33);
            sub_1B644A500();
            sub_1B67D9D4C();
          }

          __swift_destroy_boxed_opaque_existential_1(v35);
          __swift_destroy_boxed_opaque_existential_1(&v37);
        }

        else
        {
          sub_1B6418AB4(&v33, &qword_1EB949A68, &qword_1B680FD68);
          v18 = *(&v38 + 1);
          v19 = v39;
          __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
          if ((*(v19 + 16))(v18, v19))
          {
            v23 = *(&v38 + 1);
            v24 = v39;
            __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
            v25 = (*(v24 + 24))(v23, v24);
            v27 = v26;
            sub_1B644A5BC();
            swift_allocError();
            *v28 = v25;
            v28[1] = v27;
            swift_willThrow();

            (*(v31 + 8))(v30, v32);
            return __swift_destroy_boxed_opaque_existential_1(&v37);
          }

          __swift_destroy_boxed_opaque_existential_1(&v37);
        }
      }

      else
      {
        v36 = 0;
        memset(v35, 0, sizeof(v35));
        sub_1B6418AB4(v35, &qword_1EB949A58, &qword_1B680FD60);
      }

      sub_1B67DA10C();
      v41 = v38;
      v42 = v39;
      v40 = v37;
    }

    while (*(&v39 + 1));
  }

  (*(v31 + 8))(v30, v32);
}

uint64_t sub_1B644AB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B644AB48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B644ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v8 = sub_1B67D9A5C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v13 = v7;
  v14 = v3;
  v15 = a1;
  v16 = a2;
  sub_1B644BF68(&v12[-v10]);
  return sub_1B67D9ADC();
}

uint64_t sub_1B644AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a4;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v32 = a5;
  v7 = sub_1B67D9A8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v31 = &v30 - v10;
  v12 = sub_1B67D9ACC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - v19;
  v21 = sub_1B67D993C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, v33, v12);
  v22 = a1;
  v23 = v7;
  (*(v8 + 16))(v11, v22, v7);
  v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v25 = (v14 + *(v8 + 80) + v24) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v32;
  (*(v13 + 32))(&v26[v24], v16, v12);
  (*(v8 + 32))(&v26[v25], v31, v23);
  v27 = &v26[(v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
  v28 = v35;
  *v27 = v34;
  *(v27 + 1) = v28;

  sub_1B644BCA8(0, 0, v20, &unk_1B680FE08, v26);
}

uint64_t sub_1B644AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = *(a8 - 8);
  v8[22] = v9;
  v10 = *(v9 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v11 = sub_1B67D9A3C();
  v8[25] = v11;
  v12 = *(v11 - 8);
  v8[26] = v12;
  v13 = *(v12 + 64) + 15;
  v8[27] = swift_task_alloc();
  v14 = *(*(sub_1B67D9DFC() - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v15 = sub_1B67D9ABC();
  v8[30] = v15;
  v16 = *(v15 - 8);
  v8[31] = v16;
  v17 = *(v16 + 64) + 15;
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B644B190, 0, 0);
}

uint64_t sub_1B644B190()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[17];
  sub_1B67D9ACC();
  sub_1B67D9A9C();
  v5 = *(MEMORY[0x1E69E87A8] + 4);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_1B644B260;
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[30];

  return MEMORY[0x1EEE6DB90](v8, 0, 0, v9, v0 + 12);
}

uint64_t sub_1B644B260()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1B644B8E4;
  }

  else
  {
    v3 = sub_1B644B370;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B644B370()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[22];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[24];
  if (v4 == 1)
  {
    v6 = v0[18];
    (*(v0[31] + 8))(v0[32], v0[30]);
    v0[16] = 0;
    sub_1B67D9A8C();
    sub_1B67D9A7C();
    v7 = v0[32];
    v8 = v0[28];
    v9 = v0[29];
    v10 = v0[27];
    v11 = v0[23];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];
    v17 = v0[18];
    (*(v3 + 32))(v0[23], v1, v2);
    sub_1B67D9A8C();
    sub_1B67D9A6C();
    (*(v15 + 8))(v14, v16);
    v18 = *(MEMORY[0x1E69E87A8] + 4);
    v19 = swift_task_alloc();
    v0[33] = v19;
    *v19 = v0;
    v19[1] = sub_1B644B260;
    v20 = v0[32];
    v21 = v0[29];
    v22 = v0[30];

    return MEMORY[0x1EEE6DB90](v21, 0, 0, v22, v0 + 12);
  }
}

uint64_t sub_1B644B594()
{
  v2 = *(*v1 + 272);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1B644BBA4;
  }

  else
  {
    v3 = sub_1B644B6A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B644B6A4()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[35];
    v5 = v0[24];
    v6 = v0[18];
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v0[15] = 0;
    sub_1B67D9A8C();
    sub_1B67D9A7C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v7 = v0[32];
    v8 = v0[28];
    v9 = v0[29];
    v10 = v0[27];
    v11 = v0[23];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[26];
    v14 = v0[27];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[18];
    (*(v3 + 32))(v0[23], v1, v2);
    sub_1B67D9A8C();
    sub_1B67D9A6C();
    (*(v15 + 8))(v14, v16);
    v19 = v0[11];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
    v20 = *(MEMORY[0x1E69E85B0] + 4);
    v21 = swift_task_alloc();
    v0[34] = v21;
    *v21 = v0;
    v21[1] = sub_1B644B594;
    v22 = v0[28];

    return MEMORY[0x1EEE6D8D0](v22, 0, 0);
  }
}

uint64_t sub_1B644B8E4()
{
  v1 = v0[19];
  v2 = v0[20];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v0[35] = v0[12];
  v1();
  v3 = v0[5];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  sub_1B67D9A2C();

  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_1B644B594;
  v11 = v0[28];

  return MEMORY[0x1EEE6D8D0](v11, 0, 0);
}

uint64_t sub_1B644BBA4()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[35];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v0[13] = v1;
  v6 = v1;
  sub_1B67D9A8C();
  sub_1B67D9A7C();

  v7 = v0[32];
  v8 = v0[28];
  v9 = v0[29];
  v10 = v0[27];
  v11 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B644BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1B644C200(a3, v26 - v10);
  v12 = sub_1B67D993C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B644C270(v11);
  }

  else
  {
    sub_1B67D992C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B67D989C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B67D965C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1B644C270(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B644C270(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B644BF68@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v3 = sub_1B67D9A5C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B644C054()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v3 = *(sub_1B67D9ACC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1B67D9A8C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B642694C;

  return sub_1B644AF94(v11, v12, v13, v0 + v4, v0 + v7, v9, v10, v2);
}

uint64_t sub_1B644C200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B644C270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B644C2D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B642694C;

  return sub_1B641633C(a1, v5);
}

uint64_t sub_1B644C390()
{
  v0 = sub_1B67D877C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  sub_1B67D86BC();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  v8 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B644C560(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1FC88, off_1E7C345E0);
  result = sub_1B67D88CC();
  if (result)
  {
    v7 = result;
    a2(0);
    return a3(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B644C5F8(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1FC88, off_1E7C345E0);
  result = sub_1B67D88CC();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB949AE0, qword_1B681A0D0);
    v6 = sub_1B650C1EC();
    v7 = *v6;
    v8 = *(v6 + 1);

    v9 = sub_1B67D88BC();

    if (v9)
    {
      type metadata accessor for DropboxReadingHistory();
      return DropboxReadingHistory.__allocating_init(todayDropbox:articleExposureRegistry:)(v4, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id DropboxBundleSubscriptionManager.__allocating_init(todayDropbox:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v3[v4] = v5;
  *&v3[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider] = 0;
  *&v3[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_todayDropbox] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DropboxBundleSubscriptionManager.init(todayDropbox:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider] = 0;
  *&v1[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_todayDropbox] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t DropboxBundleSubscriptionManager.addInterest()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InterestToken();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = InterestToken.__allocating_init(_:)(sub_1B644C8F8, v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for InterestToken;
  *a1 = result;
  return result;
}

uint64_t sub_1B644C8F8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
    v2 = result;

    os_unfair_lock_lock((v1 + 24));
    v3 = *(v1 + 16);
    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_1B644C97C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    *a3 = v4;
LABEL_6:
    swift_unknownObjectRetain();
    return sub_1B64475B8(v5);
  }

  v7 = *(a2 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_todayDropbox);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B644DC08;
  *(v9 + 24) = v8;
  v12[4] = sub_1B644DC48;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B644CB30;
  v12[3] = &block_descriptor;
  v10 = _Block_copy(v12);

  [v7 peekSyncWithAccessor_];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      *a3 = result;
      swift_unknownObjectRetain();
      v5 = sub_1B644DC08;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B644CB30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id DropboxBundleSubscriptionManager.cachedSubscription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644CDA4((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 bundleSubscription];
  swift_unknownObjectRelease();
  if (!v2)
  {
    v3 = sub_1B67D97AC();
    v2 = FCBundleSubscriptionMakeWithStateInline(v3);
  }

  return v2;
}

id DropboxBundleSubscriptionManager.validatedCachedSubscription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644DC8C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v4 bundleSubscription];
  swift_unknownObjectRelease();
  return v2;
}

id FCBundleSubscriptionMakeWithStateInline(void *a1)
{
  v1 = a1;
  v2 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:v1];
  v3 = MEMORY[0x1E696AD98];
  v4 = v2;
  v5 = [v3 numberWithUnsignedInteger:v2 + 1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:~v2];
  objc_setAssociatedObject(v4, (v2 + 1), v5, 1);
  objc_setAssociatedObject(v4, (-2 - v2), v6, 1);

  return v4;
}

id DropboxBundleSubscriptionManager.bundleSubscription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644DC8C((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 bundleSubscription];
  swift_unknownObjectRelease();
  if (!v2)
  {
    v3 = sub_1B67D97AC();
    v2 = FCBundleSubscriptionMakeWithStateInline(v3);
  }

  return v2;
}

uint64_t DropboxBundleSubscriptionManager.entitlementsOverrideProvider.getter()
{
  v1 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t DropboxBundleSubscriptionManager.entitlementsOverrideProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*DropboxBundleSubscriptionManager.prepareForUse(completion:)(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t DropboxBundleSubscriptionManager.purchasedTagIDs.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644DC8C((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 purchasedTagIDs];
  swift_unknownObjectRelease();
  v3 = sub_1B67D9AFC();

  return v3;
}

id DropboxBundleSubscriptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DropboxBundleSubscriptionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B644DA6C(void (*a1)(id))
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v3 + 24));
    sub_1B644DC8C((v3 + 16), &v6);
    os_unfair_lock_unlock((v3 + 24));
    v4 = [v6 bundleSubscription];
    swift_unknownObjectRelease();
    if (!v4)
    {
      v5 = sub_1B67D97AC();
      v4 = FCBundleSubscriptionMakeWithStateInline(v5);
    }

    a1(v4);
  }
}

uint64_t sub_1B644DBAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B644DBCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1B644DC08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B644DC48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of FeedItemScoringServiceType.scoreItems(in:configurationSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B642694C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1B644DDE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(v6, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  *a1 = result;
  return result;
}

uint64_t sub_1B644DF70()
{
  v1 = *v0;
  sub_1B67D8B6C();
  v2 = sub_1B67D8B8C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1B67D8C0C();
}

uint64_t sub_1B644DFB8()
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v2)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B644E00C()
{
  result = qword_1EB949F60;
  if (!qword_1EB949F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB949F60);
  }

  return result;
}

unint64_t sub_1B644E064()
{
  result = qword_1EB949F68;
  if (!qword_1EB949F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB949F68);
  }

  return result;
}

uint64_t sub_1B644E0B8()
{
  v1 = *v0;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

id static CKContainer.newsPrivate.getter()
{
  v0 = [objc_opt_self() defaultConfiguration];
  v1 = [v0 privateDataContainerIdentifier];
  if (!v1)
  {
    sub_1B67D964C();
    v1 = sub_1B67D963C();
  }

  if ([v0 environment])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:v1 environment:v2];

  v4 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID_];
  return v4;
}

id static CKContainer.newsPrivateSecure.getter()
{
  v0 = [objc_opt_self() defaultConfiguration];
  v1 = [v0 privateDataSecureContainerIdentifier];
  if (!v1)
  {
    sub_1B67D964C();
    v1 = sub_1B67D963C();
  }

  if ([v0 environment])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:v1 environment:v2];

  v4 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  [v4 setUseZoneWidePCS_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v3 options:v4];

  return v5;
}

uint64_t sub_1B644E324()
{
  v0 = sub_1B67D882C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1B67D883C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = *sub_1B646A628();

  sub_1B67D887C();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v12[15] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F78, &qword_1B68100A8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  result = sub_1B67D885C();
  qword_1EDB23E20 = result;
  return result;
}

uint64_t *sub_1B644E4E8()
{
  if (qword_1EDB23E08 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23E10;
}

uint64_t *sub_1B644E570()
{
  if (qword_1EDB23DF8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23E00;
}

uint64_t *sub_1B644E5F8()
{
  if (qword_1EDB23DE8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23DF0;
}

uint64_t sub_1B644E680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v23 = a3;
  v22 = sub_1B67D882C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B67D881C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D883C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F70, &qword_1B68100A0);
  v18 = *a2;
  sub_1B67D964C();
  *v17 = sub_1B67D964C();
  v17[1] = v19;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D6E98], v13);
  (*(v9 + 104))(v12, *MEMORY[0x1E69D6D00], v8);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6E90], v22);
  result = sub_1B67D884C();
  *v23 = result;
  return result;
}

uint64_t *sub_1B644E900()
{
  if (qword_1EDB23DD8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23DE0;
}

uint64_t sub_1B644E974(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t getEnumTagSinglePayload for MetadataEntity.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetadataEntity.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B644EAD4()
{
  result = sub_1B67D964C();
  qword_1EB95A888 = result;
  unk_1EB95A890 = v1;
  return result;
}

uint64_t sub_1B644EB04()
{
  result = sub_1B67D964C();
  qword_1EB95A898 = result;
  unk_1EB95A8A0 = v1;
  return result;
}

uint64_t sub_1B644EB84(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

Swift::Bool __swiftcall ItemExposureRegistryType.hasItemIDBeenExposed(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  ItemExposureRegistryType.firstExposureDate(for:)(countAndFlagsBits, object, &v9 - v5);
  v7 = sub_1B67D877C();
  LOBYTE(object) = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_1B6418AB4(v6, &unk_1EB94A100, &qword_1B680FD50);
  return object;
}

uint64_t ItemExposureRegistryType.firstExposureDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B68100D0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B67D97AC();

  v9 = [v3 exposuresForItemIDs_];

  type metadata accessor for ItemExposure();
  v10 = sub_1B67D97BC();

  if (v10 >> 62)
  {
    result = sub_1B67DA04C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v19 = sub_1B67D877C();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
    goto LABEL_9;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1B8C95180](0, v10);

    v21 = OBJC_IVAR___FCItemExposure_firstExposedAt;
    v14 = sub_1B67D877C();
    v22 = *(v14 - 8);
    (*(v22 + 16))(a3, v20 + v21, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);

    v13 = OBJC_IVAR___FCItemExposure_firstExposedAt;
    v14 = sub_1B67D877C();
    v22 = *(v14 - 8);
    (*(v22 + 16))(a3, &v12[v13], v14);
  }

  v15 = *(v22 + 56);
  v16 = a3;
  v17 = 0;
  v18 = v14;
LABEL_9:

  return v15(v16, v17, 1, v18);
}

void ItemExposureRegistryType.markItemIDAsExposed(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B68100E0;
  type metadata accessor for ItemExposure();
  (*(v9 + 16))(v12, a3, v8);

  *(v13 + 32) = ItemExposure.__allocating_init(itemID:exposedAt:version:)(a1, a2, v12, 0);
  v14 = sub_1B67D97AC();

  [v4 registerExposures_];
}

Swift::Void __swiftcall ItemExposureRegistryType.markItemIDsAsExposed(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_1B67D877C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B67D876C();
  v10 = v7;
  sub_1B644F358(sub_1B644F32C, v9, a1._rawValue);
  type metadata accessor for ItemExposure();
  v8 = sub_1B67D97AC();

  [v1 registerExposures_];

  (*(v4 + 8))(v7, v3);
}

id sub_1B644F220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  type metadata accessor for ItemExposure();
  (*(v7 + 16))(v10, a2, v6);

  result = ItemExposure.__allocating_init(itemID:exposedAt:version:)(v12, v11, v10, 0);
  *a3 = result;
  return result;
}

uint64_t sub_1B644F358(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v12[0] = *(i - 1);
      v12[1] = v10;

      a1(&v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1B67D9F7C();
      v11 = *(v14 + 16);
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ItemExposureRegistryType.markItemIDAsExposed(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;

  ItemExposureRegistryType.markItemIDsAsExposed(_:)(inited);
  swift_setDeallocating();
  sub_1B644F4F4(inited + 32);
}

unint64_t sub_1B644F594()
{
  result = qword_1EDB1FB00;
  if (!qword_1EDB1FB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB1FB00);
  }

  return result;
}

id sub_1B644F624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v39 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = v33 - v6;
  v37 = sub_1B67D8A9C();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1B67D9CEC();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D9CBC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1B67D949C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F80, &qword_1B6810128);
  v18 = swift_allocObject();
  *(v18 + 44) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = 0;
  *(v18 + 40) = -1;
  *&v2[v17] = v18;
  v34 = OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue;
  v19 = sub_1B644F594();
  v33[0] = "nFirstExposedAt";
  v33[1] = v19;
  sub_1B67D947C();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1B6430304(&qword_1EDB1FB08, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A980, &unk_1B6810130);
  v20 = v35;
  sub_1B6458C04(&qword_1EDB1FB10, &unk_1EB94A980, &unk_1B6810130);
  v21 = v37;
  sub_1B67D9E5C();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8090], v36);
  v23 = v38;
  v22 = v39;
  *&v2[v34] = sub_1B67D9D2C();
  v24 = OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_fileURL;
  v25 = sub_1B67D85FC();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v3[v24], v22, v25);
  sub_1B6415FF0(v42, v23, &unk_1EB94B3E0, &qword_1B68165A0);
  v27 = *(v20 + 48);
  if (v27(v23, 1, v21) == 1)
  {
    v28 = sub_1B6471324();
    v29 = v40;
    (*(v20 + 16))(v40, v28, v21);
    v30 = v29;
    if (v27(v23, 1, v21) != 1)
    {
      sub_1B6418AB4(v23, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    v30 = v40;
    (*(v20 + 32))(v40, v23, v21);
  }

  (*(v20 + 32))(&v3[OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_logger], v30, v21);
  v43.receiver = v3;
  v43.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v43, sel_init);
  sub_1B6418AB4(v42, &unk_1EB94B3E0, &qword_1B68165A0);
  (*(v26 + 8))(v22, v25);
  return v31;
}

id sub_1B644FB50()
{
  ObjectType = swift_getObjectType();
  sub_1B644FB98();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1B644FB98()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  sub_1B67D9D0C();
  v3 = *(v1 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
  os_unfair_lock_lock((v3 + 44));
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  if (v5 != 255)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 32);
    if (v5)
    {
      sub_1B6453A28(*(v3 + 16), *(v3 + 24), *(v3 + 32), v5);
    }

    else
    {
      sub_1B67D8F2C();
    }
  }

  sub_1B64539D4();
  v8 = swift_allocError();
  *v9 = 0;
  *(v3 + 16) = v8;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  os_unfair_lock_unlock((v3 + 44));
}

char *sub_1B644FDFC(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_1B67D8B1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = a2 >> 62;
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v9;
  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B67DA04C())
  {
    v16 = MEMORY[0x1E69E7CC0];
    v51 = a2;
    v43 = v14;
    if (!i)
    {
      goto LABEL_16;
    }

    *&v47 = MEMORY[0x1E69E7CC0];
    result = sub_1B6456B24(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v40 = v3;
    v41 = v11;
    v42 = v10;
    v46 = a1;
    v16 = v47;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = (MEMORY[0x1B8C95180](v18, v51) + OBJC_IVAR___FCItemExposure_itemID);
        swift_beginAccess();
        v21 = *v19;
        v20 = v19[1];

        swift_unknownObjectRelease();
        *&v47 = v16;
        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B6456B24((v22 > 1), v23 + 1, 1);
          v16 = v47;
        }

        ++v18;
        *(v16 + 16) = v23 + 1;
        v24 = v16 + 16 * v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v20;
      }

      while (i != v18);
    }

    else
    {
      v25 = (a2 + 32);
      do
      {
        v26 = (*v25 + OBJC_IVAR___FCItemExposure_itemID);
        swift_beginAccess();
        v28 = *v26;
        v27 = v26[1];
        *&v47 = v16;
        v29 = *(v16 + 16);
        v30 = *(v16 + 24);

        if (v29 >= v30 >> 1)
        {
          sub_1B6456B24((v30 > 1), v29 + 1, 1);
          v16 = v47;
        }

        *(v16 + 16) = v29 + 1;
        v31 = v16 + 16 * v29;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        ++v25;
        --i;
      }

      while (i);
    }

    a1 = v46;
    v11 = v41;
    v10 = v42;
    v3 = v40;
LABEL_16:
    sub_1B67D8D5C();
    sub_1B64503A4(v16);

    v32 = v44;
    sub_1B67D8C8C();

    v33 = sub_1B67D8E4C();
    v34 = v45;
    (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
    v35 = sub_1B67D8D2C();
    if (v3)
    {

      sub_1B6418AB4(v34, &qword_1EB94B510, &unk_1B68102C0);
      return (*(v11 + 8))(v32, v10);
    }

    v36 = v35;

    sub_1B6418AB4(v34, &qword_1EB94B510, &unk_1B68102C0);
    (*(v11 + 8))(v32, v10);
    *&v47 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A018, &qword_1B6810318);
    v10 = sub_1B6458C04(&qword_1EDB1E618, &qword_1EB94A018, &qword_1B6810318);
    sub_1B6458C58();
    v45 = sub_1B67D970C();

    if (v43)
    {
      a2 = v51;
      v11 = sub_1B67DA04C();
      if (!v11)
      {
      }
    }

    else
    {
      a2 = v51;
      v11 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
      }
    }

    v46 = a1;
    a1 = 0;
    v14 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v37 = MEMORY[0x1B8C95180](a1, a2);
      }

      else
      {
        if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v37 = *(a2 + 8 * a1 + 32);
      }

      v38 = v37;
      v10 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      sub_1B64504A0(v45, v37, v50);
      sub_1B67D8D4C();
      v47 = v50[0];
      v48 = v50[1];
      v49 = v50[2];
      sub_1B67D8CDC();

      ++a1;
      if (v10 == v11)
      {
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64503A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B6456B04(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69D62D8];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1B6456B04((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = MEMORY[0x1E69E6158];
      v13 = v5;
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v9 + 1;
      sub_1B6416D08(&v11, v2 + 40 * v9 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B64504A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v114 = a3;
  v115 = sub_1B67D877C();
  v5 = *(v115 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v115);
  v9 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v107 = v91 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v111 = (v91 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v109 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = v91 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v108 = v91 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v105 = v91 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v112 = v91 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v110 = v91 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v91 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v91 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  *&v113 = v91 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = v91 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = v91 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = v91 - v41;
  v43 = a2;
  v44 = a2 + OBJC_IVAR___FCItemExposure_itemID;
  v45 = *(a2 + OBJC_IVAR___FCItemExposure_itemID);
  *&v116 = *(v44 + 8);
  if (!*(a1 + 16) || (v46 = sub_1B6456E70(v45, v116), (v47 & 1) == 0))
  {
    v59 = v5[2];
    v60 = v115;
    v59(v42, v43 + OBJC_IVAR___FCItemExposure_firstExposedAt, v115);
    v61 = v5[7];
    v61(v42, 0, 1, v60);
    v112 = v45;
    v62 = OBJC_IVAR___FCItemExposure_lastExposedAt;
    v59(v40, v43 + OBJC_IVAR___FCItemExposure_lastExposedAt, v60);
    v61(v40, 0, 1, v60);
    v111 = *(v43 + OBJC_IVAR___FCItemExposure_maxExposedVersion);
    v59(v37, v43 + OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt, v60);
    v61(v37, 0, 1, v60);
    v63 = v43 + v62;
    v64 = v113;
    v59(v113, v63, v60);
    v61(v64, 0, 1, v60);
    v65 = v116;

    result = sub_1B645783C(v112, v65, v42, v40, v111, 0, v37, v64, v117);
    v67 = v117[1];
    v66 = v117[2];
    v68 = v117[0];
LABEL_21:
    v90 = v114;
    *v114 = v68;
    v90[1] = v67;
    v90[2] = v66;
    return result;
  }

  v93 = v9;
  v48 = (*(a1 + 56) + 48 * v46);
  v49 = v48[1];
  v102 = *v48;
  v113 = v49;
  v116 = v48[2];

  v100 = v113;

  v99 = *(&v113 + 1);

  v91[1] = v116;

  v95 = *(&v116 + 1);

  sub_1B67D8B4C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v50 = v5 + 6;
  v51 = v5[6];
  v52 = v5;
  v53 = v115;
  v104 = v50;
  v103 = v51;
  result = v51(v29, 1, v115);
  if (result == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v55 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v56 = v52[4];
  v57 = v111;
  v56();
  v101 = sub_1B6430304(&qword_1EDB1EFB0, MEMORY[0x1E6969530]);
  v58 = sub_1B67D95FC();
  v98 = v56;
  v96 = v43;
  if (v58)
  {
    (v56)(v32, v57, v53);
  }

  else
  {
    (v52[1])(v57, v53);
    (v52[2])(v32, v43 + v55, v53);
  }

  v94 = v52;
  v97 = v52[7];
  v111 = v52 + 7;
  v97(v32, 0, 1, v53);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D8B4C();
  v69 = v112;
  sub_1B67D8DCC();

  result = v103(v69, 1, v53);
  if (result == 1)
  {
    goto LABEL_23;
  }

  v70 = OBJC_IVAR___FCItemExposure_lastExposedAt;
  v71 = v107;
  v72 = v98;
  (v98)(v107, v69, v53);
  v73 = v96;
  v74 = sub_1B67D960C();
  v75 = v108;
  v76 = v109;
  v92 = v70;
  if (v74)
  {
    v77 = v110;
    (v72)(v110, v71, v53);
  }

  else
  {
    v78 = v94;
    (v94[1])(v71, v53);
    v79 = v78[2];
    v77 = v110;
    v79(v110, v73 + v70, v53);
  }

  v80 = v72;
  v81 = v73;
  v82 = v97;
  v97(v77, 0, 1, v53);
  sub_1B67D8DDC();

  v83 = *(v73 + OBJC_IVAR___FCItemExposure_maxExposedVersion);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (BYTE8(v117[0]))
  {
    goto LABEL_24;
  }

  if (*&v117[0] >= v83)
  {
    goto LABEL_16;
  }

  sub_1B67D8B4C();
  *&v117[0] = v83;
  BYTE8(v117[0]) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  result = v103(v75, 1, v53);
  if (result != 1)
  {
    v84 = v105;
    (v80)(v105, v75, v53);
    v82(v84, 0, 1, v53);
    sub_1B67D8DDC();

LABEL_16:
    sub_1B67D8B4C();
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    result = v103(v76, 1, v53);
    if (result != 1)
    {
      v85 = v93;
      (v80)(v93, v76, v53);
      v86 = v92;
      if (sub_1B67D960C())
      {
        v87 = v106;
        (v80)(v106, v85, v53);
      }

      else
      {
        v88 = v94;
        (v94[1])(v85, v53);
        v89 = v81 + v86;
        v87 = v106;
        (v88[2])(v106, v89, v53);
      }

      v82(v87, 0, 1, v53);
      sub_1B67D8DDC();

      v66 = v116;
      v67 = v113;
      v68 = v102;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B6450F30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B67D946C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B67D949C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1B6458BB0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6453FF4;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1B67D947C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1B6430304(&qword_1EDB1EF78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1F0, &qword_1B6810310);
  sub_1B6458C04(&qword_1EDB1E630, &unk_1EB94B1F0, &qword_1B6810310);
  sub_1B67D9E5C();
  MEMORY[0x1B8C94F70](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1B6451280()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F88, &qword_1B6810148);
  sub_1B67D9D0C();
  return v3;
}

uint64_t sub_1B6451450@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v66 = v58 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v58 - v10;
  v65 = sub_1B67D877C();
  v79 = *(v65 - 8);
  v11 = *(v79 + 64);
  v12 = MEMORY[0x1EEE9AC00](v65);
  v63 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v58 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v58 - v21;
  v23 = sub_1B67D8B1C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D8D5C();
  sub_1B64503A4(a1);
  sub_1B67D8C8C();

  v28 = sub_1B67D8E4C();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  v29 = v80;
  v30 = sub_1B67D8D2C();
  v58[1] = v29;
  if (v29)
  {

    sub_1B6418AB4(v22, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v24 + 8))(v27, v23);
  }

  else
  {
    v32 = v30;
    v77 = v16;
    v78 = v18;

    sub_1B6418AB4(v22, &qword_1EB94B510, &unk_1B68102C0);
    (*(v24 + 8))(v27, v23);
    v33 = *(v32 + 16);
    if (v33)
    {
      v83 = MEMORY[0x1E69E7CC0];
      sub_1B67D9FAC();
      result = type metadata accessor for ItemExposure();
      v34 = 0;
      v35 = (v79 + 48);
      v76 = (v79 + 32);
      v59 = result;
      v58[2] = result + 120;
      v36 = (v32 + 40);
      v37 = v67;
      v62 = a2;
      v61 = v32;
      v60 = v33;
      v75 = (v79 + 48);
      while (v34 < *(v32 + 16))
      {
        v38 = v34;
        v39 = *(v36 - 1);
        v40 = *v36;
        v42 = v36[1];
        v41 = v36[2];
        v44 = v36[3];
        v43 = v36[4];
        v71 = v36;

        v80 = v42;

        v79 = v41;

        v74 = v44;

        v72 = v43;

        v73 = v39;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v45 = v82;
        if (!v82)
        {
          goto LABEL_20;
        }

        v69 = v40;
        v70 = v38;
        v68 = v81;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v46 = *v35;
        v47 = v65;
        result = (*v35)(v37, 1, v65);
        v48 = v66;
        if (result == 1)
        {
          goto LABEL_21;
        }

        v49 = *v76;
        (*v76)(v78, v37, v47);
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        result = v46(v48, 1, v47);
        if (result == 1)
        {
          goto LABEL_18;
        }

        v49(v77, v48, v47);
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        if (v82)
        {
          goto LABEL_19;
        }

        v50 = v81;
        sub_1B67D8B4C();
        v51 = v64;
        sub_1B67D8DCC();

        result = v46(v51, 1, v47);
        if (result == 1)
        {
          goto LABEL_22;
        }

        v52 = v47;
        v53 = v70 + 1;
        v54 = v63;
        v49(v63, v51, v52);
        v34 = v53;
        (*(v59 + 120))(v68, v45, v78, v77, v50, v54);

        sub_1B67D9F7C();
        v55 = *(v83 + 16);
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        result = sub_1B67D9F8C();
        v36 = v71 + 6;
        v56 = v60 == v53;
        a2 = v62;
        v37 = v67;
        v32 = v61;
        v35 = v75;
        if (v56)
        {

          v57 = v83;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {

      v57 = MEMORY[0x1E69E7CC0];
LABEL_15:
      *a2 = v57;
    }
  }

  return result;
}

uint64_t sub_1B6451BC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1B6450F30(sub_1B6456FE4, v4);
}

uint64_t sub_1B6451D10()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  sub_1B67D9D0C();
  return v3;
}

uint64_t sub_1B6451EB4@<X0>(void *a1@<X8>)
{
  v3 = sub_1B67D8E4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64577E8();
  sub_1B67D8D9C();
  strcpy(v7, "LastAccessedAt");
  v7[15] = -18;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6220], v3);
  v8 = sub_1B67D8FAC();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v10 = v8;
    (*(v4 + 8))(v7, v3);

    v11 = *(v10 + 16);
    if (v11)
    {
      v21 = 0;
      v22 = a1;
      v23 = MEMORY[0x1E69E7CC0];
      sub_1B6456B24(0, v11, 0);
      v12 = 32;
      v13 = v23;
      do
      {
        v14 = *(v10 + v12);

        v15 = sub_1B644DFB8();
        v17 = v16;

        v23 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B6456B24((v18 > 1), v19 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v12 += 8;
        --v11;
      }

      while (v11);

      *v22 = v13;
    }

    else
    {

      *a1 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B6452114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  sub_1B6450F30(a3, v5);
}

uint64_t sub_1B6452180(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v23 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  v16 = sub_1B67D877C();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v17(v13, 1, 1, v16);
  v17(v10, 1, 1, v16);
  sub_1B67D876C();
  v17(v7, 0, 1, v16);
  sub_1B645783C(0, 0xE000000000000000, v15, v13, 0, 1, v10, v7, v24);
  v18 = *(v25 + 16);
  if (v18)
  {
    v19 = (v25 + 40);
    while (1)
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      sub_1B67D8B4C();
      *&v23[0] = v20;
      *(&v23[0] + 1) = v21;
      sub_1B67D8DDC();

      sub_1B67D8D8C();
      v23[0] = v24[0];
      v23[1] = v24[1];
      v23[2] = v24[2];
      sub_1B6458A9C();
      sub_1B67D8E3C();
      if (v2)
      {
        break;
      }

      v19 += 2;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

uint64_t sub_1B64524AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  sub_1B67D9D0C();
  return v3;
}

uint64_t sub_1B6452648@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39[-1] - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39[-1] - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39[-1] - v18;
  sub_1B64577E8();
  sub_1B67D8D9C();
  sub_1B64503A4(a1);
  sub_1B67D8C8C();

  v20 = sub_1B67D877C();
  v39[3] = v20;
  v39[4] = MEMORY[0x1E69D6130];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, a2, v20);
  sub_1B67D8C9C();
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1B67D8C6C();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v22(v17, v9);
  v23 = sub_1B67D8E4C();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = v40;
  v25 = sub_1B67D8FEC();
  if (v24)
  {

    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    return (v22)(v19, v9);
  }

  else
  {
    v27 = v25;

    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    v22(v19, v9);
    v28 = *(v27 + 16);
    if (v28)
    {
      v40 = 0;
      v39[0] = MEMORY[0x1E69E7CC0];
      sub_1B6456B24(0, v28, 0);
      v29 = 32;
      v30 = v39[0];
      do
      {
        v31 = *(v27 + v29);

        v32 = sub_1B644DFB8();
        v34 = v33;

        v39[0] = v30;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1B6456B24((v35 > 1), v36 + 1, 1);
          v30 = v39[0];
        }

        *(v30 + 16) = v36 + 1;
        v37 = v30 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v29 += 8;
        --v28;
      }

      while (v28);

      *v38 = v30;
    }

    else
    {

      *v38 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B6452B98(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_1B6450F30(sub_1B64571F8, v3);
}

void sub_1B6452C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v5 = sub_1B67D8B1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D8E4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B67D877C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  if (a2)
  {
    v19 = v6;
    v20 = v56;
    goto LABEL_3;
  }

  v49 = v9;
  v50 = v6;
  v51 = v5;
  v22 = *(a3 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
  os_unfair_lock_lock((v22 + 44));
  v23 = *(v22 + 16);
  v24 = *(v22 + 24);
  v25 = *(v22 + 32);
  v26 = *(v22 + 40);
  if (v26 == 255)
  {
    sub_1B64539D4();
    swift_allocError();
    *v40 = 1;
    goto LABEL_15;
  }

  if (v26)
  {
    v27 = *(v22 + 16);
LABEL_15:
    swift_willThrow();
    sub_1B64574B0(v23, v24, v25, v26);
    os_unfair_lock_unlock((v22 + 44));
    return;
  }

  v41 = *(v22 + 24);

  os_unfair_lock_unlock((v22 + 44));
  sub_1B67D8D4C();

  sub_1B67D876C();
  v54 = sub_1B64585F8(v18);
  v55 = v42;
  v43 = v56;
  sub_1B67D8CDC();
  v20 = v43;
  if (v43)
  {

    return;
  }

  v19 = v50;
  v5 = v51;
  v9 = v49;
LABEL_3:
  sub_1B64577E8();
  sub_1B67D8D9C();
  strcpy(v14, "LastAccessedAt");
  v14[15] = -18;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D6220], v10);
  v21 = sub_1B67D8FBC();
  if (v20)
  {
    (*(v11 + 8))(v14, v10);

    return;
  }

  v28 = v21;
  v30 = *(v11 + 8);
  v29 = v11 + 8;
  v30(v14, v10);

  v31 = *(v28 + 16);
  if (v31)
  {
    v49 = v9;
    v50 = v19;
    v51 = v5;
    v56 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v31, 0);
    v29 = 32;
    v32 = v54;
    do
    {
      v33 = *(v28 + v29);

      v34 = sub_1B644DFB8();
      v36 = v35;

      v54 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B6456B24((v37 > 1), v38 + 1, 1);
        v32 = v54;
      }

      *(v32 + 16) = v38 + 1;
      v39 = v32 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v29 += 8;
      --v31;
    }

    while (v31);

    v19 = v50;
    v5 = v51;
    v9 = v49;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v32 + 16);
  v45 = v52;
  if (v44 > v52)
  {
    if (v52 < 0)
    {
      __break(1u);
    }

    else
    {
      v29 = v9;
      if (!v52)
      {
LABEL_22:
        sub_1B67D8D7C();
        sub_1B64503A4(v32);

        sub_1B67D8C8C();

        sub_1B67D8E2C();
        (*(v19 + 8))(v29, v5);

        return;
      }
    }

    sub_1B6456D98(v32, v32 + 32, v45, (2 * v44) | 1);
    v47 = v46;

    v32 = v47;
    goto LABEL_22;
  }
}

uint64_t sub_1B64531D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F98, &qword_1B6810158);
  sub_1B67D9D0C();
  return v3;
}

void sub_1B645337C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a1;
  v44 = a3;
  v5 = sub_1B67D83BC();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v45 = type metadata accessor for ItemExposureRegistry.JSON(0);
  v16 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
  os_unfair_lock_lock((v18 + 44));
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  v21 = *(v18 + 32);
  v22 = *(v18 + 40);
  if (v22 == 255)
  {
    sub_1B64539D4();
    swift_allocError();
    *v24 = 1;
    goto LABEL_5;
  }

  if (v22)
  {
    v23 = *(v18 + 16);
LABEL_5:
    swift_willThrow();
    sub_1B64574B0(v20, v19, v21, v22);
    os_unfair_lock_unlock((v18 + 44));
    return;
  }

  v25 = *(v18 + 24);

  os_unfair_lock_unlock((v18 + 44));
  sub_1B67D8D5C();

  v26 = sub_1B67D8CEC();

  if (!v3)
  {
    if (!v26[2])
    {

      v29 = sub_1B67D877C();
      (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
      goto LABEL_11;
    }

    v28 = v26[4];
    v27 = v26[5];

    sub_1B67D8B4C();
    sub_1B67D8DCC();

    if ((*(v50 + 48))(v11, 1, v12) != 1)
    {

      sub_1B6404758(v11, v15);
LABEL_11:
      sub_1B67D8D5C();
      v30 = sub_1B67D8CEC();

      v31 = v46;
      sub_1B6404758(v15, v46);
      *(v31 + *(v45 + 20)) = v30;
      v32 = sub_1B67D83FC();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_1B67D83EC();
      v35 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v36 = sub_1B67D963C();
      [v35 setDateFormat_];

      v38 = v47;
      v37 = v48;
      *v47 = v35;
      (*(v37 + 104))(v38, *MEMORY[0x1E6967FD0], v49);
      sub_1B67D83CC();
      sub_1B6457734();
      v39 = sub_1B67D83DC();
      v41 = v40;
      sub_1B645778C(v31);

      v42 = v44;
      *v44 = v39;
      v42[1] = v41;
      return;
    }

    __break(1u);
  }
}

void sub_1B64538E0()
{
  sub_1B6453B84();
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v1);
    sub_1B67D8F1C();
  }
}

void sub_1B64539B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B64538E0();
}

unint64_t sub_1B64539D4()
{
  result = qword_1EB9508B0;
  if (!qword_1EB9508B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9508B0);
  }

  return result;
}

void sub_1B6453A28(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1B6453A40(a1, a2, a3, a4 & 1);
  }
}

void sub_1B6453A40(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_1B6453A98()
{
  sub_1B6453B84();
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F98, &qword_1B6810158);
    sub_1B67D8F1C();
  }
}

void sub_1B6453B84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B67D94CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1B67D94EC();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(v1 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
    MEMORY[0x1EEE9AC00](v10);
    *(&v12 - 2) = v1;
    *(&v12 - 1) = ObjectType;
    os_unfair_lock_lock(v11 + 11);
    sub_1B6457550(&v11[4], &v13);
    os_unfair_lock_unlock(v11 + 11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B6453D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D8C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6453B84();
  v14[0] = v14;
  MEMORY[0x1EEE9AC00](v10);
  v14[-4] = a2;
  v14[-3] = a3;
  v14[-2] = v11;
  v14[-1] = v12;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6188], v5);
  sub_1B67D8F4C();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B6453FF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1B6454038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v78 = a3;
  v4 = sub_1B67D8C1C();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v70 - v9;
  v10 = sub_1B67D8F0C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1B67D8E6C();
  v85 = *(v87 - 8);
  v13 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B67D8F7C();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B67D8E8C();
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B67D8EDC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B67D8C4C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = sub_1B67D8F5C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1B67D8EBC();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = *a1;
  v36 = *(a1 + 16);
  v90 = *(a1 + 8);
  v91 = v36;
  v37 = *(a1 + 24);
  if (v37 != 255)
  {
    v38 = v35;
    v39 = v37;
    if ((v37 & 1) == 0)
    {
      v40 = v78;
      v41 = v90;
      v42 = v91;
      *v78 = v35;
      v40[1] = v41;
      v40[2] = v42;
    }

    goto LABEL_7;
  }

  v71 = (a1 + 8);
  v93 = 255;
  v72 = v35;
  v73 = a1;
  *v32 = sub_1B67D85BC();
  v32[1] = v44;
  (*(v29 + 104))(v32, *MEMORY[0x1E69D6280], v28);
  sub_1B67D8C3C();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D6270], v21);
  (*(v79 + 104))(v81, *MEMORY[0x1E69D6268], v80);
  (*(v82 + 104))(v84, *MEMORY[0x1E69D62A0], v83);
  (*(v85 + 104))(v88, *MEMORY[0x1E69D6250], v87);
  sub_1B67D8EFC();
  v94 = 1;
  sub_1B67D8EAC();
  v45 = sub_1B67D8F8C();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = v92;
  v49 = sub_1B67D8ECC();
  if (v48)
  {
    v50 = v73;
    *v73 = v48;
    v55 = v71;
    *v71 = 0;
    v55[1] = 0;
    *(v50 + 24) = 1;
    v56 = v48;
    v38 = v72;
    v39 = v93;
LABEL_7:
    swift_willThrow();
    return sub_1B64574B0(v38, v90, v91, v39);
  }

  v51 = v49;
  sub_1B645756C();
  v52 = sub_1B67D8F3C();
  sub_1B64575C0();
  v53 = sub_1B67D8F3C();
  v54 = sub_1B67D8E7C();
  v57 = *MEMORY[0x1E69D6188];
  if (v54 == 1)
  {
    v58 = *(v77 + 104);
  }

  else
  {
    v92 = &v70;
    MEMORY[0x1EEE9AC00](v54);
    *(&v70 - 2) = v52;
    *(&v70 - 1) = v53;
    v64 = v76;
    v63 = v77;
    v65 = *(v77 + 104);
    v66 = v74;
    LODWORD(v89) = v67;
    v88 = v65;
    (v65)(v74);
    sub_1B67D8F4C();
    (*(v63 + 8))(v66, v64);
    v54 = sub_1B67D8EEC();
  }

  MEMORY[0x1EEE9AC00](v54);
  *(&v70 - 2) = v59;
  *(&v70 - 1) = v53;
  v61 = v75;
  v60 = v76;
  v62(v75);
  sub_1B67D8F4C();
  (*(v77 + 8))(v61, v60);
  v68 = v73;
  *v73 = v51;
  v68[1] = v52;
  v68[2] = v53;
  *(v68 + 24) = 0;
  v69 = v78;
  *v78 = v51;
  v69[1] = v52;
  v69[2] = v53;
}

uint64_t sub_1B6454970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001B6828440;
  v6 = 0x80000001B6828460;
  v7 = 0xD00000000000001FLL;
  if (a1 != 4)
  {
    v7 = 0x656363417473616CLL;
    v6 = 0xEE00744164657373;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x7078457473726966;
  if (a1 == 1)
  {
    v9 = 0xEE0074416465736FLL;
  }

  else
  {
    v8 = 0x6F7078457473616CLL;
    v9 = 0xED00007441646573;
  }

  if (a1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001B6828440;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000001B6828460;
      if (v10 != 0xD00000000000001FLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xEE00744164657373;
      if (v10 != 0x656363417473616CLL)
      {
LABEL_35:
        v13 = sub_1B67DA2DC();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEE0074416465736FLL;
      if (v10 != 0x7078457473726966)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xED00007441646573;
      if (v10 != 0x6F7078457473616CLL)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_35;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_35;
  }

  v13 = 1;
LABEL_36:

  return v13 & 1;
}

uint64_t sub_1B6454B88()
{
  sub_1B67DA3DC();
  sub_1B67D967C();
  return sub_1B67DA41C();
}

uint64_t sub_1B6454BE4()
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B6454D2C()
{
  sub_1B67DA3DC();
  sub_1B67D967C();
  return sub_1B67DA41C();
}

uint64_t sub_1B6454D84()
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B6454EA8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B67DA12C();

  *a2 = v5 != 0;
  return result;
}

void sub_1B6454EFC(uint64_t a1@<X8>)
{
  strcpy(a1, "lastErasedAt");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1B6454F40@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B67DA12C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B6454FB0(uint64_t a1)
{
  v2 = sub_1B645B3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6454FEC(uint64_t a1)
{
  v2 = sub_1B645B3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B645504C()
{
  v1 = v0[1];
  v2 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v3 = sub_1B67D8B8C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1B67D8BFC();
}

uint64_t sub_1B64550B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6459490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B6455108(uint64_t a1)
{
  v2 = sub_1B645756C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B6455154(uint64_t a1)
{
  v2 = sub_1B645756C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64551A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B645756C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B6455204@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B64597DC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B645524C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B645756C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B6455298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B645756C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64552EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B645756C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B6455364()
{
  *v0;
  *v0;
  *v0;
  sub_1B67D967C();
}

uint64_t sub_1B645547C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B645A6A4();
  *a2 = result;
  return result;
}

void sub_1B64554AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000011;
  v6 = 0x80000001B6828440;
  v7 = 0x80000001B6828460;
  v8 = 0xD00000000000001FLL;
  if (v2 != 4)
  {
    v8 = 0x656363417473616CLL;
    v7 = 0xEE00744164657373;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7078457473726966;
  v10 = 0xEE0074416465736FLL;
  if (v2 != 1)
  {
    v9 = 0x6F7078457473616CLL;
    v10 = 0xED00007441646573;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1B645558C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0x656363417473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7078457473726966;
  if (v1 != 1)
  {
    v5 = 0x6F7078457473616CLL;
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

uint64_t sub_1B6455668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B645A6A4();
  *a1 = result;
  return result;
}

uint64_t sub_1B645569C(uint64_t a1)
{
  v2 = sub_1B645B398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64556D8(uint64_t a1)
{
  v2 = sub_1B645B398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6455714(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = v53 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - v13;
  v64 = sub_1B67D877C();
  v66 = *(v64 - 8);
  v15 = *(v66 + 64);
  v16 = MEMORY[0x1EEE9AC00](v64);
  v58 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v60 = v53 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = v53 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A040, &qword_1B6810888);
  v69 = *(v24 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v53 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B645B398();
  sub_1B67DA47C();
  v65 = v3;
  v29 = *v3;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (!v68)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v67) = 0;
  sub_1B67DA20C();
  if (v2)
  {
    (*(v69 + 8))(v27, v24);
  }

  v56 = 0;
  v57 = v24;

  v31 = v65[1];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v32 = v66;
  v33 = v64;
  v54 = *(v66 + 48);
  v55 = v66 + 48;
  result = v54(v14, 1, v64);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v34 = v14;
  v35 = *(v32 + 32);
  (v35)(v23, v34, v33);
  LOBYTE(v67) = 1;
  v36 = sub_1B6430304(&unk_1EDB1EFC0, MEMORY[0x1E6969530]);
  v37 = v56;
  v38 = v57;
  sub_1B67DA24C();
  if (v37)
  {
    (*(v32 + 8))(v23, v33);
    return (*(v69 + 8))(v27, v38);
  }

  v53[1] = v32 + 32;
  v53[2] = v36;
  v56 = v35;
  v39 = *(v32 + 8);
  v66 = v32 + 8;
  v39(v23, v33);
  v40 = v65[2];
  sub_1B67D8B4C();
  v41 = v63;
  sub_1B67D8DCC();

  result = v54(v41, 1, v33);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v42 = v62;
  v56();
  LOBYTE(v67) = 2;
  v43 = v57;
  sub_1B67DA24C();
  v39(v42, v33);
  v44 = v65[3];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v68)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v67) = 3;
  sub_1B67DA22C();
  v45 = v65[4];
  sub_1B67D8B4C();
  v46 = v61;
  sub_1B67D8DCC();
  v47 = v46;

  result = v54(v46, 1, v33);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v48 = v60;
  (v56)(v60, v47, v33);
  LOBYTE(v67) = 4;
  sub_1B67DA24C();
  v39(v48, v33);
  v49 = v65[5];
  sub_1B67D8B4C();
  v50 = v59;
  sub_1B67D8DCC();
  v51 = v50;

  result = v54(v50, 1, v33);
  if (result != 1)
  {
    v52 = v58;
    (v56)(v58, v51, v33);
    LOBYTE(v67) = 5;
    sub_1B67DA24C();
    v39(v52, v33);
    return (*(v69 + 8))(v27, v43);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B6455E2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A028, &qword_1B6810878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64593B8();
  sub_1B67DA47C();
  v14 = 0;
  sub_1B67D877C();
  sub_1B6430304(&unk_1EDB1EFC0, MEMORY[0x1E6969530]);
  sub_1B67DA1FC();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for ItemExposureRegistry.JSON(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A018, &qword_1B6810318);
    sub_1B645940C();
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1B6456010@<D0>(_OWORD *a1@<X8>)
{
  sub_1B6459FE8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1B6456070(uint64_t a1)
{
  v2 = sub_1B64575C0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64560BC(uint64_t a1)
{
  v2 = sub_1B64575C0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B6456108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64575C0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B645616C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B645A6F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1B64561C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64575C0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B6456214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64575C0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6456268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64575C0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64562CC()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B6456314()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B6456358()
{
  if (*v0)
  {
    result = 0x657275736F707865;
  }

  else
  {
    result = 0x736172457473616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B64563A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736172457473616CLL && a2 == 0xEC00000074416465;
  if (v6 || (sub_1B67DA2DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B67DA2DC();

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

uint64_t sub_1B6456494(uint64_t a1)
{
  v2 = sub_1B64593B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64564D0(uint64_t a1)
{
  v2 = sub_1B64593B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6456540(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B6456628(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B6458B54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B6456628(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B6456734(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B67D9F6C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B6456734(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B6456780(a1, a2);
  sub_1B64568B0(&unk_1F2DBCD58);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B6456780(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B645699C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B67D9F6C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B67D96CC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B645699C(v10, 0);
        result = sub_1B67D9EDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B64568B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B6456A10(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B645699C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3A0, &qword_1B6812A40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B6456A10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3A0, &qword_1B6812A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1B6456B04(void *a1, int64_t a2, char a3)
{
  result = sub_1B6456B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B6456B24(char *a1, int64_t a2, char a3)
{
  result = sub_1B6456C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B6456B44(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD0, &unk_1B68102B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B580, &qword_1B68146D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B6456C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B6456D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1B6456E70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B67DA3DC();
  sub_1B67D967C();
  v6 = sub_1B67DA41C();

  return sub_1B6456EE8(a1, a2, v6);
}

unint64_t sub_1B6456EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B67DA2DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1B6456FA0(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1B6457054(&qword_1EB949F88, &qword_1B6810148, a1);
}

uint64_t sub_1B6456FE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B67D8D7C();
  sub_1B67D8E0C();
}

void sub_1B6457054(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  sub_1B6453B84();
  if (!v3)
  {
    v8[0] = a3;
    v8[1] = v8;
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_1B67D8F1C();

    *v8[0] = v8[3];
  }
}

void sub_1B645717C(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1B6457054(&qword_1EB949F90, &qword_1B6810150, a1);
}

void sub_1B6457230()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B6453A98();
}

uint64_t sub_1B6457278()
{
  result = sub_1B67D85FC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B67D8A9C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B6457398(uint64_t *a1, int a2)
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

unint64_t sub_1B64573F4()
{
  result = qword_1EB9508B8[0];
  if (!qword_1EB9508B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9508B8);
  }

  return result;
}

uint64_t sub_1B6457448(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B645745C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B645745C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1B64574B0(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1B64574C8(result, a2, a3, a4 & 1);
  }

  return result;
}

id sub_1B64574C8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

unint64_t sub_1B645756C()
{
  result = qword_1EDB25570[0];
  if (!qword_1EDB25570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB25570);
  }

  return result;
}

unint64_t sub_1B64575C0()
{
  result = qword_1EDB24778[0];
  if (!qword_1EDB24778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB24778);
  }

  return result;
}

uint64_t sub_1B6457614()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_1B67D8D3C();
  sub_1B67D8CCC();

  if (!v1)
  {
    sub_1B67D8D3C();
    sub_1B67D8CCC();
  }

  return result;
}

uint64_t sub_1B6457690()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_1B67D8D6C();
  sub_1B67D8DFC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

unint64_t sub_1B6457734()
{
  result = qword_1EB950A40;
  if (!qword_1EB950A40)
  {
    type metadata accessor for ItemExposureRegistry.JSON(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950A40);
  }

  return result;
}

uint64_t sub_1B645778C(uint64_t a1)
{
  v2 = type metadata accessor for ItemExposureRegistry.JSON(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B64577E8()
{
  result = qword_1EB949FA8;
  if (!qword_1EB949FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB949FA8);
  }

  return result;
}

uint64_t sub_1B645783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v132 = a8;
  v133 = a7;
  v121 = a6;
  v122 = a5;
  v134 = a4;
  v135 = a3;
  v118 = a2;
  v117 = a1;
  v126 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v125 = &v111 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v128 = &v111 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v123 = &v111 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v127 = &v111 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v120 = &v111 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = &v111 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v111 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v130 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v129 = &v111 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v111 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v111 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v46 = *(*(v45 - 8) + 56);
  v46(v44, 1, 1, v45);
  v46(v42, 1, 1, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v131 = sub_1B67D8B3C();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v54 = *(*(v53 - 8) + 56);
  v54(v37, 1, 1, v53);
  v54(v35, 1, 1, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v137 = sub_1B67D8B3C();
  v112 = v37;
  v114 = v54;
  v54(v37, 1, 1, v53);
  v113 = v35;
  v54(v35, 1, 1, v53);
  v61 = *(v55 + 48);
  v62 = *(v55 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v63 = *(v58 + 48);
  v64 = *(v58 + 52);
  swift_allocObject();
  v65 = sub_1B67D8B3C();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v67 = *(*(v66 - 8) + 56);
  v67(v129, 1, 1, v66);
  v67(v130, 1, 1, v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v136 = v65;

  sub_1B67D8DBC();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  v74 = sub_1B67D8B3C();
  v75 = v112;
  v76 = v114;
  v114(v112, 1, 1, v53);
  v77 = v113;
  v76(v113, 1, 1, v53);
  v78 = *(v55 + 48);
  v79 = *(v55 + 52);
  swift_allocObject();
  v116 = v74;

  sub_1B67D8DBC();
  v80 = *(v58 + 48);
  v81 = *(v58 + 52);
  swift_allocObject();
  v82 = v115;
  v83 = sub_1B67D8B3C();
  v76(v75, 1, 1, v53);
  v76(v77, 1, 1, v53);
  v84 = *(v55 + 48);
  v85 = *(v55 + 52);
  swift_allocObject();
  v130 = v83;

  sub_1B67D8DBC();
  v86 = *(v58 + 48);
  v87 = *(v58 + 52);
  swift_allocObject();
  v129 = sub_1B67D8B3C();

  sub_1B67D8B4C();
  v138 = v117;
  v139 = v118;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B6415FF0(v135, v82, &unk_1EB94A100, &qword_1B680FD50);
  v88 = sub_1B67D877C();
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  if (v90(v82, 1, v88) == 1)
  {
    v91 = v119;
    sub_1B67D876C();
    if (v90(v82, 1, v88) != 1)
    {
      sub_1B6418AB4(v82, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    v91 = v119;
    (*(v89 + 32))(v119, v82, v88);
  }

  v92 = *(v89 + 56);
  v92(v91, 0, 1, v88);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v93 = v127;
  sub_1B6415FF0(v134, v127, &unk_1EB94A100, &qword_1B680FD50);
  v94 = v90(v93, 1, v88);
  v95 = v123;
  if (v94 == 1)
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();
    v96 = v127;

    if (v90(v96, 1, v88) != 1)
    {
      sub_1B6418AB4(v96, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    v97 = v120;
    (*(v89 + 32))(v120, v93, v88);
    v92(v97, 0, 1, v88);
  }

  sub_1B67D8DDC();

  v98 = v116;
  sub_1B67D8B4C();
  v99 = v122;
  if (v121)
  {
    v99 = 0;
  }

  v138 = v99;
  LOBYTE(v139) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v100 = v128;
  sub_1B6415FF0(v133, v128, &unk_1EB94A100, &qword_1B680FD50);
  if (v90(v100, 1, v88) == 1)
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();
    v101 = v128;

    if (v90(v101, 1, v88) != 1)
    {
      sub_1B6418AB4(v101, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    (*(v89 + 32))(v95, v100, v88);
    v92(v95, 0, 1, v88);
  }

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v102 = v124;
  sub_1B6415FF0(v132, v124, &unk_1EB94A100, &qword_1B680FD50);
  if (v90(v102, 1, v88) == 1)
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    if (v90(v102, 1, v88) != 1)
    {
      sub_1B6418AB4(v102, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    v103 = v125;
    (*(v89 + 32))(v125, v102, v88);
    v92(v103, 0, 1, v88);
  }

  sub_1B67D8DDC();

  sub_1B6418AB4(v132, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v133, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v134, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v135, &unk_1EB94A100, &qword_1B680FD50);
  v104 = v129;

  v105 = v130;

  v106 = v136;

  v107 = v137;

  v108 = v131;

  v110 = v126;
  *v126 = v108;
  v110[1] = v107;
  v110[2] = v106;
  v110[3] = v98;
  v110[4] = v105;
  v110[5] = v104;
  return result;
}

uint64_t sub_1B64585F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1B67D8B3C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v30 = *(*(v29 - 8) + 56);
  v30(v12, 1, 1, v29);
  v30(v10, 1, 1, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v41 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v37 = sub_1B67D877C();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v5, a1, v37);
  (*(v38 + 56))(v5, 0, 1, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v39 - 8) + 56))(v5, 0, 1, v39);
  sub_1B67D8DDC();

  (*(v38 + 8))(a1, v37);

  return v28;
}

unint64_t sub_1B6458A9C()
{
  result = qword_1EDB227D8;
  if (!qword_1EDB227D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB227D8);
  }

  return result;
}

void *sub_1B6458B08@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 40));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B6458B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B6458C04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6458C58()
{
  result = qword_1EDB227E0[0];
  if (!qword_1EDB227E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB227E0);
  }

  return result;
}

void sub_1B6458CD4()
{
  sub_1B6458D7C();
  if (v0 <= 0x3F)
  {
    sub_1B6458DD4(319, &qword_1EB94A020, &type metadata for ItemExposureEntity, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6458D7C()
{
  if (!qword_1EDB1EF90)
  {
    sub_1B67D877C();
    v0 = sub_1B67D9DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB1EF90);
    }
  }
}

void sub_1B6458DD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B6458E4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B6458E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B6458EE4()
{
  result = qword_1EDB25520;
  if (!qword_1EDB25520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25520);
  }

  return result;
}

unint64_t sub_1B6458F3C()
{
  result = qword_1EDB25528;
  if (!qword_1EDB25528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25528);
  }

  return result;
}

unint64_t sub_1B6458F94()
{
  result = qword_1EDB25540;
  if (!qword_1EDB25540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25540);
  }

  return result;
}

unint64_t sub_1B6458FE8()
{
  result = qword_1EDB25550[0];
  if (!qword_1EDB25550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB25550);
  }

  return result;
}

unint64_t sub_1B6459048()
{
  result = qword_1EB950B60[0];
  if (!qword_1EB950B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950B60);
  }

  return result;
}

unint64_t sub_1B64590A0()
{
  result = qword_1EDB24720;
  if (!qword_1EDB24720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24720);
  }

  return result;
}

unint64_t sub_1B64590F8()
{
  result = qword_1EDB24728;
  if (!qword_1EDB24728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24728);
  }

  return result;
}

unint64_t sub_1B6459150()
{
  result = qword_1EDB24740;
  if (!qword_1EDB24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24740);
  }

  return result;
}

unint64_t sub_1B64591A4()
{
  result = qword_1EDB24750[0];
  if (!qword_1EDB24750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB24750);
  }

  return result;
}

unint64_t sub_1B6459200()
{
  result = qword_1EB950BF0[0];
  if (!qword_1EB950BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950BF0);
  }

  return result;
}

unint64_t sub_1B645925C()
{
  result = qword_1EDB24730;
  if (!qword_1EDB24730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24730);
  }

  return result;
}

unint64_t sub_1B64592B4()
{
  result = qword_1EDB24768;
  if (!qword_1EDB24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24768);
  }

  return result;
}

unint64_t sub_1B645930C()
{
  result = qword_1EDB25530;
  if (!qword_1EDB25530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25530);
  }

  return result;
}

unint64_t sub_1B6459364()
{
  result = qword_1EDB25568;
  if (!qword_1EDB25568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25568);
  }

  return result;
}

unint64_t sub_1B64593B8()
{
  result = qword_1EB950D00;
  if (!qword_1EB950D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950D00);
  }

  return result;
}

unint64_t sub_1B645940C()
{
  result = qword_1EB94A030;
  if (!qword_1EB94A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94A018, &qword_1B6810318);
    sub_1B64590F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94A030);
  }

  return result;
}

uint64_t sub_1B6459490()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v4, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v32 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  return v22;
}

uint64_t sub_1B64597DC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A048, &qword_1B6810890);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v24 = *(*(v23 - 8) + 56);
  v24(v22, 1, 1, v23);
  v24(v20, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1B67D8B3C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v33 = *(*(v32 - 8) + 56);
  v33(v15, 1, 1, v32);
  v33(v13, 1, 1, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B645B3EC();
  v41 = v51;
  sub_1B67DA46C();
  if (v41)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v42 = v47;
    sub_1B67D8B4C();
    v50 = xmmword_1B68100F0;
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    sub_1B67D877C();
    sub_1B6430304(&unk_1EDB1EFA0, MEMORY[0x1E6969530]);
    v43 = v48;
    sub_1B67DA18C();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
    (*(*(v45 - 8) + 56))(v49, 0, 1, v45);
    sub_1B67D8DDC();

    (*(v42 + 8))(v8, v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v31;
}

uint64_t sub_1B6459D6C(void *a1, uint64_t a2)
{
  v19[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A050, &qword_1B6810898);
  v12 = *(v19[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v19[0]);
  v15 = v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B645B3EC();
  sub_1B67DA47C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B6404758(v6, v11);
    sub_1B645B440();
    v18 = v19[0];
    sub_1B67DA24C();
    sub_1B6418AB4(v11, &unk_1EB94A100, &qword_1B680FD50);
    return (*(v12 + 8))(v15, v18);
  }

  return result;
}

uint64_t sub_1B6459FE8@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v70 = sub_1B67D8B3C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v29 = *(*(v28 - 8) + 56);
  v29(v12, 1, 1, v28);
  v29(v10, 1, 1, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v65 = v10;
  sub_1B67D8DBC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v67 = sub_1B67D8B3C();
  v64 = v12;
  v29(v12, 1, 1, v28);
  v29(v10, 1, 1, v28);
  v36 = *(v30 + 48);
  v37 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v38 = *(v33 + 48);
  v39 = *(v33 + 52);
  swift_allocObject();
  v66 = sub_1B67D8B3C();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v41 = *(*(v40 - 8) + 56);
  v41(v68, 1, 1, v40);
  v41(v69, 1, 1, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_1B67D8B3C();
  v49 = v64;
  v29(v64, 1, 1, v28);
  v50 = v65;
  v29(v65, 1, 1, v28);
  v51 = *(v30 + 48);
  v52 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v53 = *(v33 + 48);
  v54 = *(v33 + 52);
  swift_allocObject();
  v55 = sub_1B67D8B3C();
  v29(v49, 1, 1, v28);
  v29(v50, 1, 1, v28);
  v56 = *(v30 + 48);
  v57 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v58 = *(v33 + 48);
  v59 = *(v33 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v61 = v71;
  v62 = v66;
  v63 = v67;
  *v71 = v70;
  v61[1] = v63;
  v61[2] = v62;
  v61[3] = v48;
  v61[4] = v55;
  v61[5] = result;
  return result;
}

uint64_t sub_1B645A6A4()
{
  v0 = sub_1B67DA12C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B645A6F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v107 = a1;
  v94 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v96 = &v94 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v98 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A038, &qword_1B6810880);
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v94 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v94 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v35 = *(*(v34 - 8) + 56);
  v35(v33, 1, 1, v34);
  v35(v31, 1, 1, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v112 = sub_1B67D8B3C();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v43 = *(*(v42 - 8) + 56);
  v43(v26, 1, 1, v42);
  v43(v24, 1, 1, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = v24;
  v102 = v24;
  sub_1B67D8DBC();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v108 = sub_1B67D8B3C();
  v101 = v26;
  v103 = v43;
  v43(v26, 1, 1, v42);
  v43(v47, 1, 1, v42);
  v51 = *(v44 + 48);
  v52 = *(v44 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v53 = *(v48 + 48);
  v54 = *(v48 + 52);
  swift_allocObject();
  v106 = sub_1B67D8B3C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v56 = *(*(v55 - 8) + 56);
  v56(v19, 1, 1, v55);
  v56(v104, 1, 1, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v104 = sub_1B67D8B3C();
  v63 = v101;
  v64 = v103;
  v103(v101, 1, 1, v42);
  v65 = v102;
  v64(v102, 1, 1, v42);
  v66 = *(v44 + 48);
  v67 = *(v44 + 52);
  swift_allocObject();
  v68 = v65;
  sub_1B67D8DBC();
  v69 = *(v48 + 48);
  v70 = *(v48 + 52);
  swift_allocObject();
  v71 = sub_1B67D8B3C();
  v64(v63, 1, 1, v42);
  v64(v68, 1, 1, v42);
  v72 = v107;
  v73 = *(v44 + 48);
  v74 = *(v44 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v75 = *(v48 + 48);
  v76 = *(v48 + 52);
  swift_allocObject();
  v77 = sub_1B67D8B3C();
  v78 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  sub_1B645B398();
  v79 = v105;
  sub_1B67DA46C();
  if (v79)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
  }

  else
  {
    v105 = v77;
    v81 = v97;
    v80 = v98;
    sub_1B67D8B4C();
    LOBYTE(v110) = 0;
    v82 = v71;
    v110 = sub_1B67DA19C();
    v111 = v83;
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    v84 = sub_1B67D877C();
    LOBYTE(v110) = 1;
    sub_1B6430304(&unk_1EDB1EFA0, MEMORY[0x1E6969530]);
    sub_1B67DA1CC();
    v85 = (*(v84 - 8) + 56);
    v102 = *v85;
    v103 = v85;
    v102(v81, 0, 1, v84);
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    LOBYTE(v110) = 2;
    sub_1B67DA1CC();
    v86 = v102;
    v102(v80, 0, 1, v84);
    sub_1B67D8DDC();

    v87 = v104;
    sub_1B67D8B4C();
    LOBYTE(v110) = 3;
    v110 = sub_1B67DA1BC();
    LOBYTE(v111) = 0;
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    LOBYTE(v110) = 4;
    v88 = v96;
    sub_1B67DA1CC();
    v86(v88, 0, 1, v84);
    sub_1B67D8DDC();

    v89 = v105;
    v101 = sub_1B67D8B4C();
    LOBYTE(v110) = 5;
    v90 = v95;
    sub_1B67DA1CC();
    v86(v90, 0, 1, v84);
    sub_1B67D8DDC();

    (*(v99 + 8))(v109, v100);
    result = __swift_destroy_boxed_opaque_existential_1(v107);
    v92 = v94;
    v93 = v108;
    *v94 = v112;
    v92[1] = v93;
    v92[2] = v106;
    v92[3] = v87;
    v92[4] = v82;
    v92[5] = v89;
  }

  return result;
}

unint64_t sub_1B645B398()
{
  result = qword_1EB950D08;
  if (!qword_1EB950D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950D08);
  }

  return result;
}

unint64_t sub_1B645B3EC()
{
  result = qword_1EB950D10[0];
  if (!qword_1EB950D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950D10);
  }

  return result;
}

unint64_t sub_1B645B440()
{
  result = qword_1EDB1EF88;
  if (!qword_1EDB1EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94A100, &qword_1B680FD50);
    sub_1B6430304(&unk_1EDB1EFC0, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EF88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemExposureEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}