uint64_t sub_1D1D498A4()
{
  v28 = v0;
  v1 = v0[21];
  v2 = v0[18];

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v3 = v0[15];
  v4 = v0[6];
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F470);
  sub_1D1D4D138(v4, v3, type metadata accessor for StaticService);
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v10 = v0[14];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v14 = *(v10 + 44);
    sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v15 = sub_1D1E68FAC();
    v17 = v16;
    sub_1D1D4D1A0(v9, type metadata accessor for StaticService);
    v18 = sub_1D1B1312C(v15, v17, &v27);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel - thermostatController(for:)) - Failed to find accessory for static service with accessoryId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {

    sub_1D1D4D1A0(v9, type metadata accessor for StaticService);
  }

  v20 = v0[16];
  v19 = v0[17];
  v21 = v0[15];
  v23 = v0[12];
  v22 = v0[13];
  v24 = v0[11];

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_1D1D49B38()
{
  v38 = v0;
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[22];
  if (([v3 supportsAdaptiveTemperatureAutomations] & 1) != 0 || objc_msgSend(v3, sel_supportsCleanEnergyAutomation))
  {
    v4 = v0[17];
    v5 = v0[13];
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[7];
    sub_1D1D4D138(v0[6], v4, type metadata accessor for StaticService);
    (*(v7 + 16))(v5, v8, v6);
    v9 = type metadata accessor for AutoClimateModel.Thermostat(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = AutoClimateModel.Thermostat.init(staticService:homeUUID:)(v4, v5);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v13 = v0[16];
    v14 = v0[6];
    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EC64F470);
    sub_1D1D4D138(v14, v13, type metadata accessor for StaticService);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6835C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[16];
    if (v18)
    {
      v20 = v0[14];
      v21 = v0[9];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = *(v20 + 44);
      sub_1D1D4D2B0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1D4D1A0(v19, type metadata accessor for StaticService);
      v28 = sub_1D1B1312C(v25, v27, &v37);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v16, v17, "(AutoClimateModel - thermostatController(for:)) - Accessory: %s does not support auto climate control.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    else
    {

      sub_1D1D4D1A0(v19, type metadata accessor for StaticService);
    }

    v12 = 0;
  }

  v30 = v0[16];
  v29 = v0[17];
  v31 = v0[15];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[11];

  v35 = v0[1];

  return v35(v12);
}

uint64_t AutoClimateModel.localPresenceRooms(for:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D1E66A7C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1D1E67E1C();
  v2[18] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v2[19] = v9;
  v2[20] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4A004, v9, v8);
}

uint64_t sub_1D1D4A004()
{
  v1 = *(v0 + 64);
  v2 = AutoClimateModel.localPresenceRoomConfigs(for:)(*(v0 + 56));
  *(v0 + 168) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
    *(v0 + 176) = v4;
    if (v4)
    {
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        if (sub_1D1E6873C())
        {
          sub_1D179D3B8(MEMORY[0x1E69E7CC0]);
          v5 = v36;
        }

        else
        {
          v5 = MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 40) = v5;
      v6 = *(v3 + 16);
      *(v0 + 184) = v6;
      if (v6)
      {
        *(v0 + 248) = *(*(v0 + 120) + 80);
        swift_beginAccess();
        *(v0 + 192) = 0;
        *(v0 + 200) = 0;
        v7 = *(v0 + 168);
        if (*(v7 + 16))
        {
          v8 = *(v0 + 136);
          v9 = *(v0 + 112);
          v10 = *(v0 + 72);
          v11 = *(v0 + 80);
          sub_1D1D4D138(v7 + ((*(v0 + 248) + 32) & ~*(v0 + 248)), v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v12 = *(v11 + 16);
          *(v0 + 208) = v12;
          *(v0 + 216) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v12(v9, v8, v10);
          sub_1D1D4D1A0(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (qword_1EC642358 == -1)
          {
LABEL_8:
            v13 = qword_1EC64ABE8;

            return MEMORY[0x1EEE6DFA0](sub_1D1D4A3EC, v13, 0);
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_8;
      }

      v27 = *(v0 + 144);

      v28 = *(v0 + 176);
    }

    else
    {
      v15 = *(v0 + 144);

      v16 = MEMORY[0x1E69E7CC0];
      v38 = MEMORY[0x1E69E7CC0];
      v17 = *(v3 + 16);
      if (v17)
      {
        v18 = *(v0 + 120);
        v19 = v3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        do
        {
          sub_1D1D4D138(v19, *(v0 + 128), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (qword_1EE07DC58 != -1)
          {
            swift_once();
          }

          v21 = *(v0 + 128);
          v22 = qword_1EE07DC60;
          v23 = sub_1D1E66A2C();
          v24 = [v22 roomFor_];

          v25 = sub_1D1D4D1A0(v21, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (v24)
          {
            MEMORY[0x1D3891220](v25);
            if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v26 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D1E67C5C();
            }

            sub_1D1E67CAC();
            v16 = v38;
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      v5 = sub_1D17843BC(v16);
    }
  }

  else
  {
    v14 = *(v0 + 144);

    v5 = 0;
  }

  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v34 = *(v0 + 88);
  v33 = *(v0 + 96);

  v35 = *(v0 + 8);

  return v35(v5);
}

uint64_t sub_1D1D4A3EC()
{
  v2 = *(v0[22] + 64);
  if (!v2)
  {
    v6 = v0[24];
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v3 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  if (v4 >> 62)
  {
LABEL_44:
    v57 = sub_1D1E6873C();
    if (!v57)
    {
      goto LABEL_50;
    }

    v6 = v57;
    v5 = sub_1D1808600(v57, 0);

    sub_1D18D2FC0(v5 + 32, v6, v4);
    v59 = v58;

    if (v59 != v6)
    {
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  while (1)
  {
    v6 = v0[24];
    v0[6] = v5;
    sub_1D1747DDC(v0 + 6);
    if (v6)
    {
      break;
    }

    v1 = v0[6];
LABEL_10:
    v9 = v0[26];
    v4 = v0[27];
    v10 = v0[14];
    v11 = v0[12];
    v65 = v0;
    v12 = v0[9];
    v9(v0[13], v10, v12);
    v9(v11, v10, v12);
    v62 = v1 >> 62;
    if (v1 >> 62)
    {
LABEL_47:
      v67 = v1 & 0xFFFFFFFFFFFFFF8;
      v66 = sub_1D1E6873C();
    }

    else
    {
      v67 = v1 & 0xFFFFFFFFFFFFFF8;
      v66 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    v63 = v1;
    v64 = v1 & 0xC000000000000001;
    v61 = v1 + 32;
    v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v0 = v65;
    while (1)
    {
      if (v66 == v13)
      {
        v13 = v66;
        goto LABEL_26;
      }

      if (v64)
      {
        v16 = MEMORY[0x1D3891EF0](v13, v1);
      }

      else
      {
        if (v13 >= *(v67 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v16 = *(v1 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v0[12];
      v19 = [v16 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v20 = sub_1D1E67C1C();

      v21 = swift_task_alloc();
      *(v21 + 16) = v18;
      v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

      if (v22)
      {
        break;
      }

      v24 = v0[11];
      v23 = v0[12];
      v26 = v0[9];
      v25 = v0[10];
      v27 = v14;
      v28 = [v17 v14[452]];
      v29 = [v28 uniqueIdentifier];

      sub_1D1E66A5C();
      v4 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      (*(v25 + 8))(v24, v26);
      if (v4)
      {
        v4 = [v17 v27 + 551];

        v1 = v63;
        v14 = v27;
        if (v4)
        {
          v0 = v65;
          goto LABEL_26;
        }
      }

      else
      {

        v1 = v63;
        v14 = v27;
      }

      v15 = __OFADD__(v13++, 1);
      v0 = v65;
      if (v15)
      {
        goto LABEL_43;
      }
    }

    v1 = v63;
LABEL_26:
    v0[28] = v6;
    if (v62)
    {
      if (v13 == sub_1D1E6873C())
      {
LABEL_34:
        v39 = v0[14];
        v40 = v0[12];
        v41 = v0[9];
        v42 = *(v0[10] + 8);
        v42(v0[13], v41);

        v42(v40, v41);
        v42(v39, v41);
        v43 = v0[19];
        v44 = v0[20];
        v45 = sub_1D1D4AABC;
LABEL_39:
        v56 = v45;

        return MEMORY[0x1EEE6DFA0](v56, v43, v44);
      }
    }

    else if (v13 == *(v67 + 16))
    {
      goto LABEL_34;
    }

    if (v64)
    {
      v30 = MEMORY[0x1D3891EF0](v13, v1);
LABEL_31:
      v31 = v30;
      v32 = v0[13];
      v33 = [v30 rooms];
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v34 = sub_1D1E67C1C();

      v35 = swift_task_alloc();
      *(v35 + 16) = v32;
      v36 = sub_1D174A6C4(sub_1D1778988, v35, v34);
      v0[29] = v6;

      v37 = v0[13];
      if (v36)
      {
        v38 = *(v0[10] + 8);
        v38(v0[13], v0[9]);

LABEL_38:
        v0[30] = v36;
        v54 = v0[14];
        v55 = v0[9];
        v38(v0[12], v55);
        v38(v54, v55);
        v43 = v0[19];
        v44 = v0[20];
        v45 = sub_1D1D4ACA8;
        goto LABEL_39;
      }

      v47 = v0[10];
      v46 = v0[11];
      v48 = v0[9];
      v49 = [v31 v14[452]];
      v50 = v14;
      v51 = [v49 uniqueIdentifier];

      sub_1D1E66A5C();
      LOBYTE(v49) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v38 = *(v47 + 8);
      v38(v46, v48);
      v52 = v0[13];
      if (v49)
      {
        v53 = v0[9];
        v36 = [v31 v50 + 551];
        v38(v52, v53);

        if (v36)
        {

          v0 = v65;
          goto LABEL_38;
        }
      }

      else
      {
        v60 = v0[9];
        v38(v0[12], v60);
        v38(v52, v60);

        __break(1u);
      }

      v56 = (v38)(v65[12], v65[9]);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v56, v43, v44);
    }

    if (v13 < *(v67 + 16))
    {
      v30 = *(v61 + 8 * v13);
      goto LABEL_31;
    }

    __break(1u);
LABEL_50:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[6];
}

uint64_t sub_1D1D4AABC()
{
  v1 = *(v0 + 200) + 1;
  if (v1 == *(v0 + 184))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);

    v4 = *(v0 + 40);
    v5 = *(v0 + 176);

    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);

    v12 = *(v0 + 8);

    return v12(v4);
  }

  *(v0 + 192) = *(v0 + 224);
  *(v0 + 200) = v1;
  v14 = *(v0 + 168);
  if (v1 >= *(v14 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  sub_1D1D4D138(v14 + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(*(v0 + 120) + 72) * v1, v15, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v19 = *(v18 + 16);
  *(v0 + 208) = v19;
  *(v0 + 216) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v16, v15, v17);
  sub_1D1D4D1A0(v15, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  if (qword_1EC642358 != -1)
  {
LABEL_11:
    swift_once();
  }

  v20 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4A3EC, v20, 0);
}

uint64_t sub_1D1D4ACA8()
{
  v22 = v0;
  sub_1D1769B04(&v21, *(v0 + 240));

  v1 = *(v0 + 200) + 1;
  if (v1 == *(v0 + 184))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);

    v4 = *(v0 + 40);
    v5 = *(v0 + 176);

    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);

    v12 = *(v0 + 8);

    return v12(v4);
  }

  *(v0 + 192) = *(v0 + 232);
  *(v0 + 200) = v1;
  v14 = *(v0 + 168);
  if (v1 >= *(v14 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  sub_1D1D4D138(v14 + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(*(v0 + 120) + 72) * v1, v15, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v19 = *(v18 + 16);
  *(v0 + 208) = v19;
  *(v0 + 216) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v16, v15, v17);
  sub_1D1D4D1A0(v15, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  if (qword_1EC642358 != -1)
  {
LABEL_11:
    swift_once();
  }

  v20 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4A3EC, v20, 0);
}

uint64_t AutoClimateModel.localPresenceRoomConfigs(for:)(uint64_t a1)
{
  swift_getKeyPath();
  v11 = v1;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v4 = *(v11 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1D1742188(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
      swift_beginAccess();
      v9 = *(v7 + v8);

      return v9;
    }
  }

  return 0;
}

uint64_t AutoClimateModel.controller(for:in:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v16 = v2;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v5 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v6 = *(v16 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_1D1742188(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
      swift_beginAccess();
      v11 = *(v9 + v10);
      if (*(v11 + 16))
      {
        v12 = sub_1D17420B0(a1);
        if (v13)
        {
          v14 = *(*(v11 + 56) + 8 * v12);

          return v14;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1D1D4B170(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  sub_1D1AA5CD0(a1);
  swift_endAccess();

  swift_getKeyPath();
  sub_1D1E66CBC();
}

uint64_t sub_1D1D4B2BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = sub_1D1E682DC();
  if ((v6 & 1) == 0)
  {
    v7 = result;
    swift_getKeyPath();
    sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
    sub_1D1E66CAC();

    v8 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
    result = swift_beginAccess();
    v9 = *(v3 + v8);
    if (*(v9 + 16))
    {

      v10 = sub_1D1742188(a2);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        sub_1D1D4D488(v7);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t AutoClimateModel.setUpThermostatController(for:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[10] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v3[11] = v9;
  v3[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4B524, v9, v8);
}

uint64_t sub_1D1D4B524()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D1741C08(v0[3], v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[10];
    v5 = v0[6];

    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v6 = v0[9];
    v7 = v0[5];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    v14 = v0[5];
    (*(v12 + 32))(v11, v0[6], v13);
    (*(v12 + 16))(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_1D1D4B6E8;
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[2];

    return sub_1D1D4B8DC(v18, v16);
  }
}

uint64_t sub_1D1D4B6E8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v7 = *v0;

  sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4B83C, v5, v4);
}

uint64_t sub_1D1D4B83C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1D4B8DC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[18] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v3[19] = v9;
  v3[20] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4BA18, v9, v8);
}

uint64_t sub_1D1D4BA18()
{
  v73 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1D1741C08(*(v0 + 88), v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 104);

    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
LABEL_23:
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);
    v54 = *(v0 + 104);

    v55 = *(v0 + 8);

    return v55();
  }

  v6 = *(v0 + 80);
  (*(*(v0 + 120) + 32))(*(v0 + 136), *(v0 + 104), *(v0 + 112));
  v7 = sub_1D1E682DC();
  *(v0 + 168) = v7;
  if (v8)
  {
    v9 = *(v0 + 144);

    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 80);
    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F470);
    v12 = v10;
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 136);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    if (v15)
    {
      v19 = *(v0 + 80);
      v71 = *(v0 + 136);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v72 = v21;
      *v20 = 136315138;
      v22 = [v19 name];
      v23 = sub_1D1E6781C();
      v25 = v24;

      v26 = sub_1D1B1312C(v23, v25, &v72);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D16EC000, v13, v14, "(AutoClimateModel - addController(for:)) - Failed to load thermostat controller for: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);

      (*(v17 + 8))(v71, v18);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    goto LABEL_23;
  }

  v27 = v7;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v28 = sub_1D1E6709C();
  __swift_project_value_buffer(v28, qword_1EC64F470);
  v29 = sub_1D1E6707C();
  v30 = sub_1D1E6835C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v27;
    _os_log_impl(&dword_1D16EC000, v29, v30, "(AutoClimateModel - addController(for:)) - Loading thermostat controller for thermostat with matterDeviceID: %llu if needed", v31, 0xCu);
    MEMORY[0x1D3893640](v31, -1, -1);
  }

  v32 = *(v0 + 96);

  swift_getKeyPath();
  *(v0 + 64) = v32;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v33 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  if (*(*(v32 + v33) + 16) && (v34 = *(v0 + 136), v35 = *(v32 + v33), , sub_1D1742188(v34), LOBYTE(v34) = v36, , (v34 & 1) != 0))
  {
    v37 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 72) = v37;
    sub_1D1E66CAC();

    v38 = *(v32 + v33);
    if (!*(v38 + 16))
    {
      v57 = *(v0 + 136);
      v56 = *(v0 + 144);
      v58 = *(v0 + 112);
      v59 = *(v0 + 120);

      (*(v59 + 8))(v57, v58);
      goto LABEL_23;
    }

    v39 = *(v0 + 136);
    v40 = *(v32 + v33);

    v41 = sub_1D1742188(v39);
    if ((v42 & 1) == 0)
    {
      v61 = *(v0 + 136);
      v60 = *(v0 + 144);
      v62 = *(v0 + 112);
      v63 = *(v0 + 120);

      (*(v63 + 8))(v61, v62);
      goto LABEL_23;
    }

    v43 = *(*(v38 + 56) + 8 * v41);
    *(v0 + 184) = v43;

    v44 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
    swift_beginAccess();
    if (*(*(v43 + v44) + 16))
    {
      sub_1D17420B0(v27);
      if (v45)
      {
        goto LABEL_18;
      }
    }

    if (([*(v0 + 80) supportsAdaptiveTemperatureAutomations] & 1) == 0 && !objc_msgSend(*(v0 + 80), sel_supportsCleanEnergyAutomation))
    {
      goto LABEL_18;
    }

    v64 = *(v0 + 128);
    v65 = *(v0 + 80);
    (*(*(v0 + 120) + 16))(v64, *(v0 + 136), *(v0 + 112));
    v66 = type metadata accessor for AutoClimateModel.Thermostat(0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v69 = AutoClimateModel.Thermostat.init(accessory:homeUUID:)(v65, v64);
    *(v0 + 192) = v69;
    if (!v69)
    {
LABEL_18:
      v46 = *(v0 + 144);
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));

      goto LABEL_23;
    }

    v70 = swift_task_alloc();
    *(v0 + 200) = v70;
    *v70 = v0;
    v70[1] = sub_1D1D4C2E0;

    return sub_1D1D54E08();
  }

  else
  {
    v47 = swift_task_alloc();
    *(v0 + 176) = v47;
    *v47 = v0;
    v47[1] = sub_1D1D4C120;
    v48 = *(v0 + 136);
    v49 = *(v0 + 96);
    v50 = *(v0 + 80);

    return sub_1D1D4C4CC(v50, v27, v48);
  }
}

uint64_t sub_1D1D4C120()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C240, v4, v3);
}

uint64_t sub_1D1D4C240()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1D4C2E0()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C400, v4, v3);
}

uint64_t sub_1D1D4C400()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[15];

  sub_1D1D4D328(v1, v3);

  (*(v7 + 8))(v5, v6);
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1D4C4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D1E66A7C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_1D1E67E1C();
  v4[15] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C5C4, v9, v8);
}

uint64_t sub_1D1D4C5C4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = *(v2 + 16);
  v0[18] = v5;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = type metadata accessor for AutoClimateModel.Home();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v0[20] = v9;
  v10 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  *(v9 + v10) = sub_1D18DBFD4(MEMORY[0x1E69E7CC0]);
  *(v9 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig) = 0;
  (*(v2 + 32))(v9 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID, v1, v3);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_1D1D4C708;

  return AutoClimateModel.Home.fetchLocalPresenceRooms()();
}

uint64_t sub_1D1D4C708()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4C828, v4, v3);
}

uint64_t sub_1D1D4C828()
{
  if (([*(v0 + 64) supportsAdaptiveTemperatureAutomations] & 1) == 0 && !objc_msgSend(*(v0 + 64), sel_supportsCleanEnergyAutomation))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  (*(v0 + 144))(v2, *(v0 + 80), *(v0 + 96));
  v4 = type metadata accessor for AutoClimateModel.Thermostat(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = AutoClimateModel.Thermostat.init(accessory:homeUUID:)(v3, v2);
  *(v0 + 176) = v7;
  if (v7)
  {
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_1D1D4C984;

    return sub_1D1D54E08();
  }

  else
  {
LABEL_7:
    v10 = *(v0 + 160);
    v11 = *(v0 + 120);

    v12 = *(v0 + 112);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1D1D4C984()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4CAA4, v4, v3);
}

uint64_t sub_1D1D4CAA4()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  sub_1D1D4D328(v1, v6);
  swift_getKeyPath();
  v0[5] = v5;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);

  sub_1D1E66CAC();

  v0[6] = v5;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v7 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v8 = *(v5 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v7);
  *(v5 + v7) = 0x8000000000000000;
  sub_1D175707C(v2, v4, isUniquelyReferenced_nonNull_native);
  *(v5 + v7) = v13;
  swift_endAccess();
  v0[7] = v5;
  swift_getKeyPath();
  sub_1D1E66CBC();

  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t AutoClimateModel.invalidateLocalPresenceRooms(for:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1D1E67E1C();
  v2[8] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4CD30, v4, v3);
}

