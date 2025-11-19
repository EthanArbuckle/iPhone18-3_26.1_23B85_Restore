uint64_t sub_1D84ECD48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      return OUTLINED_FUNCTION_277_0(result, 2 * (((-a2 >> 3) & 0xF) - 16 * a2));
    }
  }

  return result;
}

uint64_t sub_1D84ECDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_277_0(result, -a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of GameActivityServiceProtocol.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *(OUTLINED_FUNCTION_28(v0, v1, v2, v3) + 8);
  OUTLINED_FUNCTION_54();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);
  OUTLINED_FUNCTION_114_0();

  return v11();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_475();
  v15 = v0;
  OUTLINED_FUNCTION_204();
  v4 = *(OUTLINED_FUNCTION_296(v1, v2, v3) + 16);
  OUTLINED_FUNCTION_130_1();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_12_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 24);
  OUTLINED_FUNCTION_54();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_97(v16);
  *v17 = v18;
  v17[1] = sub_1D8442F30;

  return v20(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_475();
  v15 = v0;
  OUTLINED_FUNCTION_204();
  v4 = *(OUTLINED_FUNCTION_296(v1, v2, v3) + 32);
  OUTLINED_FUNCTION_130_1();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_12_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listGameActivities(game:filters:excludedFilters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v13 = *(v12 + 40);
  v30 = v12 + 40;
  OUTLINED_FUNCTION_130_1();
  v31 = v14 + *v14;
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_97(v17);
  *v18 = v19;
  v18[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_240();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, a11, a12);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_475();
  v15 = v0;
  OUTLINED_FUNCTION_204();
  v4 = *(OUTLINED_FUNCTION_296(v1, v2, v3) + 48);
  OUTLINED_FUNCTION_130_1();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_12_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *(OUTLINED_FUNCTION_28(v0, v1, v2, v3) + 56);
  OUTLINED_FUNCTION_54();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);
  OUTLINED_FUNCTION_114_0();

  return v11();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *(OUTLINED_FUNCTION_28(v0, v1, v2, v3) + 64);
  OUTLINED_FUNCTION_54();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_97(v8);
  *v9 = v10;
  v9[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v11();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *(OUTLINED_FUNCTION_28(v0, v1, v2, v3) + 72);
  OUTLINED_FUNCTION_54();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_97(v8);
  *v9 = v10;
  v9[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v11();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *(OUTLINED_FUNCTION_28(v0, v1, v2, v3) + 80);
  OUTLINED_FUNCTION_54();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);
  OUTLINED_FUNCTION_114_0();

  return v11();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_129_0();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_54();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);
  v8 = OUTLINED_FUNCTION_506();

  return v10(v8);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_129_0();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_54();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);
  v8 = OUTLINED_FUNCTION_506();

  return v10(v8);
}

uint64_t sub_1D84EDAF0()
{
  v1 = MEMORY[0x1E69E6158];
  v2 = OUTLINED_FUNCTION_4_2();
  sub_1D84EE594(v2, v3, v1, v4);
  OUTLINED_FUNCTION_289_0();
  if (!(!v6 & v5))
  {
    v7 = sub_1D8580D78();
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_1D84EDCD8();
      OUTLINED_FUNCTION_289_0();
      if (!(!v6 & v5))
      {
        sub_1D84EE134(319, &qword_1ECA3A078, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_289_0();
        if (!(!v6 & v5))
        {
          v9 = OUTLINED_FUNCTION_4_2();
          sub_1D84EE594(v9, v10, v11, v12);
          OUTLINED_FUNCTION_289_0();
          if (!(!v6 & v5))
          {
            v13 = OUTLINED_FUNCTION_4_2();
            sub_1D84EE594(v13, v14, v15, v16);
            OUTLINED_FUNCTION_289_0();
            if (!(!v6 & v5))
            {
              sub_1D84EE594(319, &qword_1ECA3A088, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
              OUTLINED_FUNCTION_289_0();
              if (!(!v6 & v5))
              {
                OUTLINED_FUNCTION_413();
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1D84EDCD8()
{
  if (!qword_1EE0E0068)
  {
    v0 = sub_1D85811C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0068);
    }
  }
}

void sub_1D84EDD44()
{
  sub_1D84EDDB8();
  if (v0 <= 0x3F)
  {
    sub_1D84EDDE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_1D84EDDB8()
{
  result = qword_1EE0E0150;
  if (!qword_1EE0E0150)
  {
    result = &type metadata for LeaderboardScore;
    atomic_store(&type metadata for LeaderboardScore, &qword_1EE0E0150);
  }

  return result;
}

void sub_1D84EDDE0()
{
  if (!qword_1EE0E0148)
  {
    v0 = type metadata accessor for AchievementProgress();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0148);
    }
  }
}

uint64_t sub_1D84EDE28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_226(*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_226(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_226(-1);
  }
}

uint64_t sub_1D84EDE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_277_0(result, -a2);
    }
  }

  return result;
}

void sub_1D84EDF04()
{
  sub_1D8449F34(319, &qword_1EE0E00A0, &qword_1ECA3A090, &unk_1D859C228);
  if (v0 <= 0x3F)
  {
    sub_1D84EDCD8();
    if (v1 <= 0x3F)
    {
      v2 = MEMORY[0x1E69E6158];
      v3 = OUTLINED_FUNCTION_4_2();
      sub_1D84EE594(v3, v4, v2, v5);
      if (v6 <= 0x3F)
      {
        sub_1D8580EA8();
        if (v7 <= 0x3F)
        {
          sub_1D84EE134(319, &qword_1EE0E02E8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            sub_1D84EE134(319, &qword_1EE0E0050, type metadata accessor for GameActivityRuntimeStat, MEMORY[0x1E69E62F8]);
            if (v9 <= 0x3F)
            {
              sub_1D84EE198();
              if (v10 <= 0x3F)
              {
                sub_1D84EE23C();
                if (v11 <= 0x3F)
                {
                  sub_1D8449F34(319, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
                  if (v12 <= 0x3F)
                  {
                    v13 = OUTLINED_FUNCTION_4_2();
                    sub_1D84EE594(v13, v14, v15, v16);
                    if (v17 <= 0x3F)
                    {
                      OUTLINED_FUNCTION_413();
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
}

void sub_1D84EE134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D84EE198()
{
  if (!qword_1EE0E0030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389B8, &qword_1D8590B30);
    sub_1D848211C(&qword_1EE0E0090);
    v0 = sub_1D8581638();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0030);
    }
  }
}

void sub_1D84EE23C()
{
  if (!qword_1EE0E0070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389B8, &qword_1D8590B30);
    sub_1D848211C(&qword_1EE0E0090);
    v0 = sub_1D85811C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0070);
    }
  }
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_319();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v2;
    v3(0);
    v6 = OUTLINED_FUNCTION_288_1(*(v5 + 20));

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1D84EE390()
{
  type metadata accessor for GameActivityInstance(319);
  if (v0 <= 0x3F)
  {
    v1 = OUTLINED_FUNCTION_4_2();
    sub_1D84EE594(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_413();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D84EE454()
{
  v1 = OUTLINED_FUNCTION_4_2();
  sub_1D84EE594(v1, v2, v3, v4);
  OUTLINED_FUNCTION_289_0();
  if (!(!v6 & v5))
  {
    sub_1D84EE134(319, &qword_1ECA3A098, type metadata accessor for GameActivityInstance, MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    v9 = OUTLINED_FUNCTION_4_2();
    sub_1D84EE594(v9, v10, v11, v12);
    if (v13 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_1D84EDCD8();
      OUTLINED_FUNCTION_289_0();
      if (!(!v6 & v5))
      {
        v14 = OUTLINED_FUNCTION_4_2();
        sub_1D84EE594(v14, v15, v16, v17);
        OUTLINED_FUNCTION_289_0();
        if (!(!v6 & v5))
        {
          OUTLINED_FUNCTION_413();
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1D84EE594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D84EE5E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 11);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 11);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 11);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *sub_1D84EE670(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D84EE740(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameActivityInstance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 18);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 18);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 18);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for GameActivityInstance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 17);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameActivityDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 22);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 22);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 22);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for GameActivityDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 21);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListGamesRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *_s12GameServices18GameActivityFilterO10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D84EED58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D84EEE28()
{
  result = qword_1ECA49770[0];
  if (!qword_1ECA49770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49770);
  }

  return result;
}

unint64_t sub_1D84EEE80()
{
  result = qword_1ECA49980[0];
  if (!qword_1ECA49980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49980);
  }

  return result;
}

unint64_t sub_1D84EEED8()
{
  result = qword_1ECA49B90[0];
  if (!qword_1ECA49B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49B90);
  }

  return result;
}

unint64_t sub_1D84EEF30()
{
  result = qword_1ECA49DA0[0];
  if (!qword_1ECA49DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49DA0);
  }

  return result;
}

unint64_t sub_1D84EEF88()
{
  result = qword_1ECA49FB0[0];
  if (!qword_1ECA49FB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49FB0);
  }

  return result;
}

unint64_t sub_1D84EEFE0()
{
  result = qword_1ECA4A1C0[0];
  if (!qword_1ECA4A1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A1C0);
  }

  return result;
}

unint64_t sub_1D84EF038()
{
  result = qword_1ECA4A3D0[0];
  if (!qword_1ECA4A3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A3D0);
  }

  return result;
}

unint64_t sub_1D84EF090()
{
  result = qword_1ECA4A5E0[0];
  if (!qword_1ECA4A5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A5E0);
  }

  return result;
}

unint64_t sub_1D84EF0E8()
{
  result = qword_1ECA4A7F0[0];
  if (!qword_1ECA4A7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A7F0);
  }

  return result;
}

unint64_t sub_1D84EF140()
{
  result = qword_1ECA4A900[0];
  if (!qword_1ECA4A900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A900);
  }

  return result;
}

unint64_t sub_1D84EF198()
{
  result = qword_1ECA4AA10[0];
  if (!qword_1ECA4AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AA10);
  }

  return result;
}

unint64_t sub_1D84EF1F0()
{
  result = qword_1ECA4AB20[0];
  if (!qword_1ECA4AB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AB20);
  }

  return result;
}

unint64_t sub_1D84EF248()
{
  result = qword_1ECA4AC30[0];
  if (!qword_1ECA4AC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AC30);
  }

  return result;
}

unint64_t sub_1D84EF2A0()
{
  result = qword_1ECA4AD40[0];
  if (!qword_1ECA4AD40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AD40);
  }

  return result;
}

unint64_t sub_1D84EF2F8()
{
  result = qword_1ECA4AE50[0];
  if (!qword_1ECA4AE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AE50);
  }

  return result;
}

unint64_t sub_1D84EF350()
{
  result = qword_1ECA4AF60[0];
  if (!qword_1ECA4AF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AF60);
  }

  return result;
}

unint64_t sub_1D84EF3A8()
{
  result = qword_1ECA4B170[0];
  if (!qword_1ECA4B170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B170);
  }

  return result;
}

unint64_t sub_1D84EF400()
{
  result = qword_1ECA4B380[0];
  if (!qword_1ECA4B380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B380);
  }

  return result;
}

unint64_t sub_1D84EF458()
{
  result = qword_1ECA4B590[0];
  if (!qword_1ECA4B590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B590);
  }

  return result;
}

