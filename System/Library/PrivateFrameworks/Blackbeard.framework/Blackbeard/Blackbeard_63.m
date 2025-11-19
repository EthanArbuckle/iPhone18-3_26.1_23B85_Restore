uint64_t sub_1E6574CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22[3] = MEMORY[0x1E69E69B8];
  v22[4] = MEMORY[0x1E69E69C0];
  v22[0] = swift_allocObject();
  sub_1E604FBF8(a1, v22[0] + 16);
  v19 = a12(v22, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

uint64_t sub_1E6574DE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v28[3] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B4F0, &qword_1E660C188);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1E65E5528();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65E57D8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v14 + 16))(v17, a2, v13);
  v22 = sub_1E65E5A08();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = sub_1E65E5668();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  sub_1E5FA9D34(a3, a4);
  sub_1E65E5658();
  v26 = objc_allocWithZone(sub_1E65E5888());
  return sub_1E65E5878();
}

uint64_t sub_1E6575060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v10 = v5[5];
  return sub_1E6574DE8(a1, a2, a3, a4, a5);
}

uint64_t sub_1E657508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = sub_1E65E6058();
  v5[7] = sub_1E65E6048();
  v5[8] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575138, v7, v6);
}

uint64_t sub_1E6575138()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = objc_allocWithZone(sub_1E65E5708());

  v0[9] = sub_1E65E56F8();
  v10 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575224, v10, v9);
}

uint64_t sub_1E6575224()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_1E657528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1E5FEE4D4;

  return sub_1E657508C(a1, a2, a3, v8, v9);
}

uint64_t sub_1E6575360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_1E65E5798();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_1E65E6058();
  v4[9] = sub_1E65E6048();
  v4[10] = sub_1E65E6048();
  v9 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575468, v9, v8);
}

uint64_t sub_1E6575468()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v6 + 16))(v3, v9, v5);
  v10 = objc_allocWithZone(sub_1E65E59E8());

  v11 = v8;
  v0[11] = sub_1E65E59D8();
  v13 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575564, v13, v12);
}

uint64_t sub_1E6575564()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3(v4);
}

uint64_t sub_1E65755D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5FEE4D4;

  return sub_1E6575360(a1, a2, v6, v7);
}

uint64_t sub_1E657569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_1E65E5798();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = sub_1E65E6058();
  v3[8] = sub_1E65E6048();
  v3[9] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65757A0, v8, v7);
}

uint64_t sub_1E65757A0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  sub_1E65E5438();
  (*(v6 + 16))(v3, v8, v5);

  v0[10] = sub_1E65E5418();
  v10 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575888, v10, v9);
}

uint64_t sub_1E6575888()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3(v4);
}

uint64_t sub_1E65758FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5FE99E8;

  return sub_1E657569C(a1, v4, v5);
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E65759CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E65759EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t objectdestroy_35Tm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return swift_deallocObject();
}

uint64_t sub_1E6575A9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 104);
  v11 = *(v1 + 112);
  v12 = *(v1 + 120);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFA78C;

  return sub_1E6573F40(v10, v11, a1, v4, v5, v6, v7, v8, v9, v1 + 64);
}

uint64_t objectdestroy_41Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E6575C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6573B68(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

unint64_t sub_1E6575D2C()
{
  result = qword_1EE2D4998;
  if (!qword_1EE2D4998)
  {
    sub_1E65E5648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4998);
  }

  return result;
}

uint64_t PlayerService.makePlayerUpdateStream.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlayerService.makeTrainerTipPlayerDismissedStream.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PlayerService.makeStandardPlayerViewController.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlayerService.makeTipPlayerViewController.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PlayerService.makeQueueSessionViewController.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PlayerService.makeSampleContentSessionViewController.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PlayerService.makeSessionViewController.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

id PlayerUpdate.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1E6575F08(v2, v3, v4);
}

id sub_1E6575F08(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20FitnessPlayerService0B6UpdateV5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E6575F58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1E6575FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6575FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E6576044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1E65760A8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_1E65760E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B640, &unk_1E660C6C8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1E65DB5D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier + 8);
  if (!v14)
  {
    return sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  v15 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier);
  sub_1E5DFD1CC(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_qualityReportingEntity, v8, &unk_1ED077770, &unk_1E660C190);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E5DFE50C(v8, &unk_1ED077770, &unk_1E660C190);
    return sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  (*(v10 + 32))(v13, v8, v9);
  v17 = v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier;
  v18 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier);
  v19 = *(v17 + 8);
  v20 = sub_1E65DDCF8();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  v21 = sub_1E65DAE28();
  v22 = MEMORY[0x1E6943050](v15, v14, v18, v19, v13, v4, v21);
  sub_1E5DFE50C(v4, &unk_1ED07B640, &unk_1E660C6C8);
  (*(v10 + 8))(v13, v9);
  return v22;
}

void sub_1E6576384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  if (*(v0 + 152) == 2 && *(v0 + 136) == 0)
  {
    *(v0 + 136) = xmmword_1E65F1570;
    *(v0 + 152) = 2;
    v5 = [objc_allocWithZone(sub_1E65DB498()) init];
    sub_1E657F938(&qword_1ED07B618, type metadata accessor for StandardPlayerPresenter);

    v6 = v0;
    sub_1E65DB488();
    v7 = sub_1E65E60A8();
    v8 = *(*(v7 - 8) + 56);
    v8(v4, 1, 1, v7);
    v9 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter);
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v9;
    v10[4] = v6;
    v10[5] = v5;
    swift_retain_n();
    v11 = v5;
    sub_1E64B83F8(0, 0, v4, &unk_1E660C628, v10);

    sub_1E65E6068();
    v8(v4, 0, 1, v7);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = v6;
    swift_retain_n();
    sub_1E64B80F8(0, 0, v4, &unk_1E660C638, v12);
  }
}

uint64_t sub_1E65765F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6576614, a4, 0);
}

uint64_t sub_1E6576614()
{
  *(v0 + 40) = sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65766AC, v2, v1);
}

uint64_t sub_1E65766AC()
{
  v1 = v0[6];
  v2 = v0[3];

  v0[7] = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6576724, v2, 0);
}

uint64_t sub_1E6576724()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 40);
    *(v0 + 64) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E65767F4, v3, v2);
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E65767F4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  [*(v2 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) addBehavior_];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1E657688C, v4, 0);
}

uint64_t sub_1E65768B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B720, &qword_1E660C640);
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = sub_1E65D74E8();
  v4[24] = v10;
  v11 = *(v10 - 8);
  v4[25] = v11;
  v12 = *(v11 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6576A18, a4, 0);
}

uint64_t sub_1E6576A18()
{
  *(v0 + 216) = *(*(v0 + 152) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator);
  sub_1E65DB608();
  sub_1E657F938(&qword_1ED07B610, MEMORY[0x1E69CD568]);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6576AE0, v2, v1);
}

uint64_t sub_1E6576AE0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  sub_1E65DB5F8();

  return MEMORY[0x1EEE6DFA0](sub_1E6576B4C, v2, 0);
}

uint64_t sub_1E6576B4C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v2 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient), *(v2 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient + 24));
  sub_1E65DD838();

  return MEMORY[0x1EEE6DFA0](sub_1E6576BF8, 0, 0);
}

uint64_t sub_1E6576BF8()
{
  v1 = v0[23];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 107;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1E6576D08;
  v5 = v0[26];
  v6 = v0[24];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657F858, v2, v6);
}

uint64_t sub_1E6576D08()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = sub_1E6576E64;
    v6 = 0;
  }

  else
  {
    v7 = v2[19];
    (*(v2[22] + 8))(v2[23], v2[21]);
    v5 = sub_1E6576F78;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6576E64()
{
  v1 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);

  return MEMORY[0x1EEE6DFA0](sub_1E6576EE0, v1, 0);
}

uint64_t sub_1E6576EE0()
{
  v1 = v0[19];
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  *(v1 + 136) = v0[30];
  *(v1 + 144) = 0;
  v4 = *(v1 + 152);
  *(v1 + 152) = 1;
  sub_1E657DE88(v2, v3, v4);
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6576F78()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  sub_1E65760E4();
  v4 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v5 = sub_1E65D7448();
  v6 = sub_1E65E5AF8();

  v7 = [v4 initWithURL:v5 options:v6];
  v0[31] = v7;

  v8 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
  v0[32] = v8;
  [v8 setAllowedAudioSpatializationFormats_];
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v10;
  v11[4] = v3;
  v11[5] = v8;
  v11[6] = v7;
  swift_retain_n();
  v12 = v8;
  v13 = v7;
  sub_1E6059EAC(0, 0, v2, &unk_1E660C650, v11);

  v0[33] = sub_1E65E6058();
  v0[34] = sub_1E65E6048();
  v15 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65771C0, v15, v14);
}

uint64_t sub_1E65771C0()
{
  v1 = v0[34];
  v2 = v0[19];

  v0[35] = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6577238, v2, 0);
}

uint64_t sub_1E6577238()
{
  if (v0[35])
  {
    v1 = v0[33];
    v0[36] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6577698, v3, v2);
  }

  else
  {
    v4 = sub_1E65DDF08();
    v0[17] = v4;
    v0[18] = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v4);
    LOBYTE(v4) = sub_1E65DAF58();
    __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    if (v4)
    {
      v6 = v0[32];
      v7 = v0[19];
      v8 = [objc_opt_self() defaultCenter];
      v9 = *MEMORY[0x1E6987A30];
      v10 = objc_opt_self();
      v11 = v6;
      v12 = [v10 mainQueue];
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      v0[12] = sub_1E657F988;
      v0[13] = v14;
      v0[8] = MEMORY[0x1E69E9820];
      v0[9] = 1107296256;
      v0[10] = sub_1E65798D8;
      v0[11] = &block_descriptor_73_0;
      v15 = _Block_copy(v0 + 8);
      v16 = v0[13];
      v17 = v11;

      v18 = [v8 addObserverForName:v9 object:v17 queue:v12 usingBlock:v15];
      _Block_release(v15);

      swift_unknownObjectRelease();
    }

    v19 = v0[31];
    v20 = v0[32];
    v21 = v0[25];
    v38 = v0[24];
    v39 = v0[26];
    v22 = v0[19];
    v23 = [objc_opt_self() defaultCenter];
    v24 = *MEMORY[0x1E6987A10];
    v25 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1E657F980;
    v0[7] = v25;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1E65798D8;
    v0[5] = &block_descriptor_23;
    v26 = _Block_copy(v0 + 2);
    v27 = v0[7];
    v28 = v20;

    v29 = [v23 addObserverForName:v24 object:v28 queue:0 usingBlock:v26];
    _Block_release(v26);

    (*(v21 + 8))(v39, v38);
    v30 = *(v22 + 136);
    v31 = *(v22 + 144);
    *(v22 + 136) = v20;
    *(v22 + 144) = v29;
    v32 = *(v22 + 152);
    *(v22 + 152) = 0;
    sub_1E657DE88(v30, v31, v32);
    v33 = v0[26];
    v34 = v0[23];
    v35 = v0[20];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_1E6577698()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[32];
  v4 = v0[19];

  v5 = *(v2 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v6 = [objc_allocWithZone(MEMORY[0x1E6988098]) initWithPlayerItem_];
  [v5 setPlayer_];

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1E657775C, v4, 0);
}