uint64_t sub_1D1D4CD30()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1D4D2B0(&qword_1EC64E480, type metadata accessor for AutoClimateModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel16AutoClimateModel__homeToThermostatControllers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[6];

    v5 = sub_1D1742188(v4);
    if (v6)
    {
      v0[11] = *(*(v3 + 56) + 8 * v5);

      v7 = swift_task_alloc();
      v0[12] = v7;
      *v7 = v0;
      v7[1] = sub_1D1D4CEFC;

      return AutoClimateModel.Home.fetchLocalPresenceRooms()();
    }

    v10 = v0[8];
  }

  else
  {
    v9 = v0[8];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1D4CEFC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1D4D040, v5, v4);
}

uint64_t sub_1D1D4D040()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D4D0A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return AutoClimateModel.invalidateLocalPresenceRooms(for:)(a1);
}

uint64_t sub_1D1D4D138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D4D1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D4D208()
{
  result = sub_1D1E66CEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1D4D2B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1D4D328(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  swift_beginAccess();

  v6 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v5);
  *(v2 + v5) = 0x8000000000000000;
  sub_1D1756F58(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v12;
  swift_endAccess();
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F470);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a2;
    _os_log_impl(&dword_1D16EC000, v9, v10, "(AutoClimateModel - addController(for:)) - Loaded thermostat controller for thermostat with matterNodeID: %llu", v11, 0xCu);
    MEMORY[0x1D3893640](v11, -1, -1);
  }
}

uint64_t sub_1D1D4D488(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_1D17420B0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D173E7AC();
    }

    v12 = *(*(v11 + 56) + 8 * v8);

    sub_1D1757DEC(v8, v11);
    *(v2 + v4) = v11;
  }

  return swift_endAccess();
}

uint64_t AutoClimateModel.Home.fetchLocalPresenceRooms()()
{
  v1[23] = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v1[26] = v5;
  v1[27] = v6;
  v7 = swift_task_alloc();
  v1[28] = v7;
  *v7 = v1;
  v7[1] = sub_1D1D4D650;

  return sub_1D1E3766C(v0 + v6);
}

uint64_t sub_1D1D4D650(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4D750, 0, 0);
}

uint64_t sub_1D1D4D750()
{
  v18 = v0;
  v1 = v0[29];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1D1D4D9E8;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E4A8, &qword_1D1EABAF8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D1D4E798;
    v0[13] = &block_descriptor_55;
    v0[14] = v2;
    [v1 fetchRoomsSupportingLocalPresenceWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v3 = v0[23];
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC64F470);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6833C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[27];
      v8 = v0[23];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = sub_1D1E66A1C();
      v13 = sub_1D1B1312C(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Home - fetchLocalPresenceRooms(for:)) - Failed to find eligible home for identifier: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v14 = v0[26];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D1D4D9E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1D1D4E1A4;
  }

  else
  {
    v3 = sub_1D1D4DAF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1D4DAF8()
{
  v76 = v0;
  v1 = sub_1D1906554(v0[21]);

  v2 = v1;
  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    v62 = sub_1D1E6873C();
    v2 = v1;
    v3 = v62;
  }

  else
  {
    v3 = *(v1 + 2);
  }

  v4 = MEMORY[0x1E69E7CC0];
  v70 = v3;
  v71 = v2;
  if (v3)
  {
    v5 = v2;
    v75 = MEMORY[0x1E69E7CC0];
    v6 = sub_1D178DCE4(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v9 = 0;
    v66 = v0[24];
    v68 = v0[25];
    v2 = v5;
    v64 = v5 & 0xC000000000000001;
    v4 = v75;
    do
    {
      v72 = v4;
      if (v64)
      {
        v10 = MEMORY[0x1D3891EF0](v9, v2);
      }

      else
      {
        v10 = *&v2[8 * v9 + 32];
      }

      v11 = v10;
      v12 = v0[26];
      v13 = v0[27];
      v14 = v0[23];
      v15 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      v16 = [v11 name];
      v17 = sub_1D1E6781C();
      v18 = v0;
      v20 = v19;

      v21 = *(v66 + 24);
      v22 = sub_1D1E66A7C();
      (*(*(v22 - 8) + 16))(v12 + v21, v14 + v13, v22);
      v23 = (v12 + *(v66 + 20));
      *v23 = v17;
      v23[1] = v20;
      v4 = v72;
      v75 = v72;
      v25 = *(v72 + 16);
      v24 = *(v72 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D178DCE4(v24 > 1, v25 + 1, 1);
        v4 = v75;
      }

      v26 = v18[26];
      ++v9;
      *(v4 + 16) = v25 + 1;
      sub_1D1D4E92C(v26, v4 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v25);
      v3 = v70;
      v2 = v71;
      v0 = v18;
    }

    while (v70 != v9);
  }

  v27 = v2;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v28 = v0[29];
  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EC64F470);
  v30 = v28;

  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6835C();

  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_29;
  }

  v69 = v32;
  v33 = v0[29];
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v74 = v35;
  *v34 = 136315394;
  v36 = [v33 name];
  v37 = sub_1D1E6781C();
  v39 = v38;

  v40 = sub_1D1B1312C(v37, v39, &v74);

  *(v34 + 4) = v40;
  *(v34 + 12) = 2080;
  v73 = v4;
  v67 = v35;
  if (v3)
  {
    v75 = MEMORY[0x1E69E7CC0];
    v6 = sub_1D178CD24(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v65 = v31;
      v41 = v0;
      v42 = 0;
      v43 = v75;
      v44 = v27;
      v45 = v27 & 0xC000000000000001;
      do
      {
        if (v45)
        {
          v46 = MEMORY[0x1D3891EF0](v42, v44);
        }

        else
        {
          v46 = *&v44[8 * v42 + 32];
        }

        v47 = v46;
        v48 = [v46 name];
        v49 = sub_1D1E6781C();
        v51 = v50;

        v75 = v43;
        v53 = *(v43 + 16);
        v52 = *(v43 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1D178CD24((v52 > 1), v53 + 1, 1);
          v43 = v75;
        }

        ++v42;
        *(v43 + 16) = v53 + 1;
        v54 = v43 + 16 * v53;
        *(v54 + 32) = v49;
        *(v54 + 40) = v51;
        v44 = v71;
      }

      while (v70 != v42);

      v31 = v65;
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  v41 = v0;

  v43 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v41[22] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v55 = sub_1D1E6770C();
  v57 = v56;
  v0 = v41;

  v58 = sub_1D1B1312C(v55, v57, &v74);

  *(v34 + 14) = v58;
  _os_log_impl(&dword_1D16EC000, v31, v69, "(AutoClimateModel.Home - fetchLocalPresenceRooms(for:)) - Successfully fetched rooms supporting local presence for home: %s rooms: %s.", v34, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v67, -1, -1);
  MEMORY[0x1D3893640](v34, -1, -1);

  v4 = v73;
LABEL_29:
  v0[31] = v4;
  sub_1D1E67E1C();
  v0[32] = sub_1D1E67E0C();
  v59 = sub_1D1E67D4C();
  v61 = v60;
  v6 = sub_1D1D4E0A0;
  v7 = v59;
  v8 = v61;

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D1D4E0A0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[23];

  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1D4E13C, 0, 0);
}

uint64_t sub_1D1D4E13C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D4E1A4()
{
  v26 = v0;
  v1 = v0[30];
  swift_willThrow();
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v3 = v0[29];
  v2 = v0[30];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64F470);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  if (v9)
  {
    v11 = v0[29];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v15 = [v11 name];
    v16 = sub_1D1E6781C();
    v18 = v17;

    v19 = sub_1D1B1312C(v16, v18, &v25);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2112;
    v20 = v10;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&dword_1D16EC000, v7, v8, "(AutoClimateModel.Home - fetchLocalPresenceRooms(for:)) - Failed to get rooms supporting local presence for home: %s because of error: %@.", v12, 0x16u);
    sub_1D179F28C(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
  }

  v0[31] = 0;
  sub_1D1E67E1C();
  v0[32] = sub_1D1E67E0C();
  v23 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4E0A0, v23, v22);
}

uint64_t AutoClimateModel.Home.homeUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1D4E498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D1D4E500()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D1D4E548(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL sub_1D1D4E600()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return v2 && *(v2 + 16) != 0;
}

uint64_t AutoClimateModel.Home.deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers);

  v4 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig);

  return v0;
}

uint64_t AutoClimateModel.Home.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_homeUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_thermostatControllers);

  v4 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1D4E798(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1D1A7DEE4();
    sub_1D1D4EB34();
    **(*(v4 + 64) + 40) = sub_1D1E6816C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1D4E884()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return AutoClimateModel.Home.fetchLocalPresenceRooms()();
}

uint64_t sub_1D1D4E92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AutoClimateModel.Home()
{
  result = qword_1EC64E4B8;
  if (!qword_1EC64E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D4E9E4()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D1D4EB34()
{
  result = qword_1EC6434E8;
  if (!qword_1EC6434E8)
  {
    sub_1D1A7DEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6434E8);
  }

  return result;
}

uint64_t sub_1D1D4EB8C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = sub_1D1E66C5C();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4EC9C, 0, 0);
}

uint64_t sub_1D1D4EC9C()
{
  v30 = v0;
  v1 = [*(v0 + 192) location];
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E696F388]) initWithLocation_];
    *(v0 + 256) = v3;
    if (v3)
    {
      v4 = v3;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 168;
      *(v0 + 24) = sub_1D1D4F08C;
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E4C8, &qword_1D1EABB58);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D1D4F83C;
      *(v0 + 104) = &block_descriptor_56;
      *(v0 + 112) = v5;
      [v4 getMapItemsWithCompletionHandler_];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F470);
    v12 = v2;
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = [v12 description];
      v18 = sub_1D1E6781C();
      v20 = v19;

      v21 = sub_1D1B1312C(v18, v20, &v29);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Failed to create reverse geocoding request for location: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v22 = *(v0 + 184);
    sub_1D1E66C4C();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC64F470);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6831C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D16EC000, v7, v8, "No location available for home, using current timezone", v9, 2u);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v10 = *(v0 + 184);

    sub_1D1E66C4C();
  }

  v24 = *(v0 + 232);
  v23 = *(v0 + 240);
  v25 = *(v0 + 224);
  v26 = *(v0 + 200);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D1D4F08C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1D1D4F644;
  }

  else
  {
    v3 = sub_1D1D4F19C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1D4F19C()
{
  v52 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v34 = v0[21];
    }

    if (sub_1D1E6873C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1D3891EF0](0, v1);
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
LABEL_6:
      v3 = v2;

      v4 = [v3 timeZone];
      v5 = v0[30];
      if (v4)
      {
        v6 = v0[29];
        v8 = v0[26];
        v7 = v0[27];
        v9 = v0[25];
        v10 = v4;
        sub_1D1E66C3C();

        v11 = *(v7 + 32);
        v11(v9, v6, v8);
        (*(v7 + 56))(v9, 0, 1, v8);
        v11(v5, v9, v8);
      }

      else
      {
        v13 = v0[26];
        v12 = v0[27];
        v14 = v0[25];
        (*(v12 + 56))(v14, 1, 1, v13);
        sub_1D1E66C4C();
        if ((*(v12 + 48))(v14, 1, v13) != 1)
        {
          sub_1D1D4F934(v0[25]);
        }
      }

      if (qword_1EC642480 != -1)
      {
        swift_once();
      }

      v15 = v0[30];
      v16 = v0[27];
      v17 = v0[28];
      v18 = v0[26];
      v19 = sub_1D1E6709C();
      __swift_project_value_buffer(v19, qword_1EC64F470);
      (*(v16 + 16))(v17, v15, v18);
      v20 = sub_1D1E6707C();
      v21 = sub_1D1E6831C();
      v22 = os_log_type_enabled(v20, v21);
      v24 = v0[31];
      v23 = v0[32];
      v25 = v0[27];
      v26 = v0[28];
      v27 = v0[26];
      if (v22)
      {
        v50 = v0[32];
        v28 = swift_slowAlloc();
        v49 = v24;
        v29 = swift_slowAlloc();
        v51 = v29;
        *v28 = 136315138;
        v48 = v3;
        v30 = sub_1D1E66BFC();
        v32 = v31;
        (*(v25 + 8))(v26, v27);
        v33 = sub_1D1B1312C(v30, v32, &v51);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1D16EC000, v20, v21, "Successfully retrieved timezone: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1D3893640](v29, -1, -1);
        MEMORY[0x1D3893640](v28, -1, -1);
      }

      else
      {

        (*(v25 + 8))(v26, v27);
      }

      (*(v0[27] + 32))(v0[23], v0[30], v0[26]);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_1EC642480 != -1)
  {
LABEL_28:
    swift_once();
  }

  v35 = sub_1D1E6709C();
  __swift_project_value_buffer(v35, qword_1EC64F470);
  v36 = sub_1D1E6707C();
  v37 = sub_1D1E6831C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D16EC000, v36, v37, "No map items found for location, using current timezone", v38, 2u);
    MEMORY[0x1D3893640](v38, -1, -1);
  }

  v40 = v0[31];
  v39 = v0[32];
  v41 = v0[23];

  sub_1D1E66C4C();
LABEL_23:
  v43 = v0[29];
  v42 = v0[30];
  v44 = v0[28];
  v45 = v0[25];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D1D4F644()
{
  v27 = v0;
  v1 = v0[33];
  swift_willThrow();
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F470);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[20];
    v13 = sub_1D1E6915C();
    v15 = sub_1D1B1312C(v13, v14, &v26);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error retrieving map items: %s, using current timezone", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v16 = v0[32];
  v17 = v0[33];
  v18 = v0[31];
  v19 = v0[23];
  sub_1D1E66C4C();

  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[28];
  v23 = v0[25];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D1D4F83C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1D1D4F99C();
    **(*(v4 + 64) + 40) = sub_1D1E67C1C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1D4F934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1D4F99C()
{
  result = qword_1EC64E4D0;
  if (!qword_1EC64E4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64E4D0);
  }

  return result;
}

uint64_t sub_1D1D4F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D1E66A7C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4FAB0, 0, 0);
}

uint64_t sub_1D1D4FAB0()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 24) uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1E67E1C();
  *(v0 + 56) = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4FB70, v4, v3);
}

uint64_t sub_1D1D4FB70()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];

  sub_1D1D4B170(v2);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall AutoClimateModel.home(_:didRemove:)(HMHome _, HMAccessory didRemove)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  if ([(objc_class *)_.super.isa isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v8 = sub_1D1E67E7C();
    v9 = *(*(v8 - 8) + 56);
    v9(v7, 1, 1, v8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = didRemove;
    *(v11 + 40) = v10;
    *(v11 + 48) = _;
    v12 = didRemove.super.isa;
    v13 = _.super.isa;
    sub_1D17C6EF0(0, 0, v7, &unk_1D1EABB68, v11);

    if ([(objc_class *)v13 isAllowedToEnableAdaptiveTemperatureAutomations])
    {
      v9(v7, 1, 1, v8);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v13;
      v15[5] = v14;
      v16 = v13;
      sub_1D17C6EF0(0, 0, v7, &unk_1D1EABB78, v15);
    }
  }
}

uint64_t sub_1D1D4FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1D1E66A7C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D4FF50, 0, 0);
}

