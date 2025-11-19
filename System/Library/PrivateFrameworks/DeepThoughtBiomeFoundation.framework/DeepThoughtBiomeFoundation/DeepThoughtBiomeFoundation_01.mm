unint64_t sub_2486D3788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FB8, &qword_2487340A8);
    v3 = sub_2487317D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2486D8A6C(v4, &v13, &qword_27EEA5FC0, &unk_2487340B0);
      v5 = v13;
      v6 = v14;
      result = sub_2486C94CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2486CD01C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D38BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FB0, &qword_2487340A0);
    v3 = sub_2487317D0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2486C94CC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D39D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F50, &qword_248734048);
    v3 = sub_2487317D0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2486C95D4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D3AAC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F60, &qword_248734058);
  v3 = sub_2487317D0();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2486C95D4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2486C95D4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2486D3BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F58, &qword_248734050);
    v3 = sub_2487317D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2486C94CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D3CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F40, &qword_248734030);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F48, &unk_248734038);
    v9 = sub_2487317D0();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_2486D8A6C(v11, v7, &qword_27EEA5F40, &qword_248734030);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2486C94CC(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_248730970();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2486D3EC0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_2487317D0();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_2486C9590(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_2486C9590(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2486D3FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2487317D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2486C94CC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D40E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F18, &unk_248734720);
    v3 = sub_2487317D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2486C94CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D41E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F10, &unk_248734000);
    v3 = sub_2487317D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2486C94CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2486D430C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2487317D0();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_2486C95D4(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2486D4408(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_2487317D0();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_2486C95D4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_2486C95D4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s26DeepThoughtBiomeFoundation21FeatureExtractorUtilsO16getComponentName07featureJ0SSSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_2486D8A18();
  v4 = sub_248731570();
  if (v4[2] <= 1uLL)
  {

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v7 = sub_248730DF0();
    __swift_project_value_buffer(v7, qword_28150F088);

    v8 = sub_248730DD0();
    v9 = sub_2487313D0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2486D3010(a1, a2, v13);
      _os_log_impl(&dword_2486BF000, v8, v9, "Invalid key name: %s. Unable to infer feature component keys.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1D8100](v11, -1, -1);
      MEMORY[0x24C1D8100](v10, -1, -1);
    }

    return 0;
  }

  else
  {
    v5 = v4[4];
    v6 = v4[5];
  }

  return v5;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC10EmbeddingsC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733760;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000248739270;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  type metadata accessor for FeatureKey();
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000013;
  v2[3] = 0x8000000248739270;
  v2[4] = v1;
  *(inited + 48) = v2;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x8000000248739290;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA5FA0, &unk_248734090);
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000001CLL;
  v4[3] = 0x8000000248739290;
  v4[4] = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD00000000000001DLL;
  *(inited + 88) = 0x80000002487392B0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5AB0, &qword_248733008);
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000001DLL;
  v6[3] = 0x80000002487392B0;
  v6[4] = v5;
  *(inited + 96) = v6;
  *(inited + 104) = 0xD00000000000001FLL;
  *(inited + 112) = 0x80000002487392D0;
  v7 = swift_allocObject();
  v7[2] = 0xD00000000000001FLL;
  v7[3] = 0x80000002487392D0;
  v7[4] = MEMORY[0x277D84D38];
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000002487392F0;
  v8 = swift_allocObject();
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x80000002487392F0;
  v8[4] = MEMORY[0x277D837D0];
  *(inited + 144) = v8;
  v9 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v9;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC3ASRC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733760;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000248739310;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000015;
  v1[3] = 0x8000000248739310;
  v1[4] = MEMORY[0x277D84D38];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000248739330;
  v2 = swift_allocObject();
  v2[2] = 0xD00000000000001ALL;
  v2[3] = 0x8000000248739330;
  v3 = MEMORY[0x277D83B88];
  v2[4] = MEMORY[0x277D83B88];
  *(inited + 72) = v2;
  strcpy((inited + 80), "ASR.phonemes");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  v5 = swift_allocObject();
  strcpy((v5 + 16), "ASR.phonemes");
  *(v5 + 29) = 0;
  *(v5 + 30) = -5120;
  *(v5 + 32) = v4;
  *(inited + 96) = v5;
  *(inited + 104) = 0x74736F702E525341;
  *(inited + 112) = 0xEB000000006E7449;
  v6 = swift_allocObject();
  v6[2] = 0x74736F702E525341;
  v6[3] = 0xEB000000006E7449;
  v6[4] = v4;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000248739350;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000013;
  v7[3] = 0x8000000248739350;
  v7[4] = v3;
  *(inited + 144) = v7;
  v8 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v8;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC4FlowC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000002487367E0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  type metadata accessor for FeatureKey();
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000016;
  v2[3] = 0x80000002487367E0;
  v2[4] = v1;
  *(inited + 48) = v2;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000248736800;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000013;
  v3[3] = 0x8000000248736800;
  v4 = MEMORY[0x277D837D0];
  v3[4] = MEMORY[0x277D837D0];
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000248736820;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000015;
  v5[3] = 0x8000000248736820;
  v5[4] = v1;
  *(inited + 96) = v5;
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x8000000248736840;
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000012;
  v6[3] = 0x8000000248736840;
  v6[4] = v4;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000248736860;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000019;
  v7[3] = 0x8000000248736860;
  v7[4] = v1;
  *(inited + 144) = v7;
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = 0x8000000248736880;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000016;
  v8[3] = 0x8000000248736880;
  v8[4] = v4;
  *(inited + 168) = v8;
  v9 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v9;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC3UEIC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733780;
  *(inited + 32) = 0x636E75702E494555;
  *(inited + 40) = 0xEF70704174754F68;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D837D0];
  v1[2] = 0x636E75702E494555;
  v1[3] = 0xEF70704174754F68;
  v1[4] = v2;
  *(inited + 48) = v1;
  strcpy((inited + 56), "UEI.punchOutUI");
  *(inited + 71) = -18;
  type metadata accessor for SISchemaPunchOutUI(0);
  v4 = v3;
  v5 = swift_allocObject();
  strcpy((v5 + 16), "UEI.punchOutUI");
  *(v5 + 31) = -18;
  *(v5 + 32) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0x507361682E494555;
  *(inited + 88) = 0xEF74754F68636E75;
  v6 = swift_allocObject();
  v6[2] = 0x507361682E494555;
  v6[3] = 0xEF74754F68636E75;
  v6[4] = MEMORY[0x277D839B0];
  *(inited + 96) = v6;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x8000000248739130;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000013;
  v7[3] = 0x8000000248739130;
  v7[4] = v2;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000248739150;
  type metadata accessor for SISchemaUEIRequestStatus(0);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000011;
  v10[3] = 0x8000000248739150;
  v10[4] = v9;
  *(inited + 144) = v10;
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x80000002487390F0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000011;
  v12[3] = 0x80000002487390F0;
  v12[4] = v11;
  *(inited + 168) = v12;
  *(inited + 176) = 0x497461632E494555;
  *(inited + 184) = 0xE900000000000064;
  v13 = swift_allocObject();
  v13[2] = 0x497461632E494555;
  v13[3] = 0xE900000000000064;
  v13[4] = v2;
  *(inited + 192) = v13;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x8000000248739110;
  v14 = swift_allocObject();
  v14[2] = 0xD000000000000015;
  v14[3] = 0x8000000248739110;
  v14[4] = v2;
  *(inited + 216) = v14;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x8000000248739170;
  type metadata accessor for SISchemaInvocationSource(0);
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000014;
  v17[3] = 0x8000000248739170;
  v17[4] = v16;
  *(inited + 240) = v17;
  *(inited + 248) = 0xD000000000000018;
  *(inited + 256) = 0x8000000248739190;
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000018;
  v18[3] = 0x8000000248739190;
  v18[4] = v2;
  *(inited + 264) = v18;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x80000002487391B0;
  v19 = swift_allocObject();
  v19[2] = 0xD000000000000017;
  v19[3] = 0x80000002487391B0;
  v19[4] = v2;
  *(inited + 288) = v19;
  *(inited + 296) = 0xD00000000000001DLL;
  *(inited + 304) = 0x80000002487391D0;
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001DLL;
  v20[3] = 0x80000002487391D0;
  v20[4] = v2;
  *(inited + 312) = v20;
  *(inited + 320) = 0xD00000000000001CLL;
  *(inited + 328) = 0x80000002487391F0;
  v21 = swift_allocObject();
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x80000002487391F0;
  v21[4] = v2;
  *(inited + 336) = v21;
  *(inited + 344) = 0xD000000000000017;
  *(inited + 352) = 0x8000000248738EB0;
  v22 = swift_allocObject();
  v22[2] = 0xD000000000000017;
  v22[3] = 0x8000000248738EB0;
  v22[4] = v2;
  *(inited + 360) = v22;
  v23 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v23;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC3DIMC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733770;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000248739390;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000019;
  v1[3] = 0x8000000248739390;
  v1[4] = MEMORY[0x277D839F8];
  *(inited + 48) = v1;
  strcpy((inited + 56), "DIM.deviceType");
  *(inited + 71) = -18;
  v2 = swift_allocObject();
  strcpy((v2 + 16), "DIM.deviceType");
  *(v2 + 31) = -18;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 32) = MEMORY[0x277D837D0];
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x80000002487393B0;
  type metadata accessor for SISchemaDataSharingOptInState(0);
  v5 = v4;
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000019;
  v6[3] = 0x80000002487393B0;
  v6[4] = v5;
  *(inited + 96) = v6;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x80000002487393D0;
  type metadata accessor for SISchemaLocale(0);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000013;
  v9[3] = 0x80000002487393D0;
  v9[4] = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000002487393F0;
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001BLL;
  v10[3] = 0x80000002487393F0;
  v10[4] = v3;
  *(inited + 144) = v10;
  *(inited + 152) = 0x747379732E4D4944;
  *(inited + 160) = 0xEF646C6975426D65;
  v11 = swift_allocObject();
  v11[2] = 0x747379732E4D4944;
  v11[3] = 0xEF646C6975426D65;
  v11[4] = v3;
  *(inited + 168) = v11;
  v12 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v12;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC3TTSC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733790;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000248739370;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000014;
  v1[3] = 0x8000000248739370;
  v2 = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0x6B6E696C2E535454;
  *(inited + 64) = 0xEA00000000006449;
  v3 = swift_allocObject();
  v3[2] = 0x6B6E696C2E535454;
  v3[3] = 0xEA00000000006449;
  v3[4] = v2;
  *(inited + 72) = v3;
  v4 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v4;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC2MHC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337A0;
  strcpy((inited + 32), "MH.URES.score");
  *(inited + 46) = -4864;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  strcpy((v1 + 16), "MH.URES.score");
  *(v1 + 30) = -4864;
  v2 = MEMORY[0x277D83A90];
  *(v1 + 32) = MEMORY[0x277D83A90];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000248739440;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000011;
  v3[3] = 0x8000000248739440;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x8000000248739460;
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000001BLL;
  v4[3] = 0x8000000248739460;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000248739480;
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001ALL;
  v5[3] = 0x8000000248739480;
  v5[4] = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000023;
  *(inited + 136) = 0x8000000248739410;
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000023;
  v6[3] = 0x8000000248739410;
  v6[4] = MEMORY[0x277D84D38];
  *(inited + 144) = v6;
  *(inited + 152) = 0x72547461732E484DLL;
  *(inited + 160) = 0xEF64657265676769;
  v7 = swift_allocObject();
  v7[2] = 0x72547461732E484DLL;
  v7[3] = 0xEF64657265676769;
  v7[4] = MEMORY[0x277D839B0];
  *(inited + 168) = v7;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000002487394A0;
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000012;
  v10[3] = 0x80000002487394A0;
  v10[4] = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x80000002487394C0;
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ALL;
  v11[3] = 0x80000002487394C0;
  v11[4] = MEMORY[0x277D837D0];
  *(inited + 216) = v11;
  v12 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v12;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC05ValidE0C11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733780;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000002487394E0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000015;
  v1[3] = 0x80000002487394E0;
  v2 = MEMORY[0x277D839B0];
  v1[4] = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x8000000248739500;
  v3 = swift_allocObject();
  v3[2] = 0xD00000000000001ELL;
  v3[3] = 0x8000000248739500;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x8000000248739520;
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000001CLL;
  v4[3] = 0x8000000248739520;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD00000000000001CLL;
  *(inited + 112) = 0x8000000248739540;
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x8000000248739540;
  v5[4] = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x8000000248739560;
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000001ELL;
  v6[3] = 0x8000000248739560;
  v6[4] = v2;
  *(inited + 144) = v6;
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x8000000248739580;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000011;
  v7[3] = 0x8000000248739580;
  v7[4] = v2;
  *(inited + 168) = v7;
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000002487395A0;
  v8 = swift_allocObject();
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x80000002487395A0;
  v8[4] = v2;
  *(inited + 192) = v8;
  *(inited + 200) = 0xD000000000000014;
  *(inited + 208) = 0x80000002487395C0;
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000014;
  v9[3] = 0x80000002487395C0;
  v9[4] = v2;
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000022;
  *(inited + 232) = 0x80000002487395E0;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000022;
  v10[3] = 0x80000002487395E0;
  v10[4] = v2;
  *(inited + 240) = v10;
  *(inited + 248) = 0xD00000000000001FLL;
  *(inited + 256) = 0x8000000248739610;
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001FLL;
  v11[3] = 0x8000000248739610;
  v11[4] = v2;
  *(inited + 264) = v11;
  *(inited + 272) = 0xD000000000000020;
  *(inited + 280) = 0x8000000248739630;
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000020;
  v12[3] = 0x8000000248739630;
  v12[4] = v2;
  *(inited + 288) = v12;
  *(inited + 296) = 0xD000000000000027;
  *(inited + 304) = 0x8000000248739660;
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000027;
  v13[3] = 0x8000000248739660;
  v13[4] = v2;
  *(inited + 312) = v13;
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = 0x8000000248739690;
  v14 = swift_allocObject();
  v14[2] = 0xD000000000000018;
  v14[3] = 0x8000000248739690;
  v14[4] = v2;
  *(inited + 336) = v14;
  *(inited + 344) = 0xD000000000000018;
  *(inited + 352) = 0x80000002487396B0;
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000018;
  v15[3] = 0x80000002487396B0;
  v15[4] = v2;
  *(inited + 360) = v15;
  v16 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v16;
}

