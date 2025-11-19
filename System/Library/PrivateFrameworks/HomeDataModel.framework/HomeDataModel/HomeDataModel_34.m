BOOL StaticThermostatClusterGroup.supportsPresets.getter()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup();
  if (*(v0 + *(v1 + 24)) == 1 && (v2 = v0 + *(v1 + 28), *v2 != 2) && (v3 = *(v2 + 8)) != 0)
  {
    return *(v3 + 16) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t StaticThermostatClusterGroup.supportsAdaptiveTemperature.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticThermostatClusterGroup() + 28));
  if (*v1 == 2)
  {
    return 0;
  }

  else
  {
    return v1[*(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 84)];
  }
}

uint64_t StaticThermostatClusterGroup.setpointOffsetActive.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup() + 32);
  if (*(v1 + 8))
  {
    return 2;
  }

  else
  {
    return *v1 > 0;
  }
}

uint64_t StaticThermostatClusterGroup.adaptiveTemperatureEnabled.getter()
{
  result = type metadata accessor for StaticThermostatClusterGroup();
  v2 = *(v0 + *(result + 28) + 16);
  if (v2)
  {
    v57 = (v0 + *(result + 28));
    v54 = result;
    v55 = v0;
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v7 = (v2 + 32 + (v5 << 6));
        v8 = v5;
        while (1)
        {
          if (v8 >= *(v2 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }

          v9 = v7[3];
          v10 = *v7;
          v11 = v7[1];
          v61 = v7[2];
          v62 = v9;
          v59 = v10;
          v60 = v11;
          v5 = v8 + 1;
          if (v11 < 2u)
          {
            break;
          }

          v7 += 4;
          ++v8;
          if (v3 == v5)
          {
            goto LABEL_16;
          }
        }

        sub_1D17806DC(&v59, v58);
        result = swift_isUniquelyReferenced_nonNull_native();
        v63 = v6;
        if ((result & 1) == 0)
        {
          result = sub_1D178D694(0, v6[2] + 1, 1);
          v6 = v63;
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1D178D694((v12 > 1), v13 + 1, 1);
          v6 = v63;
        }

        v6[2] = v13 + 1;
        v14 = &v6[8 * v13];
        v15 = v59;
        v16 = v60;
        v17 = v62;
        *(v14 + 4) = v61;
        *(v14 + 5) = v17;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
        if (v3 - 1 != v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:
    v18 = v6[2];
    if (v18)
    {
      *&v59 = v4;
      sub_1D178D8B8(0, v18, 0);
      v19 = v59;
      v20 = v6 + 8;
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        sub_1D1771B38(v21, *v20);
        *&v59 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D178D8B8((v23 > 1), v24 + 1, 1);
          v19 = v59;
        }

        v20 += 8;
        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        --v18;
      }

      while (v18);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v26 = *(v57 + 3);
    if (v26)
    {
      v27 = 0;
      v28 = *(v26 + 16);
      v29 = v26 + 24;
      v30 = MEMORY[0x1E69E7CC0];
      v31 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v32 = v29 + 24 * v27;
      while (v28 != v27)
      {
        if (v27 >= *(v26 + 16))
        {
          goto LABEL_53;
        }

        ++v27;
        v33 = (v32 + 24);
        v34 = *(v32 + 25);
        v32 += 24;
        if (v34)
        {
          v35 = *(v33 - 2);
          v36 = *(v33 - 1);
          v37 = *v33;
          sub_1D1771B38(v35, v36);
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v59 = v31;
          v56 = v29;
          if ((result & 1) == 0)
          {
            result = sub_1D178D8F8(0, v31[2] + 1, 1);
            v31 = v59;
          }

          v39 = v31[2];
          v38 = v31[3];
          if (v39 >= v38 >> 1)
          {
            result = sub_1D178D8F8((v38 > 1), v39 + 1, 1);
            v31 = v59;
          }

          v31[2] = v39 + 1;
          v40 = &v31[3 * v39];
          v40[4] = v35;
          v40[5] = v36;
          *(v40 + 48) = v37;
          *(v40 + 49) = 1;
          v29 = v56;
          goto LABEL_25;
        }
      }

      v41 = v31[2];
      if (v41)
      {
        *&v59 = v30;
        sub_1D178D8B8(0, v41, 0);
        v42 = v59;
        v43 = v31 + 5;
        do
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          sub_1D1771B38(v44, *v43);
          *&v59 = v42;
          v47 = *(v42 + 16);
          v46 = *(v42 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1D178D8B8((v46 > 1), v47 + 1, 1);
            v42 = v59;
          }

          v43 += 3;
          *(v42 + 16) = v47 + 1;
          v48 = v42 + 16 * v47;
          *(v48 + 32) = v44;
          *(v48 + 40) = v45;
          --v41;
        }

        while (v41);
      }

      else
      {

        v42 = MEMORY[0x1E69E7CC0];
      }

      *&v59 = v42;
      v58[0] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FB8, &unk_1D1E8A1E0);
      sub_1D17D8EA8(&qword_1EC647FC0, &qword_1EC647FB8, &unk_1D1E8A1E0);
      sub_1D19A1130();
      v49 = sub_1D1E6825C();

      v50 = *v57;
      if (v50 != 2 && (v50 & 1) != 0)
      {
        v51 = &v57[*(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 40)];
        v52 = (v55 + *(v54 + 44));
        v53 = v52[1];
        if (v51[1])
        {
          if (v52[1])
          {
            return v49 & 1;
          }
        }

        else
        {
          if (*v51 != *v52)
          {
            v53 = 1;
          }

          if ((v53 & 1) == 0)
          {
            return v49 & 1;
          }
        }
      }
    }

    else
    {
    }
  }

  v49 = 0;
  return v49 & 1;
}

unint64_t StaticThermostatClusterGroup.TemperatureSetpointHold.commandString.getter()
{
  if (*v0)
  {
    result = 0x6F70746553746573;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

HomeDataModel::StaticThermostatClusterGroup::TemperatureSetpointHold_optional __swiftcall StaticThermostatClusterGroup.TemperatureSetpointHold.init(rawValue:)(HomeDataModel::StaticThermostatClusterGroup::TemperatureSetpointHold_optional rawValue)
{
  if (rawValue.value == HomeDataModel_StaticThermostatClusterGroup_TemperatureSetpointHold_on)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == HomeDataModel_StaticThermostatClusterGroup_TemperatureSetpointHold_off)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *sub_1D199C608@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t StaticThermostatClusterGroup.updateTemperatureSetpointHold(to:)(_BYTE *a1)
{
  *(v2 + 160) = v1;
  v4 = type metadata accessor for EndpointPath(0);
  *(v2 + 168) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v6 = type metadata accessor for ClusterPath(0);
  *(v2 + 184) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 280) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D199C7B4, 0, 0);
}

uint64_t sub_1D199C7B4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v7 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E696F560];
  v10 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v13;
  v14 = sub_1D1E691BC();
  *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *(inited + 96) = v14;
  *(v0 + 208) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v3 + 20)) = 19;
  v15 = *(v2 + *(v5 + 24));
  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);
  v16 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = sub_1D171D15C(v15);
  v20 = v16[2];
  v21 = (v18 & 1) == 0;
  result = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    return result;
  }

  v23 = v18;
  if (v16[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
    }
  }

  else
  {
    sub_1D172684C(result, isUniquelyReferenced_nonNull_native);
    v24 = sub_1D171D15C(v15);
    if ((v23 & 1) != (v25 & 1))
    {

      return sub_1D1E690FC();
    }

    v19 = v24;
  }

  *(v0 + 216) = v16;

  if ((v23 & 1) == 0)
  {
    v26 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v19, v15, v26, v16);
  }

  v27 = *(v0 + 192);
  v28 = *(v0 + 160);
  v29 = v16[7];
  v30 = *(v29 + 8 * v19);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v29 + 8 * v19);
  *(v29 + 8 * v19) = 0x8000000000000000;
  sub_1D1753B88(v1, 2, 0x1300000023, v31);
  *(v29 + 8 * v19) = v34;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v28, v27, type metadata accessor for EndpointPath);
  *(v27 + *(v3 + 20)) = 19;
  v32 = swift_task_alloc();
  *(v0 + 224) = v32;
  *v32 = v0;
  v32[1] = sub_1D199CB2C;
  v33 = *(v0 + 192);

  return sub_1D1A092C4(v33);
}

uint64_t sub_1D199CB2C(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 232) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199CC60, 0, 0);
}

uint64_t sub_1D199CC60()
{
  v18 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 280);
  v4 = *(v0 + 160);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v1;
  sub_1D1A1456C(&v16, &v15);

  v5 = v15;
  *(v0 + 240) = v15;
  v6 = swift_allocObject();
  *(v0 + 248) = v6;
  *(v6 + 16) = v2;
  v16 = 0xD00000000000001DLL;
  v17 = 0x80000001D1EC0A80;
  v7 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  v8 = v16;
  v9 = v17;
  *(v0 + 256) = v17;
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_1D199CE14;
  v11 = 0x6F70746553746573;
  if (v3)
  {
    v12 = 0xEF646C6F48746E69;
  }

  else
  {
    v11 = 0xD000000000000012;
    v12 = 0x80000001D1EC0FF0;
  }

  v13 = *(v0 + 232);

  return sub_1D19167E4(v11, v12, v13, v5, v8, v9, &unk_1D1E8A1F8, v6);
}

uint64_t sub_1D199CE14()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(v2 + 272) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = *(v2 + 240);
    v7 = *(v2 + 280);

    v8 = sub_1D199D044;
  }

  else
  {
    v10 = *(v2 + 240);
    v9 = *(v2 + 248);
    v11 = *(v2 + 232);
    v12 = *(v2 + 280);

    v8 = sub_1D199CFCC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D199CFCC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D199D044()
{
  v1 = *(v0 + 272);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);

    v5 = *(v0 + 152);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 232);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = *(v0 + 176);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D199D24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D199D270, 0, 0);
}

uint64_t sub_1D199D270()
{
  v1 = v0[4];
  *(v0[2] + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D18A7A4C(v1);
  v2 = sub_1D1E675DC();

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC649398;
  if (qword_1EC649398)
  {
    v4 = qword_1EC649398;
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v4 = sub_1D1E684DC();
    v3 = 0;
  }

  v5 = v0[3];
  v6 = v3;
  [v5 writeAttributeTemperatureSetpointHoldWithValue:v2 expectedValueInterval:v4];

  v7 = v0[1];

  return v7();
}

uint64_t StaticThermostatClusterGroup.updateTemperatureSetpointHoldDuration(to:)(uint64_t a1, char a2)
{
  *(v3 + 288) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = type metadata accessor for EndpointPath(0);
  *(v3 + 176) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v6 = type metadata accessor for ClusterPath(0);
  *(v3 + 192) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199D48C, 0, 0);
}

void sub_1D199D48C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 160);
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    v3 = 60 * v2;
    if ((v2 * 60) >> 64 != (60 * v2) >> 63)
    {
      goto LABEL_23;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v5 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v6;
  v7 = *MEMORY[0x1E696F560];
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v11;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647370, &qword_1D1E854F8);
  if (v1)
  {
    v3 = 0;
    v12 = 0;
  }

  else
  {
    v12 = sub_1D1E6821C();
  }

  *(inited + 96) = v12;
  *(v0 + 216) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 176);
  sub_1D19A1778(*(v0 + 168), v13, type metadata accessor for EndpointPath);
  *(v13 + *(v14 + 20)) = 19;
  v16 = *(v13 + *(v15 + 24));
  sub_1D199FA0C(v13, type metadata accessor for ClusterPath);
  v17 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = sub_1D171D15C(v16);
  v21 = v17[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v24 = v19;
  if (v17[3] >= v23)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
    }
  }

  else
  {
    sub_1D172684C(v23, isUniquelyReferenced_nonNull_native);
    v25 = sub_1D171D15C(v16);
    if ((v24 & 1) != (v26 & 1))
    {

      sub_1D1E690FC();
      return;
    }

    v20 = v25;
  }

  *(v0 + 224) = v17;

  if ((v24 & 1) == 0)
  {
    v27 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v20, v16, v27, v17);
  }

  v28 = *(v0 + 200);
  v29 = *(v0 + 168);
  v30 = v17[7];
  v31 = *(v30 + 8 * v20);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v30 + 8 * v20);
  *(v30 + 8 * v20) = 0x8000000000000000;
  sub_1D1753B88(v3, 2, 0x1300000024, v32);
  *(v30 + 8 * v20) = v35;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v29, v28, type metadata accessor for EndpointPath);
  *(v28 + *(v14 + 20)) = 19;
  v33 = swift_task_alloc();
  *(v0 + 232) = v33;
  *v33 = v0;
  v33[1] = sub_1D199D838;
  v34 = *(v0 + 200);

  sub_1D1A092C4(v34);
}

uint64_t sub_1D199D838(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 240) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199D96C, 0, 0);
}

uint64_t sub_1D199D96C()
{
  v15 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[21];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v1;
  sub_1D1A1456C(&v13, &v12);

  v4 = v12;
  v0[31] = v12;
  v5 = swift_allocObject();
  v0[32] = v5;
  *(v5 + 16) = v2;
  v13 = 0xD00000000000001DLL;
  v14 = 0x80000001D1EC0A80;
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v7 = v13;
  v8 = v14;
  v0[33] = v14;
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_1D199DAF4;
  v10 = v0[30];

  return sub_1D19167E4(0x44646C6F48746573, 0xEF6E6F6974617275, v10, v4, v7, v8, &unk_1D1E8A218, v5);
}

uint64_t sub_1D199DAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[33];
  if (v0)
  {
    v6 = v2[31];

    v7 = sub_1D199DCCC;
  }

  else
  {
    v9 = v2[31];
    v8 = v2[32];
    v10 = v2[30];

    v7 = sub_1D199DC54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D199DC54()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D199DCCC()
{
  v1 = *(v0 + 280);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 168);

    v5 = *(v0 + 152);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 240);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D199DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D199DEF8, 0, 0);
}

uint64_t sub_1D199DEF8()
{
  v1 = v0[4];
  *(v0[2] + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D18A7A4C(v1);
  v2 = sub_1D1E675DC();

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC649398;
  if (qword_1EC649398)
  {
    v4 = qword_1EC649398;
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v4 = sub_1D1E684DC();
    v3 = 0;
  }

  v5 = v0[3];
  v6 = v3;
  [v5 writeAttributeTemperatureSetpointHoldDurationWithValue:v2 expectedValueInterval:v4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D199E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199E0DC, 0, 0);
}

uint64_t sub_1D199E0DC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v16 = v0[4];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v7 = sub_1D18A7A4C(v3);
  v0[9] = v7;
  v8 = *(v16 + 80);
  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1D199E260;
  v11 = v0[8];
  v13 = v0[3];
  v12 = v0[4];

  return (v15)(v11, 323551481, v7, 0, ObjectType, v12);
}