uint64_t sub_1D1D4FF50()
{
  v24 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F470);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v9 = [v6 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v23);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel - homeManager(:didRemoveAccessory:)) - Removing thermostat controller for thermostat: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v14 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  v16 = *(v0 + 80);
  if (Strong)
  {
    v17 = [*(v0 + 56) uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1E67E1C();
    *(v0 + 96) = sub_1D1E67E0C();
    v19 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D501DC, v19, v18);
  }

  else
  {
    v20 = *(v0 + 80);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D1D501DC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5];

  sub_1D1D4B2BC(v6, v3);

  (*(v4 + 8))(v3, v5);
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

void _s13HomeDataModel011AutoClimateC0C4home_6didAddySo6HMHomeC_So11HMAccessoryCtF_0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  if ([a1 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    if (a2)
    {
      v28 = v2;
      v30 = a1;
      v31 = a2;
      v9 = [v31 services];
      sub_1D17DAA94();
      v10 = sub_1D1E67C1C();

      v29 = v8;
      if (v10 >> 62)
      {
        goto LABEL_27;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v12 = 0;
      v13 = *MEMORY[0x1E696CA98];
      while (v11 != v12)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D3891EF0](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = v14;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v11 = sub_1D1E6873C();
          goto LABEL_5;
        }

        v16 = [v14 serviceType];
        v17 = sub_1D1E6781C();
        v19 = v18;

        if (v17 == sub_1D1E6781C() && v19 == v20)
        {

          goto LABEL_22;
        }

        v22 = sub_1D1E6904C();

        ++v12;
        if (v22)
        {

LABEL_22:
          v8 = v29;
          a1 = v30;
          goto LABEL_23;
        }
      }

      v23 = v31;
    }

    else
    {
LABEL_23:
      v24 = sub_1D1E67E7C();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = a1;
      v26[5] = v25;
      v27 = a1;
      sub_1D17C6EF0(0, 0, v8, &unk_1D1EABBB0, v26);
    }
  }
}

uint64_t sub_1D1D507D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  result = [a1 isAllowedToEnableAdaptiveTemperatureAutomations];
  if (result)
  {
    v11 = sub_1D1E67E7C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v12;
    v14 = a1;
    sub_1D17C6EF0(0, 0, v9, a4, v13);
  }

  return result;
}

void sub_1D1D5092C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = a3;
  v20 = a1;
  if ([v13 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v14 = sub_1D1E67E7C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v15;
    v17 = v13;
    sub_1D17C6EF0(0, 0, v12, a6, v16);
  }

  else
  {

    v18 = v20;
  }
}

uint64_t sub_1D1D50AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D1E66A7C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D50B88, 0, 0);
}

uint64_t sub_1D1D50B88()
{
  v27 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F470);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v13 = sub_1D1E68FAC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1D1B1312C(v13, v15, &v26);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel - invalidateLocalPresence(home:accessory:)) - Updating local presence rooms for home: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v17 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  v19 = *(v0 + 72);
  if (Strong)
  {
    v20 = [*(v0 + 40) uniqueIdentifier];
    sub_1D1E66A5C();

    v21 = swift_task_alloc();
    *(v0 + 88) = v21;
    *v21 = v0;
    v21[1] = sub_1D1D50E5C;
    v22 = *(v0 + 72);

    return AutoClimateModel.invalidateLocalPresenceRooms(for:)(v22);
  }

  else
  {
    v24 = *(v0 + 72);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1D1D50E5C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 72);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1D1D50FD4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F470);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = [v9 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v25);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1D16EC000, v10, v11, "(AutoClimateModel - homeManager(:didRemoveHome:)) - Removing thermostat controllers for home: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v19 = sub_1D1E67E7C();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v20[5] = v9;
  v21 = v9;
  v22 = v2;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1EABBC0, v20);
}

uint64_t sub_1D1D51244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D4FE8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1D5130C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D50AC8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1D51414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1D4F9F0(a1, v4, v5, v7, v6);
}

void sub_1D1D514D4(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_1D1E686DC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1D1E6869C();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_1D1790CC8(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 name];
        v15 = sub_1D1E6781C();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D178CD24((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E568, &qword_1D1EABE68);
          v7 = sub_1D1E681AC();
          sub_1D1E687AC();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_1D1716920(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_1D1716920(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_1D1716920(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D1D51854(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

size_t sub_1D1D518EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D1864AF4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D1D66490(v11, a2, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

char *AutoClimateModel.Thermostat.__allocating_init(staticService:homeUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AutoClimateModel.Thermostat.init(staticService:homeUUID:)(a1, a2);
}

uint64_t AutoClimateModel.Thermostat.__allocating_init(accessory:homeUUID:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AutoClimateModel.Thermostat.init(accessory:homeUUID:)(a1, a2);
}

uint64_t sub_1D1D51AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for EndpointPath(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StaticService(0);
  sub_1D1741C08(a1 + v21[39], v10, &qword_1EC644870, &unk_1D1EABA00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D1D52E14(a1, type metadata accessor for StaticService);
    sub_1D1741A30(v10, &qword_1EC644870, &unk_1D1EABA00);
    v22 = 1;
    return (*(v17 + 56))(a2, v22, 1, v16);
  }

  v31 = v17;
  v32 = a2;
  sub_1D1D66490(v10, v15, type metadata accessor for EndpointPath);
  v23 = sub_1D1E66A7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v25(v20, a1, v23);
  v25(&v20[v16[6]], a1 + v21[11], v23);
  v26 = *(a1 + v21[19]);
  v27 = v33;
  sub_1D17721A0(v26, v33);
  result = (*(v24 + 48))(v27, 1, v23);
  if (result != 1)
  {
    (*(v24 + 32))(&v20[v16[7]], v27, v23);
    sub_1D1D52E14(a1, type metadata accessor for StaticService);
    v29 = *&v15[*(v11 + 20)];
    sub_1D1D52E14(v15, type metadata accessor for EndpointPath);
    *&v20[v16[5]] = v29;
    a2 = v32;
    sub_1D1D66490(v20, v32, _s10ThermostatC23ThermostatServiceConfigVMa);
    v22 = 0;
    v17 = v31;
    return (*(v17 + 56))(a2, v22, 1, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D51EA4(uint64_t a1, uint64_t a2, int *a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + a3[5]) != *(a2 + a3[5]))
  {
    return 0;
  }

  v6 = a3[6];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[7];

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1D51F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v5 = sub_1D1E66C5C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D1D51FC8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D1E66C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1D1D520E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v4 = sub_1D1E66C5C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D1D52168(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v4 = sub_1D1E66C5C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *AutoClimateModel.Thermostat.init(staticService:homeUUID:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v44 = sub_1D1E66A7C();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E4D8, qword_1D1EABBD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - v12;
  v14 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite] = 0;
  sub_1D1E66C4C();
  *&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer] = 0;
  v43 = a1;
  sub_1D1D52DAC(a1, v9, type metadata accessor for StaticService);
  sub_1D1D51AB8(v9, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D1741A30(v13, &qword_1EC64E4D8, qword_1D1EABBD0);
    v19 = *&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite];

    v20 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    v21 = sub_1D1E66C5C();
    (*(*(v21 - 8) + 8))(&v2[v20], v21);
    v22 = *&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer];

    type metadata accessor for AutoClimateModel.Thermostat(0);
    swift_defaultActor_destroy();
    (*(v42 + 8))(v41, v44);
    sub_1D1D52E14(v43, type metadata accessor for StaticService);
    v23 = *(*v2 + 48);
    v24 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1D1D66490(v13, v18, _s10ThermostatC23ThermostatServiceConfigVMa);
    sub_1D1D52DAC(v18, &v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig], _s10ThermostatC23ThermostatServiceConfigVMa);
    v26 = v41;
    v25 = v42;
    v27 = *(v42 + 16);
    v28 = v44;
    v27(&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID], v41, v44);
    v29 = v43;
    v30 = v40;
    v27(v40, v43 + *(v6 + 44), v28);
    v31 = type metadata accessor for AutoClimateModel.Thermostat.State();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    v35 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
    v36 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
    *(v34 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule) = 0;
    v37 = v34 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = xmmword_1D1E85870;
    *(v37 + 32) = 0;
    sub_1D1E66CDC();
    (*(v25 + 8))(v26, v28);
    sub_1D1D52E14(v29, type metadata accessor for StaticService);
    sub_1D1D52E14(v18, _s10ThermostatC23ThermostatServiceConfigVMa);
    (*(v25 + 32))(v34 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID, v30, v28);
    *(v2 + 14) = v34;
  }

  return v2;
}

uint64_t AutoClimateModel.Thermostat.init(accessory:homeUUID:)(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite] = 0;
  sub_1D1E66C4C();
  *&v2[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer] = 0;
  v61 = sub_1D1E682DC();
  if (v15)
  {
    goto LABEL_27;
  }

  v16 = [a1 room];
  if (!v16)
  {
    goto LABEL_27;
  }

  v54 = v11;
  v60 = v16;
  v56 = v7;
  v57 = a2;
  v58 = v6;
  v17 = [a1 services];
  v18 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v19 = sub_1D1E67C1C();

  v59 = a1;
  v55 = v10;
  v53[1] = v18;
  if (v19 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v21 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1D3891EF0](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ([v22 isPrimaryService])
      {
        a1 = v59;
        goto LABEL_24;
      }

      ++v21;
      if (v24 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  a1 = v59;
  v25 = [v59 services];
  v26 = sub_1D1E67C1C();

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  result = sub_1D1E6873C();
  if (!result)
  {
LABEL_26:

    a2 = v57;
    v6 = v58;
    v7 = v56;
LABEL_27:
    v47 = *&v3[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite];

    v48 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    v49 = sub_1D1E66C5C();
    (*(*(v49 - 8) + 8))(&v3[v48], v49);
    v50 = *&v3[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer];

    type metadata accessor for AutoClimateModel.Thermostat(0);
    swift_defaultActor_destroy();

    (*(v7 + 8))(a2, v6);
    v51 = *(*v3 + 48);
    v52 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_20:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1D3891EF0](0, v26);
LABEL_23:
    v23 = v28;
LABEL_24:

    v29 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = [a1 uniqueIdentifier];
    v31 = v54;
    v32 = &v14[*(v54 + 24)];
    sub_1D1E66A5C();

    v33 = [v60 uniqueIdentifier];
    v34 = &v14[*(v31 + 28)];
    sub_1D1E66A5C();

    *&v14[*(v31 + 20)] = v61;
    sub_1D1D66490(v14, &v3[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig], _s10ThermostatC23ThermostatServiceConfigVMa);
    v36 = v56;
    v35 = v57;
    v37 = v58;
    (*(v56 + 16))(&v3[OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID], v57, v58);
    v38 = [a1 uniqueIdentifier];
    v39 = v55;
    sub_1D1E66A5C();

    v40 = type metadata accessor for AutoClimateModel.Thermostat.State();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    v44 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
    v45 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
    *(v43 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule) = 0;
    v46 = v43 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = xmmword_1D1E85870;
    *(v46 + 32) = 0;
    sub_1D1E66CDC();

    (*(v36 + 8))(v35, v37);
    (*(v36 + 32))(v43 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID, v39, v37);
    *(v3 + 14) = v43;
    return v3;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v26 + 32);
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D52DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D52E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D52E74()
{
  v1[2] = v0;
  v2 = sub_1D1E66A7C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D52F80, v0, 0);
}

uint64_t sub_1D1D52F80()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v25 = v0[6];
  v26 = v1;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v22 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v23 = v6;
  v24 = swift_allocObject();
  swift_weakInit();
  v9 = *(v4 + 16);
  v9(v2, v6 + v7, v5);
  v10 = v6 + v22;
  v11 = v5;
  v9(v25, v10, v5);
  v12 = *(v4 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = (v3 + v12 + v13) & ~v12;
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = *(v4 + 32);
  v17(v16 + v13, v2, v11);
  v17(v16 + v14, v25, v11);
  *(v16 + v15) = v24;
  v18 = sub_1D17C6EF0(0, 0, v26, &unk_1D1EABBF0, v16);
  v19 = *(v23 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer);
  *(v23 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer) = v18;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D1D531A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for StaticService(0);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E570, &qword_1D1EABEC0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E578, &unk_1D1EABEC8);
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v18 = sub_1D1E66A7C();
  v6[20] = v18;
  v19 = *(v18 - 8);
  v6[21] = v19;
  v6[22] = *(v19 + 64);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643E90, &qword_1D1E74280);
  v6[25] = v20;
  v21 = *(v20 - 8);
  v6[26] = v21;
  v22 = *(v21 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D53498, 0, 0);
}

uint64_t sub_1D1D53498()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[29] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[23];
    v3 = v0[24];
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[20];
    v31 = v3;
    v32 = v7;
    v33 = v0[18];
    v9 = v0[5];
    v30 = v0[6];
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = *(v5 + 16);
    v11(v3, v9, v8);
    v11(v4, v30, v8);
    v12 = *(v5 + 80);
    v13 = (v12 + 24) & ~v12;
    v14 = (v6 + v12 + v13) & ~v12;
    v15 = swift_allocObject();
    v0[30] = v15;
    *(v15 + 16) = v2;
    v16 = *(v5 + 32);
    v16(v15 + v13, v31, v8);
    v16(v15 + v14, v4, v8);

    sub_1D1741C08(v32, v33, &unk_1EC6442C0, &qword_1D1E741A0);
    v17 = qword_1EC642358;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = v0[18];
    v19 = qword_1EC64ABE8;
    v20 = sub_1D1D66394(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = sub_1D1D67748;
    v21[5] = v15;

    v22 = sub_1D17C8154(0, 0, v18, &unk_1D1EABEE0, v21);
    v0[33] = v22;
    v23 = *(MEMORY[0x1E69E86C0] + 4);
    v24 = swift_task_alloc();
    v0[34] = v24;
    *v24 = v0;
    v24[1] = sub_1D1D53A6C;
    v25 = v0[27];
    v26 = v0[25];

    return MEMORY[0x1EEE6DA40](v25, v22, v26);
  }

  else
  {
    v0[31] = sub_1D1E67E1C();
    v0[32] = sub_1D1E67E0C();
    v28 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D537EC, v28, v27);
  }
}

uint64_t sub_1D1D537EC()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v18 = v0[22];
  v6 = v0[20];
  v19 = v0[8];
  v20 = v0[27];
  v8 = v0[5];
  v7 = v0[6];

  v9 = *(v5 + 16);
  v9(v3, v8, v6);
  v9(v4, v7, v6);
  v10 = sub_1D1E67E0C();
  v11 = *(v5 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = (v18 + v11 + v12) & ~v11;
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v10;
  *(v14 + 24) = v15;
  v16 = *(v5 + 32);
  v16(v14 + v12, v3, v6);
  v16(v14 + v13, v4, v6);
  sub_1D1E66D3C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D53978, 0, 0);
}

uint64_t sub_1D1D53978()
{
  v1 = v0[17];
  v2 = v0[7];
  (*(v0[26] + 32))(v0[28], v0[27], v0[25]);
  sub_1D1E66D0C();
  swift_beginAccess();
  v3 = *(MEMORY[0x1E69E81F8] + 4);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1D1D53CA4;
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6CEB0](v6, 0, 0, v7);
}

uint64_t sub_1D1D53A6C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D53B84, 0, 0);
}

uint64_t sub_1D1D53B84()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[19];

  sub_1D1741A30(v3, &unk_1EC6442C0, &qword_1D1E741A0);

  v4 = v0[17];
  v5 = v0[7];
  (*(v0[26] + 32))(v0[28], v0[27], v0[25]);
  sub_1D1E66D0C();
  swift_beginAccess();
  v6 = *(MEMORY[0x1E69E81F8] + 4);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1D1D53CA4;
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];

  return MEMORY[0x1EEE6CEB0](v9, 0, 0, v10);
}

uint64_t sub_1D1D53CA4()
{
  v2 = *(*v1 + 280);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D53DB4, 0, 0);
  }

  return result;
}

uint64_t sub_1D1D53DB4()
{
  v1 = v0[14];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[28];
    v3 = v0[25];
    v4 = v0[26];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v4 + 8))(v2, v3);
LABEL_5:
    v13 = v0[27];
    v12 = v0[28];
    v15 = v0[23];
    v14 = v0[24];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[17];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[10];

    v22 = v0[1];

    return v22();
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  sub_1D1D676D8(v1, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[28];
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v10 + 8))(v8, v9);
    sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_5;
  }

  v24 = v0[7];
  sub_1D1D66490(v0[10], v0[13], type metadata accessor for StaticService);
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v26 = swift_task_alloc();
    v0[37] = v26;
    *v26 = v0;
    v26[1] = sub_1D1D540DC;
    v27 = v0[13];

    return sub_1D1D5ABBC(v27);
  }

  else
  {
    sub_1D1D52E14(v0[13], type metadata accessor for StaticService);
    v28 = *(MEMORY[0x1E69E81F8] + 4);
    v29 = swift_task_alloc();
    v0[35] = v29;
    *v29 = v0;
    v29[1] = sub_1D1D53CA4;
    v30 = v0[17];
    v31 = v0[14];
    v32 = v0[15];

    return MEMORY[0x1EEE6CEB0](v31, 0, 0, v32);
  }
}

uint64_t sub_1D1D540DC()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D541F4, 0, 0);
}

uint64_t sub_1D1D541F4()
{
  sub_1D1D52E14(v0[13], type metadata accessor for StaticService);
  v1 = *(MEMORY[0x1E69E81F8] + 4);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1D1D53CA4;
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x1EEE6CEB0](v4, 0, 0, v5);
}