unint64_t sub_1D84EF4B0()
{
  result = qword_1ECA4B7A0[0];
  if (!qword_1ECA4B7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B7A0);
  }

  return result;
}

unint64_t sub_1D84EF508()
{
  result = qword_1ECA4B9B0[0];
  if (!qword_1ECA4B9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B9B0);
  }

  return result;
}

unint64_t sub_1D84EF560()
{
  result = qword_1ECA4BBC0[0];
  if (!qword_1ECA4BBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4BBC0);
  }

  return result;
}

unint64_t sub_1D84EF5B8()
{
  result = qword_1ECA4BDD0[0];
  if (!qword_1ECA4BDD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4BDD0);
  }

  return result;
}

unint64_t sub_1D84EF610()
{
  result = qword_1ECA4BFE0[0];
  if (!qword_1ECA4BFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4BFE0);
  }

  return result;
}

unint64_t sub_1D84EF668()
{
  result = qword_1ECA4C7F0[0];
  if (!qword_1ECA4C7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4C7F0);
  }

  return result;
}

unint64_t sub_1D84EF6C0()
{
  result = qword_1ECA4CA00[0];
  if (!qword_1ECA4CA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CA00);
  }

  return result;
}

unint64_t sub_1D84EF718()
{
  result = qword_1ECA4CC10[0];
  if (!qword_1ECA4CC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CC10);
  }

  return result;
}

unint64_t sub_1D84EF770()
{
  result = qword_1ECA4CD20;
  if (!qword_1ECA4CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CD20);
  }

  return result;
}

unint64_t sub_1D84EF7C8()
{
  result = qword_1ECA4CD28[0];
  if (!qword_1ECA4CD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CD28);
  }

  return result;
}

unint64_t sub_1D84EF820()
{
  result = qword_1ECA4CDB0;
  if (!qword_1ECA4CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CDB0);
  }

  return result;
}

unint64_t sub_1D84EF878()
{
  result = qword_1ECA4CDB8[0];
  if (!qword_1ECA4CDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CDB8);
  }

  return result;
}

unint64_t sub_1D84EF8D0()
{
  result = qword_1ECA4CE40;
  if (!qword_1ECA4CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CE40);
  }

  return result;
}

unint64_t sub_1D84EF928()
{
  result = qword_1ECA4CE48[0];
  if (!qword_1ECA4CE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CE48);
  }

  return result;
}

unint64_t sub_1D84EF980()
{
  result = qword_1ECA4CED0;
  if (!qword_1ECA4CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CED0);
  }

  return result;
}

unint64_t sub_1D84EF9D8()
{
  result = qword_1ECA4CED8[0];
  if (!qword_1ECA4CED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CED8);
  }

  return result;
}

unint64_t sub_1D84EFA30()
{
  result = qword_1ECA4CF60;
  if (!qword_1ECA4CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CF60);
  }

  return result;
}

unint64_t sub_1D84EFA88()
{
  result = qword_1ECA4CF68[0];
  if (!qword_1ECA4CF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CF68);
  }

  return result;
}

unint64_t sub_1D84EFAE0()
{
  result = qword_1ECA4CFF0;
  if (!qword_1ECA4CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CFF0);
  }

  return result;
}

unint64_t sub_1D84EFB38()
{
  result = qword_1ECA4CFF8[0];
  if (!qword_1ECA4CFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CFF8);
  }

  return result;
}

unint64_t sub_1D84EFB90()
{
  result = qword_1ECA4D080;
  if (!qword_1ECA4D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D080);
  }

  return result;
}

unint64_t sub_1D84EFBE8()
{
  result = qword_1ECA4D088[0];
  if (!qword_1ECA4D088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D088);
  }

  return result;
}

unint64_t sub_1D84EFC40()
{
  result = qword_1ECA4D110;
  if (!qword_1ECA4D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D110);
  }

  return result;
}

unint64_t sub_1D84EFC98()
{
  result = qword_1ECA4D118[0];
  if (!qword_1ECA4D118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D118);
  }

  return result;
}

unint64_t sub_1D84EFCF0()
{
  result = qword_1ECA4D1A0;
  if (!qword_1ECA4D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D1A0);
  }

  return result;
}

unint64_t sub_1D84EFD48()
{
  result = qword_1ECA4D1A8[0];
  if (!qword_1ECA4D1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D1A8);
  }

  return result;
}

unint64_t sub_1D84EFDA0()
{
  result = qword_1ECA4D230;
  if (!qword_1ECA4D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D230);
  }

  return result;
}

unint64_t sub_1D84EFDF8()
{
  result = qword_1ECA4D238[0];
  if (!qword_1ECA4D238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D238);
  }

  return result;
}

unint64_t sub_1D84EFE50()
{
  result = qword_1ECA4D2C0;
  if (!qword_1ECA4D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D2C0);
  }

  return result;
}

unint64_t sub_1D84EFEA8()
{
  result = qword_1ECA4D2C8[0];
  if (!qword_1ECA4D2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D2C8);
  }

  return result;
}

unint64_t sub_1D84EFF00()
{
  result = qword_1ECA4D350;
  if (!qword_1ECA4D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D350);
  }

  return result;
}

unint64_t sub_1D84EFF58()
{
  result = qword_1ECA4D358[0];
  if (!qword_1ECA4D358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D358);
  }

  return result;
}

unint64_t sub_1D84EFFB0()
{
  result = qword_1ECA4D3E0;
  if (!qword_1ECA4D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D3E0);
  }

  return result;
}

unint64_t sub_1D84F0008()
{
  result = qword_1ECA4D3E8[0];
  if (!qword_1ECA4D3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D3E8);
  }

  return result;
}

unint64_t sub_1D84F0060()
{
  result = qword_1ECA4D470;
  if (!qword_1ECA4D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D470);
  }

  return result;
}

unint64_t sub_1D84F00B8()
{
  result = qword_1ECA4D478;
  if (!qword_1ECA4D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D478);
  }

  return result;
}

unint64_t sub_1D84F0110()
{
  result = qword_1ECA4D500;
  if (!qword_1ECA4D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D500);
  }

  return result;
}

unint64_t sub_1D84F0168()
{
  result = qword_1ECA4D508[0];
  if (!qword_1ECA4D508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D508);
  }

  return result;
}

unint64_t sub_1D84F01C0()
{
  result = qword_1ECA4D590;
  if (!qword_1ECA4D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D590);
  }

  return result;
}

unint64_t sub_1D84F0218()
{
  result = qword_1ECA4D598[0];
  if (!qword_1ECA4D598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D598);
  }

  return result;
}

unint64_t sub_1D84F0270()
{
  result = qword_1ECA4D620;
  if (!qword_1ECA4D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D620);
  }

  return result;
}

unint64_t sub_1D84F02C8()
{
  result = qword_1ECA4D628[0];
  if (!qword_1ECA4D628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D628);
  }

  return result;
}

unint64_t sub_1D84F0320()
{
  result = qword_1EE0E1190;
  if (!qword_1EE0E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1190);
  }

  return result;
}

unint64_t sub_1D84F0378()
{
  result = qword_1EE0E1198;
  if (!qword_1EE0E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1198);
  }

  return result;
}

unint64_t sub_1D84F03D0()
{
  result = qword_1ECA4D6B0;
  if (!qword_1ECA4D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D6B0);
  }

  return result;
}

unint64_t sub_1D84F0428()
{
  result = qword_1ECA4D6B8[0];
  if (!qword_1ECA4D6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D6B8);
  }

  return result;
}

unint64_t sub_1D84F0480()
{
  result = qword_1ECA4D740;
  if (!qword_1ECA4D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D740);
  }

  return result;
}

unint64_t sub_1D84F04D8()
{
  result = qword_1ECA4D748[0];
  if (!qword_1ECA4D748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D748);
  }

  return result;
}

unint64_t sub_1D84F0530()
{
  result = qword_1ECA4D7D0;
  if (!qword_1ECA4D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D7D0);
  }

  return result;
}

unint64_t sub_1D84F0588()
{
  result = qword_1ECA4D7D8[0];
  if (!qword_1ECA4D7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D7D8);
  }

  return result;
}

unint64_t sub_1D84F05E0()
{
  result = qword_1ECA4D860;
  if (!qword_1ECA4D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D860);
  }

  return result;
}

unint64_t sub_1D84F0638()
{
  result = qword_1ECA4D868[0];
  if (!qword_1ECA4D868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D868);
  }

  return result;
}

unint64_t sub_1D84F0690()
{
  result = qword_1ECA4D8F0;
  if (!qword_1ECA4D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D8F0);
  }

  return result;
}

unint64_t sub_1D84F06E8()
{
  result = qword_1ECA4D8F8[0];
  if (!qword_1ECA4D8F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D8F8);
  }

  return result;
}

unint64_t sub_1D84F0740()
{
  result = qword_1ECA4D980;
  if (!qword_1ECA4D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D980);
  }

  return result;
}

unint64_t sub_1D84F0798()
{
  result = qword_1ECA4D988[0];
  if (!qword_1ECA4D988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D988);
  }

  return result;
}

unint64_t sub_1D84F07F0()
{
  result = qword_1ECA4DA10;
  if (!qword_1ECA4DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4DA10);
  }

  return result;
}

unint64_t sub_1D84F0848()
{
  result = qword_1ECA4DA18[0];
  if (!qword_1ECA4DA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DA18);
  }

  return result;
}

unint64_t sub_1D84F08A0()
{
  result = qword_1ECA4DAA0;
  if (!qword_1ECA4DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4DAA0);
  }

  return result;
}

unint64_t sub_1D84F08F8()
{
  result = qword_1ECA4DAA8[0];
  if (!qword_1ECA4DAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DAA8);
  }

  return result;
}

unint64_t sub_1D84F0950()
{
  result = qword_1ECA4DB30;
  if (!qword_1ECA4DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4DB30);
  }

  return result;
}

unint64_t sub_1D84F09A8()
{
  result = qword_1ECA4DB38[0];
  if (!qword_1ECA4DB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DB38);
  }

  return result;
}

unint64_t sub_1D84F09FC()
{
  result = qword_1EE0E0620;
  if (!qword_1EE0E0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0620);
  }

  return result;
}

unint64_t sub_1D84F0A50()
{
  result = qword_1ECA3A0A8;
  if (!qword_1ECA3A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A0A8);
  }

  return result;
}

unint64_t sub_1D84F0AA4()
{
  result = qword_1ECA3A0B0;
  if (!qword_1ECA3A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A0B0);
  }

  return result;
}