uint64_t sub_1E657775C()
{
  v1 = sub_1E65DDF08();
  v0[17] = v1;
  v0[18] = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v1);
  LOBYTE(v1) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  if (v1)
  {
    v3 = v0[32];
    v4 = v0[19];
    v5 = [objc_opt_self() defaultCenter];
    v6 = *MEMORY[0x1E6987A30];
    v7 = objc_opt_self();
    v8 = v3;
    v9 = [v7 mainQueue];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v0[12] = sub_1E657F988;
    v0[13] = v11;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1E65798D8;
    v0[11] = &block_descriptor_73_0;
    v12 = _Block_copy(v0 + 8);
    v13 = v0[13];
    v14 = v8;

    v15 = [v5 addObserverForName:v6 object:v14 queue:v9 usingBlock:v12];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }

  v16 = v0[31];
  v17 = v0[32];
  v18 = v0[25];
  v35 = v0[24];
  v36 = v0[26];
  v19 = v0[19];
  v20 = [objc_opt_self() defaultCenter];
  v21 = *MEMORY[0x1E6987A10];
  v22 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1E657F980;
  v0[7] = v22;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E65798D8;
  v0[5] = &block_descriptor_23;
  v23 = _Block_copy(v0 + 2);
  v24 = v0[7];
  v25 = v17;

  v26 = [v20 addObserverForName:v21 object:v25 queue:0 usingBlock:v23];
  _Block_release(v23);

  (*(v18 + 8))(v36, v35);
  v27 = *(v19 + 136);
  v28 = *(v19 + 144);
  *(v19 + 136) = v17;
  *(v19 + 144) = v26;
  v29 = *(v19 + 152);
  *(v19 + 152) = 0;
  sub_1E657DE88(v27, v28, v29);
  v30 = v0[26];
  v31 = v0[23];
  v32 = v0[20];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1E6577B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = sub_1E65D9AC8();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF28, &qword_1E660AAB0);
  v6[14] = v11;
  v12 = *(v11 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5E8, &unk_1E660C5C0);
  v6[19] = v15;
  v16 = *(v15 - 8);
  v6[20] = v16;
  v17 = *(v16 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6577D1C, a4, 0);
}

uint64_t sub_1E6577D1C()
{
  v1 = (v0[8] + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingTitle);
  v2 = v1[1];
  v0[22] = v2;
  if (v2)
  {
    v0[23] = *v1;
    sub_1E65E6058();
    v0[24] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6577E3C, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_1E6577EFC;
    v6 = v0[8];

    return sub_1E657B4AC();
  }
}

uint64_t sub_1E6577E3C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[9];

  sub_1E657DF98(*MEMORY[0x1E6987668], v2, v3);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1E6577EFC;
  v6 = v0[8];

  return sub_1E657B4AC();
}

uint64_t sub_1E6577EFC(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6578014, v3, 0);
}

uint64_t sub_1E6578014()
{
  if (v0[26])
  {
    sub_1E65E6058();
    v0[27] = sub_1E65E6048();
    v1 = sub_1E65E5FC8();
    v3 = v2;
    v4 = sub_1E6578228;
    v5 = v1;
    v6 = v3;
LABEL_5:

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  v7 = sub_1E65DDF08();
  v0[5] = v7;
  v0[6] = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v7);
  LOBYTE(v7) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[21];
  if (v7)
  {
    v10 = v0[10];
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v11 = sub_1E65E63C8();
    sub_1E65E62F8();

    v4 = sub_1E6578468;
    v5 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E6578228()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[8];
  v3 = v0[9];

  sub_1E6578F4C(v2);

  return MEMORY[0x1EEE6DFA0](sub_1E65782A4, v4, 0);
}

uint64_t sub_1E65782A4()
{
  v1 = sub_1E65DDF08();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v1);
  LOBYTE(v1) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = *(v0 + 168);
  if (v1)
  {
    v4 = *(v0 + 80);
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v5 = sub_1E65E63C8();
    sub_1E65E62F8();

    return MEMORY[0x1EEE6DFA0](sub_1E6578468, 0, 0);
  }

  else
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 168);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E6578468()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 121;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  v5 = sub_1E5DEF738(0, &qword_1ED07B5F0, 0x1E6987FD0);
  *v4 = v0;
  v4[1] = sub_1E6578590;

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6580204, v2, v5);
}

uint64_t sub_1E6578590()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  if (v0)
  {

    v6 = sub_1E6578A24;
    v7 = 0;
  }

  else
  {
    v9 = v2[20];
    v8 = v2[21];
    v10 = v2[19];
    v11 = v2[8];
    v2[31] = v2[7];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E6578704;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E6578704()
{
  v1 = *(v0 + 128);
  v2 = (*(v0 + 64) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1E65DD6B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65787A0, 0, 0);
}

uint64_t sub_1E65787A0()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 122;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_1E65788A8;
  v5 = v0[18];
  v6 = v0[11];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657FB98, v2, v6);
}

uint64_t sub_1E65788A8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;

  v6 = v2[32];
  if (v0)
  {

    v7 = sub_1E6578D04;
    v8 = 0;
  }

  else
  {
    v10 = v3[15];
    v9 = v3[16];
    v11 = v3[14];
    v12 = v3[8];

    (*(v10 + 8))(v9, v11);
    v7 = sub_1E6578B38;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E6578A24()
{
  v1 = v0[8];
  (*(v0[20] + 8))(v0[21], v0[19]);

  return MEMORY[0x1EEE6DFA0](sub_1E6578AA0, v1, 0);
}

uint64_t sub_1E6578AA0()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[13];

  v6 = v0[1];
  v7 = v0[30];

  return v6();
}

uint64_t sub_1E6578B38()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1E5DFD1CC(v2, v1, &qword_1ED072198, &unk_1E660C690);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 104);
    MEMORY[0x1E6941490]();
    if (v5(v7, 1, v8) != 1)
    {
      sub_1E5DFE50C(*(v0 + 136), &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 144);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 88);
  sub_1E657FBB0(*(v0 + 72), v10, v12);

  (*(v13 + 8))(v12, v14);
  sub_1E5DFE50C(v11, &qword_1ED072198, &unk_1E660C690);
  v15 = *(v0 + 168);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E6578D04()
{
  v1 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return MEMORY[0x1EEE6DFA0](sub_1E6578D80, v1, 0);
}

uint64_t sub_1E6578D80()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_1E5DFD1CC(v2, v1, &qword_1ED072198, &unk_1E660C690);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 104);
    MEMORY[0x1E6941490]();
    if (v5(v7, 1, v8) != 1)
    {
      sub_1E5DFE50C(*(v0 + 136), &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 144);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 88);
  sub_1E657FBB0(*(v0 + 72), v10, v12);

  (*(v13 + 8))(v12, v14);
  sub_1E5DFE50C(v11, &qword_1ED072198, &unk_1E660C690);
  v15 = *(v0 + 168);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

void sub_1E6578F4C(UIImage *a1)
{
  v2 = v1;
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = UIImagePNGRepresentation(a1);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1E65D7518();
    v13 = v12;

    v14 = [objc_allocWithZone(MEMORY[0x1E6988050]) init];
    [v14 setIdentifier_];
    [v14 setDataType_];
    v15 = sub_1E65E5C48();
    [v14 setExtendedLanguageTag_];

    v16 = sub_1E65D7508();
    [v14 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA660;
    *(inited + 32) = v14;
    v18 = v14;
    v19 = [v2 externalMetadata];
    sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
    v20 = sub_1E65E5F18();

    v25 = v20;
    sub_1E657F1F8(inited);
    v21 = sub_1E65E5EF8();

    [v2 setExternalMetadata_];
    sub_1E600A068(v11, v13);
  }

  else
  {
    sub_1E65DE348();
    v22 = sub_1E65E3B48();
    v23 = sub_1E65E6338();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1E5DE9000, v22, v23, "[AVPlayerItem] failed to extract pngData from image", v24, 2u);
      MEMORY[0x1E694F1C0](v24, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E657923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1E5DFD1CC(a3, v24 - v10, &unk_1ED0735B0, &qword_1E65EA000);
  v12 = sub_1E65E60A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5DFE50C(v11, &unk_1ED0735B0, &qword_1E65EA000);
  }

  else
  {
    sub_1E65E6098();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E65E5FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E65E5D18() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B670, &unk_1E660C780);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);

      return v22;
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

  sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B670, &unk_1E660C780);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1E65794F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;

  v11 = a3;
  sub_1E657923C(0, 0, v8, &unk_1E660C660, v10);
}

uint64_t sub_1E657960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6579630, 0, 0);
}

uint64_t sub_1E6579630()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1E657972C;
    v4 = *(v0 + 56);

    return sub_1E657BF3C(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E657972C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1E6579874;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1E6579848;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6579874()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E65798D8(uint64_t a1)
{
  v2 = sub_1E65D7068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1E65D7058();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E65799CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1E65E60A8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1E64B80F8(0, 0, v3, &unk_1E660C678, v7);
  }

  return result;
}