uint64_t sub_1D1D542B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = *(v8 + 16);
  v14(v24 - v12, a2, v7);
  v14(v11, a3, v7);
  v15 = qword_1EC642358;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC64ABE8;
  v17 = sub_1D1D66394(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v18 = *(v8 + 80);
  v19 = (v18 + 40) & ~v18;
  v20 = (v9 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = v16;
  *(v21 + 3) = v17;
  *(v21 + 4) = a1;
  v22 = *(v8 + 32);
  v22(&v21[v19], v13, v7);
  v22(&v21[v20], v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  return sub_1D1E66D3C();
}

uint64_t sub_1D1D5450C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StateSnapshot(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - v13;
  v15 = *(a1 + 24);
  swift_getKeyPath();
  v40 = v15;
  sub_1D1D66394(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v16 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (*(v17 + 16))
  {
    v18 = *(v15 + v16);

    v19 = sub_1D1742188(a2);
    if (v20)
    {
      v21 = v19;
      v38 = v8;
      v22 = *(v17 + 56);
      v23 = type metadata accessor for HomeState();
      v24 = *(v23 - 8);
      v39 = a4;
      v25 = v24;
      v8 = v38;
      sub_1D1D52DAC(v22 + *(v24 + 72) * v21, v14, type metadata accessor for HomeState);

      (*(v25 + 56))(v14, 0, 1, v23);
      a4 = v39;
      goto LABEL_6;
    }
  }

  v23 = type metadata accessor for HomeState();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
LABEL_6:
  type metadata accessor for HomeState();
  if ((*(*(v23 - 8) + 48))(v14, 1, v23))
  {
    sub_1D1741A30(v14, &qword_1EC649148, &qword_1D1E96490);
  }

  else
  {
    v26 = v41;
    sub_1D1D52DAC(v14, v41, type metadata accessor for StateSnapshot);
    sub_1D1741A30(v14, &qword_1EC649148, &qword_1D1E96490);
    v27 = *(v26 + *(v8 + 60));

    sub_1D1D52E14(v26, type metadata accessor for StateSnapshot);
    if (*(v27 + 16))
    {
      v28 = sub_1D1742188(a3);
      if (v29)
      {
        v30 = v28;
        v31 = *(v27 + 56);
        v32 = type metadata accessor for StaticService(0);
        v33 = a4;
        v34 = *(v32 - 8);
        sub_1D1D52DAC(v31 + *(v34 + 72) * v30, v33, type metadata accessor for StaticService);

        return (*(v34 + 56))(v33, 0, 1, v32);
      }
    }
  }

  v36 = type metadata accessor for StaticService(0);
  return (*(*(v36 - 8) + 56))(a4, 1, 1, v36);
}

uint64_t sub_1D1D54990@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29[0] = a2;
  v5 = type metadata accessor for StateSnapshot(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v29 - v12;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE07DC60;
  swift_getKeyPath();
  v29[1] = v14;
  sub_1D1D66394(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v15 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_1D1742188(a1);
    if (v18)
    {
      sub_1D1D52DAC(*(v16 + 56) + *(v6 + 72) * v17, v13, type metadata accessor for StateSnapshot);
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  (*(v6 + 56))(v13, v19, 1, v5);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);
  }

  else
  {
    sub_1D1D52DAC(v13, v9, type metadata accessor for StateSnapshot);
    sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);
    v20 = *&v9[*(v5 + 60)];

    sub_1D1D52E14(v9, type metadata accessor for StateSnapshot);
    if (*(v20 + 16))
    {
      v21 = sub_1D1742188(v29[0]);
      if (v22)
      {
        v23 = v21;
        v24 = *(v20 + 56);
        v25 = type metadata accessor for StaticService(0);
        v26 = *(v25 - 8);
        sub_1D1D52DAC(v24 + *(v26 + 72) * v23, a3, type metadata accessor for StaticService);

        return (*(v26 + 56))(a3, 0, 1, v25);
      }
    }
  }

  v28 = type metadata accessor for StaticService(0);
  return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
}

uint64_t sub_1D1D54D94()
{
  if (*(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer))
  {
    v1 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer);

    sub_1D1E67F5C();
  }

  return result;
}

uint64_t sub_1D1D54E08()
{
  *(v1 + 40) = v0;
  v2 = sub_1D1E66C5C();
  *(v1 + 48) = v2;
  v3 = *(v2 - 8);
  *(v1 + 56) = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = v0 + v6;
  v8 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v1 + 144) = v8;
  v9 = swift_task_alloc();
  *(v1 + 80) = v9;
  *v9 = v1;
  v9[1] = sub_1D1D54F30;

  return sub_1D1B9A370(v7 + v8);
}

uint64_t sub_1D1D54F30(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D55048, v3, 0);
}

uint64_t sub_1D1D55048()
{
  v19 = v0;
  if (*(v0 + 88))
  {
    v1 = *(v0 + 40);
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1D1D55344;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 40);
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC64F470);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 144);
      v10 = *(v0 + 40) + *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EC8C30, &v18);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0x536C616974696E69, 0xEE00292870757465, &v18);
      *(v11 + 22) = 2080;
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v13 = sub_1D1E68FAC();
      v15 = sub_1D1B1312C(v13, v14, &v18);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to find thermostat for accessory: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v16 = *(v0 + 64);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D1D55344(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5545C, v3, 0);
}

uint64_t sub_1D1D5545C()
{
  if (v0[13])
  {
    v1 = swift_task_alloc();
    v0[14] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D55624;
    v2 = v0[8];

    return sub_1D1D4EB8C(v2);
  }

  else
  {
    v4 = v0[11];
    v5 = v0[5];
    sub_1D1D66394(&qword_1EC64E4F8, type metadata accessor for AutoClimateModel.Thermostat);
    v6 = swift_allocObject();
    v0[15] = v6;
    swift_weakInit();
    v7 = swift_task_alloc();
    v0[16] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    v8 = *(MEMORY[0x1E69E88D8] + 4);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1D1D558D0;

    return MEMORY[0x1EEE6DDE8]();
  }
}

uint64_t sub_1D1D55624()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D55734, v2, 0);
}

uint64_t sub_1D1D55734()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  sub_1D1D66394(&qword_1EC64E4F8, type metadata accessor for AutoClimateModel.Thermostat);
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  swift_weakInit();
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v10 = *(MEMORY[0x1E69E88D8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1D1D558D0;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D1D558D0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 40);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D55A20, v4, 0);
}

uint64_t sub_1D1D55A20()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AutoClimateModel.Thermostat.thermostat.getter()
{
  v2 = v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v3 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D19C8EA0;

  return sub_1D1B9A370(v2 + v3);
}

uint64_t AutoClimateModel.Thermostat.home.getter()
{
  v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1AC3C3C;

  return sub_1D1E3766C(v0 + v2);
}

uint64_t sub_1D1D55C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D55CA0, 0, 0);
}

uint64_t sub_1D1D55CA0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;

  v8 = v2;
  sub_1D1DE256C(v1, &unk_1D1EABE90, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v9[5] = v8;

  v10 = v8;
  sub_1D1DE256C(v1, &unk_1D1EABEA0, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v1, 1, 1, v5);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = v10;

  v12 = v10;
  sub_1D1DE256C(v1, &unk_1D1EABEB0, v11);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D1D55ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D55EF4, 0, 0);
}

uint64_t sub_1D1D55EF4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D19DD7D0;
    v4 = v0[6];

    return sub_1D1D55FE8(v4, 1);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1D55FE8(uint64_t a1, char a2)
{
  *(v3 + 408) = a2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240) - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_1D1E66C5C();
  *(v3 + 216) = v5;
  v6 = *(v5 - 8);
  *(v3 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  *(v3 + 240) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v10 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  *(v3 + 264) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  *(v3 + 272) = v12;
  *(v3 + 280) = v13;
  v14 = swift_task_alloc();
  *(v3 + 288) = v14;
  *v14 = v3;
  v14[1] = sub_1D1D561A4;

  return sub_1D1E3766C(v2 + v13);
}

uint64_t sub_1D1D561A4(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D562BC, v3, 0);
}

uint64_t sub_1D1D562BC()
{
  v26 = v0;
  if (v0[37])
  {
    v1 = v0[25];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
    v0[38] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
    v3 = v1 + v2;
    v4 = _s10ThermostatC23ThermostatServiceConfigVMa(0);
    v0[39] = v4;
    v5 = *(v4 + 28);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_1D1D5659C;

    return sub_1D1E50EB4(v3 + v5);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v8 = v0[25];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EC64F470);

    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[25];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      v15 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v16 = sub_1D1E68FAC();
      v18 = sub_1D1B1312C(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D16EC000, v10, v11, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Failed to find home for accessory: %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v19 = v0[34];
    v20 = v0[31];
    v21 = v0[32];
    v22 = v0[29];
    v23 = v0[26];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1D1D5659C(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D566B4, v3, 0);
}

uint64_t sub_1D1D566B4()
{
  v59 = v0;
  v1 = *(v0 + 328);
  if (v1)
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 200);
    v3 = sub_1D1E6709C();
    *(v0 + 336) = __swift_project_value_buffer(v3, qword_1EC64F470);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 312);
      v7 = *(v0 + 200) + *(v0 + 304);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v58 = v9;
      *v8 = 136315138;
      v10 = *(v6 + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v11 = sub_1D1E68FAC();
      v13 = sub_1D1B1312C(v11, v12, &v58);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Fetching current Adaptive Temperature settings for accessory: %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 240);
    v19 = *(v0 + 224);
    v55 = v14;
    v56 = *(v0 + 216);
    v20 = *(v0 + 200);
    v57 = *(v0 + 192);
    v21 = [v1 uniqueIdentifier];
    sub_1D1E66A5C();

    v22 = [v1 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = *(v16 + 24);
    v27 = sub_1D1E66A7C();
    *(v0 + 344) = v27;
    (*(*(v27 - 8) + 16))(v15 + v26, v20 + v55, v27);
    v28 = (v15 + *(v16 + 20));
    *v28 = v23;
    v28[1] = v25;
    v29 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    *(v0 + 352) = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
    swift_beginAccess();
    v30 = *(v18 + 24);
    *(v0 + 400) = v30;
    v31 = *(v19 + 16);
    *(v0 + 360) = v31;
    *(v0 + 368) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(&v17[v30], v20 + v29, v56);
    *v17 = xmmword_1D1E85870;
    v32 = *(v18 + 28);
    *(v0 + 404) = v32;
    v17[v32] = 0;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1D1D56C8C;
    v33 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E560, &unk_1D1EABE58);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D1D63674;
    *(v0 + 104) = &block_descriptor_64_0;
    *(v0 + 112) = v33;
    [v57 fetchAdaptiveTemperatureSettingsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 200);
    v35 = sub_1D1E6709C();
    __swift_project_value_buffer(v35, qword_1EC64F470);

    v36 = sub_1D1E6707C();
    v37 = sub_1D1E6833C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 312);
      v39 = *(v0 + 296);
      v40 = *(v0 + 200) + *(v0 + 304);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      v43 = *(v38 + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v44 = sub_1D1E68FAC();
      v46 = sub_1D1B1312C(v44, v45, &v58);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1D16EC000, v36, v37, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Failed to find room for accessory: %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D3893640](v42, -1, -1);
      MEMORY[0x1D3893640](v41, -1, -1);
    }

    else
    {
      v47 = *(v0 + 296);
    }

    v48 = *(v0 + 272);
    v49 = *(v0 + 248);
    v50 = *(v0 + 256);
    v51 = *(v0 + 232);
    v52 = *(v0 + 208);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_1D1D56C8C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_1D1D576D0;
  }

  else
  {
    v5 = sub_1D1D56DAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1D56DAC()
{
  v41 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v39 = *(v0 + 176);
  sub_1D1D514D4(v39);
  *(v0 + 184) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v5 = sub_1D1E6770C();
  v7 = v6;

  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6835C();

  v37 = v3;
  if (os_log_type_enabled(v8, v9))
  {
    v36 = v5;
    v10 = *(v0 + 344);
    v11 = *(v0 + 312);
    v12 = *(v0 + 200) + *(v0 + 304);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 136315650;
    v15 = *(v11 + 24);
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v16 = sub_1D1E68FAC();
    v18 = sub_1D1B1312C(v16, v17, v40);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = HMAdaptiveTemperatureDriver.description.getter(v3);
    v21 = sub_1D1B1312C(v19, v20, v40);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = sub_1D1B1312C(v36, v7, v40);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1D16EC000, v8, v9, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Successfully fetched adaptive temperature settings for accessory: %s with temperature driver: %s and selected rooms: %s.", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 404);
  v24 = *(v0 + 360);
  v23 = *(v0 + 368);
  v25 = *(v0 + 400);
  v26 = *(v0 + 352);
  v27 = *(v0 + 256);
  v28 = *(v0 + 216);
  v29 = *(v0 + 200);

  v30 = sub_1D1D65CAC(v39, v29);

  sub_1D1D52E14(v27, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  v24(v27 + v25, v29 + v26, v28);
  *v27 = v37;
  v27[1] = v30;
  *(v27 + v38) = 0;
  v31 = swift_task_alloc();
  *(v0 + 384) = v31;
  *v31 = v0;
  v31[1] = sub_1D1D57104;
  v32 = *(v0 + 256);
  v33 = *(v0 + 192);
  v34 = *(v0 + 200);

  return sub_1D1D60634(v32, v33);
}

uint64_t sub_1D1D57104()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D57214, v2, 0);
}

uint64_t sub_1D1D57214()
{
  if (*(v0 + 408) == 1)
  {
    v2 = *(v0 + 360);
    v1 = *(v0 + 368);
    v3 = *(v0 + 352);
    v4 = *(v0 + 296);
    v5 = *(v0 + 232);
    v6 = *(v0 + 216);
    v7 = *(v0 + 200);
    sub_1D1D52DAC(*(v0 + 256), *(v0 + 248), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v2(v5, v7 + v3, v6);
    v8 = v4;

    return MEMORY[0x1EEE6DFA0](sub_1D1D573A4, 0, 0);
  }

  else
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 256);

    sub_1D1D52E14(v11, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1D52E14(v10, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v12 = *(v0 + 272);
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v16 = *(v0 + 208);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D1D573A4()
{
  sub_1D1E67E1C();
  *(v0 + 392) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D57438, v2, v1);
}

uint64_t sub_1D1D57438()
{
  v1 = v0[49];
  v2 = v0[45];
  v17 = v0[46];
  v18 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v20 = v9;

  v19 = *(v9 + 112);
  v10 = *v4;
  v11 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  sub_1D1D52DAC(v3, &v8[v11[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v12 = v4[1];
  v2(&v8[v11[8]], v6, v7);

  v13 = [v18 isAllowedToEnableAdaptiveTemperatureAutomations];
  v14 = v11[6];
  v15 = v11[7];
  *v8 = v10;
  *&v8[v14] = v12;
  *&v8[v15] = 0;
  v8[v11[9]] = v13;
  (*(*(v11 - 1) + 56))(v8, 0, 1, v11);
  sub_1D1D67F68(v8);

  (*(v5 + 8))(v6, v7);
  sub_1D1D52E14(v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

  return MEMORY[0x1EEE6DFA0](sub_1D1D575EC, v20, 0);
}

uint64_t sub_1D1D575EC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);

  sub_1D1D52E14(v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  sub_1D1D52E14(v2, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D1D576D0()
{
  v40 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = *(v0 + 200);
  swift_willThrow();

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 376);
  if (v7)
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 312);
    v11 = *(v0 + 200) + *(v0 + 304);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v12 = 136315394;
    v15 = *(v10 + 24);
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v16 = sub_1D1E68FAC();
    v18 = sub_1D1B1312C(v16, v17, &v39);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat - (fetchCurrentAdaptiveTemperatureSetting(isInitialSetup:)) - Failed to get adaptive temperature settings for accessory: %s because of error: %@.", v12, 0x16u);
    sub_1D1741A30(v13, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 408) == 1)
  {
    v22 = *(v0 + 360);
    v21 = *(v0 + 368);
    v23 = *(v0 + 352);
    v24 = *(v0 + 296);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);
    v27 = *(v0 + 200);
    sub_1D1D52DAC(*(v0 + 256), *(v0 + 248), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v22(v25, v27 + v23, v26);
    v28 = v24;

    return MEMORY[0x1EEE6DFA0](sub_1D1D573A4, 0, 0);
  }

  else
  {
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    v31 = *(v0 + 256);

    sub_1D1D52E14(v31, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1D52E14(v30, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v32 = *(v0 + 272);
    v33 = *(v0 + 248);
    v34 = *(v0 + 256);
    v35 = *(v0 + 232);
    v36 = *(v0 + 208);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_1D1D57A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D57A48, 0, 0);
}

uint64_t sub_1D1D57A48()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D17D3554;
    v4 = v0[6];

    return sub_1D1D57B3C(v4, 1);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1D57B3C(uint64_t a1, char a2)
{
  *(v3 + 436) = a2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  *(v3 + 184) = v4;
  v5 = *(v4 - 8);
  *(v3 + 192) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30) - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v9 = sub_1D1E662EC();
  *(v3 + 232) = v9;
  v10 = *(v9 - 8);
  *(v3 + 240) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D57CE4, v2, 0);
}

uint64_t sub_1D1D57CE4()
{
  v47 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_1D1E6709C();
  *(v0 + 264) = __swift_project_value_buffer(v2, qword_1EC64F470);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    v8 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v9 = sub_1D1E68FAC();
    v11 = sub_1D1B1312C(v9, v10, &v46);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v3, v4, "(AutoClimateModel.Thermostat - (fetchCurrentSleepSchedule(isInitialSetup:)) - Fetching current sleep schedule for accessory: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v45 = *(v0 + 256);
  v38 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v0 + 216);
  v39 = *(v0 + 240);
  v40 = *(v0 + 208);
  v42 = *(v0 + 232);
  v43 = *(v0 + 192);
  v41 = *(v0 + 184);
  v44 = *(v0 + 168);
  sub_1D1E66B9C();
  v14 = sub_1D1E66BBC();
  *(v0 + 272) = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  *(v0 + 280) = v16;
  *(v0 + 288) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v12, 0, 1, v14);
  v17 = sub_1D1E66C5C();
  *(v0 + 296) = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  *(v0 + 304) = v19;
  *(v0 + 312) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v13, 1, 1, v17);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v16(v12, 0, 1, v14);
  v19(v13, 1, 1, v17);
  LOBYTE(v37) = 1;
  LOBYTE(v36) = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v34) = 1;
  LOBYTE(v33) = 1;
  LOBYTE(v32) = 1;
  LOBYTE(v31) = 1;
  LOBYTE(v30) = 1;
  LOBYTE(v29) = 0;
  LOBYTE(v28) = 0;
  LOBYTE(v27) = 1;
  sub_1D1E662BC();
  v20 = *(v39 + 16);
  *(v0 + 320) = v20;
  *(v0 + 328) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v40, v45, v42);
  v20(v40 + *(v41 + 20), v38, v42);
  *(v40 + *(v41 + 24)) = 127;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431E0, &qword_1D1E71D50);
  *(v0 + 344) = *(v43 + 72);
  v21 = *(v43 + 80);
  *(v0 + 432) = v21;
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  *(v0 + 352) = v23;
  *(v23 + 16) = xmmword_1D1E739C0;
  sub_1D1D66490(v40, v23 + v22, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v24 = *(v39 + 8);
  *(v0 + 360) = v24;
  *(v0 + 368) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v38, v42);
  v24(v45, v42);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D1D582E8;
  v25 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C60, &qword_1D1EABE80);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17AFE50;
  *(v0 + 104) = &block_descriptor_78;
  *(v0 + 112) = v25;
  [v44 fetchThermostatSleepScheduleWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1D582E8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_1D1D59260;
  }

  else
  {
    v5 = sub_1D1D58408;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

size_t sub_1D1D58408()
{
  v86 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  *(v0 + 384) = v3;

  v4 = v3;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v84 = v8;
    *v7 = 136315394;
    v9 = [v4 scheduleRules];
    sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0);
    v10 = sub_1D1E67C1C();

    if (v10 >> 62)
    {
      v11 = sub_1D1E6873C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v79 = v5;
    v81 = v4;
    v77 = v7;
    v75 = v6;
    v74 = v8;
    if (v11)
    {
      v85 = MEMORY[0x1E69E7CC0];
      result = sub_1D178DD28(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      v15 = v85;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1D3891EF0](v14, v10);
        }

        else
        {
          v16 = *(v10 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = *(v0 + 200);
        v19 = *(v0 + 184);
        v20 = [v16 startTime];
        sub_1D1E6621C();

        v21 = [v17 endTime];
        v22 = v18 + *(v19 + 20);
        sub_1D1E6621C();

        v23 = [v17 daysOfTheWeek];
        *(v18 + *(v19 + 24)) = v23;
        v85 = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D178DD28(v24 > 1, v25 + 1, 1);
          v15 = v85;
        }

        v26 = *(v0 + 432);
        v27 = *(v0 + 344);
        v28 = *(v0 + 200);
        ++v14;
        *(v15 + 16) = v25 + 1;
        sub_1D1D66490(v28, v15 + ((v26 + 32) & ~v26) + v27 * v25, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      }

      while (v11 != v14);

      v12 = MEMORY[0x1E69E7CC0];
      v29 = *(v15 + 16);
      if (v29)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
      v29 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v29)
      {
LABEL_16:
        v30 = (*(v0 + 432) + 32) & ~*(v0 + 432);
        v85 = v12;
        sub_1D178CD24(0, v29, 0);
        v31 = 0;
        v32 = v12;
        do
        {
          v33 = *(v0 + 208);
          sub_1D1D52DAC(v15 + v30 + *(v0 + 344) * v31, v33, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
          v34 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
          v36 = v35;
          sub_1D1D52E14(v33, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
          v85 = v32;
          v38 = *(v32 + 16);
          v37 = *(v32 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D178CD24((v37 > 1), v38 + 1, 1);
            v32 = v85;
          }

          ++v31;
          *(v32 + 16) = v38 + 1;
          v39 = v32 + 16 * v38;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
        }

        while (v29 != v31);

        goto LABEL_23;
      }
    }

    v32 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v40 = *(v0 + 176);
    v41 = MEMORY[0x1D3891260](v32, MEMORY[0x1E69E6158]);
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v84);

    *(v77 + 1) = v44;
    *(v77 + 6) = 2080;
    LODWORD(v40) = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v45 = sub_1D1E68FAC();
    v47 = sub_1D1B1312C(v45, v46, &v84);

    *(v77 + 14) = v47;
    _os_log_impl(&dword_1D16EC000, v79, v75, "(AutoClimateModel.Thermostat: (fetchCurrentSleepSchedule(isInitialSetup:)) - Successfully fetched sleep schedule: {%s} for accessory: %s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v74, -1, -1);
    MEMORY[0x1D3893640](v77, -1, -1);

    v4 = v81;
    goto LABEL_24;
  }

LABEL_24:
  if (*(v0 + 436) == 1 && ((v48 = [v4 scheduleRules], sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0), v49 = sub_1D1E67C1C(), v48, v49 >> 62) ? (v50 = sub_1D1E6873C()) : (v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v50))
  {
    v80 = *(v0 + 360);
    v82 = *(v0 + 368);
    v76 = *(v0 + 344);
    v78 = *(v0 + 336);
    v72 = *(v0 + 320);
    v73 = *(v0 + 328);
    v56 = *(v0 + 304);
    v57 = *(v0 + 312);
    v58 = *(v0 + 288);
    v59 = *(v0 + 296);
    v60 = *(v0 + 272);
    v61 = *(v0 + 280);
    v83 = *(v0 + 256);
    v68 = *(v0 + 248);
    v62 = *(v0 + 224);
    v70 = *(v0 + 232);
    v63 = *(v0 + 216);
    v67 = *(v0 + 208);
    v71 = (*(v0 + 432) + 32) & ~*(v0 + 432);
    v69 = *(v0 + 184);
    sub_1D1E66B9C();
    v61(v62, 0, 1, v60);
    v56(v63, 1, 1, v59);
    sub_1D1E662BC();
    sub_1D1E66B9C();
    v61(v62, 0, 1, v60);
    v56(v63, 1, 1, v59);
    sub_1D1E662BC();
    v72(v67, v83, v70);
    v72(v67 + *(v69 + 20), v68, v70);
    *(v67 + *(v69 + 24)) = 127;
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1D1E739C0;
    sub_1D1D66490(v67, v64 + v71, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v80(v68, v70);
    v80(v83, v70);
    *(v0 + 160) = v64;
    v65 = swift_task_alloc();
    *(v0 + 392) = v65;
    *v65 = v0;
    v65[1] = sub_1D1D58D28;
    v66 = *(v0 + 176);

    return sub_1D1D5D1E0(v0 + 160);
  }

  else
  {
    v51 = *(v0 + 352);

    AutoClimateModel.Thermostat.WeekdaySchedule.init(hmweekdaySchedule:)(v4, &v85);
    v52 = v85;
    *(v0 + 400) = v85;
    *(v0 + 152) = v52;

    v53 = swift_task_alloc();
    *(v0 + 408) = v53;
    *v53 = v0;
    v53[1] = sub_1D1D58ECC;
    v54 = *(v0 + 168);
    v55 = *(v0 + 176);

    return sub_1D1D5E184((v0 + 152), v54);
  }
}

uint64_t sub_1D1D58D28()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 176);
  v6 = *v0;

  v4 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1D58E5C, v3, 0);
}