unint64_t _s26DeepThoughtBiomeFoundation12TurnFeaturesC15RequestSequenceC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337B0;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x80000002487396D0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000024;
  v1[3] = 0x80000002487396D0;
  v2 = MEMORY[0x277D839F8];
  v1[4] = MEMORY[0x277D839F8];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000031;
  *(inited + 64) = 0x8000000248739700;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000031;
  v3[3] = 0x8000000248739700;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000002DLL;
  *(inited + 88) = 0x8000000248739740;
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000002DLL;
  v4[3] = 0x8000000248739740;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000248739770;
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001ALL;
  v5[3] = 0x8000000248739770;
  v5[4] = MEMORY[0x277D837D0];
  *(inited + 120) = v5;
  v6 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v6;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC10AppInFocusC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733760;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000248739800;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000013;
  v1[3] = 0x8000000248739800;
  v1[4] = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000248739820;
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000013;
  v2[3] = 0x8000000248739820;
  v3 = MEMORY[0x277D837D0];
  v2[4] = MEMORY[0x277D837D0];
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x8000000248739840;
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000017;
  v4[3] = 0x8000000248739840;
  v4[4] = v3;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000248739860;
  type metadata accessor for BMAppInFocusLaunchType(0);
  v6 = v5;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000015;
  v7[3] = 0x8000000248739860;
  v7[4] = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000248739880;
  v8 = swift_allocObject();
  v8[2] = 0xD00000000000001DLL;
  v8[3] = 0x8000000248739880;
  v8[4] = v3;
  *(inited + 144) = v8;
  v9 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v9;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC9AppIntentC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337C0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000002487398A0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000012;
  v1[3] = 0x80000002487398A0;
  v2 = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x80000002487398C0;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000017;
  v3[3] = 0x80000002487398C0;
  v3[4] = MEMORY[0x277D839B0];
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000002487398E0;
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000001ALL;
  v4[3] = 0x80000002487398E0;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000248739900;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000015;
  v5[3] = 0x8000000248739900;
  v5[4] = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000248739920;
  type metadata accessor for BMAppIntentHandlingStatus(0);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000018;
  v8[3] = 0x8000000248739920;
  v8[4] = v7;
  *(inited + 144) = v8;
  *(inited + 152) = 0xD000000000000014;
  *(inited + 160) = 0x8000000248739940;
  type metadata accessor for BMAppIntentType(0);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000014;
  v11[3] = 0x8000000248739940;
  v11[4] = v10;
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000020;
  *(inited + 184) = 0x8000000248739960;
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000020;
  v12[3] = 0x8000000248739960;
  v12[4] = v2;
  *(inited + 192) = v12;
  *(inited + 200) = 0xD00000000000001CLL;
  *(inited + 208) = 0x8000000248739990;
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001CLL;
  v13[3] = 0x8000000248739990;
  v13[4] = v2;
  *(inited + 216) = v13;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x80000002487399B0;
  v14 = swift_allocObject();
  v14[2] = 0xD000000000000014;
  v14[3] = 0x80000002487399B0;
  v14[4] = v2;
  *(inited + 240) = v14;
  *(inited + 248) = 0xD00000000000001ELL;
  *(inited + 256) = 0x80000002487399D0;
  type metadata accessor for BMAppIntentInteractionDirection(0);
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001ELL;
  v17[3] = 0x80000002487399D0;
  v17[4] = v16;
  *(inited + 264) = v17;
  *(inited + 272) = 0xD000000000000026;
  *(inited + 280) = 0x80000002487399F0;
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000026;
  v18[3] = 0x80000002487399F0;
  v18[4] = v2;
  *(inited + 288) = v18;
  v19 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v19;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC16CarPlayConnectedC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337D0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000248739A20;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000019;
  v1[3] = 0x8000000248739A20;
  v1[4] = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x8000000248739A40;
  type metadata accessor for BMCarPlayConnectedReason(0);
  v3 = v2;
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000017;
  v4[3] = 0x8000000248739A40;
  v4[4] = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x8000000248739A60;
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x8000000248739A60;
  v5[4] = MEMORY[0x277D837D0];
  *(inited + 96) = v5;
  v6 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v6;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC16LocationSemanticC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733760;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000248739AD0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000019;
  v1[3] = 0x8000000248739AD0;
  v1[4] = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000248739A80;
  type metadata accessor for BMLocationSemanticPlaceType(0);
  v3 = v2;
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000001ALL;
  v4[3] = 0x8000000248739A80;
  v4[4] = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000022;
  *(inited + 88) = 0x8000000248739AA0;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000022;
  v5[3] = 0x8000000248739AA0;
  v6 = MEMORY[0x277D837D0];
  v5[4] = MEMORY[0x277D837D0];
  *(inited + 96) = v5;
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x8000000248739AF0;
  type metadata accessor for BMLocationSemanticUserSpecificPlaceType(0);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000026;
  v9[3] = 0x8000000248739AF0;
  v9[4] = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD00000000000002ELL;
  *(inited + 136) = 0x8000000248739B20;
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000002ELL;
  v10[3] = 0x8000000248739B20;
  v10[4] = v6;
  *(inited + 144) = v10;
  v11 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v11;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC15MediaNowPlayingC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733740;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000248739B90;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000015;
  v1[3] = 0x8000000248739B90;
  v2 = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = 0x8000000248739B70;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000016;
  v3[3] = 0x8000000248739B70;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000248739BF0;
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000015;
  v4[3] = 0x8000000248739BF0;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000248739B50;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000015;
  v5[3] = 0x8000000248739B50;
  v5[4] = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000248739BD0;
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000018;
  v6[3] = 0x8000000248739BD0;
  v6[4] = v2;
  *(inited + 144) = v6;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x8000000248739BB0;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000019;
  v7[3] = 0x8000000248739BB0;
  v7[4] = v2;
  *(inited + 168) = v7;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x8000000248739C50;
  type metadata accessor for BMMediaNowPlayingPlaybackState(0);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001DLL;
  v10[3] = 0x8000000248739C50;
  v10[4] = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x8000000248739C10;
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000017;
  v11[3] = 0x8000000248739C10;
  v12 = MEMORY[0x277D84CC0];
  v11[4] = MEMORY[0x277D84CC0];
  *(inited + 216) = v11;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x8000000248739C30;
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000018;
  v13[3] = 0x8000000248739C30;
  v13[4] = v12;
  *(inited + 240) = v13;
  *(inited + 248) = 0xD000000000000025;
  *(inited + 256) = 0x8000000248739C70;
  v14 = swift_allocObject();
  v14[2] = 0xD000000000000025;
  v14[3] = 0x8000000248739C70;
  v14[4] = v2;
  *(inited + 264) = v14;
  v15 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v15;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC17NotificationUsageC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337B0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000248739CA0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD00000000000001ALL;
  v1[3] = 0x8000000248739CA0;
  v2 = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x8000000248739CC0;
  v3 = swift_allocObject();
  v3[2] = 0xD00000000000001BLL;
  v3[3] = 0x8000000248739CC0;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x8000000248739CE0;
  type metadata accessor for BMNotificationUsageType(0);
  v5 = v4;
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000001BLL;
  v6[3] = 0x8000000248739CE0;
  v6[4] = v5;
  *(inited + 96) = v6;
  *(inited + 104) = 0xD000000000000023;
  *(inited + 112) = 0x8000000248739D00;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000023;
  v7[3] = 0x8000000248739D00;
  v7[4] = v2;
  *(inited + 120) = v7;
  v8 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v8;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC13SiriExecutionC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733770;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000248739D70;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000017;
  v1[3] = 0x8000000248739D70;
  v2 = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x8000000248739D50;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000018;
  v3[3] = 0x8000000248739D50;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x8000000248739D90;
  v4 = swift_allocObject();
  v4[2] = 0xD00000000000001ALL;
  v4[3] = 0x8000000248739D90;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000019;
  *(inited + 112) = 0x8000000248739D30;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000019;
  v5[3] = 0x8000000248739D30;
  v5[4] = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000248739DB0;
  type metadata accessor for BMSiriExecutionTaskStep(0);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000016;
  v8[3] = 0x8000000248739DB0;
  v8[4] = v7;
  *(inited + 144) = v8;
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x8000000248739DD0;
  v9 = swift_allocObject();
  v9[2] = 0xD00000000000001ELL;
  v9[3] = 0x8000000248739DD0;
  v9[4] = v2;
  *(inited + 168) = v9;
  v10 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v10;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC08SiriPostG10EngagementC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337E0;
  *(inited + 32) = 0xD00000000000002BLL;
  *(inited + 40) = 0x8000000248739F10;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000026;
  v1[3] = 0x8000000248739F40;
  v2 = MEMORY[0x277D839B0];
  v1[4] = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000026;
  *(inited + 64) = 0x8000000248739F40;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000026;
  v3[3] = 0x8000000248739F40;
  v3[4] = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000026;
  *(inited + 88) = 0x8000000248739F70;
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000026;
  v4[3] = 0x8000000248739F70;
  v4[4] = v2;
  *(inited + 96) = v4;
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x8000000248739FA0;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000026;
  v5[3] = 0x8000000248739FA0;
  v5[4] = v2;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD00000000000002ALL;
  *(inited + 136) = 0x8000000248739FD0;
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000002ALL;
  v6[3] = 0x8000000248739FD0;
  v6[4] = v2;
  *(inited + 144) = v6;
  *(inited + 152) = 0xD000000000000032;
  *(inited + 160) = 0x800000024873A000;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000032;
  v7[3] = 0x800000024873A000;
  v7[4] = v2;
  *(inited + 168) = v7;
  *(inited + 176) = 0xD000000000000035;
  *(inited + 184) = 0x800000024873A040;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000035;
  v8[3] = 0x800000024873A040;
  v8[4] = v2;
  *(inited + 192) = v8;
  *(inited + 200) = 0xD000000000000022;
  *(inited + 208) = 0x800000024873A080;
  type metadata accessor for BMSiriPostSiriEngagementFeaturesTaskSuccess(0);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000022;
  v11[3] = 0x800000024873A080;
  v11[4] = v10;
  *(inited + 216) = v11;
  *(inited + 224) = 0xD000000000000020;
  *(inited + 232) = 0x8000000248739DF0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F88, &qword_248734080);
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000020;
  v13[3] = 0x8000000248739DF0;
  v13[4] = v12;
  *(inited + 240) = v13;
  *(inited + 248) = 0xD000000000000021;
  *(inited + 256) = 0x8000000248739E20;
  v14 = swift_allocObject();
  v14[2] = 0xD000000000000021;
  v14[3] = 0x8000000248739E20;
  v15 = MEMORY[0x277D837D0];
  v14[4] = MEMORY[0x277D837D0];
  *(inited + 264) = v14;
  *(inited + 272) = 0xD000000000000027;
  *(inited + 280) = 0x8000000248739E50;
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000027;
  v16[3] = 0x8000000248739E50;
  v16[4] = v15;
  *(inited + 288) = v16;
  *(inited + 296) = 0xD000000000000036;
  *(inited + 304) = 0x8000000248739E80;
  v17 = sub_2486D89CC();
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000036;
  v18[3] = 0x8000000248739E80;
  v18[4] = v17;
  *(inited + 312) = v18;
  *(inited + 320) = 0xD000000000000021;
  *(inited + 328) = 0x8000000248739EC0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  v20 = swift_allocObject();
  v20[2] = 0xD000000000000021;
  v20[3] = 0x8000000248739EC0;
  v20[4] = v19;
  *(inited + 336) = v20;
  *(inited + 344) = 0xD00000000000001FLL;
  *(inited + 352) = 0x8000000248739EF0;
  v21 = swift_allocObject();
  v21[2] = 0xD00000000000001FLL;
  v21[3] = 0x8000000248739EF0;
  v21[4] = v15;
  *(inited + 360) = v21;
  *(inited + 368) = 0xD00000000000002ALL;
  *(inited + 376) = 0x800000024873A0B0;
  v22 = swift_allocObject();
  v22[2] = 0xD00000000000002ALL;
  v22[3] = 0x800000024873A0B0;
  v22[4] = v15;
  *(inited + 384) = v22;
  v23 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v23;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC6SiriUIC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337D0;
  *(inited + 32) = 0x732E495569726953;
  *(inited + 40) = 0xEF676E6974726174;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0x732E495569726953;
  v1[3] = 0xEF676E6974726174;
  v1[4] = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = 0x800000024873A120;
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000016;
  v2[3] = 0x800000024873A120;
  v3 = MEMORY[0x277D837D0];
  v2[4] = MEMORY[0x277D837D0];
  *(inited + 72) = v2;
  *(inited + 80) = 0x762E495569726953;
  *(inited + 88) = 0xEF65646F4D776569;
  v4 = swift_allocObject();
  v4[2] = 0x762E495569726953;
  v4[3] = 0xEF65646F4D776569;
  v4[4] = v3;
  *(inited + 96) = v4;
  v5 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v5;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC26SiriVoiceTriggerStatisticsC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487337F0;
  *(inited + 32) = 0xD00000000000002CLL;
  *(inited + 40) = 0x800000024873A140;
  v1 = sub_248730970();
  type metadata accessor for FeatureKey();
  v2 = swift_allocObject();
  v2[2] = 0xD00000000000002CLL;
  v2[3] = 0x800000024873A140;
  v2[4] = v1;
  *(inited + 48) = v2;
  *(inited + 56) = 0xD000000000000031;
  *(inited + 64) = 0x800000024873A170;
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000031;
  v3[3] = 0x800000024873A170;
  v4 = MEMORY[0x277D849A8];
  v3[4] = MEMORY[0x277D849A8];
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000002FLL;
  *(inited + 88) = 0x800000024873A1B0;
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000002FLL;
  v5[3] = 0x800000024873A1B0;
  v6 = MEMORY[0x277D839F8];
  v5[4] = MEMORY[0x277D839F8];
  *(inited + 96) = v5;
  *(inited + 104) = 0xD00000000000002FLL;
  *(inited + 112) = 0x800000024873A1E0;
  v7 = swift_allocObject();
  v7[2] = 0xD00000000000002FLL;
  v7[3] = 0x800000024873A1E0;
  v7[4] = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000027;
  *(inited + 136) = 0x800000024873A210;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000027;
  v8[3] = 0x800000024873A210;
  v8[4] = v6;
  *(inited + 144) = v8;
  *(inited + 152) = 0xD00000000000002BLL;
  *(inited + 160) = 0x800000024873A240;
  v9 = swift_allocObject();
  v9[2] = 0xD00000000000002BLL;
  v9[3] = 0x800000024873A240;
  v9[4] = v4;
  *(inited + 168) = v9;
  *(inited + 176) = 0xD00000000000002ALL;
  *(inited + 184) = 0x800000024873A270;
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000002ALL;
  v10[3] = 0x800000024873A270;
  v10[4] = v6;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = 0x800000024873A2A0;
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000002CLL;
  v11[3] = 0x800000024873A2A0;
  v11[4] = v6;
  *(inited + 216) = v11;
  *(inited + 224) = 0xD00000000000002CLL;
  *(inited + 232) = 0x800000024873A2D0;
  v12 = swift_allocObject();
  v12[2] = 0xD00000000000002CLL;
  v12[3] = 0x800000024873A2D0;
  v12[4] = v6;
  *(inited + 240) = v12;
  *(inited + 248) = 0xD000000000000034;
  *(inited + 256) = 0x800000024873A300;
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000034;
  v13[3] = 0x800000024873A300;
  v13[4] = v6;
  *(inited + 264) = v13;
  *(inited + 272) = 0xD00000000000003BLL;
  *(inited + 280) = 0x800000024873A340;
  v14 = swift_allocObject();
  v14[2] = 0xD00000000000003BLL;
  v14[3] = 0x800000024873A340;
  v14[4] = v6;
  *(inited + 288) = v14;
  *(inited + 296) = 0xD000000000000029;
  *(inited + 304) = 0x800000024873A380;
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000029;
  v15[3] = 0x800000024873A380;
  v15[4] = v6;
  *(inited + 312) = v15;
  *(inited + 320) = 0xD000000000000029;
  *(inited + 328) = 0x800000024873A3B0;
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000029;
  v16[3] = 0x800000024873A3B0;
  v16[4] = v6;
  *(inited + 336) = v16;
  *(inited + 344) = 0xD000000000000028;
  *(inited + 352) = 0x800000024873A3E0;
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000028;
  v17[3] = 0x800000024873A3E0;
  v17[4] = MEMORY[0x277D837D0];
  *(inited + 360) = v17;
  *(inited + 368) = 0xD00000000000002DLL;
  *(inited + 376) = 0x800000024873A410;
  v18 = swift_allocObject();
  v18[2] = 0xD00000000000002DLL;
  v18[3] = 0x800000024873A410;
  v18[4] = v6;
  *(inited + 384) = v18;
  *(inited + 392) = 0xD00000000000002DLL;
  *(inited + 400) = 0x800000024873A440;
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000002DLL;
  v19[3] = 0x800000024873A440;
  v19[4] = v6;
  *(inited + 408) = v19;
  *(inited + 416) = 0xD000000000000041;
  *(inited + 424) = 0x800000024873A470;
  v20 = swift_allocObject();
  v20[2] = 0xD000000000000041;
  v20[3] = 0x800000024873A470;
  v20[4] = v6;
  *(inited + 432) = v20;
  *(inited + 440) = 0xD000000000000041;
  *(inited + 448) = 0x800000024873A4C0;
  v21 = swift_allocObject();
  v21[2] = 0xD000000000000041;
  v21[3] = 0x800000024873A4C0;
  v21[4] = v6;
  *(inited + 456) = v21;
  v22 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v22;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC18UserFocusSleepModeC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733760;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000024873A530;
  type metadata accessor for BMUserFocusSleepModeState(0);
  v2 = v1;
  type metadata accessor for FeatureKey();
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000018;
  v3[3] = 0x800000024873A530;
  v3[4] = v2;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD00000000000001FLL;
  *(inited + 64) = 0x800000024873A510;
  type metadata accessor for BMUserFocusSleepModeChangeReason(0);
  v5 = v4;
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000001FLL;
  v6[3] = 0x800000024873A510;
  v6[4] = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x800000024873A580;
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000020;
  v7[3] = 0x800000024873A580;
  v8 = MEMORY[0x277D837D0];
  v7[4] = MEMORY[0x277D837D0];
  *(inited + 96) = v7;
  *(inited + 104) = 0xD000000000000027;
  *(inited + 112) = 0x800000024873A550;
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000027;
  v9[3] = 0x800000024873A550;
  v9[4] = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000022;
  *(inited + 136) = 0x800000024873A5B0;
  v10 = sub_248730970();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000022;
  v11[3] = 0x800000024873A5B0;
  v11[4] = v10;
  *(inited + 144) = v11;
  v12 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v12;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC21UserFocusStatusChangeC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733790;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x800000024873A5E0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000026;
  v1[3] = 0x800000024873A5E0;
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000020;
  *(inited + 64) = 0x800000024873A610;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000020;
  v3[3] = 0x800000024873A610;
  v3[4] = v2;
  *(inited + 72) = v3;
  v4 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v4;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC16TextInputSessionC11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733790;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000248738FD0;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD000000000000019;
  v1[3] = 0x8000000248738FD0;
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x8000000248738FF0;
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000019;
  v2[3] = 0x8000000248738FF0;
  v2[4] = MEMORY[0x277D839F8];
  *(inited + 72) = v2;
  v3 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v3;
}