unint64_t sub_1D84F0AF8()
{
  result = qword_1ECA3A0B8;
  if (!qword_1ECA3A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A0B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

unint64_t OUTLINED_FUNCTION_46_0(uint64_t a1)
{

  return sub_1D84C49BC(a1);
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_1D8581A58();
}

uint64_t OUTLINED_FUNCTION_92_0()
{
  v2 = *(v0 - 272);

  return sub_1D8581878();
}

uint64_t OUTLINED_FUNCTION_101_0()
{
  v2 = *(v0 - 128);

  return sub_1D8581988();
}

unint64_t OUTLINED_FUNCTION_102_1(uint64_t a1)
{

  return sub_1D843D7B8(a1);
}

unint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{

  return sub_1D84BB220(a1);
}

__n128 OUTLINED_FUNCTION_109_0()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_150_1()
{
  v1 = *(*(v0 - 216) + 8);
  v3 = *(v0 - 184);
  return *(v0 - 176);
}

void OUTLINED_FUNCTION_167_0(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 260) = a1;
  *(v2 - 72) = a1;
}

uint64_t OUTLINED_FUNCTION_173_0()
{

  return sub_1D8581878();
}

void OUTLINED_FUNCTION_176_1()
{
  *(v0 - 552) = 0;
  *(v0 - 520) = 0;
  *(v0 - 584) = 0;
  *(v0 - 576) = 0;
  *(v0 - 568) = 0;
  *(v0 - 560) = 0;
  *(v0 - 528) = 0;
  *(v0 - 512) = 0;
  *(v0 - 288) = 0;
  *(v0 - 272) = 0;
}

uint64_t OUTLINED_FUNCTION_207_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
  v5 = (v2 + *(v3 + 72));
  v6 = *(v4 - 368);
  *v5 = *(v4 - 360);
  v5[1] = v6;
  v7 = *(*(v4 - 320) + 16);
  return v2 + *(v3 + 36);
}

uint64_t OUTLINED_FUNCTION_208_1()
{
  v2 = *(v0 - 96);

  return sub_1D8581878();
}

uint64_t OUTLINED_FUNCTION_211_0@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

void OUTLINED_FUNCTION_229_2(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

void OUTLINED_FUNCTION_268_1(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = -1;
}

uint64_t OUTLINED_FUNCTION_271_1()
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_329_0()
{
  v1 = *(*(v0 - 320) + 8);
  result = *(v0 - 328);
  v3 = *(v0 - 312);
  return result;
}

void OUTLINED_FUNCTION_330_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 216) = v8;
  *(v9 - 256) = a7;
  *(v9 - 248) = a8;
  *(v9 - 264) = a6;
  *(v9 - 272) = a4;
  *(v9 - 208) = a2;
}

uint64_t OUTLINED_FUNCTION_339_0()
{
  v1 = *(*(v0 - 376) + 8);
  result = *(v0 - 384);
  v3 = *(v0 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_347_0()
{
  v2 = *(v0 - 168);
  *(v0 - 360) = *(v0 - 176);
  *(v0 - 368) = v2;
  v3 = *(v0 - 328);

  return sub_1D8580E98();
}

uint64_t OUTLINED_FUNCTION_350_0()
{

  return sub_1D85811E8();
}

uint64_t OUTLINED_FUNCTION_351_0()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 176);

  return sub_1D8581958();
}

void OUTLINED_FUNCTION_357_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_359_0@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

void OUTLINED_FUNCTION_363_0()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v1;
  v3 = *(v2 - 384);
}