uint64_t sub_1D1D58E5C()
{
  *(v0 + 416) = *(v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1D1D59100, 0, 0);
}

uint64_t sub_1D1D58ECC()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 176);
  v6 = *v0;

  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D59000, v3, 0);
}

uint64_t sub_1D1D59000()
{
  if (*(v0 + 436) == 1)
  {
    *(v0 + 416) = *(v0 + 400);

    return MEMORY[0x1EEE6DFA0](sub_1D1D59100, 0, 0);
  }

  else
  {

    v2 = *(v0 + 248);
    v1 = *(v0 + 256);
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D1D59100()
{
  sub_1D1E67E1C();
  *(v0 + 424) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D59194, v2, v1);
}

uint64_t sub_1D1D59194()
{
  v14 = v0;
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[22];

  v4 = *(v3 + 112);
  v13 = v2;

  sub_1D1D68428(&v13);

  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1D59260()
{
  v28 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 264);
  v3 = *(v0 + 176);
  swift_willThrow();

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 376);
  if (v7)
  {
    v9 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v14 = sub_1D1E68FAC();
    v16 = sub_1D1B1312C(v14, v15, &v27);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat: (fetchCurrentSleepSchedule(isInitialSetup:)) - Failed to get current sleep schedule for accessory: %s with error: %@.", v10, 0x16u);
    sub_1D1741A30(v11, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 436) == 1)
  {
    *(v0 + 416) = *(v0 + 352);

    return MEMORY[0x1EEE6DFA0](sub_1D1D59100, 0, 0);
  }

  else
  {

    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v24 = *(v0 + 200);
    v23 = *(v0 + 208);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1D1D59540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D59560, 0, 0);
}

uint64_t sub_1D1D59560()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D19DD7D0;
    v4 = v0[6];

    return sub_1D1D59654(v4, 1);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1D59654(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = sub_1D1E66DAC();
  *(v3 + 176) = v4;
  v5 = *(v4 - 8);
  *(v3 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E550, &qword_1D1EABE28) - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D59768, v2, 0);
}

uint64_t sub_1D1D59768()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = xmmword_1D1E85870;
  *(v0 + 48) = 0;
  sub_1D1C2B470(0, 0, 1);
  v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite;
  *(v0 + 224) = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite;
  v3 = *(v1 + v2);
  *(v0 + 232) = v3;
  if (v3)
  {
    *(v0 + 256) = v3;
    *(v0 + 264) = v3;
    *(v0 + 272) = sub_1D1E66DDC();
    *(v0 + 280) = sub_1D1E67E1C();
    swift_retain_n();
    *(v0 + 288) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D59CF0, v5, v4);
  }

  else
  {
    v6 = *(v0 + 168);
    sub_1D1E66E9C();
    v7 = sub_1D1E66A1C();
    v9 = v8;
    v10 = *(MEMORY[0x1E699BB48] + 4);
    v11 = swift_task_alloc();
    *(v0 + 240) = v11;
    *v11 = v0;
    v11[1] = sub_1D1D5990C;

    return MEMORY[0x1EEE02D38](v7, v9);
  }
}

uint64_t sub_1D1D5990C(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D59A24, v3, 0);
}

uint64_t sub_1D1D59A24()
{
  v25 = v0;
  v1 = v0[28];
  v2 = v0[21];
  v3 = *(v2 + v1);
  v4 = v0[31];
  if (v3)
  {
LABEL_4:
    v0[32] = v3;
    v0[33] = v4;
    v5 = v0[29];
    v0[34] = sub_1D1E66DDC();
    v0[35] = sub_1D1E67E1C();

    v0[36] = sub_1D1E67E0C();
    v7 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D59CF0, v7, v6);
  }

  *(v2 + v1) = v4;
  if (v4)
  {

    v3 = v4;
    goto LABEL_4;
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v8 = v0[21];
  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC64F470);

  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6833C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v15 = sub_1D1E68FAC();
    v17 = sub_1D1B1312C(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D16EC000, v10, v11, "AutoClimateMode.Thermostat - (setUpCleanEnergySetting(isInitialSetup:)) - Failed to load clean energy settings for home: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  v19 = v0[26];
  v18 = v0[27];
  v21 = v0[24];
  v20 = v0[25];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1D59CF0()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[21];

  v0[37] = sub_1D1E66DCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1D59D68, v3, 0);
}

uint64_t sub_1D1D59D68()
{
  v1 = v0[32];
  v2 = sub_1D1E66E5C();
  v4 = v3;
  v0[38] = v3;
  v5 = *(MEMORY[0x1E69A45E0] + 4);
  v9 = (*MEMORY[0x1E69A45E0] + MEMORY[0x1E69A45E0]);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_1D1D59E30;
  v7 = v0[37];

  return v9(v2, v4);
}

uint64_t sub_1D1D59E30()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 168);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D59F80, v4, 0);
}

uint64_t sub_1D1D59F80()
{
  v1 = *(v0 + 280);
  *(v0 + 320) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A00C, v3, v2);
}

uint64_t sub_1D1D5A00C()
{
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[21];

  v0[41] = sub_1D1E66DCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A084, v3, 0);
}

uint64_t sub_1D1D5A084()
{
  v1 = *(v0 + 280);
  *(v0 + 336) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A110, v3, v2);
}

uint64_t sub_1D1D5A110()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[24];
  v4 = v0[21];

  sub_1D1E66DBC();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A198, v4, 0);
}

uint64_t sub_1D1D5A198()
{
  v60 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_1D1E66D9C();
  (*(v4 + 8))(v3, v5);
  sub_1D1741C08(v1, v2, &qword_1EC64E550, &qword_1D1EABE28);
  v6 = sub_1D1E66D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v2, 1, v6);
  v10 = *(v0 + 208);
  if (v9 == 1)
  {
    sub_1D1741A30(*(v0 + 208), &qword_1EC64E550, &qword_1D1EABE28);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = sub_1D1E66D7C();
    v12 = v13;
    (*(v7 + 8))(v10, v6);
  }

  v14 = *(v0 + 200);
  sub_1D1741C08(*(v0 + 216), v14, &qword_1EC64E550, &qword_1D1EABE28);
  v15 = v8(v14, 1, v6);
  v16 = *(v0 + 200);
  if (v15 == 1)
  {
    sub_1D1741A30(*(v0 + 200), &qword_1EC64E550, &qword_1D1EABE28);
    v17 = 0;
  }

  else
  {
    sub_1D1E66D6C();
    v19 = v18;
    (*(v7 + 8))(v16, v6);
    v17 = v19;
  }

  if (v12)
  {
    v20 = v17;
  }

  else
  {
    v11 = 0;
    v20 = 0;
  }

  v21 = v15 == 1 && v12 != 0;
  if (*(v0 + 264))
  {
    v22 = *(v0 + 264);

    v23 = sub_1D1E66E8C();

    sub_1D1E66E7C();
    v25 = v24;

    if (v25)
    {

      v26 = 256;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v23 = 0;
  }

  v27 = v26 | v23 & 1;
  *(v0 + 16) = v27;
  *(v0 + 24) = v11;
  *(v0 + 32) = v12;
  *(v0 + 40) = v20;
  *(v0 + 48) = v21;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 168);
  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EC64F470);

  sub_1D1C2B3B4(v27, v11, v12);
  v30 = sub_1D1E6707C();
  v31 = sub_1D1E6835C();

  sub_1D1C2B470(v27, v11, v12);
  if (os_log_type_enabled(v30, v31))
  {
    log = v30;
    v32 = *(v0 + 168);
    v33 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v33 = 136315394;
    v56 = v31;
    v34 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v35 = sub_1D1E68FAC();
    v37 = sub_1D1B1312C(v35, v36, &v59);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    *(v0 + 96) = v27;
    *(v0 + 104) = v11;
    *(v0 + 112) = v12;
    *(v0 + 120) = v20;
    *(v0 + 128) = v21;
    sub_1D1C2B3B4(v27, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E548, &qword_1D1EABE08);
    v38 = sub_1D1E6789C();
    v40 = sub_1D1B1312C(v38, v39, &v59);

    *(v33 + 14) = v40;
    v30 = log;
    _os_log_impl(&dword_1D16EC000, log, v56, "(AutoClimateModel.Thermostat - (setUpCleanEnergySetting(isInitialSetup:)) - Loaded clean energy settings for accessory: %s,  %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v57, -1, -1);
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  swift_beginAccess();
  v41 = *(v0 + 16);
  v42 = *(v0 + 24);
  v43 = *(v0 + 32);
  v44 = *(v0 + 40);
  v45 = *(v0 + 48);
  if (v43 == 1)
  {
    LOBYTE(v46) = 0;
    LOBYTE(v47) = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v47 = (v41 >> 8) & 1;
    v46 = *(v0 + 16);
    v48 = *(v0 + 24);
    v49 = *(v0 + 32);
    v50 = *(v0 + 40);
    v51 = *(v0 + 48);
  }

  *(v0 + 56) = v46 & 1;
  *(v0 + 57) = v47;
  *(v0 + 64) = v48;
  *(v0 + 72) = v49;
  *(v0 + 80) = v50;
  *(v0 + 88) = v51;
  sub_1D1C2B3B4(v41, v42, v43);
  v52 = swift_task_alloc();
  *(v0 + 344) = v52;
  *v52 = v0;
  v52[1] = sub_1D1D5A718;
  v53 = *(v0 + 160);
  v54 = *(v0 + 168);

  return sub_1D1D6274C(v0 + 56, v53);
}

uint64_t sub_1D1D5A718()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 168);
  v6 = *v0;

  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A84C, v3, 0);
}

uint64_t sub_1D1D5A84C()
{
  if (*(v0 + 49) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 352) = v1;
    *(v0 + 360) = v2;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    *(v0 + 368) = v3;
    *(v0 + 376) = v4;
    *(v0 + 50) = *(v0 + 48);
    sub_1D1C2B3B4(v1, v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1D1D5A970, 0, 0);
  }

  else
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
    sub_1D1741A30(*(v0 + 216), &qword_1EC64E550, &qword_1D1EABE28);

    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_1D1C2B470(*(v0 + 16), *(v0 + 24), *(v0 + 32));
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1D1D5A970()
{
  v1 = *(v0 + 280);
  *(v0 + 384) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A9FC, v3, v2);
}