uint64_t sub_1E6579B0C()
{
  v1 = v0[2];
  if (*(v1 + 152))
  {
    if (*(v1 + 152) != 1 && *(v1 + 136) < 2uLL)
    {
      v2 = v0[1];

      return v2();
    }

    v0[7] = sub_1E65E6058();
    v0[8] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E6579E18;
  }

  else
  {
    v0[3] = sub_1E65E6058();
    v0[4] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v8;
    v7 = sub_1E6579C40;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E6579C40()
{
  v1 = v0[4];
  v2 = v0[2];

  v0[5] = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6579CB8, v2, 0);
}

uint64_t sub_1E6579CB8()
{
  if (v0[5])
  {
    v1 = v0[3];
    v0[6] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6579D7C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E6579D7C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = [*(v2 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) player];
  [v3 play];

  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6579E18()
{
  v1 = v0[8];
  v2 = v0[2];

  v0[9] = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6579E90, v2, 0);
}

uint64_t sub_1E6579E90()
{
  if (v0[9])
  {
    v1 = v0[7];
    v0[10] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6579F54, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E6579F54()
{
  v2 = v0[9];
  v1 = v0[10];

  [v2 dismissViewControllerAnimated:1 completion:0];
  v3 = v0[9];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6579FD4(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, CMTimeValue a4, unint64_t a5, CMTimeEpoch a6)
{
  v7 = v6;
  v112 = a3;
  v113 = a6;
  v119 = a1;
  v120 = a4;
  v9 = a2;
  v118 = HIDWORD(a2);
  v121 = HIDWORD(a5);
  v106 = sub_1E65DB758();
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D8A08();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v99 = &v94 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v95 = &v94 - v26;
  v101 = sub_1E65D8C88();
  v100 = *(v101 - 8);
  v27 = *(v100 + 64);
  v28 = MEMORY[0x1EEE9AC00](v101);
  v96 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v94 - v30;
  v31 = sub_1E65D97D8();
  v110 = *(v31 - 8);
  v111 = v31;
  v32 = *(v110 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v108 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v109 = (&v94 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v107 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v94 - v40;
  v42 = sub_1E65D7A38();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v94 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = &v94 - v49;
  v51 = sub_1E65E60A8();
  v52 = *(v51 - 8);
  v116 = *(v52 + 56);
  v117 = v51;
  v115 = v52 + 56;
  v116(v50, 1, 1);
  v53 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter);
  v54 = swift_allocObject();
  *(v54 + 16) = v7;
  *(v54 + 24) = v53;
  v114 = v53;
  v55 = v118;
  v56 = v119;
  *(v54 + 32) = v7;
  *(v54 + 40) = v56;
  v57 = v9;
  *(v54 + 48) = v9;
  *(v54 + 52) = v55;
  v58 = v112;
  *(v54 + 56) = v112;
  *(v54 + 64) = v120;
  v94 = a5;
  v59 = v121;
  *(v54 + 72) = a5;
  *(v54 + 76) = v59;
  v60 = v113;
  *(v54 + 80) = v113;
  swift_retain_n();
  v61 = v54;
  v62 = v42;
  v63 = v43;
  sub_1E64B80F8(0, 0, v50, &unk_1E660C600, v61);

  sub_1E5DFD1CC(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_metricPage, v41, &unk_1ED07B500, &qword_1E65F0EE0);
  if ((*(v43 + 48))(v41, 1, v62) == 1)
  {
    sub_1E5DFE50C(v41, &unk_1ED07B500, &qword_1E65F0EE0);
  }

  else
  {
    v64 = *(v43 + 32);
    v65 = v46;
    v64(v46, v41, v62);
    v66 = *(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier + 8);
    if (v66)
    {
      v67 = *(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier);
      v68 = *(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier + 8);

      time.value = v119;
      time.timescale = v57;
      time.flags = v118;
      time.epoch = v58;
      Seconds = CMTimeGetSeconds(&time);
      time.value = v120;
      if (Seconds >= 0.0)
      {
        v70 = Seconds;
      }

      else
      {
        v70 = 0.0;
      }

      time.timescale = v94;
      time.flags = v121;
      time.epoch = v60;
      v71 = CMTimeGetSeconds(&time);
      if (v71 < 0.0)
      {
        v71 = 0.0;
      }

      v73 = v109;
      v72 = v110;
      *v109 = v67;
      *(v73 + 1) = v66;
      v73[2] = v70;
      v73[3] = v71;
      v74 = v111;
      (*(v72 + 104))(v73, *MEMORY[0x1E69CC340], v111);
      (*(v72 + 16))(v108, v73, v74);
      v75 = v107;
      (*(v63 + 16))(v107, v65, v62);
      (*(v63 + 56))(v75, 0, 1, v62);
      v76 = sub_1E65D9208();
      v77 = *(*(v76 - 8) + 56);
      v120 = v65;
      v77(v95, 1, 1, v76);
      v78 = sub_1E65D9218();
      (*(*(v78 - 8) + 56))(v97, 1, 1, v78);
      v79 = v99;
      sub_1E65D8CA8();
      v80 = sub_1E65D8CB8();
      (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
      (*(*(v81 - 8) + 56))(v102, 1, 1, v81);
      v82 = sub_1E65D9928();
      (*(*(v82 - 8) + 56))(v103, 1, 1, v82);
      v83 = v98;
      sub_1E65D8C78();
      v121 = v7;
      v84 = v63;
      v85 = v100;
      v86 = v101;
      (*(v100 + 16))(v96, v83, v101);
      v87 = v104;
      sub_1E65DB768();
      v88 = *(v121 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_eventHub);
      v89 = *(v121 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_eventHub + 8);
      swift_getObjectType();
      sub_1E657F938(&qword_1EE2D6D38, MEMORY[0x1E69CD5C8]);
      v119 = v62;
      v90 = v106;
      sub_1E65DDDE8();
      (*(v105 + 8))(v87, v90);
      (*(v85 + 8))(v83, v86);
      (*(v110 + 8))(v109, v111);
      (*(v84 + 8))(v120, v119);
      v7 = v121;
    }

    else
    {
      (*(v63 + 8))(v65, v62);
    }
  }

  sub_1E65E6068();
  (v116)(v50, 0, 1, v117);
  v91 = swift_allocObject();
  v92 = v114;
  v91[2] = v7;
  v91[3] = v92;
  v91[4] = v7;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v50, &unk_1E660C610, v91);
}

uint64_t sub_1E657AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E657AB68, a4, 0);
}

uint64_t sub_1E657AB68()
{
  v1 = *(v0 + 16);
  if (*(v1 + 152) >= 2u)
  {
    v3 = *(v1 + 144);
    v2 = *(v1 + 136) > 1uLL;
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 136) = v2;
  v4 = (v1 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed);
  v5 = *v4;
  *(v0 + 72) = *v4;
  if (v5)
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    *(v0 + 80) = v4[1];
    *(v0 + 112) = v11;
    *(v0 + 120) = v10;
    *(v0 + 128) = v8;
    *(v0 + 88) = CMTimeGetSeconds((v0 + 112));
    *(v0 + 112) = v9;
    *(v0 + 120) = v7;
    *(v0 + 128) = v6;
    *(v0 + 96) = CMTimeGetSeconds((v0 + 112));
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E657ACDC, v13, v12);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1E657ACDC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 136);

  v8.n128_u64[0] = 0;
  if (v3 >= 0.0)
  {
    v7.n128_f64[0] = v3;
  }

  else
  {
    v7.n128_f64[0] = 0.0;
  }

  if (v2 >= 0.0)
  {
    v8.n128_f64[0] = v2;
  }

  v5(v6, v7, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E657AD98()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator);
  sub_1E65DB608();
  sub_1E657F938(&qword_1ED07B610, MEMORY[0x1E69CD568]);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657AE60, v2, v1);
}

uint64_t sub_1E657AE60()
{
  v1 = *(v0 + 24);
  sub_1E65DB5E8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E657AEE0()
{
  v1 = (v0[2] + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v0[4] = v1[1];
    sub_1E65E6058();
    v0[5] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v4;
    v6 = sub_1E657AFE0;
  }

  else
  {
    v0[6] = sub_1E65E6058();
    v0[7] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v7;
    v6 = sub_1E657B0F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1E657AFE0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v4(v5);

  return MEMORY[0x1EEE6DFA0](sub_1E657B05C, v3, 0);
}

uint64_t sub_1E657B05C()
{
  *(v0 + 48) = sub_1E65E6058();
  *(v0 + 56) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657B0F4, v2, v1);
}

uint64_t sub_1E657B0F4()
{
  v1 = v0[7];
  v2 = v0[2];

  v0[8] = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E657B16C, v2, 0);
}

uint64_t sub_1E657B16C()
{
  if (v0[8])
  {
    v1 = v0[6];
    v0[9] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E657B230, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E657B230()
{
  v2 = v0[8];
  v1 = v0[9];

  [v2 dismissViewControllerAnimated:1 completion:0];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E657B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657B350, a4, 0);
}

uint64_t sub_1E657B350()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *(v1 + 136) = xmmword_1E660C3A0;
  v5 = *(v1 + 152);
  *(v1 + 152) = 2;
  sub_1E657DE88(v3, v4, v5);
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v2, &unk_1E660C680, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E657B4AC()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE68, &unk_1E660C5E0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_1E65DAC98();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_1E65DB3E8();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657B674, v0, 0);
}

uint64_t sub_1E657B674()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_1E5DFD1CC(v0[3] + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingImageDescriptor, v3, &qword_1ED076220, &unk_1E65FA4A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[10], &qword_1ED076220, &unk_1E65FA4A0);
    goto LABEL_3;
  }

  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[12];
  (*(v15 + 32))(v13, v0[10], v14);
  (*(v15 + 16))(v12, v13, v14);
  v16 = (*(v15 + 88))(v12, v14);
  if (v16 != *MEMORY[0x1E69CD4D8])
  {
    if (v16 == *MEMORY[0x1E69CD4C8])
    {
      v28 = v0[13];
      v27 = v0[14];
      v29 = v0[11];
      v30 = v0[12];
      (*(v30 + 96))(v28, v29);
      v31 = *v28;
      v32 = v28[1];
      v33 = v28[2];
      v34 = sub_1E65E5C48();

      v4 = [objc_opt_self() imageNamed:v34 inBundle:v33];

      (*(v30 + 8))(v27, v29);
      goto LABEL_4;
    }

    v35 = v0[13];
    v36 = v0[14];
    v37 = v0[11];
    v38 = v0[12];
    if (v16 == *MEMORY[0x1E69CD4D0])
    {
      (*(v38 + 96))(v0[13], v0[11]);
      v39 = *v35;
      v40 = v35[1];
      v41 = sub_1E65E5C48();

      v4 = [objc_opt_self() systemImageNamed_];

      (*(v38 + 8))(v36, v37);
      goto LABEL_4;
    }

    v42 = *(v38 + 8);
    v42(v0[14], v0[11]);
    v42(v35, v37);
LABEL_3:
    v4 = 0;
LABEL_4:
    v6 = v0[13];
    v5 = v0[14];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[6];

    v10 = v0[1];

    return v10(v4);
  }

  v17 = v0[13];
  v19 = v0[8];
  v18 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[3];
  (*(v0[12] + 96))(v17, v0[11]);
  v23 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B608, &qword_1E660C5F0) + 48));
  v24 = *v23;
  v25 = v23[1];
  (*(v19 + 32))(v18, v17, v20);
  sub_1E65E6498();
  v26 = *(v22 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader + 32);
  __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader), *(v22 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader + 24));
  sub_1E65DB4A8();

  return MEMORY[0x1EEE6DFA0](sub_1E657BA78, 0, 0);
}

uint64_t sub_1E657BA78()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 235;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_1E5DEF738(0, &qword_1EE2D4508, 0x1E69DCAB8);
  *v4 = v0;
  v4[1] = sub_1E657BBA0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657F48C, v2, v5);
}

uint64_t sub_1E657BBA0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = v2[15];
  if (v0)
  {

    v7 = sub_1E657BDF8;
    v8 = 0;
  }

  else
  {
    v10 = v3[5];
    v9 = v3[6];
    v12 = v3[3];
    v11 = v3[4];
    v3[17] = v3[2];

    (*(v10 + 8))(v9, v11);
    v7 = sub_1E657BD20;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E657BD20()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v4 + 8))(v2, v3);
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[6];

  v10 = v0[1];

  return v10(v1);
}

uint64_t sub_1E657BDF8()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E657BE70, v1, 0);
}

uint64_t sub_1E657BE70()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1E657BF3C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_1E65D9AC8();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5E8, &unk_1E660C5C0);
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = sub_1E65E3B68();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657C14C, v1, 0);
}

uint64_t sub_1E657C14C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  sub_1E65DE368();
  sub_1E65E3B18();
  v4 = *(v3 + 8);
  v0[21] = v4;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v0[23] = sub_1E65E6058();
  v0[24] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657C258, v6, v5);
}

uint64_t sub_1E657C258()
{
  v1 = v0[24];
  v2 = v0[4];
  v3 = v0[5];

  v0[25] = [v2 asset];

  return MEMORY[0x1EEE6DFA0](sub_1E657C2E0, v3, 0);
}

uint64_t sub_1E657C2E0()
{
  v1 = *(v0 + 200);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = *(v0 + 112);
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v3 = sub_1E65E63C8();
    sub_1E65E62F8();

    return MEMORY[0x1EEE6DFA0](sub_1E657C528, 0, 0);
  }

  else
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 32);

    sub_1E65DE368();
    v6 = v5;
    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6328();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "%@ is not an AVURLAsset", v10, 0xCu);
      sub_1E5DFE50C(v11, &unk_1ED072130, &qword_1E65EA840);
      MEMORY[0x1E694F1C0](v11, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 136);
    v16 = *(v0 + 120);

    v14(v15, v16);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 64);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1E657C528()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 269;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[27] = v4;
  v5 = sub_1E5DEF738(0, &qword_1ED07B5F0, 0x1E6987FD0);
  *v4 = v0;
  v4[1] = sub_1E657C650;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657EBE8, v2, v5);
}