uint64_t OUTLINED_FUNCTION_374_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 88);
  v4 = *(v2 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_377_0()
{

  return sub_1D8581BB8();
}

unint64_t OUTLINED_FUNCTION_382_0(uint64_t a1)
{

  return sub_1D84C49BC(a1);
}

void OUTLINED_FUNCTION_384_0(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 256);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t OUTLINED_FUNCTION_387_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_390_0()
{
  result = *(v0 - 216);
  v2 = *(*(v0 - 208) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_396_0()
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_402_0()
{
  v1 = *(v0 - 152);
  *(v0 - 176) = *(v0 - 160);
  *(v0 - 168) = v1;
}

uint64_t OUTLINED_FUNCTION_417_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = *v3;
  v5 = v3[1];
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_420_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  v4 = v2[10];
  result = v2[7];
  v6 = v2[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_425_0()
{

  return sub_1D8581B78();
}

uint64_t OUTLINED_FUNCTION_426_0()
{

  return sub_1D8581B78();
}

uint64_t OUTLINED_FUNCTION_427_0()
{
  v2 = *(v0 - 528);
}

uint64_t OUTLINED_FUNCTION_433_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_436_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);

  return sub_1D84EB9AC(v5, v6, v7);
}

char *OUTLINED_FUNCTION_437_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;

  return sub_1D84E8374(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_439_0()
{

  return sub_1D847C204();
}

void *OUTLINED_FUNCTION_440_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_441_0()
{

  return sub_1D8580D68();
}

uint64_t OUTLINED_FUNCTION_442_0()
{
}

uint64_t OUTLINED_FUNCTION_446_0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v1 - 416) = v3;
  *(v1 - 400) = v4;
}

uint64_t OUTLINED_FUNCTION_449_0()
{
  v2 = *(v0 - 136);
  *(v0 - 144) = *(v0 - 144);
  *(v0 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_452_0()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
}

uint64_t OUTLINED_FUNCTION_453_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_455_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[11] = a1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_467_0()
{
}

void OUTLINED_FUNCTION_470_0()
{
  v2 = *(v0 - 216);
  v1 = *(v0 - 208);
  v3 = *(v0 - 224);
}

uint64_t OUTLINED_FUNCTION_472_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_473_0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_494_0@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_495_0(uint64_t result)
{
  v3 = *(*(v2 - 96) + 16);
  v4 = v1 + *(result + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_498_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = v9;
  v11 = *(v10 + 48);
  return a9;
}

uint64_t OUTLINED_FUNCTION_503_0()
{
  result = *(v0 - 216);
  v2 = *(*(v0 - 208) + 8);
  v3 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_507_0(uint64_t a1)
{
  v1 = *(type metadata accessor for DefaultGameActivityEnvironment(a1) + 20);

  return sub_1D8580D78();
}

void OUTLINED_FUNCTION_509_0()
{
  v2 = *(v0 - 280);

  Ref<A>.init(internalID:)();
}

uint64_t OUTLINED_FUNCTION_513_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + *(v2 + 60)) = a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);

  return sub_1D84EB9AC(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_516_0()
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_519_0()
{
  v2 = *(v0 - 104);

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_520_0()
{
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
}

uint64_t OUTLINED_FUNCTION_521_0()
{
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
}

uint64_t OUTLINED_FUNCTION_524_0()
{

  return sub_1D85811E8();
}

uint64_t OUTLINED_FUNCTION_525_0()
{

  return sub_1D85811E8();
}

uint64_t OUTLINED_FUNCTION_526_0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return sub_1D84EB9AC(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_527_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_528()
{

  return sub_1D84EC2E4();
}

uint64_t sub_1D84F1F10(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8581268();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (!a2)
  {
    return 0;
  }

  v5 = sub_1D8580DC8();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    return 0;
  }

  sub_1D8581258();
  v8 = sub_1D8581248();
  v10 = v9;
  sub_1D8443C38(v5, v7);
  if (!v10)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_1D84F1FF4(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D84F2068(a1, a2);
  v6 = v5;
  v7 = sub_1D8580E38();
  sub_1D843F6E8(v4, v6);
  return v7;
}

uint64_t sub_1D84F2068(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A100, &qword_1D859ED90);
  if (swift_dynamicCast())
  {
    sub_1D84F2D50(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_1D8580D08();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1D84F2560(v35);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D85817D8();
  }

  sub_1D84F25C8(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x1DA718480](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  v10 = sub_1D84F26E4(sub_1D84F2D34);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1D8580DE8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_1D84F2C80(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1D8581328();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1D8581358();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1D85817D8();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_1D84F2C80(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_1D8581338();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_1D8580E08();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_1D8580E08();
    sub_1D8443C38(v34, v6);
    goto LABEL_58;
  }

  sub_1D8443C38(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_1D843DDD8(*&v35[0], *(&v35[0] + 1));

  sub_1D843F6E8(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1D84F2560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A108, &qword_1D859ED98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D84F25C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D8580D88();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1D8580CC8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1D8580C88();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D8580DD8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1D84F2690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1D84F2B68(sub_1D84F2DA8, v5, a1, a2);
}

uint64_t sub_1D84F26E4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D843F6E8(v6, v5);
      *v4 = xmmword_1D859ED80;
      sub_1D843F6E8(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1D8580C98() && __OFSUB__(v6, sub_1D8580CB8()))
      {
        goto LABEL_24;
      }

      v13 = sub_1D8580CC8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1D8580C78();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1D84F2BCC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D843F6E8(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1D859ED80;
      sub_1D843F6E8(0, 0xC000000000000000);
      sub_1D8580D98();
      v6 = v20;
      v9 = sub_1D84F2BCC(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1D843F6E8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1D84F2AA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1D8580D88();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1DA718430]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1DA718440]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1D84F2B20(uint64_t result)
{
  if (result)
  {
    result = sub_1D8581778();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D84F2B68(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1D84F2BCC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D8580C98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D8580CB8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D8580CA8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1D84F2C80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D8581368();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA7189D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_1D84F2CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1D84F2690(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1D84F2D50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D84F2D68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1D84F2B20(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t static GameServicesError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_434(a1, a2);
  switch(v8)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_25;
      }

      v112[0] = v3;
      v28 = OUTLINED_FUNCTION_138();
      sub_1D84EBA88(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_133();
      sub_1D84EBA88(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_138();
      sub_1D84EBA88(v34, v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
      if (OUTLINED_FUNCTION_28_2())
      {
        v38 = v114;
        v37 = v115;
        v39 = v116;
        v112[0] = v5;
        MEMORY[0x1DA719660](v5);
        if (OUTLINED_FUNCTION_28_2())
        {
          v40 = v114;
          v41 = v115;
          v110 = v116;
          v112[0] = v114;
          v112[1] = v115;
          v113 = v116;
          v42 = static GameServicesInternalError.== infix(_:_:)(&v114, v112);
          v43 = OUTLINED_FUNCTION_138();
          sub_1D84F31AC(v43, v44, v45);
          v46 = OUTLINED_FUNCTION_133();
          sub_1D84F31AC(v46, v47, v48);
          sub_1D84F31EC(v40, v41, v110);
          sub_1D84F31EC(v38, v37, v39);
          return v42 & 1;
        }

        sub_1D84F31EC(v114, v115, v116);
      }

      v87 = sub_1D8580D28();
      v88 = sub_1D8580D28();
      v89 = [v87 domain];
      v90 = sub_1D8581228();
      v92 = v91;

      v111 = v88;
      v93 = [v88 domain];
      v94 = sub_1D8581228();
      v96 = v95;

      if (v90 == v94 && v92 == v96)
      {
      }

      else
      {
        v98 = sub_1D8581AB8();

        if ((v98 & 1) == 0)
        {

          v99 = OUTLINED_FUNCTION_138();
          sub_1D84F31AC(v99, v100, v101);
          v65 = OUTLINED_FUNCTION_133();
          goto LABEL_26;
        }
      }

      v102 = [v87 code];
      v103 = [v111 code];

      v104 = OUTLINED_FUNCTION_138();
      sub_1D84F31AC(v104, v105, v106);
      v107 = OUTLINED_FUNCTION_133();
      sub_1D84F31AC(v107, v108, v109);
      v42 = v102 == v103;
      return v42 & 1;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_25;
      }

      if (v3 != v5 || v2 != v4)
      {
        OUTLINED_FUNCTION_13_1();
        v50 = OUTLINED_FUNCTION_7_3();
        sub_1D84EBA88(v50, v51, 2);
        v52 = OUTLINED_FUNCTION_141();
        sub_1D84EBA88(v52, v53, v54);
        v55 = OUTLINED_FUNCTION_141();
        sub_1D84F31AC(v55, v56, v57);
        v18 = OUTLINED_FUNCTION_183();
        v20 = 2;
        goto LABEL_24;
      }

      sub_1D84EBA88(v3, v2, 2);
      v75 = OUTLINED_FUNCTION_141();
      sub_1D84EBA88(v75, v76, v77);
      v78 = OUTLINED_FUNCTION_141();
      sub_1D84F31AC(v78, v79, v80);
      v72 = OUTLINED_FUNCTION_141();
      goto LABEL_32;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_25;
      }

      if (v3 != v5 || v2 != v4)
      {
        OUTLINED_FUNCTION_13_1();
        v22 = OUTLINED_FUNCTION_7_3();
        v24 = OUTLINED_FUNCTION_3_5(v22, v23, 3);
        v26 = OUTLINED_FUNCTION_3_5(v24, v25, 3);
        sub_1D84F31AC(v26, v27, 3);
        v18 = OUTLINED_FUNCTION_183();
        v20 = 3;
        goto LABEL_24;
      }

      v68 = OUTLINED_FUNCTION_3_5(v3, v2, 3);
      v70 = OUTLINED_FUNCTION_3_5(v68, v69, 3);
      sub_1D84F31AC(v70, v71, 3);
      v72 = OUTLINED_FUNCTION_140();
      goto LABEL_32;
    case 4:
      goto LABEL_25;
    default:
      if (v7)
      {
LABEL_25:
        v59 = OUTLINED_FUNCTION_183();
        v61 = OUTLINED_FUNCTION_3_5(v59, v60, v7);
        v63 = OUTLINED_FUNCTION_3_5(v61, v62, v6);
        sub_1D84F31AC(v63, v64, v6);
        v65 = OUTLINED_FUNCTION_183();
        v67 = v7;
LABEL_26:
        sub_1D84F31AC(v65, v66, v67);
        v42 = 0;
        return v42 & 1;
      }

      if (v3 == v5 && v2 == v4)
      {
        sub_1D84EBA88(v3, v2, 0);
        v81 = OUTLINED_FUNCTION_139();
        sub_1D84EBA88(v81, v82, v83);
        v84 = OUTLINED_FUNCTION_139();
        sub_1D84F31AC(v84, v85, v86);
        v72 = OUTLINED_FUNCTION_139();
LABEL_32:
        sub_1D84F31AC(v72, v73, v74);
        v42 = 1;
        return v42 & 1;
      }

      OUTLINED_FUNCTION_13_1();
      v10 = OUTLINED_FUNCTION_7_3();
      sub_1D84EBA88(v10, v11, 0);
      v12 = OUTLINED_FUNCTION_139();
      sub_1D84EBA88(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_139();
      sub_1D84F31AC(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_183();
      v20 = 0;
LABEL_24:
      sub_1D84F31AC(v18, v19, v20);
      return v6 & 1;
  }
}

uint64_t sub_1D84F31AC(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 2:
    case 3:

      break;
    case 1:
      JUMPOUT(0x1DA719650);
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84F31EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t GameServicesError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 == 3)
  {
    v3 = *(v0 + 8);
  }

  else
  {
    v5 = *v0;
    sub_1D84EBA88(v1, *(v0 + 8), v2);
    return sub_1D8581278();
  }

  return v1;
}

uint64_t static GameServicesInternalError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_434(a1, a2);
  switch(v8)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_35;
      }

      if (v3 != v5 || v2 != v4)
      {
        v6 = OUTLINED_FUNCTION_13_1();
        v40 = OUTLINED_FUNCTION_133();
        sub_1D84F34C8(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_138();
        sub_1D84F34C8(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_138();
        sub_1D84F31EC(v46, v47, v48);
        v18 = OUTLINED_FUNCTION_133();
        goto LABEL_30;
      }

      v35 = 1;
      v64 = OUTLINED_FUNCTION_138();
      sub_1D84F34C8(v64, v65, v66);
      v67 = OUTLINED_FUNCTION_138();
      sub_1D84F34C8(v67, v68, v69);
      v70 = OUTLINED_FUNCTION_138();
      sub_1D84F31EC(v70, v71, v72);
      v36 = OUTLINED_FUNCTION_138();
      goto LABEL_38;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_35;
      }

      if (v3 != v5 || v2 != v4)
      {
        OUTLINED_FUNCTION_13_1();
        v22 = OUTLINED_FUNCTION_7_3();
        sub_1D84F34C8(v22, v23, 2u);
        v24 = OUTLINED_FUNCTION_141();
        sub_1D84F34C8(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_141();
        sub_1D84F31EC(v27, v28, v29);
        v18 = OUTLINED_FUNCTION_183();
        v20 = 2;
        goto LABEL_30;
      }

      sub_1D84F34C8(v3, v2, 2u);
      v55 = OUTLINED_FUNCTION_141();
      sub_1D84F34C8(v55, v56, v57);
      v58 = OUTLINED_FUNCTION_141();
      sub_1D84F31EC(v58, v59, v60);
      v61 = OUTLINED_FUNCTION_141();
      goto LABEL_41;
    case 3:
      if (v3 | v2)
      {
        if (v7 != 3 || v5 != 1 || v4 != 0)
        {
LABEL_35:
          v51 = OUTLINED_FUNCTION_183();
          sub_1D84F34C8(v51, v52, v7);
          sub_1D84F34C8(v3, v2, v6);
          sub_1D84F31EC(v3, v2, v6);
          v53 = OUTLINED_FUNCTION_183();
          sub_1D84F31EC(v53, v54, v7);
          return 0;
        }

        v32 = OUTLINED_FUNCTION_140();
        sub_1D84F31EC(v32, v33, v34);
        v35 = 1;
        v36 = 1;
        v37 = 0;
        v38 = 3;
LABEL_38:
        sub_1D84F31EC(v36, v37, v38);
      }

      else
      {
        if (v7 != 3 || (v4 | v5) != 0)
        {
          goto LABEL_35;
        }

        v73 = OUTLINED_FUNCTION_140();
        sub_1D84F31EC(v73, v74, v75);
        v61 = 0;
        v62 = 0;
        v63 = 3;
LABEL_41:
        sub_1D84F31EC(v61, v62, v63);
        return 1;
      }

      return v35;
    default:
      if (v7)
      {
        goto LABEL_35;
      }

      if (v3 == v5 && v2 == v4)
      {
        sub_1D84F34C8(v3, v2, 0);
        v76 = OUTLINED_FUNCTION_139();
        sub_1D84F34C8(v76, v77, v78);
        v79 = OUTLINED_FUNCTION_139();
        sub_1D84F31EC(v79, v80, v81);
        v61 = OUTLINED_FUNCTION_139();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_13_1();
      v10 = OUTLINED_FUNCTION_7_3();
      sub_1D84F34C8(v10, v11, 0);
      v12 = OUTLINED_FUNCTION_139();
      sub_1D84F34C8(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_139();
      sub_1D84F31EC(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_183();
      v20 = 0;
LABEL_30:
      sub_1D84F31EC(v18, v19, v20);
      return v6 & 1;
  }
}

uint64_t sub_1D84F34C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D84F34E4()
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  result = swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  qword_1EE0E11B8 = result;
  unk_1EE0E11C0 = 0;
  byte_1EE0E11C8 = 1;
  return result;
}

uint64_t *sub_1D84F3530()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_11_1();
  }

  return &qword_1EE0E11B8;
}

uint64_t static GameServicesError.notYetImplemented.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_11_1();
  }

  v0 = OUTLINED_FUNCTION_17_2(&qword_1EE0E11B8);

  return sub_1D84EBA88(v0, v1, v2);
}

double sub_1D84F35CC()
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_allocError();
  *&result = 1;
  *v2 = xmmword_1D859EDA0;
  *(v2 + 16) = 3;
  qword_1EE0E11D0 = v0;
  *algn_1EE0E11D8 = 0;
  byte_1EE0E11E0 = 1;
  return result;
}

uint64_t *sub_1D84F3620()
{
  if (qword_1EE0E11A8 != -1)
  {
    OUTLINED_FUNCTION_15_2();
  }

  return &qword_1EE0E11D0;
}

uint64_t static GameServicesError.deprecated.getter()
{
  if (qword_1EE0E11A8 != -1)
  {
    OUTLINED_FUNCTION_15_2();
  }

  v0 = OUTLINED_FUNCTION_17_2(&qword_1EE0E11D0);

  return sub_1D84EBA88(v0, v1, v2);
}

double sub_1D84F36BC()
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_allocError();
  result = 1.9491968e243;
  *v2 = xmmword_1D859EDB0;
  *(v2 + 16) = 1;
  qword_1EE0E11E8 = v0;
  unk_1EE0E11F0 = 0;
  byte_1EE0E11F8 = 1;
  return result;
}

uint64_t *sub_1D84F370C()
{
  if (qword_1EE0E11B0 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  return &qword_1EE0E11E8;
}

uint64_t static GameServicesError.testError.getter()
{
  if (qword_1EE0E11B0 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v0 = OUTLINED_FUNCTION_17_2(&qword_1EE0E11E8);

  return sub_1D84EBA88(v0, v1, v2);
}

uint64_t static GameServicesError.illegalCast<A, B>(from:to:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D8581768();

  v2 = sub_1D8581C28();
  MEMORY[0x1DA718990](v2);

  MEMORY[0x1DA718990](0x203A6F7420, 0xE500000000000000);
  v3 = sub_1D8581C28();
  MEMORY[0x1DA718990](v3);

  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  result = swift_allocError();
  *v5 = 0xD000000000000013;
  *(v5 + 8) = 0x80000001D8586920;
  *(v5 + 16) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

unint64_t sub_1D84F38A0()
{
  result = qword_1ECA3A110;
  if (!qword_1ECA3A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A110);
  }

  return result;
}

uint64_t static GameServicesError.illegalState(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v6 = swift_allocError();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = 1;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
}

uint64_t static GameServicesError.invalidReference<A>(ref:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 2;
}

uint64_t static GameServicesError.unexpectedStatusFromService(_:message:)()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_21_2();
  sub_1D8581768();
  v12 = v10;
  MEMORY[0x1DA718990](0xD000000000000013, 0x80000001D8586940);
  sub_1D84F3AD4(v2, &v8);
  if (v9)
  {
    sub_1D84F3B44(&v8, &v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E6158];
    *&v10 = 7104878;
    *(&v10 + 1) = 0xE300000000000000;
  }

  sub_1D85817E8();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  MEMORY[0x1DA718990](0xD000000000000018, 0x80000001D8586960);
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v1 = 7104878;
    v3 = 0xE300000000000000;
  }

  MEMORY[0x1DA718990](v1, v3);

  v4 = v12;
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v5 = swift_allocError();
  *v6 = v4;
  return OUTLINED_FUNCTION_8_0(v5, v6);
}

uint64_t sub_1D84F3AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A118, &qword_1D859EDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1D84F3B44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static GameServicesError.unexpectedResponseFromService(_:context:)()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_21_2();
  sub_1D8581768();
  v13 = v12[0];
  MEMORY[0x1DA718990](0xD000000000000015, 0x80000001D8586980);
  sub_1D84F3AD4(v1, &v10);
  if (v11)
  {
    sub_1D84F3B44(&v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  sub_1D85817E8();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v2 = OUTLINED_FUNCTION_18_0();
  MEMORY[0x1DA718990](v2);
  if (v0)
  {
    *&v12[0] = 0x7865746E6F63202CLL;
    *(&v12[0] + 1) = 0xEB00000000203A74;
    v3 = OUTLINED_FUNCTION_183();
    MEMORY[0x1DA718990](v3);
    v5 = *(&v12[0] + 1);
    v4 = *&v12[0];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1DA718990](v4, v5);

  v6 = v13;
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v7 = swift_allocError();
  *v8 = v6;
  return OUTLINED_FUNCTION_8_0(v7, v8);
}

uint64_t static GameServicesError.unexpectedValueFromService(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_21_2();
  sub_1D8581768();
  v10 = v9[0];
  MEMORY[0x1DA718990](0xD000000000000012, 0x80000001D85869A0);
  sub_1D84F3AD4(a1, &v7);
  if (v8)
  {
    sub_1D84F3B44(&v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  sub_1D85817E8();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v2 = OUTLINED_FUNCTION_18_0();
  MEMORY[0x1DA718990](v2);
  v3 = v10;
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v4 = swift_allocError();
  *v5 = v3;
  return OUTLINED_FUNCTION_8_0(v4, v5);
}

uint64_t static GameServicesError.validateCount(foundCount:expectedCount:)(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    sub_1D8581768();
    v2 = sub_1D8581A88();
    v4 = v3;

    MEMORY[0x1DA718990](0x7720646E756F6620, 0xEC000000206E6568);
    v5 = sub_1D8581A88();
    MEMORY[0x1DA718990](v5);

    MEMORY[0x1DA718990](0x7865206572657720, 0xEE00646574636570);
    sub_1D8448448();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    sub_1D84F38A0();
    OUTLINED_FUNCTION_10_0();
    v6 = swift_allocError();
    *v7 = v2;
    v7[1] = v4;
    OUTLINED_FUNCTION_8_0(v6, v7);
    return swift_willThrow();
  }

  return result;
}

unint64_t GameServicesError.errorKey.getter()
{
  result = 0x416C6167656C6C69;
  switch(*(v0 + 16))
  {
    case 1:
      result = 0x6C616E7265746E69;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F72724572657375;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1D84F3FB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_12_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v12 = v11 - v10;
  DynamicType = swift_getDynamicType();
  swift_getErrorValue();
  v14 = swift_getDynamicType();
  result = 0;
  if (DynamicType == v14)
  {
    (*(v6 + 16))(v12, v3, a2);
    v16 = sub_1D8581A98();
    if (v16)
    {
      v17 = v16;
      (*(v6 + 8))(v12, a2);
    }

    else
    {
      OUTLINED_FUNCTION_10_0();
      v17 = swift_allocError();
      (*(v6 + 32))(v18, v12, a2);
    }

    v19 = sub_1D8580D28();
    MEMORY[0x1DA719650](v17);
    v20 = [v19 code];

    v21 = sub_1D8580D28();
    v22 = [v21 code];

    return v20 == v22;
  }

  return result;
}

BOOL Error.shallowEquals(_:)()
{
  OUTLINED_FUNCTION_25_2();
  v2 = v1;
  if (qword_1EE0E11B0 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v3 = qword_1EE0E11E8;
  v4 = unk_1EE0E11F0;
  v5 = byte_1EE0E11F8;
  sub_1D8448448();
  OUTLINED_FUNCTION_10_0();
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  sub_1D84EBA88(v3, v4, v5);
  v8 = v2(v6);
  MEMORY[0x1DA719650](v6);
  v9 = sub_1D84F3FB4(v8, v0);
  MEMORY[0x1DA719650](v8);
  return v9;
}

{
  OUTLINED_FUNCTION_25_2();
  v2 = v1(0x7272452074736554, 0xEA0000000000726FLL);
  v3 = sub_1D84F3FB4(v2, v0);
  MEMORY[0x1DA719650](v2);
  return v3;
}

uint64_t sub_1D84F42C8(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  sub_1D85810A8();
  OUTLINED_FUNCTION_12_1();
  v78 = v4;
  v79 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_12_1();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v73 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v73 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v73 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v73 - v27;
  v81 = v11;
  v31 = *(v11 + 16);
  v29 = v11 + 16;
  v30 = v31;
  OUTLINED_FUNCTION_26_0();
  v31();
  if (OUTLINED_FUNCTION_29_2())
  {
    v32 = v84;
    v33 = v85;
    v34 = v86;
    if (v86 == 1)
    {
      swift_getErrorValue();
      v35 = v82;
      v36 = v83;
      MEMORY[0x1DA719660](v32);
      v37 = sub_1D84F42C8(v35, v36);
      sub_1D8448448();
      OUTLINED_FUNCTION_10_0();
      v38 = swift_allocError();
      *v39 = v37;
      *(v39 + 8) = 0;
      *(v39 + 16) = 1;
      sub_1D84F31AC(v32, v33, 1);
      sub_1D84F31AC(v32, v33, 1);
      v29 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_26_0();
      v30();
      v42 = sub_1D8581A98();
      if (v42)
      {
        v38 = v42;
        OUTLINED_FUNCTION_14_2();
        v43(v26, a1);
      }

      else
      {
        OUTLINED_FUNCTION_10_0();
        v38 = swift_allocError();
        v61 = OUTLINED_FUNCTION_16_3(v38, v60);
        v62(v61, v26, a1);
      }

      sub_1D84F31AC(v32, v33, v34);
    }
  }

  else if (OUTLINED_FUNCTION_29_2())
  {
    if (v86 <= 2u)
    {
      sub_1D84F31EC(v84, v85, v86);
    }

    OUTLINED_FUNCTION_26_0();
    v30();
    v40 = sub_1D8581A98();
    if (v40)
    {
      v38 = v40;
      OUTLINED_FUNCTION_14_2();
      v41(v23, a1);
    }

    else
    {
      OUTLINED_FUNCTION_10_0();
      v38 = swift_allocError();
      v58 = OUTLINED_FUNCTION_16_3(v38, v57);
      v59(v58, v23, a1);
    }
  }

  else
  {
    v44 = sub_1D84F48AC(a1);
    v45 = sub_1D84355A0();
    v46 = v78;
    (*(v78 + 16))(v9, v45, v79);
    OUTLINED_FUNCTION_26_0();
    v30();
    v47 = v44;
    v48 = sub_1D8581088();
    v76 = v9;
    v49 = v48;
    v50 = sub_1D8581678();
    v77 = v47;

    v75 = v50;
    v51 = v50;
    v52 = v49;
    if (os_log_type_enabled(v49, v51))
    {
      v53 = v76;
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v54 = 138412546;
      (v30)(v17, v20, a1);
      v29 = v80;
      if (sub_1D8581A98())
      {
        OUTLINED_FUNCTION_14_2();
        v55(v17, a1);
      }

      else
      {
        OUTLINED_FUNCTION_10_0();
        v63 = swift_allocError();
        v65 = OUTLINED_FUNCTION_16_3(v63, v64);
        v66(v65, v17, a1);
      }

      v67 = v78;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      (*(v29 + 8))(v20, a1);
      *(v54 + 4) = v68;
      *(v54 + 12) = 2112;
      v69 = v77;
      *(v54 + 14) = v77;
      v70 = v74;
      *v74 = v68;
      v70[1] = v69;
      v71 = v69;
      _os_log_impl(&dword_1D8433000, v52, v75, "Expunged error: %@ as XPC safe: %@", v54, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A120, &qword_1D859EE00);
      swift_arrayDestroy();
      MEMORY[0x1DA719810](v70, -1, -1);
      MEMORY[0x1DA719810](v54, -1, -1);

      (*(v67 + 8))(v53, v79);
      v38 = v71;
    }

    else
    {

      OUTLINED_FUNCTION_14_2();
      v56(v20, a1);
      (*(v46 + 8))(v76, v79);
      v38 = v77;
    }
  }

  (*(v29 + 8))(v28, a1);
  return v38;
}

id sub_1D84F48AC(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v10 = v9 - v8;
  (*(v4 + 16))(v9 - v8, v1, a1);
  v11 = sub_1D8581A98();
  if (v11)
  {
    v12 = v11;
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    v12 = swift_allocError();
    (*(v4 + 32))(v13, v10, a1);
  }

  v14 = sub_1D8580D28();
  MEMORY[0x1DA719650](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D859EDC0;
  v16 = *MEMORY[0x1E696A478];
  *(inited + 32) = sub_1D8581228();
  *(inited + 40) = v17;
  v18 = *MEMORY[0x1E696A578];
  *(inited + 48) = sub_1D8581228();
  *(inited + 56) = v19;
  v20 = *MEMORY[0x1E696A588];
  *(inited + 64) = sub_1D8581228();
  *(inited + 72) = v21;
  v22 = *MEMORY[0x1E696A590];
  *(inited + 80) = sub_1D8581228();
  *(inited + 88) = v23;
  v24 = *MEMORY[0x1E696A598];
  *(inited + 96) = sub_1D8581228();
  *(inited + 104) = v25;
  v26 = [v14 userInfo];
  v27 = MEMORY[0x1E69E6158];
  v28 = sub_1D8581198();

  v29 = sub_1D84F4F48(v28);

  v30 = sub_1D8581228();
  sub_1D84F4CA8(v30, v31, v29, &v50);

  v32 = v51;
  sub_1D84F589C(&v50, &qword_1ECA3A118, &qword_1D859EDF8);
  if (!v32)
  {
    v33 = sub_1D8581228();
    v35 = v34;
    v36 = sub_1D8581B08();
    v51 = v27;
    *&v50 = v36;
    *(&v50 + 1) = v37;
    sub_1D84F3B44(&v50, v49);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D84F50F8(v49, v33, v35);
  }

  v38 = [v14 domain];
  v39 = sub_1D8581228();
  v41 = v40;

  v42 = [v14 code];
  v43 = [v14 userInfo];
  v44 = sub_1D8581198();

  v45 = sub_1D84F4F48(v44);
  swift_setDeallocating();
  sub_1D84F4DBC();

  v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v47 = sub_1D84F4D0C(v39, v41, v42, v45);

  return v47;
}

double sub_1D84F4CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D8436A4C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D8435CE4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1D84F4D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8581218();

  if (a4)
  {
    v8 = sub_1D8581188();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1D84F4DBC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_12GameServices0aB5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D84F4E20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84F4E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_449(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D84F4E9C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameServices0aB13InternalErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D84F4EE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84F4F20(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t *sub_1D84F4F48(uint64_t a1)
{
  v2 = v1;
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = swift_bridgeObjectRetain_n();
  if (v4 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v16 = OUTLINED_FUNCTION_19_1();
      v2 = sub_1D84F54FC(v16, v17, v18, v19, v20);
      MEMORY[0x1DA719810](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1D84F52AC(0, v5, v21 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));

  v7 = OUTLINED_FUNCTION_19_1();
  v12 = sub_1D84F5310(v7, v8, v9, v10, v11);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

_OWORD *sub_1D84F50F8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8436A4C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A138, &qword_1D859F0D8);
  if ((sub_1D8581808() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1D8436A4C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D8581AF8();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1D84F3B44(a1, v17);
  }

  else
  {
    sub_1D84F5240(v11, a2, a3, a1, v16);
  }
}

_OWORD *sub_1D84F5240(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D84F3B44(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D84F52AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D859EDD0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_1D84F5310(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v24 = 0;
  v25 = a5;
  v31 = a4;
  v22 = a2;
  v23 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1D8435CE4(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v18 = sub_1D8435CE4(v30, &v29);
    v27[0] = v17;
    v27[1] = v16;
    MEMORY[0x1EEE9AC00](v18);
    v21[2] = v27;
    swift_bridgeObjectRetain_n();
    LOBYTE(v17) = sub_1D84F57EC(v25, v21, v31);
    sub_1D84F589C(v28, &qword_1ECA3A128, &qword_1D859F0C8);
    __swift_destroy_boxed_opaque_existential_1(v30);

    if (v17)
    {
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v20 = sub_1D84F55A4(v23, v22, v24, v26);

        return v20;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D84F54FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1D84F5310(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1D84F55A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A130, &qword_1D859F0D0);
  result = sub_1D8581858();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1D8435CE4(v17 + 32 * v16, v34);
    sub_1D84F3B44(v34, v33);
    v21 = *(v9 + 40);
    sub_1D8581B58();

    sub_1D85812B8();
    result = sub_1D8581B98();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1D84F3B44(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1D84F57EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1D84F589C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(*(v2 - 144) + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = a1[1];
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = *(a1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_dynamicCast();
}

uint64_t $DistributedGameServicesDebuggerProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  sub_1D8526788(v1);
  OUTLINED_FUNCTION_406_1();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedGameServicesDebuggerProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedGameServicesDebuggerProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedGameServicesDebuggerProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  sub_1D8526788(v3);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t sub_1D84F5D40@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedGameServicesDebuggerProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84F5D88()
{
  v1 = *v0;
  OUTLINED_FUNCTION_163_1();
  return (*(v2 + 104))();
}

uint64_t sub_1D84F5E4C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(dword_1D85A10B0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84F5ED8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F6000, 0, 0);
}

uint64_t sub_1D84F6000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(dword_1D85A10B0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
  sub_1D8484E10();
  sub_1D8484F6C();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_413_1();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84F6288()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  OUTLINED_FUNCTION_29(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84F6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
    sub_1D8484E10();
    sub_1D8484F6C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_413_1();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 8);
    OUTLINED_FUNCTION_54();
    v52 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84F673C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84F6834()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D84F6964(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.describeAchievements(_:)();
}

uint64_t sub_1D84F6AF4()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85A10A8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_64(v5);

  return v9(v7, v2, v3);
}

uint64_t sub_1D84F6B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F6D28, 0, 0);
}

uint64_t sub_1D84F6D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[12];
    v13[22] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    v31 = v13[21];
    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    v32 = v13[18];
    v33 = v13[11];
    v13[5] = v13[10];
    v13[6] = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_254_1();
    sub_1D8581038();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_187();
      v36 = OUTLINED_FUNCTION_52();
      v37(v36);
      v38 = OUTLINED_FUNCTION_51_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v48 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v49);
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v50);
    OUTLINED_FUNCTION_98();
    v13[2] = v51;
    OUTLINED_FUNCTION_258_2();
    OUTLINED_FUNCTION_9_0(v52);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A10A8);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    v17[1] = sub_1D845C784;
    v19 = v13[11];
    v20 = v13[12];
    v21 = v13[10];
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_197();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  *(v1 + 144) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 152) = v8;
  v10 = *(v9 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 168) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 176) = v12;
  v14 = *(v13 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  *(v1 + 192) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 200) = v16;
  v18 = *(v17 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  *(v1 + 216) = *v0;
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84F71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 136);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 136);
    v17 = *(v14 + 112);
    v18 = *(*(v14 + 120) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 232) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v44 = *(v14 + 208);
      v45 = *(v14 + 184);
      v46 = *(v14 + 160);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    v35 = *(v14 + 208);
    *(v14 + 88) = *(v14 + 104);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    v36 = *(v14 + 224);
    v37 = *(v14 + 184);
    *(v14 + 56) = *(v14 + 216);
    *(v14 + 64) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_252();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_213();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v55 = *(v14 + 160);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 240) = v56;
    *v56 = v57;
    v56[1] = sub_1D845CFE0;
    v58 = *(v14 + 160);
    v59 = *(v14 + 136);
    v60 = *(v14 + 112);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(v14 + 128);
    *(v14 + 72) = *(v14 + 136);
    *(v14 + 40) = *(v14 + 216);
    v20 = *(*(v19 + 16) + 16);
    OUTLINED_FUNCTION_54();
    v62 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    *(v14 + 256) = v24;
    *v24 = v14;
    v24[1] = sub_1D8485B18;
    v25 = *(v14 + 112);
    OUTLINED_FUNCTION_81_2(*(v14 + 104));
    OUTLINED_FUNCTION_169();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v62, a12, a13, a14);
  }
}

uint64_t sub_1D84F7574(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v21 = a4;
  v20 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_1D8580F88();
  v15 = *v21;
  v16 = *a5;
  v17 = a5[1];
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1D84F77B8;

  return DistributedGameServicesDebuggerProtocol<>.listAchievements(games:after:)();
}

uint64_t sub_1D84F77B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = v12[9];
  v14 = v12[8];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[5];
  v18 = v12[4];
  v19 = v12[3];
  v20 = v12[2];
  OUTLINED_FUNCTION_171_0();
  *v21 = v22;
  OUTLINED_FUNCTION_476(v23, v24);
  (*(v18 + 8))(v17, v19);
  v25 = *(v15 + 8);
  v26 = OUTLINED_FUNCTION_166();
  v27(v26);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1D84F7998()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85A10A0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_64(v5);

  return v9(v7, v2, v3);
}

uint64_t sub_1D84F7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F7BCC, 0, 0);
}

uint64_t sub_1D84F7BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[12];
    v13[22] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v31 = v13[21];
    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    v32 = v13[18];
    v33 = v13[11];
    v13[5] = v13[10];
    v13[6] = v33;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_302_1(v34);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_302_1(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_187();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v52 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v53);
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v54);
    OUTLINED_FUNCTION_98();
    v13[2] = v55;
    OUTLINED_FUNCTION_258_2();
    OUTLINED_FUNCTION_9_0(v56);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A10A0);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    v17[1] = sub_1D84821F8;
    v19 = v13[11];
    v20 = v13[12];
    v21 = v13[10];
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_197();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameServicesDebuggerProtocol<>.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  v1[18] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[21] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v1[24] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v0;
  v21 = v0[1];
  v1[26] = v19;
  v1[27] = v20;
  v1[28] = v21;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84F8074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[17];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[17];
    v17 = v14[14];
    v18 = *(v14[15] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[29] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v49 = v14[26];
      v50 = v14[23];
      v51 = v14[20];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[26];
    v14[11] = v14[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    v37 = v14[28];
    v38 = v14[23];
    v14[7] = v14[27];
    v14[8] = v37;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_302_1(v39);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_302_1(v40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v44)
    {
      OUTLINED_FUNCTION_213();
      v45 = OUTLINED_FUNCTION_52();
      v46(v45);
      v47 = OUTLINED_FUNCTION_51_0();
      v48(v47);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v60 = v14[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[30] = v61;
    *v61 = v62;
    v61[1] = sub_1D845B2D4;
    v63 = v14[20];
    v64 = v14[17];
    v65 = v14[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = v14[16];
    v14[9] = v14[17];
    v20 = v14[28];
    v14[5] = v14[27];
    v14[6] = v20;
    v21 = *(*(v19 + 16) + 24);
    OUTLINED_FUNCTION_54();
    v67 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    v14[32] = v25;
    *v25 = v14;
    v25[1] = sub_1D8486C58;
    v26 = v14[14];
    OUTLINED_FUNCTION_81_2(v14[13]);
    OUTLINED_FUNCTION_169();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v67, a12, a13, a14);
  }
}

uint64_t sub_1D84F8464(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v21 = a4;
  v20 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_1D8580F88();
  v15 = *v21;
  v16 = *a5;
  v17 = a5[1];
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1D852A37C;

  return DistributedGameServicesDebuggerProtocol<>.getAchievementsProgresses(_:player:)();
}

uint64_t sub_1D84F86A8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1098);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D84F873C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F88D0, 0, 0);
}

uint64_t sub_1D84F88D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[9];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[9];
    v13[19] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();
      v36 = v13[12];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    v28 = v13[18];
    v13[5] = v13[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    v29 = v13[15];
    OUTLINED_FUNCTION_414_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      OUTLINED_FUNCTION_238_0();
      v32 = OUTLINED_FUNCTION_52();
      v33(v32);
      v34 = OUTLINED_FUNCTION_51_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v45 = v13[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v13[21] = v46;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v47);
    OUTLINED_FUNCTION_81();
    *v46 = v48;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v49, v50, v51, v52, v53, v54, v55);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1098);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_275_0(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_52_1(v17);
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84F8BC4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[22] = v15;
  v17 = *(v16 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84F8E08()
{
  OUTLINED_FUNCTION_185();
  v1 = v0[14];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[14];
  if ((is_remote & 1) == 0)
  {
    v5 = *(OUTLINED_FUNCTION_210(v0[13]) + 32);
    OUTLINED_FUNCTION_54();
    v34 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[27] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_77_1(v9);
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v4 = v0[11];
  OUTLINED_FUNCTION_83_0(v0[12]);
  v0[24] = v0[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v12 = v0[23];
  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  v13 = v0[20];
  v0[8] = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_152_0();
  sub_1D8581038();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v14);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v15)
  {
    OUTLINED_FUNCTION_527();
    v16 = OUTLINED_FUNCTION_52();
    v17(v16);
    v18 = OUTLINED_FUNCTION_51_0();
    v19(v18);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_342_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  v22 = v0[17];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_145_0(v23);
  OUTLINED_FUNCTION_53(v24);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1D84F9154()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84F924C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[23];
    v13 = v3[20];
    v14 = v3[17];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D84F9380(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[5] = v12;
  v13 = *(v12 - 8);
  v5[6] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[7] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_1D852A3A4;

  return DistributedGameServicesDebuggerProtocol<>.resetAchievementsProgress(_:players:)();
}

uint64_t sub_1D84F95C4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1090);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D84F9658(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F97EC, 0, 0);
}

uint64_t sub_1D84F97EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[9];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[9];
    v13[19] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();
      v36 = v13[12];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    v28 = v13[18];
    v13[5] = v13[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    v29 = v13[15];
    OUTLINED_FUNCTION_414_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      OUTLINED_FUNCTION_238_0();
      v32 = OUTLINED_FUNCTION_52();
      v33(v32);
      v34 = OUTLINED_FUNCTION_51_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v45 = v13[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v13[21] = v46;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v47);
    OUTLINED_FUNCTION_81();
    *v46 = v48;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v49, v50, v51, v52, v53, v54, v55);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1090);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_275_0(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_52_1(v17);
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84F9AE0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84F9BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 176);
  OUTLINED_FUNCTION_370_0();
  v20 = *(v12 + 96);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[22] = v15;
  v17 = *(v16 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84F9DE4()
{
  OUTLINED_FUNCTION_185();
  v1 = v0[14];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[14];
  if ((is_remote & 1) == 0)
  {
    v5 = *(OUTLINED_FUNCTION_210(v0[13]) + 40);
    OUTLINED_FUNCTION_54();
    v34 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[27] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_77_1(v9);
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v4 = v0[11];
  OUTLINED_FUNCTION_83_0(v0[12]);
  v0[24] = v0[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v12 = v0[23];
  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  v13 = v0[20];
  v0[8] = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_152_0();
  sub_1D8581038();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v14);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v15)
  {
    OUTLINED_FUNCTION_527();
    v16 = OUTLINED_FUNCTION_52();
    v17(v16);
    v18 = OUTLINED_FUNCTION_51_0();
    v19(v18);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_342_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  v22 = v0[17];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_145_0(v23);
  OUTLINED_FUNCTION_53(v24);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1D84FA130()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84FA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_342_2();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84FA2DC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[23];
    v13 = v3[20];
    v14 = v3[17];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D84FA410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[26];
  v20 = v12[23];
  v21 = v12[20];
  v22 = v12[17];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D84FA4D4()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D84FA550(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[5] = v12;
  v13 = *(v12 - 8);
  v5[6] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[7] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_1D84FA794;

  return DistributedGameServicesDebuggerProtocol<>.revealAchievements(_:players:)();
}

uint64_t sub_1D84FA794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = v12[8];
  v14 = v12[7];
  v15 = v12[6];
  v16 = v12[4];
  v17 = v12[3];
  v18 = v12[5] - 8;
  v19 = v12[2] - 8;
  OUTLINED_FUNCTION_171_0();
  v21 = v20;
  OUTLINED_FUNCTION_37();
  *v22 = v21;

  v23 = *(v17 + 8);
  v24 = OUTLINED_FUNCTION_221();
  v25(v24);
  v26 = *(v15 + 8);
  v27 = OUTLINED_FUNCTION_188();
  v28(v27);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1D84FA958()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1088);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84FA9E4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FAB0C, 0, 0);
}

uint64_t sub_1D84FAB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[7];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D85A1088);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_264_2(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_113_1(v17);
    OUTLINED_FUNCTION_207();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v15 = v13[7];
  v13[14] = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_339_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_44_2();
  sub_1D8581038();
  sub_1D8486FDC();
  sub_1D8487094();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    OUTLINED_FUNCTION_338_1();
    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_324_1();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v32 = v13[10];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_333_2(v33);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v34);
  OUTLINED_FUNCTION_81();
  v13[2] = v35;
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1D84FAD74()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v8 = *(v7 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v0[16] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[17] = v10;
  v12 = *(v11 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84FAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[12];
  is_remote = swift_distributed_actor_is_remote();
  v15 = v12[12];
  if (is_remote)
  {
    v16 = v12[9];
    OUTLINED_FUNCTION_83_0(v12[10]);
    v12[19] = v12[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_346_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_36_3();
    sub_1D8581038();
    sub_1D8486FDC();
    sub_1D8487094();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_229_0();
      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v46 = v12[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_275_0(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_200_0(v48);
    OUTLINED_FUNCTION_53(v50);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v51, v52, v53, v54, v55, v56, v57);
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_210(v12[11]) + 48);
    OUTLINED_FUNCTION_131();
    v59 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_322_0(v21);
    *v22 = v23;
    v22[1] = sub_1D84FB314;
    v24 = v12[9];
    OUTLINED_FUNCTION_44(v12[8]);
    OUTLINED_FUNCTION_207();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v59, a11, a12);
  }
}

uint64_t sub_1D84FB21C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84FB314()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[18];
    v13 = v3[15];

    OUTLINED_FUNCTION_57();

    return v14();
  }
}

uint64_t sub_1D84FB43C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[5] = v16;
  *v16 = v5;
  v16[1] = sub_1D84A7CAC;

  return DistributedGameServicesDebuggerProtocol<>.submitAchievementsProgress(_:)();
}

uint64_t sub_1D84FB5C8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1080);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84FB654(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A150, &qword_1D859F178);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FB77C, 0, 0);
}