uint64_t _s26DeepThoughtBiomeFoundation21FeatureExtractorUtilsO03getE4Keys13componentNameSDySSAA0E3KeyCGSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (qword_27EEA5988 != -1)
  {
    swift_once();
  }

  v4 = off_27EEA5EA0;
  if (*(off_27EEA5EA0 + 2))
  {
    v5 = sub_2486C94CC(a1, a2);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  if (qword_27EEA5990 != -1)
  {
    swift_once();
  }

  v4 = off_27EEA5EA8;
  if (*(off_27EEA5EA8 + 2) && (v5 = sub_2486C94CC(a1, a2), (v7 & 1) != 0))
  {
LABEL_9:
    v8 = *(v4[7] + 8 * v5);
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v10 = sub_248730DF0();
    __swift_project_value_buffer(v10, qword_28150F088);

    v11 = sub_248730DD0();
    v12 = sub_2487313D0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2486D3010(a1, a2, &v15);
      _os_log_impl(&dword_2486BF000, v11, v12, "Invalid component name: %s. Not found in registry.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1D8100](v14, -1, -1);
      MEMORY[0x24C1D8100](v13, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_2486D7AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s26DeepThoughtBiomeFoundation13EventFeaturesC016TextInputSessionE0C11featureKeysSDySSAA10FeatureKeyCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5EC8, &qword_248733808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733790;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000024873A640;
  type metadata accessor for FeatureKey();
  v1 = swift_allocObject();
  v1[2] = 0xD00000000000001ELL;
  v1[3] = 0x800000024873A640;
  v1[4] = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x800000024873A660;
  v2 = swift_allocObject();
  v2[2] = 0xD00000000000001ELL;
  v2[3] = 0x800000024873A660;
  v2[4] = MEMORY[0x277D839F8];
  *(inited + 72) = v2;
  v3 = sub_2486D3684(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5ED0, &unk_248733810);
  swift_arrayDestroy();
  return v3;
}

unint64_t sub_2486D7D0C()
{
  result = qword_27EEA5EE8;
  if (!qword_27EEA5EE8)
  {
    type metadata accessor for FeatureKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA5EE8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t dispatch thunk of IntraFeaturizedTurnFeatureExtractor.extractFrom(turn:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2486D873C;

  return v8(a1);
}

uint64_t sub_2486D873C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2486D89CC()
{
  result = qword_27EEA5F90;
  if (!qword_27EEA5F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA5F90);
  }

  return result;
}

unint64_t sub_2486D8A18()
{
  result = qword_27EEA5FD0;
  if (!qword_27EEA5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA5FD0);
  }

  return result;
}

uint64_t sub_2486D8A6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id AppInFocusFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppInFocusFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInFocusFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486D8C20(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 starting];
    v30 = MEMORY[0x277D839B0];
    LOBYTE(v27) = v7;
    swift_beginAccess();
    sub_2486C6800(&v27, 0xD000000000000013, 0x8000000248739800);
    swift_endAccess();
    v8 = [v5 bundleID];
    v9 = MEMORY[0x277D837D0];
    if (v8)
    {
      v10 = v8;
      v11 = sub_248730FF0();
      v13 = v12;

      v14 = MEMORY[0x277D837D0];
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v14 = 0;
      v29 = 0;
    }

    v27 = v11;
    v28 = v13;
    v30 = v14;
    swift_beginAccess();
    sub_2486C6800(&v27, 0xD000000000000013, 0x8000000248739820);
    swift_endAccess();
    v15 = [v5 launchType];
    type metadata accessor for BMAppInFocusLaunchType(0);
    v30 = v16;
    LODWORD(v27) = v15;
    swift_beginAccess();
    sub_2486C6800(&v27, 0xD000000000000015, 0x8000000248739860);
    swift_endAccess();
    [v5 launchType];
    v17 = BMAppInFocusLaunchTypeAsString();
    v18 = sub_248730FF0();
    v20 = v19;

    v30 = v9;
    v27 = v18;
    v28 = v20;
    swift_beginAccess();
    sub_2486C6800(&v27, 0xD00000000000001DLL, 0x8000000248739880);
    swift_endAccess();
    v21 = [v5 launchReason];
    if (v21)
    {
      v22 = v21;
      v23 = sub_248730FF0();
      v25 = v24;

      v26 = MEMORY[0x277D837D0];
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v26 = 0;
      v29 = 0;
    }

    v27 = v23;
    v28 = v25;
    v30 = v26;
    swift_beginAccess();
    sub_2486C6800(&v27, 0xD000000000000017, 0x8000000248739840);
    swift_endAccess();
  }
}

id AppInFocusFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInFocusFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NotificationUsageFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationUsageFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationUsageFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486D902C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 bundleID];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v28 = 0;
    }

    v13 = MEMORY[0x277D837D0];
    v26 = v9;
    v27 = v11;
    v29 = v12;
    swift_beginAccess();
    sub_2486C6800(&v26, 0xD00000000000001ALL, 0x8000000248739CA0);
    swift_endAccess();
    v14 = [v5 sectionID];
    if (v14)
    {
      v15 = v14;
      v16 = sub_248730FF0();
      v18 = v17;

      v19 = MEMORY[0x277D837D0];
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
      v28 = 0;
    }

    v26 = v16;
    v27 = v18;
    v29 = v19;
    swift_beginAccess();
    sub_2486C6800(&v26, 0xD00000000000001BLL, 0x8000000248739CC0);
    swift_endAccess();
    v20 = [v5 usageType];
    type metadata accessor for BMNotificationUsageType(0);
    v29 = v21;
    LODWORD(v26) = v20;
    swift_beginAccess();
    sub_2486C6800(&v26, 0xD00000000000001BLL, 0x8000000248739CE0);
    swift_endAccess();
    [v5 usageType];
    v22 = BMNotificationUsageTypeAsString();
    v23 = sub_248730FF0();
    v25 = v24;

    v29 = v13;
    v26 = v23;
    v27 = v25;
    swift_beginAccess();
    sub_2486C6800(&v26, 0xD000000000000023, 0x8000000248739D00);
    swift_endAccess();
  }
}

id NotificationUsageFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationUsageFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SQLDatabaseError.init(errorMessage:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_248730FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487335F0;
  v7 = *MEMORY[0x277CCA460];
  *(inited + 32) = sub_248730FF0();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2486D3554(inited);
  swift_setDeallocating();
  sub_2486D964C(inited + 32);
  v9 = sub_248730F00();

  v12.receiver = v2;
  v12.super_class = type metadata accessor for SQLDatabaseError();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v5, -1, v9);

  return v10;
}