uint64_t sub_1D199E260(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v9 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  if (v1)
  {
    v7 = sub_1D199E46C;
  }

  else
  {
    v7 = sub_1D199E3CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D199E3CC()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  }

  else
  {
    v2 = 0;
    v3 = v0[2];
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  v4 = v0[8];
  v5 = v0[2];
  *v5 = v1;
  v5[3] = v2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D199E46C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1D199E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199E56C, 0, 0);
}

uint64_t sub_1D199E56C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v16 = v0[4];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v7 = sub_1D18A7A4C(v3);
  v0[9] = v7;
  v8 = *(v16 + 80);
  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1D199E6EC;
  v11 = v0[8];
  v13 = v0[3];
  v12 = v0[4];

  return (v15)(v11, 0, v7, 0, ObjectType, v12);
}

uint64_t sub_1D199E6EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v9 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  if (v1)
  {
    v7 = sub_1D19A1E84;
  }

  else
  {
    v7 = sub_1D19A1E54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t StaticThermostatClusterGroup.associatedAccessory.getter()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for StaticThermostatClusterGroup() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for ClusterPath(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199E918, 0, 0);
}

uint64_t sub_1D199E918()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_1D19A1778(v0[2], v2, type metadata accessor for EndpointPath);
  *(v2 + *(v1 + 20)) = 19;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D199E9DC;
  v4 = v0[5];

  return sub_1D1A09704(v4);
}

uint64_t sub_1D199E9DC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199EB10, 0, 0);
}

uint64_t sub_1D199EB10()
{
  v22 = v0;
  if (!v0[7])
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v1 = v0[2];
    v2 = v0[3];
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07A0B0);
    sub_1D19A1778(v1, v2, type metadata accessor for StaticThermostatClusterGroup);
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6833C();
    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EC1010, &v21);
      *(v9 + 12) = 2080;
      sub_1D19A1778(v8, v6, type metadata accessor for EndpointPath);
      *(v6 + *(v7 + 20)) = 19;
      v11 = ClusterPath.description.getter();
      v13 = v12;
      sub_1D199FA0C(v6, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v8, type metadata accessor for StaticThermostatClusterGroup);
      v14 = sub_1D1B1312C(v11, v13, &v21);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1D16EC000, v4, v5, "%s: Failed to find accessory in current home with path %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    else
    {
      v15 = v0[3];

      sub_1D199FA0C(v15, type metadata accessor for StaticThermostatClusterGroup);
    }
  }

  v16 = v0[5];
  v17 = v0[3];

  v18 = v0[1];
  v19 = v0[7];

  return v18(v19);
}

uint64_t sub_1D199EDB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D1E6616C();
    if (v10)
    {
      v11 = sub_1D1E6619C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D1E6618C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D1E6616C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D1E6619C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D1E6618C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D199EFE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D199F28C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D174E7C4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1D199EDB4(v14, a3, a4, &v13);
  v10 = v4;
  sub_1D174E7C4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1D199F174(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      sub_1D1771B38(a1, a2);
      sub_1D1771B38(a3, a4);
      sub_1D1716AA4(a1, a2);
      return 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 == 15)
  {
LABEL_5:
    sub_1D1771B38(a1, a2);
    sub_1D1771B38(a3, a4);
    sub_1D1716AA4(a1, a2);
    sub_1D1716AA4(a3, a4);
    return 0;
  }

  sub_1D1771B38(a1, a2);
  sub_1D1771B38(a3, a4);
  v9 = sub_1D199F344(a1, a2, a3, a4);
  sub_1D1716AA4(a3, a4);
  sub_1D1716AA4(a1, a2);
  return v9 & 1;
}

uint64_t sub_1D199F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D1E6616C();
  v11 = result;
  if (result)
  {
    result = sub_1D1E6619C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D1E6618C();
  sub_1D199EDB4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D199F344(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1D1741854(a3, a4);
          return sub_1D199EFE4(v13, a2, a3, a4) & 1;
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

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for StaticThermostatClusterGroup();
  if (*(a1 + v5[5]) != *(a2 + v5[5]))
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + v5[6]) != *(a2 + v5[6]))
  {
    return 0;
  }

  if ((_s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV2eeoiySbAE_AEtFZ_0((a1 + v5[7]), (a2 + v5[7])) & 1) == 0)
  {
    return 0;
  }

  if (!_s13HomeDataModel28StaticThermostatClusterGroupV14SetpointConfigV2eeoiySbAE_AEtFZ_0(a1 + v6[8], a2 + v6[8]))
  {
    return 0;
  }

  v7 = (a1 + v6[9]);
  v8 = v7[3];
  v32 = v7[2];
  v33[0] = v8;
  *(v33 + 9) = *(v7 + 57);
  v9 = v7[1];
  v30 = *v7;
  v31 = v9;
  v10 = (a2 + v6[9]);
  v11 = v10[3];
  v28 = v10[2];
  v29[0] = v11;
  *(v29 + 9) = *(v10 + 57);
  v12 = v10[1];
  v26 = *v10;
  v27 = v12;
  if ((sub_1D19AEFCC(&v30, &v26) & 1) == 0)
  {
    return 0;
  }

  v13 = (a1 + v6[10]);
  v14 = v13[3];
  v32 = v13[2];
  v33[0] = v14;
  *(v33 + 9) = *(v13 + 57);
  v15 = v13[1];
  v30 = *v13;
  v31 = v15;
  v16 = (a2 + v6[10]);
  v17 = v16[3];
  v28 = v16[2];
  v29[0] = v17;
  *(v29 + 9) = *(v16 + 57);
  v18 = v16[1];
  v26 = *v16;
  v27 = v18;
  if ((sub_1D19AEFCC(&v30, &v26) & 1) == 0)
  {
    return 0;
  }

  v19 = v6[11];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 1);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 1);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v25 = v6[12];

  return _s13HomeDataModel28StaticThermostatClusterGroupV8AlvaradoV2eeoiySbAE_AEtFZ_0((a1 + v25), (a2 + v25));
}

uint64_t sub_1D199F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D199E040(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D199E4D0(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

unint64_t sub_1D199F910()
{
  result = qword_1EC647F40;
  if (!qword_1EC647F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F40);
  }

  return result;
}

unint64_t sub_1D199F964()
{
  result = qword_1EC647F58;
  if (!qword_1EC647F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F58);
  }

  return result;
}

unint64_t sub_1D199F9B8()
{
  result = qword_1EC647F60;
  if (!qword_1EC647F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F60);
  }

  return result;
}

uint64_t sub_1D199FA0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D199FA6C()
{
  result = qword_1EC647F88;
  if (!qword_1EC647F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F88);
  }

  return result;
}

unint64_t sub_1D199FAC0()
{
  result = qword_1EC647F90;
  if (!qword_1EC647F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F90);
  }

  return result;
}

uint64_t sub_1D199FB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D199FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D198BA60(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199FCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1990870(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199FE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1990A5C(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1D17C4BFC;

  return sub_1D1994A3C(a1, a2, a3, a4, v12, v13, v4 + v11);
}

uint64_t sub_1D19A00AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC1030 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365725073657375 && a2 == 0xEB00000000737465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4373746573657270 && a2 == 0xED00006769666E6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E696F70746573 && a2 == 0xEE006769666E6F43 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1050 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1070 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1090 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F64617261766C61 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D19A03AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v5;
  v11 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v15 = (v4 + ((*(v11 + 64) + v12 + 1) & 0xFFFFFFFFFFFFFFFELL));
  v16 = *v15 | (*(v15 + 1) << 16) | (v15[4] << 32);
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1D17C4CF0;

  return sub_1D1990C48(a1, a2, a3, a4, v13, v14, v4 + v12, v16);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup();
  v2 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + ((v2 + 32) & ~v2);
  v5 = sub_1D1E66A7C();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = (v4 + v1[7]);
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = *(v6 + 3);

  v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v11 = &v6[v10[9]];
  v12 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11[1];
    if (v13 >> 60 != 15)
    {
      sub_1D174E7C4(*v11, v13);
    }

    v14 = *(v12 + 20);
    v15 = sub_1D1E669FC();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }
  }

  v17 = &v6[v10[11]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1D174E7C4(*v17, v18);
  }

  v19 = &v6[v10[12]];
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_1D174E7C4(*v19, v20);
  }

  v21 = v10[13];
  v22 = sub_1D1E669FC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (!v24(&v6[v21], 1, v22))
  {
    (*(v23 + 8))(&v6[v21], v22);
  }

  v25 = v1[8];
  v26 = v25 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v24((v4 + v26), 1, v22))
  {
    (*(v23 + 8))(v4 + v26, v22);
  }

  v27 = v4 + v1[12];
  v28 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v29 = *(v28 + 32);
  if (!v24((v27 + v29), 1, v22))
  {
    (*(v23 + 8))(v27 + v29, v22);
  }

  v30 = *(v28 + 36);
  if (!v24((v27 + v30), 1, v22))
  {
    (*(v23 + 8))(v27 + v30, v22);
  }

  v31 = (v34 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v0 + v31);

  return MEMORY[0x1EEE6BDD0](v0, v31 + 8, v2 | 7);
}

uint64_t sub_1D19A08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1990688(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup();
  v2 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + ((v2 + 32) & ~v2);
  v5 = sub_1D1E66A7C();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = (v4 + v1[7]);
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = *(v6 + 3);

  v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v11 = &v6[v10[9]];
  v12 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11[1];
    if (v13 >> 60 != 15)
    {
      sub_1D174E7C4(*v11, v13);
    }

    v14 = *(v12 + 20);
    v15 = sub_1D1E669FC();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }
  }

  v17 = &v6[v10[11]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1D174E7C4(*v17, v18);
  }

  v19 = &v6[v10[12]];
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_1D174E7C4(*v19, v20);
  }

  v21 = v10[13];
  v22 = sub_1D1E669FC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (!v24(&v6[v21], 1, v22))
  {
    (*(v23 + 8))(&v6[v21], v22);
  }

  v25 = v1[8];
  v26 = v25 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v24((v4 + v26), 1, v22))
  {
    (*(v23 + 8))(v4 + v26, v22);
  }

  v27 = v4 + v1[12];
  v28 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v29 = *(v28 + 32);
  if (!v24((v27 + v29), 1, v22))
  {
    (*(v23 + 8))(v27 + v29, v22);
  }

  v30 = *(v28 + 36);
  if (!v24((v27 + v30), 1, v22))
  {
    (*(v23 + 8))(v27 + v30, v22);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v32, v2 | 7);
}

uint64_t sub_1D19A0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1D17C4CF0;

  return sub_1D1995A80(a1, a2, a3, a4, v12, v13, v4 + v11);
}

uint64_t sub_1D19A0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D199A300(a1, a2, a3, a4, v12, v4 + v11);
}

uint64_t sub_1D19A1024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D199AC2C(a1, a2, a3, a4, v12, v4 + v11);
}

unint64_t sub_1D19A1130()
{
  result = qword_1EC647FC8;
  if (!qword_1EC647FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643838, &qword_1D1E8C020);
    sub_1D19A11B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FC8);
  }

  return result;
}

unint64_t sub_1D19A11B4()
{
  result = qword_1EC647FD0;
  if (!qword_1EC647FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FD0);
  }

  return result;
}

uint64_t sub_1D19A1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D199D24C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19A12D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D199DED4(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19A13E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D19A142C()
{
  result = qword_1EC647FE0;
  if (!qword_1EC647FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FE0);
  }

  return result;
}

void sub_1D19A14A8()
{
  type metadata accessor for EndpointPath(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(319);
      if (v2 <= 0x3F)
      {
        sub_1D19A159C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for StaticThermostatClusterGroup.Alvarado();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D19A159C()
{
  if (!qword_1EE07B608)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B608);
    }
  }
}

unint64_t sub_1D19A1620()
{
  result = qword_1EC647FE8;
  if (!qword_1EC647FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FE8);
  }

  return result;
}

unint64_t sub_1D19A1678()
{
  result = qword_1EC647FF0;
  if (!qword_1EC647FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FF0);
  }

  return result;
}

unint64_t sub_1D19A16D0()
{
  result = qword_1EC647FF8;
  if (!qword_1EC647FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FF8);
  }

  return result;
}

unint64_t sub_1D19A1724()
{
  result = qword_1EC648000;
  if (!qword_1EC648000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648000);
  }

  return result;
}

uint64_t sub_1D19A1778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19A180C()
{
  result = qword_1EC648010;
  if (!qword_1EC648010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648010);
  }

  return result;
}

uint64_t sub_1D19A1860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1998F44(a1, a2, a3, a4, v12, v4 + v11);
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup();
  v2 = *(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = (v3 + v1[7]);
  v6 = *(v5 + 1);

  v7 = *(v5 + 2);

  v8 = *(v5 + 3);

  v9 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v10 = &v5[v9[9]];
  v11 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = v10[1];
    if (v12 >> 60 != 15)
    {
      sub_1D174E7C4(*v10, v12);
    }

    v13 = *(v11 + 20);
    v14 = sub_1D1E669FC();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  v16 = &v5[v9[11]];
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_1D174E7C4(*v16, v17);
  }

  v18 = &v5[v9[12]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_1D174E7C4(*v18, v19);
  }

  v20 = v9[13];
  v21 = sub_1D1E669FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (!v23(&v5[v20], 1, v21))
  {
    (*(v22 + 8))(&v5[v20], v21);
  }

  v24 = v1[8];
  v25 = v24 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v23((v3 + v25), 1, v21))
  {
    (*(v22 + 8))(v3 + v25, v21);
  }

  v26 = v3 + v1[12];
  v27 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v28 = *(v27 + 32);
  if (!v23((v26 + v28), 1, v21))
  {
    (*(v22 + 8))(v26 + v28, v21);
  }

  v29 = *(v27 + 36);
  if (!v23((v26 + v29), 1, v21))
  {
    (*(v22 + 8))(v26 + v29, v21);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v31, v2 | 7);
}

uint64_t sub_1D19A1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19997EC(a1, a2, a3, a4, v12, v4 + v11);
}

uint64_t sub_1D19A1EA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 18);
  *a2 = sub_1D19B0FFC() & 1;
  a2[1] = sub_1D19B1004() & 1;
  a2[2] = sub_1D19B10FC() & 1;
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  sub_1D19B1104(&v19);
  a2[3] = v19;
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  v7 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  sub_1D19B110C(&a2[v7[8]]);
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  sub_1D19B1114(&a2[v7[9]]);
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  a2[v7[10]] = sub_1D19B1274() & 1;
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  v8 = sub_1D19B127C();
  v9 = &a2[v7[12]];
  *v9 = v8;
  v9[8] = v10 & 1;
  v11 = sub_1D19C551C(v5 | (v6 << 16), v4, v3);
  v12 = *(v11 + 16);
  v13 = 32;
  do
  {
    v14 = v12;
    if (v12-- == 0)
    {
      break;
    }

    v16 = *(v11 + v13);
    v13 += 4;
  }

  while (v16);
  v17 = v14 != 0;

  a2[v7[11]] = v17;
  return result;
}

uint64_t StaticThermostatClusterGroup.Alvarado.endOfCurrentReducePeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup.Alvarado() + 32);

  return sub_1D174A548(v3, a1);
}