uint64_t sub_1D84FB77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1080);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A158, &unk_1D859F180);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D84FBF60();
  sub_1D84FC010();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A170, &unk_1D859F190);
  sub_1D84FC0C0();
  sub_1D84FC21C();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.getImageData(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A150, &qword_1D859F178);
  OUTLINED_FUNCTION_29(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84FBAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A158, &unk_1D859F180);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D84FBF60();
    sub_1D84FC010();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A170, &unk_1D859F190);
    sub_1D84FC0C0();
    sub_1D84FC21C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 56);
    OUTLINED_FUNCTION_54();
    v52 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84FBDD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.getImageData(_:)();
}

unint64_t sub_1D84FBF60()
{
  result = qword_1ECA3A160;
  if (!qword_1ECA3A160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A158, &unk_1D859F180);
    sub_1D848211C(&qword_1ECA38A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A160);
  }

  return result;
}

unint64_t sub_1D84FC010()
{
  result = qword_1ECA3A168;
  if (!qword_1ECA3A168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A158, &unk_1D859F180);
    sub_1D848211C(&qword_1ECA389D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A168);
  }

  return result;
}

unint64_t sub_1D84FC0C0()
{
  result = qword_1ECA3A178;
  if (!qword_1ECA3A178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A170, &unk_1D859F190);
    sub_1D84FC144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A178);
  }

  return result;
}