id SQLDatabaseError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_248730FC0();

  if (a4)
  {
    v9 = sub_248730F00();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id SQLDatabaseError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLDatabaseError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2486D964C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA5FE0, &qword_248735AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double_optional __swiftcall String.scoreRatcliffObershelp(between:)(Swift::String between)
{
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  object = between._object;
  countAndFlagsBits = between._countAndFlagsBits;
  v7 = HIBYTE(between._object) & 0xF;
  if ((between._object & 0x2000000000000000) == 0)
  {
    v7 = between._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_11:
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  if (v1 == between._countAndFlagsBits && v2 == between._object || (v8 = v1, v9 = v2, (sub_248731880() & 1) != 0))
  {
    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  v11 = sub_2487310E0();
  v10 = sub_2487310E0();
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = sub_2486D9928(countAndFlagsBits, object, v8, v9);
  v14 = *(v13 + 16);
  if (v14)
  {
    v28 = MEMORY[0x277D84F90];
    sub_2486DA300(0, v14, 0);
    v15 = v28;
    v16 = (v13 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v19 = sub_2487310E0();

      v21 = *(v28 + 16);
      v20 = *(v28 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2486DA300((v20 > 1), v21 + 1, 1);
      }

      *(v28 + 16) = v21 + 1;
      *(v28 + 8 * v21 + 32) = v19;
      v16 += 2;
      --v14;
    }

    while (v14);

    v22 = *(v28 + 16);
    if (v22)
    {
LABEL_19:
      v23 = 0;
      v24 = 32;
      while (1)
      {
        v25 = *(v15 + v24);
        v26 = __OFADD__(v23, v25);
        v23 += v25;
        if (v26)
        {
          break;
        }

        v24 += 8;
        if (!--v22)
        {

          v27 = v23;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v27 = 0.0;
LABEL_25:
  v3 = 2.0 / v12 * v27;
  LOBYTE(v10) = LOBYTE(v3);
LABEL_28:
  result.value = v3;
  result.is_nil = v10;
  return result;
}

uint64_t sub_2486D9928(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = MEMORY[0x277D84F90];
  v11 = sub_2486DA000();
  if (v11 < 1)
  {
    return v10;
  }

  v15 = v11;
  v16 = v12;
  v17 = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v13;
  v18 = sub_248731110();
  v14 = sub_248731110() >> 14;
  if (v14 < v18 >> 14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v98 = v15;
  v99 = v4;
  v96 = a1;
  v19 = sub_2487311F0();
  v5 = MEMORY[0x24C1D7000](v19);
  v93 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6018, qword_248734218);
  inited = swift_initStackObject();
  v97 = xmmword_248733790;
  *(inited + 16) = xmmword_248733790;

  a1 = sub_2486DB26C(v17);
  v4 = v22;
  v17 = v23;
  v15 = v24;

  *(inited + 32) = a1;
  *(inited + 40) = v4;
  *(inited + 48) = v17;
  *(inited + 56) = v15;

  v25 = sub_2487310E0();
  v26 = __OFSUB__(v25, v16);
  v27 = v25 - v16;
  if (!v26)
  {
    v92 = v5;
    v28 = sub_2486DB308(v27, a3, a4);
    v5 = v29;
    v31 = v30;
    v16 = v32;

    v94 = v31;
    v95 = v28;
    *(inited + 64) = v28;
    *(inited + 72) = v5;
    *(inited + 80) = v31;
    *(inited + 88) = v16;
    v100 = MEMORY[0x277D84F90];
    sub_2486DA2E0(0, 2, 0);
    v33 = v100;
    v34 = *(inited + 32);
    v35 = *(inited + 40);
    v36 = *(inited + 48);
    v37 = *(inited + 56);

    v4 = MEMORY[0x24C1D7000](v34, v35, v36, v37);
    a1 = v38;

    v15 = v100[2];
    v14 = v100[3];
    v17 = v15 + 1;
    if (v15 < v14 >> 1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  sub_2486DA2E0((v14 > 1), v17, 1);
  v33 = v100;
LABEL_6:
  v33[2] = v17;
  v39 = &v33[2 * v15];
  v39[4] = v4;
  v39[5] = a1;

  v40 = MEMORY[0x24C1D7000](v95, v5, v94, v16);
  v42 = v41;

  v101 = v33;
  v44 = v33[2];
  v43 = v33[3];
  v45 = v44 + 1;
  if (v44 >= v43 >> 1)
  {
    sub_2486DA2E0((v43 > 1), v44 + 1, 1);
  }

  v33[2] = v45;
  v46 = &v33[2 * v44];
  v46[4] = v40;
  v46[5] = v42;
  v47 = swift_initStackObject();
  *(v47 + 16) = v97;
  v48 = v98;
  v49 = v99;
  v50 = v99 - v98;
  if (__OFSUB__(v99, v98))
  {
    __break(1u);
  }

  else
  {
    v51 = v47;

    v44 = v96;
    v50 = sub_2486DB26C(v50);
    v53 = v52;
    v45 = v54;
    v56 = v55;

    v51[4] = v50;
    v51[5] = v53;
    v51[6] = v45;
    v51[7] = v56;

    v57 = sub_2487310E0();
    v26 = __OFSUB__(v57, v99);
    v58 = v57 - v99;
    if (!v26)
    {
      v59 = sub_2486DB308(v58, v96, a2);
      v61 = v60;
      v49 = v62;
      v50 = v63;

      v98 = v61;
      v99 = v59;
      v51[8] = v59;
      v51[9] = v61;
      v51[10] = v49;
      v51[11] = v50;
      v101 = MEMORY[0x277D84F90];
      sub_2486DA2E0(0, 2, 0);
      v64 = v101;
      v65 = v51[4];
      v66 = v51[5];
      v67 = v51[6];
      v68 = v51[7];

      a2 = MEMORY[0x24C1D7000](v65, v66, v67, v68);
      v15 = v69;

      v44 = v101[2];
      v48 = v101[3];
      v45 = v44 + 1;
      if (v44 < v48 >> 1)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  sub_2486DA2E0((v48 > 1), v45, 1);
  v64 = v101;
LABEL_11:
  v64[2] = v45;
  v70 = &v64[2 * v44];
  v70[4] = a2;
  v70[5] = v15;

  v71 = MEMORY[0x24C1D7000](v99, v98, v49, v50);
  v73 = v72;

  v75 = v64[2];
  v74 = v64[3];
  if (v75 >= v74 >> 1)
  {
    sub_2486DA2E0((v74 > 1), v75 + 1, 1);
  }

  v64[2] = v75 + 1;
  v76 = &v64[2 * v75];
  v76[4] = v71;
  v76[5] = v73;
  result = sub_2486C44B4(0, 1, 1, MEMORY[0x277D84F90]);
  v78 = result;
  v80 = *(result + 16);
  v79 = *(result + 24);
  if (v80 >= v79 >> 1)
  {
    result = sub_2486C44B4((v79 > 1), v80 + 1, 1, result);
    v78 = result;
  }

  *(v78 + 16) = v80 + 1;
  v81 = v78 + 16 * v80;
  *(v81 + 32) = v92;
  *(v81 + 40) = v93;
  v102 = v78;
  if (!v33[2])
  {
    __break(1u);
    goto LABEL_29;
  }

  if (!v64[2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v83 = v33[4];
  v82 = v33[5];
  v84 = v64[4];
  v85 = v64[5];

  v86 = sub_2486D9928(v84, v85, v83, v82);

  result = sub_2486C3898(v86);
  if (v33[2] < 2uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 = v33[6];
  v87 = v33[7];

  if (v64[2] >= 2uLL)
  {
    v89 = v64[6];
    v90 = v64[7];

    v91 = sub_2486D9928(v89, v90, v88, v87);

    sub_2486C3898(v91);
    return v102;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Double_optional __swiftcall String.computedRatioRatcliffObershelp(target:)(Swift::String target)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = HIBYTE(target._object) & 0xF;
  if ((target._object & 0x2000000000000000) == 0)
  {
    v4 = target._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_14:
    LOBYTE(v8) = 0;
    goto LABEL_18;
  }

  sub_2486DB3C4(v1, v2, target._countAndFlagsBits, target._object);
  v6 = v5;
  v7 = sub_2487310E0();
  v8 = COERCE_DOUBLE(sub_2487310E0());
  if (*&v8 <= v7)
  {
    v10 = *&v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = __OFSUB__(*&v10, v6);
  v12 = *&v10 - v6;
  if (v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v12 + 0x4000000000000000 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v7, *&v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = (2 * v12) / (v7 + *&v8);
  v8 = v9;
LABEL_18:
  result.value = v9;
  result.is_nil = LOBYTE(v8);
  return result;
}

uint64_t sub_2486DA000()
{
  v0 = sub_2487310E0();
  v1 = v0 + 1;
  if (__OFADD__(v0, 1))
  {
    goto LABEL_46;
  }

  if (v1 < 0)
  {
    goto LABEL_47;
  }

  if (v0 == -1)
  {
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = v0;
    v3 = sub_248731290();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 8 * v2 + 8);
  }

  v4 = sub_2487310E0();
  if (__OFADD__(v4, 1))
  {
    goto LABEL_48;
  }

  v5 = sub_2486DB1D0(v3, v4 + 1);

  v31 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v6 = sub_248731140();
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v9 = v7;
    v10 = 0;
    v32 = 0;
    v33 = 0;
    v11 = 0;
    v12 = v31 + 4;
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = 0;
LABEL_13:
      v16 = v15;
      while (1)
      {
        v18 = v16;
        v19 = sub_248731140();
        if (!v20)
        {
          break;
        }

        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (v8 == v19 && v9 == v20)
        {

LABEL_20:
          v21 = v31[2];
          if (v10 >= v21)
          {
            goto LABEL_40;
          }

          v22 = v12[v10];
          if (v18 >= *(v22 + 16))
          {
            goto LABEL_41;
          }

          v23 = *(v22 + 8 * v18 + 32);
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_42;
          }

          if (v14 >= v21)
          {
            goto LABEL_43;
          }

          v25 = v12[v14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v12[v14] = v25;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v25 = sub_2486C5294(v25);
          v12[v14] = v25;
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

LABEL_26:
          if (v15 >= *(v25 + 2))
          {
            goto LABEL_44;
          }

          *&v25[8 * v15 + 32] = v24;
          v27 = v11 < v24;
          if (v11 <= v24)
          {
            v11 = v24;
          }

          if (v27)
          {
            v28 = v15;
          }

          else
          {
            v28 = v33;
          }

          v29 = v32;
          if (v27)
          {
            v29 = v10 + 1;
          }

          v32 = v29;
          v33 = v28;
          goto LABEL_13;
        }

        v17 = sub_248731880();

        v16 = v18 + 1;
        if (v17)
        {
          goto LABEL_20;
        }
      }

      v8 = sub_248731140();
      v9 = v13;
      ++v10;
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v31 = sub_2486C52CC(v31);
  }

LABEL_37:
  v11 = 0;
LABEL_38:

  return v11;
}

char *sub_2486DA2E0(char *a1, int64_t a2, char a3)
{
  result = sub_2486DA484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2486DA300(char *a1, int64_t a2, char a3)
{
  result = sub_2486DA590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2486DA320(char *a1, int64_t a2, char a3)
{
  result = sub_2486DA694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2486DA340(char *a1, int64_t a2, char a3)
{
  result = sub_2486DA7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2486DA360(char *a1, int64_t a2, char a3)
{
  result = sub_2486DA9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2486DA380(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6008, &qword_248734208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2486DA484(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5C70, &qword_248734E10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2486DA590(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5B00, &qword_248733048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2486DA694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5AF0, &qword_248733038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2486DA7B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6000, &qword_248734200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2486DA8A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF8, &unk_2487344F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA6570, &unk_248735040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2486DA9EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5AE0, &qword_248733028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_2486DAAF0(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_2486DAFB0(0xFuLL, a1, a2);
  v8 = sub_2486DAFB0(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_248731090();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_2487316A0();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_2487310A0();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_2487316A0();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

void *sub_2486DAD2C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_30;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = a5 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = a3 - 1;
  while (v7 < v5)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v25 = result;
      v27 = a2;
      v16 = a3;
      v17 = a5;
      v18 = a4;
      v19 = sub_248731640();
      a3 = v16;
      a4 = v18;
      a5 = v17;
      v13 = v19;
      v14 = v20;
      result = v25;
      a2 = v27;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29[0] = a4;
        v29[1] = v8;
        v12 = v29 + v7;
      }

      else
      {
        v11 = v9;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v26 = result;
          v28 = a2;
          v21 = a5;
          v22 = a4;
          v23 = a3;
          v24 = sub_2487316A0();
          a3 = v23;
          a4 = v22;
          a5 = v21;
          v11 = v24;
          result = v26;
          a2 = v28;
        }

        v12 = (v11 + v7);
      }

      v13 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v15 = (__clz(v13 ^ 0xFF) - 24);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
          v14 = 4;
        }

        goto LABEL_17;
      }

      if (v15 == 1)
      {
LABEL_16:
        v14 = 1;
      }

      else
      {
        v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
        v14 = 2;
      }
    }

LABEL_17:
    v7 += v14;
    *(a2 + 4 * v6) = v13;
    if (v10 == v6)
    {
      goto LABEL_30;
    }

    if (__OFADD__(++v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  a3 = v6;
LABEL_30:
  *result = a4;
  result[1] = a5;
  result[2] = v7;
  result[3] = v5;
  return a3;
}

void *sub_2486DAF2C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6010, &qword_248734210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_2486DAFB0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2486DB048(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2486DB0BC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2486DB048(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2487283CC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2486DB0BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2487316A0();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2486DB1D0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5C58, &qword_248733070);
    v4 = sub_248731290();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_2486DB26C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_248731100();

    return sub_2487311F0();
  }

  return result;
}

unint64_t sub_2486DB308(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_248731100();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_2487311F0();
}

void sub_2486DB3C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_2486DAAF0(a1, a2);
  if (v9)
  {
    v10 = v9;
    v11 = sub_2486DAF2C(v9, 0);
    v12 = sub_2486DAD2C(&v65, (v11 + 4), v10, a1, a2);
    swift_bridgeObjectRetain_n();

    if (v12 != v10)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = sub_2486DAAF0(a3, a4);
  v15 = MEMORY[0x277D84F90];
  if (v13)
  {
    v16 = v13;
    v17 = sub_2486DAF2C(v13, 0);
    v18 = sub_2486DAD2C(&v65, (v17 + 4), v16, a3, a4);
    swift_bridgeObjectRetain_n();

    if (v18 != v16)
    {
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v11[2];
  v20 = v17[2];
  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {

    return;
  }

  v22 = v19 + 1;
  v23 = (v19 + 1) * (v20 + 1);
  if (((v19 + 1) * (v20 + 1)) >> 64 != v23 >> 63)
  {
    goto LABEL_114;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v23)
  {
    v15 = sub_248731290();
    v15[2] = v23;
    bzero(v15 + 4, 8 * v23);
    if (v23 >= 2)
    {
      goto LABEL_19;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v15[2];
  if (v23 < 2)
  {
    goto LABEL_27;
  }

LABEL_19:
  v4 = v15 + 4;
  v15[5] = 1;
  v14 = v19 - 1;
  if (v19 == 1)
  {
    goto LABEL_34;
  }

  if (v23 == 2 || v19 >= v23)
  {
    goto LABEL_117;
  }

  if (v14 >= 4)
  {
LABEL_28:
    v26 = 0;
    v27 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = v14 & 0xFFFFFFFFFFFFFFFCLL | 1;
    do
    {
      v28 = vdupq_n_s64(v26);
      v29 = vorrq_s8(v28, xmmword_2487341E0);
      v30 = &v4[v29.i64[0]];
      *v30 = v29;
      v30[1] = vaddq_s64(v28, xmmword_2487341F0);
      v26 += 4;
    }

    while (v27 != v26);
    if (v14 == v27)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v25 = 1;
LABEL_31:
  v31 = v19 - v25;
  v32 = &v15[v25 + 5];
  v33 = v25 + 1;
  do
  {
    *v32++ = v33++;
    --v31;
  }

  while (v31);
LABEL_33:
  v23 = v15[2];
LABEL_34:
  if (v22 >= v23)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v4[v22] = 1;
  if (v20 != 1)
  {
    v34 = 2;
    v35 = v20 - 1;
    while (1)
    {
      v36 = v22 * v34;
      if ((v22 * v34) >> 64 != (v22 * v34) >> 63)
      {
        break;
      }

      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }

      if (v36 >= v15[2])
      {
        goto LABEL_110;
      }

      v4[v36] = v34++;
      if (!--v35)
      {
        goto LABEL_41;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_41:
  v37 = v11[2];
  v38 = v17[2];
  v39 = 1;
  while (2)
  {
    v40 = v39 - 1;
    if (v39 - 1 >= v37)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v41 = 0;
    v42 = *(v11 + v40 + 8);
    while (1)
    {
      if (v41 >= v38)
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
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
        goto LABEL_108;
      }

      v43 = v41 + 1;
      if (v42 == *(v17 + v41 + 8))
      {
        v44 = v22 * v41;
        if ((v22 * v41) >> 64 != (v22 * v41) >> 63)
        {
          goto LABEL_87;
        }

        v45 = v44 + v40;
        if (__OFADD__(v44, v40))
        {
          goto LABEL_90;
        }

        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v46 = v15[2];
        if (v45 >= v46)
        {
          goto LABEL_93;
        }

        v47 = v22 * v43;
        if ((v22 * v43) >> 64 != (v22 * v43) >> 63)
        {
          goto LABEL_95;
        }

        v48 = __OFADD__(v47, v39);
        v49 = v47 + v39;
        if (v48)
        {
          goto LABEL_98;
        }

        if (v49 >= v46)
        {
          goto LABEL_99;
        }

        v50 = v4[v45];
      }

      else
      {
        v51 = v22 * v43;
        if ((v22 * v43) >> 64 != (v22 * v43) >> 63)
        {
          goto LABEL_88;
        }

        v52 = v51 + v40;
        if (__OFADD__(v51, v40))
        {
          goto LABEL_89;
        }

        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_92;
        }

        v53 = v15[2];
        if (v52 >= v53)
        {
          goto LABEL_94;
        }

        v54 = v4[v52];
        v48 = __OFADD__(v54, 1);
        v50 = v54 + 1;
        if (v48)
        {
          goto LABEL_96;
        }

        v55 = v22 * v41;
        if ((v22 * v41) >> 64 != (v22 * v41) >> 63)
        {
          goto LABEL_97;
        }

        v56 = v55 + v39;
        if (__OFADD__(v55, v39))
        {
          goto LABEL_100;
        }

        if (v56 >= v53)
        {
          goto LABEL_101;
        }

        v57 = v4[v56];
        v48 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v48)
        {
          goto LABEL_102;
        }

        v48 = __OFADD__(v55, v40);
        v59 = v55 + v40;
        if (v48)
        {
          goto LABEL_103;
        }

        if (v59 >= v53)
        {
          goto LABEL_104;
        }

        v60 = v4[v59];
        v48 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v48)
        {
          goto LABEL_105;
        }

        v48 = __OFADD__(v51, v39);
        v49 = v51 + v39;
        if (v48)
        {
          goto LABEL_106;
        }

        if (v61 < v50)
        {
          v50 = v61;
        }

        if (v50 >= v58)
        {
          v50 = v58;
        }

        if (v49 >= v53)
        {
          goto LABEL_107;
        }
      }

      v4[v49] = v50;
      if (v20 - 1 == v41)
      {
        break;
      }

      ++v41;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_86;
      }
    }

    if (v39 != v19)
    {
      v48 = __OFADD__(v39++, 1);
      if (!v48)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

  v62 = v22 * v20;
  if ((v22 * v20) >> 64 != (v22 * v20) >> 63)
  {
    goto LABEL_118;
  }

  v48 = __OFADD__(v62, v19);
  v63 = v62 + v19;
  if (v48)
  {
    goto LABEL_119;
  }

  if ((v63 & 0x8000000000000000) != 0)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    return;
  }

  if (v63 >= v15[2])
  {
    goto LABEL_121;
  }

  v64 = v4[v63];
}

id LocationSemanticFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationSemanticFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSemanticFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486DB968(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 starting];
    v22 = MEMORY[0x277D839B0];
    LOBYTE(v20) = v7;
    swift_beginAccess();
    sub_2486C6800(&v20, 0xD000000000000019, 0x8000000248739AD0);
    swift_endAccess();
    v8 = [v5 placeType];
    type metadata accessor for BMLocationSemanticPlaceType(0);
    v22 = v9;
    LODWORD(v20) = v8;
    swift_beginAccess();
    sub_2486C6800(&v20, 0xD00000000000001ALL, 0x8000000248739A80);
    swift_endAccess();
    [v5 placeType];
    v10 = BMLocationSemanticPlaceTypeAsString();
    v11 = sub_248730FF0();
    v13 = v12;

    v14 = MEMORY[0x277D837D0];
    v22 = MEMORY[0x277D837D0];
    v20 = v11;
    v21 = v13;
    swift_beginAccess();
    sub_2486C6800(&v20, 0xD000000000000022, 0x8000000248739AA0);
    swift_endAccess();
    LODWORD(v10) = [v5 userSpecificPlaceType];
    type metadata accessor for BMLocationSemanticUserSpecificPlaceType(0);
    v22 = v15;
    LODWORD(v20) = v10;
    swift_beginAccess();
    sub_2486C6800(&v20, 0xD000000000000026, 0x8000000248739AF0);
    swift_endAccess();
    [v5 userSpecificPlaceType];
    v16 = BMLocationSemanticUserSpecificPlaceTypeAsString();
    v17 = sub_248730FF0();
    v19 = v18;

    v22 = v14;
    v20 = v17;
    v21 = v19;
    swift_beginAccess();
    sub_2486C6800(&v20, 0xD00000000000002ELL, 0x8000000248739B20);
    swift_endAccess();
  }
}

id LocationSemanticFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSemanticFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NumericalOneHotEncoder.__allocating_init(featureName:imputeValue:boundaries:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  NumericalOneHotEncoder.init(featureName:imputeValue:boundaries:)(a1, a2, a3, a4);
  return v8;
}

void *CategoricalOneHotEncoder.__allocating_init(featureName:imputeValue:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E00, &qword_248733650);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v10[4] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E08, &qword_248733658);
  swift_allocObject();
  v12 = sub_2486CCE38(a5);

  v10[5] = v12;
  return v10;
}

uint64_t NumericalOneHotEncoder.featureName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NumericalOneHotEncoder.init(featureName:imputeValue:boundaries:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v5[2] = a1;
  v5[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6020, &qword_248734280);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v5[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6028, &qword_248734288);
  v9 = swift_allocObject();
  v14[0] = a3;

  sub_2486DD7D8(v14);
  *(v9 + 16) = v14[0];
  v5[5] = v9;
  v10 = *(a3 + 16);

  v11 = sub_2486DDA4C(v10 + 1, 0, &qword_27EEA5B00, &qword_248733048);
  if (sub_2486DE218(v14, (v11 + 4), v10 + 1, 0, v10) == v10 + 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEA6030, &qword_248734290);
    swift_allocObject();
    v12 = sub_2486CCC74(v11);

    v5[6] = v12;
    return v5;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t Imputer.__allocating_init(imputeValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

void *Discretizer.__allocating_init(boundaries:)()
{
  swift_allocObject();
  v0 = sub_2486DE2BC();

  return v0;
}

uint64_t OneHotEncoder.__allocating_init(categories:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OneHotEncoder.init(categories:)(a1, v3);
  return v2;
}

unint64_t sub_2486DC04C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2[4] + 16);
  }

  else
  {
    v3 = *&a1;
  }

  v4 = 0;
  v5 = *(v2[5] + 16);
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  while (v6 != v4)
  {
    v8 = v4 + 1;
    v9 = *(v7 + 8 * v4++);
    if (v9 > v3)
    {
      v6 = v8 - 1;
      break;
    }
  }

  v10 = v2[6];
  return sub_2486DD45C(v6);
}

void *NumericalOneHotEncoder.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t NumericalOneHotEncoder.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2486DC140@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*(a1 + 8) == 1)
  {
    a1 = v4[4] + 16;
  }

  v5 = v4[5];
  v6 = sub_2486DC790(*a1);
  v7 = v4[6];
  result = sub_2486DD45C(v6);
  *a2 = result;
  return result;
}

void *CategoricalOneHotEncoder.init(featureName:imputeValue:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E00, &qword_248733650);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v6[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E08, &qword_248733658);
  swift_allocObject();
  v11 = sub_2486CCE38(a5);

  v6[5] = v11;
  return v6;
}

uint64_t sub_2486DC238(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v5 = *(v2 + 32);
    a1 = *(v5 + 16);
    v4 = *(v5 + 24);
  }

  v6 = *(v2 + 40);

  v7 = sub_2486DD528(a1, v4);

  return v7;
}

void *CategoricalOneHotEncoder.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t CategoricalOneHotEncoder.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2486DC320@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  v6 = *v2;
  if (v5)
  {
    v7 = *a1;
    v8 = v5;
  }

  else
  {
    v9 = *(v6 + 32);
    v7 = *(v9 + 16);
    v8 = *(v9 + 24);
  }

  v10 = *(v6 + 40);

  v11 = sub_2486DD528(v7, v8);

  *a2 = v11;
  return result;
}

uint64_t sub_2486DC46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_248731550();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  (*(v7 + 16))(&v14 - v10, a1, v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v11, 1, v5) != 1)
  {
    return (*(v12 + 32))(a2, v11, v5);
  }

  (*(v7 + 8))(v11, v6);
  return (*(v12 + 16))(a2, v2 + *(*v2 + 88), v5);
}

uint64_t Imputer.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *Discretizer.init(boundaries:)()
{
  v0 = sub_2486DE2BC();

  return v0;
}

uint64_t sub_2486DC790(double a1)
{
  v2 = 0;
  v3 = *(v1 + 16);
  result = *(v3 + 16);
  v5 = v3 + 32;
  while (result != v2)
  {
    v6 = v2 + 1;
    v7 = *(v5 + 8 * v2++);
    if (v7 > a1)
    {
      return v6 - 1;
    }
  }

  return result;
}

uint64_t sub_2486DC7C4(uint64_t a1, uint64_t a2)
{
  v30 = *v2;
  v31 = a1;
  v3 = *(v30 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v28 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = sub_248731550();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v34, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - v16;
  v29 = v2[2];
  v35 = v29;
  v18 = sub_2487312D0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x24C1D7180](&v36, v18, WitnessTable);
  v35 = v36;
  sub_248731780();
  sub_248731750();
  v20 = sub_248731770();
  v21 = (v9 + 32);
  v32 = TupleTypeMetadata2 - 8;
  v33 = v20;
  v22 = (v4 + 32);
  v23 = (v4 + 8);
  while (1)
  {
    sub_248731760();
    (*v21)(v17, v14, v34);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v24 = *v17;
    (*v22)(v7, &v17[*(TupleTypeMetadata2 + 48)], v3);
    v25 = *(v30 + 88);
    v26 = sub_248730FA0();
    (*v23)(v7, v3);
    if (v26)
    {

      return v24;
    }
  }

  return sub_2487312B0();
}

uint64_t Discretizer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Discretizer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2486DCB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = sub_2486DC7C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t Scaler.__allocating_init(mean:std:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = *(*v7 + 80);
  v9 = *(*(v8 - 8) + 32);
  v9(v7 + *(*v7 + 96), a1, v8);
  v9(v7 + *(*v7 + 104), a2, v8);
  return v7;
}

uint64_t Scaler.init(mean:std:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(*(v4 - 8) + 32);
  v5(v2 + *(*v2 + 96), a1, v4);
  v5(v2 + *(*v2 + 104), a2, v4);
  return v2;
}

uint64_t sub_2486DCDC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v14 - v7;
  v10 = *(*(*(*(v9 + 88) + 16) + 8) + 8);
  v11 = v3 + *(v9 + 96);
  sub_248731730();
  v12 = v3 + *(*v3 + 104);
  sub_248730F80();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Scaler.deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 96), v1);
  v2(v0 + *(*v0 + 104), v1);
  return v0;
}

uint64_t Scaler.__deallocating_deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 96), v1);
  v2(v0 + *(*v0 + 104), v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2486DD0BC()
{
  sub_2486DE35C();
}

void *OneHotEncoder.init(categories:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v32 = &v28 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = sub_248731550();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v34, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - v16;
  v31 = *(v4 + 88);
  v18 = sub_248730EF0();
  v30 = v2;
  v2[3] = v18;
  v2[2] = a1;
  v39 = a1;
  v35 = v5;
  v19 = sub_2487312D0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x24C1D7180](v36, v19, WitnessTable);
  v37 = v36[0];
  sub_248731780();
  sub_248731750();
  v33 = sub_248731770();
  v21 = (v9 + 32);
  v22 = (v29 + 32);
  while (1)
  {
    sub_248731760();
    (*v21)(v17, v14, v34);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v23 = *v17;
    (*v22)(v32, &v17[*(TupleTypeMetadata2 + 48)], v35);
    v37 = v23;
    v38 = 0;
    swift_beginAccess();
    sub_248730F50();
    sub_248730F70();
    swift_endAccess();
  }

  v24 = v30;
  v25 = v30[2];

  v26 = sub_2487312B0();

  v24[4] = v26;
  return v24;
}

unint64_t sub_2486DD45C(unint64_t result)
{
  v2 = *(v1 + 32);
  if (v2 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  if (v2)
  {
    v4 = *(v1 + 32);
    v5 = sub_248731290();
    *(v5 + 16) = v2;
    bzero((v5 + 32), 8 * v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v6 = *(v1 + 24);
  if (!*(v6 + 16))
  {
    return v5;
  }

  result = sub_2486C9590(v3);
  if ((v7 & 1) == 0)
  {
    return v5;
  }

  v8 = *(*(v6 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (v8 < *(v5 + 16))
  {
    *(v5 + 8 * v8 + 32) = 1;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2486DD528(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  if (v3)
  {
    v6 = *(v2 + 32);
    v7 = sub_248731290();
    *(v7 + 16) = v3;
    bzero((v7 + 32), 8 * v3);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v8 = *(v2 + 24);
  if (!*(v8 + 16))
  {
    return v7;
  }

  v9 = sub_2486C94CC(v5, a2);
  if ((v10 & 1) == 0)
  {

    return v7;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (v11 < *(v7 + 16))
  {
    *(v7 + 8 * v11 + 32) = 1;
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_2486DD620()
{
  v1 = v0[4];
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = *v0;
  if (v1)
  {
    v3 = sub_248731290();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 8 * v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v4 = v0[3];
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);

  sub_248730F60();

  if ((v8 & 1) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 < *(v3 + 16))
      {
        *(v3 + 8 * v7 + 32) = 1;
        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t OneHotEncoder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t OneHotEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_2486DD7AC(void *a1@<X8>)
{
  v3 = *v1;
  sub_2486DD620();
  *a1 = v4;
}

uint64_t sub_2486DD7D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2486FD04C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_248731840();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_248731290();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2486DDAC8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_2486DD920(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF8, &unk_2487344F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_2486DD9B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E98, &unk_248733730);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_2486DDA4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

uint64_t sub_2486DDAC8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2486FD038(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2486DE024((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2486C45C0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_2486C45C0((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2486DE024((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_2486DE024(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2486DE218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_2486DE2BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  sub_2487312D0();
  swift_getWitnessTable();
  v4 = *(v2 + 88);
  v1[2] = sub_248731210();
  return v1;
}

uint64_t sub_2486DE490(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2486DE63C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2486DE8AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6248, &qword_248734578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248734500;
  *(inited + 32) = 0;
  *(inited + 40) = sub_2486CF4C4(0, &qword_27EEA6250, 0x277CF0FD8);
  *(inited + 48) = 1;
  *(inited + 56) = sub_2486CF4C4(0, &qword_27EEA6258, 0x277CF1600);
  *(inited + 64) = 2;
  *(inited + 72) = sub_2486CF4C4(0, &qword_27EEA6260, 0x277CF1320);
  *(inited + 80) = 3;
  *(inited + 88) = sub_2486CF4C4(0, &qword_27EEA6268, 0x277CF1700);
  *(inited + 96) = 4;
  *(inited + 104) = sub_2486CF4C4(0, &qword_27EEA6270, 0x277CF16F8);
  *(inited + 112) = 6;
  *(inited + 120) = sub_2486CF4C4(0, &qword_27EEA6278, 0x277CF1488);
  *(inited + 128) = 7;
  *(inited + 136) = sub_2486CF4C4(0, &qword_27EEA6280, 0x277CF12C0);
  *(inited + 144) = 8;
  *(inited + 152) = sub_2486CF4C4(0, &qword_27EEA6288, 0x277CF1658);
  *(inited + 160) = 9;
  *(inited + 168) = sub_2486CF4C4(0, &qword_27EEA6290, 0x277CF12C8);
  *(inited + 176) = 10;
  *(inited + 184) = sub_2486CF4C4(0, &qword_27EEA6298, 0x277CF1348);
  *(inited + 192) = 11;
  *(inited + 200) = sub_2486CF4C4(0, &qword_27EEA62A0, 0x277CF1388);
  *(inited + 208) = 12;
  *(inited + 216) = sub_2486CF4C4(0, &qword_27EEA62A8, 0x277CF1030);
  *(inited + 224) = 13;
  *(inited + 232) = sub_2486CF4C4(0, &qword_27EEA62B0, 0x277CF0FE8);
  *(inited + 240) = 16;
  *(inited + 248) = sub_2486CF4C4(0, &qword_27EEA62B8, 0x277CF1610);
  *(inited + 256) = 15;
  *(inited + 264) = sub_2486CF4C4(0, &qword_27EEA62C0, 0x277CF1118);
  *(inited + 272) = 14;
  *(inited + 280) = sub_2486CF4C4(0, &qword_27EEA62C8, 0x277CF1540);
  *(inited + 288) = 18;
  *(inited + 296) = sub_2486CF4C4(0, &qword_27EEA62D0, 0x277CF1590);
  *(inited + 304) = 19;
  *(inited + 312) = sub_2486CF4C4(0, &qword_27EEA62D8, 0x277CF15A8);
  *(inited + 320) = 20;
  *(inited + 328) = sub_2486CF4C4(0, &qword_27EEA62E0, 0x277CF15B0);
  *(inited + 336) = 21;
  *(inited + 344) = sub_2486CF4C4(0, &qword_27EEA62E8, 0x277CF1520);
  *(inited + 352) = 22;
  *(inited + 360) = sub_2486CF4C4(0, &qword_27EEA62F0, 0x277CF14F8);
  *(inited + 368) = 23;
  *(inited + 376) = sub_2486CF4C4(0, &qword_27EEA62F8, 0x277CF15B8);
  v1 = sub_2486D39D0(inited);
  result = swift_setDeallocating();
  qword_27EEA8138 = v1;
  return result;
}

uint64_t sub_2486DEBE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6300, &qword_248734580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248734500;
  *(inited + 32) = 0;
  v46 = *MEMORY[0x277CF0E40];
  *(inited + 40) = *MEMORY[0x277CF0E40];
  *(inited + 48) = 1;
  v45 = *MEMORY[0x277CF0F10];
  *(inited + 56) = *MEMORY[0x277CF0F10];
  *(inited + 64) = 2;
  v44 = *MEMORY[0x277CF0E78];
  *(inited + 72) = *MEMORY[0x277CF0E78];
  *(inited + 80) = 3;
  v43 = *MEMORY[0x277CF0F30];
  *(inited + 88) = *MEMORY[0x277CF0F30];
  *(inited + 96) = 4;
  v42 = *MEMORY[0x277CF0F28];
  *(inited + 104) = *MEMORY[0x277CF0F28];
  *(inited + 112) = 6;
  v41 = *MEMORY[0x277CF0ED0];
  *(inited + 120) = *MEMORY[0x277CF0ED0];
  *(inited + 128) = 7;
  v40 = *MEMORY[0x277CF0E68];
  *(inited + 136) = *MEMORY[0x277CF0E68];
  *(inited + 144) = 8;
  v39 = *MEMORY[0x277CF0F20];
  *(inited + 152) = *MEMORY[0x277CF0F20];
  *(inited + 160) = 9;
  v38 = *MEMORY[0x277CF0E70];
  *(inited + 168) = *MEMORY[0x277CF0E70];
  *(inited + 176) = 10;
  v37 = *MEMORY[0x277CF0E80];
  *(inited + 184) = *MEMORY[0x277CF0E80];
  *(inited + 192) = 11;
  v36 = *MEMORY[0x277CF0E88];
  *(inited + 200) = *MEMORY[0x277CF0E88];
  *(inited + 208) = 12;
  v35 = *MEMORY[0x277CF0E50];
  *(inited + 216) = *MEMORY[0x277CF0E50];
  *(inited + 224) = 13;
  v34 = *MEMORY[0x277CF0E48];
  *(inited + 232) = *MEMORY[0x277CF0E48];
  *(inited + 240) = 16;
  v1 = *MEMORY[0x277CF0F18];
  *(inited + 248) = *MEMORY[0x277CF0F18];
  *(inited + 256) = 15;
  v2 = *MEMORY[0x277CF0E58];
  *(inited + 264) = *MEMORY[0x277CF0E58];
  *(inited + 272) = 14;
  v3 = *MEMORY[0x277CF0EF0];
  *(inited + 280) = *MEMORY[0x277CF0EF0];
  *(inited + 288) = 18;
  v4 = *MEMORY[0x277CF0F08];
  *(inited + 296) = *MEMORY[0x277CF0F08];
  *(inited + 304) = 19;
  v5 = *MEMORY[0x277CF0EF8];
  *(inited + 312) = *MEMORY[0x277CF0EF8];
  *(inited + 320) = 20;
  v6 = *MEMORY[0x277CF0F00];
  *(inited + 328) = *MEMORY[0x277CF0F00];
  *(inited + 336) = 21;
  v7 = *MEMORY[0x277CF0EE0];
  *(inited + 344) = *MEMORY[0x277CF0EE0];
  *(inited + 352) = 22;
  v8 = *MEMORY[0x277CF0ED8];
  *(inited + 360) = *MEMORY[0x277CF0ED8];
  *(inited + 368) = 23;
  v9 = *MEMORY[0x277CF0EE8];
  *(inited + 376) = *MEMORY[0x277CF0EE8];
  v33 = sub_2486D3AAC(inited);
  swift_setDeallocating();
  v10 = v46;
  v11 = v45;
  v12 = v44;
  v13 = v43;
  v14 = v42;
  v15 = v41;
  v16 = v40;
  v17 = v39;
  v18 = v38;
  v19 = v37;
  v20 = v36;
  v21 = v35;
  v22 = v34;
  v23 = v1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6308, qword_248734588);
  result = swift_arrayDestroy();
  qword_27EEA8140 = v33;
  return result;
}

uint64_t static BiomeLibraryStreamUtils.streamLibraryEvents(eventType:bookmark:)(uint64_t a1, void *a2)
{
  if (qword_27EEA5998 != -1)
  {
    swift_once();
  }

  v4 = qword_27EEA8138;
  if (!*(qword_27EEA8138 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_2486C95D4(a1);
  if ((v6 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  return sub_2486DEFCC(a1, v7, a2, v7);
}

uint64_t sub_2486DEFCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &aBlock - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = sub_248730970();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcE9Publisher9eventType8bookmark17overwriteBookmark7endTimeSo014BMBookmarkableI0CyyXlGSgAA05EventK0O_AA07StreamsN0CSgSb0D04DateVSgtFZ_0(a1, a3, 1, v11);
  sub_2486E1660(v11);
  if (v14)
  {
    v25 = nullsub_1;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2486E1784;
    v24 = &block_descriptor_42;
    v15 = _Block_copy(&aBlock);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = v12;
    v25 = sub_2486E16D4;
    v26 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2486DF714;
    v24 = &block_descriptor_48;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 sinkWithCompletion:v15 receiveInput:v17];
    _Block_release(v17);
    _Block_release(v15);
  }

  swift_beginAccess();
  v19 = *(v12 + 16);

  return v19;
}

uint64_t static BiomeLibraryStreamUtils.streamFeaturizedLibraryEvents(eventType:extractor:bookmark:)(uint64_t a1, void *a2, void *a3)
{
  if (qword_27EEA5998 != -1)
  {
    swift_once();
  }

  v6 = qword_27EEA8138;
  if (!*(qword_27EEA8138 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_2486C95D4(a1);
  if ((v8 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return sub_2486DF2FC(a1, v9, a3, a2, v9);
}

uint64_t sub_2486DF2FC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &aBlock - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v15 = sub_248730970();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcE9Publisher9eventType8bookmark17overwriteBookmark7endTimeSo014BMBookmarkableI0CyyXlGSgAA05EventK0O_AA07StreamsN0CSgSb0D04DateVSgtFZ_0(a1, a3, 1, v13);
  sub_2486E1660(v13);
  if (v16)
  {
    v28 = nullsub_1;
    v29 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2486E1784;
    v27 = &block_descriptor_32;
    v17 = _Block_copy(&aBlock);
    v18 = swift_allocObject();
    v18[2] = a5;
    v18[3] = a4;
    v18[4] = v14;
    v28 = sub_2486E16C8;
    v29 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2486DF714;
    v27 = &block_descriptor_38;
    v19 = _Block_copy(&aBlock);
    v20 = a4;

    v21 = [v16 sinkWithCompletion:v17 receiveInput:v19];
    _Block_release(v19);
    _Block_release(v17);
  }

  swift_beginAccess();
  v22 = *(v14 + 16);

  return v22;
}

void sub_2486DF57C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, (v5 = [v3 eventBody]) != 0))
  {
    v6 = v5;
    [v4 timestamp];
    v8 = v7;
    v12 = v6;
    v9 = _s26DeepThoughtBiomeFoundation12EventFactoryC4from9timestamp03rawE0AA0E0CSgSd_So11BMEventBaseCtFZ_0(v12, v8);

    if (v9)
    {
      swift_beginAccess();
      v10 = v9;
      MEMORY[0x24C1D71A0]();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2486DF714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_2486DF774(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = v5, (v7 = [v5 eventBody]) != 0))
  {
    v8 = v7;
    [v6 timestamp];
    v10 = v9;
    v24 = v8;
    v11 = _s26DeepThoughtBiomeFoundation12EventFactoryC4from9timestamp03rawE0AA0E0CSgSd_So11BMEventBaseCtFZ_0(v24, v10);

    if (v11)
    {
      (*((*MEMORY[0x277D85000] & *a2) + 0x70))(v11);
      v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26IntraEventFeatureExtractor_features;
      swift_beginAccess();
      v13 = *(a2 + v12);
      v14 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
      swift_beginAccess();
      v15 = *&v11[v14];
      v16 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
      swift_beginAccess();
      v17 = *&v11[v16];
      type metadata accessor for FeaturizedEvent();
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v19 = MEMORY[0x277D84F90];
      *(v18 + 56) = MEMORY[0x277D84F90];
      *(v18 + 64) = v19;
      *(v18 + 72) = v19;
      *(v18 + 32) = v15;
      *(v18 + 40) = v17;
      *(v18 + 48) = v19;
      *(v18 + 24) = v13;
      swift_beginAccess();

      MEMORY[0x24C1D71A0](v20);
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      v21 = sub_2486D3554(MEMORY[0x277D84F90]);

      swift_unknownObjectRelease();
      v22 = *(a2 + v12);
      *(a2 + v12) = v21;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2486DFA3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v91 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v87 - v8;
  v10 = sub_248730970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = MEMORY[0x277D84F90];
  v17 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v18 = type metadata accessor for StreamsBookmark();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v20 = 1886217588;
  *(v20 + 1) = 0xE400000000000000;
  *&v19[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v17;
  *&v19[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v16);
  v95.receiver = v19;
  v95.super_class = v18;
  v21 = objc_msgSendSuper2(&v95, sel_init);
  if (a4)
  {
    v22 = a4;

    v21 = v22;
  }

  sub_248730960();
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v23 = sub_248730DF0();
  v24 = __swift_project_value_buffer(v23, qword_28150F088);
  v25 = v21;
  v90 = v24;
  v26 = sub_248730DD0();
  v27 = sub_2487313B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v89 = v10;
    v29 = v28;
    v88 = swift_slowAlloc();
    v94 = v88;
    *v29 = 136315138;
    v30 = v15;
    v31 = [v25 debugDescription];
    v32 = sub_248730FF0();
    v33 = v9;
    v34 = v25;
    v35 = v11;
    v37 = v36;

    v15 = v30;
    v38 = sub_2486D3010(v32, v37, &v94);
    v11 = v35;
    v25 = v34;
    v9 = v33;

    *(v29 + 4) = v38;
    _os_log_impl(&dword_2486BF000, v26, v27, "Apply bookmark %s to stream", v29, 0xCu);
    v39 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x24C1D8100](v39, -1, -1);
    v40 = v29;
    v10 = v89;
    MEMORY[0x24C1D8100](v40, -1, -1);
  }

  v41 = v91;
  v42 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v44 = v43;
  v45 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v46 = *&v25[v45];
  if (*(v46 + 16) && (v47 = *&v25[v45], , v48 = sub_2486C94CC(v42, v44), v50 = v49, , (v50 & 1) != 0))
  {
    v51 = *(*(v46 + 56) + 8 * v48);

    (*(v11 + 16))(v9, v15, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v52 = sub_2486F96D8(v41, v9);
    sub_2486E1660(v9);
    if (!v52)
    {
      v53 = sub_248730DD0();
      v54 = sub_2487313D0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v93 = v56;
        *v55 = 136315138;
        v57 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
        v59 = v15;
        v60 = sub_2486D3010(v57, v58, &v93);

        *(v55 + 4) = v60;
        v15 = v59;
        _os_log_impl(&dword_2486BF000, v53, v54, "Failed to update bookmark for %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x24C1D8100](v56, -1, -1);
        MEMORY[0x24C1D8100](v55, -1, -1);
      }
    }

    v87 = v15;
    v61 = v25;
    v62 = sub_248730DD0();
    v63 = sub_2487313B0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v93 = v65;
      *v64 = 136315138;
      v66 = [v61 debugDescription];
      v67 = v11;
      v68 = sub_248730FF0();
      v70 = v69;

      v71 = v68;
      v11 = v67;
      v72 = sub_2486D3010(v71, v70, &v93);

      *(v64 + 4) = v72;
      _os_log_impl(&dword_2486BF000, v62, v63, "Update bookmark: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x24C1D8100](v65, -1, -1);
      MEMORY[0x24C1D8100](v64, -1, -1);
    }

    v73 = v92;
    v74 = [v92 publisherFromStartTime_];

    (*(v11 + 8))(v87, v10);
  }

  else
  {

    (*(v11 + 16))(v9, v15, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v75 = sub_2486F96D8(v41, v9);
    sub_2486E1660(v9);
    if (!v75)
    {
      v76 = sub_248730DD0();
      v77 = sub_2487313D0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v93 = v79;
        *v78 = 136315138;
        v80 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
        v82 = v15;
        v83 = sub_2486D3010(v80, v81, &v93);

        *(v78 + 4) = v83;
        v15 = v82;
        _os_log_impl(&dword_2486BF000, v76, v77, "Failed to update bookmark for %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x24C1D8100](v79, -1, -1);
        MEMORY[0x24C1D8100](v78, -1, -1);
      }
    }

    v84 = v92;
    v85 = [v92 publisherWithStartTime:0 endTime:0 maxEvents:0 reversed:0];

    (*(v11 + 8))(v15, v10);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t static BiomeLegacyStreamUtils.streamBiomeEvents<A, B>(eventType:biomeEventType:streamType:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = sub_2486DFA3C(a1, a2, a3, a4);
  if (v13)
  {
    v14 = v13;
    v25 = nullsub_1;
    v26 = 0;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2486E1784;
    v24 = &block_descriptor;
    v15 = _Block_copy(&v21);
    v16 = swift_allocObject();
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = v12;
    v25 = sub_2486E1628;
    v26 = v16;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2486E1784;
    v24 = &block_descriptor_6;
    v17 = _Block_copy(&v21);

    v18 = [v14 sinkWithCompletion:v15 receiveInput:v17];
    _Block_release(v17);
    _Block_release(v15);
  }

  swift_beginAccess();
  v19 = *(v12 + 16);

  return v19;
}

void sub_2486E0448(void *a1, uint64_t a2)
{
  v4 = [a1 eventBody];
  if (v4)
  {
    v5 = v4;
    [a1 timestamp];
    v7 = v6;
    v11 = v5;
    v8 = _s26DeepThoughtBiomeFoundation12EventFactoryC4from9timestamp03rawE0AA0E0CSgSd_So11BMEventBaseCtFZ_0(v11, v7);

    if (v8)
    {
      swift_beginAccess();
      v9 = v8;
      MEMORY[0x24C1D71A0]();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_2486E0580(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t static BiomeLegacyStreamUtils.streamFeaturizedBiomeEvents<A, B>(eventType:biomeEventType:streamType:bookmark:extractor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v15 = sub_2486DFA3C(a1, a2, a3, a4);
  if (v15)
  {
    v16 = v15;
    v28 = nullsub_1;
    v29 = 0;
    v24 = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2486E1784;
    v27 = &block_descriptor_12;
    v17 = _Block_copy(&v24);
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a7;
    v18[4] = a5;
    v18[5] = v14;
    v28 = sub_2486E1634;
    v29 = v18;
    v24 = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_2486E1784;
    v27 = &block_descriptor_18;
    v19 = _Block_copy(&v24);
    v20 = a5;

    v21 = [v16 sinkWithCompletion:v17 receiveInput:v19];
    _Block_release(v19);
    _Block_release(v17);
  }

  swift_beginAccess();
  v22 = *(v14 + 16);

  return v22;
}

void sub_2486E07F0(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    [a1 timestamp];
    v9 = v8;
    v23 = v7;
    v10 = _s26DeepThoughtBiomeFoundation12EventFactoryC4from9timestamp03rawE0AA0E0CSgSd_So11BMEventBaseCtFZ_0(v23, v9);

    if (v10)
    {
      (*((*MEMORY[0x277D85000] & *a2) + 0x70))(v10);
      v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26IntraEventFeatureExtractor_features;
      swift_beginAccess();
      v12 = *(a2 + v11);
      v13 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
      swift_beginAccess();
      v14 = *&v10[v13];
      v15 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
      swift_beginAccess();
      v16 = *&v10[v15];
      type metadata accessor for FeaturizedEvent();
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = MEMORY[0x277D84F90];
      *(v17 + 56) = MEMORY[0x277D84F90];
      *(v17 + 64) = v18;
      *(v17 + 72) = v18;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      *(v17 + 48) = v18;
      *(v17 + 24) = v12;
      swift_beginAccess();

      MEMORY[0x24C1D71A0](v19);
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      v20 = sub_2486D3554(MEMORY[0x277D84F90]);

      v21 = *(a2 + v11);
      *(a2 + v11) = v20;
    }

    else
    {
    }
  }
}

id _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcF09eventTypeSo12BMStreamBaseCSgAA05EventJ0O_tFZ_0(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (qword_27EEA59A0 != -1)
  {
    swift_once();
  }

  v2 = qword_27EEA8140;
  if (!*(qword_27EEA8140 + 16) || (v3 = sub_2486C95D4(a1), (v4 & 1) == 0))
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v9 = sub_248730DF0();
    __swift_project_value_buffer(v9, qword_28150F088);
    v10 = sub_248730DD0();
    v11 = sub_2487313D0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_2486BF000, v10, v11, "Unable to find library stream identifier for eventType: %ld", v12, 0xCu);
      MEMORY[0x24C1D8100](v12, -1, -1);
    }

    goto LABEL_11;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v24[0] = 0;
  v6 = [BiomeLibrary() streamWithIdentifier:v5 error:v24];
  swift_unknownObjectRelease();
  v7 = v24[0];
  if (!v6)
  {
    v14 = v7;
    v15 = sub_2487307E0();

    swift_willThrow();
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v16 = sub_248730DF0();
    __swift_project_value_buffer(v16, qword_28150F088);
    v17 = v5;
    v10 = sub_248730DD0();
    v18 = sub_2487313D0();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[0] = v20;
      *v19 = 136315138;
      v21 = sub_248730FF0();
      v23 = sub_2486D3010(v21, v22, v24);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2486BF000, v10, v18, "Failed to construct stream for identifier:  %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1D8100](v20, -1, -1);
      MEMORY[0x24C1D8100](v19, -1, -1);
    }

    else
    {
    }

LABEL_11:

    result = 0;
    goto LABEL_12;
  }

  result = v6;
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

id _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcE9Publisher9eventType8bookmark17overwriteBookmark7endTimeSo014BMBookmarkableI0CyyXlGSgAA05EventK0O_AA07StreamsN0CSgSb0D04DateVSgtFZ_0(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v96 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v90 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v97 = v90 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v101 = v90 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = v90 - v24;
  v26 = sub_248730970();
  v102 = *(v26 - 8);
  v27 = *(v102 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v31 = _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcF09eventTypeSo12BMStreamBaseCSgAA05EventJ0O_tFZ_0(a1);
  if (v31)
  {
    v91 = v16;
    v93 = a3;
    v94 = v31;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_2486D3BA8(MEMORY[0x277D84F90]);
    v34 = type metadata accessor for StreamsBookmark();
    v35 = objc_allocWithZone(v34);
    v36 = &v35[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    *v36 = 1886217588;
    *(v36 + 1) = 0xE400000000000000;
    *&v35[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v33;
    *&v35[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v32);
    v105.receiver = v35;
    v105.super_class = v34;
    v37 = objc_msgSendSuper2(&v105, sel_init);
    if (a2)
    {
      v38 = a2;

      v37 = v38;
    }

    sub_2486C5C10(a4, v25);
    v39 = v102 + 48;
    v40 = *(v102 + 48);
    if (v40(v25, 1, v26) == 1)
    {
      sub_248730960();
      if (v40(v25, 1, v26) != 1)
      {
        sub_2486E1660(v25);
      }
    }

    else
    {
      (*(v102 + 32))(v30, v25, v26);
    }

    v90[2] = v39;
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v42 = sub_248730DF0();
    v43 = __swift_project_value_buffer(v42, qword_28150F088);
    v44 = v37;
    v90[1] = v43;
    v45 = sub_248730DD0();
    v46 = sub_2487313B0();

    v47 = os_log_type_enabled(v45, v46);
    v98 = v40;
    v99 = v30;
    v92 = a4;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v104 = v49;
      *v48 = 136315138;
      v50 = [v44 debugDescription];
      v51 = sub_248730FF0();
      v53 = v52;

      v54 = sub_2486D3010(v51, v53, &v104);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_2486BF000, v45, v46, "Apply bookmark %s to publisher option", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1D8100](v49, -1, -1);
      MEMORY[0x24C1D8100](v48, -1, -1);
    }

    v55 = *(v102 + 56);
    v55(v101, 1, 1, v26);
    v56 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
    v58 = v57;
    v59 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
    swift_beginAccess();
    v95 = v44;
    v60 = *&v44[v59];
    v61 = v96;
    if (*(v60 + 16) && (v62 = *&v44[v59], , v63 = sub_2486C94CC(v56, v58), v65 = v64, , (v65 & 1) != 0))
    {
      v66 = *(*(v60 + 56) + 8 * v63);

      v67 = v97;
      sub_2487308F0();
      v68 = v101;
      sub_2486E1660(v101);
      v55(v67, 0, 1, v26);
      sub_2486E16DC(v67, v68);
      v69 = v93;
    }

    else
    {

      v69 = v93;
      v67 = v97;
    }

    v70 = v91;
    sub_2486C5C10(v101, v91);
    sub_2486C5C10(v92, v61);
    if (v98(v70, 1, v26) == 1)
    {
      v71 = 0;
    }

    else
    {
      v71 = sub_248730920();
      (*(v102 + 8))(v70, v26);
    }

    if (v98(v61, 1, v26) == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_248730920();
      (*(v102 + 8))(v61, v26);
    }

    v73 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v71 endDate:v72 maxEvents:0 lastN:0 reversed:0];

    (*(v102 + 16))(v67, v99, v26);
    v55(v67, 0, 1, v26);
    if (v69)
    {
      v74 = v95;
      v75 = sub_2486F96D8(v100, v67);
      sub_2486E1660(v67);
      if (!v75)
      {
        v76 = sub_248730DD0();
        v77 = sub_2487313D0();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v103 = v79;
          *v78 = 136315138;
          v80 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
          v82 = sub_2486D3010(v80, v81, &v103);
          v74 = v95;

          *(v78 + 4) = v82;
          v83 = "Failed to update bookmark for %s";
LABEL_30:
          _os_log_impl(&dword_2486BF000, v76, v77, v83, v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x24C1D8100](v79, -1, -1);
          MEMORY[0x24C1D8100](v78, -1, -1);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v74 = v95;
      v84 = sub_2486F9C50(v100, v67);
      sub_2486E1660(v67);
      if (!v84)
      {
        v76 = sub_248730DD0();
        v77 = sub_2487313D0();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v103 = v79;
          *v78 = 136315138;
          v85 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
          v87 = sub_2486D3010(v85, v86, &v103);
          v74 = v95;

          *(v78 + 4) = v87;
          v83 = "Failed to stage bookmark for %s";
          goto LABEL_30;
        }

LABEL_31:
      }
    }

    v88 = v94;
    v41 = [v94 publisherWithOptions_];

    sub_2486E1660(v101);
    (*(v102 + 8))(v99, v26);

    return v41;
  }

  return 0;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2486E1628(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_2486E0448(a1, v1[4]);
}

void sub_2486E1634(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2486E07F0(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_2486E1660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2486E16DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id SiriUIFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriUIFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUIFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486E1854(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 starting];
    v23 = MEMORY[0x277D839B0];
    LOBYTE(v20) = v7;
    swift_beginAccess();
    sub_2486C6800(&v20, 0x732E495569726953, 0xEF676E6974726174);
    swift_endAccess();
    v8 = [v5 dismissalReason];
    if (v8)
    {
      v9 = v8;
      v10 = sub_248730FF0();
      v12 = v11;

      v13 = MEMORY[0x277D837D0];
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v22 = 0;
    }

    v20 = v10;
    v21 = v12;
    v23 = v13;
    swift_beginAccess();
    sub_2486C6800(&v20, 0xD000000000000016, 0x800000024873A120);
    swift_endAccess();
    v14 = [v5 viewMode];
    if (v14)
    {
      v15 = v14;
      v16 = sub_248730FF0();
      v18 = v17;

      v19 = MEMORY[0x277D837D0];
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
      v22 = 0;
    }

    v20 = v16;
    v21 = v18;
    v23 = v19;
    swift_beginAccess();
    sub_2486C6800(&v20, 0x762E495569726953, 0xEF65646F4D776569);
    swift_endAccess();
  }
}

id SiriUIFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUIFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StreamsEndTime.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2486D3CAC(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2486E1B2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v10 = v9;
  v11 = sub_248730970();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_2486C69BC(v7, v8, v10);
  swift_endAccess();
}

uint64_t sub_2486E1C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v17 - v7;
  v9 = "CONVERSATION_TURN_AIMLIS";
  v10 = 0xD000000000000015;
  if (a1)
  {
    v10 = 0xD000000000000018;
    v9 = "22SiriUIFeatureExtractor";
  }

  v11 = a1 == 1;
  if (a1 == 1)
  {
    v12 = 0xD000000000000018;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v13 = "CONVERSATION_TURN_UKNOWN";
  }

  else
  {
    v13 = v9;
  }

  v14 = sub_248730970();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, a2, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  swift_beginAccess();
  sub_2486C69BC(v8, v12, v13 | 0x8000000000000000);
  swift_endAccess();
}

uint64_t sub_2486E1E1C@<X0>(uint64_t a1@<X8>)
{
  v3 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (*(v6 + 16) && (, v7 = sub_2486C94CC(v3, v5), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(v6 + 56);
    v11 = sub_248730970();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, v10 + *(v12 + 72) * v7, v11);

    return (*(v12 + 56))(a1, 0, 1, v11);
  }

  else
  {

    v14 = sub_248730970();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_2486E1FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = "CONVERSATION_TURN_AIMLIS";
  v5 = 0xD000000000000015;
  if (a1)
  {
    v5 = 0xD000000000000018;
    v4 = "22SiriUIFeatureExtractor";
  }

  if (a1 == 1)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 1)
  {
    v7 = "CONVERSATION_TURN_UKNOWN";
  }

  else
  {
    v7 = v4;
  }

  swift_beginAccess();
  v8 = *(v2 + 16);
  if (*(v8 + 16) && (, v9 = sub_2486C94CC(v6, v7 | 0x8000000000000000), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(v8 + 56);
    v13 = sub_248730970();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v12 + *(v14 + 72) * v9, v13);

    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {

    v16 = sub_248730970();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t StreamsEndTime.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StreamsEndTime.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id CarPlayConnectedFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlayConnectedFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayConnectedFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486E2374(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 reason];
    type metadata accessor for BMCarPlayConnectedReason(0);
    v15 = v8;
    LODWORD(v14[0]) = v7;
    swift_beginAccess();
    sub_2486C6800(v14, 0xD000000000000017, 0x8000000248739A40);
    swift_endAccess();
    [v5 reason];
    v9 = BMCarPlayConnectedReasonAsString();
    v10 = sub_248730FF0();
    v12 = v11;

    v15 = MEMORY[0x277D837D0];
    v14[0] = v10;
    v14[1] = v12;
    swift_beginAccess();
    sub_2486C6800(v14, 0xD00000000000001FLL, 0x8000000248739A60);
    swift_endAccess();
    v13 = [v5 starting];
    v15 = MEMORY[0x277D839B0];
    LOBYTE(v14[0]) = v13;
    swift_beginAccess();
    sub_2486C6800(v14, 0xD000000000000019, 0x8000000248739A20);
    swift_endAccess();
  }
}

id CarPlayConnectedFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayConnectedFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2486E25C4(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t FeaturizedEventsByBucketizedTimestamp.__allocating_init(bucketSize:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_2486D3E98(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t FeaturizedEventsByBucketizedTimestamp.init(bucketSize:)(double a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = sub_2486D3E98(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_2486E2724(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_2486C9590(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
}

unint64_t sub_2486E278C(double a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 / *(v1 + 16);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 24);
  v22 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  result = sub_2486C9590(v5);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_2486E5680(v14, isUniquelyReferenced_nonNull_native, &qword_27EEA5F38, &unk_248734730);
    v8 = v22;
    result = sub_2486C9590(v5);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_9;
    }

    result = sub_2487318B0();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_9:
    *(v2 + 24) = v8;
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v21 = result;
  sub_2486E6CF0(&qword_27EEA5F38, &unk_248734730);
  result = v21;
  v8 = v22;
  *(v2 + 24) = v22;
  if (v15)
  {
LABEL_12:
    v19 = (v8[7] + 8 * result);

    MEMORY[0x24C1D71A0](v20);
    if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_13:
      sub_2487312A0();
      return swift_endAccess();
    }

LABEL_18:
    sub_248731260();
    goto LABEL_13;
  }

LABEL_10:
  v8[(result >> 6) + 8] |= 1 << result;
  *(v8[6] + 8 * result) = v5;
  *(v8[7] + 8 * result) = MEMORY[0x277D84F90];
  v17 = v8[2];
  v13 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (!v13)
  {
    v8[2] = v18;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

Swift::Int sub_2486E29C8(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v27 = *a3;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 40);
  v10 = (v9)(v7, v8);
  swift_beginAccess();
  v11 = *(v3 + 16);
  if (v10 == v11)
  {
    goto LABEL_6;
  }

  if (qword_28150EE60 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v12 = sub_248730DF0();
    __swift_project_value_buffer(v12, qword_28150F088);
    v13 = sub_248730DD0();
    v14 = sub_2487313D0();
    if (os_log_type_enabled(v13, v14))
    {
      v26 = v4;
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2486BF000, v13, v14, "Bucket sizes for two TimeBasedDictionary objects are not the same. Set its own time buckets the same as the other", v15, 2u);
      v16 = v15;
      v4 = v26;
      MEMORY[0x24C1D8100](v16, -1, -1);
    }

    v11 = (v9)(v7, v8);
    *(v4 + 16) = v11;
LABEL_6:
    swift_beginAccess();
    v17 = *(a1 + 32) / v11;
    if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_29;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_30;
    }

    v7 = v17;
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v9 = v27;
    if (TimeBasedDictionary.exists(key:)(v7))
    {
      goto LABEL_24;
    }

    if (!v27)
    {
      goto LABEL_15;
    }

    v19 = sub_248731880();

    if (v19)
    {
      goto LABEL_16;
    }

    if (v27 == 2)
    {
LABEL_15:
    }

    else
    {
      v20 = sub_248731880();

      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_16:
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    if (!__OFADD__(v7, 1))
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  if (TimeBasedDictionary.exists(key:)(v7 + 1))
  {
LABEL_24:
    sub_2486E278C(*(a1 + 32));

    return a1;
  }

  if (v27 == 1)
  {
    goto LABEL_21;
  }

  v22 = sub_248731880();

  if ((v22 & 1) == 0)
  {
    if (v27)
    {
LABEL_21:

      goto LABEL_22;
    }

    v25 = sub_248731880();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = v7 - 1;
  if (!__OFSUB__(v7, 1))
  {
    if (!TimeBasedDictionary.exists(key:)(result))
    {
      return 0;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486E2E14(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v6 = *a2;
  swift_beginAccess();
  v100 = v3;
  v7 = *(v3 + 24);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v91 = v7;

  v14 = v11;
  v15 = v12;
  v16 = 0;
  v94 = a3;
  v93 = a1;
  v97 = v6;
  v88 = v8;
  do
  {
LABEL_6:
    if (!v14)
    {
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_109;
        }

        if (v17 >= v15)
        {
        }

        v14 = *(v8 + 8 * v17);
        ++v16;
      }

      while (!v14);
      v16 = v17;
    }

    v18 = (v16 << 9) | (8 * __clz(__rbit64(v14)));
    v96 = *(*(v91 + 48) + v18);
    v19 = *(*(v91 + 56) + v18);
    v95 = v19;
    if (v19 >> 62)
    {
      v86 = v16;
      v87 = v14;
      result = sub_248731790();
      v14 = v87;
      v19 = v95;
      v16 = v86;
      v15 = v12;
      v8 = v88;
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 &= v14 - 1;
  }

  while (!result);
  if (result < 1)
  {
    goto LABEL_110;
  }

  v89 = v14;
  v90 = v16;
  v103 = result;
  v104 = v19 & 0xC000000000000001;

  swift_beginAccess();
  swift_beginAccess();
  v105 = 0;
  v92 = v19 + 32;
  v20 = __OFSUB__(v96, 1);
  v21 = __OFADD__(v96, 1);
  v101 = v21;
  v102 = v20;
  while (1)
  {
    if (v104)
    {
      v106 = MEMORY[0x24C1D7600](v105, v19);
    }

    else
    {
      v106 = *(v92 + 8 * v105);
    }

    v22 = *(a1 + 24);
    if (*(v22 + 16))
    {
      v23 = sub_2486C9590(v96);
      if (v24)
      {
        v25 = *(*(v22 + 56) + 8 * v23);
        v26 = *(v100 + 16);
        v112[0] = v6;

        sub_2486E8BC4(v27, v112, v26);
      }
    }

    if (!v6)
    {
      goto LABEL_34;
    }

    v28 = sub_248731880();

    if (v28)
    {
      goto LABEL_35;
    }

    if (v6 == 2)
    {
LABEL_34:
    }

    else
    {
      v29 = sub_248731880();

      result = 0xE500000000000000;
      if ((v29 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_35:
    if (v102)
    {
      break;
    }

    v30 = *(a1 + 24);
    if (*(v30 + 16))
    {
      v31 = sub_2486C9590(v96 - 1);
      if (v32)
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        v34 = *(v100 + 16);
        v112[0] = v6;

        sub_2486E8BC4(v35, v112, v34);
      }
    }

    if (v6 == 1)
    {
      goto LABEL_42;
    }

    v36 = sub_248731880();

    if ((v36 & 1) == 0)
    {
      if (!v6)
      {
        v43 = sub_248731880();

        if ((v43 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

LABEL_42:
    }

LABEL_43:
    if (v101)
    {
      goto LABEL_108;
    }

    v37 = *(a1 + 24);
    if (*(v37 + 16))
    {
      v38 = sub_2486C9590(v96 + 1);
      if (v39)
      {
        v40 = *(*(v37 + 56) + 8 * v38);
        v41 = *(v100 + 16);
        v112[0] = v6;

        sub_2486E8BC4(v42, v112, v41);
      }
    }

LABEL_48:
    if (a3)
    {
      if (v6)
      {
        v44 = v106;
        if (v6 == 1)
        {
LABEL_55:

          goto LABEL_56;
        }
      }

      else
      {
        v44 = v106;
      }

      v45 = sub_248731880();

      if ((v45 & 1) == 0)
      {
        if (v6)
        {
          goto LABEL_55;
        }

        v85 = sub_248731880();

        if ((v85 & 1) == 0)
        {
LABEL_69:
          if (!v6)
          {
            goto LABEL_81;
          }

          v55 = sub_248731880();

          if (v55)
          {
            goto LABEL_82;
          }

          if (v6 == 2)
          {
LABEL_81:

            goto LABEL_82;
          }

          v56 = sub_248731880();

          if ((v56 & 1) == 0)
          {
            a3 = v94;
            a1 = v93;
LABEL_95:
            v19 = v95;
            goto LABEL_22;
          }

LABEL_82:
          swift_beginAccess();
          v67 = *(v44 + 56);
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v67 < 0 || (v67 & 0x4000000000000000) != 0)
          {
            v67 = sub_2486C5DDC(v67);
          }

          v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v69 = (v67 & 0xFFFFFFFFFFFFFF8) + 32;
          v110 = v69;
          v111 = v68;
          v99 = v67;
          if (v68 >= 0x40)
          {
            v70 = 58 - __clz(v68);
            v71 = -1 << v70;
            v72 = v68 >> v70;
            if ((v68 & ~v71) != 0)
            {
              v73 = v72 + 1;
            }

            else
            {
              v73 = v72;
            }

            if (v73 >= v68)
            {
              goto LABEL_96;
            }

            v74 = v68 >> 1;
            type metadata accessor for FeaturizedEvent();
            v75 = sub_248731290() & 0xFFFFFFFFFFFFFF8;
            *(v75 + 0x10) = v74;
            v107 = v75 + 32;
            v108 = v74;
            sub_2486E72C8(&v107, v109, &v110, v73);
            *(v75 + 16) = 0;
          }

          else if (v68 >= 2)
          {
LABEL_96:
            v76 = -1;
            v77 = (v67 & 0xFFFFFFFFFFFFFF8) + 32;
            for (i = 1; i != v68; ++i)
            {
              v79 = *(v69 + 8 * i);
              v80 = v76;
              v81 = v77;
              do
              {
                v82 = *v81;
                swift_beginAccess();
                v83 = *(v79 + 32);
                swift_beginAccess();
                if (v83 >= *(v82 + 32))
                {
                  break;
                }

                v84 = *v81;
                *v81 = v79;
                v81[1] = v84;
                --v81;
                v66 = __CFADD__(v80++, 1);
              }

              while (!v66);
              v77 += 8;
              --v76;
            }
          }

          *(v106 + 56) = v99;
          swift_endAccess();
          a3 = v94;
          a1 = v93;
          v6 = v97;
          goto LABEL_95;
        }
      }

LABEL_56:
      swift_beginAccess();
      v46 = *(v44 + 48);
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v46 < 0 || (v46 & 0x4000000000000000) != 0)
      {
        v46 = sub_2486C5DDC(v46);
      }

      v98 = v46;
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = (v46 & 0xFFFFFFFFFFFFFF8) + 32;
      v110 = v48;
      v111 = v47;
      if (v47 >= 0x40)
      {
        v49 = 58 - __clz(v47);
        v50 = -1 << v49;
        v51 = v47 >> v49;
        if ((v47 & ~v50) != 0)
        {
          v52 = v51 + 1;
        }

        else
        {
          v52 = v51;
        }

        if (v52 >= v47)
        {
          goto LABEL_74;
        }

        v53 = v47 >> 1;
        type metadata accessor for FeaturizedEvent();
        v54 = sub_248731290() & 0xFFFFFFFFFFFFFF8;
        *(v54 + 0x10) = v53;
        v107 = v54 + 32;
        v108 = v53;
        sub_2486E72C8(&v107, v109, &v110, v52);
        *(v54 + 16) = 0;
      }

      else if (v47 >= 2)
      {
LABEL_74:
        v57 = -1;
        v58 = v48;
        for (j = 1; j != v47; ++j)
        {
          v60 = *(v48 + 8 * j);
          v61 = v57;
          v62 = v58;
          do
          {
            v63 = *v62;
            swift_beginAccess();
            v64 = *(v60 + 32);
            swift_beginAccess();
            if (v64 >= *(v63 + 32))
            {
              break;
            }

            v65 = *v62;
            *v62 = v60;
            v62[1] = v65;
            --v62;
            v66 = __CFADD__(v61++, 1);
          }

          while (!v66);
          ++v58;
          --v57;
        }
      }

      v44 = v106;
      *(v106 + 48) = v98;
      swift_endAccess();
      v6 = v97;
      goto LABEL_69;
    }

LABEL_22:

    if (++v105 == v103)
    {

      v15 = v12;
      v8 = v88;
      v14 = v89;
      v16 = v90;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t sub_2486E3738(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v5 = *a2;
  swift_beginAccess();
  v49 = v3;
  v6 = *(v3 + 24);
  v46 = v6 + 64;
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v45 = (v7 + 63) >> 6;

  v11 = 0;
  v47 = v6;
  do
  {
LABEL_5:
    if (!v9)
    {
      do
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_66;
        }

        if (v12 >= v45)
        {
        }

        v9 = *(v46 + 8 * v12);
        ++v11;
      }

      while (!v9);
      v11 = v12;
    }

    v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v48 = *(*(v6 + 48) + v13);
    v14 = *(*(v6 + 56) + v13);
    if (v14 >> 62)
    {
      result = sub_248731790();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 &= v9 - 1;
  }

  while (!result);
  if (result < 1)
  {
    goto LABEL_67;
  }

  v53 = result;

  swift_beginAccess();
  swift_beginAccess();
  v15 = 0;
  v16 = __OFSUB__(v48, 1);
  v17 = __OFADD__(v48, 1);
  v50 = v17;
  v51 = v16;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x24C1D7600](v15, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v15 + 32);
    }

    v19 = *(a1 + 24);
    if (*(v19 + 16))
    {
      v20 = sub_2486C9590(v48);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        v23 = *(v49 + 16);
        v54[0] = v5;

        sub_2486E92E4(v24, v54, v23);
      }
    }

    if (!v5)
    {
      goto LABEL_35;
    }

    v25 = sub_248731880();

    if (v25)
    {
      goto LABEL_36;
    }

    if (v5 == 2)
    {
LABEL_35:
    }

    else
    {
      v26 = sub_248731880();

      result = 0xE500000000000000;
      if ((v26 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_36:
    if (v51)
    {
      break;
    }

    v27 = *(a1 + 24);
    if (*(v27 + 16))
    {
      v28 = sub_2486C9590(v48 - 1);
      if (v29)
      {
        v30 = *(*(v27 + 56) + 8 * v28);
        v31 = *(v49 + 16);
        v54[0] = v5;

        sub_2486E92E4(v32, v54, v31);
      }
    }

    if (v5 == 1)
    {
      goto LABEL_43;
    }

    v33 = sub_248731880();

    if (v33)
    {
      goto LABEL_44;
    }

    if (v5)
    {
LABEL_43:

LABEL_44:
      if (v50)
      {
        goto LABEL_65;
      }

      v34 = *(a1 + 24);
      if (*(v34 + 16))
      {
        v35 = sub_2486C9590(v48 + 1);
        if (v36)
        {
          v37 = *(*(v34 + 56) + 8 * v35);
          v38 = *(v49 + 16);
          v54[0] = v5;

          sub_2486E92E4(v39, v54, v38);
        }
      }

      goto LABEL_49;
    }

    v40 = sub_248731880();

    if (v40)
    {
      goto LABEL_44;
    }

LABEL_49:
    if ((a3 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v5 == 1)
    {
      goto LABEL_53;
    }

    v41 = sub_248731880();

    if (v41)
    {
      goto LABEL_54;
    }

    if (v5)
    {
LABEL_53:

LABEL_54:
      swift_beginAccess();
      sub_2486E4550((v18 + 64));
      swift_endAccess();
      goto LABEL_55;
    }

    v44 = sub_248731880();

    if (v44)
    {
      goto LABEL_54;
    }

LABEL_55:
    if (v5)
    {
      v42 = sub_248731880();

      if (v42)
      {
        goto LABEL_22;
      }

      if (v5 != 2)
      {
        v43 = sub_248731880();

        if ((v43 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    swift_beginAccess();
    sub_2486E4550((v18 + 72));
    swift_endAccess();
LABEL_23:
    ++v15;

    if (v53 == v15)
    {

      v6 = v47;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_2486E3E2C()
{
  sub_248731650();
  MEMORY[0x24C1D70A0](0xD000000000000032, 0x800000024873B5B0);
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_248731350();
  MEMORY[0x24C1D70A0](0xD000000000000016, 0x800000024873B5F0);
  swift_beginAccess();
  v17 = *(*(v0 + 24) + 16);
  v2 = sub_248731850();
  MEMORY[0x24C1D70A0](v2);

  v3 = *(v0 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      MEMORY[0x24C1D70A0](41, 0xE100000000000000);

      return 0;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
        v12 = *(*(v3 + 48) + v11);
        v13 = *(*(v3 + 56) + v11);

        sub_248731650();

        v14 = sub_248731850();
        MEMORY[0x24C1D70A0](v14);

        MEMORY[0x24C1D70A0](0x206874697720, 0xE600000000000000);
        if (v13 >> 62)
        {
          sub_248731790();
        }

        else
        {
          v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 &= v6 - 1;

        v16 = sub_248731850();
        MEMORY[0x24C1D70A0](v16);

        MEMORY[0x24C1D70A0](0x7328746E65766520, 0xE900000000000029);
        MEMORY[0x24C1D70A0](0x2079656B202CLL, 0xE600000000000000);
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t FeaturizedEventsByBucketizedTimestamp.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FeaturizedEventsByBucketizedTimestamp.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2486E4188()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_2486E41CC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;
}

uint64_t (*sub_2486E4218())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_2486E426C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2486E42AC(double a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t (*sub_2486E42F8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void *sub_2486E434C@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for FeaturizedEventsByBucketizedTimestamp();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  result = sub_2486D3E98(MEMORY[0x277D84F90]);
  *(v4 + 24) = result;
  *a1 = v4;
  return result;
}

uint64_t sub_2486E43A4(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2486C5DDC(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v23[0] = v4;
  v23[1] = v3;
  result = sub_248731840();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v19 = v2;
      v20 = v1;
      v9 = -1;
      v10 = 1;
      v11 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      do
      {
        v12 = *(v4 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          swift_beginAccess();
          v16 = *(v12 + 32);
          result = swift_beginAccess();
          if (v16 >= *(v15 + 32))
          {
            break;
          }

          v17 = *v14;
          v12 = v14[1];
          *v14 = v12;
          v14[1] = v17;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 8;
        --v9;
      }

      while (v10 != v3);
      v1 = v20;
      v2 = v19;
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for FeaturizedEvent();
      v8 = sub_248731290();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v22[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v22[1] = v7;
    sub_2486E72C8(v22, v21, v23, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_2486E4550(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2486C5DDC(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_2486E7158(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2486E45C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FD8, qword_2487340C0);
  v36 = a2;
  result = sub_2487317C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2486C79A0(v25, v37);
      }

      else
      {
        sub_2486C5B68(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2486C79A0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2486E4880(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6310, &qword_248734740);
  result = sub_2487317C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_248731900();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2486E4AE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F18, &unk_248734720);
  v38 = a2;
  result = sub_2487317C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2486E4D84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FB8, &qword_2487340A8);
  v36 = a2;
  result = sub_2487317C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_2486CD01C(v25, v37);
      }

      else
      {
        sub_2486E8718(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2486CD01C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}