uint64_t sub_1E657C650()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[26];
  if (v0)
  {

    v6 = sub_1E657CE00;
    v7 = 0;
  }

  else
  {
    v9 = v2[13];
    v8 = v2[14];
    v10 = v2[12];
    v11 = v2[5];
    v2[29] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E657C7C8;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E657C7C8()
{
  v1 = v0[23];
  v2 = *(v0[5] + 128);
  v0[30] = v2;
  v3 = v2;
  v0[31] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657C864, v5, v4);
}

uint64_t sub_1E657C864()
{
  v1 = v0[31];
  v2 = v0[4];
  v3 = v0[5];

  v0[32] = [v2 currentMediaSelection];

  return MEMORY[0x1EEE6DFA0](sub_1E657C8EC, v3, 0);
}

uint64_t sub_1E657C8EC()
{
  v68 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  v4 = [v1 selectedMediaOptionInMediaSelectionGroup_];

  v5 = *(v3 + 128);
  *(v3 + 128) = v4;

  sub_1E65DE368();

  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 168);
    v66 = *(v0 + 176);
    v9 = *(v0 + 152);
    v10 = *(v0 + 120);
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v67 = v13;
    *v12 = 136315138;
    *(v0 + 24) = *(v11 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5F8, &qword_1E660C5D0);
    v14 = sub_1E65E6638();
    v16 = sub_1E5DFD4B0(v14, v15, &v67);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "currentAudibleMediaSelectionOption: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E694F1C0](v13, -1, -1);
    MEMORY[0x1E694F1C0](v12, -1, -1);

    v8(v9, v10);
    v17 = *(v0 + 240);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_10:
    v34 = *(v0 + 200);

LABEL_24:
    v54 = *(v0 + 152);
    v53 = *(v0 + 160);
    v56 = *(v0 + 136);
    v55 = *(v0 + 144);
    v57 = *(v0 + 112);
    v58 = *(v0 + 88);
    v59 = *(v0 + 64);

    v60 = *(v0 + 8);

    return v60();
  }

  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  v32 = *(v0 + 152);
  v33 = *(v0 + 120);

  v31(v32, v33);
  v17 = *(v0 + 240);
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_3:
  v18 = *(v0 + 40);
  v19 = v17;
  v20 = sub_1E65E6478();
  v22 = v21;

  v23 = *(v18 + 128);
  if (!v23)
  {
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_19:
    v51 = *(v0 + 232);
    v34 = *(v0 + 240);
    v50 = *(v0 + 200);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = sub_1E65E6478();
  v27 = v26;

  if (!v22)
  {
    if (v27)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (!v27)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v20 == v25 && v22 == v27)
  {
    v28 = *(v0 + 232);
    v29 = *(v0 + 200);

LABEL_23:

    v34 = *(v0 + 240);
    goto LABEL_24;
  }

  v52 = sub_1E65E6C18();

  if (v52)
  {
    v28 = *(v0 + 232);
    v29 = *(v0 + 200);
    goto LABEL_23;
  }

LABEL_13:
  v35 = *(*(v0 + 40) + 128);
  if (!v35 || (v36 = v35, v37 = sub_1E65E6478(), v39 = v38, v36, !v39))
  {
    v50 = *(v0 + 232);
    v34 = *(v0 + 240);
    v51 = *(v0 + 200);
LABEL_20:

    goto LABEL_24;
  }

  v40 = *(v0 + 144);
  sub_1E65DE368();

  v41 = sub_1E65E3B48();
  v42 = sub_1E65E6338();

  v43 = os_log_type_enabled(v41, v42);
  v45 = *(v0 + 168);
  v44 = *(v0 + 176);
  v46 = *(v0 + 144);
  v47 = *(v0 + 120);
  if (v43)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v67 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_1E5DFD4B0(v37, v39, &v67);
    _os_log_impl(&dword_1E5DE9000, v41, v42, "Updating audio language preference to: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1E694F1C0](v49, -1, -1);
    MEMORY[0x1E694F1C0](v48, -1, -1);
  }

  v45(v46, v47);
  v62 = *(v0 + 88);
  v63 = *(v0 + 64);
  v64 = *(v0 + 40);
  sub_1E65E61B8();
  sub_1E65D9A98();
  v65 = *(v64 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient + 32);
  __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient), *(v64 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient + 24));
  sub_1E65DD6C8();

  return MEMORY[0x1EEE6DFA0](sub_1E657CF40, 0, 0);
}

uint64_t sub_1E657CE00()
{
  v1 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return MEMORY[0x1EEE6DFA0](sub_1E657CE7C, v1, 0);
}

uint64_t sub_1E657CE7C()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E657CF40()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[33] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 285;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1E657D048;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657EC00, v2, v5);
}

uint64_t sub_1E657D048()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = sub_1E657D288;
    v6 = 0;
  }

  else
  {
    v7 = v2[5];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_1E657D1A0;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E657D1A0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v3, v5);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E657D288()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E657D300, v1, 0);
}

uint64_t sub_1E657D300()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 280);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E657D3F0()
{
  sub_1E5E0BE48(v0 + 112);

  sub_1E657DE88(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  v1 = OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingURL;
  v2 = sub_1E65D74E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingTitle + 8);

  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingImageDescriptor, &qword_1ED076220, &unk_1E65FA4A0);
  v4 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier + 8);

  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_metricPage, &unk_1ED07B500, &qword_1E65F0EE0);
  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_qualityReportingEntity, &unk_1ED077770, &unk_1E660C190);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient));
  v6 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator);

  v7 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_eventHub);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient));
  v8 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished + 8);
  sub_1E5E29474(*(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished));
  v9 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed + 8);
  sub_1E5E29474(*(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E657D588()
{
  sub_1E657D3F0();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for StandardPlayerPresenter()
{
  result = qword_1ED07B5D0;
  if (!qword_1ED07B5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E657D608()
{
  v0 = sub_1E65D74E8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1E657D804(319, &qword_1EE2D6D68, MEMORY[0x1E69CD4E0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1E657D804(319, &unk_1EE2D7168, MEMORY[0x1E69CAF60]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1E657D804(319, &qword_1EE2D6D58, MEMORY[0x1E69CD550]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E657D804(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E65E6668();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20FitnessPlayerService08StandardB9PresenterC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E657D874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E657D8BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E657D900(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1E657D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657D9CC, a4, 0);
}

uint64_t sub_1E657D9CC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = xmmword_1E660C3A0;
  v5 = *(v2 + 152);
  *(v2 + 152) = 2;
  sub_1E657DE88(v3, v4, v5);
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v7;
  v8[4] = v2;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v1, &unk_1E660C5B0, v8);

  return MEMORY[0x1EEE6DFA0](sub_1E657DB2C, 0, 0);
}

uint64_t sub_1E657DB2C()
{
  *(v0 + 48) = sub_1E65E6058();
  *(v0 + 56) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657DBC4, v2, v1);
}

uint64_t sub_1E657DBC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1E65E6048();
  sub_1E65E5FC8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  (*(v0 + 24))(isCurrentExecutor);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E657DC9C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_1E64B80F8(0, 0, v8, &unk_1E660C5A0, v10);
}

uint64_t sub_1E657DDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E657D928(a1, v4, v5, v6, v7, v8);
}

void sub_1E657DE88(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E657DEE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E657AEC0(a1, v4, v5, v6);
}

void sub_1E657DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E657E15C();
  if (a3)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E6988050]) init];
    [v7 setIdentifier_];
    v8 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v9 = sub_1E65E5C48();
    v10 = [v8 initWithString_];

    [v7 setValue_];
    v11 = sub_1E65E5C48();
    [v7 setExtendedLanguageTag_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA660;
    *(inited + 32) = v7;
    v13 = v7;
    v14 = [v4 externalMetadata];
    sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
    v15 = sub_1E65E5F18();

    sub_1E657F1F8(inited);
    v16 = sub_1E65E5EF8();

    [v4 setExternalMetadata_];
  }
}

void sub_1E657E15C()
{
  v1 = [v0 externalMetadata];
  v2 = sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
  v3 = sub_1E65E5F18();

  v19 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E65E67C8())
  {
    v16 = v2;
    v17 = v0;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E694E2D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_1E65E6058();
      v0 = sub_1E65E6048();
      sub_1E65E5FC8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = [v7 identifier];
      if (!v8)
      {

LABEL_19:
        sub_1E65E6928();
        v15 = *(v19 + 16);
        sub_1E65E6968();
        sub_1E65E6978();
        v0 = &v19;
        sub_1E65E6938();
        goto LABEL_6;
      }

      v9 = v8;
      v10 = sub_1E65E5C78();
      v12 = v11;
      if (v10 == sub_1E65E5C78() && v12 == v13)
      {
      }

      else
      {
        v14 = sub_1E65E6C18();

        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      ++v5;
      if (v2 == i)
      {
        v0 = v17;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  v18 = sub_1E65E5EF8();

  [v0 setExternalMetadata_];
}

uint64_t sub_1E657E430(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B750, &unk_1E660CEB0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B720, &qword_1E660C640);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E658013C;
  *(v35 + 24) = v33;

  v34(sub_1E6557D50, v35);
}

uint64_t sub_1E657E80C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B600, &qword_1E660C5D8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5E8, &unk_1E660C5C0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E657F478;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E657EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D74E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B638, &qword_1E660C6C0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B638, &qword_1E660C6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B750, &unk_1E660CEB0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B750, &unk_1E660CEB0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E657EFA4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v34 = a7;
  v33 = a6;
  v32[2] = a5;
  v35 = a2;
  v13 = a10;
  v36 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32[0] = a10;
    v24 = v23;
    v37 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_1E65E68B8();
    v27 = sub_1E5DFD4B0(v25, v26, &v37);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v34;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v13 = v32[0];
    MEMORY[0x1E694F1C0](v28, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v37 = a1;
  if (v35)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v13);
    return sub_1E65E5FE8();
  }

  else
  {
    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E657F1F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E65E67C8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1E65E67C8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1E5FAA5A0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E657F2E8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E657F2E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E65E67C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E65E67C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E65800D8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B628, &unk_1E660C6A0);
            v9 = sub_1E5FAA980(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E657F53C(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E657AB34(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1E657F630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E657AD78(a1, v4, v5, v6);
}

uint64_t sub_1E657F6E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65765F0(a1, v4, v5, v7, v6);
}

uint64_t sub_1E657F7A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65768B4(a1, v4, v5, v6);
}

uint64_t sub_1E657F870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6577B40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E657F938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_52Tm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E657F9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E657960C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E657FA98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E657B2B0(a1, v4, v5, v6);
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1E657FBB0(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v61 = a1;
  v4 = sub_1E65D9AC8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = sub_1E65E3B68();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  sub_1E65DE368();
  v19 = v5[2];
  v62 = a3;
  v57 = v19;
  v58 = v5 + 2;
  v19(v11, a3, v4);
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6338();
  v22 = os_log_type_enabled(v20, v21);
  v60 = v5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v56 = v12;
    v24 = v23;
    v25 = swift_slowAlloc();
    v54 = v9;
    v26 = v25;
    v65 = v25;
    *v24 = 136315138;
    v27 = sub_1E65D9AA8();
    v55 = v16;
    v29 = v28;
    v59 = v5[1];
    v59(v11, v4);
    v30 = sub_1E5DFD4B0(v27, v29, &v65);
    v31 = v64;
    v16 = v55;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1E5DE9000, v20, v21, "Configuring audio track for language: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v32 = v26;
    v9 = v54;
    MEMORY[0x1E694F1C0](v32, -1, -1);
    v33 = v24;
    v12 = v56;
    MEMORY[0x1E694F1C0](v33, -1, -1);

    v34 = v31;
  }

  else
  {

    v59 = v5[1];
    v59(v11, v4);
    v34 = v64;
  }

  v35 = *(v34 + 8);
  v35(v18, v12);
  v36 = v62;
  sub_1E65D9AA8();
  v37 = v63;
  v38 = sub_1E65E6458();

  if (v38 >> 62)
  {
    if (sub_1E65E67C8())
    {
      goto LABEL_6;
    }

LABEL_11:

    sub_1E65DE368();
    v57(v9, v36, v4);
    v41 = sub_1E65E3B48();
    v42 = sub_1E65E6338();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v12;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65 = v45;
      *v44 = 136315138;
      v46 = sub_1E65D9AA8();
      v47 = v4;
      v48 = v16;
      v50 = v49;
      v59(v9, v47);
      v51 = sub_1E5DFD4B0(v46, v50, &v65);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_1E5DE9000, v41, v42, "No option available for language: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E694F1C0](v45, -1, -1);
      MEMORY[0x1E694F1C0](v44, -1, -1);

      v52 = v48;
      v53 = v43;
    }

    else
    {

      v59(v9, v4);
      v52 = v16;
      v53 = v12;
    }

    v35(v52, v53);
    return;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1E694E2D0](0, v38);
    goto LABEL_9;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v38 + 32);