unint64_t sub_1D84FC144()
{
  result = qword_1ECA3A180;
  if (!qword_1ECA3A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A188, &qword_1D85A4C10);
    sub_1D84FC1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A180);
  }

  return result;
}

unint64_t sub_1D84FC1C8()
{
  result = qword_1EE0E02F0;
  if (!qword_1EE0E02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E02F0);
  }

  return result;
}

unint64_t sub_1D84FC21C()
{
  result = qword_1ECA3A190;
  if (!qword_1ECA3A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A170, &unk_1D859F190);
    sub_1D84FC2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A190);
  }

  return result;
}

unint64_t sub_1D84FC2A0()
{
  result = qword_1ECA3A198;
  if (!qword_1ECA3A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A188, &qword_1D85A4C10);
    sub_1D843D6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A198);
  }

  return result;
}

uint64_t sub_1D84FC324()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D85A1078);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6();
}

uint64_t sub_1D84FC3B0()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FC470, 0, 0);
}

uint64_t sub_1D84FC470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[6];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[6];
    v13[10] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v17)
    {
LABEL_6:
      OUTLINED_FUNCTION_342();

      v18 = v13[9];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v38 = v13[9];
      OUTLINED_FUNCTION_184_0();
      OUTLINED_FUNCTION_410_0();
      v39 = swift_task_alloc();
      v13[12] = v39;
      OUTLINED_FUNCTION_0_6();
      sub_1D8526788(v40);
      OUTLINED_FUNCTION_98();
      *v39 = v41;
      OUTLINED_FUNCTION_378_1();
      v42 = v13[6];
      OUTLINED_FUNCTION_9_0(v43);
      OUTLINED_FUNCTION_118_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1078);
    v28 = swift_task_alloc();
    v13[11] = v28;
    *v28 = v13;
    v28[1] = sub_1D8465D38;
    v29 = v13[6];
    OUTLINED_FUNCTION_197();

    return v30(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84FC6A4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84FC79C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_409_1();
  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 40);
  v4 = *(v0 + 72);

  v5 = OUTLINED_FUNCTION_72();

  return v6(v5);
}