uint64_t StaticThermostatClusterGroup.Alvarado.pauseFollowingGuidanceEndTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup.Alvarado() + 36);

  return sub_1D174A548(v3, a1);
}

uint64_t StaticThermostatClusterGroup.Alvarado.setpointReduceOffset.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticThermostatClusterGroup.Alvarado() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

unint64_t sub_1D19A216C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F64617261766C61;
    v6 = 0xD00000000000001ALL;
    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000022;
    if (a1 == 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D19A22B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19A3AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19A22D8(uint64_t a1)
{
  v2 = sub_1D19A3670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A2314(uint64_t a1)
{
  v2 = sub_1D19A3670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.Alvarado.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648020, &qword_1D1E8A5D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19A3670();
  sub_1D1E6930C();
  v11 = *v3;
  v23[31] = 0;
  sub_1D1E68EDC();
  if (!v2)
  {
    v12 = v3[1];
    v23[30] = 1;
    sub_1D1E68EDC();
    v13 = v3[2];
    v23[29] = 2;
    sub_1D1E68EDC();
    v23[28] = v3[3];
    v23[27] = 3;
    sub_1D19A36C4();
    sub_1D1E68E5C();
    v14 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
    v15 = v14[8];
    v23[26] = 4;
    sub_1D1E669FC();
    sub_1D19A3DDC(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v16 = v14[9];
    v23[25] = 5;
    sub_1D1E68E5C();
    v17 = v3[v14[10]];
    v23[24] = 6;
    sub_1D1E68EDC();
    v18 = v3[v14[11]];
    v23[15] = 7;
    sub_1D1E68EDC();
    v19 = &v3[v14[12]];
    v20 = *v19;
    v21 = v19[8];
    v23[14] = 8;
    sub_1D1E68E7C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticThermostatClusterGroup.Alvarado.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = *v0;
  sub_1D1E6922C();
  v13 = v0[1];
  sub_1D1E6922C();
  v14 = v0[2];
  sub_1D1E6922C();
  if (v0[3] != 3)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v15 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  sub_1D174A548(&v0[v15[8]], v11);
  v16 = *(v2 + 48);
  if (v16(v11, 1, v1) == 1)
  {
    v17 = v2;
    sub_1D1E6922C();
  }

  else
  {
    v18 = *(v2 + 32);
    v27 = v9;
    v19 = v28;
    v18(v28, v11, v1);
    sub_1D1E6922C();
    sub_1D19A3DDC(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    v17 = v2;
    v20 = v19;
    v9 = v27;
    (*(v2 + 8))(v20, v1);
  }

  sub_1D174A548(&v0[v15[9]], v9);
  if (v16(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v21 = v28;
    (*(v17 + 32))(v28, v9, v1);
    sub_1D1E6922C();
    sub_1D19A3DDC(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v17 + 8))(v21, v1);
  }

  v22 = v0[v15[10]];
  sub_1D1E6922C();
  v23 = v0[v15[11]];
  sub_1D1E6922C();
  v24 = &v0[v15[12]];
  if (v24[8] == 1)
  {
    return sub_1D1E6922C();
  }

  v26 = *v24;
  sub_1D1E6922C();
  return MEMORY[0x1D3892890](v26);
}

uint64_t StaticThermostatClusterGroup.Alvarado.hashValue.getter()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.Alvarado.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.Alvarado.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648038, &qword_1D1E8A5D8);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D19A3670();
  v20 = v32;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v21 = v9;
  v22 = v30;
  v43 = 0;
  *v17 = sub_1D1E68D3C() & 1;
  v42 = 1;
  v17[1] = sub_1D1E68D3C() & 1;
  v41 = 2;
  v17[2] = sub_1D1E68D3C() & 1;
  v39 = 3;
  sub_1D19A3718();
  sub_1D1E68CBC();
  v17[3] = v40;
  sub_1D1E669FC();
  v38 = 4;
  sub_1D19A3DDC(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  v23 = v14;
  sub_1D19A376C(v21, &v17[v14[8]]);
  v37 = 5;
  sub_1D1E68CBC();
  sub_1D19A376C(v7, &v17[v14[9]]);
  v36 = 6;
  v17[v14[10]] = sub_1D1E68D3C() & 1;
  v35 = 7;
  v17[MEMORY[0x2C]] = sub_1D1E68D3C() & 1;
  v34 = 8;
  v24 = sub_1D1E68CDC();
  v26 = v25;
  (*(v22 + 8))(v13, v31);
  v27 = &v17[v23[12]];
  *v27 = v24;
  v27[8] = v26 & 1;
  sub_1D19A37DC(v17, v29);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1D19A3840(v17);
}

uint64_t sub_1D19A2FA0()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.Alvarado.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19A2FE4()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.Alvarado.hash(into:)();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV8AlvaradoV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v48 - v22;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v24 = a1[3];
  v25 = a2[3];
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = v21;
  v27 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v53 = v5;
  v50 = v27;
  v51 = v26;
  v28 = *(v27 + 32);
  v29 = *(v26 + 48);
  sub_1D174A548(&a1[v28], v23);
  v52 = v29;
  sub_1D174A548(&a2[v28], &v23[v29]);
  v30 = v53 + 48;
  v31 = *(v53 + 48);
  if (v31(v23, 1, v4) == 1)
  {
    v49 = v31;
    if (v31(&v23[v52], 1, v4) == 1)
    {
      sub_1D1741A30(v23, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_15;
    }

LABEL_13:
    v32 = v23;
LABEL_21:
    sub_1D1741A30(v32, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D174A548(v23, v15);
  v48 = v30;
  if (v31(&v23[v52], 1, v4) == 1)
  {
    (*(v53 + 8))(v15, v4);
    goto LABEL_13;
  }

  v49 = v31;
  v33 = v53;
  (*(v53 + 32))(v8, &v23[v52], v4);
  sub_1D19A3DDC(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  LODWORD(v52) = sub_1D1E6775C();
  v34 = *(v33 + 8);
  v34(v8, v4);
  v34(v15, v4);
  sub_1D1741A30(v23, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v35 = v50;
  v36 = v50[9];
  v37 = *(v51 + 48);
  sub_1D174A548(&a1[v36], v20);
  sub_1D174A548(&a2[v36], &v20[v37]);
  v38 = v49;
  if (v49(v20, 1, v4) == 1)
  {
    if (v38(&v20[v37], 1, v4) == 1)
    {
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  sub_1D174A548(v20, v13);
  if (v38(&v20[v37], 1, v4) == 1)
  {
    (*(v53 + 8))(v13, v4);
LABEL_20:
    v32 = v20;
    goto LABEL_21;
  }

  v40 = v53;
  (*(v53 + 32))(v8, &v20[v37], v4);
  sub_1D19A3DDC(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v41 = sub_1D1E6775C();
  v42 = *(v40 + 8);
  v42(v8, v4);
  v42(v13, v4);
  sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  if (a1[v35[10]] != a2[v35[10]] || a1[v35[11]] != a2[v35[11]])
  {
    return 0;
  }

  v43 = v35[12];
  v44 = &a1[v43];
  v45 = a1[v43 + 8];
  v46 = &a2[v43];
  v47 = a2[v43 + 8];
  if (v45)
  {
    return (v47 & 1) != 0;
  }

  if (*v44 != *v46)
  {
    v47 = 1;
  }

  return (v47 & 1) == 0;
}

uint64_t type metadata accessor for StaticThermostatClusterGroup.Alvarado()
{
  result = qword_1EE07BA18;
  if (!qword_1EE07BA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D19A3670()
{
  result = qword_1EC648028;
  if (!qword_1EC648028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648028);
  }

  return result;
}

unint64_t sub_1D19A36C4()
{
  result = qword_1EC648030;
  if (!qword_1EC648030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648030);
  }

  return result;
}

unint64_t sub_1D19A3718()
{
  result = qword_1EC648040;
  if (!qword_1EC648040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648040);
  }

  return result;
}

uint64_t sub_1D19A376C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19A37DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19A3840(uint64_t a1)
{
  v2 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D19A390C()
{
  sub_1D17BDF80(319, qword_1EE07BA40);
  if (v0 <= 0x3F)
  {
    sub_1D17B77BC();
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07B610);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D19A39F8()
{
  result = qword_1EC648050;
  if (!qword_1EC648050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648050);
  }

  return result;
}

unint64_t sub_1D19A3A50()
{
  result = qword_1EC648058;
  if (!qword_1EC648058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648058);
  }

  return result;
}

unint64_t sub_1D19A3AA8()
{
  result = qword_1EC648060;
  if (!qword_1EC648060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648060);
  }

  return result;
}

uint64_t sub_1D19A3AFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F64617261766C61 && a2 == 0xEF64656C62616E45;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1180 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC11A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC11C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC11E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D1EC1200 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC1230 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC1250 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC1270 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D19A3DDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D19A3E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v7 = type metadata accessor for ClusterPath(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = a2[1];
  v41 = *a2;
  v42 = v14;
  v15 = *(a3 + 8);
  v17 = *(a3 + 16);
  v18 = *(a3 + 18);
  v46 = *a3;
  v16 = v46;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *a4 = sub_1D19B1838();
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + 16) = sub_1D19B1844();
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + 8) = sub_1D19B1A48();
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + 24) = sub_1D19B1C58();
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + 32) = sub_1D19B1D58();
  *(a4 + 40) = v19 & 1;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  v20 = sub_1D19B1D68();
  v22 = v21;
  v23 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v24 = (a4 + v23[11]);
  *v24 = v20;
  v24[1] = v22;
  v25 = sub_1D19C551C(v17 | (v18 << 16), v16, v15);
  v26 = *(v25 + 16);
  v27 = 32;
  while (v26)
  {
    v28 = *(v25 + v27);
    v27 += 4;
    --v26;
    if (v28 == 323551241)
    {

      *(a4 + v23[21]) = 1;
      v46 = v16;
      v47 = v15;
      v48 = v17;
      v49 = v18;
      v29 = sub_1D19B2748();
      v30 = (a4 + v23[12]);
      *v30 = v29;
      v30[1] = v31;
      goto LABEL_6;
    }
  }

  *(a4 + v23[21]) = 0;
  *(a4 + v23[12]) = xmmword_1D1E73C50;
LABEL_6:
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  sub_1D19B313C(a4 + v23[13]);
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  sub_1D19B3278(a4 + v23[9]);
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  v32 = sub_1D19B33D0();
  v33 = (a4 + v23[10]);
  *v33 = v32;
  v33[1] = HIBYTE(v32) & 1;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  sub_1D19B34CC(&v44);
  *(a4 + v23[14]) = v44;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + v23[15]) = sub_1D19B35DC() & 1;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + v23[16]) = sub_1D19B35E8() & 1;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  *(a4 + v23[17]) = sub_1D19B35F4() & 1;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  sub_1D19B3600(&v44);
  *(a4 + v23[19]) = v44;
  v46 = v16;
  v47 = v15;
  v48 = v17;
  v49 = v18;
  sub_1D19B36F8(&v44);

  v34 = v44;
  v35 = a4 + v23[18];
  *(v35 + 4) = v45;
  *v35 = v34;
  v36 = v43;
  sub_1D19AD3D8(v43, v13, type metadata accessor for ClusterPath);
  sub_1D19AD3D8(v13, v11, type metadata accessor for ClusterPath);
  v37 = sub_1D192B170(65532, v11, v41, v42);

  sub_1D19ACFA0(v11, type metadata accessor for ClusterPath);
  sub_1D19ACFA0(v13, type metadata accessor for ClusterPath);
  if ((v37 & 0x100000000) != 0)
  {
    LOBYTE(v38) = 0;
  }

  else if ((v37 & 1) == 0 || (v37 & 0x22) == 0x22)
  {
    v38 = ((~v37 & 0x21) != 0) & (v37 >> 1);
  }

  else
  {
    LOBYTE(v38) = 2;
  }

  result = sub_1D19ACFA0(v36, type metadata accessor for ClusterPath);
  *(a4 + v23[20]) = v38;
  return result;
}

uint64_t sub_1D19A4218@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  v7 = sub_1D19B13C4();
  v21 = v8 & 1;
  v9 = sub_1D19B13D4();
  v20 = v10 & 1;
  v11 = sub_1D19B13E4();
  v19 = v12 & 1;
  v13 = sub_1D19B13F4();
  v18 = v14 & 1;
  v15 = sub_1D19B1404();
  LOBYTE(v4) = v16;

  *a2 = v15;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v7;
  *(a2 + 24) = v21;
  *(a2 + 32) = v9;
  *(a2 + 40) = v20;
  *(a2 + 48) = v11;
  *(a2 + 56) = v19;
  *(a2 + 64) = v13;
  *(a2 + 72) = v18;
  return result;
}

uint64_t sub_1D19A4350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  v7 = sub_1D19B1284();
  v21 = v8 & 1;
  v9 = sub_1D19B1294();
  v20 = v10 & 1;
  v11 = sub_1D19B1394();
  v19 = v12 & 1;
  v13 = sub_1D19B13A4();
  v18 = v14 & 1;
  v15 = sub_1D19B13B4();
  LOBYTE(v4) = v16;

  *a2 = v15;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v7;
  *(a2 + 24) = v21;
  *(a2 + 32) = v9;
  *(a2 + 40) = v20;
  *(a2 + 48) = v11;
  *(a2 + 56) = v19;
  *(a2 + 64) = v13;
  *(a2 + 72) = v18;
  return result;
}

uint64_t StaticThermostatClusterGroup.ThermostatSetpointType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticThermostatClusterGroup.OperationSequence.label(for:)(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1D1E66ADC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*v1)
  {
    if (*v1 == 1)
    {
      static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EC12B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D1E739C0;
      sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v10 = sub_1D1E6838C();
      v11 = objc_opt_self();
      v12 = [v11 fahrenheit];
      v13 = sub_1D1E684FC();

      if (v13)
      {
        v14 = 0.555555556;
      }

      else
      {
        v30 = [v11 celsius];
        sub_1D1E684FC();

        v14 = 0.5;
        v10 = v30;
      }

      v53 = 0;
      v31 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v53, v14 * round(v7 / 100.0 / v14));
      v33 = v32;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D1757D20();
      *(v9 + 32) = v31;
      *(v9 + 40) = v33;
    }

    else
    {
      static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EC1290);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D1E739C0;
      v24 = v8 / 100.0;
      sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v25 = sub_1D1E6838C();
      v26 = objc_opt_self();
      v27 = [v26 fahrenheit];
      v28 = sub_1D1E684FC();

      if (v28)
      {
        v29 = 0.555555556;
      }

      else
      {
        v44 = [v26 celsius];
        sub_1D1E684FC();

        v29 = 0.5;
        v25 = v44;
      }

      v54 = 0;
      v45 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v54, v29 * round(v24 / v29));
      v47 = v46;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1D1757D20();
      *(v23 + 32) = v45;
      *(v23 + 40) = v47;
    }
  }

  else
  {
    v50 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC12D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D1E73A90;
    v16 = v8 / 100.0;
    sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v17 = sub_1D1E6838C();
    v18 = objc_opt_self();
    v19 = [v18 fahrenheit];
    v20 = sub_1D1E684FC();

    v21 = 0.555555556;
    if (v20)
    {
      v22 = 0.555555556;
    }

    else
    {
      v34 = [v18 celsius];
      sub_1D1E684FC();

      v22 = 0.5;
      v17 = v34;
    }

    v52 = 0;
    v35 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v52, v22 * round(v16 / v22));
    v37 = v36;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v38 = sub_1D1757D20();
    *(v15 + 64) = v38;
    *(v15 + 32) = v35;
    *(v15 + 40) = v37;
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v39 = sub_1D1E6838C();
    v40 = [v18 fahrenheit];
    LOBYTE(v35) = sub_1D1E684FC();

    if ((v35 & 1) == 0)
    {
      v41 = [v18 celsius];
      sub_1D1E684FC();

      v21 = 0.5;
      v39 = v41;
    }

    v51 = 0;
    v42 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v51, v21 * round(v7 / 100.0 / v21));
    *(v15 + 96) = MEMORY[0x1E69E6158];
    *(v15 + 104) = v38;
    *(v15 + 72) = v42;
    *(v15 + 80) = v43;
  }

  v48 = sub_1D1E6783C();

  return v48;
}