LABEL_9:
    v40 = v39;

    [v61 selectMediaOption:v40 inMediaSelectionGroup:v37];

    return;
  }

  __break(1u);
}

unint64_t sub_1E65800D8()
{
  result = qword_1ED07B630;
  if (!qword_1ED07B630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B628, &unk_1E660C6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B630);
  }

  return result;
}

uint64_t sub_1E6580164(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t StandardPlayerViewController.preferredFocusEnvironments.getter()
{
  v7 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E65E6058();
  swift_unknownObjectRetain();
  v1 = v7;
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v7)
  {
    MEMORY[0x1E694D8F0](v2);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v3 = v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1E5DFE50C(&v7, &unk_1ED07B658, &qword_1E660C6E8);
  return v3;
}

void *StandardPlayerViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v2 = v1;
  return v1;
}

id sub_1E658046C(uint64_t a1)
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);

  return v2;
}

id (*StandardPlayerViewController.modalPresentationStyle.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  a1[1] = v3;
  *a1 = [v3 modalPresentationStyle];
  return sub_1E658071C;
}

Swift::Void __swiftcall StandardPlayerViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v49 - v4;
  v49.receiver = v0;
  v49.super_class = ObjectType;
  objc_msgSendSuper2(&v49, sel_viewDidLoad);
  v6 = *&v0[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController];
  [v0 addChildViewController_];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v8 addSubview_];

  v11 = [v6 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  [v6 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E65EFF30;
  v14 = [v6 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v13 + 32) = v20;
  v21 = [v6 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v13 + 40) = v27;
  v28 = [v6 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v0 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v13 + 48) = v34;
  v35 = [v6 view];
  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v0 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 bottomAnchor];

    v42 = [v37 constraintEqualToAnchor_];
    *(v13 + 56) = v42;
    sub_1E6094C88();
    v43 = sub_1E65E5EF8();

    [v40 activateConstraints_];

    v44 = sub_1E65E60A8();
    (*(*(v44 - 8) + 56))(v5, 1, 1, v44);
    sub_1E65E6058();
    v45 = v0;
    v46 = sub_1E65E6048();
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E85E0];
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v45;
    sub_1E64B80F8(0, 0, v5, &unk_1E660C6F8, v47);

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1E6580D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6580D98, v6, v5);
}

uint64_t sub_1E6580D98()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter);
  *(v0 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6580DC4, v1, 0);
}

uint64_t sub_1E6580DC4()
{
  v1 = v0[6];
  sub_1E6576384();
  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v2, v3);
}

uint64_t sub_1E6580E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6580D00(a1, v4, v5, v6);
}

Swift::Void __swiftcall StandardPlayerViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1);
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1E65E6058();
  v9 = v1;
  v10 = sub_1E65E6048();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_1E64B80F8(0, 0, v7, &unk_1E660C708, v11);
}

uint64_t sub_1E6581048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6581118, v7, v6);
}

uint64_t sub_1E6581118()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6581144, v1, 0);
}

uint64_t sub_1E6581144()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_1E65E60A8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1E6581FAC();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v2, &unk_1E660C790, v5);

  v6 = v0[5];
  v7 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1E6581250, v6, v7);
}

uint64_t sub_1E6581250()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65812B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6581048(a1, v4, v5, v6);
}

Swift::Void __swiftcall StandardPlayerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidDisappear_, a1);
  v8 = [v1 parentViewController];
  if (v8)
  {
  }

  else
  {
    v9 = *&v1[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController];
    v10 = [v9 player];
    if (v10)
    {
      v11 = v10;
      [v10 currentTime];
      v12 = v27;
      v13 = v28;
      v14 = v29;
    }

    else
    {
      v12 = *MEMORY[0x1E6960CC0];
      v13 = *(MEMORY[0x1E6960CC0] + 8);
      v14 = *(MEMORY[0x1E6960CC0] + 16);
    }

    v15 = [v9 player];
    if (v15 && (v16 = v15, v17 = [v15 currentItem], v16, v17))
    {
      [v17 duration];
      v18 = v27;
      v19 = v28;
      v20 = v29;
    }

    else
    {
      v18 = *MEMORY[0x1E6960CC0];
      v19 = *(MEMORY[0x1E6960CC0] + 8);
      v20 = *(MEMORY[0x1E6960CC0] + 16);
    }

    [v9 setPlayer_];
    v21 = sub_1E65E60A8();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    sub_1E65E6058();
    v22 = v1;
    v23 = sub_1E65E6048();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    v24[5] = v12;
    v24[6] = v13;
    v24[7] = v14;
    v24[8] = v18;
    v24[9] = v19;
    v24[10] = v20;
    sub_1E64B80F8(0, 0, v7, &unk_1E660C718, v24);
  }
}

uint64_t sub_1E65817CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1E65E6058();
  v8[9] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6581878, v10, v9);
}

uint64_t sub_1E6581878()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E65818A4, v1, 0);
}

uint64_t sub_1E65818A4()
{
  v1 = v0[12];
  sub_1E6579FD4(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1E6581914, v2, v3);
}

uint64_t sub_1E6581914()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6581974(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E65817CC(a1, v14, v4, v5, v6, v7, v8, v10);
}

Swift::Void __swiftcall StandardPlayerViewController.togglePlaybackTapped()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) player];
  v3 = v1;
  if (v1 && ([v1 rate], v1 = v3, v2 == 0.0))
  {
    [v3 play];
  }

  else
  {
    [v1 pause];
  }
}

void sub_1E6581BDC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id StandardPlayerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E65E5C48();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StandardPlayerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StandardPlayerViewController.configurePlayerItem(_:)(AVPlayerItem a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v3 = [objc_allocWithZone(MEMORY[0x1E6988098]) initWithPlayerItem_];
  [v2 setPlayer_];
}

Swift::Void __swiftcall StandardPlayerViewController.beginPlayback()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) player];
  [v1 play];
}

unint64_t sub_1E6581FAC()
{
  result = qword_1ED07B5E0;
  if (!qword_1ED07B5E0)
  {
    type metadata accessor for StandardPlayerPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B5E0);
  }

  return result;
}

uint64_t sub_1E6582004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6579AEC(a1, v4, v5, v6);
}

uint64_t sub_1E65820BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582188, v1, 0);
}

uint64_t sub_1E6582188()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB48();

  return MEMORY[0x1EEE6DFA0](sub_1E6582224, 0, 0);
}

uint64_t sub_1E6582224()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 28;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658838C, v2, v5);
}

uint64_t sub_1E6582348(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582414, v1, 0);
}

uint64_t sub_1E6582414()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB28();

  return MEMORY[0x1EEE6DFA0](sub_1E65824B0, 0, 0);
}

uint64_t sub_1E65824B0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 32;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658838C, v2, v5);
}

uint64_t sub_1E65825D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65826A0, v1, 0);
}

uint64_t sub_1E65826A0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB68();

  return MEMORY[0x1EEE6DFA0](sub_1E658273C, 0, 0);
}

uint64_t sub_1E658273C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 36;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658838C, v2, v5);
}

uint64_t sub_1E6582860(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658292C, v1, 0);
}

uint64_t sub_1E658292C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB38();

  return MEMORY[0x1EEE6DFA0](sub_1E65829C8, 0, 0);
}

uint64_t sub_1E65829C8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 40;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B698, &qword_1E660CA18);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E658810C, v2, v5);
}

uint64_t sub_1E6582AEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582BB8, v1, 0);
}

uint64_t sub_1E6582BB8()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDAC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6582C54, 0, 0);
}

uint64_t sub_1E6582C54()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 44;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E65234C4;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v5);
}

uint64_t sub_1E6582D68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6582E34, v1, 0);
}

uint64_t sub_1E6582E34()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDAE8();

  return MEMORY[0x1EEE6DFA0](sub_1E6582ED0, 0, 0);
}

uint64_t sub_1E6582ED0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 48;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E6541C10;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v5);
}

uint64_t sub_1E6582FE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65830B0, v1, 0);
}

uint64_t sub_1E65830B0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDAD8();

  return MEMORY[0x1EEE6DFA0](sub_1E658314C, 0, 0);
}

uint64_t sub_1E658314C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E6541C10;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v5);
}

uint64_t sub_1E6583260(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658332C, v1, 0);
}

uint64_t sub_1E658332C()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB88();

  return MEMORY[0x1EEE6DFA0](sub_1E65833C8, 0, 0);
}

uint64_t sub_1E65833C8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 56;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C68C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588388, v2, v5);
}

uint64_t sub_1E65834D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65835A4, v1, 0);
}

uint64_t sub_1E65835A4()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB98();

  return MEMORY[0x1EEE6DFA0](sub_1E6583640, 0, 0);
}

uint64_t sub_1E6583640()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E656FF20;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588388, v2, v5);
}

uint64_t sub_1E6583750(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6583770, 0, 0);
}

uint64_t sub_1E6583770()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DDE48();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E65837D4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65838A0, v0, 0);
}

uint64_t sub_1E65838A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDBA8();

  return MEMORY[0x1EEE6DFA0](sub_1E6583934, 0, 0);
}

uint64_t sub_1E6583934()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 68;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v4 = v0;
  v4[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588380, v2, v5);
}

uint64_t sub_1E6583A58(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6583B24, v1, 0);
}

uint64_t sub_1E6583B24()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB78();

  return MEMORY[0x1EEE6DFA0](sub_1E6583BC0, 0, 0);
}

uint64_t sub_1E6583BC0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 72;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588380, v2, v5);
}

uint64_t sub_1E6583CE4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6583DB0, v0, 0);
}