uint64_t sub_1D84FC828()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_409_1();
  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 104);
  v4 = *(v0 + 72);

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listLocalPlayers()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  OUTLINED_FUNCTION_38_0(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84FC958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[11];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[11];
  if (is_remote)
  {
    v18 = v14[8];
    OUTLINED_FUNCTION_83_0(v14[9]);
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v20)
    {
LABEL_6:
      OUTLINED_FUNCTION_342();

      v21 = v14[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v46 = v14[14];
      OUTLINED_FUNCTION_184_0();
      OUTLINED_FUNCTION_410_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v47;
      *v47 = v48;
      v47[1] = sub_1D84FCBD0;
      OUTLINED_FUNCTION_367_0();
      v49 = v14[8];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v31 = *(OUTLINED_FUNCTION_210(v14[10]) + 64);
    OUTLINED_FUNCTION_54();
    v51 = v32 + *v32;
    v34 = *(v33 + 4);
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_306_1(v35);
    *v36 = v37;
    v36[1] = sub_1D8466548;
    OUTLINED_FUNCTION_332_2(v14[8]);
    OUTLINED_FUNCTION_169();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, v51, a12, a13, a14);
  }
}

uint64_t sub_1D84FCBD0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84FCCC8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_407_0();
  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 56);
  v4 = *(v0 + 112);

  v5 = OUTLINED_FUNCTION_72();

  return v6(v5);
}

uint64_t sub_1D84FCD54()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_407_0();
  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 136);
  v4 = *(v0 + 112);

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D84FCDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *(v5 + 16) = a3;
  v6 = *a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D847B090;

  return DistributedGameServicesDebuggerProtocol<>.listLocalPlayers()();
}

uint64_t sub_1D84FCE94()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1070);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84FCF20(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FD048, 0, 0);
}

uint64_t sub_1D84FD048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1070);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
  sub_1D848A6BC();
  sub_1D848A7F8();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_413_1();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describeLeaderboards(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  OUTLINED_FUNCTION_29(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84FD3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A6BC();
    sub_1D848A7F8();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_413_1();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 72);
    OUTLINED_FUNCTION_54();
    v52 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84FD68C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.describeLeaderboards(_:)();
}