unint64_t StaticThermostatClusterGroup.OperationSequence.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D19A4BA4()
{
  v1 = 0x53676E6974616568;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1D19A4C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19AE470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19A4C78(uint64_t a1)
{
  v2 = sub_1D19AC96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A4CB4(uint64_t a1)
{
  v2 = sub_1D19AC96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.CoolingSetpointConfig.coolingSetpoint.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t StaticThermostatClusterGroup.CoolingSetpointConfig.minCoolingSetpointLimit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t StaticThermostatClusterGroup.CoolingSetpointConfig.maxCoolingSetpointLimit.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t StaticThermostatClusterGroup.CoolingSetpointConfig.absMinCoolingSetpointLimit.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t StaticThermostatClusterGroup.CoolingSetpointConfig.absMaxCoolingSetpointLimit.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

BOOL sub_1D19A4DE8(_BOOL8 result, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  if ((*(v2 + 40) & 1) == 0 && (*(v2 + 24) & 1) == 0)
  {
    v3 = *(v2 + 16);
    v5 = *(v2 + 32);
    if (v5 >= v3)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if ((v6 | v4))
  {
    return 0;
  }

  if (v5 < v3)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  v7 = v5 >= result;
  return v3 <= result && v7;
}

unint64_t sub_1D19A4E58()
{
  v1 = 0x53676E696C6F6F63;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1D19A4F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19AE634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19A4F2C(uint64_t a1)
{
  v2 = sub_1D19AC9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A4F68(uint64_t a1)
{
  v2 = sub_1D19AC9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19A4FE8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = *v4;
  v12 = *(v4 + 8);
  v23 = v4[2];
  v24 = v11;
  v22 = *(v4 + 24);
  v21 = v4[4];
  v20 = *(v4 + 40);
  v19 = v4[6];
  v18 = *(v4 + 56);
  v17 = v4[8];
  v16[3] = *(v4 + 72);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25();
  sub_1D1E6930C();
  v31 = 0;
  v14 = v26;
  sub_1D1E68EBC();
  if (v14)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v30 = 1;
  sub_1D1E68EBC();
  v29 = 2;
  sub_1D1E68EBC();
  v28 = 3;
  sub_1D1E68EBC();
  v27 = 4;
  sub_1D1E68EBC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D19A5228()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  v7 = v0[8];
  v8 = *(v0 + 72);
  if (*(v0 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v0;
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v10);
    if (!v2)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v1);
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v4)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v3);
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v8)
    {
      goto LABEL_6;
    }

    return sub_1D1E6922C();
  }

LABEL_9:
  sub_1D1E6922C();
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v5);
  if (!v8)
  {
LABEL_6:
    sub_1D1E6922C();
    return MEMORY[0x1D3892890](v7);
  }

  return sub_1D1E6922C();
}

uint64_t sub_1D19A533C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  v11 = v0[8];
  v9 = *(v0 + 72);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v1);
    if (!v4)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v3);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v6)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v5);
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

LABEL_9:
  sub_1D1E6922C();
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v7);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v11);
  return sub_1D1E6926C();
}

uint64_t sub_1D19A54E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v32 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D1E692FC();
  if (!v5)
  {
    v13 = v8;
    v47 = 0;
    v15 = v36;
    v14 = v37;
    v16 = sub_1D1E68D1C();
    v42 = v17 & 1;
    v46 = 1;
    v18 = sub_1D1E68D1C();
    v41 = v19 & 1;
    v45 = 2;
    v35 = sub_1D1E68D1C();
    v40 = v20 & 1;
    v44 = 3;
    v34 = sub_1D1E68D1C();
    v39 = v22 & 1;
    v43 = 4;
    v23 = sub_1D1E68D1C();
    v25 = v24;
    v26 = *(v13 + 8);
    v33 = v23;
    v26(v11, v14);
    v38 = v25 & 1;
    v27 = v42;
    v28 = v41;
    v29 = v40;
    v30 = v39;
    *v15 = v16;
    *(v15 + 8) = v27;
    *(v15 + 16) = v18;
    *(v15 + 24) = v28;
    v31 = v34;
    *(v15 + 32) = v35;
    *(v15 + 40) = v29;
    *(v15 + 48) = v31;
    *(v15 + 56) = v30;
    *(v15 + 64) = v33;
    *(v15 + 72) = v25 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19A5774()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  v11 = v0[8];
  v9 = *(v0 + 72);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v1);
    if (!v4)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v3);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v6)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v5);
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

LABEL_9:
  sub_1D1E6922C();
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v7);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v11);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.setpointOffset.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.setpointDeadband.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