uint64_t sub_1D1D5A9FC()
{
  v22 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 168);

  v4 = *(v3 + 112);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  v8 = *(v0 + 352);
  v7 = *(v0 + 360);
  v9 = v8 & 0x101;
  if (v2 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v0 + 50);
  }

  if (v2 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + 376);
  }

  if (v2 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 368);
  }

  if (v2 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 360);
  }

  if (v2 == 1)
  {
    v9 = 0;
  }

  v14 = *(v0 + 168);
  *&v18 = v9;
  *(&v18 + 1) = v13;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  sub_1D1C2B3B4(v8, v7, v6);
  sub_1D1D687D8(&v18);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  sub_1D1C2B470(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D1C2B470(v8, v7, v6);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5AB0C, v14, 0);
}

uint64_t sub_1D1D5AB0C()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[27];

  sub_1D1741A30(v3, &qword_1EC64E550, &qword_1D1EABE28);
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1D5ABBC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v6 = *(v5 + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v2[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5ADBC, v1, 0);
}

uint64_t sub_1D1D5ADBC()
{
  v1 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v3 = type metadata accessor for StaticService(0);
  v0[35] = v3;
  v4 = *(v1 + v3[26]);
  *(inited + 32) = v4;
  LOBYTE(v1) = sub_1D17C4E00(46, inited);
  swift_setDeallocating();
  if ((v1 & 1) == 0)
  {
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1D1E739C0;
    *(v5 + 32) = v4;
    v6 = sub_1D17C4E00(20, v5);
    swift_setDeallocating();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = v0[21];
  v8 = v3[11];
  v9 = v0[22] + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v10 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = v0[21];
  v12 = (v11 + v3[20]);
  v0[36] = *v12;
  v13 = v12[1];
  v0[37] = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v0[32];
  v15 = v0[33];
  v16 = v0[31];
  sub_1D1741C08(v11 + v3[40], v16, &qword_1EC64C9B0, &qword_1D1EA1190);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_1D1741A30(v0[31], &qword_1EC64C9B0, &qword_1D1EA1190);
LABEL_7:
    v17 = v0[34];
    v18 = v0[30];
    v19 = v0[31];
    v21 = v0[28];
    v20 = v0[29];
    v22 = v0[26];
    v23 = v0[23];

    v24 = v0[1];

    return v24();
  }

  v26 = v0[34];
  v27 = v0[32];
  v28 = v0[22];
  sub_1D1D66490(v0[31], v26, type metadata accessor for StaticService.AutoClimateControlConfig);
  v0[38] = *(v26 + *(v27 + 24));
  v0[39] = *(v28 + 112);
  v0[40] = sub_1D1E67E1C();

  v0[41] = sub_1D1E67E0C();
  v30 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B090, v30, v29);
}

uint64_t sub_1D1D5B090()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[29];
  v4 = v0[22];

  swift_getKeyPath();
  v0[20] = v2;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v5 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v2 + v5, v3, &qword_1EC64E538, &qword_1D1EAC240);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B1BC, v4, 0);
}

uint64_t sub_1D1D5B1BC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1D17721A0(*(v0[21] + *(v0[35] + 76)), v3);
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[36];
    v21 = v0[34];
    v7 = v0[27];
    v6 = v0[28];
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[24];
    v11 = v0[22];
    v19 = v0[37];
    v20 = *(v0[32] + 20);
    v12 = *(v9 + 32);
    v12(v8, v0[23], v10);
    (*(v9 + 16))(v6 + *(v7 + 24), v11 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID, v10);
    v12(v6, v8, v10);
    v13 = (v6 + *(v7 + 20));
    *v13 = v5;
    v13[1] = v19;
    v14 = swift_task_alloc();
    v0[42] = v14;
    *v14 = v0;
    v14[1] = sub_1D1D5B35C;
    v16 = v0[29];
    v15 = v0[30];
    v17 = v0[28];
    v18 = v0[22];

    return sub_1D1D5B714(v15, v21 + v20, v16, v17);
  }

  return result;
}

uint64_t sub_1D1D5B35C()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 224);
  v9 = *v0;

  sub_1D1D52E14(v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  sub_1D1741A30(v4, &qword_1EC64E538, &qword_1D1EAC240);
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v7;
  *(v1 + 48) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B4E0, 0, 0);
}

uint64_t sub_1D1D5B4E0()
{
  v1 = *(v0 + 320);
  *(v0 + 344) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B56C, v3, v2);
}

uint64_t sub_1D1D5B56C()
{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[30];
  v4 = v0[22];

  sub_1D1D5C028(v3, v4, v2, (v0 + 2));
  v5 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B62C, v5, 0);
}

uint64_t sub_1D1D5B62C()
{
  v1 = v0[30];
  sub_1D1D52E14(v0[34], type metadata accessor for StaticService.AutoClimateControlConfig);
  sub_1D1741A30(v1, &qword_1EC64E538, &qword_1D1EAC240);
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[23];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1D5B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B8E4, v4, 0);
}