uint64_t sub_1E6583DB0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDBB8();

  return MEMORY[0x1EEE6DFA0](sub_1E6583E44, 0, 0);
}

uint64_t sub_1E6583E44()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E652302C;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588384, v2, v5);
}

uint64_t sub_1E6583F58(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584024, v1, 0);
}

uint64_t sub_1E6584024()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDBC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65840C0, 0, 0);
}

uint64_t sub_1E65840C0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E6541C10;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65880F4, v2, v5);
}

uint64_t sub_1E65841D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65842A0, v1, 0);
}

uint64_t sub_1E65842A0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB58();

  return MEMORY[0x1EEE6DFA0](sub_1E658433C, 0, 0);
}

uint64_t sub_1E658433C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 84;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v4 = v0;
  v4[1] = sub_1E6541C10;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588380, v2, v5);
}

uint64_t sub_1E6584460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1E65DAEB8();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v4[16] = *(v8 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584580, a4, 0);
}

uint64_t sub_1E6584580()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v48 = *(v0 + 120);
  v42 = *(v0 + 80);

  v10 = 0;
  v40 = v8;
  v41 = v3;
  while (v7)
  {
LABEL_11:
    v16 = *(v0 + 88);
    v17 = *(v48 + 16);
    v17(*(v0 + 144), *(v42 + 48) + *(v48 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), *(v0 + 112));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v18 = *(v0 + 88);
      swift_task_reportUnexpectedExecutor();
    }

    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v43 = v22;
    v44 = v19;
    v45 = *(v0 + 128);
    v46 = *(v0 + 88);
    v47 = *(v0 + 96);
    v23 = sub_1E65E60A8();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v17(v19, v20, v22);
    v25 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v26 = swift_allocObject();
    v26[2] = 0;
    v27 = v26 + 2;
    v26[3] = 0;
    v26[4] = v46;
    (*(v48 + 32))(v26 + v25, v44, v43);
    sub_1E5DF4C84(v21, v47);
    LODWORD(v25) = (*(v24 + 48))(v47, 1, v23);

    v28 = *(v0 + 96);
    if (v25 == 1)
    {
      sub_1E5DF4CF4(*(v0 + 96));
      if (*v27)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v24 + 8))(v28, v23);
      if (*v27)
      {
LABEL_15:
        v29 = v26[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v30 = sub_1E65E5FC8();
        v32 = v31;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v30 = 0;
    v32 = 0;
LABEL_18:
    v33 = **(v0 + 72);

    if (v32 | v30)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v30;
      *(v0 + 40) = v32;
    }

    else
    {
      v11 = 0;
    }

    v7 &= v7 - 1;
    v12 = *(v0 + 144);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v33;
    swift_task_create();

    sub_1E5DF4CF4(v14);
    result = (*(v48 + 8))(v12, v13);
    v8 = v40;
    v3 = v41;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v10;
    if (v7)
    {
      v10 = v15;
      goto LABEL_11;
    }
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 144);
  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v38 = *(v0 + 80);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1E65849A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584A74, 0, 0);
}

uint64_t sub_1E6584A74()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB18();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *(v5 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 91;
  *(v5 + 48) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E6584BBC;
  v8 = v0[2];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6588388, v5, v9);
}

uint64_t sub_1E6584BBC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB32D0, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E6584D40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6584E0C, v1, 0);
}

uint64_t sub_1E6584E0C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB58();

  return MEMORY[0x1EEE6DFA0](sub_1E6584EA8, 0, 0);
}

uint64_t sub_1E6584EA8()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 98;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  *v4 = v0;
  v4[1] = sub_1E6584FCC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6587E98, v2, v5);
}

uint64_t sub_1E6584FCC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {

    v6 = sub_1E6523658;
    v7 = 0;
  }

  else
  {
    v9 = v2[6];
    v8 = v2[7];
    v11 = v2[4];
    v10 = v2[5];
    v2[11] = v2[2];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1E6585140;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1E6585140()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_1E6587EB0();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6585238;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v6, v7, v8, v2, v3, &unk_1E660C9E0, v4, v9);
}

void sub_1E6585238()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[11];
    v6 = v2[12];
    v7 = v2[4];

    MEMORY[0x1EEE6DFA0](sub_1E654138C, v7, 0);
  }
}

uint64_t sub_1E6585380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1E65DAEB8();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v4[16] = *(v8 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65854A0, a4, 0);
}

uint64_t sub_1E65854A0()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v48 = *(v0 + 120);
  v42 = *(v0 + 80);

  v10 = 0;
  v40 = v8;
  v41 = v3;
  while (v7)
  {
LABEL_11:
    v16 = *(v0 + 88);
    v17 = *(v48 + 16);
    v17(*(v0 + 144), *(v42 + 48) + *(v48 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), *(v0 + 112));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v18 = *(v0 + 88);
      swift_task_reportUnexpectedExecutor();
    }

    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v43 = v22;
    v44 = v19;
    v45 = *(v0 + 128);
    v46 = *(v0 + 88);
    v47 = *(v0 + 96);
    v23 = sub_1E65E60A8();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v17(v19, v20, v22);
    v25 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v26 = swift_allocObject();
    v26[2] = 0;
    v27 = v26 + 2;
    v26[3] = 0;
    v26[4] = v46;
    (*(v48 + 32))(v26 + v25, v44, v43);
    sub_1E5DF4C84(v21, v47);
    LODWORD(v25) = (*(v24 + 48))(v47, 1, v23);

    v28 = *(v0 + 96);
    if (v25 == 1)
    {
      sub_1E5DF4CF4(*(v0 + 96));
      if (*v27)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v24 + 8))(v28, v23);
      if (*v27)
      {
LABEL_15:
        v29 = v26[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v30 = sub_1E65E5FC8();
        v32 = v31;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v30 = 0;
    v32 = 0;
LABEL_18:
    v33 = **(v0 + 72);

    if (v32 | v30)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v30;
      *(v0 + 40) = v32;
    }

    else
    {
      v11 = 0;
    }

    v7 &= v7 - 1;
    v12 = *(v0 + 144);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v33;
    swift_task_create();

    sub_1E5DF4CF4(v14);
    result = (*(v48 + 8))(v12, v13);
    v8 = v40;
    v3 = v41;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v10;
    if (v7)
    {
      v10 = v15;
      goto LABEL_11;
    }
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 144);
  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v38 = *(v0 + 80);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1E65858C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6585994, 0, 0);
}

uint64_t sub_1E6585994()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DDB08();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *(v5 + 16) = "BookmarkService/LiveBookmarkService.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 102;
  *(v5 + 48) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E6585ADC;
  v8 = v0[2];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65880B0, v5, v9);
}

uint64_t sub_1E6585ADC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E658837C, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E6585C60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6585C80, 0, 0);
}

uint64_t sub_1E6585C80()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DDDC8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6585CE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65820BC(a1);
}

uint64_t sub_1E6585D7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582348(a1);
}

uint64_t sub_1E6585E14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E65825D4(a1);
}

uint64_t sub_1E6585EAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582860(a1);
}

uint64_t sub_1E6585F44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582AEC(a1);
}

uint64_t sub_1E6585FDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582D68(a1);
}

uint64_t sub_1E6586074(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6582FE4(a1);
}

uint64_t sub_1E658610C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6583260(a1);
}

uint64_t sub_1E65861A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65834D8(a1);
}

uint64_t sub_1E658623C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6586258, a2, 0);
}

uint64_t sub_1E6586258()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  swift_getObjectType();
  sub_1E65DDDD8();
  sub_1E65D8C08();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6586328()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E65837D4();
}

uint64_t sub_1E65863B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6583A58(a1);
}

uint64_t sub_1E6586450()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6583CE4();
}

uint64_t sub_1E65864E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6583F58(a1);
}

uint64_t sub_1E6586578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E65841D4(a1);
}

uint64_t sub_1E6586610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658662C, a2, 0);
}

uint64_t sub_1E658662C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1E6587EB0();
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1E6586720;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v6, v7, v8, v1, v3, &unk_1E660CA38, v4, v9);
}

void sub_1E6586720()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);

    MEMORY[0x1EEE6DFA0](sub_1E5E1CF6C, v6, 0);
  }
}

uint64_t sub_1E658685C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6584D40(a1);
}

uint64_t sub_1E65868F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6586910, a2, 0);
}

uint64_t sub_1E6586910()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  swift_getObjectType();
  sub_1E65DDE58();
  sub_1E65D8D78();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65869E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6A0, &qword_1E660CA20);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B690, &qword_1E660CA10);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6588124;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E6586DBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B688, &qword_1E660CA08);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B678, &qword_1E660C9C8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65880E0;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E6587198(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_1E65E68B8();
    v27 = sub_1E5DFD4B0(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x1E694F1C0](v28, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65873F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585CE4(a1);
}

uint64_t sub_1E6587488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585D7C(a1);
}

uint64_t sub_1E6587520(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E6585E14(a1);
}

uint64_t sub_1E65875B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585EAC(a1);
}

uint64_t sub_1E6587650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585F44(a1);
}

uint64_t sub_1E65876E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6585FDC(a1);
}

uint64_t sub_1E6587780(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6586074(a1);
}

uint64_t sub_1E6587818(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658610C(a1);
}

uint64_t sub_1E65878B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65861A4(a1);
}

uint64_t sub_1E6587948(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E658623C(a1, v1);
}

uint64_t sub_1E65879E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6586328();
}

uint64_t sub_1E6587A74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65863B8(a1);
}

uint64_t sub_1E6587B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6586450();
}

uint64_t sub_1E6587B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E65864E0(a1);
}

uint64_t sub_1E6587C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6586578(a1);
}

uint64_t sub_1E6587CCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6586610(a1, v1);
}

uint64_t sub_1E6587D64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658685C(a1);
}

uint64_t sub_1E6587DFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65868F4(a1, v1);
}

unint64_t sub_1E6587EB0()
{
  result = qword_1ED07B680;
  if (!qword_1ED07B680)
  {
    type metadata accessor for LiveBookmarkService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B680);
  }

  return result;
}

uint64_t sub_1E6587F04(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6585380(a1, a2, v7, v6);
}