double StaticThermostatClusterGroup.SetpointConfig.setpointDeadbandCelsius.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    return *v1 / 10.0;
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.setpointOffsetTemperature.getter()
{
  if (*(v0 + 8))
  {
    *&result = 0.0;
  }

  else
  {
    v2 = *v0;
    if ((*v0 & 0x8000000000000000) != 0 && (v3 = __OFSUB__(0, v2), v2 = -v2, v3))
    {
      __break(1u);
    }

    else
    {
      *&result = v2 / 100.0;
    }
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.setpointHoldDurationHrs.getter()
{
  if (*(v0 + 12))
  {
    return 0;
  }

  else
  {
    return *(v0 + 10) / 0x3Cu;
  }
}

uint64_t sub_1D19A5AC4()
{
  v1 = *v0;
  v2 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x746E696F70746573;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D19A5B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19AE7F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19A5B98(uint64_t a1)
{
  v2 = sub_1D19ACA34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A5BD4(uint64_t a1)
{
  v2 = sub_1D19ACA34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648098, &qword_1D1E8A828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19ACA34();
  sub_1D1E6930C();
  v11 = *v3;
  v12 = *(v3 + 8);
  v21[15] = 0;
  sub_1D1E68E7C();
  if (!v2)
  {
    v21[14] = *(v3 + 9);
    v21[13] = 1;
    sub_1D197E594();
    sub_1D1E68E5C();
    v13 = *(v3 + 5);
    v14 = *(v3 + 12);
    v21[12] = 2;
    sub_1D1E68E9C();
    v15 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
    v16 = *(v15 + 28);
    v21[9] = 3;
    sub_1D1E669FC();
    sub_1D19ACA88(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v17 = (v3 + *(v15 + 32));
    v18 = *v17;
    v19 = *(v17 + 8);
    v21[8] = 4;
    sub_1D1E68E7C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  if (*(v0 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v10 = *v0;
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v10);
  }

  if (*(v0 + 9) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v0 + 12) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v11 = *(v0 + 5);
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v12 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  sub_1D1741C08(v0 + *(v12 + 28), v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  v13 = (v0 + *(v12 + 32));
  if (*(v13 + 8) == 1)
  {
    return sub_1D1E6922C();
  }

  v15 = *v13;
  sub_1D1E6922C();
  return MEMORY[0x1D3892890](v15);
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25[-v6];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480A8, &qword_1D1E8A830);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v25[-v10];
  v12 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D19ACA34();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v35 = 0;
  *v15 = sub_1D1E68CDC();
  v15[8] = v18 & 1;
  v33 = 1;
  sub_1D197E5E8();
  sub_1D1E68CBC();
  v15[9] = v34;
  v32 = 2;
  v19 = sub_1D1E68CFC();
  *(v15 + 5) = v19;
  v15[12] = BYTE2(v19) & 1;
  sub_1D1E669FC();
  v31 = 3;
  sub_1D19ACA88(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D1741A90(v7, &v15[*(v12 + 28)], &qword_1EC642570, &qword_1D1E6C6A0);
  v30 = 4;
  v20 = sub_1D1E68CDC();
  v26 = v21;
  v22 = v20;
  (*(v8 + 8))(v11, v28);
  v23 = &v15[*(v12 + 32)];
  *v23 = v22;
  v23[8] = v26 & 1;
  sub_1D19AD3D8(v15, v27, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D19ACFA0(v15, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.numberOfPresets.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.activePresetHandle.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 44);
  v2 = *v1;
  sub_1D1771B38(*v1, *(v1 + 8));
  return v2;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.currentSuggestedPresetHandle.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 48);
  v2 = *v1;
  sub_1D1771B38(*v1, *(v1 + 8));
  return v2;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.suggestedPresetFollowingReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.holdPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  *(a1 + 4) = *(v4 + 4);
  *a1 = v5;
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.presetChangeReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.operationSequence.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.supportsAdaptiveTemperature.setter(char a1)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.activePreset.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v4 = (v1 + *(result + 44));
  v5 = v4[1];
  if (v5 >> 60 == 15 || (v6 = *(v1 + 16)) == 0)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    goto LABEL_74;
  }

  v42 = a1;
  v7 = *v4;
  v8 = *(v6 + 16);
  sub_1D1741854(*v4, v5);
  if (!v8)
  {
LABEL_70:
    result = sub_1D1716AA4(v7, v5);
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    *v42 = 0u;
    *(v42 + 48) = 0;
    *(v42 + 56) = 1;
    goto LABEL_74;
  }

  v9 = 0;
  v10 = (v6 + 32);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 == 0xC000000000000000;
  }

  v12 = !v11;
  v45 = v12;
  v13 = v5 >> 62;
  v14 = __OFSUB__(HIDWORD(v7), v7);
  v43 = v14;
  v44 = v8;
  v41 = v6;
  while (1)
  {
    if (v9 >= *(v6 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
    }

    v16 = v10[2];
    v15 = v10[3];
    v17 = *v10;
    v49 = v10[1];
    v50 = v16;
    v51 = v15;
    v48 = v17;
    v19 = *(&v49 + 1);
    v18 = v16;
    if (v16 >> 60 != 15)
    {
      break;
    }

    sub_1D1771B38(v7, v5);
    sub_1D1771B38(v19, v18);
    sub_1D1716AA4(v19, v18);
    sub_1D1716AA4(v7, v5);
LABEL_15:
    ++v9;
    v10 += 4;
    if (v8 == v9)
    {
      goto LABEL_70;
    }
  }

  v20 = v50 >> 62;
  if (v50 >> 62 == 3)
  {
    if (*(&v49 + 1))
    {
      v21 = 0;
    }

    else
    {
      v21 = v50 == 0xC000000000000000;
    }

    v23 = !v21 || v13 < 3;
    if (((v23 | v45) & 1) == 0)
    {
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D17806DC(&v48, v47);
      sub_1D1716AA4(0, 0xC000000000000000);
      v19 = 0;
      goto LABEL_72;
    }

LABEL_40:
    v24 = 0;
    if (v13 > 1)
    {
      goto LABEL_41;
    }

LABEL_37:
    v28 = BYTE6(v5);
    if (v13)
    {
      v28 = HIDWORD(v7) - v7;
      if (v43)
      {
        goto LABEL_76;
      }
    }

LABEL_43:
    if (v24 == v28)
    {
      if (v24 < 1)
      {
        goto LABEL_71;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          memset(v46, 0, 14);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D17806DC(&v48, v47);
LABEL_66:
          sub_1D199EDB4(v46, v7, v5, v47);
          sub_1D1716AA4(v7, v5);
          sub_1D1716AA4(v19, v18);
          sub_1D1716AA4(v7, v5);
          v37 = v47[0];
          sub_1D1716AA4(v19, v18);
          if (v37)
          {
            goto LABEL_73;
          }

          goto LABEL_67;
        }

        v32 = *(*(&v49 + 1) + 16);
        v31 = *(*(&v49 + 1) + 24);
        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D17806DC(&v48, v47);
        v33 = sub_1D1E6616C();
        if (v33)
        {
          v34 = sub_1D1E6619C();
          if (__OFSUB__(v32, v34))
          {
            goto LABEL_82;
          }

          v33 += v32 - v34;
        }

        if (__OFSUB__(v31, v32))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v20)
        {
          v46[0] = *(&v49 + 1);
          LOWORD(v46[1]) = v16;
          *(&v46[1] + 2) = *(&v50 + 2);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D17806DC(&v48, v47);
          goto LABEL_66;
        }

        if (*(&v49 + 1) >> 32 < SDWORD2(v49))
        {
          goto LABEL_80;
        }

        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D17806DC(&v48, v47);
        v33 = sub_1D1E6616C();
        if (v33)
        {
          v35 = sub_1D1E6619C();
          if (__OFSUB__(v19, v35))
          {
            goto LABEL_83;
          }

          v33 += v19 - v35;
        }
      }

      sub_1D1E6618C();
      sub_1D199EDB4(v33, v7, v5, v47);
      sub_1D1716AA4(v7, v5);
      sub_1D1716AA4(v19, v18);
      sub_1D1716AA4(v7, v5);
      v36 = v47[0];
      sub_1D1716AA4(v19, v18);
      v6 = v41;
      if (v36)
      {
        goto LABEL_73;
      }

LABEL_67:
      v13 = v5 >> 62;
      v8 = v44;
      goto LABEL_68;
    }

LABEL_49:
    sub_1D1771B38(v7, v5);
    sub_1D1771B38(v19, v18);
    sub_1D17806DC(&v48, v47);
    sub_1D1716AA4(v7, v5);
    sub_1D1716AA4(v19, v18);
LABEL_68:
    sub_1D1780738(&v48);
    goto LABEL_15;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_40;
    }

    v26 = *(*(&v49 + 1) + 16);
    v25 = *(*(&v49 + 1) + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_79;
    }

    if (v13 <= 1)
    {
      goto LABEL_37;
    }
  }

  else if (v20)
  {
    LODWORD(v24) = HIDWORD(v49) - DWORD2(v49);
    if (__OFSUB__(HIDWORD(v49), DWORD2(v49)))
    {
      goto LABEL_78;
    }

    v24 = v24;
    if (v13 <= 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v24 = BYTE6(v50);
    if (v13 <= 1)
    {
      goto LABEL_37;
    }
  }

LABEL_41:
  if (v13 == 2)
  {
    v30 = *(v7 + 16);
    v29 = *(v7 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_77;
    }

    goto LABEL_43;
  }

  if (v24)
  {
    goto LABEL_49;
  }

LABEL_71:
  sub_1D1771B38(v7, v5);
  sub_1D1771B38(v19, v18);
  sub_1D17806DC(&v48, v47);
  sub_1D1716AA4(v7, v5);
LABEL_72:
  sub_1D1716AA4(v19, v18);
LABEL_73:
  result = sub_1D1716AA4(v7, v5);
  v38 = v49;
  *v42 = v48;
  *(v42 + 16) = v38;
  v39 = v51;
  *(v42 + 32) = v50;
  *(v42 + 48) = v39;
LABEL_74:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.currentSuggestedPreset.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v4 = (v1 + *(result + 48));
  v5 = v4[1];
  if (v5 >> 60 == 15 || (v6 = *(v1 + 16)) == 0)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    goto LABEL_74;
  }

  v42 = a1;
  v7 = *v4;
  v8 = *(v6 + 16);
  sub_1D1741854(*v4, v5);
  if (!v8)
  {
LABEL_70:
    result = sub_1D1716AA4(v7, v5);
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    *v42 = 0u;
    *(v42 + 48) = 0;
    *(v42 + 56) = 1;
    goto LABEL_74;
  }

  v9 = 0;
  v10 = (v6 + 32);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 == 0xC000000000000000;
  }

  v12 = !v11;
  v45 = v12;
  v13 = v5 >> 62;
  v14 = __OFSUB__(HIDWORD(v7), v7);
  v43 = v14;
  v44 = v8;
  v41 = v6;
  while (1)
  {
    if (v9 >= *(v6 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
    }

    v16 = v10[2];
    v15 = v10[3];
    v17 = *v10;
    v49 = v10[1];
    v50 = v16;
    v51 = v15;
    v48 = v17;
    v19 = *(&v49 + 1);
    v18 = v16;
    if (v16 >> 60 != 15)
    {
      break;
    }

    sub_1D1771B38(v7, v5);
    sub_1D1771B38(v19, v18);
    sub_1D1716AA4(v19, v18);
    sub_1D1716AA4(v7, v5);
LABEL_15:
    ++v9;
    v10 += 4;
    if (v8 == v9)
    {
      goto LABEL_70;
    }
  }

  v20 = v50 >> 62;
  if (v50 >> 62 == 3)
  {
    if (*(&v49 + 1))
    {
      v21 = 0;
    }

    else
    {
      v21 = v50 == 0xC000000000000000;
    }

    v23 = !v21 || v13 < 3;
    if (((v23 | v45) & 1) == 0)
    {
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D17806DC(&v48, v47);
      sub_1D1716AA4(0, 0xC000000000000000);
      v19 = 0;
      goto LABEL_72;
    }

LABEL_40:
    v24 = 0;
    if (v13 > 1)
    {
      goto LABEL_41;
    }

LABEL_37:
    v28 = BYTE6(v5);
    if (v13)
    {
      v28 = HIDWORD(v7) - v7;
      if (v43)
      {
        goto LABEL_76;
      }
    }

LABEL_43:
    if (v24 == v28)
    {
      if (v24 < 1)
      {
        goto LABEL_71;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          memset(v46, 0, 14);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D17806DC(&v48, v47);
LABEL_66:
          sub_1D199EDB4(v46, v7, v5, v47);
          sub_1D1716AA4(v7, v5);
          sub_1D1716AA4(v19, v18);
          sub_1D1716AA4(v7, v5);
          v37 = v47[0];
          sub_1D1716AA4(v19, v18);
          if (v37)
          {
            goto LABEL_73;
          }

          goto LABEL_67;
        }

        v32 = *(*(&v49 + 1) + 16);
        v31 = *(*(&v49 + 1) + 24);
        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D17806DC(&v48, v47);
        v33 = sub_1D1E6616C();
        if (v33)
        {
          v34 = sub_1D1E6619C();
          if (__OFSUB__(v32, v34))
          {
            goto LABEL_82;
          }

          v33 += v32 - v34;
        }

        if (__OFSUB__(v31, v32))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v20)
        {
          v46[0] = *(&v49 + 1);
          LOWORD(v46[1]) = v16;
          *(&v46[1] + 2) = *(&v50 + 2);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D1771B38(v7, v5);
          sub_1D1771B38(v19, v18);
          sub_1D17806DC(&v48, v47);
          goto LABEL_66;
        }

        if (*(&v49 + 1) >> 32 < SDWORD2(v49))
        {
          goto LABEL_80;
        }

        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D1771B38(v7, v5);
        sub_1D1771B38(v19, v18);
        sub_1D17806DC(&v48, v47);
        v33 = sub_1D1E6616C();
        if (v33)
        {
          v35 = sub_1D1E6619C();
          if (__OFSUB__(v19, v35))
          {
            goto LABEL_83;
          }

          v33 += v19 - v35;
        }
      }

      sub_1D1E6618C();
      sub_1D199EDB4(v33, v7, v5, v47);
      sub_1D1716AA4(v7, v5);
      sub_1D1716AA4(v19, v18);
      sub_1D1716AA4(v7, v5);
      v36 = v47[0];
      sub_1D1716AA4(v19, v18);
      v6 = v41;
      if (v36)
      {
        goto LABEL_73;
      }

LABEL_67:
      v13 = v5 >> 62;
      v8 = v44;
      goto LABEL_68;
    }

LABEL_49:
    sub_1D1771B38(v7, v5);
    sub_1D1771B38(v19, v18);
    sub_1D17806DC(&v48, v47);
    sub_1D1716AA4(v7, v5);
    sub_1D1716AA4(v19, v18);
LABEL_68:
    sub_1D1780738(&v48);
    goto LABEL_15;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_40;
    }

    v26 = *(*(&v49 + 1) + 16);
    v25 = *(*(&v49 + 1) + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_79;
    }

    if (v13 <= 1)
    {
      goto LABEL_37;
    }
  }

  else if (v20)
  {
    LODWORD(v24) = HIDWORD(v49) - DWORD2(v49);
    if (__OFSUB__(HIDWORD(v49), DWORD2(v49)))
    {
      goto LABEL_78;
    }

    v24 = v24;
    if (v13 <= 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v24 = BYTE6(v50);
    if (v13 <= 1)
    {
      goto LABEL_37;
    }
  }

LABEL_41:
  if (v13 == 2)
  {
    v30 = *(v7 + 16);
    v29 = *(v7 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_77;
    }

    goto LABEL_43;
  }

  if (v24)
  {
    goto LABEL_49;
  }

LABEL_71:
  sub_1D1771B38(v7, v5);
  sub_1D1771B38(v19, v18);
  sub_1D17806DC(&v48, v47);
  sub_1D1716AA4(v7, v5);
LABEL_72:
  sub_1D1716AA4(v19, v18);
LABEL_73:
  result = sub_1D1716AA4(v7, v5);
  v38 = v49;
  *v42 = v48;
  *(v42 + 16) = v38;
  v39 = v51;
  *(v42 + 32) = v50;
  *(v42 + 48) = v39;
LABEL_74:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D19A76DC(char a1)
{
  result = 0x7954746573657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x50746E6572727563;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x664F7265626D756ELL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      v3 = 13;
      goto LABEL_17;
    case 14:
      result = 0x696C6F50646C6F68;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D19A7938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19AE9B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19A7960(uint64_t a1)
{
  v2 = sub_1D19ACAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A799C(uint64_t a1)
{
  v2 = sub_1D19ACAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B8, &qword_1D1E8A840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19ACAF0();
  sub_1D1E6930C();
  v11 = *v3;
  LOBYTE(v32) = 0;
  sub_1D1E68E1C();
  if (!v2)
  {
    v32 = *(v3 + 1);
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480C8, &qword_1D1E8A848);
    sub_1D19ACB44();
    sub_1D1E68E5C();
    v32 = *(v3 + 2);
    v34 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480E0, &qword_1D1E8A850);
    sub_1D19ACC1C();
    sub_1D1E68E5C();
    v32 = *(v3 + 3);
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480F8, &qword_1D1E8A858);
    sub_1D19ACCF4();
    sub_1D1E68E5C();
    v12 = *(v3 + 4);
    v13 = v3[40];
    LOBYTE(v32) = 4;
    sub_1D1E68EBC();
    v14 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
    v15 = v14[9];
    LOBYTE(v32) = 5;
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    sub_1D19ACA88(&qword_1EC648110, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
    sub_1D1E68E5C();
    v16 = &v3[v14[10]];
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v32) = 6;
    sub_1D1E68E8C();
    v19 = &v3[v14[11]];
    v20 = v19[1];
    v32 = *v19;
    v33 = v20;
    v34 = 7;
    sub_1D1771B38(v32, v20);
    sub_1D18CAD0C();
    sub_1D1E68E5C();
    sub_1D1716AA4(v32, v33);
    v21 = &v3[v14[12]];
    v22 = v21[1];
    v32 = *v21;
    v33 = v22;
    v34 = 8;
    sub_1D1771B38(v32, v22);
    sub_1D1E68E5C();
    sub_1D1716AA4(v32, v33);
    v24 = v14[13];
    LOBYTE(v32) = 9;
    sub_1D1E669FC();
    sub_1D19ACA88(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    LOBYTE(v32) = v3[v14[14]];
    v34 = 10;
    sub_1D19ACDEC();
    sub_1D1E68E5C();
    v25 = v3[v14[15]];
    LOBYTE(v32) = 11;
    sub_1D1E68EDC();
    v26 = v3[v14[16]];
    LOBYTE(v32) = 12;
    sub_1D1E68EDC();
    v27 = v3[v14[17]];
    LOBYTE(v32) = 13;
    sub_1D1E68EDC();
    v28 = &v3[v14[18]];
    v29 = *v28;
    BYTE4(v32) = v28[4];
    LODWORD(v32) = v29;
    v34 = 14;
    sub_1D19ACE40();
    sub_1D1E68E5C();
    LOBYTE(v32) = v3[v14[19]];
    v34 = 15;
    sub_1D19ACE94();
    sub_1D1E68E5C();
    LOBYTE(v32) = v3[v14[20]];
    v34 = 16;
    sub_1D19ACEE8();
    sub_1D1E68F1C();
    v30 = v3[v14[21]];
    LOBYTE(v32) = 17;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E669FC();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v23 = *v2;
  v49 = v11;
  if (v23 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v24 = *(v2 + 1);
  if (v24)
  {
    sub_1D1E6922C();
    sub_1D1770448(a1, v24);
    v25 = *(v2 + 2);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1D1E6922C();
    v26 = *(v2 + 3);
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1D1E6922C();
  v25 = *(v2 + 2);
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D17702F8(a1, v25);
  v26 = *(v2 + 3);
  if (v26)
  {
LABEL_6:
    sub_1D1E6922C();
    sub_1D1770208(a1, v26);
    goto LABEL_10;
  }

LABEL_9:
  sub_1D1E6922C();
LABEL_10:
  if (v2[40] == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v27 = *(v2 + 4);
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v27);
  }

  v28 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  sub_1D1741C08(&v2[v28[9]], v22, &qword_1EC6480B0, &qword_1D1E8A838);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_1D1E6922C();
    v29 = v50;
  }

  else
  {
    sub_1D19ACF3C(v22, v18);
    sub_1D1E6922C();
    if (v18[1] >> 60 == 15)
    {
      sub_1D1E6922C();
    }

    else
    {
      v30 = *v18;
      sub_1D1E6922C();
      sub_1D1E668CC();
    }

    sub_1D1741C08(v18 + *(v14 + 20), v13, &qword_1EC642570, &qword_1D1E6C6A0);
    v29 = v50;
    if ((*(v50 + 48))(v13, 1, v4) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v31 = v48;
      (*(v29 + 32))(v48, v13, v4);
      sub_1D1E6922C();
      sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530]);
      sub_1D1E676EC();
      (*(v29 + 8))(v31, v4);
    }

    sub_1D19ACFA0(v18, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
  }

  v32 = &v2[v28[10]];
  if ((v32[1] & 1) == 0)
  {
    v33 = *v32;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v34 = &v2[v28[11]];
  if (*(v34 + 1) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v35 = *v34;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v36 = &v2[v28[12]];
  if (*(v36 + 1) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v37 = *v36;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v38 = v49;
  sub_1D1741C08(&v2[v28[13]], v49, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v29 + 48))(v38, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v39 = v48;
    (*(v29 + 32))(v48, v38, v4);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v29 + 8))(v39, v4);
  }

  if (v2[v28[14]] != 3)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v40 = v2[v28[15]];
  sub_1D1E6922C();
  v41 = v2[v28[16]];
  sub_1D1E6922C();
  v42 = v2[v28[17]];
  sub_1D1E6922C();
  v43 = &v2[v28[18]];
  v44 = *v43 | (v43[4] << 32);
  if (*v43 == 2 || (sub_1D1E6922C(), sub_1D1E6922C(), (v44 & 0x100000000) != 0))
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (v2[v28[19]] != 6)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  MEMORY[0x1D3892850](v2[v28[20]]);
  v45 = v2[v28[21]];
  return sub_1D1E6922C();
}

uint64_t sub_1D19A876C(void (*a1)(_BYTE *))
{
  sub_1D1E6920C();
  a1(v3);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648138, &qword_1D1E8A860);
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v31 - v11;
  v13 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D19ACAF0();
  v35 = v12;
  v19 = v37;
  sub_1D1E692FC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v37 = v9;
  v32 = v13;
  v33 = v16;
  LOBYTE(v39) = 0;
  v20 = sub_1D1E68C7C();
  v21 = v33;
  *v33 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480C8, &qword_1D1E8A848);
  v40 = 1;
  sub_1D19AD000();
  sub_1D1E68CBC();
  *(v21 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480E0, &qword_1D1E8A850);
  v40 = 2;
  sub_1D19AD0D8();
  sub_1D1E68CBC();
  *(v21 + 2) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480F8, &qword_1D1E8A858);
  v40 = 3;
  sub_1D19AD1B0();
  v31 = 0;
  sub_1D1E68CBC();
  *(v21 + 3) = v39;
  LOBYTE(v39) = 4;
  *(v21 + 4) = sub_1D1E68D1C();
  v21[40] = v22 & 1;
  type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  LOBYTE(v39) = 5;
  sub_1D19ACA88(&qword_1EC648170, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
  sub_1D1E68CBC();
  v23 = v32;
  sub_1D1741A90(0, &v21[v32[9]], &qword_1EC6480B0, &qword_1D1E8A838);
  LOBYTE(v39) = 6;
  v24 = sub_1D1E68CEC();
  v25 = &v21[v23[10]];
  *v25 = v24;
  v25[1] = HIBYTE(v24) & 1;
  v40 = 7;
  sub_1D18CB0FC();
  sub_1D1E68CBC();
  *&v21[v23[11]] = v39;
  v40 = 8;
  sub_1D1E68CBC();
  *&v33[v32[12]] = v39;
  sub_1D1E669FC();
  LOBYTE(v39) = 9;
  sub_1D19ACA88(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D1741A90(v6, &v33[v32[13]], &qword_1EC642570, &qword_1D1E6C6A0);
  v40 = 10;
  sub_1D19AD288();
  sub_1D1E68CBC();
  v33[v32[14]] = v39;
  LOBYTE(v39) = 11;
  v33[v32[15]] = sub_1D1E68D3C() & 1;
  LOBYTE(v39) = 12;
  v33[v32[16]] = sub_1D1E68D3C() & 1;
  LOBYTE(v39) = 13;
  v33[v32[17]] = sub_1D1E68D3C() & 1;
  v40 = 14;
  sub_1D19AD2DC();
  sub_1D1E68CBC();
  v26 = v39;
  v27 = &v33[v32[18]];
  v27[4] = BYTE4(v39);
  *v27 = v26;
  v40 = 15;
  sub_1D19AD330();
  sub_1D1E68CBC();
  v33[v32[19]] = v39;
  v40 = 16;
  sub_1D19AD384();
  sub_1D1E68D7C();
  v33[v32[20]] = v39;
  LOBYTE(v39) = 17;
  v28 = sub_1D1E68D3C();
  (*(v37 + 8))(v35, v36);
  v29 = v33;
  v33[v32[21]] = v28 & 1;
  sub_1D19AD3D8(v29, v34, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D19ACFA0(v29, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
}

uint64_t sub_1D19A9230(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D1E6920C();
  a3(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D19A9294(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

BOOL StaticThermostatClusterGroup.energyHoldActive.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticThermostatClusterGroup() + 48));
  if (*v1 == 1 && (v2 = &v1[*(type metadata accessor for StaticThermostatClusterGroup.Alvarado() + 48)], (v2[8] & 1) == 0))
  {
    return *v2 > 0;
  }

  else
  {
    return 0;
  }
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.holdDuration.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result) & 1;
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v6 = 0;
    goto LABEL_12;
  }

  v4 = sub_1D171DB60(0x80u);
  if ((v5 & 1) != 0 && (sub_1D1741970(*(a1 + 56) + 32 * v4, v13), swift_dynamicCast()))
  {
    v6 = v12;
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if (!*(a1 + 16))
    {
LABEL_12:

      v10 = 0;
      v11 = 1;
      goto LABEL_13;
    }
  }

  v7 = sub_1D171DB60(0x81u);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v7, v13);

  result = swift_dynamicCast();
  v10 = v12;
  if (!result)
  {
    v10 = 0;
  }

  v11 = result ^ 1;
LABEL_13:
  *a2 = v6;
  *(a2 + 2) = v10;
  *(a2 + 4) = v11;
  return result;
}