uint64_t sub_1D1D5B8E4()
{
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[9];
  v74 = *(v0[17] + 56);
  v74(v0[8], 1, 1, v0[16]);
  sub_1D1741C08(v4, v1, &qword_1EC64CA18, &qword_1D1EABE10);
  v5 = *(v3 + 48);
  v6 = v5(v1, 1, v2);
  v7 = v0[25];
  if (v6 == 1)
  {
    sub_1D1741A30(v7, &qword_1EC64CA18, &qword_1D1EABE10);
  }

  else
  {
    v8 = *v7;
    sub_1D1D52E14(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    if (!v8)
    {
      goto LABEL_35;
    }
  }

  v9 = v0[21];
  v10 = v0[16];
  v11 = v0[17];
  sub_1D1741C08(v0[10], v9, &qword_1EC64E538, &qword_1D1EAC240);
  v12 = *(v11 + 48);
  v13 = v12(v9, 1, v10);
  v14 = v0[21];
  if (v13 == 1)
  {
    sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
    v15 = 0;
  }

  else
  {
    v15 = *v14;
    sub_1D1D52E14(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  v16 = v0[24];
  v17 = v0[13];
  sub_1D1741C08(v0[9], v16, &qword_1EC64CA18, &qword_1D1EABE10);
  v18 = v5(v16, 1, v17);
  v19 = v0[24];
  if (v18 == 1)
  {
    sub_1D1741A30(v19, &qword_1EC64CA18, &qword_1D1EABE10);
    if (v13 != 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = *v19;
    sub_1D1D52E14(v19, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    if (v13 == 1 || v15 != v20)
    {
LABEL_25:
      v32 = v0[19];
      v33 = v0[16];
      sub_1D1741C08(v0[10], v32, &qword_1EC64E538, &qword_1D1EAC240);
      v34 = v12(v32, 1, v33);
      v35 = v0[8];
      v36 = v0[9];
      if (v34 != 1)
      {
        v43 = v0[18];
        v42 = v0[19];
        v44 = v0[16];
        sub_1D1D69C58(v0[9], v43);
        sub_1D1741A30(v35, &qword_1EC64E538, &qword_1D1EAC240);
        sub_1D1D52E14(v42, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
        sub_1D1D66490(v43, v35, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
        v45 = v35;
        v46 = v44;
LABEL_34:
        v74(v45, 0, 1, v46);
        goto LABEL_35;
      }

      v37 = v0[22];
      v38 = v0[19];
      v39 = v0[13];
      sub_1D1741A30(v35, &qword_1EC64E538, &qword_1D1EAC240);
      sub_1D1741A30(v38, &qword_1EC64E538, &qword_1D1EAC240);
      sub_1D1741C08(v36, v37, &qword_1EC64CA18, &qword_1D1EABE10);
      v40 = v5(v37, 1, v39);
      v41 = v0[22];
      if (v40 == 1)
      {
        sub_1D1741A30(v41, &qword_1EC64CA18, &qword_1D1EABE10);
      }

      else
      {
        v47 = v0[15];
        sub_1D1D66490(v41, v47, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        if (*v47 == 2)
        {
          v49 = v0[15];
          v48 = v0[16];
          v50 = v0[12];
          v51 = v0[8];
          sub_1D1D52DAC(v0[11], &v51[v48[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v52 = *(v49 + 8);

          sub_1D1D52E14(v49, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
          v53 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
          swift_beginAccess();
          v54 = v48[8];
          v55 = sub_1D1E66C5C();
          (*(*(v55 - 8) + 16))(&v51[v54], v50 + v53, v55);
          v56 = v48[6];
          v57 = v48[7];
          *v51 = 2;
          *&v51[v56] = v52;
LABEL_33:
          *&v51[v57] = 0;
          v51[v48[9]] = 0;
          v45 = v51;
          v46 = v48;
          goto LABEL_34;
        }

        sub_1D1D52E14(v0[15], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      }

      v48 = v0[16];
      v58 = v0[12];
      v51 = v0[8];
      sub_1D1D52DAC(v0[11], &v51[v48[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v59 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
      swift_beginAccess();
      v60 = v48[8];
      v61 = sub_1D1E66C5C();
      (*(*(v61 - 8) + 16))(&v51[v60], v58 + v59, v61);
      v62 = v48[6];
      v57 = v48[7];
      *v51 = 1;
      *&v51[v62] = 0;
      goto LABEL_33;
    }
  }

  v21 = v0[20];
  v22 = v0[16];
  sub_1D1741C08(v0[10], v21, &qword_1EC64E538, &qword_1D1EAC240);
  v23 = v12(v21, 1, v22);
  v24 = v0[20];
  if (v23 == 1)
  {
    sub_1D1741A30(v0[20], &qword_1EC64E538, &qword_1D1EAC240);
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + *(v0[16] + 24));

    sub_1D1D52E14(v24, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  v26 = v0[23];
  v27 = v0[13];
  sub_1D1741C08(v0[9], v26, &qword_1EC64CA18, &qword_1D1EABE10);
  v28 = v5(v26, 1, v27);
  v29 = v0[23];
  if (v28 == 1)
  {
    sub_1D1741A30(v0[23], &qword_1EC64CA18, &qword_1D1EABE10);
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v30 = *(v29 + 8);

  sub_1D1D52E14(v29, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  if (!v25)
  {
    if (!v30)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (!v30)
  {
LABEL_24:

    goto LABEL_25;
  }

  v31 = sub_1D177BFB8(v25, v30);

  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_35:
  v64 = v0[24];
  v63 = v0[25];
  v66 = v0[22];
  v65 = v0[23];
  v68 = v0[20];
  v67 = v0[21];
  v70 = v0[18];
  v69 = v0[19];
  v71 = v0[15];

  v72 = v0[1];

  return v72();
}

void sub_1D1D5C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = a4;
  v111 = a3;
  v122 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E540, &qword_1D1EABE00);
  v5 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v107 = (&v102 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v102 - v17;
  v19 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v106 = (&v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v102 - v24);
  sub_1D1741C08(a1, v18, &qword_1EC64E538, &qword_1D1EAC240);
  v110 = v20;
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    sub_1D1741A30(v18, &qword_1EC64E538, &qword_1D1EAC240);
LABEL_8:
    v39 = v122;
    v36 = v111;
    v35 = v112;
    goto LABEL_9;
  }

  sub_1D1D66490(v18, v25, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  if (!*v25)
  {
    sub_1D1D52E14(v25, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    goto LABEL_8;
  }

  v104 = v11;
  v27 = *(v122 + 112);
  swift_getKeyPath();
  v28 = v25;
  *&v119 = v27;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v29 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  v105 = v28;
  sub_1D1D52DAC(v28, v16, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  v30 = *(v110 + 56);
  v110 += 56;
  v103 = v30;
  v30(v16, 0, 1, v19);
  v31 = *(v108 + 48);
  v108 = v27;
  v32 = v27 + v29;
  v33 = v109;
  sub_1D1741C08(v32, v109, &qword_1EC64E538, &qword_1D1EAC240);
  sub_1D1741C08(v16, v33 + v31, &qword_1EC64E538, &qword_1D1EAC240);
  if (v26(v33, 1, v19) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC64E538, &qword_1D1EAC240);
    v34 = v26((v33 + v31), 1, v19);
    v35 = v112;
    v36 = v111;
    v37 = v105;
    v38 = v104;
    if (v34 == 1)
    {
      sub_1D1741A30(v33, &qword_1EC64E538, &qword_1D1EAC240);
LABEL_39:
      sub_1D1D52E14(v37, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
      v39 = v122;
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  v83 = v107;
  sub_1D1741C08(v33, v107, &qword_1EC64E538, &qword_1D1EAC240);
  v84 = v26((v33 + v31), 1, v19);
  v38 = v104;
  if (v84 == 1)
  {
    sub_1D1741A30(v16, &qword_1EC64E538, &qword_1D1EAC240);
    sub_1D1D52E14(v83, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    v35 = v112;
    v36 = v111;
    v37 = v105;
LABEL_32:
    sub_1D1741A30(v33, &qword_1EC64E540, &qword_1D1EABE00);
    goto LABEL_33;
  }

  v98 = v33 + v31;
  v99 = v106;
  sub_1D1D66490(v98, v106, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  v100 = v83;
  v101 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV2eeoiySbAG_AGtFZ_0(v83, v99);
  sub_1D1D52E14(v99, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  sub_1D1741A30(v16, &qword_1EC64E538, &qword_1D1EAC240);
  sub_1D1D52E14(v100, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  sub_1D1741A30(v33, &qword_1EC64E538, &qword_1D1EAC240);
  v35 = v112;
  v36 = v111;
  v37 = v105;
  if (v101)
  {
    goto LABEL_39;
  }

LABEL_33:
  v85 = v35;
  sub_1D1D52DAC(v37, v38, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  v103(v38, 0, 1, v19);
  sub_1D1D67F68(v38);
  v39 = v122;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v86 = sub_1D1E6709C();
  __swift_project_value_buffer(v86, qword_1EC64F470);

  v87 = sub_1D1E6707C();
  v88 = sub_1D1E6835C();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v119 = v90;
    *v89 = 136315394;
    v91 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v92 = sub_1D1E68FAC();
    v94 = sub_1D1B1312C(v92, v93, &v119);

    *(v89 + 4) = v94;
    *(v89 + 12) = 2080;
    v95 = sub_1D1D68B30();
    v97 = sub_1D1B1312C(v95, v96, &v119);

    *(v89 + 14) = v97;
    _os_log_impl(&dword_1D16EC000, v87, v88, "(AutoClimateModel.Thermostat - (updateState(autoClimateControlConfig:)) - Updated adaptive temperature settings for accessory: %s. New state: %s", v89, 0x16u);
    swift_arrayDestroy();
    v35 = v112;
    MEMORY[0x1D3893640](v90, -1, -1);
    MEMORY[0x1D3893640](v89, -1, -1);

    sub_1D1D52E14(v105, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  else
  {

    sub_1D1D52E14(v37, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    v35 = v85;
  }

LABEL_9:
  if (!v36)
  {
    goto LABEL_19;
  }

  v40 = *(v39 + 112);
  swift_getKeyPath();
  *&v119 = v40;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v41 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  v42 = *(v40 + v41);
  if (v42)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v43 = sub_1D177AE98(v42, v36);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (v43)
    {

      goto LABEL_19;
    }
  }

  else
  {
  }

  *&v119 = v36;
  sub_1D1D68428(&v119);
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v44 = sub_1D1E6709C();
  __swift_project_value_buffer(v44, qword_1EC64F470);

  v45 = sub_1D1E6707C();
  v46 = sub_1D1E6835C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v119 = v48;
    *v47 = 136315394;
    v49 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v50 = sub_1D1E68FAC();
    v52 = sub_1D1B1312C(v50, v51, &v119);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = sub_1D1D68B30();
    v55 = sub_1D1B1312C(v53, v54, &v119);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_1D16EC000, v45, v46, "(AutoClimateModel.Thermostat - (updateState(autoClimateControlConfig:)) - Updated sleep schedule for accessory: %s. New state: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v48, -1, -1);
    MEMORY[0x1D3893640](v47, -1, -1);
  }

  v35 = v112;
LABEL_19:
  v56 = *(v35 + 16);
  if (v56 != 1)
  {
    v57 = *(v39 + 112);
    swift_getKeyPath();
    *&v119 = v57;
    sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
    sub_1D1E66CAC();

    v111 = v57;
    v58 = v57 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
    swift_beginAccess();
    v60 = *v58;
    v59 = *(v58 + 8);
    v61 = v35;
    v62 = *(v58 + 16);
    v63 = *(v58 + 24);
    v64 = *(v58 + 32);
    v65 = *v61;
    v66 = *(v61 + 8);
    v67 = *(v61 + 24);
    v68 = *(v61 + 32);
    if (v62 == 1)
    {
      v109 = *(v61 + 24);
      LODWORD(v110) = v68;
      sub_1D1741C08(v61, &v119, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1741C08(v61, &v119, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1C2B3B4(v60, v59, 1);
      sub_1D1C2B470(v60, v59, 1);
      sub_1D1C2B470(v65, v66, v56);
    }

    else
    {
      *&v119 = v60;
      *(&v119 + 1) = v59;
      *&v120 = v62;
      *(&v120 + 1) = v63;
      v121 = v64;
      v114 = v65 & 0x101;
      v115 = v66;
      v116 = v56;
      v117 = v67;
      v118 = v68;
      sub_1D1741C08(v61, v113, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1741C08(v61, v113, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1C2B3B4(v60, v59, v62);
      sub_1D1C2B3B4(v60, v59, v62);
      v69 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(&v119, &v114);

      sub_1D1C2B470(v60, v59, v62);
      if (v69)
      {
        sub_1D1741A30(v61, &qword_1EC64E548, &qword_1D1EABE08);
        return;
      }
    }

    v70 = *(v61 + 16);
    v119 = *v61;
    v120 = v70;
    v121 = *(v61 + 32);
    sub_1D1D687D8(&v119);
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v71 = sub_1D1E6709C();
    __swift_project_value_buffer(v71, qword_1EC64F470);

    v72 = sub_1D1E6707C();
    v73 = sub_1D1E6835C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v119 = v75;
      *v74 = 136315394;
      v76 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v77 = sub_1D1E68FAC();
      v79 = sub_1D1B1312C(v77, v78, &v119);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2080;
      v80 = sub_1D1D68B30();
      v82 = sub_1D1B1312C(v80, v81, &v119);

      *(v74 + 14) = v82;
      _os_log_impl(&dword_1D16EC000, v72, v73, "(AutoClimateModel.Thermostat - (updateState(autoClimateControlConfig:)) - Updated clean energy setting for accessory: %s. New state: %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v75, -1, -1);
      MEMORY[0x1D3893640](v74, -1, -1);
    }
  }
}

uint64_t AutoClimateModel.Thermostat.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v3 = sub_1D1E66A7C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1D1D52E14(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig, _s10ThermostatC23ThermostatServiceConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite);

  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  v6 = sub_1D1E66C5C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AutoClimateModel.Thermostat.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v3 = sub_1D1E66A7C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1D1D52E14(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig, _s10ThermostatC23ThermostatServiceConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite);

  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  v6 = sub_1D1E66C5C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_observer);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1D5D1E0(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 152) = v1;
  *(v2 + 160) = v3;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v2 + 168) = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v5 = v1 + v4;
  v6 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v2 + 232) = v6;
  v7 = swift_task_alloc();
  *(v2 + 176) = v7;
  *v7 = v2;
  v7[1] = sub_1D1D5D2B4;

  return sub_1D1B9A370(v5 + v6);
}

uint64_t sub_1D1D5D2B4(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5D3CC, v3, 0);
}

uint64_t sub_1D1D5D3CC()
{
  v19 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    v18 = *(v0 + 160);
    v2 = sub_1D1D6A020();
    *(v0 + 192) = v2;
    if (v2)
    {
      *(v0 + 144) = *(v0 + 160);
      v3 = swift_task_alloc();
      *(v0 + 200) = v3;
      *v3 = v0;
      v3[1] = sub_1D1D5D660;
      v4 = *(v0 + 152);

      return sub_1D1D5E184((v0 + 144), v1);
    }
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 152);
  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F470);

  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6833C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 152) + *(v0 + 168);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v14 = sub_1D1E68FAC();
    v16 = sub_1D1B1312C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1D16EC000, v8, v9, "(AutoClimateModel.Thermostat - (writeSleepSchedule(_ schedule:)) - Failed to generate schedule for accessory: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1D5D660()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5D770, v2, 0);
}

uint64_t sub_1D1D5D770()
{
  v22 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = sub_1D1E6709C();
  *(v0 + 208) = __swift_project_value_buffer(v3, qword_1EC64F470);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 160);
    v8 = *(v0 + 152) + *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    v21[1] = v7;
    *v9 = 136315394;
    v11 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
    v13 = sub_1D1B1312C(v11, v12, v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v14 = sub_1D1E68FAC();
    v16 = sub_1D1B1312C(v14, v15, v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat: (writeSleepSchedule(_ schedule:)) - Updating thermostat schedule to: %s for accessory: %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1D5DA64;
  v19 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_74;
  *(v0 + 112) = v19;
  [v18 setThermostatSleepSchedule:v17 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1D5DA64()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_1D1D5DDA0;
  }

  else
  {
    v5 = sub_1D1D5DB84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1D5DB84()
{
  v23 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (v6)
  {
    v21 = *(v0 + 232);
    v9 = *(v0 + 160);
    v10 = *(v0 + 152) + *(v0 + 168);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    v22[1] = v9;
    *v11 = 136315394;
    v13 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
    v15 = sub_1D1B1312C(v13, v14, v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v16 = sub_1D1E68FAC();
    v18 = sub_1D1B1312C(v16, v17, v22);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat: (writeSleepSchedule(_ schedule:)) - Successfully updated thermostat schedule to: %s for accessory: %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D1D5DDA0()
{
  v23 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 152);
  swift_willThrow();

  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 232);
    v9 = *(v0 + 152) + *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v13 = sub_1D1E68FAC();
    v15 = sub_1D1B1312C(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat: (writeSleepSchedule(_ schedule:)) - Failed to update thermostat schedule for accessory: %s due to error: %@. Reverting to previous state.", v10, 0x16u);
    sub_1D1741A30(v11, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v18 = *(v0 + 184);
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  *v19 = v0;
  v19[1] = sub_1D1D5E004;
  v20 = *(v0 + 152);

  return sub_1D1D57B3C(v18, 0);
}

uint64_t sub_1D1D5E004()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5E114, v2, 0);
}

uint64_t sub_1D1D5E114()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1D5E184(uint64_t *a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[4] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a1;
  v3[6] = v8;
  v3[7] = v9;
  v10 = swift_task_alloc();
  v3[8] = v10;
  *v10 = v3;
  v10[1] = sub_1D1D5E290;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D5E290(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5E3A8, v3, 0);
}

uint64_t sub_1D1D5E3A8()
{
  if (v0[9])
  {
    v1 = v0[3];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v0[10] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D5E568;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Could not get home manager", v8, 2u);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v10 = v0[5];
    v9 = v0[6];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D1D5E568(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5E680, v3, 0);
}

uint64_t sub_1D1D5E680()
{
  v42 = v0;
  if (v0[12])
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v1 = v0[7];
    v2 = v0[3];
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64F470);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[7];
      v7 = v0[3];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40 = v9;
      *v8 = 136315394;
      v10 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v11 = sub_1D1E68FAC();
      v13 = sub_1D1B1312C(v11, v12, &v40);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v41 = v6;
      v14 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
      v16 = sub_1D1B1312C(v14, v15, &v40);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Updating snapshot with sleep schedule for accessory: %s, schedule: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_1D1D5EB48;
    v18 = v0[3];

    return AutoClimateModel.Thermostat.snapshotModerator.getter();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v20 = v0[3];
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EC64F470);

    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6835C();

    if (os_log_type_enabled(v22, v23))
    {
      v38 = v0[10];
      v39 = v0[9];
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315394;
      v27 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v28 = sub_1D1E68FAC();
      v30 = sub_1D1B1312C(v28, v29, &v41);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_1D1E68FAC();
      v33 = sub_1D1B1312C(v31, v32, &v41);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_1D16EC000, v22, v23, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - No home found for accessory: %s,  homeUUID: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    else
    {
      v34 = v0[9];
    }

    v36 = v0[5];
    v35 = v0[6];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1D1D5EB48(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5EC60, v3, 0);
}

uint64_t sub_1D1D5EC60()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  *v4 = v6;
  v4[1] = v3;
  swift_storeEnumTagMultiPayload();

  v7 = v6;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1D1D5ED44;
  v9 = v0[14];
  v11 = v0[5];
  v10 = v0[6];

  return sub_1D1E5A250(v10, v11, v2, v1, 0);
}

uint64_t sub_1D1D5ED44()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 24);
  v7 = *v0;

  sub_1D1D52E14(v4, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1D52E14(v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5EED8, v5, 0);
}

uint64_t sub_1D1D5EED8()
{
  v1 = *(v0 + 72);

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1D5EF50(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  v3 = *(*(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0) - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 176) = v4;
  v5 = *(v4 - 8);
  *(v2 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v7 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
  *(v2 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v2 + 208) = v9;
  *(v2 + 216) = v10;
  v11 = v1 + v10;
  v12 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v2 + 304) = v12;
  v13 = swift_task_alloc();
  *(v2 + 224) = v13;
  *v13 = v2;
  v13[1] = sub_1D1D5F0FC;

  return sub_1D1B9A370(v11 + v12);
}

uint64_t sub_1D1D5F0FC(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5F214, v3, 0);
}

uint64_t sub_1D1D5F214()
{
  v38 = v0;
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = *(*(v0 + 152) + 8);
    if (v2)
    {
      v35 = *(v0 + 232);
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = *(v0 + 200);
        v5 = *(v0 + 184);
        v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v36 = *(v4 + 72);
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          v8 = *(v0 + 208);
          v9 = *(v0 + 192);
          v10 = *(v0 + 176);
          sub_1D1D52DAC(v6, v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          (*(v5 + 16))(v9, v8, v10);
          sub_1D1D52E14(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D177D0AC(0, v7[2] + 1, 1, v7);
          }

          v12 = v7[2];
          v11 = v7[3];
          if (v12 >= v11 >> 1)
          {
            v7 = sub_1D177D0AC(v11 > 1, v12 + 1, 1, v7);
          }

          v13 = *(v0 + 192);
          v14 = *(v0 + 176);
          v7[2] = v12 + 1;
          (*(v5 + 32))(v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
          v6 += v36;
          --v3;
        }

        while (v3);
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      v1 = v35;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 240) = v7;
    v32 = swift_task_alloc();
    *(v0 + 248) = v32;
    *v32 = v0;
    v32[1] = sub_1D1D5F678;
    v33 = *(v0 + 152);
    v34 = *(v0 + 160);

    return sub_1D1D60634(v33, v1);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 160);
    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EC64F470);

    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 304);
      v20 = *(v0 + 176);
      v21 = *(v0 + 160) + *(v0 + 216);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EC8C30, &v37);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EC8D20, &v37);
      *(v22 + 22) = 2080;
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v24 = sub_1D1E68FAC();
      v26 = sub_1D1B1312C(v24, v25, &v37);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_1D16EC000, v17, v18, "%s - %s: Failed to find thermostat for accessory: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    v27 = *(v0 + 208);
    v28 = *(v0 + 192);
    v29 = *(v0 + 168);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D1D5F678()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5F788, v2, 0);
}

uint64_t sub_1D1D5F788()
{
  v32 = v0;
  if (*(v0 + 240))
  {
    if (qword_1EC642408 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 160);
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_1D1D5FC04;

    return AutoClimateModel.localPresenceRooms(for:)(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = sub_1D1E6709C();
    *(v0 + 272) = __swift_project_value_buffer(v8, qword_1EC64F470);
    sub_1D1D52DAC(v7, v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      v14 = *(v0 + 160) + *(v0 + 216);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315650;
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v17 = sub_1D1E68FAC();
      v19 = sub_1D1B1312C(v17, v18, &v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = HMAdaptiveTemperatureDriver.description.getter(*v12);
      v22 = v21;
      sub_1D1D52E14(v12, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v23 = sub_1D1B1312C(v20, v22, &v31);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2080;
      *(v0 + 144) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E558, &qword_1D1EABE50);
      v24 = sub_1D1E6789C();
      v26 = sub_1D1B1312C(v24, v25, &v31);

      *(v15 + 24) = v26;
      _os_log_impl(&dword_1D16EC000, v9, v10, "(AutoClimateModel.Thermostat - (writeAdaptiveTemperatureSettings(_ setting:)) - Updating adaptive temperature settings for accessory: %s to temperature driver: %s and selected rooms: %s.", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {
      v27 = *(v0 + 168);

      sub_1D1D52E14(v27, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    }

    v28 = **(v0 + 152);
    *(v0 + 280) = 0;
    v29 = *(v0 + 232);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D1D60158;
    v30 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_57;
    *(v0 + 112) = v30;
    [v29 setAdaptiveTemperatureDriver:v28 rooms:0 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1D1D5FC04(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5FD1C, v3, 0);
}

uint64_t sub_1D1D5FD1C()
{
  v34 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  if (v1)
  {
    v3 = sub_1D1D670A8(v1, *(v0 + 240));
  }

  else
  {
    v4 = *(v0 + 240);

    v3 = 0;
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = sub_1D1E6709C();
  *(v0 + 272) = __swift_project_value_buffer(v8, qword_1EC64F470);
  sub_1D1D52DAC(v7, v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160) + *(v0 + 216);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33[0] = v16;
    *v15 = 136315650;
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v17 = sub_1D1E68FAC();
    v19 = sub_1D1B1312C(v17, v18, v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = HMAdaptiveTemperatureDriver.description.getter(*v12);
    v22 = v21;
    sub_1D1D52E14(v12, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v23 = sub_1D1B1312C(v20, v22, v33);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    *(v0 + 144) = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E558, &qword_1D1EABE50);
    v24 = sub_1D1E6789C();
    v26 = sub_1D1B1312C(v24, v25, v33);

    *(v15 + 24) = v26;
    _os_log_impl(&dword_1D16EC000, v9, v10, "(AutoClimateModel.Thermostat - (writeAdaptiveTemperatureSettings(_ setting:)) - Updating adaptive temperature settings for accessory: %s to temperature driver: %s and selected rooms: %s.", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {
    v27 = *(v0 + 168);

    sub_1D1D52E14(v27, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v28 = **(v0 + 152);
  if (v3)
  {
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    sub_1D1D4EB34();
    v29 = sub_1D1E6815C();
  }

  else
  {
    v29 = 0;
  }

  *(v0 + 280) = v29;
  v30 = *(v0 + 232);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1D60158;
  v31 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_57;
  *(v0 + 112) = v31;
  [v30 setAdaptiveTemperatureDriver:v28 rooms:v29 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1D60158()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_1D1D60300;
  }

  else
  {
    v5 = sub_1D1D60278;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1D60278()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1D60300()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  swift_willThrow();

  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat - (writeAdaptiveTemperatureSettings(_ setting:)) - Failed to update adaptive temperature settings due to error: %@. Reverting to previous state.", v8, 0xCu);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v12 = v0[29];

  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_1D1D60498;
  v14 = v0[20];

  return sub_1D1D55FE8(v12, 0);
}

uint64_t sub_1D1D60498()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D605A8, v2, 0);
}

uint64_t sub_1D1D605A8()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1D60634(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[5] = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[10] = v9;
  *v9 = v3;
  v9[1] = sub_1D1D60768;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D60768(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D60880, v3, 0);
}

uint64_t sub_1D1D60880()
{
  if (v0[11])
  {
    v1 = v0[4];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v0[12] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D60A4C;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Could not get home manager", v8, 2u);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D1D60A4C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D60B64, v3, 0);
}

uint64_t sub_1D1D60B64()
{
  v45 = v0;
  if (v0[14])
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = v0[4];
    v3 = v0[2];
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC64F470);
    sub_1D1D52DAC(v3, v1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[9];
    if (v7)
    {
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136315394;
      v12 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v13 = sub_1D1E68FAC();
      v15 = sub_1D1B1312C(v13, v14, &v44);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter();
      v18 = v17;
      sub_1D1D52E14(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v19 = sub_1D1B1312C(v16, v18, &v44);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Updating snapshot with adaptive temperature settings for accessory: %s, setting: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1D52E14(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    }

    v34 = swift_task_alloc();
    v0[15] = v34;
    *v34 = v0;
    v34[1] = sub_1D1D61098;
    v35 = v0[4];

    return AutoClimateModel.Thermostat.snapshotModerator.getter();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v20 = v0[4];
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EC64F470);

    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6835C();

    if (os_log_type_enabled(v22, v23))
    {
      v42 = v0[12];
      v43 = v0[11];
      v24 = v0[4];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315394;
      v27 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v28 = sub_1D1E68FAC();
      v30 = sub_1D1B1312C(v28, v29, &v44);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_1D1E68FAC();
      v33 = sub_1D1B1312C(v31, v32, &v44);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_1D16EC000, v22, v23, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - No home found for accessory: %s, homeUUID: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    else
    {
      v37 = v0[11];
    }

    v38 = v0[9];
    v39 = v0[6];
    v40 = v0[7];

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_1D1D61098(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D611B0, v3, 0);
}

uint64_t sub_1D1D611B0()
{
  v1 = v0[14];
  v18 = v1;
  v19 = v0[11];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810) + 48);
  *v3 = v5;
  v8 = v5;
  LOBYTE(v5) = [v1 isAllowedToEnableAdaptiveTemperatureAutomations];
  v9 = *v6;
  v10 = *(v6 + 1);
  v11 = *(v2 + 24);
  v12 = sub_1D1E66C5C();
  (*(*(v12 - 8) + 16))(&v7[v11], &v6[v11], v12);
  *v7 = v9;
  *(v7 + 1) = v10;
  v7[*(v2 + 28)] = v5;
  swift_storeEnumTagMultiPayload();

  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1D1D6132C;
  v14 = v0[16];
  v16 = v0[6];
  v15 = v0[7];

  return sub_1D1E5A250(v15, v16, v19, v18, 0);
}

uint64_t sub_1D1D6132C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  v7 = *v0;

  sub_1D1D52E14(v4, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1D52E14(v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1D614C0, v5, 0);
}

uint64_t sub_1D1D614C0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1D61544(uint64_t a1, char a2)
{
  *(v3 + 128) = v2;
  *(v3 + 49) = a2;
  *(v3 + 50) = *a1;
  *(v3 + 51) = *(a1 + 1);
  *(v3 + 136) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(v3 + 89) = *(a1 + 32);
  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v6 = v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v3 + 152) = v4;
  *(v3 + 160) = v5;
  v7 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v3 + 52) = v7;
  v8 = swift_task_alloc();
  *(v3 + 168) = v8;
  *v8 = v3;
  v8[1] = sub_1D1D6163C;

  return sub_1D1B9A370(v6 + v7);
}

uint64_t sub_1D1D6163C(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D61754, v3, 0);
}

uint64_t sub_1D1D61754()
{
  v30 = v0;
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = [*(v0 + 176) home];
    *(v0 + 184) = v2;
    if (v2)
    {
      if (*(v0 + 49) == 1)
      {
        v3 = *(v0 + 89);
        v4 = *(v0 + 152);
        v5 = *(v0 + 51);
        *(v0 + 56) = *(v0 + 50);
        *(v0 + 57) = v5;
        *(v0 + 64) = *(v0 + 136);
        *(v0 + 80) = v4;
        *(v0 + 88) = v3;
        v6 = swift_task_alloc();
        *(v0 + 192) = v6;
        *v6 = v0;
        v6[1] = sub_1D1D61B30;
        v7 = *(v0 + 128);
        v8 = v0 + 56;
LABEL_12:

        return sub_1D1D6274C(v8, v1);
      }

      v20 = v2;
      v21 = *(*(v0 + 128) + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite);
      *(v0 + 200) = v21;
      if (v21)
      {
        v22 = *(v0 + 89);
        v23 = *(v0 + 152);
        v24 = *(v0 + 51);
        *(v0 + 16) = *(v0 + 50);
        *(v0 + 17) = v24;
        *(v0 + 24) = *(v0 + 136);
        *(v0 + 40) = v23;
        *(v0 + 48) = v22;

        v25 = swift_task_alloc();
        *(v0 + 208) = v25;
        *v25 = v0;
        v25[1] = sub_1D1D61CA4;
        v26 = *(v0 + 128);
        v8 = v0 + 16;
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 128);
    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64F470);

    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 52);
      v14 = *(v0 + 128) + *(v0 + 160);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EC8C30, &v29);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC8CF0, &v29);
      *(v15 + 22) = 2080;
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v17 = sub_1D1E68FAC();
      v19 = sub_1D1B1312C(v17, v18, &v29);

      *(v15 + 24) = v19;
      _os_log_impl(&dword_1D16EC000, v11, v12, "%s - %s: Failed to find thermostat for accessory: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D1D61B30()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D61C40, v2, 0);
}

uint64_t sub_1D1D61C40()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D61CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 176);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 216) = v5;
  *v5 = v4;
  v5[1] = sub_1D1D61E00;
  v6 = *(v1 + 128);

  return sub_1D1D59654(v3, 0);
}

uint64_t sub_1D1D61E00()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D61F10, v2, 0);
}

uint64_t sub_1D1D61F10()
{
  v26 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = sub_1D1E6709C();
  *(v0 + 224) = __swift_project_value_buffer(v3, qword_1EC64F470);

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 50);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315394;
    if (v8)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v8)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_1D1B1312C(v11, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [v7 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v25);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat - (writeCleanEnergySetting(_ setting:)) - Updating electricity rates enabled to %s for home: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v19 = *(v0 + 200);
  v20 = *(MEMORY[0x1E699BB50] + 4);
  v24 = (*MEMORY[0x1E699BB50] + MEMORY[0x1E699BB50]);
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = sub_1D1D62194;
  v22 = *(v0 + 50);

  return v24(v22);
}

uint64_t sub_1D1D62194()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1D1D62330;
  }

  else
  {
    v6 = sub_1D1D622C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1D622C0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1D62330()
{
  v33 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);

  v5 = v3;
  v6 = v1;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 184);
    v11 = *(v0 + 50);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315650;
    v14 = [v10 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v32);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    if (v11)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v11)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v21 = sub_1D1B1312C(v19, v20, &v32);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    v24 = *(v0 + 112);
    v25 = sub_1D1E6915C();
    v27 = sub_1D1B1312C(v25, v26, &v32);

    *(v12 + 24) = v27;
    _os_log_impl(&dword_1D16EC000, v7, v8, "(AutoClimateModel.Thermostat - (writeCleanEnergySetting(_ setting:)) - Failed to update electricity rates enabled for home: %s to %s: due to error: %s. Reverting to previous state", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v28 = *(v0 + 176);
  v29 = swift_task_alloc();
  *(v0 + 248) = v29;
  *v29 = v0;
  v29[1] = sub_1D1D625B8;
  v30 = *(v0 + 128);

  return sub_1D1D59654(v28, 0);
}

uint64_t sub_1D1D625B8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D626C8, v2, 0);
}

uint64_t sub_1D1D626C8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1D6274C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v3 + 32) = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v7 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 144) = *a1;
  *(v3 + 145) = *(a1 + 1);
  v8 = *(a1 + 8);
  *(v3 + 72) = *(a1 + 24);
  *(v3 + 146) = *(a1 + 32);
  *(v3 + 56) = v8;
  v9 = swift_task_alloc();
  *(v3 + 80) = v9;
  *v9 = v3;
  v9[1] = sub_1D1D6287C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D6287C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D62994, v3, 0);
}

uint64_t sub_1D1D62994()
{
  if (v0[11])
  {
    v1 = v0[3];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v0[12] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D62B54;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Could not get home manager", v8, 2u);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v10 = v0[5];
    v9 = v0[6];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D1D62B54(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D62C6C, v3, 0);
}

uint64_t sub_1D1D62C6C()
{
  v49 = v0;
  if (*(v0 + 112))
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 64);
    v2 = *(v0 + 24);
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64F470);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v42 = *(v0 + 146);
      v40 = *(v0 + 72);
      v39 = *(v0 + 56);
      v6 = *(v0 + 145);
      v7 = *(v0 + 144);
      v8 = *(v0 + 24);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v44 = v10;
      *v9 = 136315394;
      v11 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v12 = sub_1D1E68FAC();
      v14 = sub_1D1B1312C(v12, v13, &v44);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      LOBYTE(v45) = v7;
      BYTE1(v45) = v6;
      v46 = v39;
      v47 = v40;
      v48 = v42;
      v15 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
      v17 = sub_1D1B1312C(v15, v16, &v44);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Updating snapshot with clean energy settings for accessory: %s, setting: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    else
    {
      v6 = *(v0 + 145);
      v7 = *(v0 + 144);
    }

    *(v0 + 148) = v7;
    *(v0 + 147) = v6;
    v32 = swift_task_alloc();
    *(v0 + 120) = v32;
    *v32 = v0;
    v32[1] = sub_1D1D63180;
    v33 = *(v0 + 24);

    return AutoClimateModel.Thermostat.snapshotModerator.getter();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 24);
    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EC64F470);

    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6835C();

    if (os_log_type_enabled(v20, v21))
    {
      v41 = *(v0 + 96);
      v43 = *(v0 + 88);
      v22 = *(v0 + 24);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315394;
      v25 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v26 = sub_1D1E68FAC();
      v28 = sub_1D1B1312C(v26, v27, &v45);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = sub_1D1E68FAC();
      v31 = sub_1D1B1312C(v29, v30, &v45);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1D16EC000, v20, v21, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - No home found for accessory: %s,  homeUUID: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {
      v35 = *(v0 + 88);
    }

    v37 = *(v0 + 40);
    v36 = *(v0 + 48);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1D1D63180(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D63298, v3, 0);
}

uint64_t sub_1D1D63298()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 147);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 146);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 16);
  *(v7 + 24) = *(v0 + 64);
  *v7 = v9;
  *(v7 + 8) = v1;
  *(v7 + 9) = v2;
  *(v7 + 16) = v6;
  *(v7 + 40) = v5;
  swift_storeEnumTagMultiPayload();

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1D1D633A4;
  v12 = *(v0 + 128);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);

  return sub_1D1E5A250(v13, v14, v4, v3, 0);
}

uint64_t sub_1D1D633A4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 24);
  v7 = *v0;

  sub_1D1D52E14(v4, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1D52E14(v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1D63538, v5, 0);
}

uint64_t sub_1D1D63538()
{
  v1 = *(v0 + 88);

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AutoClimateModel.Thermostat.room.getter()
{
  v2 = v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v3 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 28);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D1AC3C3C;

  return (sub_1D1E50EB4)(v2 + v3);
}

uint64_t sub_1D1D63674(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    sub_1D1D4EB34();
    v10 = sub_1D1E6816C();
    v11 = *(*(v6 + 64) + 40);
    *v11 = a2;
    v11[1] = v10;

    return MEMORY[0x1EEE6DEE0](v6);
  }
}

uint64_t AutoClimateModel.Thermostat.setDefaultSchedule()()
{
  v1[3] = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = sub_1D1E662EC();
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D6390C, v0, 0);
}

uint64_t sub_1D1D6390C()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v16 = v0[11];
  v17 = v0[6];
  v20 = v0[9];
  v21 = v0[5];
  v18 = v0[10];
  v19 = v0[4];
  sub_1D1E66B9C();
  v4 = sub_1D1E66BBC();
  v15 = *(*(v4 - 8) + 56);
  v15(v2, 0, 1, v4);
  v5 = sub_1D1E66C5C();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v15(v2, 0, 1, v4);
  v6(v3, 1, 1, v5);
  sub_1D1E662BC();
  v7 = *(v18 + 16);
  v7(v17, v1, v20);
  v7(v17 + *(v19 + 20), v16, v20);
  *(v17 + *(v19 + 24)) = 127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431E0, &qword_1D1E71D50);
  v8 = *(v21 + 72);
  v9 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D1E739C0;
  sub_1D1D66490(v17, v10 + v9, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v11 = *(v18 + 8);
  v11(v16, v20);
  v11(v1, v20);
  v0[2] = v10;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1D1D63CBC;
  v13 = v0[3];

  return sub_1D1D5D1E0(v0 + 2);
}

uint64_t sub_1D1D63CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v11 = *v0;

  v8 = *(v1 + 16);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t AutoClimateModel.Thermostat.homeManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1AC3C3C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D63F30()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  if (v1)
  {
    v2 = v1[18];

    v3 = *(v2 + qword_1EC6BE170);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v0[3] = sub_1D1E67E1C();
    v0[4] = sub_1D1E67E0C();
    v7 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D64038, v7, v6);
  }
}

uint64_t sub_1D1D64038()
{
  v1 = *(v0 + 32);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1D640D0, v2, 0);
}