uint64_t sub_1E6587FB8(uint64_t a1)
{
  v4 = *(sub_1E65DAEB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E65858C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E65881D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6584460(a1, a2, v7, v6);
}

uint64_t sub_1E6588284(uint64_t a1)
{
  v4 = *(sub_1E65DAEB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E65849A4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E6588390(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65DADD8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658845C, v1, 0);
}

uint64_t sub_1E658845C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);

  v39 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = v0[8];
    v6 = v0[5];
    v7 = v6 + 56;
    v36 = (v5 + 32);
    v37 = MEMORY[0x1E69E7CC0];
    v38 = result;
    while (v4 < *(result + 16))
    {
      v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v10 = *(v5 + 72);
      (*(v5 + 16))(v0[10], result + v40 + v10 * v4, v0[7]);
      v11 = sub_1E65DADA8();
      v13 = v12;
      if (*(v6 + 16) && (v14 = v11, v15 = *(v6 + 40), sub_1E65E6D28(), sub_1E65E5D78(), v16 = sub_1E65E6D78(), v17 = -1 << *(v6 + 32), v18 = v16 & ~v17, ((*(v7 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = (*(v6 + 48) + 16 * v18);
          v21 = *v20 == v14 && v20[1] == v13;
          if (v21 || (sub_1E65E6C18() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v7 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v23 = v0[9];
        v22 = v0[10];
        v24 = v0[7];

        v25 = v24;
        v26 = *v36;
        (*v36)(v23, v22, v25);
        v27 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E658DFCC(0, *(v37 + 16) + 1, 1);
          v27 = v37;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1E658DFCC(v28 > 1, v29 + 1, 1);
          v27 = v37;
        }

        v30 = v0[9];
        v31 = v0[7];
        *(v27 + 16) = v29 + 1;
        v37 = v27;
        v26(v27 + v40 + v29 * v10, v30, v31);
      }

      else
      {
LABEL_3:
        v8 = v0[10];
        v9 = v0[7];

        (*(v5 + 8))(v8, v9);
      }

      ++v4;
      result = v38;
      if (v4 == v39)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v33 = v0[9];
    v32 = v0[10];

    v34 = sub_1E658ECEC(v37);

    v35 = v0[1];

    return v35(v34);
  }

  return result;
}

uint64_t sub_1E6588774(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1E65DADD8();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6588840, v1, 0);
}

uint64_t sub_1E6588840()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);

  v37 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v40 = v6 + 56;
    v34 = (v5 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = result;
    while (v4 < *(result + 16))
    {
      v39 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v38 = *(v5 + 72);
      (*(v5 + 16))(*(v0 + 104), result + v39 + v38 * v4, *(v0 + 80));
      v7 = sub_1E65DAD78();
      v9 = v8;
      *(v0 + 40) = v7;
      *(v0 + 48) = v8;
      v11 = v10 & 1;
      *(v0 + 56) = v10 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
      sub_1E65D7FB8();
      sub_1E5FEE4CC(v7, v9, v11);
      if (*(v0 + 57) == 9)
      {
        goto LABEL_3;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }

      v12 = *(v6 + 40);
      sub_1E65E6D28();
      sub_1E65D94E8();
      sub_1E65E5D78();

      v13 = sub_1E65E6D78();
      v14 = -1 << *(v6 + 32);
      v15 = v13 & ~v14;
      if ((*(v40 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        while (1)
        {
          v17 = *(*(v6 + 48) + v15);
          v18 = sub_1E65D94E8();
          v20 = v19;
          if (v18 == sub_1E65D94E8() && v20 == v21)
          {
            break;
          }

          v23 = sub_1E65E6C18();

          if (v23)
          {
            goto LABEL_18;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v40 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_18:
        v24 = *v34;
        (*v34)(*(v0 + 96), *(v0 + 104), *(v0 + 80));
        v25 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E658DFCC(0, *(v35 + 16) + 1, 1);
          v25 = v35;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1E658DFCC(v26 > 1, v27 + 1, 1);
          v25 = v35;
        }

        v28 = *(v0 + 96);
        v29 = *(v0 + 80);
        *(v25 + 16) = v27 + 1;
        v35 = v25;
        v24(v25 + v39 + v27 * v38, v28, v29);
      }

      else
      {
LABEL_3:
        (*(v5 + 8))(*(v0 + 104), *(v0 + 80));
      }

      ++v4;
      result = v36;
      if (v4 == v37)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);

    v32 = sub_1E658ECEC(v35);

    v33 = *(v0 + 8);

    return v33(v32);
  }

  return result;
}

uint64_t sub_1E6588BE0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65DADD8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6588CAC, v1, 0);
}

uint64_t sub_1E6588CAC()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[5];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[5] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v30 = v0[5];

  v12 = 0;
  v31 = v2;
  v32 = v1;
  v29 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = v0[6];
        v15 = *(v1 + 72);
        v16 = *(v1 + 16);
        v16(v0[10], *(v30 + 48) + v15 * (__clz(__rbit64(v9)) | (v12 << 6)), v0[7]);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v17 = v0[6];
          swift_task_reportUnexpectedExecutor();
        }

        v16(v0[9], v0[10], v0[7]);
        swift_beginAccess();
        v18 = *(v2 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 112) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1E658E35C(0, v18[2] + 1, 1, v18);
          *(v2 + 112) = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1E658E35C(v20 > 1, v21 + 1, 1, v18);
        }

        v9 &= v9 - 1;
        v22 = v0[9];
        v23 = v0[10];
        v24 = v0[7];
        v18[2] = v21 + 1;
        v1 = v32;
        (*(v32 + 32))(v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v21 * v15, v22, v24);
        v2 = v31;
        *(v31 + 112) = v18;
        swift_endAccess();
        result = (*(v32 + 8))(v23, v24);
        v5 = v29;
      }

      while (v9);
    }
  }

  v25 = v0[9];
  v26 = v0[10];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1E6588F44(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65DADD8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658901C, v1, 0);
}

uint64_t sub_1E658901C()
{
  v1 = v0[6];
  swift_beginAccess();
  v32 = v1;
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);

  v35 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = v0[8];
    v41 = v0[5];
    v40 = v41 + 56;
    v7 = (v6 + 8);
    v8 = MEMORY[0x1E69E7CC0];
    v33 = v6;
    v34 = v2;
    v36 = (v6 + 32);
    while (v5 < *(v2 + 16))
    {
      v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = v8;
      v9 = *(v33 + 72);
      v39 = v5;
      v10 = *(v33 + 16);
      v10(v0[11], v2 + v37 + v9 * v5, v0[7]);
      if (*(v41 + 16) && (v11 = v0[11], v12 = v0[7], v13 = *(v41 + 40), sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]), v14 = sub_1E65E5B38(), v15 = -1 << *(v41 + 32), v16 = v14 & ~v15, ((*(v40 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = v0[10];
          v19 = v0[7];
          v10(v18, *(v41 + 48) + v16 * v9, v19);
          sub_1E658F778(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);
          v20 = sub_1E65E5B98();
          v21 = *v7;
          (*v7)(v18, v19);
          if (v20)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v40 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        result = v21(v0[11], v0[7]);
        v8 = v38;
      }

      else
      {
LABEL_11:
        v22 = *v36;
        (*v36)(v0[9], v0[11], v0[7]);
        v8 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E658DFCC(0, *(v38 + 16) + 1, 1);
          v8 = v38;
        }

        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1E658DFCC(v23 > 1, v24 + 1, 1);
          v8 = v38;
        }

        v25 = v0[9];
        v26 = v0[7];
        *(v8 + 16) = v24 + 1;
        result = v22(v8 + v37 + v24 * v9, v25, v26);
      }

      v5 = v39 + 1;
      v2 = v34;
      if (v39 + 1 == v35)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[9];

    v30 = *(v32 + 112);
    *(v32 + 112) = v8;

    v31 = v0[1];

    return v31();
  }

  return result;
}

uint64_t sub_1E65893B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v40 - v5;
  v60 = sub_1E65DADD8();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v54 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E65DAEB8();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v53);
  v52 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v40 - v13;
  v15 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v40[1] = v1;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1E658E010(0, v15, 0);
    v61 = v62;
    v17 = a1 + 56;
    v18 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v19 = result;
    v20 = 0;
    v48 = (v9 + 8);
    v49 = v6 + 16;
    v50 = v9;
    v51 = v6;
    v46 = v9 + 32;
    v47 = v6 + 8;
    v41 = a1 + 64;
    v42 = v15;
    v43 = a1 + 56;
    v44 = a1;
    v45 = v14;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_22;
      }

      v58 = 1 << v19;
      v59 = v19 >> 6;
      v22 = *(a1 + 36);
      v56 = v20;
      v57 = v22;
      v23 = v51;
      v24 = v54;
      (*(v51 + 16))(v54, *(a1 + 48) + *(v51 + 72) * v19, v60);
      v25 = v52;
      sub_1E65DAEA8();
      sub_1E65DADA8();
      v26 = v55;
      sub_1E65DAD88();
      v27 = sub_1E65D76A8();
      (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
      sub_1E65DAE98();

      sub_1E62E3040(v26);
      v28 = v53;
      (*v48)(v25, v53);
      (*(v23 + 8))(v24, v60);
      v29 = v61;
      v62 = v61;
      v31 = *(v61 + 16);
      v30 = *(v61 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1E658E010(v30 > 1, v31 + 1, 1);
        v29 = v62;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v61 = v29;
      result = (*(v50 + 32))(v29 + v32 + *(v50 + 72) * v31, v45, v28);
      a1 = v44;
      v21 = 1 << *(v44 + 32);
      if (v19 >= v21)
      {
        goto LABEL_23;
      }

      v17 = v43;
      v33 = *(v43 + 8 * v59);
      if ((v33 & v58) == 0)
      {
        goto LABEL_24;
      }

      if (v57 != *(v44 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v19 & 0x3F));
      if (v34)
      {
        v21 = __clz(__rbit64(v34)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v59 << 6;
        v36 = v59 + 1;
        v37 = (v41 + 8 * v59);
        while (v36 < (v21 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1E5F87098(v19, v57, 0);
            v21 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v19, v57, 0);
      }

LABEL_4:
      v20 = v56 + 1;
      v19 = v21;
      if (v56 + 1 == v42)
      {
        return v61;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E65898A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v32 - v2;
  v4 = sub_1E65DADD8();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v35 = 8 * v10;
  v12 = swift_allocObject();
  v36 = v12;
  *(v12 + 16) = xmmword_1E660CA60;
  v13 = v12 + v11;
  v14 = sub_1E65DADC8();
  sub_1E658C184(v14, 0.0, 10000.0);
  sub_1E65D7538();
  v15 = sub_1E65D76A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v3, 0, 1, v15);
  v33 = v17;
  v38 = v13;
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v19 = *(v6 + 8);
  v19(v9, v4);
  v20 = sub_1E65DADC8();
  sub_1E658C184(v20, 0.0, 10000.0);
  sub_1E65D7538();
  v32 = v15;
  v17(v3, 0, 1, v15);
  v40 = v10;
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v39 = v6 + 8;
  v19(v9, v4);
  v21 = sub_1E65DADC8();
  sub_1E658C184(v21, 0.0, 10000.0);
  sub_1E65D7538();
  v34 = v18;
  v22 = v33;
  v33(v3, 0, 1, v15);
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v41 = v4;
  v19(v9, v4);
  v23 = sub_1E65DADC8();
  sub_1E658C184(v23, 0.0, 10000.0);
  sub_1E65D7538();
  v24 = v32;
  v22(v3, 0, 1, v32);
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v19(v9, v41);
  v25 = sub_1E65DADC8();
  sub_1E658C184(v25, 0.0, 10000.0);
  sub_1E65D7538();
  v22(v3, 0, 1, v24);
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v26 = v41;
  v19(v9, v41);
  v27 = sub_1E65DADC8();
  sub_1E658C184(v27, 0.0, 10000.0);
  sub_1E65D7538();
  v22(v3, 0, 1, v24);
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v19(v9, v26);
  v28 = sub_1E65DADC8();
  sub_1E658C184(v28, 0.0, 10000.0);
  sub_1E65D7538();
  v22(v3, 0, 1, v24);
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v29 = v41;
  v19(v9, v41);
  v30 = sub_1E65DADC8();
  sub_1E658C184(v30, 0.0, 10000.0);
  sub_1E65D7538();
  v22(v3, 0, 1, v24);
  sub_1E65DADB8();
  sub_1E62E3040(v3);
  v19(v9, v29);
  result = v37;
  *(v37 + 112) = v36;
  return result;
}

uint64_t static BookmarkService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorBookmarkService();
  v2 = swift_allocObject();
  sub_1E65898A0();
  *a1 = &unk_1E660CA78;
  a1[1] = v2;
  a1[2] = &unk_1E660CA88;
  a1[3] = v2;
  a1[4] = &unk_1E660CA98;
  a1[5] = v2;
  a1[6] = &unk_1E660CAA8;
  a1[7] = v2;
  a1[8] = &unk_1E660CAB8;
  a1[9] = v2;
  a1[10] = &unk_1E660CAC8;
  a1[11] = v2;
  a1[12] = &unk_1E660CAD8;
  a1[13] = v2;
  a1[14] = &unk_1E660CAE8;
  a1[15] = v2;
  a1[16] = &unk_1E660CAF8;
  a1[17] = v2;
  a1[18] = &unk_1E660CB08;
  a1[19] = v2;
  a1[20] = &unk_1E660CB18;
  a1[21] = v2;
  a1[22] = &unk_1E660CB28;
  a1[23] = v2;
  a1[24] = &unk_1E660CB38;
  a1[25] = v2;
  a1[26] = &unk_1E660CB48;
  a1[27] = v2;
  a1[28] = &unk_1E660CB58;
  a1[29] = v2;
  a1[30] = &unk_1E660CB68;
  a1[31] = v2;
  a1[32] = &unk_1E660CB78;
  a1[33] = v2;
  a1[34] = &unk_1E660CB88;
  a1[35] = v2;
  return swift_retain_n();
}

uint64_t sub_1E658A054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6588390(a1);
}

uint64_t sub_1E658A0EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E658A054(a1);
}