BOOL static StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[4];
  if (a1[4])
  {
    return (a2[4] & 1) != 0;
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }
}

unint64_t sub_1D19A954C()
{
  if (*v0)
  {
    result = 0x61727544646C6F68;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_1D19A9594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001D1EC09A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61727544646C6F68 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D19A9680(uint64_t a1)
{
  v2 = sub_1D19AD440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A96BC(uint64_t a1)
{
  v2 = sub_1D19AD440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648198, &qword_1D1E8A868);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = *(v1 + 1);
  v12[3] = v1[4];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD440();
  sub_1D1E6930C();
  v14 = 0;
  sub_1D1E68EDC();
  if (!v2)
  {
    v13 = 1;
    sub_1D1E68E9C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  sub_1D1E6922C();
  if (v3 == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v3 != 1)
  {
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6481A8, &unk_1D1E8A870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD440();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1D1E68D3C();
    v15 = 1;
    v13 = sub_1D1E68CFC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    *(a2 + 2) = v13;
    *(a2 + 4) = BYTE2(v13) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19A9B2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[4];
  if (a1[4])
  {
    if (a2[4])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D19A9B7C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v3 != 1)
  {
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D19A9C00()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  sub_1D1E6922C();
  if (v3 == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t sub_1D19A9C60()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v3 != 1)
  {
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.presetHandle.getter()
{
  v1 = *v0;
  sub_1D1771B38(*v0, *(v0 + 8));
  return v1;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D171DB60(0x60u), (v5 & 1) != 0) && (sub_1D1741970(*(a1 + 56) + 32 * v4, v18), sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v17;
    v7 = sub_1D1E668BC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *a2 = v7;
  a2[1] = v9;
  if (*(a1 + 16) && (v10 = sub_1D171DB60(0x61u), (v11 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v10, v18);

    if (swift_dynamicCast())
    {
      v12 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
      sub_1D1E6698C();
      v13 = sub_1D1E669FC();
      return (*(*(v13 - 8) + 56))(a2 + v12, 0, 1, v13);
    }
  }

  else
  {
  }

  v15 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
  v16 = sub_1D1E669FC();
  return (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = *v0;
  v7 = v1[1];
  if (v7 >> 60 == 15)
  {
    v15 = v6;
    v16 = v7;
    sub_1D1771B38(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
    v8 = sub_1D1E6789C();
    v10 = v9;
  }

  else
  {
    sub_1D1741854(v6, v1[1]);
    v8 = sub_1D1E6689C();
    v10 = v11;
    sub_1D1716AA4(v6, v7);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EC12F0);
  MEMORY[0x1D3890F70](v8, v10);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC1310);
  v12 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  sub_1D1741C08(v1 + *(v12 + 20), v5, &qword_1EC642570, &qword_1D1E6C6A0);
  v13 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v13);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_1D19AA134()
{
  if (*v0)
  {
    result = 0x6574636964657270;
  }

  else
  {
    result = 0x6148746573657270;
  }

  *v0;
  return result;
}

uint64_t sub_1D19AA184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xED0000656D695464)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D19AA26C(uint64_t a1)
{
  v2 = sub_1D19AD494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19AA2A8(uint64_t a1)
{
  v2 = sub_1D19AD494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6481B0, &qword_1D1E8A880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD494();
  sub_1D1E6930C();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_1D1771B38(v15, v11);
  sub_1D18CAD0C();
  sub_1D1E68E5C();
  sub_1D1716AA4(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
    LOBYTE(v15) = 1;
    sub_1D1E669FC();
    sub_1D19ACA88(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.hash(into:)()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  if (v0[1] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v10 = *v0;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v11 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  sub_1D1741C08(v0 + *(v11 + 20), v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1D1E6922C();
  sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  sub_1D1E6920C();
  if (v0[1] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v10 = *v0;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v11 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  sub_1D1741C08(v0 + *(v11 + 20), v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6481C0, &qword_1D1E8A888);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD494();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v17 = v15;
  v18 = v23;
  v26 = 0;
  sub_1D18CB0FC();
  v19 = v24;
  sub_1D1E68CBC();
  *v17 = v25;
  sub_1D1E669FC();
  LOBYTE(v25) = 1;
  sub_1D19ACA88(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  (*(v18 + 8))(v11, v19);
  sub_1D1741A90(v7, v17 + *(v21 + 20), &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D19AD3D8(v17, v22, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19ACFA0(v17, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
}

uint64_t sub_1D19AAC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1D1E6920C();
  if (v2[1] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    v13 = *v2;
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  sub_1D1741C08(v2 + *(a2 + 20), v12, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1D1E6926C();
}

BOOL sub_1D19AB624(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a2 + 72);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v11 = *(a2 + 8);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v12 = *(a2 + 24);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v13 = *(a2 + 40);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v14 = *(a2 + 56);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if ((v9 & 1) == 0)
  {
    if (v8 == *(a2 + 64))
    {
      v16 = *(a2 + 72);
    }

    else
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV14SetpointConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(a1 + 9);
  v20 = *(a2 + 9);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v20 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v21 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v15;
  v35 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  v23 = *(v35 + 28);
  v24 = *(v22 + 48);
  sub_1D1741C08(a1 + v23, v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v36 = v24;
  sub_1D1741C08(a2 + v23, &v17[v24], &qword_1EC642570, &qword_1D1E6C6A0);
  v25 = *(v5 + 48);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v36], 1, v4) == 1)
    {
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_26;
    }

LABEL_23:
    sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D1741C08(v17, v12, &qword_1EC642570, &qword_1D1E6C6A0);
  v26 = v36;
  if (v25(&v17[v36], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_23;
  }

  (*(v5 + 32))(v8, &v17[v26], v4);
  sub_1D19ACA88(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v28 = sub_1D1E6775C();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v29(v12, v4);
  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v30 = *(v35 + 32);
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    return (v34 & 1) != 0;
  }

  if (*v31 != *v33)
  {
    v34 = 1;
  }

  return (v34 & 1) == 0;
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV15SuggestedPresetV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D1E669FC();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *a2;
  v18 = a2[1];
  if (v15 >> 60 == 15)
  {
    if (v18 >> 60 == 15)
    {
      v30 = v7;
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v17, v18);
      sub_1D1716AA4(v16, v15);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D1771B38(*a1, *(a1 + 8));
    sub_1D1771B38(v17, v18);
    sub_1D1716AA4(v16, v15);
    sub_1D1716AA4(v17, v18);
    return 0;
  }

  if (v18 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v30 = v7;
  sub_1D1771B38(v16, v15);
  sub_1D1771B38(v17, v18);
  v20 = sub_1D199F344(v16, v15, v17, v18);
  sub_1D1716AA4(v17, v18);
  sub_1D1716AA4(v16, v15);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v21 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
  v22 = *(v11 + 48);
  sub_1D1741C08(a1 + v21, v14, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(a2 + v21, &v14[v22], &qword_1EC642570, &qword_1D1E6C6A0);
  v23 = v32;
  v24 = *(v32 + 48);
  if (v24(v14, 1, v4) != 1)
  {
    v25 = v31;
    sub_1D1741C08(v14, v31, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v24(&v14[v22], 1, v4) == 1)
    {
      (*(v23 + 8))(v25, v4);
      goto LABEL_12;
    }

    v26 = v30;
    (*(v23 + 32))(v30, &v14[v22], v4);
    sub_1D19ACA88(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    v27 = sub_1D1E6775C();
    v28 = *(v23 + 8);
    v28(v26, v4);
    v28(v25, v4);
    sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
    return (v27 & 1) != 0;
  }

  if (v24(&v14[v22], 1, v4) != 1)
  {
LABEL_12:
    sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
  return 1;
}

uint64_t _s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D1E669FC();
  v98 = *(v4 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v91 - v12;
  v13 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v91 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6482A0, &unk_1D1E8B6E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v91 - v24;
  v26 = *a1;
  v27 = *a2;
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_51;
    }

LABEL_6:
    v29 = *(a1 + 1);
    v30 = *(a2 + 1);
    if (v29)
    {
      if (!v30 || (sub_1D177A394(v29, v30) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v30)
    {
      goto LABEL_51;
    }

    v93 = v4;
    v94 = a2;
    v31 = *(a1 + 2);
    v32 = *(a2 + 2);
    if (v31)
    {
      if (!v32)
      {
        goto LABEL_51;
      }

      v33 = sub_1D177A44C(v31, v32);

      if ((v33 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v32)
    {
      goto LABEL_51;
    }

    v34 = *(a1 + 3);
    v35 = *(v94 + 3);
    if (v34)
    {
      if (!v35)
      {
        goto LABEL_51;
      }

      v36 = *(v94 + 3);

      v37 = sub_1D177A568(v34, v35);

      if ((v37 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v35)
    {
      goto LABEL_51;
    }

    v38 = v94;
    LOBYTE(v28) = v94[40];
    if (a1[40])
    {
      if (!v94[40])
      {
        return v28 & 1;
      }
    }

    else
    {
      if (*(a1 + 4) != *(v94 + 4))
      {
        LOBYTE(v28) = 1;
      }

      if (v28)
      {
        goto LABEL_51;
      }
    }

    v92 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
    v39 = v92[9];
    v40 = *(v22 + 48);
    sub_1D1741C08(&a1[v39], v25, &qword_1EC6480B0, &qword_1D1E8A838);
    v41 = &v38[v39];
    v42 = v40;
    sub_1D1741C08(v41, &v25[v40], &qword_1EC6480B0, &qword_1D1E8A838);
    v43 = *(v14 + 48);
    if (v43(v25, 1, v13) == 1)
    {
      v44 = v43(&v25[v42], 1, v13);
      v45 = v93;
      if (v44 == 1)
      {
        sub_1D1741A30(v25, &qword_1EC6480B0, &qword_1D1E8A838);
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D1741C08(v25, v21, &qword_1EC6480B0, &qword_1D1E8A838);
      v46 = v43(&v25[v42], 1, v13);
      v45 = v93;
      if (v46 != 1)
      {
        sub_1D19ACF3C(&v25[v42], v17);
        v50 = _s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV15SuggestedPresetV2eeoiySbAG_AGtFZ_0(v21, v17);
        sub_1D19ACFA0(v17, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
        sub_1D19ACFA0(v21, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
        sub_1D1741A30(v25, &qword_1EC6480B0, &qword_1D1E8A838);
        if (!v50)
        {
          goto LABEL_51;
        }

LABEL_35:
        v51 = v92;
        v52 = v92[10];
        v53 = &a1[v52];
        v54 = a1[v52 + 1];
        v55 = &v94[v52];
        v28 = v94[v52 + 1];
        if (v54)
        {
          if (!v28)
          {
            return v28 & 1;
          }
        }

        else
        {
          if (*v53 != *v55)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_51;
          }
        }

        v56 = v92[11];
        v58 = *&a1[v56];
        v57 = *&a1[v56 + 8];
        v59 = &v94[v56];
        v61 = *v59;
        v60 = v59[1];
        if (v57 >> 60 == 15)
        {
          if (v60 >> 60 != 15)
          {
            goto LABEL_50;
          }

          sub_1D1771B38(v58, v57);
          sub_1D1771B38(v61, v60);
          sub_1D1716AA4(v58, v57);
        }

        else
        {
          if (v60 >> 60 == 15)
          {
            goto LABEL_50;
          }

          sub_1D1771B38(v58, v57);
          sub_1D1771B38(v61, v60);
          v62 = sub_1D199F344(v58, v57, v61, v60);
          sub_1D1716AA4(v61, v60);
          sub_1D1716AA4(v58, v57);
          if ((v62 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v63 = v51[12];
        v58 = *&a1[v63];
        v57 = *&a1[v63 + 8];
        v64 = &v94[v63];
        v61 = *v64;
        v60 = v64[1];
        if (v57 >> 60 == 15)
        {
          if (v60 >> 60 == 15)
          {
            sub_1D1771B38(v58, v57);
            sub_1D1771B38(v61, v60);
            sub_1D1716AA4(v58, v57);
LABEL_54:
            v67 = v51[13];
            v68 = *(v10 + 48);
            v69 = v97;
            sub_1D1741C08(&a1[v67], v97, &qword_1EC642570, &qword_1D1E6C6A0);
            v70 = &v94[v67];
            v71 = v94;
            sub_1D1741C08(v70, v69 + v68, &qword_1EC642570, &qword_1D1E6C6A0);
            v72 = v98;
            v73 = *(v98 + 48);
            v74 = v73(v69, 1, v45);
            v75 = v96;
            if (v74 == 1)
            {
              if (v73(v69 + v68, 1, v45) == 1)
              {
                sub_1D1741A30(v69, &qword_1EC642570, &qword_1D1E6C6A0);
                goto LABEL_61;
              }
            }

            else
            {
              sub_1D1741C08(v69, v96, &qword_1EC642570, &qword_1D1E6C6A0);
              if (v73(v69 + v68, 1, v45) != 1)
              {
                v76 = v95;
                (*(v72 + 32))(v95, v69 + v68, v45);
                sub_1D19ACA88(&qword_1EC642AC8, MEMORY[0x1E6969530]);
                v77 = sub_1D1E6775C();
                v78 = *(v72 + 8);
                v78(v76, v45);
                v78(v75, v45);
                sub_1D1741A30(v69, &qword_1EC642570, &qword_1D1E6C6A0);
                if ((v77 & 1) == 0)
                {
                  goto LABEL_51;
                }

LABEL_61:
                v79 = v51[14];
                v80 = a1[v79];
                v81 = v71[v79];
                if (v80 == 3)
                {
                  if (v81 != 3)
                  {
                    goto LABEL_51;
                  }
                }

                else if (v80 != v81)
                {
                  goto LABEL_51;
                }

                if (a1[v92[15]] != v94[v92[15]] || a1[v92[16]] != v94[v92[16]] || a1[v92[17]] != v94[v92[17]])
                {
                  goto LABEL_51;
                }

                v82 = v92[18];
                v83 = *&a1[v82] | (a1[v82 + 4] << 32);
                v84 = *&v94[v82] | (v94[v82 + 4] << 32);
                v85 = *&a1[v82];
                v86 = *&v94[v82];
                if (v85 == 2)
                {
                  v87 = v94;
                  if (v86 != 2)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_70;
                }

                if (v86 == 2 || ((v83 ^ v84) & 1) != 0)
                {
                  goto LABEL_51;
                }

                if ((v83 & 0x100000000) != 0)
                {
                  v87 = v94;
                  if ((v84 & 0x100000000) == 0)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  LOBYTE(v28) = 0;
                  if ((v84 & 0x100000000) != 0)
                  {
                    return v28 & 1;
                  }

                  v87 = v94;
                  if (WORD1(v83) != WORD1(v84))
                  {
                    return v28 & 1;
                  }
                }

LABEL_70:
                v88 = v92[19];
                v89 = a1[v88];
                v90 = v87[v88];
                if (v89 == 6)
                {
                  if (v90 == 6)
                  {
LABEL_80:
                    if (a1[v92[20]] == v94[v92[20]])
                    {
                      LOBYTE(v28) = a1[v92[21]] ^ v94[v92[21]] ^ 1;
                      return v28 & 1;
                    }
                  }
                }

                else if (v89 == v90)
                {
                  goto LABEL_80;
                }

LABEL_51:
                LOBYTE(v28) = 0;
                return v28 & 1;
              }

              (*(v72 + 8))(v75, v45);
            }

            v47 = &qword_1EC642AC0;
            v48 = &qword_1D1E6E810;
            v49 = v69;
LABEL_33:
            sub_1D1741A30(v49, v47, v48);
            goto LABEL_51;
          }
        }

        else if (v60 >> 60 != 15)
        {
          sub_1D1771B38(v58, v57);
          sub_1D1771B38(v61, v60);
          v66 = sub_1D199F344(v58, v57, v61, v60);
          sub_1D1716AA4(v61, v60);
          sub_1D1716AA4(v58, v57);
          if ((v66 & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_54;
        }

LABEL_50:
        sub_1D1771B38(v58, v57);
        sub_1D1771B38(v61, v60);
        sub_1D1716AA4(v58, v57);
        sub_1D1716AA4(v61, v60);
        goto LABEL_51;
      }

      sub_1D19ACFA0(v21, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
    }

    v47 = &qword_1EC6482A0;
    v48 = &unk_1D1E8B6E0;
    v49 = v25;
    goto LABEL_33;
  }

  LOBYTE(v28) = 0;
  if (v27 != 2 && ((v27 ^ v26) & 1) == 0)
  {
    goto LABEL_6;
  }

  return v28 & 1;
}

unint64_t sub_1D19AC96C()
{
  result = qword_1EC648070;
  if (!qword_1EC648070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648070);
  }

  return result;
}

unint64_t sub_1D19AC9C0()
{
  result = qword_1EC648088;
  if (!qword_1EC648088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648088);
  }

  return result;
}

unint64_t sub_1D19ACA34()
{
  result = qword_1EC6480A0;
  if (!qword_1EC6480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480A0);
  }

  return result;
}

uint64_t sub_1D19ACA88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D19ACAF0()
{
  result = qword_1EC6480C0;
  if (!qword_1EC6480C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480C0);
  }

  return result;
}

unint64_t sub_1D19ACB44()
{
  result = qword_1EC6480D0;
  if (!qword_1EC6480D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480C8, &qword_1D1E8A848);
    sub_1D19ACBC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480D0);
  }

  return result;
}

unint64_t sub_1D19ACBC8()
{
  result = qword_1EC6480D8;
  if (!qword_1EC6480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480D8);
  }

  return result;
}

unint64_t sub_1D19ACC1C()
{
  result = qword_1EC6480E8;
  if (!qword_1EC6480E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480E0, &qword_1D1E8A850);
    sub_1D19ACCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480E8);
  }

  return result;
}

unint64_t sub_1D19ACCA0()
{
  result = qword_1EC6480F0;
  if (!qword_1EC6480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480F0);
  }

  return result;
}

unint64_t sub_1D19ACCF4()
{
  result = qword_1EC648100;
  if (!qword_1EC648100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480F8, &qword_1D1E8A858);
    sub_1D19ACD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648100);
  }

  return result;
}

unint64_t sub_1D19ACD78()
{
  result = qword_1EC648108;
  if (!qword_1EC648108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648108);
  }

  return result;
}

unint64_t sub_1D19ACDEC()
{
  result = qword_1EC648118;
  if (!qword_1EC648118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648118);
  }

  return result;
}

unint64_t sub_1D19ACE40()
{
  result = qword_1EC648120;
  if (!qword_1EC648120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648120);
  }

  return result;
}

unint64_t sub_1D19ACE94()
{
  result = qword_1EC648128;
  if (!qword_1EC648128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648128);
  }

  return result;
}

unint64_t sub_1D19ACEE8()
{
  result = qword_1EC648130;
  if (!qword_1EC648130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648130);
  }

  return result;
}

uint64_t sub_1D19ACF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19ACFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19AD000()
{
  result = qword_1EC648140;
  if (!qword_1EC648140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480C8, &qword_1D1E8A848);
    sub_1D19AD084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648140);
  }

  return result;
}

unint64_t sub_1D19AD084()
{
  result = qword_1EC648148;
  if (!qword_1EC648148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648148);
  }

  return result;
}

unint64_t sub_1D19AD0D8()
{
  result = qword_1EC648150;
  if (!qword_1EC648150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480E0, &qword_1D1E8A850);
    sub_1D19AD15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648150);
  }

  return result;
}

unint64_t sub_1D19AD15C()
{
  result = qword_1EC648158;
  if (!qword_1EC648158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648158);
  }

  return result;
}

unint64_t sub_1D19AD1B0()
{
  result = qword_1EC648160;
  if (!qword_1EC648160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480F8, &qword_1D1E8A858);
    sub_1D19AD234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648160);
  }

  return result;
}

unint64_t sub_1D19AD234()
{
  result = qword_1EC648168;
  if (!qword_1EC648168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648168);
  }

  return result;
}

unint64_t sub_1D19AD288()
{
  result = qword_1EC648178;
  if (!qword_1EC648178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648178);
  }

  return result;
}

unint64_t sub_1D19AD2DC()
{
  result = qword_1EC648180;
  if (!qword_1EC648180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648180);
  }

  return result;
}

unint64_t sub_1D19AD330()
{
  result = qword_1EC648188;
  if (!qword_1EC648188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648188);
  }

  return result;
}

unint64_t sub_1D19AD384()
{
  result = qword_1EC648190;
  if (!qword_1EC648190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648190);
  }

  return result;
}

uint64_t sub_1D19AD3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19AD440()
{
  result = qword_1EC6481A0;
  if (!qword_1EC6481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481A0);
  }

  return result;
}

unint64_t sub_1D19AD494()
{
  result = qword_1EC6481B8;
  if (!qword_1EC6481B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481B8);
  }

  return result;
}

unint64_t sub_1D19AD4EC()
{
  result = qword_1EC6481C8;
  if (!qword_1EC6481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481C8);
  }

  return result;
}

unint64_t sub_1D19AD544()
{
  result = qword_1EC6481D0;
  if (!qword_1EC6481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481D0);
  }

  return result;
}