uint64_t sub_1D1D640D0()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D6415C, v3, v2);
}

uint64_t sub_1D1D6415C()
{
  v1 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t AutoClimateModel.Thermostat.writeSleepSchedule(_:)(void *a1)
{
  if (*a1)
  {
    v1[2] = *a1;
    v2 = swift_task_alloc();
    v1[3] = v2;
    *v2 = v1;
    v2[1] = sub_1D17D064C;

    return sub_1D1D5D1E0(v1 + 2);
  }

  else
  {
    v4 = v1[1];

    return v4();
  }
}

uint64_t AutoClimateModel.Thermostat.writeSleepSchedule(oldRule:newRule:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E500, &qword_1D1EABC60) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D64384, v2, 0);
}

uint64_t sub_1D1D64384()
{
  v0[15] = *(v0[10] + 112);
  sub_1D1E67E1C();
  v0[16] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D64424, v2, v1);
}

uint64_t sub_1D1D64424()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[10];

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  v0[17] = *(v2 + v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1D6453C, v3, 0);
}

uint64_t sub_1D1D6453C()
{
  v40 = v0;
  v1 = v0[17];
  if (!v1)
  {
LABEL_4:
    v8 = v0[13];
    v7 = v0[14];
    v10 = v0[11];
    v9 = v0[12];

    v11 = v0[1];

    return v11();
  }

  v2 = v0[8];
  v0[6] = v1;

  v3 = sub_1D18E45BC(v2, v1);
  v5 = v4;

  if (v5)
  {
    v6 = v0[17];

    goto LABEL_4;
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v14 = v0[13];
  v13 = v0[14];
  v16 = v0[8];
  v15 = v0[9];
  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC64F470);
  sub_1D1D52DAC(v16, v13, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  sub_1D1D52DAC(v15, v14, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();
  v20 = os_log_type_enabled(v18, v19);
  v22 = v0[13];
  v21 = v0[14];
  if (v20)
  {
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v23 = 136315394;
    v24 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
    v26 = v25;
    sub_1D1D52E14(v21, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v27 = sub_1D1B1312C(v24, v26, &v39);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
    v30 = v29;
    sub_1D1D52E14(v22, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v31 = sub_1D1B1312C(v28, v30, &v39);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_1D16EC000, v18, v19, "(AutoClimateModel.Thermostat - (writeSleepSchedule(oldRule:newRule:)) - Updating sleep schedule rule: %s to %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v38, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);
  }

  else
  {

    sub_1D1D52E14(v22, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    sub_1D1D52E14(v21, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  }

  v32 = v0[12];
  sub_1D1D518EC(v3, v32);
  result = sub_1D1D52E14(v32, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v33 = v0[6];
  if (v33[2] < v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v3 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_1D1D52DAC(v0[9], v0[11], type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v34 = v33[2];
  if (v34 < v3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v34 >= v33[3] >> 1)
  {
    v33 = sub_1D177FE4C(isUniquelyReferenced_nonNull_native, v34 + 1, 1, v33);
    v0[6] = v33;
  }

  sub_1D1D65948(v3, v3, 1, v0[11]);
  v0[6] = v33;
  v0[7] = v33;
  v36 = swift_task_alloc();
  v0[18] = v36;
  *v36 = v0;
  v36[1] = sub_1D1D64964;
  v37 = v0[10];

  return sub_1D1D5D1E0(v0 + 7);
}

uint64_t sub_1D1D64964()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 80);
  v6 = *v0;

  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D1D64A98, v3, 0);
}

uint64_t sub_1D1D64A98()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t AutoClimateModel.Thermostat.writeAdaptiveTemperatureSetting(driver:selectedRoom:previouslySelectedRoom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E510, &qword_1D1EABC98) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D64C60, v3, 0);
}

uint64_t sub_1D1D64C60()
{
  v1 = v0[5];
  sub_1D1741C08(v0[6], v0[16], &qword_1EC64E510, &qword_1D1EABC98);
  v2 = v0[16];
  if (v1 == 2)
  {
    v3 = v0[15];
    v4 = v0[11];
    v5 = v0[12];
    sub_1D1741C08(v2, v3, &qword_1EC64E510, &qword_1D1EABC98);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[15];
      v7 = v0[16];
      v8 = v0[7];
      sub_1D1741A30(v7, &qword_1EC64E510, &qword_1D1EABC98);
      sub_1D1741A30(v6, &qword_1EC64E510, &qword_1D1EABC98);
      sub_1D1741C08(v8, v7, &qword_1EC64E510, &qword_1D1EABC98);
    }

    else
    {
      sub_1D1741A30(v0[15], &qword_1EC64E510, &qword_1D1EABC98);
    }
  }

  else
  {
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[16];
    sub_1D1741A30(v2, &qword_1EC64E510, &qword_1D1EABC98);
    (*(v10 + 56))(v11, 1, 1, v9);
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  sub_1D1741C08(v0[16], v12, &qword_1EC64E510, &qword_1D1EABC98);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = v0[14];
  if (v15 == 1)
  {
    sub_1D1741A30(v16, &qword_1EC64E510, &qword_1D1EABC98);
    v17 = 0;
  }

  else
  {
    v19 = v0[12];
    v18 = v0[13];
    sub_1D1D66490(v16, v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643658, &qword_1D1E71D48);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D1E739C0;
    sub_1D1D66490(v18, v17 + v21, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  }

  v23 = v0[9];
  v22 = v0[10];
  v24 = v0[8];
  v25 = v0[5];
  v26 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v27 = *(v23 + 24);
  v28 = sub_1D1E66C5C();
  (*(*(v28 - 8) + 16))(&v22[v27], v24 + v26, v28);
  *v22 = v25;
  *(v22 + 1) = v17;
  v22[*(v23 + 28)] = 0;
  v29 = swift_task_alloc();
  v0[17] = v29;
  *v29 = v0;
  v29[1] = sub_1D1D64F78;
  v30 = v0[10];
  v31 = v0[8];

  return sub_1D1D5EF50(v30);
}

uint64_t sub_1D1D64F78()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1D65088, v2, 0);
}

uint64_t sub_1D1D65088()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  sub_1D1D52E14(v0[10], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  sub_1D1741A30(v2, &qword_1EC64E510, &qword_1D1EABC98);

  v5 = v0[1];

  return v5();
}

uint64_t AutoClimateModel.Thermostat.writeCleanEnergySettings(_:isUnitTest:)(char a1, char a2)
{
  *(v3 + 128) = v2;
  *(v3 + 50) = a2;
  *(v3 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D65180, v2, 0);
}

uint64_t sub_1D1D65180()
{
  if (*(v0 + 50) == 1)
  {
    *(v0 + 56) = *(v0 + 49);
    *(v0 + 57) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = 0;
    *(v0 + 88) = 0;
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_1D1D652B8;
    v2 = *(v0 + 128);

    return sub_1D1D61544(v0 + 56, 1);
  }

  else
  {
    *(v0 + 144) = *(*(v0 + 128) + 112);
    sub_1D1E67E1C();
    *(v0 + 152) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D653C8, v5, v4);
  }
}

uint64_t sub_1D1D652B8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D1D653C8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);

  swift_getKeyPath();
  *(v0 + 120) = v2;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = v2 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v5 = *v4;
  *(v0 + 160) = *v4;
  v6 = *(v4 + 8);
  *(v0 + 168) = v6;
  v7 = *(v4 + 16);
  *(v0 + 176) = v7;
  *(v0 + 184) = *(v4 + 24);
  *(v0 + 51) = *(v4 + 32);
  sub_1D1C2B3B4(v5, v6, v7);

  return MEMORY[0x1EEE6DFA0](sub_1D1D65500, v3, 0);
}

uint64_t sub_1D1D65500()
{
  v1 = *(v0 + 176);
  if (v1 == 1)
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 51);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    v7 = *(v0 + 161);
    *(v0 + 16) = *(v0 + 49);
    *(v0 + 17) = v7 & 1;
    *(v0 + 24) = v6;
    *(v0 + 32) = v1;
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_1D1D65604;
    v9 = *(v0 + 128);

    return sub_1D1D61544(v0 + 16, 0);
  }
}

uint64_t sub_1D1D65604()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 176);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D1D65714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1D657DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1D1D68428(&v4);
}

uint64_t sub_1D1D65818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = v3 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = *(v4 + 32);
  return sub_1D1C2B3B4(v5, v6, v7);
}