uint64_t sub_1D84FD81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *v10;
  OUTLINED_FUNCTION_31_0(&unk_1D85A1068);
  v13 = *v12;
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_82_0(v15);
  OUTLINED_FUNCTION_471();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D84FD8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = v5;
  *(v6 + 289) = a5;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = sub_1D8581018();
  *(v6 + 112) = v7;
  v8 = *(v7 - 8);
  *(v6 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v6 + 136) = v10;
  v11 = *(v10 - 8);
  *(v6 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v13 = sub_1D8580EF8();
  *(v6 + 160) = v13;
  v14 = *(v13 - 8);
  *(v6 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v6 + 184) = v16;
  v17 = *(v16 - 8);
  *(v6 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v6 + 208) = v19;
  v20 = *(v19 - 8);
  *(v6 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v6 + 232) = v22;
  v23 = *(v22 - 8);
  *(v6 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FDB84, 0, 0);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listLeaderboardEntries(_:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 136) = v4;
  *(v1 + 144) = v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 88) = v9;
  *(v1 + 96) = v10;
  v11 = sub_1D8581018();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 160) = v12;
  v14 = *(v13 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 176) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 184) = v16;
  v18 = *(v17 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v19 = sub_1D8580EF8();
  *(v1 + 200) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 208) = v20;
  v22 = *(v21 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 224) = v23;
  OUTLINED_FUNCTION_39(v23);
  *(v1 + 232) = v24;
  v26 = *(v25 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v1 + 248) = v27;
  OUTLINED_FUNCTION_39(v27);
  *(v1 + 256) = v28;
  v30 = *(v29 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_332();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 272) = v31;
  OUTLINED_FUNCTION_39(v31);
  *(v1 + 280) = v32;
  v34 = *(v33 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_332();
  *(v1 + 338) = *v3;
  v35 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84FE89C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84FEA90()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[41] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[36];
    v14 = v3[33];
    v15 = v3[30];
    v16 = v3[27];
    v17 = v3[24];
    v18 = v3[21];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_511();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1D84FECF0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = v0[41];
  v2 = v0[36];
  OUTLINED_FUNCTION_142_1();
  v3 = v0[21];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D84FED84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v6 = *a2;
  v5[3] = *a2;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[5] = v9;
  sub_1D8580F88();
  v27 = *v9;
  v10 = a2[1];
  v5[6] = v10;
  v11 = *(v10 - 8);
  v5[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[8] = v13;
  sub_1D8580F88();
  v14 = v13[1];
  v26 = *v13;
  v15 = a2[2];
  v5[9] = v15;
  v16 = *(v15 - 8);
  v5[10] = v16;
  v17 = *(v16 + 64) + 15;
  v5[11] = swift_task_alloc();
  sub_1D8580F88();
  v18 = a2[3];
  v5[12] = v18;
  v19 = *(v18 - 8);
  v5[13] = v19;
  v20 = *(v19 + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_1D8580F88();
  v21 = *a4;
  v22 = *a5;
  v23 = a5[1];
  v24 = swift_task_alloc();
  v5[15] = v24;
  *v24 = v5;
  v24[1] = sub_1D84FF1BC;

  return DistributedGameServicesDebuggerProtocol<>.listLeaderboardEntries(_:range:locale:timeScope:)();
}

uint64_t sub_1D84FF1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_295_1();
  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_153();
  v22 = *(v21 + 120);
  v61 = *(v21 + 112);
  OUTLINED_FUNCTION_193();
  v60 = *(v23 + 104);
  OUTLINED_FUNCTION_193();
  v57 = *(v24 + 96);
  OUTLINED_FUNCTION_193();
  v59 = *(v25 + 88);
  OUTLINED_FUNCTION_193();
  v58 = *(v26 + 80);
  OUTLINED_FUNCTION_193();
  v28 = *(v27 + 72);
  v55 = *(v29 + 64);
  OUTLINED_FUNCTION_193();
  v54 = *(v30 + 56);
  OUTLINED_FUNCTION_193();
  v32 = *(v31 + 48);
  v34 = v33[5];
  v35 = v33[4];
  v36 = v33[3];
  v37 = v33[2];
  v56 = v38 - 8;
  OUTLINED_FUNCTION_171_0();
  v40 = v39;
  OUTLINED_FUNCTION_42();
  *v41 = v40;
  OUTLINED_FUNCTION_476(v42, v43);
  (*(v35 + 8))(v34, v36);
  (*(v54 + 8))(v55, v32);
  (*(v58 + 8))(v59, v28);
  (*(v60 + 8))(v61, v57);

  v44 = *(v40 + 8);
  OUTLINED_FUNCTION_266_2();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v20, a18, a19, a20);
}

unint64_t sub_1D84FF498(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39658, &unk_1D859F1F0);
    result = OUTLINED_FUNCTION_524();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84FF4F0()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D85A1060);
  v3 = *v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  OUTLINED_FUNCTION_535();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D84FF5A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 273) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = sub_1D8580EF8();
  *(v5 + 144) = v12;
  v13 = *(v12 - 8);
  *(v5 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v5 + 168) = v15;
  v16 = *(v15 - 8);
  *(v5 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v5 + 192) = v18;
  v19 = *(v18 - 8);
  *(v5 + 200) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v5 + 216) = v21;
  v22 = *(v21 - 8);
  *(v5 + 224) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FF868, 0, 0);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listLeaderboardEntries(_:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 120) = v4;
  *(v1 + 128) = v0;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 80) = v9;
  v10 = sub_1D8581018();
  OUTLINED_FUNCTION_29(v10);
  *(v1 + 144) = v11;
  v13 = *(v12 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 160) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 168) = v15;
  v17 = *(v16 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v18 = sub_1D8580EF8();
  *(v1 + 184) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 192) = v19;
  v21 = *(v20 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 208) = v22;
  OUTLINED_FUNCTION_39(v22);
  *(v1 + 216) = v23;
  v25 = *(v24 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_332();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v1 + 232) = v26;
  OUTLINED_FUNCTION_39(v26);
  *(v1 + 240) = v27;
  v29 = *(v28 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_332();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 256) = v30;
  OUTLINED_FUNCTION_39(v30);
  *(v1 + 264) = v31;
  v33 = *(v32 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_332();
  *(v1 + 322) = *v3;
  v34 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8500528(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v29 = a4;
  v12 = *v11;
  v13 = a2[1];
  v5[6] = v13;
  v14 = *(v13 - 8);
  v5[7] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v5[8] = v16;
  sub_1D8580F88();
  v28 = *v16;
  v17 = a2[2];
  v5[9] = v17;
  v18 = *(v17 - 8);
  v5[10] = v18;
  v19 = *(v18 + 64) + 15;
  v5[11] = swift_task_alloc();
  sub_1D8580F88();
  v20 = a2[3];
  v5[12] = v20;
  v21 = *(v20 - 8);
  v5[13] = v21;
  v22 = *(v21 + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_1D8580F88();
  v23 = *v29;
  v24 = *a5;
  v25 = a5[1];
  v26 = swift_task_alloc();
  v5[15] = v26;
  *v26 = v5;
  v26[1] = sub_1D852A2FC;

  return DistributedGameServicesDebuggerProtocol<>.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_1D8500938()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1058);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D85009CC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D8581018();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8500B60, 0, 0);
}

uint64_t sub_1D8500B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[10];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[10];
    v13[20] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();
      v44 = v13[13];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    v30 = v13[19];
    v13[5] = v13[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    v31 = v13[16];
    OUTLINED_FUNCTION_411_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {
      v35 = v13[18];
      v34 = v13[19];
      v37 = v13[16];
      v36 = v13[17];
      v38 = v13[14];
      v39 = v13[15];

      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v53 = v13[13];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v13[22] = v54;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v55);
    OUTLINED_FUNCTION_98();
    *v54 = v56;
    v54[1] = sub_1D848F20C;
    v57 = v13[13];
    v58 = v13[10];
    OUTLINED_FUNCTION_9_0(v59);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1058);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_213_1(v16);
    *v17 = v18;
    v17[1] = sub_1D848F0C8;
    v19 = v13[9];
    v20 = v13[10];
    OUTLINED_FUNCTION_207_0(v13[8]);
    OUTLINED_FUNCTION_197();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_148();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v7 = sub_1D8581018();
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[19] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v1[22] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[23] = v16;
  v18 = *(v17 + 64);
  v1[24] = OUTLINED_FUNCTION_332();
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8501008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[15];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[15];
  if (is_remote)
  {
    v18 = v14[12];
    OUTLINED_FUNCTION_83_0(v14[13]);
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v49 = v14[24];
      v50 = v14[21];
      v51 = v14[18];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
    }

    v35 = v14[24];
    v14[7] = v14[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    v36 = v14[21];
    v14[8] = v14[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      v40 = v14[23];
      v39 = v14[24];
      v42 = v14[21];
      v41 = v14[22];
      v43 = v14[19];
      v44 = v14[20];

      v45 = OUTLINED_FUNCTION_52();
      v46(v45);
      v47 = OUTLINED_FUNCTION_51_0();
      v48(v47);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v60 = v14[18];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[26] = v61;
    *v61 = v62;
    v61[1] = sub_1D85013C4;
    v63 = v14[18];
    v64 = v14[15];
    v65 = v14[12];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v14[14]) + 96);
    OUTLINED_FUNCTION_54();
    v67 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v14[28] = v23;
    *v23 = v14;
    v23[1] = sub_1D84AD968;
    v24 = v14[11];
    v25 = v14[12];
    OUTLINED_FUNCTION_207_0(v14[10]);
    OUTLINED_FUNCTION_169();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v67, a12, a13, a14);
  }
}

uint64_t sub_1D85013C4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D85014BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 72);
  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D8501574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 216);
  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D850162C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[8] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[9] = v20;
  *v20 = v5;
  v20[1] = sub_1D84F77B8;

  return DistributedGameServicesDebuggerProtocol<>.listLeaderboards(games:players:)();
}

uint64_t sub_1D8501874()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1050);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8501900(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8501A28, 0, 0);
}

uint64_t sub_1D8501A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[7];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D85A1050);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_264_2(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_113_1(v17);
    OUTLINED_FUNCTION_207();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v15 = v13[7];
  v13[14] = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_339_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
  OUTLINED_FUNCTION_257_1();
  OUTLINED_FUNCTION_44_2();
  sub_1D8581038();
  sub_1D849134C();
  sub_1D8491404();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    OUTLINED_FUNCTION_338_1();
    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_324_1();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v32 = v13[10];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_410_0();
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_333_2(v33);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v34);
  OUTLINED_FUNCTION_81();
  v13[2] = v35;
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v36, v37, v38, v39, v40, v41, v42);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.submitLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v8 = *(v7 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v0[16] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[17] = v10;
  v12 = *(v11 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D8501D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[12];
  is_remote = swift_distributed_actor_is_remote();
  v15 = v12[12];
  if (is_remote)
  {
    v16 = v12[9];
    OUTLINED_FUNCTION_83_0(v12[10]);
    v12[19] = v12[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_346_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
    OUTLINED_FUNCTION_257_1();
    OUTLINED_FUNCTION_36_3();
    sub_1D8581038();
    sub_1D849134C();
    sub_1D8491404();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_229_0();
      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v46 = v12[15];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_410_0();
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_275_0(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_200_0(v48);
    OUTLINED_FUNCTION_53(v50);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v51, v52, v53, v54, v55, v56, v57);
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_210(v12[11]) + 104);
    OUTLINED_FUNCTION_131();
    v59 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_322_0(v21);
    *v22 = v23;
    v22[1] = sub_1D84FB314;
    v24 = v12[9];
    OUTLINED_FUNCTION_44(v12[8]);
    OUTLINED_FUNCTION_207();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v59, a11, a12);
  }
}

uint64_t sub_1D8502030(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[5] = v16;
  *v16 = v5;
  v16[1] = sub_1D84A7CAC;

  return DistributedGameServicesDebuggerProtocol<>.submitLeaderboardEntries(_:)();
}

uint64_t sub_1D85021BC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1048);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8502248(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8502370, 0, 0);
}

uint64_t sub_1D8502370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[7];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D85A1048);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_264_2(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_113_1(v17);
    OUTLINED_FUNCTION_207();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v15 = v13[7];
  v13[14] = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_339_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    OUTLINED_FUNCTION_338_1();
    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_324_1();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v32 = v13[10];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_333_2(v33);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v34);
  OUTLINED_FUNCTION_81();
  v13[2] = v35;
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1D85025D4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D85026CC()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_331_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_324_1();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.resetLeaderboards(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v8 = *(v7 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v0[16] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[17] = v10;
  v12 = *(v11 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D850285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[12];
  is_remote = swift_distributed_actor_is_remote();
  v15 = v12[12];
  if (is_remote)
  {
    v16 = v12[9];
    OUTLINED_FUNCTION_83_0(v12[10]);
    v12[19] = v12[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_346_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_229_0();
      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v46 = v12[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_275_0(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_200_0(v48);
    OUTLINED_FUNCTION_53(v50);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v51, v52, v53, v54, v55, v56, v57);
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_210(v12[11]) + 112);
    OUTLINED_FUNCTION_131();
    v59 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_322_0(v21);
    *v22 = v23;
    v22[1] = sub_1D8502C0C;
    v24 = v12[9];
    OUTLINED_FUNCTION_44(v12[8]);
    OUTLINED_FUNCTION_207();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v59, a11, a12);
  }
}

uint64_t sub_1D8502B14()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}