unint64_t sub_1D19AD59C()
{
  result = qword_1EC6481D8;
  if (!qword_1EC6481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481D8);
  }

  return result;
}

unint64_t sub_1D19AD5F4()
{
  result = qword_1EC6481E0;
  if (!qword_1EC6481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481E0);
  }

  return result;
}

unint64_t sub_1D19AD6DC()
{
  result = qword_1EC6481F8;
  if (!qword_1EC6481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481F8);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

void sub_1D19AD804()
{
  sub_1D17BDF80(319, &qword_1EE07B610);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07BA30);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1D0);
      if (v2 <= 0x3F)
      {
        sub_1D19ADC0C(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D19AD930()
{
  sub_1D17BDF80(319, &qword_1EE07D1F0);
  if (v0 <= 0x3F)
  {
    sub_1D19ADBB8(319, &qword_1EE07B720, &qword_1EC6480C8, &qword_1D1E8A848);
    if (v1 <= 0x3F)
    {
      sub_1D19ADBB8(319, &qword_1EE07B730, &qword_1EC6480E0, &qword_1D1E8A850);
      if (v2 <= 0x3F)
      {
        sub_1D19ADBB8(319, &qword_1EE07B738, &qword_1EC6480F8, &qword_1D1E8A858);
        if (v3 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EE07B5F8);
          if (v4 <= 0x3F)
          {
            sub_1D19ADC0C(319, qword_1EE07BC10, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
            if (v5 <= 0x3F)
            {
              sub_1D17BDF80(319, &qword_1EE07B608);
              if (v6 <= 0x3F)
              {
                sub_1D17BDF80(319, &qword_1EE07D198);
                if (v7 <= 0x3F)
                {
                  sub_1D19ADC0C(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D17BDF80(319, &qword_1EE07BA38);
                    if (v9 <= 0x3F)
                    {
                      sub_1D17BDF80(319, qword_1EE07BC50);
                      if (v10 <= 0x3F)
                      {
                        sub_1D17BDF80(319, &qword_1EE07BA28);
                        if (v11 <= 0x3F)
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
    }
  }
}

void sub_1D19ADBB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D1E685AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D19ADC0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s13PresetsConfigV10HoldPolicyVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s13PresetsConfigV10HoldPolicyVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1D19ADD30()
{
  sub_1D17BDF80(319, &qword_1EE07D198);
  if (v0 <= 0x3F)
  {
    sub_1D19ADC0C(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D19ADE44()
{
  result = qword_1EC648208;
  if (!qword_1EC648208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648208);
  }

  return result;
}

unint64_t sub_1D19ADE9C()
{
  result = qword_1EC648210;
  if (!qword_1EC648210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648210);
  }

  return result;
}

unint64_t sub_1D19ADEF4()
{
  result = qword_1EC648218;
  if (!qword_1EC648218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648218);
  }

  return result;
}

unint64_t sub_1D19ADF4C()
{
  result = qword_1EC648220;
  if (!qword_1EC648220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648220);
  }

  return result;
}

unint64_t sub_1D19ADFA4()
{
  result = qword_1EC648228;
  if (!qword_1EC648228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648228);
  }

  return result;
}

unint64_t sub_1D19ADFFC()
{
  result = qword_1EC648230;
  if (!qword_1EC648230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648230);
  }

  return result;
}

unint64_t sub_1D19AE054()
{
  result = qword_1EC648238;
  if (!qword_1EC648238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648238);
  }

  return result;
}

unint64_t sub_1D19AE0AC()
{
  result = qword_1EC648240;
  if (!qword_1EC648240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648240);
  }

  return result;
}

unint64_t sub_1D19AE104()
{
  result = qword_1EC648248;
  if (!qword_1EC648248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648248);
  }

  return result;
}

unint64_t sub_1D19AE15C()
{
  result = qword_1EC648250;
  if (!qword_1EC648250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648250);
  }

  return result;
}

unint64_t sub_1D19AE1B4()
{
  result = qword_1EC648258;
  if (!qword_1EC648258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648258);
  }

  return result;
}

unint64_t sub_1D19AE20C()
{
  result = qword_1EC648260;
  if (!qword_1EC648260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648260);
  }

  return result;
}

unint64_t sub_1D19AE264()
{
  result = qword_1EC648268;
  if (!qword_1EC648268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648268);
  }

  return result;
}

unint64_t sub_1D19AE2BC()
{
  result = qword_1EC648270;
  if (!qword_1EC648270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648270);
  }

  return result;
}

unint64_t sub_1D19AE314()
{
  result = qword_1EC648278;
  if (!qword_1EC648278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648278);
  }

  return result;
}

unint64_t sub_1D19AE36C()
{
  result = qword_1EC648280;
  if (!qword_1EC648280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648280);
  }

  return result;
}

unint64_t sub_1D19AE3C4()
{
  result = qword_1EC648288;
  if (!qword_1EC648288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648288);
  }

  return result;
}

unint64_t sub_1D19AE41C()
{
  result = qword_1EC648290;
  if (!qword_1EC648290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648290);
  }

  return result;
}

uint64_t sub_1D19AE470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E6974616568 && a2 == 0xEF746E696F707465;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC1330 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC1350 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC1370 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC1390 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19AE634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E696C6F6F63 && a2 == 0xEF746E696F707465;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC13B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC13D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC13F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC1410 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19AE7F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746E696F70746573 && a2 == 0xEE0074657366664FLL;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70746573 && a2 == 0xEC000000646C6F48 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC1430 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC1450 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC1470 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19AE9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D1EC1490 == a2;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746573657270 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEE00737465736572 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC14B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73746573657250 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC14D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC14F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1510 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D1EC1530 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D1EC1550 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC1580 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC15A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC15C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D1EC15E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696C6F50646C6F68 && a2 == 0xEA00000000007963 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1600 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1620 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC1640 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1D19AEF40()
{
  result = qword_1EC648298;
  if (!qword_1EC648298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648298);
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SystemMode.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 9u)
  {
    *a2 = 9;
  }

  else
  {
    *a2 = byte_1D1E8BDD2[result];
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SystemMode.label.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000001ALL;
  if (v1 <= 3)
  {
    v10 = "HFThermostatPresetsModeAuto";
    v11 = "HFThermostatPresetsModeHeat";
    if (v1 != 2)
    {
      v11 = "etsModeEmergencyHeat";
    }

    if (*v0)
    {
      v10 = "HFThermostatPresetsModeCool";
      v2 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (*v0 <= 1u)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }

    v9 = v12 | 0x8000000000000000;
  }

  else
  {
    v3 = "HFThermostatPresetsModeDry";
    v4 = "HFThermostatPresetsModeSleep";
    if (v1 != 7)
    {
      v4 = "supportsAdaptiveTemperature";
      v2 = 0xD00000000000001CLL;
    }

    if (v1 == 6)
    {
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = v4;
    }

    v5 = "etsModePreCooling";
    v6 = 0xD000000000000021;
    if (v1 == 4)
    {
      v6 = 0xD000000000000024;
    }

    else
    {
      v5 = "HFThermostatPresetsModeFanOnly";
    }

    if (*v0 <= 5u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v0 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v2;
    }

    v9 = v7 | 0x8000000000000000;
  }

  return static String.hfLocalized(_:)(v8, v9);
}