uint64_t sub_1E658A184(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658A1A0, a2, 0);
}

uint64_t sub_1E658A1A0()
{
  v7 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v6 = MEMORY[0x1E69E7CC0];

  sub_1E658E8F8(v1, &v6, v2);

  v3 = sub_1E658ECEC(v6);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1E658A254(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658A184(a1, v1);
}

uint64_t sub_1E658A2EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E6539828();
}

uint64_t sub_1E658A384(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E6588774(a1);
}

uint64_t sub_1E658A41C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E658A384(a1);
}

uint64_t sub_1E658A4B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658A4D0, a2, 0);
}

uint64_t sub_1E658A4D0()
{
  v8 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v7 = MEMORY[0x1E69E7CC0];

  sub_1E658E8F8(v1, &v7, v2);

  v3 = sub_1E658ECEC(v7);

  v4 = *(v3 + 16);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E658A590(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658A4B4(a1, v1);
}

uint64_t sub_1E658A644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E658A628();
}

uint64_t sub_1E658A6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E658A778;

  return sub_1E6588774(a1);
}

uint64_t sub_1E658A778(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 16);
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E658A8C4, v9, 0);
  }
}

uint64_t sub_1E658A8C4()
{
  v1 = *(*(v0 + 32) + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E658A930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658A6DC(a1, v1);
}

uint64_t sub_1E658A9C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6588BE0(a1);
}

uint64_t sub_1E658AA60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E658A9C8(a1);
}

uint64_t sub_1E658AAF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6588F44(a1);
}

uint64_t sub_1E658AB90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E658AAF8(a1);
}

uint64_t sub_1E658AC28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6C0, &qword_1E660CC48);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658ACF8, a2, 0);
}

uint64_t sub_1E658ACF8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D8C08();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E658ADCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E658AC28(a1, v1);
}

uint64_t sub_1E658AE88()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB528);
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1E658AF30;
  v3 = v0[2];

  return sub_1E6588774(v1);
}

uint64_t sub_1E658AF30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1E658F7C8;
  }

  else
  {
    v10 = v4[2];
    v9 = v4[3];

    v4[6] = a1;
    v8 = sub_1E658F7C4;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E658B06C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E658AE68(v0);
}

uint64_t sub_1E658B118()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB550);
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1E658B1C0;
  v3 = v0[2];

  return sub_1E6588774(v1);
}

uint64_t sub_1E658B1C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1E658B390;
  }

  else
  {
    v10 = v4[2];
    v9 = v4[3];

    v4[6] = a1;
    v8 = sub_1E658B2FC;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E658B2FC()
{
  v1 = v0[5];
  v2 = sub_1E65893B0(v0[6]);

  v3 = sub_1E658EE88(v2);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1E658B390()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1E658B3F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658B0FC(a1, v1);
}

uint64_t sub_1E658B4AC()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB578);
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1E658B554;
  v3 = v0[2];

  return sub_1E6588774(v1);
}

uint64_t sub_1E658B554(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1E658F7C8;
  }

  else
  {
    v10 = v4[2];
    v9 = v4[3];

    v4[6] = a1;
    v8 = sub_1E658F7C0;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E658B690()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E658B48C(v0);
}

uint64_t sub_1E658B73C()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB5A0);
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1E658B7E4;
  v3 = v0[2];

  return sub_1E6588774(v1);
}

uint64_t sub_1E658B7E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1E658F7C8;
  }

  else
  {
    v10 = v4[2];
    v9 = v4[3];

    v4[6] = a1;
    v8 = sub_1E658B920;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E658B920()
{
  v1 = v0[5];
  v2 = sub_1E65893B0(v0[6]);

  v3 = sub_1E658EE88(v2);

  v4 = *(v3 + 16);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E658B9C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658B720(a1, v1);
}

uint64_t sub_1E658BA58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E658BA74, a2, 0);
}

uint64_t sub_1E658BA74()
{
  v1 = sub_1E5F9B84C(&unk_1F5FCB5C8);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1E658BB1C;
  v3 = v0[3];

  return sub_1E6588774(v1);
}

uint64_t sub_1E658BB1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1E658BD18;
  }

  else
  {
    v10 = v4[3];
    v9 = v4[4];

    v4[7] = a1;
    v8 = sub_1E658BC58;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E658BC58()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1E65893B0(v0[7]);

  v4 = sub_1E658EE88(v3);

  v5 = sub_1E658F328(v4, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E658BD18()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1E658BD7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E658BA58(a1, v1);
}

uint64_t sub_1E658BE14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E658BEAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E658BF44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6A8, &qword_1E660CC20);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E658C014, a2, 0);
}

uint64_t sub_1E658C014()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D8D78();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E658C0E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E658BF44(a1, v1);
}

uint64_t sub_1E658C184(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1E694F1E0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1E658C184(v6, a2, a3);
  }

  return result;
}

unint64_t sub_1E658C228(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E65E6D28();
  sub_1E65D89A8();
  sub_1E65E5D78();

  v4 = sub_1E65E6D78();

  return sub_1E658C2B0(a1, v4);
}

unint64_t sub_1E658C2B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = sub_1E65D89A8();
      v9 = v8;
      if (v7 == sub_1E65D89A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E65E6C18();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1E658C3B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
      v7 = *(sub_1E65DADD8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_1E65DADD8() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E658C554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65DADD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
  v36 = a2;
  v13 = sub_1E65E5B38();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1E658F778(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);
      v23 = sub_1E65E5B98();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1E658D1CC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E658C834(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65DAEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370]);
  v36 = a2;
  v13 = sub_1E65E5B38();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1E658F778(&qword_1EE2D6FA8, MEMORY[0x1E69CD370]);
      v23 = sub_1E65E5B98();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1E658D494(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E658CB14(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65DADD8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
  result = sub_1E65E6868();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
      result = sub_1E65E5B38();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1E658CE70(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65DAEB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6B0, &qword_1E660CC28);
  result = sub_1E65E6868();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370]);
      result = sub_1E65E5B38();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1E658D1CC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65DADD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E658CB14(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E658D75C(MEMORY[0x1E69CD2D8], &qword_1ED071FD8, &qword_1E65EA458);
      goto LABEL_12;
    }

    sub_1E658D994(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
  v15 = sub_1E65E5B38();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1E658F778(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);
      v23 = sub_1E65E5B98();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

uint64_t sub_1E658D494(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65DAEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E658CE70(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E658D75C(MEMORY[0x1E69CD370], &qword_1ED07B6B0, &qword_1E660CC28);
      goto LABEL_12;
    }

    sub_1E658DCB0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370]);
  v15 = sub_1E65E5B38();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1E658F778(&qword_1EE2D6FA8, MEMORY[0x1E69CD370]);
      v23 = sub_1E65E5B98();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E658D75C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1E65E6858();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_1E658D994(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65DADD8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
  v10 = sub_1E65E6868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
      result = sub_1E65E5B38();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1E658DCB0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65DAEB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6B0, &qword_1E660CC28);
  v10 = sub_1E65E6868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370]);
      result = sub_1E65E5B38();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

size_t sub_1E658DFCC(size_t a1, int64_t a2, char a3)
{
  result = sub_1E658E054(a1, a2, a3, *v3, &qword_1ED073228, &qword_1E65ED080, MEMORY[0x1E69CD2D8]);
  *v3 = result;
  return result;
}

size_t sub_1E658E010(size_t a1, int64_t a2, char a3)
{
  result = sub_1E658E054(a1, a2, a3, *v3, &qword_1ED07B6B8, &qword_1E660CC38, MEMORY[0x1E69CD370]);
  *v3 = result;
  return result;
}

size_t sub_1E658E054(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_1E658E230(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1E658E35C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1E65DADD8();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_1E658E35C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v10 = *(sub_1E65DADD8() - 8);
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
  v15 = *(sub_1E65DADD8() - 8);
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

unint64_t *sub_1E658E534(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E658F024(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E658E5D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65DAEB8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6B0, &qword_1E660CC28);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E658F778(&qword_1ED076258, MEMORY[0x1E69CD370]);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1E658E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);

  result = swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  v37 = a3;
  while (v7)
  {
LABEL_11:
    v13 = *(*(a1 + 48) + (__clz(__rbit64(v7)) | (v9 << 6)));
    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v14 = *(a3 + 112);
    v15 = *(v14 + 16);
    if (v15 < 3)
    {
      goto LABEL_29;
    }

    v35 = v13;
    if (v15 == 3)
    {
    }

    else
    {
      v32 = *(sub_1E65DADD8() - 8);
      sub_1E658C3B4(v14, v14 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), 0, 7uLL);
      v14 = v33;
    }

    v36 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
    v16 = sub_1E65DADD8();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    result = swift_allocObject();
    *(result + 16) = xmmword_1E65EA670;
    v20 = *(v37 + 112);
    if (*(v20 + 16) < 4uLL)
    {
      goto LABEL_30;
    }

    v21 = result;
    (*(v17 + 16))(result + v19, v20 + v19 + 3 * v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B6C8, &qword_1E660CC50);
    v22 = sub_1E65E6A28();

    result = sub_1E658C228(3);
    if (v23)
    {
      goto LABEL_27;
    }

    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v22[6] + result) = 3;
    *(v22[7] + 8 * result) = v36;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_28;
    }

    v22[2] = v26;

    result = sub_1E658C228(2);
    if (v27)
    {
      goto LABEL_27;
    }

    *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v22[6] + result) = 2;
    *(v22[7] + 8 * result) = v21;
    v28 = v22[2];
    v25 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v25)
    {
      goto LABEL_28;
    }

    v22[2] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6D0, &qword_1E660CC58);
    swift_arrayDestroy();
    if (v22[2] && (v30 = sub_1E658C228(v35), (v31 & 1) != 0))
    {
      v11 = *(v22[7] + 8 * v30);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v7 &= v7 - 1;

    result = sub_1E658E230(v11);
    a3 = v37;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E658ECEC(uint64_t a1)
{
  v2 = sub_1E65DADD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E658F778(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E658C554(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}