uint64_t StaticThermostatClusterGroup.NotFollowingReason.EnergyNotFollowingReason.description.getter()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x646573756150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t StaticThermostatClusterGroup.NotFollowingReason.EnergyNotFollowingReason.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D19AF22C()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x646573756150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t StaticThermostatClusterGroup.NotFollowingReason.PresetNotFollowingReason.description.getter()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x20676E696F676E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_1D19AF398()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x20676E696F676E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t StaticThermostatClusterGroup.ActivePresetChangeReason.description.getter()
{
  v1 = *v0;
  v2 = 0x776E6F6E6B6E55;
  v3 = 0x6E614320646C6F48;
  v4 = 0x656C756465686353;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61756E614DLL;
  if (v1 != 1)
  {
    v5 = 0x70784520646C6F48;
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

uint64_t StaticThermostatClusterGroup.ActivePresetChangeReason.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D19AF59C()
{
  v1 = *v0;
  v2 = 0x776E6F6E6B6E55;
  v3 = 0x6E614320646C6F48;
  v4 = 0x656C756465686353;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61756E614DLL;
  if (v1 != 1)
  {
    v5 = 0x70784520646C6F48;
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

uint64_t sub_1D19AF75C()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = byte_1D1E8BDDC[v1];
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19AF7E4()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = byte_1D1E8BDDC[v1];
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

HomeDataModel::ThermostatAutomationSettingsContext_optional __swiftcall ThermostatAutomationSettingsContext.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D19AF85C()
{
  result = qword_1EC6482A8;
  if (!qword_1EC6482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482A8);
  }

  return result;
}

unint64_t sub_1D19AF8B4()
{
  result = qword_1EC6482B0;
  if (!qword_1EC6482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482B0);
  }

  return result;
}

unint64_t sub_1D19AF90C()
{
  result = qword_1EC6482B8;
  if (!qword_1EC6482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482B8);
  }

  return result;
}

unint64_t sub_1D19AF964()
{
  result = qword_1EC6482C0;
  if (!qword_1EC6482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482C0);
  }

  return result;
}

unint64_t sub_1D19AF9BC()
{
  result = qword_1EC6482C8;
  if (!qword_1EC6482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482C8);
  }

  return result;
}

uint64_t _s18NotFollowingReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s18NotFollowingReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19AFC04()
{
  result = qword_1EC6482D0;
  if (!qword_1EC6482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482D0);
  }

  return result;
}

unint64_t sub_1D19AFC58()
{
  result = qword_1EC6482D8;
  if (!qword_1EC6482D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482D8);
  }

  return result;
}

unint64_t sub_1D19AFCAC()
{
  result = qword_1EC6482E0;
  if (!qword_1EC6482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482E0);
  }

  return result;
}

unint64_t sub_1D19AFD00()
{
  result = qword_1EC6482E8;
  if (!qword_1EC6482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482E8);
  }

  return result;
}

double UInt64.temperatureTypeAsCelsius.getter(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1D1E66ADC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v6 = sub_1D1E6838C();
  v7 = objc_opt_self();
  v8 = [v7 fahrenheit];
  v9 = sub_1D1E684FC();

  if (v9)
  {
    v10 = 0.555555556;
  }

  else
  {
    v11 = [v7 celsius];
    sub_1D1E684FC();

    v10 = 0.5;
    v6 = v11;
  }

  return v10 * round(a1 / 100.0 / v10);
}

uint64_t sub_1D19AFF38@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v38 - v3;
  v44 = sub_1D1E66C5C();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D1E662EC();
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66BAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66BBC();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v38 - v19;
  v21 = sub_1D1E669FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v38 - v27;
  sub_1D1E66B9C();
  (*(v9 + 104))(v12, *MEMORY[0x1E6969A48], v8);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E66B6C();
  v28 = v26;
  v29 = v13;
  v30 = v47;
  v39 = *(v22 + 8);
  v39(v28, v21);
  (*(v9 + 8))(v12, v8);
  v31 = *(v30 + 8);
  v31(v16, v29);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D18B3AE0(v20);
    return (*(v22 + 56))(v49, 1, 1, v21);
  }

  else
  {
    (*(v22 + 32))(v48, v20, v21);
    sub_1D1E66B9C();
    v33 = v40;
    sub_1D1E66C4C();
    v34 = v41;
    v47 = v21;
    sub_1D1E66B0C();
    v35 = v42;
    v36 = v44;
    (*(v42 + 8))(v33, v44);
    v31(v16, v29);
    sub_1D1E6625C();
    sub_1D1E6628C();
    sub_1D1E662AC();
    sub_1D1E661DC();
    v37 = v46;
    sub_1D1E66C4C();
    (*(v35 + 56))(v37, 0, 1, v36);
    sub_1D1E662DC();
    sub_1D1E66B9C();
    sub_1D1E66B5C();
    v31(v16, v29);
    (*(v43 + 8))(v34, v45);
    return (v39)(v48, v47);
  }
}

unint64_t Double.asTemperatureType.getter(double a1)
{
  v1 = a1 * 100.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D19B0540(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 coolingSetpoint];
  if (v4)
  {
    v27 = 0;
    v28 = 1;
    v5 = v4;
    sub_1D1E692EC();
  }

  v6 = [a1 heatingSetpoint];
  if (v6)
  {
    v27 = 0;
    v28 = 1;
    v7 = v6;
    sub_1D1E692EC();
  }

  v8 = [a1 presetScenario];
  LOWORD(v27) = 256;
  sub_1D1E691CC();

  v9 = [a1 presetHandle];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D1E668BC();
    v13 = v12;

    v14 = sub_1D1E6688C();
    sub_1D174E7C4(v11, v13);
    v15 = v14;
    v16 = sub_1D1E668BC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = [a1 builtIn];
  if (v19)
  {
    LOBYTE(v27) = 2;
    v20 = v19;
    MEMORY[0x1D3891370](v19, &v27);

    v21 = v27;
  }

  else
  {
    v21 = 0;
  }

  v22 = [a1 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D1E6781C();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  *a2 = 2600;
  *(a2 + 8) = 2000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v21 & 1;
  *(a2 + 48) = v24;
  *(a2 + 56) = v26;
}

void sub_1D19B07DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 presetScenario];
  sub_1D1E691CC();

  v5 = [a1 numberOfPresets];
  sub_1D1E692EC();

  v6 = [a1 presetTypeFeatures];
  sub_1D1E692BC();

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t StaticThermostatClusterGroup.matterDeviceID.getter()
{
  v1 = type metadata accessor for ClusterPath(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19B0B0C(v0, v5);
  v5[*(v2 + 28)] = 19;
  v6 = *&v5[*(type metadata accessor for EndpointPath(0) + 20)];
  sub_1D19B0B70(v5);
  return v6;
}

uint64_t sub_1D19B0B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19B0B70(uint64_t a1)
{
  v2 = type metadata accessor for ClusterPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StaticThermostatClusterGroup.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndpointPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClusterPath(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19B0B0C(v1, v11);
  v11[*(v8 + 28)] = 19;
  sub_1D191F714(v11, v6);
  v12 = sub_1D1E66A7C();
  return (*(*(v12 - 8) + 32))(a1, v6, v12);
}

uint64_t sub_1D19B0CEC@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1D19B5730(a1);
  switch(result)
  {
    case 3u:
      v7 = 0;
      v6 = 1;
      break;
    case 7u:
      v6 = 0;
      v7 = 2;
      break;
    case 0xCu:
      v6 = 0;
      v7 = 1;
      break;
    default:
      goto LABEL_25;
  }

  v8 = *MEMORY[0x1E696F550];
  v9 = sub_1D1E6781C();
  if (!*(a2 + 16))
  {
    goto LABEL_24;
  }

  v11 = sub_1D171D2F0(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1D1741970(*(a2 + 56) + 32 * v11, v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

  v14 = MEMORY[0x1E696F4F8];
  if (!v6)
  {
    v14 = MEMORY[0x1E696F548];
  }

  v15 = *v14;
  if (*&v27[0] == sub_1D1E6781C() && *(&v27[0] + 1) == v16)
  {
  }

  else
  {
    v18 = sub_1D1E6904C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v19 = *MEMORY[0x1E696F568];
  v20 = sub_1D1E6781C();
  if (!*(a2 + 16))
  {
LABEL_24:

    goto LABEL_25;
  }

  v22 = sub_1D171D2F0(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_25:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_1D1741970(*(a2 + 56) + 32 * v22, v27);
  sub_1D1742194(v27, v28);
  if (v6)
  {
    v25 = sub_1D19B5854(v28);
    if (v25)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648300, &qword_1D1E8BEE8);
      result = __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(v28);
      v26 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    *a3 = v25;
    *(a3 + 24) = v26;
  }

  else
  {
    sub_1D19B3A64(v28, v7, a3);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return result;
}

uint64_t sub_1D19B0F20()
{
  v1 = *v0;
  v2 = v0[1];
  v7[3] = &type metadata for BasicClusterPath;
  v7[4] = sub_1D18F6128();
  LOWORD(v7[0]) = 0;
  BYTE2(v7[0]) = 9;
  AttributeValueSet.value(for:in:)(5, v7, &v8);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v3 = swift_dynamicCast();
    v4 = v7[0];
    if (!v3)
    {
      v4 = 0;
    }

    v5 = v3 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v8, &qword_1EC645D58, &unk_1D1E7E530);
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 8);
}

uint64_t sub_1D19B100C(int a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(a1, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      return LOBYTE(v8[0]);
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    return 2;
  }
}

uint64_t sub_1D19B111C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 18);
  v12[5] = v5;
  v12[6] = v6;
  v12[3] = &type metadata for BasicClusterPath;
  v12[4] = sub_1D18F6128();
  LOWORD(v12[0]) = v7;
  BYTE2(v12[0]) = v8;

  AttributeValueSet.value(for:in:)(a1, v12, &v13);

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v14)
  {
    sub_1D1741A30(&v13, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (LODWORD(v12[0]) < 0xC792BC80)
  {
    sub_1D1E6698C();
    v10 = 0;
LABEL_7:
    v11 = sub_1D1E669FC();
    return (*(*(v11 - 8) + 56))(a2, v10, 1, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19B12A4(int a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;
  AttributeValueSet.value(for:in:)(a1, v8, &v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      return v8[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }
}

uint64_t sub_1D19B1430(int a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(a1, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      return v8[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }
}

uint64_t sub_1D19B1528()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  v9[3] = &type metadata for BasicClusterPath;
  v9[4] = sub_1D18F6128();
  LOWORD(v9[0]) = v3;
  BYTE2(v9[0]) = v4;
  AttributeValueSet.value(for:in:)(35, v9, &v10);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    v6 = v9[0];
    if (!v5)
    {
      v6 = 0;
    }

    v7 = v5 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v10, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t sub_1D19B1610()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  v9[3] = &type metadata for BasicClusterPath;
  v9[4] = sub_1D18F6128();
  LOWORD(v9[0]) = v3;
  BYTE2(v9[0]) = v4;
  AttributeValueSet.value(for:in:)(36, v9, &v10);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    v6 = LOWORD(v9[0]);
    v7 = v5 ^ 1;
    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    sub_1D1741A30(&v10, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 1;
  }

  return v6 | (v7 << 16);
}

uint64_t sub_1D19B16F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v5;
  BYTE2(v10[0]) = v6;
  AttributeValueSet.value(for:in:)(82, v10, &v11);
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v12)
  {
    sub_1D1741A30(&v11, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  if (LODWORD(v10[0]) < 0xC792BC80)
  {
    sub_1D1E6698C();
    v8 = 0;
LABEL_7:
    v9 = sub_1D1E669FC();
    return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
  }

  __break(1u);
  return result;
}

char *sub_1D19B1844()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  *(&v18 + 1) = &type metadata for BasicClusterPath;
  *&v19 = sub_1D18F6128();
  LOWORD(v17) = v3;
  BYTE2(v17) = v4;
  v21 = v1;
  v22 = v2;
  AttributeValueSet.value(for:in:)(80, &v17, &v23);
  __swift_destroy_boxed_opaque_existential_1(&v17);
  if (!v24)
  {
    sub_1D1741A30(&v23, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6482F8, &qword_1D1E8BEE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (!(v17 >> 62))
  {
    v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v6 = sub_1D1E6873C();
  if (!v6)
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  *&v23 = MEMORY[0x1E69E7CC0];
  result = sub_1D178D694(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v23;
    if ((v5 & 0xC000000000000001) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = MEMORY[0x1D3891EF0](v8, v5); ; i = *(v5 + 8 * v8 + 32))
    {
      sub_1D19B0540(i, &v17);
      *&v23 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D178D694((v11 > 1), v12 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v12 + 1;
      v13 = (v9 + (v12 << 6));
      v14 = v17;
      v15 = v18;
      v16 = v20;
      v13[4] = v19;
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      if (v6 - 1 == v8)
      {
        break;
      }

      ++v8;
      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }

    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1D19B1A48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  v19 = &type metadata for BasicClusterPath;
  v20 = sub_1D18F6128();
  LOWORD(v17[0]) = v3;
  BYTE2(v17[0]) = v4;
  AttributeValueSet.value(for:in:)(72, v17, &v21);
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (!v22)
  {
    sub_1D1741A30(&v21, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6482F0, &qword_1D1E8BED8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v17[0];
  if (!(v17[0] >> 62))
  {
    v6 = *((v17[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v6 = sub_1D1E6873C();
  if (!v6)
  {
LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  *&v21 = MEMORY[0x1E69E7CC0];
  result = sub_1D178D6B4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v21;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3891EF0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      sub_1D19B07DC(v10, v17);
      v11 = v17[0];
      v12 = v17[1];
      v13 = v18;
      *&v21 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178D6B4((v14 > 1), v15 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 24 * v15;
      *(v16 + 32) = v11;
      ++v8;
      *(v16 + 40) = v12;
      *(v16 + 48) = v13;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19B1C58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 18);
  v6[5] = v1;
  v6[6] = v2;
  v6[3] = &type metadata for BasicClusterPath;
  v6[4] = sub_1D18F6128();
  LOWORD(v6[0]) = v3;
  BYTE2(v6[0]) = v4;

  AttributeValueSet.value(for:in:)(323551248, v6, &v7);

  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480F8, &qword_1D1E8A858);
    if (swift_dynamicCast())
    {
      return v6[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1741A30(&v7, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }
}