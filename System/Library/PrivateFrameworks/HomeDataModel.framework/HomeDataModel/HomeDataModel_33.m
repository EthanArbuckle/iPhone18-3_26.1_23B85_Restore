uint64_t sub_1D1981610(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[23];
  v6 = v3[22];
  v7 = v3[17];
  v8 = v3[16];
  v9 = v3[15];
  v11 = *v2;
  v4[24] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D19817A8, 0, 0);
}

uint64_t sub_1D19817A8()
{
  v84 = v0;
  if (!*(v0 + 192))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EE07A0B0);
    sub_1D19A1778(v9, v8, type metadata accessor for StaticThermostatClusterGroup);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 176);
      v14 = *(v0 + 144);
      v15 = *(v0 + 88);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v83 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1D1B1312C(0xD000000000000038, 0x80000001D1EC0A20, &v83);
      *(v16 + 12) = 2080;
      sub_1D19A1778(v15, v13, type metadata accessor for EndpointPath);
      *(v13 + *(v14 + 20)) = 19;
      v18 = ClusterPath.description.getter();
      v20 = v19;
      sub_1D199FA0C(v13, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v15, type metadata accessor for StaticThermostatClusterGroup);
      v21 = sub_1D1B1312C(v18, v20, &v83);

      *(v16 + 14) = v21;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {
      v25 = *(v0 + 88);

      sub_1D199FA0C(v25, type metadata accessor for StaticThermostatClusterGroup);
    }

    v27 = *(v0 + 168);
    v26 = *(v0 + 176);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 112);
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);

    v34 = *(v0 + 8);

    return v34();
  }

  v5 = *(v0 + 299);
  *(v0 + 200) = *(v0 + 32);
  if ((v5 & 1) == 0)
  {
    *(v0 + 296) = 0;
    v22 = swift_task_alloc();
    *(v0 + 208) = v22;
    *v22 = v0;
    v22[1] = sub_1D1982094;
    v23 = *(v0 + 64);

    return StaticThermostatClusterGroup.updateTemperatureSetpointHold(to:)((v0 + 296));
  }

  v6 = *(v0 + 56);
  if (*(v0 + 298))
  {
    v7 = 0;
  }

  else
  {
    v7 = 60 * v6;
    if ((v6 * 60) >> 64 != (60 * v6) >> 63)
    {
      goto LABEL_52;
    }
  }

  v35 = *(v0 + 168);
  v36 = *(v0 + 144);
  v4 = *(v0 + 104);
  v37 = *(v0 + 64);
  *(v0 + 224) = sub_1D19B5CA0(*(v0 + 297), v6, *(v0 + 298) & 1);
  sub_1D19A1778(v37, v35, type metadata accessor for EndpointPath);
  *(v35 + *(v36 + 20)) = 19;
  v1 = *(v35 + *(v4 + 24));
  sub_1D199FA0C(v35, type metadata accessor for ClusterPath);
  v38 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v38;
  v2 = sub_1D171D15C(v1);
  v41 = *(v38 + 16);
  v42 = (v40 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_49;
  }

  LOBYTE(v3) = v40;
  if (*(v38 + 24) < v43)
  {
    sub_1D172684C(v43, isUniquelyReferenced_nonNull_native);
    i = v83;
    v45 = sub_1D171D15C(v1);
    if ((v3 & 1) == (v46 & 1))
    {
      v2 = v45;
      goto LABEL_23;
    }

LABEL_37:

    return sub_1D1E690FC();
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_53;
  }

  for (i = MEMORY[0x1E69E7CC8]; ; i = v83)
  {
LABEL_23:

    if ((v3 & 1) == 0)
    {
      v47 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
      sub_1D19DD7DC(v2, v1, v47, i);
    }

    v1 = i[7];
    v48 = *(v1 + 8 * v2);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v1 + 8 * v2);
    *(v1 + 8 * v2) = 0x8000000000000000;
    sub_1D1753B88(1, 2, 0x1300000023, v49);
    *(v1 + 8 * v2) = v83;
    if (v7 < 0)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v50 = *(v0 + 160);
    v51 = *(v0 + 144);
    sub_1D19A1778(*(v0 + 64), v50, type metadata accessor for EndpointPath);
    *(v50 + *(v51 + 20)) = 19;
    v1 = *(v50 + *(v4 + 24));
    sub_1D199FA0C(v50, type metadata accessor for ClusterPath);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v83 = i;
    v2 = sub_1D171D15C(v1);
    v54 = i[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_50;
    }

    v57 = v53;
    if (i[3] >= v56)
    {
      if ((v52 & 1) == 0)
      {
        sub_1D1737DF0();
        i = v83;
      }
    }

    else
    {
      sub_1D172684C(v56, v52);
      i = v83;
      v58 = sub_1D171D15C(v1);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_37;
      }

      v2 = v58;
    }

    if ((v57 & 1) == 0)
    {
      v60 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
      sub_1D19DD7DC(v2, v1, v60, i);
    }

    v61 = *(v0 + 144);
    v3 = *(v0 + 152);
    v62 = *(v0 + 64);
    v82 = *(v0 + 297);
    v1 = i[7];
    v63 = *(v1 + 8 * v2);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v1 + 8 * v2);
    *(v1 + 8 * v2) = 0x8000000000000000;
    sub_1D1753B88(v7, 2, 0x1300000024, v64);
    *(v1 + 8 * v2) = v83;
    sub_1D19A1778(v62, v3, type metadata accessor for EndpointPath);
    *(v3 + *(v61 + 20)) = 19;
    v7 = *(v3 + *(v4 + 24));
    sub_1D199FA0C(v3, type metadata accessor for ClusterPath);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v83 = i;
    v2 = sub_1D171D15C(v7);
    v67 = i[2];
    v68 = (v66 & 1) == 0;
    v69 = v67 + v68;
    if (!__OFADD__(v67, v68))
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    sub_1D1737DF0();
  }

  v70 = v66;
  if (i[3] >= v69)
  {
    if ((v65 & 1) == 0)
    {
      sub_1D1737DF0();
      i = v83;
    }
  }

  else
  {
    sub_1D172684C(v69, v65);
    i = v83;
    v71 = sub_1D171D15C(v7);
    if ((v70 & 1) != (v72 & 1))
    {
      goto LABEL_37;
    }

    v2 = v71;
  }

  *(v0 + 232) = i;

  if ((v70 & 1) == 0)
  {
    v73 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v2, v7, v73, i);
  }

  v74 = *(v0 + 176);
  v75 = *(v0 + 144);
  v76 = *(v0 + 64);
  v77 = i[7];
  v78 = *(v77 + 8 * v2);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(v77 + 8 * v2);
  *(v77 + 8 * v2) = 0x8000000000000000;
  sub_1D1753B88(v82, 0, 0x131349000ELL, v79);
  *(v77 + 8 * v2) = v83;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v76, v74, type metadata accessor for EndpointPath);
  *(v74 + *(v75 + 20)) = 19;
  v80 = swift_task_alloc();
  *(v0 + 240) = v80;
  *v80 = v0;
  v80[1] = sub_1D1982274;
  v81 = *(v0 + 176);

  return sub_1D1A092C4(v81);
}

uint64_t sub_1D1982094()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1D1982958;
  }

  else
  {
    v3 = sub_1D19821A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19821A8()
{
  v1 = v0[24];
  swift_unknownObjectRelease();
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v9 = v0[11];
  v8 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1982274(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 248) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D19823A8, 0, 0);
}

uint64_t sub_1D19823A8()
{
  v21 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 192);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 256) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 264) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 272) = v20;
  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_1D19825AC;
  v15 = *(v0 + 248);

  return sub_1D19167E4(0xD00000000000001ALL, 0x80000001D1EC0A60, v15, v7, v12, v13, &unk_1D1E8A040, v10);
}

uint64_t sub_1D19825AC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  v2[36] = v0;

  v5 = v2[34];
  if (v0)
  {
    v6 = v2[32];

    v7 = sub_1D198270C;
  }

  else
  {
    v9 = v2[32];
    v8 = v2[33];
    v10 = v2[31];

    v7 = sub_1D19A1E6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D198270C()
{
  v1 = *(v0 + 288);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 64);

    v5 = *(v0 + 48);
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

  v11 = *(v0 + 264);
  v12 = *(v0 + 248);
  v13 = *(v0 + 192);

  swift_unknownObjectRelease();
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D1982958()
{
  v1 = v0[24];
  swift_unknownObjectRelease();
  v2 = v0[27];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t type metadata accessor for StaticThermostatClusterGroup()
{
  result = qword_1EE07B968;
  if (!qword_1EE07B968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.pauseFollowingGuidance(untilTomorrow:)(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 304) = a1;
  v3 = type metadata accessor for StaticThermostatClusterGroup();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 + 64);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  v6 = sub_1D1E669FC();
  *(v2 + 120) = v6;
  v7 = *(v6 - 8);
  *(v2 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v9 = type metadata accessor for EndpointPath(0);
  *(v2 + 144) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v2 + 160) = v11;
  v12 = *(v11 - 8);
  *(v2 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v14 = type metadata accessor for ClusterPath(0);
  *(v2 + 184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1982CB0, 0, 0);
}

uint64_t sub_1D1982CB0()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  sub_1D19A1778(v0[7], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 29;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_1D1982DD0;
  v10 = v0[22];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D1982DD0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[26];
  v6 = v3[25];
  v7 = v3[22];
  v8 = v3[21];
  v9 = v3[20];
  v11 = *v2;
  v4[27] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1982F68, 0, 0);
}

uint64_t sub_1D1982F68()
{
  v71 = v0;
  if (!*(v0 + 216))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_8:
      v12 = *(v0 + 88);
      v13 = *(v0 + 56);
      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D19A1778(v13, v12, type metadata accessor for StaticThermostatClusterGroup);
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 200);
        v18 = *(v0 + 184);
        v19 = *(v0 + 88);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v70 = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC0AA0, &v70);
        *(v20 + 12) = 2080;
        sub_1D19A1778(v19, v17, type metadata accessor for EndpointPath);
        *(v17 + *(v18 + 20)) = 19;
        v22 = ClusterPath.description.getter();
        v24 = v23;
        sub_1D199FA0C(v17, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v19, type metadata accessor for StaticThermostatClusterGroup);
        v25 = sub_1D1B1312C(v22, v24, &v70);

        *(v20 + 14) = v25;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v21, -1, -1);
        MEMORY[0x1D3893640](v20, -1, -1);
      }

      else
      {
        v30 = *(v0 + 88);

        sub_1D199FA0C(v30, type metadata accessor for StaticThermostatClusterGroup);
      }

      v32 = *(v0 + 192);
      v31 = *(v0 + 200);
      v33 = *(v0 + 176);
      v34 = *(v0 + 152);
      v35 = *(v0 + 136);
      v37 = *(v0 + 104);
      v36 = *(v0 + 112);
      v39 = *(v0 + 88);
      v38 = *(v0 + 96);

      v40 = *(v0 + 8);

      return v40();
    }

LABEL_37:
    swift_once();
    goto LABEL_8;
  }

  v1 = *(v0 + 304);
  *(v0 + 224) = *(v0 + 32);
  if (v1 == 1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 112);
    sub_1D19AFF38(v4);
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v43 = *(v0 + 128);
      v42 = *(v0 + 136);
      v44 = *(v0 + 120);
      (*(v43 + 32))(v42, *(v0 + 112), v44);
      sub_1D1E6699C();
      v46 = v45;
      (*(v43 + 8))(v42, v44);
      v11 = v46 + -946684800.0;
      goto LABEL_16;
    }

    sub_1D1741A30(*(v0 + 112), &qword_1EC642570, &qword_1D1E6C6A0);
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 56);
  v9 = *(*(v0 + 64) + 48);
  v10 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  sub_1D1741C08(v8 + *(v10 + 32) + v9, v7, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1D1741A30(*(v0 + 104), &qword_1EC642570, &qword_1D1E6C6A0);
    v11 = 0.0;
  }

  else
  {
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v28 = *(v0 + 104);
    sub_1D1E6699C();
    v11 = v29 + -946684800.0;
    (*(v27 + 8))(v28, v26);
  }

LABEL_16:
  *(v0 + 232) = sub_1D19B60F8();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v11 <= -1.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 192);
  v49 = *(v0 + 144);
  sub_1D19A1778(*(v0 + 56), v48, type metadata accessor for EndpointPath);
  *(v48 + *(v47 + 20)) = 29;
  v50 = *(v48 + *(v49 + 24));
  sub_1D199FA0C(v48, type metadata accessor for ClusterPath);
  v51 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v51;
  v54 = sub_1D171D15C(v50);
  v55 = v51[2];
  v56 = (v53 & 1) == 0;
  v57 = v55 + v56;
  if (__OFADD__(v55, v56))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v58 = v53;
  if (v51[3] >= v57)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v51 = v70;
    }
  }

  else
  {
    sub_1D172684C(v57, isUniquelyReferenced_nonNull_native);
    v51 = v70;
    v59 = sub_1D171D15C(v50);
    if ((v58 & 1) != (v60 & 1))
    {

      return sub_1D1E690FC();
    }

    v54 = v59;
  }

  *(v0 + 240) = v51;

  if ((v58 & 1) == 0)
  {
    v61 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v54, v50, v61, v51);
  }

  v62 = *(v0 + 200);
  v63 = *(v0 + 184);
  v64 = *(v0 + 56);
  v65 = v51[7];
  v66 = *(v65 + 8 * v54);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v65 + 8 * v54);
  *(v65 + 8 * v54) = 0x8000000000000000;
  sub_1D1753B88(v11, 2, 0x1300000009, v67);
  *(v65 + 8 * v54) = v70;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v64, v62, type metadata accessor for EndpointPath);
  *(v62 + *(v63 + 20)) = 29;
  v68 = swift_task_alloc();
  *(v0 + 248) = v68;
  *v68 = v0;
  v68[1] = sub_1D1983668;
  v69 = *(v0 + 200);

  return sub_1D1A092C4(v69);
}

uint64_t sub_1D1983668(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 256) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198379C, 0, 0);
}

uint64_t sub_1D198379C()
{
  v21 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 216);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 264) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 272) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 280) = v20;
  v14 = swift_task_alloc();
  *(v0 + 288) = v14;
  *v14 = v0;
  v14[1] = sub_1D19839A0;
  v15 = *(v0 + 256);

  return sub_1D19167E4(0xD000000000000016, 0x80000001D1EC0AD0, v15, v7, v12, v13, &unk_1D1E8A070, v10);
}

uint64_t sub_1D19839A0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  v2[37] = v0;

  v5 = v2[35];
  if (v0)
  {
    v6 = v2[33];

    v7 = sub_1D1983BD8;
  }

  else
  {
    v9 = v2[33];
    v8 = v2[34];
    v10 = v2[32];

    v7 = sub_1D1983B00;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1983B00()
{
  v1 = v0[27];
  swift_unknownObjectRelease();
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1983BD8()
{
  v1 = *(v0 + 296);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 56);

    v5 = *(v0 + 48);
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

  else
  {
    v25 = *(v0 + 296);
  }

  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 216);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 176);
  v17 = *(v0 + 152);
  v18 = *(v0 + 136);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v23 = *(v0 + 96);
  v24 = *(v0 + 88);

  swift_unknownObjectRelease();

  v21 = *(v0 + 8);

  return v21();
}

__n128 StaticThermostatClusterGroup.coolingSetpointConfig.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup() + 36);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v3 + 57);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 StaticThermostatClusterGroup.heatingSetpointConfig.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup() + 40);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v3 + 57);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1984070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = v5 - 8;
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v73 = type metadata accessor for StaticThermostatClusterGroup();
  v64 = *(v73 - 8);
  v65 = v73 - 8;
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[1];
  v60 = *a2;
  v69 = a1;
  v70 = type metadata accessor for EndpointPath;
  sub_1D19A1778(a1, v17, type metadata accessor for EndpointPath);
  v19 = v14;
  sub_1D19A1778(a1, v14, type metadata accessor for EndpointPath);
  v20 = v7;
  v66 = v7;
  v14[*(v7 + 28)] = 19;
  v74 = type metadata accessor for ClusterPath;
  v71 = v14;
  sub_1D19A1778(v14, v12, type metadata accessor for ClusterPath);
  v68 = type metadata accessor for EndpointPath(0);
  LODWORD(v7) = *&v12[*(v68 + 24)];
  v21 = v12[*(v20 + 28)];

  v67 = type metadata accessor for ClusterPath;
  v22 = v12;
  sub_1D199FA0C(v12, type metadata accessor for ClusterPath);
  v23 = v7;
  v24 = v60;
  v25 = (sub_1D192B5B4(65532, v7 | (v21 << 16), v60, v18) & 0x100000100) == 256;
  v27 = v73;
  v26 = v74;
  v17[*(v73 + 24)] = v25;
  v28 = v22;
  v63 = v22;
  sub_1D19A1778(v19, v22, v26);
  *&v86[0] = v24;
  *(&v86[0] + 1) = v18;
  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;
  v29 = *(v27 + 28);
  swift_bridgeObjectRetain_n();
  v30 = v17;
  sub_1D19A3E24(v28, v86, &v88, &v17[v29]);
  v31 = &v17[*(v27 + 32)];
  v32 = v30;
  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;

  v33 = sub_1D19B1414();
  LOBYTE(v27) = v34;
  v35 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  v36 = &v31[*(v35 + 32)];
  *v36 = v33;
  v36[8] = v27 & 1;
  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;
  *v31 = sub_1D19B1424();
  v31[8] = v37 & 1;
  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;
  v38 = sub_1D19B1528();
  if (v38 == 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  if (!v38)
  {
    v39 = 0;
  }

  v65 = v64;
  if ((v38 >> 8))
  {
    v39 = 2;
  }

  v31[9] = v39;
  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;
  v40 = sub_1D19B1610();
  *(v31 + 5) = v40;
  v31[12] = BYTE2(v40) & 1;
  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;
  sub_1D19B16F4(&v31[*(v35 + 28)]);

  *&v88 = v24;
  *(&v88 + 1) = v18;
  LOWORD(v89) = v23;
  BYTE2(v89) = v21;

  sub_1D19A4218(&v88, v86);
  v41 = v73;
  v42 = v32;
  v43 = (v32 + *(v73 + 36));
  v44 = v87[0];
  v43[2] = v86[2];
  v43[3] = v44;
  *(v43 + 57) = *(v87 + 9);
  v45 = v86[1];
  *v43 = v86[0];
  v43[1] = v45;
  v76 = v24;
  v77 = v18;
  v78 = v23;
  v61 = v23;
  v62 = v21;
  v79 = v21;

  sub_1D19A4350(&v76, &v88);
  v46 = (v32 + v41[10]);
  v47 = v91[0];
  v46[2] = v90;
  v46[3] = v47;
  *(v46 + 57) = *(v91 + 9);
  v48 = v89;
  *v46 = v88;
  v46[1] = v48;
  v76 = v24;
  v77 = v18;
  v78 = v23;
  v79 = v21;
  v49 = sub_1D19B0F20();
  v50 = (v32 + v41[11]);
  *v50 = v49;
  v50[1] = HIBYTE(v49) & 1;
  v51 = v69;
  v52 = v75;
  sub_1D19A1778(v69, v75, v70);
  v53 = v66;
  *(v52 + *(v66 + 28)) = 29;
  v54 = v52;
  v55 = v63;
  sub_1D19A1778(v54, v63, v74);
  v56 = v67;
  v57 = v55;
  LOWORD(v55) = *(v55 + *(v68 + 24));
  LOBYTE(v53) = *(v57 + *(v53 + 28));
  sub_1D199FA0C(v57, v67);
  v76 = v24;
  v77 = v18;
  v78 = v55;
  v79 = v53;
  sub_1D19A1EA8(&v76, (v42 + v41[12]));
  v82 = v24;
  v83 = v18;
  v80 = &type metadata for BasicClusterPath;
  v81 = sub_1D18F6128();
  LOWORD(v76) = v61;
  BYTE2(v76) = v62;

  AttributeValueSet.value(for:in:)(323551234, &v76, &v84);

  __swift_destroy_boxed_opaque_existential_1(&v76);
  LOBYTE(v55) = v85 != 0;
  sub_1D1741A30(&v84, &qword_1EC645D58, &unk_1D1E7E530);
  sub_1D199FA0C(v51, type metadata accessor for EndpointPath);
  sub_1D199FA0C(v75, v56);
  sub_1D199FA0C(v71, v56);

  *(v42 + v41[5]) = v55;
  v58 = v72;
  sub_1D199FB14(v42, v72, type metadata accessor for StaticThermostatClusterGroup);
  return (*(v65 + 56))(v58, 0, 1, v41);
}

void StaticThermostatClusterGroup.preset(for:)(char *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + *(type metadata accessor for StaticThermostatClusterGroup() + 28) + 16);
  if (v5 && (v6 = *(v5 + 16)) != 0)
  {
    v7 = (v5 + 32);
    while (1)
    {
      v8 = v7[3];
      v9 = *v7;
      v10 = v7[1];
      v14[2] = v7[2];
      v14[3] = v8;
      v14[0] = v9;
      v14[1] = v10;
      if ((0xFE060504030201uLL >> (8 * v4)) == (0xFE060504030201uLL >> (8 * v10)))
      {
        break;
      }

      v7 += 4;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v11 = v7[1];
    *a2 = *v7;
    a2[1] = v11;
    v12 = v7[3];
    a2[2] = v7[2];
    a2[3] = v12;
    sub_1D17806DC(v14, &v13);
  }

  else
  {
LABEL_6:
    LOBYTE(v14[0]) = v4;
    ThermostatPreset.init(for:name:)(v14, 0, 0, a2);
  }
}

{
  v4 = *a1;
  v5 = *(v2 + *(type metadata accessor for StaticThermostatClusterGroup() + 28) + 16);
  if (v5 && (v6 = *(v5 + 16)) != 0)
  {
    v7 = (v5 + 32);
    while (1)
    {
      v8 = v7[3];
      v9 = *v7;
      v10 = v7[1];
      v14[2] = v7[2];
      v14[3] = v8;
      v14[0] = v9;
      v14[1] = v10;
      if ((0xFE060504030201uLL >> (8 * v4)) == (0xFE060504030201uLL >> (8 * v10)))
      {
        break;
      }

      v7 += 4;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v11 = v7[1];
    *a2 = *v7;
    a2[1] = v11;
    v12 = v7[3];
    a2[2] = v7[2];
    a2[3] = v12;
    sub_1D17806DC(v14, &v13);
  }

  else
  {
LABEL_6:
    LOBYTE(v14[0]) = v4;
    ThermostatPreset.init(for:name:)(v14, 0, 0, a2);
  }
}

uint64_t StaticThermostatClusterGroup.preset(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  result = type metadata accessor for StaticThermostatClusterGroup();
  v53 = *(v2 + *(result + 28) + 16);
  if (!v53 || (v7 = *(v53 + 16)) == 0)
  {
LABEL_71:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1;
    goto LABEL_72;
  }

  v8 = 0;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 == 0xC000000000000000;
  }

  v10 = !v9;
  v52 = v10;
  v11 = v4 >> 62;
  v50 = *(v53 + 16);
  v12 = (v53 + 32);
  v13 = __OFSUB__(HIDWORD(v5), v5);
  v49 = v13;
  v51 = a2;
  while (1)
  {
    if (v8 >= *(v53 + 16))
    {
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
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = v12[2];
    v59 = v12[3];
    v57 = v15;
    v58 = v16;
    v56 = v14;
    v17 = v12[1];
    v60 = *v12;
    v61 = v17;
    v18 = v12[3];
    v62 = v12[2];
    v63 = v18;
    v20 = *(&v57 + 1);
    v19 = v16;
    if (v16 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_1D1771B38(*(&v57 + 1), v58);
        sub_1D1771B38(v5, v4);
        sub_1D17806DC(&v56, v55);
        goto LABEL_76;
      }

      goto LABEL_14;
    }

    if (v4 >> 60 != 15)
    {
      break;
    }

LABEL_14:
    sub_1D1771B38(*(&v57 + 1), v58);
    sub_1D1771B38(v5, v4);
    sub_1D1716AA4(v20, v19);
    result = sub_1D1716AA4(v5, v4);
LABEL_15:
    ++v8;
    v12 += 4;
    if (v7 == v8)
    {
      goto LABEL_71;
    }
  }

  v21 = v58 >> 62;
  if (v58 >> 62 != 3)
  {
    v25 = v4 >> 62;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v28 = *(*(&v57 + 1) + 16);
        v27 = *(*(&v57 + 1) + 24);
        v29 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v29)
        {
          goto LABEL_82;
        }

        if (v11 > 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
LABEL_41:
        v26 = 0;
        if (v25 > 1)
        {
LABEL_42:
          if (v25 != 2)
          {
            if (!v26)
            {
LABEL_74:
              sub_1D1771B38(*(&v57 + 1), v58);
              sub_1D1771B38(v5, v4);
              sub_1D17806DC(&v56, v55);
              sub_1D1716AA4(v5, v4);
              goto LABEL_76;
            }

            goto LABEL_51;
          }

          v32 = *(v5 + 16);
          v31 = *(v5 + 24);
          v29 = __OFSUB__(v31, v32);
          v30 = v31 - v32;
          if (v29)
          {
            goto LABEL_80;
          }

LABEL_44:
          if (v26 == v30)
          {
            if (v26 < 1)
            {
              goto LABEL_74;
            }

            if (v21 > 1)
            {
              if (v21 == 2)
              {
                v46 = *(*(&v57 + 1) + 24);
                v48 = *(*(&v57 + 1) + 16);
                sub_1D1771B38(*(&v57 + 1), v58);
                sub_1D1771B38(v5, v4);
                sub_1D1771B38(v20, v19);
                sub_1D1771B38(v5, v4);
                sub_1D17806DC(&v56, v55);
                v34 = sub_1D1E6616C();
                if (v34)
                {
                  v35 = v34;
                  v36 = sub_1D1E6619C();
                  v37 = v48;
                  if (__OFSUB__(v48, v36))
                  {
                    goto LABEL_85;
                  }

                  v45 = (v48 - v36 + v35);
                }

                else
                {
                  v45 = 0;
                  v37 = v48;
                }

                if (__OFSUB__(v46, v37))
                {
                  goto LABEL_84;
                }

                sub_1D1E6618C();
                v40 = v45;
              }

              else
              {
                memset(v54, 0, 14);
                sub_1D1771B38(*(&v57 + 1), v58);
                sub_1D1771B38(v5, v4);
                sub_1D1771B38(v20, v19);
                sub_1D1771B38(v5, v4);
                sub_1D17806DC(&v56, v55);
                v40 = v54;
              }
            }

            else
            {
              if (!v21)
              {
                v54[0] = *(&v57 + 1);
                LOWORD(v54[1]) = v58;
                *(&v54[1] + 2) = *(&v58 + 2);
                sub_1D1771B38(*(&v57 + 1), v58);
                sub_1D1771B38(v5, v4);
                sub_1D1771B38(v20, v19);
                sub_1D1771B38(v5, v4);
                sub_1D17806DC(&v56, v55);
                sub_1D199EDB4(v54, v5, v4, v55);
                a2 = v51;
                sub_1D1716AA4(v5, v4);
                sub_1D1716AA4(v20, v19);
                sub_1D1716AA4(v5, v4);
                v33 = v55[0];
                result = sub_1D1716AA4(v20, v19);
                if (v33)
                {
                  goto LABEL_77;
                }

LABEL_69:
                v7 = v50;
                goto LABEL_70;
              }

              v47 = SDWORD2(v57);
              if (*(&v57 + 1) >> 32 < SDWORD2(v57))
              {
                goto LABEL_83;
              }

              sub_1D1771B38(*(&v57 + 1), v58);
              sub_1D1771B38(v5, v4);
              sub_1D1771B38(v20, v19);
              sub_1D1771B38(v5, v4);
              sub_1D17806DC(&v56, v55);
              v38 = sub_1D1E6616C();
              if (v38)
              {
                v39 = sub_1D1E6619C();
                if (__OFSUB__(v47, v39))
                {
                  goto LABEL_86;
                }

                v38 += v47 - v39;
              }

              sub_1D1E6618C();
              v40 = v38;
            }

            sub_1D199EDB4(v40, v5, v4, v55);
            sub_1D1716AA4(v5, v4);
            sub_1D1716AA4(v20, v19);
            sub_1D1716AA4(v5, v4);
            v41 = v55[0];
            result = sub_1D1716AA4(v20, v19);
            a2 = v51;
            if (v41)
            {
              goto LABEL_77;
            }

            goto LABEL_69;
          }

LABEL_51:
          sub_1D1771B38(*(&v57 + 1), v58);
          sub_1D1771B38(v5, v4);
          sub_1D17806DC(&v56, v55);
          sub_1D1716AA4(v5, v4);
          sub_1D1716AA4(v20, v19);
LABEL_70:
          result = sub_1D1780738(&v56);
          goto LABEL_15;
        }
      }
    }

    else if (v21)
    {
      LODWORD(v26) = HIDWORD(v57) - DWORD2(v57);
      if (__OFSUB__(HIDWORD(v57), DWORD2(v57)))
      {
        goto LABEL_81;
      }

      v26 = v26;
      if (v11 > 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = BYTE6(v58);
      if (v11 > 1)
      {
        goto LABEL_42;
      }
    }

    v30 = BYTE6(v4);
    if (v25)
    {
      v30 = HIDWORD(v5) - v5;
      if (v49)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_44;
  }

  if (*(&v57 + 1))
  {
    v22 = 0;
  }

  else
  {
    v22 = v58 == 0xC000000000000000;
  }

  v24 = !v22 || v4 >> 62 != 3;
  if ((v24 | v52))
  {
    v25 = v4 >> 62;
    goto LABEL_41;
  }

  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D17806DC(&v56, v55);
  sub_1D1716AA4(0, 0xC000000000000000);
  v20 = 0;
LABEL_76:
  result = sub_1D1716AA4(v20, v19);
LABEL_77:
  v43 = v61;
  *a2 = v60;
  *(a2 + 16) = v43;
  v44 = v63;
  *(a2 + 32) = v62;
  *(a2 + 48) = v44;
LABEL_72:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StaticThermostatClusterGroup.presetType(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for StaticThermostatClusterGroup();
  v6 = *(v2 + *(result + 28) + 8);
  if (v6)
  {
    v7 = (v6 + 32);
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v9 = v7 + 24;
      v10 = *v7;
      v7 += 24;
      if ((0xFE060504030201uLL >> (8 * v4)) == (0xFE060504030201uLL >> (8 * v10)))
      {
        v11 = *(v9 - 2);
        v12 = *(v9 - 8);
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v12;
        return result;
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t StaticThermostatClusterGroup.presetInfo(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  result = type metadata accessor for StaticThermostatClusterGroup();
  v6 = *(v2 + *(result + 28) + 24);
  if (!v6 || (v7 = *(v6 + 16)) == 0)
  {
LABEL_72:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 512;
    goto LABEL_73;
  }

  v8 = 0;
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 == 0xC000000000000000;
  }

  v10 = !v9;
  v53 = v10;
  v11 = v3 >> 62;
  v12 = __OFSUB__(HIDWORD(v4), v4);
  v51 = v12;
  v52 = *(v6 + 16);
  v13 = (v6 + 49);
  while (1)
  {
    if (v8 >= *(v6 + 16))
    {
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
    }

    v16 = *(v13 - 17);
    v17 = *(v13 - 9);
    v18 = *v13;
    v19 = *(v13 - 1);
    if (v17 >> 60 == 15)
    {
      if (v3 >> 60 == 15)
      {
        if (*v13)
        {
          v41 = 256;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41 | v19;
        sub_1D1771B38(*(v13 - 17), *(v13 - 9));
        sub_1D1771B38(v16, v17);
        sub_1D1771B38(v4, v3);
        goto LABEL_86;
      }

      goto LABEL_14;
    }

    if (v3 >> 60 != 15)
    {
      break;
    }

LABEL_14:
    sub_1D1771B38(*(v13 - 17), *(v13 - 9));
    sub_1D1771B38(v4, v3);
    sub_1D1716AA4(v16, v17);
    v14 = v4;
    v15 = v3;
LABEL_15:
    result = sub_1D1716AA4(v14, v15);
    ++v8;
    v13 += 24;
    if (v7 == v8)
    {
      goto LABEL_72;
    }
  }

  v20 = v17 >> 62;
  if (v17 >> 62 != 3)
  {
    v24 = v3 >> 62;
    if (v20 <= 1)
    {
      if (v20)
      {
        LODWORD(v25) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_95;
        }

        v25 = v25;
        if (v11 > 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v25 = BYTE6(v17);
        if (v11 > 1)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_38;
    }

    if (v20 != 2)
    {
      goto LABEL_41;
    }

    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    v28 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v28)
    {
      goto LABEL_96;
    }

    if (v11 <= 1)
    {
      goto LABEL_38;
    }

LABEL_42:
    if (v24 == 2)
    {
      v31 = *(v4 + 16);
      v30 = *(v4 + 24);
      v28 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v28)
      {
        goto LABEL_94;
      }

      goto LABEL_44;
    }

    if (!v25)
    {
LABEL_78:
      if (*v13)
      {
        v43 = 256;
      }

      else
      {
        v43 = 0;
      }

      v42 = v43 | v19;
      sub_1D1771B38(*(v13 - 17), *(v13 - 9));
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v4, v3);
      sub_1D1716AA4(v4, v3);
LABEL_86:
      result = sub_1D1716AA4(v16, v17);
      goto LABEL_87;
    }

    goto LABEL_50;
  }

  if (v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17 == 0xC000000000000000;
  }

  v23 = !v21 || v3 >> 62 != 3;
  if (((v23 | v53) & 1) == 0)
  {
    if (*v13)
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    v42 = v44 | v19;
    sub_1D1771B38(0, 0xC000000000000000);
    sub_1D1771B38(0, 0xC000000000000000);
    sub_1D1771B38(0, 0xC000000000000000);
    sub_1D1716AA4(0, 0xC000000000000000);
    v16 = 0;
    goto LABEL_86;
  }

  v24 = v3 >> 62;
LABEL_41:
  v25 = 0;
  if (v24 > 1)
  {
    goto LABEL_42;
  }

LABEL_38:
  v29 = BYTE6(v3);
  if (v24)
  {
    v29 = HIDWORD(v4) - v4;
    if (v51)
    {
      goto LABEL_93;
    }
  }

LABEL_44:
  if (v25 != v29)
  {
LABEL_50:
    sub_1D1771B38(*(v13 - 17), *(v13 - 9));
    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v4, v3);
    sub_1D1716AA4(v4, v3);
    sub_1D1716AA4(v16, v17);
LABEL_71:
    v14 = v16;
    v15 = v17;
    goto LABEL_15;
  }

  if (v25 < 1)
  {
    goto LABEL_78;
  }

  v49 = *v13;
  v50 = *(v13 - 1);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v47 = *(v16 + 24);
      v48 = *(v16 + 16);
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v4, v3);
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v4, v3);
      v32 = sub_1D1E6616C();
      if (v32)
      {
        v33 = v32;
        v34 = sub_1D1E6619C();
        v35 = v48;
        if (__OFSUB__(v48, v34))
        {
          goto LABEL_99;
        }

        v46 = v48 - v34 + v33;
      }

      else
      {
        v46 = 0;
        v35 = v48;
      }

      if (__OFSUB__(v47, v35))
      {
        goto LABEL_98;
      }

      sub_1D1E6618C();
      v38 = v46;
      goto LABEL_68;
    }

    memset(v56, 0, 14);
    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v4, v3);
    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v4, v3);
LABEL_64:
    sub_1D199EDB4(v56, v4, v3, &v55);
    sub_1D1716AA4(v4, v3);
    sub_1D1716AA4(v16, v17);
    sub_1D1716AA4(v4, v3);
    v39 = v55;
  }

  else
  {
    if (!v20)
    {
      v56[0] = *(v13 - 17);
      LOWORD(v56[1]) = v17;
      BYTE2(v56[1]) = BYTE2(v17);
      BYTE3(v56[1]) = BYTE3(v17);
      BYTE4(v56[1]) = BYTE4(v17);
      BYTE5(v56[1]) = BYTE5(v17);
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v4, v3);
      sub_1D1771B38(v16, v17);
      sub_1D1771B38(v4, v3);
      goto LABEL_64;
    }

    if (v16 >> 32 < v16)
    {
      goto LABEL_97;
    }

    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v4, v3);
    sub_1D1771B38(v16, v17);
    sub_1D1771B38(v4, v3);
    v36 = sub_1D1E6616C();
    if (v36)
    {
      v37 = sub_1D1E6619C();
      if (__OFSUB__(v16, v37))
      {
        goto LABEL_100;
      }

      v36 += v16 - v37;
    }

    sub_1D1E6618C();
    v38 = v36;
LABEL_68:
    sub_1D199EDB4(v38, v4, v3, v56);
    sub_1D1716AA4(v4, v3);
    sub_1D1716AA4(v16, v17);
    sub_1D1716AA4(v4, v3);
    v39 = v56[0];
  }

  result = sub_1D1716AA4(v16, v17);
  if ((v39 & 1) == 0)
  {
    v7 = v52;
    goto LABEL_71;
  }

  if (v49)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v42 = v45 | v50;
LABEL_87:
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v42;
LABEL_73:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL StaticThermostatClusterGroup.supportsCooling(for:)(uint64_t a1)
{
  StaticThermostatClusterGroup.systemMode(for:)(a1, &v4);
  result = 1;
  if (((1 << v4) & 0x1F7) == 0)
  {
    if (v4 == 3)
    {
      return 0;
    }

    else
    {
      v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup() + 28);
      return *(v3 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 80)) != 2;
    }
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.systemMode(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = v2 + *(type metadata accessor for StaticThermostatClusterGroup() + 28);
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  if (*(v6 + *(result + 60)) != 1 || (v8 = *(v6 + 24)) == 0 || (v46 = *(v8 + 16)) == 0)
  {
LABEL_75:
    v17 = 9;
    goto LABEL_76;
  }

  v9 = 0;
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4 == 0xC000000000000000;
  }

  v11 = !v10;
  v45 = v11;
  v12 = v4 >> 62;
  v13 = __OFSUB__(HIDWORD(v5), v5);
  v43 = v13;
  v44 = a2;
  v14 = (v8 + 48);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
    }

    v16 = *(v14 - 2);
    v15 = *(v14 - 1);
    v17 = *v14;
    if (v15 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_1D1771B38(*(v14 - 2), *(v14 - 1));
        sub_1D1771B38(v5, v4);
        goto LABEL_79;
      }

LABEL_19:
      sub_1D1771B38(*(v14 - 2), *(v14 - 1));
      sub_1D1771B38(v5, v4);
      sub_1D1716AA4(v16, v15);
      v18 = v5;
      v19 = v4;
LABEL_20:
      result = sub_1D1716AA4(v18, v19);
      goto LABEL_21;
    }

    if (v4 >> 60 == 15)
    {
      goto LABEL_19;
    }

    v20 = v15 >> 62;
    if (v15 >> 62 == 3)
    {
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15 == 0xC000000000000000;
      }

      v23 = !v21 || v12 < 3;
      if (((v23 | v45) & 1) == 0)
      {
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1716AA4(0, 0xC000000000000000);
        v16 = 0;
        goto LABEL_78;
      }

LABEL_45:
      v24 = 0;
      if (v12 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (v20 <= 1)
    {
      break;
    }

    if (v20 != 2)
    {
      goto LABEL_45;
    }

    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_84;
    }

    if (v12 > 1)
    {
      goto LABEL_46;
    }

LABEL_42:
    v28 = BYTE6(v4);
    if (v12)
    {
      v28 = HIDWORD(v5) - v5;
      if (v43)
      {
        goto LABEL_81;
      }
    }

LABEL_48:
    if (v24 != v28)
    {
      goto LABEL_54;
    }

    if (v24 < 1)
    {
      goto LABEL_77;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        memset(v48, 0, 14);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
        goto LABEL_68;
      }

      v41 = *(v16 + 24);
      v42 = *(v16 + 16);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      v31 = sub_1D1E6616C();
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D1E6619C();
        v34 = v42;
        if (__OFSUB__(v42, v33))
        {
          goto LABEL_87;
        }

        v40 = v42 - v33 + v32;
      }

      else
      {
        v40 = 0;
        v34 = v42;
      }

      if (__OFSUB__(v41, v34))
      {
        goto LABEL_86;
      }

      sub_1D1E6618C();
      v37 = v40;
    }

    else
    {
      if (!v20)
      {
        v48[0] = *(v14 - 2);
        LOWORD(v48[1]) = v15;
        BYTE2(v48[1]) = BYTE2(v15);
        BYTE3(v48[1]) = BYTE3(v15);
        BYTE4(v48[1]) = BYTE4(v15);
        BYTE5(v48[1]) = BYTE5(v15);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
LABEL_68:
        sub_1D199EDB4(v48, v5, v4, &v47);
        sub_1D1716AA4(v5, v4);
        sub_1D1716AA4(v16, v15);
        sub_1D1716AA4(v5, v4);
        v38 = v47;
        goto LABEL_73;
      }

      if (v16 >> 32 < v16)
      {
        goto LABEL_85;
      }

      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      v35 = sub_1D1E6616C();
      if (v35)
      {
        v36 = sub_1D1E6619C();
        if (__OFSUB__(v16, v36))
        {
          goto LABEL_88;
        }

        v35 += v16 - v36;
      }

      sub_1D1E6618C();
      v37 = v35;
    }

    sub_1D199EDB4(v37, v5, v4, v48);
    sub_1D1716AA4(v5, v4);
    sub_1D1716AA4(v16, v15);
    sub_1D1716AA4(v5, v4);
    v38 = v48[0];
LABEL_73:
    sub_1D1716AA4(v16, v15);
    result = sub_1D1716AA4(v16, v15);
    a2 = v44;
    if (v38)
    {
      goto LABEL_76;
    }

LABEL_21:
    ++v9;
    v14 += 24;
    v12 = v4 >> 62;
    if (v46 == v9)
    {
      goto LABEL_75;
    }
  }

  if (!v20)
  {
    v24 = BYTE6(v15);
    if (v12 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  LODWORD(v24) = HIDWORD(v16) - v16;
  if (__OFSUB__(HIDWORD(v16), v16))
  {
    goto LABEL_83;
  }

  v24 = v24;
  if (v12 <= 1)
  {
    goto LABEL_42;
  }

LABEL_46:
  if (v12 == 2)
  {
    v30 = *(v5 + 16);
    v29 = *(v5 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_82;
    }

    goto LABEL_48;
  }

  if (v24)
  {
LABEL_54:
    sub_1D1771B38(*(v14 - 2), *(v14 - 1));
    sub_1D1771B38(v16, v15);
    sub_1D1771B38(v5, v4);
    sub_1D1716AA4(v5, v4);
    sub_1D1716AA4(v16, v15);
    v18 = v16;
    v19 = v15;
    goto LABEL_20;
  }

LABEL_77:
  sub_1D1771B38(*(v14 - 2), *(v14 - 1));
  sub_1D1771B38(v16, v15);
  sub_1D1771B38(v5, v4);
  sub_1D1716AA4(v5, v4);
LABEL_78:
  sub_1D1716AA4(v16, v15);
LABEL_79:
  result = sub_1D1716AA4(v16, v15);
LABEL_76:
  *a2 = v17;
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StaticThermostatClusterGroup.operationSequence.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup() + 28);
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v3 + *(result + 80));
  return result;
}

BOOL StaticThermostatClusterGroup.supportsHeating(for:)(uint64_t a1)
{
  StaticThermostatClusterGroup.systemMode(for:)(a1, &v4);
  result = 1;
  if (((1 << v4) & 0x1FB) == 0)
  {
    if (v4 == 2)
    {
      return 0;
    }

    else
    {
      v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup() + 28);
      return *(v3 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 80)) != 1;
    }
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.isAutomationEnabledForPreset(_:)(uint64_t a1)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v52 = *(a1 + 16);
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v53 = *(a1 + 56);
  v4 = *(v1 + *(type metadata accessor for StaticThermostatClusterGroup() + 28) + 24);
  if (!v4 || (v5 = *(v4 + 16)) == 0)
  {
LABEL_74:
    if (qword_1EE07A0A8 != -1)
    {
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  v6 = 0;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 0xC000000000000000;
  }

  v8 = !v7;
  v51 = v8;
  v9 = v2 >> 62;
  v10 = __OFSUB__(HIDWORD(v3), v3);
  v49 = v10;
  v50 = *(v4 + 16);
  v11 = (v4 + 49);
  while (v6 < *(v4 + 16))
  {
    v12 = *(v11 - 17);
    v13 = *(v11 - 9);
    v14 = *v11;
    if (v13 >> 60 == 15)
    {
      if (v2 >> 60 == 15)
      {
        sub_1D1771B38(*(v11 - 17), *(v11 - 9));
        sub_1D1771B38(v3, v2);
        goto LABEL_81;
      }

LABEL_18:
      sub_1D1771B38(*(v11 - 17), *(v11 - 9));
      sub_1D1771B38(v3, v2);
      sub_1D1716AA4(v12, v13);
      v15 = v3;
      v16 = v2;
      goto LABEL_19;
    }

    if (v2 >> 60 == 15)
    {
      goto LABEL_18;
    }

    v17 = v13 >> 62;
    if (v13 >> 62 == 3)
    {
      if (v12)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 == 0xC000000000000000;
      }

      v20 = !v18 || v9 < 3;
      if (((v20 | v51) & 1) == 0)
      {
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1716AA4(0, 0xC000000000000000);
        v12 = 0;
        goto LABEL_80;
      }

LABEL_44:
      v21 = 0;
      if (v9 <= 1)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_44;
      }

      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (v24)
      {
        goto LABEL_86;
      }

      if (v9 <= 1)
      {
        goto LABEL_41;
      }
    }

    else if (v17)
    {
      LODWORD(v21) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_85;
      }

      v21 = v21;
      if (v9 <= 1)
      {
LABEL_41:
        v25 = BYTE6(v2);
        if (v9)
        {
          v25 = HIDWORD(v3) - v3;
          if (v49)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
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
          }
        }

        goto LABEL_47;
      }
    }

    else
    {
      v21 = BYTE6(v13);
      if (v9 <= 1)
      {
        goto LABEL_41;
      }
    }

LABEL_45:
    if (v9 != 2)
    {
      if (!v21)
      {
LABEL_79:
        sub_1D1771B38(*(v11 - 17), *(v11 - 9));
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        sub_1D1716AA4(v3, v2);
LABEL_80:
        sub_1D1716AA4(v12, v13);
LABEL_81:
        sub_1D1716AA4(v12, v13);
        goto LABEL_78;
      }

LABEL_53:
      sub_1D1771B38(*(v11 - 17), *(v11 - 9));
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      sub_1D1716AA4(v3, v2);
      sub_1D1716AA4(v12, v13);
      v15 = v12;
      v16 = v13;
LABEL_19:
      sub_1D1716AA4(v15, v16);
      goto LABEL_20;
    }

    v27 = *(v3 + 16);
    v26 = *(v3 + 24);
    v24 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v24)
    {
      goto LABEL_84;
    }

LABEL_47:
    if (v21 != v25)
    {
      goto LABEL_53;
    }

    if (v21 < 1)
    {
      goto LABEL_79;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {
        memset(v55, 0, 14);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        goto LABEL_67;
      }

      v47 = *(v12 + 24);
      v48 = *(v12 + 16);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      v28 = sub_1D1E6616C();
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D1E6619C();
        v31 = v48;
        if (__OFSUB__(v48, v30))
        {
          goto LABEL_89;
        }

        v46 = v48 - v30 + v29;
      }

      else
      {
        v46 = 0;
        v31 = v48;
      }

      if (__OFSUB__(v47, v31))
      {
        goto LABEL_88;
      }

      sub_1D1E6618C();
      v34 = v46;
    }

    else
    {
      if (!v17)
      {
        v55[0] = *(v11 - 17);
        LOWORD(v55[1]) = v13;
        BYTE2(v55[1]) = BYTE2(v13);
        BYTE3(v55[1]) = BYTE3(v13);
        BYTE4(v55[1]) = BYTE4(v13);
        BYTE5(v55[1]) = BYTE5(v13);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
LABEL_67:
        sub_1D199EDB4(v55, v3, v2, &v54);
        sub_1D1716AA4(v3, v2);
        sub_1D1716AA4(v12, v13);
        sub_1D1716AA4(v3, v2);
        v35 = v54;
        goto LABEL_72;
      }

      if (v12 >> 32 < v12)
      {
        goto LABEL_87;
      }

      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      v32 = sub_1D1E6616C();
      if (v32)
      {
        v33 = sub_1D1E6619C();
        if (__OFSUB__(v12, v33))
        {
          goto LABEL_90;
        }

        v32 += v12 - v33;
      }

      sub_1D1E6618C();
      v34 = v32;
    }

    sub_1D199EDB4(v34, v3, v2, v55);
    sub_1D1716AA4(v3, v2);
    sub_1D1716AA4(v12, v13);
    sub_1D1716AA4(v3, v2);
    v35 = v55[0];
LABEL_72:
    sub_1D1716AA4(v12, v13);
    sub_1D1716AA4(v12, v13);
    v5 = v50;
    if (v35)
    {
      goto LABEL_78;
    }

LABEL_20:
    ++v6;
    v11 += 24;
    v9 = v2 >> 62;
    if (v5 == v6)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_83:
  swift_once();
LABEL_75:
  v36 = sub_1D1E6709C();
  __swift_project_value_buffer(v36, qword_1EE07A0B0);
  sub_1D1771B38(v3, v2);

  v37 = sub_1D1E6707C();
  v38 = sub_1D1E6835C();
  sub_1D1716AA4(v3, v2);

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55[0] = v40;
    *v39 = 136315650;
    *(v39 + 4) = sub_1D1B1312C(0xD000000000000030, 0x80000001D1EC0AF0, v55);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EC0B30, v55);
    *(v39 + 22) = 2080;
    v54 = v52;
    v41 = ThermostatPresetScenario.shortPresetLabel.getter();
    v43 = sub_1D1B1312C(v41, v42, v55);

    *(v39 + 24) = v43;
    _os_log_impl(&dword_1D16EC000, v37, v38, "%s - %s: Autmation not enabled for: %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v40, -1, -1);
    MEMORY[0x1D3893640](v39, -1, -1);
  }

  v14 = 0;
LABEL_78:
  v44 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1D1986640(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E696F70646E65;
    v6 = 0x7365725073657375;
    if (a1 != 2)
    {
      v6 = 0x4373746573657270;
    }

    if (a1)
    {
      v5 = 0xD000000000000019;
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
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6F64617261766C61;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746E696F70746573;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
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

uint64_t sub_1D198679C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19A00AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19867C4(uint64_t a1)
{
  v2 = sub_1D199F910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1986800(uint64_t a1)
{
  v2 = sub_1D199F910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647F38, &qword_1D1E8A078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D199F910();
  sub_1D1E6930C();
  LOBYTE(v33) = 0;
  type metadata accessor for EndpointPath(0);
  sub_1D19A13E0(&qword_1EC646B18, type metadata accessor for EndpointPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticThermostatClusterGroup();
    v12 = *(v3 + v11[5]);
    LOBYTE(v33) = 1;
    sub_1D1E68EDC();
    v13 = *(v3 + v11[6]);
    LOBYTE(v33) = 2;
    sub_1D1E68EDC();
    v14 = v11[7];
    LOBYTE(v33) = 3;
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
    sub_1D19A13E0(&qword_1EC647F48, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
    sub_1D1E68F1C();
    v15 = v11[8];
    v37 = 4;
    type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
    sub_1D19A13E0(&qword_1EC647F50, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
    sub_1D1E68F1C();
    v16 = (v3 + v11[9]);
    v17 = v16[2];
    *v36 = v16[3];
    *&v36[9] = *(v16 + 57);
    v18 = *v16;
    v34 = v16[1];
    v35 = v17;
    v33 = v18;
    v32 = 5;
    sub_1D199F964();
    sub_1D1E68F1C();
    v19 = (v3 + v11[10]);
    v20 = v19[3];
    v30 = v19[2];
    *v31 = v20;
    *&v31[9] = *(v19 + 57);
    v21 = v19[1];
    v28 = *v19;
    v29 = v21;
    v27[15] = 6;
    sub_1D199F9B8();
    sub_1D1E68F1C();
    v22 = (v3 + v11[11]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v28) = 7;
    sub_1D1E68E8C();
    v25 = v11[12];
    LOBYTE(v28) = 8;
    type metadata accessor for StaticThermostatClusterGroup.Alvarado();
    sub_1D19A13E0(&qword_1EC647F68, type metadata accessor for StaticThermostatClusterGroup.Alvarado);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticThermostatClusterGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D19A13E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v4 + 20)));
  v5 = *(v1 + *(v4 + 24));
  sub_1D1E6923C();
  v6 = type metadata accessor for StaticThermostatClusterGroup();
  v7 = *(v1 + v6[5]);
  sub_1D1E6922C();
  v8 = *(v1 + v6[6]);
  sub_1D1E6922C();
  v9 = v1 + v6[7];
  StaticThermostatClusterGroup.PresetsConfig.hash(into:)(a1);
  v10 = v2 + v6[8];
  StaticThermostatClusterGroup.SetpointConfig.hash(into:)();
  v11 = (v2 + v6[9]);
  v44 = v11[2];
  v12 = *(v11 + 24);
  v13 = v11[4];
  v46 = *(v11 + 40);
  v14 = v11[6];
  v15 = *(v11 + 56);
  v16 = v11[8];
  v17 = *(v11 + 72);
  if (*(v11 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v42 = v6;
    v18 = v11[4];
    v19 = *(v11 + 56);
    v20 = v11[6];
    v21 = *(v11 + 72);
    v22 = v11[8];
    v23 = *v11;
    sub_1D1E6922C();
    v24 = v23;
    v16 = v22;
    v17 = v21;
    v14 = v20;
    v15 = v19;
    v13 = v18;
    v6 = v42;
    MEMORY[0x1D3892890](v24);
    if (!v12)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v44);
      if (!v46)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v46)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v13);
    if (!v15)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_1D1E6922C();
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v14);
  if (!v17)
  {
LABEL_6:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v16);
    goto LABEL_12;
  }

LABEL_11:
  sub_1D1E6922C();
LABEL_12:
  v25 = (v2 + v6[10]);
  v45 = v25[2];
  v26 = *(v25 + 24);
  v27 = v25[4];
  v47 = *(v25 + 40);
  v28 = v25[6];
  v29 = *(v25 + 56);
  v30 = v25[8];
  v31 = *(v25 + 72);
  if (*(v25 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v26)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v43 = v25[4];
    v32 = *(v25 + 56);
    v33 = v25[6];
    v34 = *(v25 + 72);
    v35 = v25[8];
    v36 = *v25;
    sub_1D1E6922C();
    v37 = v36;
    v30 = v35;
    v31 = v34;
    v28 = v33;
    v29 = v32;
    v27 = v43;
    MEMORY[0x1D3892890](v37);
    if (!v26)
    {
LABEL_14:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v45);
      if (!v47)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  sub_1D1E6922C();
  if (!v47)
  {
LABEL_15:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v27);
    if (!v29)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1D1E6922C();
    if (!v31)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_20:
  sub_1D1E6922C();
  if (v29)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v28);
  if (!v31)
  {
LABEL_17:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v30);
    goto LABEL_23;
  }

LABEL_22:
  sub_1D1E6922C();
LABEL_23:
  v38 = (v2 + v6[11]);
  if ((v38[1] & 1) == 0)
  {
    v39 = *v38;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v40 = v2 + v6[12];
  return StaticThermostatClusterGroup.Alvarado.hash(into:)();
}

uint64_t StaticThermostatClusterGroup.hashValue.getter()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EndpointPath(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647F70, &qword_1D1E8A080);
  v43 = *(v47 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v16 = &v39 - v15;
  v17 = type metadata accessor for StaticThermostatClusterGroup();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D199F910();
  v46 = v16;
  v23 = v60;
  sub_1D1E692FC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v24 = v10;
  v25 = v44;
  v26 = v43;
  LOBYTE(v56) = 0;
  sub_1D19A13E0(&qword_1EC646B80, type metadata accessor for EndpointPath);
  sub_1D1E68D7C();
  v27 = v20;
  sub_1D199FB14(v45, v20, type metadata accessor for EndpointPath);
  LOBYTE(v56) = 1;
  v28 = v26;
  *(v27 + v17[5]) = sub_1D1E68D3C() & 1;
  LOBYTE(v56) = 2;
  *(v27 + v17[6]) = sub_1D1E68D3C() & 1;
  LOBYTE(v56) = 3;
  sub_1D19A13E0(&qword_1EC647F78, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  sub_1D1E68D7C();
  sub_1D199FB14(v24, v27 + v17[7], type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  LOBYTE(v56) = 4;
  sub_1D19A13E0(&qword_1EC647F80, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
  sub_1D1E68D7C();
  sub_1D199FB14(v25, v27 + v17[8], type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
  v55 = 5;
  sub_1D199FA6C();
  sub_1D1E68D7C();
  v30 = (v27 + v17[9]);
  v31 = v59[0];
  v30[2] = v58;
  v30[3] = v31;
  *(v30 + 57) = *(v59 + 9);
  v32 = v57;
  *v30 = v56;
  v30[1] = v32;
  v50 = 6;
  sub_1D199FAC0();
  sub_1D1E68D7C();
  v33 = (v27 + v17[10]);
  v34 = *v54;
  v33[2] = v53;
  v33[3] = v34;
  *(v33 + 57) = *&v54[9];
  v35 = v52;
  *v33 = v51;
  v33[1] = v35;
  v49 = 7;
  v36 = sub_1D1E68CEC();
  v37 = (v27 + v17[11]);
  *v37 = v36;
  v37[1] = HIBYTE(v36) & 1;
  v49 = 8;
  sub_1D19A13E0(&qword_1EC647F98, type metadata accessor for StaticThermostatClusterGroup.Alvarado);
  v38 = v40;
  sub_1D1E68D7C();
  (*(v28 + 8))(v46, v47);
  sub_1D199FB14(v38, v27 + v17[12], type metadata accessor for StaticThermostatClusterGroup.Alvarado);
  sub_1D19A1778(v27, v39, type metadata accessor for StaticThermostatClusterGroup);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1D199FA0C(v27, type metadata accessor for StaticThermostatClusterGroup);
}

uint64_t sub_1D19878FC()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1987940()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.thermostatCluster.getter()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1987A40, 0, 0);
}

uint64_t sub_1D1987A40()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D1987B30;
  v5 = v0[4];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1987B30(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v7 = *v1;

  sub_1D199FA0C(v4, type metadata accessor for ClusterPath);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t StaticThermostatClusterGroup.alvaradoCluster.getter()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1987D00, 0, 0);
}

uint64_t sub_1D1987D00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D19A1E88;
  v5 = v0[4];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1987DF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_1D19A1778(v4, a2, type metadata accessor for EndpointPath);
  result = type metadata accessor for ClusterPath(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t StaticThermostatClusterGroup.updateAdaptiveTemperatureEnabled(value:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D1987EE8;

  return StaticThermostatClusterGroup.updateActivityStateEnabled(value:)(a1);
}

uint64_t sub_1D1987EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);
LABEL_8:

    return v5();
  }

  if (*(v2 + 48) != 1)
  {
    v5 = *(v4 + 8);
    goto LABEL_8;
  }

  v6 = swift_task_alloc();
  *(v2 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_1D198807C;
  v7 = *(v2 + 16);

  return StaticThermostatClusterGroup.updateFollowSystemMode(value:)(0);
}

uint64_t sub_1D198807C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 40) = v7;
    *v7 = v4;
    v7[1] = sub_1D17D0834;
    v8 = *(v2 + 16);

    return StaticThermostatClusterGroup.updateIgnoresPredictedPresets(to:)(0);
  }
}

uint64_t StaticThermostatClusterGroup.updateActivityStateEnabled(value:)(char a1)
{
  *(v2 + 312) = v1;
  *(v2 + 576) = a1;
  v3 = type metadata accessor for StaticThermostatClusterGroup();
  *(v2 + 320) = v3;
  v4 = *(v3 - 8);
  *(v2 + 328) = v4;
  *(v2 + 336) = *(v4 + 64);
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  v5 = type metadata accessor for EndpointPath(0);
  *(v2 + 360) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 368) = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  *(v2 + 376) = v7;
  v8 = *(v7 - 8);
  *(v2 + 384) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 392) = swift_task_alloc();
  v10 = type metadata accessor for ClusterPath(0);
  *(v2 + 400) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1988390, 0, 0);
}

uint64_t sub_1D1988390()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  sub_1D19A1778(v0[39], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[53] = v9;
  *v9 = v0;
  v9[1] = sub_1D19884B0;
  v10 = v0[49];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D19884B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = v2;
  v4[35] = a1;
  v4[36] = a2;
  v5 = v3[53];
  v6 = v3[52];
  v7 = v3[49];
  v8 = v3[48];
  v9 = v3[47];
  v11 = *v2;
  v4[54] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1988648, 0, 0);
}

uint64_t sub_1D1988648()
{
  v58 = v0;
  if (!*(v0 + 432))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v26 = *(v0 + 344);
      v27 = *(v0 + 312);
      v28 = sub_1D1E6709C();
      __swift_project_value_buffer(v28, qword_1EE07A0B0);
      sub_1D19A1778(v27, v26, type metadata accessor for StaticThermostatClusterGroup);
      v29 = sub_1D1E6707C();
      v30 = sub_1D1E6833C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 416);
        v32 = *(v0 + 400);
        v33 = *(v0 + 344);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57 = v35;
        *v34 = 136315650;
        *(v34 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC0B60, &v57);
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC0B90, &v57);
        *(v34 + 22) = 2080;
        sub_1D19A1778(v33, v31, type metadata accessor for EndpointPath);
        *(v31 + *(v32 + 20)) = 19;
        v36 = ClusterPath.description.getter();
        v38 = v37;
        sub_1D199FA0C(v31, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v33, type metadata accessor for StaticThermostatClusterGroup);
        v39 = sub_1D1B1312C(v36, v38, &v57);

        *(v34 + 24) = v39;
        _os_log_impl(&dword_1D16EC000, v29, v30, "%s: Unable to update %s because device in current home with path %s could not be found.", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v35, -1, -1);
        MEMORY[0x1D3893640](v34, -1, -1);
      }

      else
      {
        v40 = *(v0 + 344);

        sub_1D199FA0C(v40, type metadata accessor for StaticThermostatClusterGroup);
      }

      v42 = *(v0 + 408);
      v41 = *(v0 + 416);
      v43 = *(v0 + 392);
      v44 = *(v0 + 368);
      v46 = *(v0 + 344);
      v45 = *(v0 + 352);

      v47 = *(v0 + 8);

      return v47();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 360);
  v4 = *(v0 + 312);
  v5 = *(v0 + 576);
  *(v0 + 440) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v7 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E696F508];
  v10 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v13;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 448) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v14 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v15 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v15;
  v18 = sub_1D171D15C(v14);
  v19 = v15[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = v17;
  if (v15[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v15 = v57;
    }
  }

  else
  {
    sub_1D172684C(v21, isUniquelyReferenced_nonNull_native);
    v15 = v57;
    v23 = sub_1D171D15C(v14);
    if ((v22 & 1) != (v24 & 1))
    {

      return sub_1D1E690FC();
    }

    v18 = v23;
  }

  *(v0 + 456) = v15;

  if ((v22 & 1) == 0)
  {
    v48 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v18, v14, v48, v15);
  }

  v49 = *(v0 + 416);
  v50 = *(v0 + 400);
  v51 = *(v0 + 312);
  v52 = v15[7];
  v53 = *(v52 + 8 * v18);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v52 + 8 * v18);
  *(v52 + 8 * v18) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1313490002, v54);
  *(v52 + 8 * v18) = v57;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v51, v49, type metadata accessor for EndpointPath);
  *(v49 + *(v50 + 20)) = 19;
  v55 = swift_task_alloc();
  *(v0 + 464) = v55;
  *v55 = v0;
  v55[1] = sub_1D1988C7C;
  v56 = *(v0 + 416);

  return sub_1D1A092C4(v56);
}

uint64_t sub_1D1988C7C(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 472) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1988DB0, 0, 0);
}

uint64_t sub_1D1988DB0()
{
  v21 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 432);
  sub_1D1A1456C(&v19, &v18);
  v7 = v18;
  *(v0 + 480) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 496) = v20;
  v14 = swift_task_alloc();
  *(v0 + 504) = v14;
  *v14 = v0;
  v14[1] = sub_1D1988FAC;
  v15 = *(v0 + 472);

  return sub_1D19167E4(0xD00000000000001ALL, 0x80000001D1EC0BB0, v15, v7, v12, v13, &unk_1D1E8A0D0, v10);
}

uint64_t sub_1D1988FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  v2[64] = v0;

  v5 = v2[62];
  if (v0)
  {
    v6 = v2[60];

    v7 = sub_1D1989244;
  }

  else
  {
    v9 = v2[60];
    v8 = v2[61];
    v10 = v2[59];

    v7 = sub_1D198910C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D198910C()
{
  if (*(v0 + 576) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 520) = v1;
    *v1 = v0;
    v1[1] = sub_1D198947C;
    v2 = *(v0 + 312);

    return StaticThermostatClusterGroup.setPrimaryFabric()();
  }

  else
  {
    v4 = *(v0 + 456);
    v5 = *(v0 + 432);

    swift_unknownObjectRelease();
    v7 = *(v0 + 408);
    v6 = *(v0 + 416);
    v8 = *(v0 + 392);
    v9 = *(v0 + 368);
    v11 = *(v0 + 344);
    v10 = *(v0 + 352);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D1989244()
{
  v1 = *(v0 + 512);
  *(v0 + 296) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 312);

    v5 = *(v0 + 304);
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

  v11 = *(v0 + 488);
  v12 = *(v0 + 472);
  v13 = *(v0 + 456);
  v14 = *(v0 + 432);

  swift_unknownObjectRelease();
  v16 = *(v0 + 408);
  v15 = *(v0 + 416);
  v17 = *(v0 + 392);
  v18 = *(v0 + 368);
  v20 = *(v0 + 344);
  v19 = *(v0 + 352);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D198947C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v7 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = *(v2 + 456);

    v5 = sub_1D1989B60;
  }

  else
  {
    v5 = sub_1D1989598;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D1989598()
{
  v1 = *(*(v0 + 312) + *(*(v0 + 320) + 28) + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v2 - 1;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = (v1 + 32 + (v3 << 6));
        v7 = (0xFE060504030201uLL >> (8 * byte_1F4D65720));
        v8 = (0xFE060504030201uLL >> (8 * byte_1F4D65721));
        v9 = (0xFE060504030201uLL >> (8 * byte_1F4D65722));
        v10 = (0xFE060504030201uLL >> (8 * byte_1F4D65723));
        v11 = v3;
        while (1)
        {
          if (v11 >= *(v1 + 16))
          {
            __break(1u);
            return;
          }

          v12 = *v6;
          v13 = v6[1];
          v14 = v6[3];
          *(v0 + 176) = v6[2];
          *(v0 + 192) = v14;
          *(v0 + 144) = v12;
          *(v0 + 160) = v13;
          v3 = v11 + 1;
          v15 = *(v0 + 160);
          if (v7 == (0xFE060504030201uLL >> (8 * v15)) || v8 == (0xFE060504030201uLL >> (8 * v15)) || v9 == (0xFE060504030201uLL >> (8 * v15)) || v10 == (0xFE060504030201uLL >> (8 * v15)))
          {
            break;
          }

          v6 += 4;
          ++v11;
          if (v2 == v3)
          {
            goto LABEL_20;
          }
        }

        sub_1D17806DC(v0 + 144, v0 + 208);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D694(0, *(v5 + 16) + 1, 1);
          v4 = v2 - 1;
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D178D694((v16 > 1), v17 + 1, 1);
          v4 = v2 - 1;
        }

        *(v5 + 16) = v17 + 1;
        v18 = (v5 + (v17 << 6));
        v19 = *(v0 + 144);
        v20 = *(v0 + 160);
        v21 = *(v0 + 192);
        v18[4] = *(v0 + 176);
        v18[5] = v21;
        v18[2] = v19;
        v18[3] = v20;
      }

      while (v4 != v11);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_20:
  *(v0 + 536) = v5;
  v22 = *(v0 + 456);

  v23 = swift_task_alloc();
  *(v0 + 544) = v23;
  *v23 = v0;
  v23[1] = sub_1D198981C;
  v24 = *(v0 + 312);

  StaticThermostatClusterGroup.enablePresets(presets:)(v5);
}

uint64_t sub_1D198981C()
{
  v2 = *(*v1 + 544);
  v3 = *v1;
  v3[69] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1989C10, 0, 0);
  }

  else
  {
    v4 = v3[67];

    v5 = swift_task_alloc();
    v3[70] = v5;
    *v5 = v3;
    v5[1] = sub_1D198999C;
    v6 = v3[39];

    return StaticThermostatClusterGroup.updateHoldPolicy(value:duration:)(1, 0, 1);
  }
}

uint64_t sub_1D198999C()
{
  v2 = *(*v1 + 560);
  v5 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_1D1989CCC;
  }

  else
  {
    v3 = sub_1D1989AB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1989AB0()
{
  v1 = v0[54];
  swift_unknownObjectRelease();
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v5 = v0[46];
  v7 = v0[43];
  v6 = v0[44];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1989B60()
{
  v1 = v0[54];
  swift_unknownObjectRelease();
  v2 = v0[66];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1989C10()
{
  v1 = v0[67];
  v2 = v0[54];
  swift_unknownObjectRelease();

  v3 = v0[69];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[49];
  v7 = v0[46];
  v9 = v0[43];
  v8 = v0[44];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1989CCC()
{
  v1 = v0[54];
  swift_unknownObjectRelease();
  v2 = v0[71];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];

  v9 = v0[1];

  return v9();
}

uint64_t StaticThermostatClusterGroup.updateFollowSystemMode(value:)(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 384) = a1;
  v3 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 + 64);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v4 = type metadata accessor for EndpointPath(0);
  *(v2 + 224) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v2 + 240) = v6;
  v7 = *(v6 - 8);
  *(v2 + 248) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  v9 = type metadata accessor for ClusterPath(0);
  *(v2 + 264) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1989F18, 0, 0);
}

uint64_t sub_1D1989F18()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  sub_1D19A1778(v0[23], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1D198A038;
  v10 = v0[32];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198A038(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[36];
  v6 = v3[35];
  v7 = v3[32];
  v8 = v3[31];
  v9 = v3[30];
  v11 = *v2;
  v4[37] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198A1D0, 0, 0);
}

uint64_t sub_1D198A1D0()
{
  v58 = v0;
  if (!*(v0 + 296))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v26 = *(v0 + 208);
      v27 = *(v0 + 184);
      v28 = sub_1D1E6709C();
      __swift_project_value_buffer(v28, qword_1EE07A0B0);
      sub_1D19A1778(v27, v26, type metadata accessor for StaticThermostatClusterGroup);
      v29 = sub_1D1E6707C();
      v30 = sub_1D1E6833C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 280);
        v32 = *(v0 + 264);
        v33 = *(v0 + 208);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57 = v35;
        *v34 = 136315650;
        *(v34 + 4) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EC0BD0, &v57);
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC0BF0, &v57);
        *(v34 + 22) = 2080;
        sub_1D19A1778(v33, v31, type metadata accessor for EndpointPath);
        *(v31 + *(v32 + 20)) = 19;
        v36 = ClusterPath.description.getter();
        v38 = v37;
        sub_1D199FA0C(v31, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v33, type metadata accessor for StaticThermostatClusterGroup);
        v39 = sub_1D1B1312C(v36, v38, &v57);

        *(v34 + 24) = v39;
        _os_log_impl(&dword_1D16EC000, v29, v30, "%s: Unable to update %s because device in current home with path %s could not be found.", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v35, -1, -1);
        MEMORY[0x1D3893640](v34, -1, -1);
      }

      else
      {
        v40 = *(v0 + 208);

        sub_1D199FA0C(v40, type metadata accessor for StaticThermostatClusterGroup);
      }

      v42 = *(v0 + 272);
      v41 = *(v0 + 280);
      v43 = *(v0 + 256);
      v44 = *(v0 + 232);
      v46 = *(v0 + 208);
      v45 = *(v0 + 216);

      v47 = *(v0 + 8);

      return v47();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v7 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E696F508];
  v10 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v13;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 312) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v14 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v15 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v15;
  v18 = sub_1D171D15C(v14);
  v19 = v15[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = v17;
  if (v15[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v15 = v57;
    }
  }

  else
  {
    sub_1D172684C(v21, isUniquelyReferenced_nonNull_native);
    v15 = v57;
    v23 = sub_1D171D15C(v14);
    if ((v22 & 1) != (v24 & 1))
    {

      return sub_1D1E690FC();
    }

    v18 = v23;
  }

  *(v0 + 320) = v15;

  if ((v22 & 1) == 0)
  {
    v48 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v18, v14, v48, v15);
  }

  v49 = *(v0 + 280);
  v50 = *(v0 + 264);
  v51 = *(v0 + 184);
  v52 = v15[7];
  v53 = *(v52 + 8 * v18);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v52 + 8 * v18);
  *(v52 + 8 * v18) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1313490012, v54);
  *(v52 + 8 * v18) = v57;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v51, v49, type metadata accessor for EndpointPath);
  *(v49 + *(v50 + 20)) = 19;
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_1D198A804;
  v56 = *(v0 + 280);

  return sub_1D1A092C4(v56);
}

uint64_t sub_1D198A804(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198A938, 0, 0);
}

uint64_t sub_1D198A938()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 296);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 344) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 360) = v20;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D198AB3C;
  v15 = *(v0 + 336);

  return sub_1D19167E4(0xD00000000000001ELL, 0x80000001D1EC0C10, v15, v7, v12, v13, &unk_1D1E8A0F8, v10);
}

uint64_t sub_1D198AB3C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  v2[47] = v0;

  v5 = v2[45];
  if (v0)
  {
    v6 = v2[43];

    v7 = sub_1D19A1E70;
  }

  else
  {
    v9 = v2[43];
    v8 = v2[44];
    v10 = v2[42];

    v7 = sub_1D19A1E58;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t StaticThermostatClusterGroup.updateIgnoresPredictedPresets(to:)(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 384) = a1;
  v3 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 + 64);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v4 = type metadata accessor for EndpointPath(0);
  *(v2 + 224) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v2 + 240) = v6;
  v7 = *(v6 - 8);
  *(v2 + 248) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  v9 = type metadata accessor for ClusterPath(0);
  *(v2 + 264) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198AE38, 0, 0);
}

uint64_t sub_1D198AE38()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  sub_1D19A1778(v0[23], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1D198AF58;
  v10 = v0[32];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198AF58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[36];
  v6 = v3[35];
  v7 = v3[32];
  v8 = v3[31];
  v9 = v3[30];
  v11 = *v2;
  v4[37] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198B0F0, 0, 0);
}

uint64_t sub_1D198B0F0()
{
  v58 = v0;
  if (!*(v0 + 296))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v26 = *(v0 + 208);
      v27 = *(v0 + 184);
      v28 = sub_1D1E6709C();
      __swift_project_value_buffer(v28, qword_1EE07A0B0);
      sub_1D19A1778(v27, v26, type metadata accessor for StaticThermostatClusterGroup);
      v29 = sub_1D1E6707C();
      v30 = sub_1D1E6833C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 280);
        v32 = *(v0 + 264);
        v33 = *(v0 + 208);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57 = v35;
        *v34 = 136315650;
        *(v34 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC0C30, &v57);
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC0BF0, &v57);
        *(v34 + 22) = 2080;
        sub_1D19A1778(v33, v31, type metadata accessor for EndpointPath);
        *(v31 + *(v32 + 20)) = 19;
        v36 = ClusterPath.description.getter();
        v38 = v37;
        sub_1D199FA0C(v31, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v33, type metadata accessor for StaticThermostatClusterGroup);
        v39 = sub_1D1B1312C(v36, v38, &v57);

        *(v34 + 24) = v39;
        _os_log_impl(&dword_1D16EC000, v29, v30, "%s: Unable to update %s because device in current home with path %s could not be found.", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v35, -1, -1);
        MEMORY[0x1D3893640](v34, -1, -1);
      }

      else
      {
        v40 = *(v0 + 208);

        sub_1D199FA0C(v40, type metadata accessor for StaticThermostatClusterGroup);
      }

      v42 = *(v0 + 272);
      v41 = *(v0 + 280);
      v43 = *(v0 + 256);
      v44 = *(v0 + 232);
      v46 = *(v0 + 208);
      v45 = *(v0 + 216);

      v47 = *(v0 + 8);

      return v47();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v7 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E696F508];
  v10 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v13;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 312) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v14 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v15 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v15;
  v18 = sub_1D171D15C(v14);
  v19 = v15[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = v17;
  if (v15[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v15 = v57;
    }
  }

  else
  {
    sub_1D172684C(v21, isUniquelyReferenced_nonNull_native);
    v15 = v57;
    v23 = sub_1D171D15C(v14);
    if ((v22 & 1) != (v24 & 1))
    {

      return sub_1D1E690FC();
    }

    v18 = v23;
  }

  *(v0 + 320) = v15;

  if ((v22 & 1) == 0)
  {
    v48 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v18, v14, v48, v15);
  }

  v49 = *(v0 + 280);
  v50 = *(v0 + 264);
  v51 = *(v0 + 184);
  v52 = v15[7];
  v53 = *(v52 + 8 * v18);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v52 + 8 * v18);
  *(v52 + 8 * v18) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1313490013, v54);
  *(v52 + 8 * v18) = v57;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v51, v49, type metadata accessor for EndpointPath);
  *(v49 + *(v50 + 20)) = 19;
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_1D198B724;
  v56 = *(v0 + 280);

  return sub_1D1A092C4(v56);
}

uint64_t sub_1D198B724(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198B858, 0, 0);
}

uint64_t sub_1D198B858()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 296);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 344) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 360) = v20;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D198AB3C;
  v15 = *(v0 + 336);

  return sub_1D19167E4(0xD00000000000001CLL, 0x80000001D1EC0C60, v15, v7, v12, v13, &unk_1D1E8A108, v10);
}

uint64_t sub_1D198BA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198BAFC, 0, 0);
}

uint64_t sub_1D198BAFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  ObjectType = swift_getObjectType();
  *(v7 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v9 = *(v5 + 56);

  v9(v1, 323551234, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t StaticThermostatClusterGroup.setPrimaryFabric()()
{
  v1[7] = v0;
  v2 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v1[8] = v2;
  v1[9] = *(v2 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for EndpointPath(0);
  v1[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for ClusterPath(0);
  v1[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198BDD8, 0, 0);
}

uint64_t sub_1D198BDD8()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  sub_1D19A1778(v0[7], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1D198BEF8;
  v10 = v0[16];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198BEF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[19];
  v6 = v3[18];
  v7 = v3[16];
  v8 = v3[15];
  v9 = v3[14];
  v11 = *v2;
  v4[20] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198C090, 0, 0);
}

uint64_t sub_1D198C090()
{
  v29 = v0;
  if (v0[20])
  {
    v2 = v0[17];
    v1 = v0[18];
    v3 = v0[7];
    v0[21] = v0[4];
    sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v2 + 20)) = 19;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1D198C45C;
    v5 = v0[18];

    return sub_1D1A092C4(v5);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v8 = v0[7];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D19A1778(v8, v7, type metadata accessor for StaticThermostatClusterGroup);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[10];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EC0C80, &v28);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EC0CA0, &v28);
      *(v15 + 22) = 2080;
      sub_1D19A1778(v14, v12, type metadata accessor for EndpointPath);
      *(v12 + *(v13 + 20)) = 19;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D199FA0C(v12, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v14, type metadata accessor for StaticThermostatClusterGroup);
      v20 = sub_1D1B1312C(v17, v19, &v28);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s: Unable to update %s because device in current home with path %s could not be found.", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {
      v21 = v0[10];

      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    }

    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[13];
    v26 = v0[10];
    v25 = v0[11];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1D198C45C(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 184) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198C590, 0, 0);
}

uint64_t sub_1D198C590()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v10 = *(v0 + 160);
  sub_1D19A1778(*(v0 + 56), v1, type metadata accessor for StaticThermostatClusterGroup);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 192) = v5;
  *(v5 + 16) = v10;
  sub_1D199FB14(v1, v5 + v4, type metadata accessor for StaticThermostatClusterGroup);
  swift_unknownObjectRetain();
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  *(v0 + 200) = 0x80000001D1EC0A80;
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_1D198C754;
  v8 = *(v0 + 184);

  return sub_1D19167E4(0xD000000000000017, 0x80000001D1EC0CD0, v8, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A118, v5);
}

uint64_t sub_1D198C754()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  if (v0)
  {

    v6 = sub_1D198C93C;
  }

  else
  {
    v8 = v2[23];
    v7 = v2[24];

    v6 = sub_1D198C89C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D198C89C()
{
  v1 = v0[20];
  swift_unknownObjectRelease();
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D198C93C()
{
  v1 = *(v0 + 216);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 56);

    v5 = *(v0 + 48);
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

  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  swift_unknownObjectRelease();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t StaticThermostatClusterGroup.enablePresets(presets:)(uint64_t a1)
{
  v2[111] = v1;
  v2[110] = a1;
  v3 = type metadata accessor for StaticThermostatClusterGroup();
  v2[112] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v5 = type metadata accessor for EndpointPath(0);
  v2[117] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[118] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v2[119] = v7;
  v8 = *(v7 - 8);
  v2[120] = v8;
  v9 = *(v8 + 64) + 15;
  v2[121] = swift_task_alloc();
  v10 = type metadata accessor for ClusterPath(0);
  v2[122] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[123] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198CCE4, 0, 0);
}

uint64_t sub_1D198CCE4()
{
  v1 = v0[110];
  if (v1 && (v2 = *(v1 + 16), (v0[124] = v2) != 0))
  {
    v3 = v0[123];
    v4 = v0[122];
    v5 = v0[121];
    v6 = v0[120];
    v7 = v0[119];
    v8 = v0[118];
    v9 = v0[117];
    sub_1D19A1778(v0[111], v3, type metadata accessor for EndpointPath);
    *(v3 + *(v4 + 20)) = 19;
    v10 = *(v3 + *(v9 + 20));
    sub_1D19A1778(v3, v8, type metadata accessor for EndpointPath);
    (*(v6 + 32))(v5, v8, v7);
    v11 = swift_task_alloc();
    v0[125] = v11;
    *v11 = v0;
    v11[1] = sub_1D198CEB4;
    v12 = v0[121];

    return sub_1D1A0A508(v10, v12);
  }

  else
  {
    v14 = v0[123];
    v15 = v0[121];
    v16 = v0[118];
    v17 = v0[116];
    v18 = v0[115];
    v19 = v0[114];
    v20 = v0[113];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1D198CEB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = v2;
  v4[103] = a1;
  v4[104] = a2;
  v5 = v3[125];
  v6 = v3[123];
  v7 = v3[121];
  v8 = v3[120];
  v9 = v3[119];
  v11 = *v2;
  v4[126] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198D050, 0, 0);
}

uint64_t sub_1D198D050()
{
  v156 = v0;
  if (!*(v0 + 1008))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 912);
    v36 = *(v0 + 904);
    v37 = *(v0 + 888);
    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    sub_1D19A1778(v37, v35, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v37, v36, type metadata accessor for StaticThermostatClusterGroup);
    v39 = sub_1D1E6707C();
    v40 = sub_1D1E6833C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 984);
      v42 = *(v0 + 976);
      v43 = *(v0 + 912);
      v143 = *(v0 + 904);
      v44 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v155[0] = v150;
      *v44 = 136315650;
      v151 = 0xD00000000000001DLL;
      v152 = 0x80000001D1EC0A80;
      sub_1D19A1778(v43, v41, type metadata accessor for EndpointPath);
      *(v41 + *(v42 + 20)) = 19;
      v145 = v40;
      v45 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v45);

      sub_1D199FA0C(v41, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v43, type metadata accessor for StaticThermostatClusterGroup);
      v46 = sub_1D1B1312C(v151, v152, v155);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0CF0, v155);
      *(v44 + 22) = 2082;
      sub_1D19A1778(v143, v41, type metadata accessor for EndpointPath);
      *(v41 + *(v42 + 20)) = 19;
      v47 = ClusterPath.description.getter();
      v49 = v48;
      sub_1D199FA0C(v41, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v143, type metadata accessor for StaticThermostatClusterGroup);
      v50 = sub_1D1B1312C(v47, v49, v155);

      *(v44 + 24) = v50;
      _os_log_impl(&dword_1D16EC000, v39, v145, "[%s]-%s: Unable to update preset info for presets because device in current home with path %{public}s could not be found.", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v150, -1, -1);
      MEMORY[0x1D3893640](v44, -1, -1);

      goto LABEL_79;
    }

    v80 = *(v0 + 912);
    v81 = *(v0 + 904);

    sub_1D199FA0C(v81, type metadata accessor for StaticThermostatClusterGroup);
    v82 = v80;
    goto LABEL_78;
  }

  v1 = *(v0 + 888);
  v2 = v1 + *(*(v0 + 896) + 28);
  if (!*(v2 + 24))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
      v1 = *(v0 + 888);
    }

    v69 = *(v0 + 920);
    v70 = sub_1D1E6709C();
    __swift_project_value_buffer(v70, qword_1EE07A0B0);
    sub_1D19A1778(v1, v69, type metadata accessor for StaticThermostatClusterGroup);
    v71 = sub_1D1E6707C();
    v72 = sub_1D1E6833C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = *(v0 + 984);
      v74 = *(v0 + 976);
      v75 = *(v0 + 920);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v155[0] = v77;
      *v76 = 136315394;
      v151 = 0xD00000000000001DLL;
      v152 = 0x80000001D1EC0A80;
      sub_1D19A1778(v75, v73, type metadata accessor for EndpointPath);
      *(v73 + *(v74 + 20)) = 19;
      v78 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v78);

      sub_1D199FA0C(v73, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v75, type metadata accessor for StaticThermostatClusterGroup);
      v79 = sub_1D1B1312C(v151, v152, v155);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0CF0, v155);
      _os_log_impl(&dword_1D16EC000, v71, v72, "[%s]-%s: Unable to update preset info because no presets info were found.", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v77, -1, -1);
      MEMORY[0x1D3893640](v76, -1, -1);
      swift_unknownObjectRelease();

      goto LABEL_79;
    }

    v127 = *(v0 + 920);
    swift_unknownObjectRelease();

    v82 = v127;
LABEL_78:
    sub_1D199FA0C(v82, type metadata accessor for StaticThermostatClusterGroup);
LABEL_79:
    v128 = *(v0 + 984);
    v129 = *(v0 + 968);
    v130 = *(v0 + 944);
    v131 = *(v0 + 928);
    v132 = *(v0 + 920);
    v133 = *(v0 + 912);
    v134 = *(v0 + 904);

    v135 = *(v0 + 8);

    return v135();
  }

  v138 = *(v2 + 24);
  v139 = *(v0 + 1008);
  v136 = v1 + *(*(v0 + 896) + 28);
  v137 = *(v0 + 832);
  v3 = *(v0 + 992);
  v4 = *(v0 + 880);
  v151 = MEMORY[0x1E69E7CC0];
  sub_1D178D8B8(0, v3, 0);
  v5 = 0;
  v6 = v151;
  v7 = (v4 + 64);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    sub_1D1771B38(v8, *v7);
    v151 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D178D8B8((v10 > 1), v11 + 1, 1);
      v6 = v151;
    }

    v7 += 8;
    v12 = *(v0 + 992);
    ++v5;
    *(v6 + 16) = v11 + 1;
    v13 = v6 + 16 * v11;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
  }

  while (v5 != v12);
  v14 = 0;
  v15 = v4 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v141 = v15;
  do
  {
    v144 = v16;
    v149 = v6;
    v17 = (v15 + (v14 << 6));
    v18 = v14;
    while (1)
    {
      if (v18 >= *(v0 + 992))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        swift_once();
        goto LABEL_54;
      }

      v19 = *v17;
      v20 = v17[1];
      v21 = v17[3];
      *(v0 + 208) = v17[2];
      *(v0 + 224) = v21;
      *(v0 + 176) = v19;
      *(v0 + 192) = v20;
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_83;
      }

      v22 = v6;
      v24 = *(v0 + 200);
      v23 = *(v0 + 208);
      *(v0 + 840) = v24;
      *(v0 + 848) = v23;
      v25 = swift_task_alloc();
      *(v25 + 16) = v0 + 840;
      sub_1D17806DC(v0 + 176, v0 + 240);
      sub_1D1771B38(v24, v23);
      v15 = sub_1D18B5E18(sub_1D19A0064, v25, v22);
      sub_1D1716AA4(v24, v23);

      if (v15)
      {
        break;
      }

      v26 = *(v0 + 992);
      sub_1D1780738(v0 + 176);
      ++v18;
      v17 += 4;
      v27 = v14 == v26;
      v6 = v149;
      if (v27)
      {
        v16 = v144;
        goto LABEL_25;
      }
    }

    v16 = v144;
    v151 = v144;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D178D694(0, *(v144 + 16) + 1, 1);
      v16 = v151;
    }

    v6 = v149;
    v15 = v141;
    v29 = *(v16 + 16);
    v28 = *(v16 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1D178D694((v28 > 1), v29 + 1, 1);
      v6 = v149;
      v16 = v151;
    }

    v30 = *(v0 + 992);
    *(v16 + 16) = v29 + 1;
    v31 = (v16 + (v29 << 6));
    v32 = *(v0 + 176);
    v33 = *(v0 + 192);
    v34 = *(v0 + 224);
    v31[4] = *(v0 + 208);
    v31[5] = v34;
    v31[2] = v32;
    v31[3] = v33;
  }

  while (v14 != v30);
LABEL_25:
  v51 = *(v16 + 16);
  if (v51)
  {
    v151 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v51, 0);
    v15 = v151;
    v52 = v51 - 1;
    v53 = 32;
    for (i = v16; ; v16 = i)
    {
      v54 = *(v16 + v53);
      v55 = *(v16 + v53 + 16);
      v56 = *(v16 + v53 + 48);
      *(v0 + 336) = *(v16 + v53 + 32);
      *(v0 + 352) = v56;
      *(v0 + 304) = v54;
      *(v0 + 320) = v55;
      v57 = *(v0 + 320);
      v58 = v0 + 304;
      if (v57 <= 2)
      {
        if (!*(v0 + 320))
        {
          sub_1D17806DC(v58, v0 + 752);
          v59 = "HFThermostatPreset_Away";
          goto LABEL_37;
        }

        if (v57 == 1)
        {
          sub_1D17806DC(v58, v0 + 688);
          v59 = "HFThermostatPreset_Sleep";
          goto LABEL_37;
        }

        sub_1D17806DC(v58, v0 + 624);
        v60 = 0xD000000000000018;
        v61 = "HFThermostatPreset_Wake";
      }

      else if (*(v0 + 320) > 4u)
      {
        if (v57 == 5)
        {
          sub_1D17806DC(v58, v0 + 432);
          v60 = 0xD00000000000001FLL;
          v61 = "XCTestConfigurationFilePath";
        }

        else
        {
          sub_1D17806DC(v58, v0 + 368);
          v60 = 0xD00000000000001ELL;
          v61 = "enablePresets(presets:)";
        }
      }

      else
      {
        if (v57 == 3)
        {
          sub_1D17806DC(v58, v0 + 560);
          v59 = "HFThermostatPreset_Vacation";
LABEL_37:
          v62 = v59 | 0x8000000000000000;
          v60 = 0xD000000000000017;
          goto LABEL_42;
        }

        sub_1D17806DC(v58, v0 + 496);
        v60 = 0xD00000000000001BLL;
        v61 = "HFThermostatPreset_GoingToSleep";
      }

      v62 = v61 | 0x8000000000000000;
LABEL_42:
      v63 = static String.hfLocalized(_:)(v60, v62);
      v65 = v64;
      sub_1D1780738(v0 + 304);
      v151 = v15;
      v67 = *(v15 + 16);
      v66 = *(v15 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D178CD24((v66 > 1), v67 + 1, 1);
        v15 = v151;
      }

      *(v15 + 16) = v67 + 1;
      v68 = v15 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      if (!v52)
      {

        goto LABEL_53;
      }

      --v52;
      v53 += 64;
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_53:
  if (qword_1EE07A0A8 != -1)
  {
    goto LABEL_84;
  }

LABEL_54:
  v83 = *(v0 + 928);
  v84 = *(v0 + 888);
  v85 = sub_1D1E6709C();
  __swift_project_value_buffer(v85, qword_1EE07A0B0);
  sub_1D19A1778(v84, v83, type metadata accessor for StaticThermostatClusterGroup);

  v86 = sub_1D1E6707C();
  v87 = sub_1D1E6835C();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = *(v0 + 984);
    v89 = *(v0 + 976);
    v90 = *(v0 + 928);
    v91 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v155[0] = v147;
    *v91 = 136315650;
    v151 = 0xD00000000000001DLL;
    v152 = 0x80000001D1EC0A80;
    sub_1D19A1778(v90, v88, type metadata accessor for EndpointPath);
    *(v88 + *(v89 + 20)) = 19;
    v92 = ClusterPath.description.getter();
    MEMORY[0x1D3890F70](v92);

    sub_1D199FA0C(v88, type metadata accessor for ClusterPath);
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    sub_1D199FA0C(v90, type metadata accessor for StaticThermostatClusterGroup);
    v93 = sub_1D1B1312C(v151, v152, v155);

    *(v91 + 4) = v93;
    *(v91 + 12) = 2080;
    *(v91 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0CF0, v155);
    *(v91 + 22) = 2080;
    *(v0 + 872) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
    v94 = sub_1D1E6770C();
    v96 = v95;

    v97 = sub_1D1B1312C(v94, v96, v155);

    *(v91 + 24) = v97;
    _os_log_impl(&dword_1D16EC000, v86, v87, "[%s]-%s: Enabling presets: [%s]", v91, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v147, -1, -1);
    MEMORY[0x1D3893640](v91, -1, -1);
  }

  else
  {
    v98 = *(v0 + 928);

    sub_1D199FA0C(v98, type metadata accessor for StaticThermostatClusterGroup);
  }

  v99 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v100 = *(v138 + 16);
  if (v100)
  {
    v140 = *(v136 + *(v99 + 80)) + 1;
    v142 = *MEMORY[0x1E696F520];
    v101 = MEMORY[0x1E69E7CC0];
    v102 = (v138 + 49);
    do
    {
      v148 = v101;
      v103 = *(v102 - 17);
      v104 = *(v102 - 9);
      v105 = *(v102 - 1);
      v106 = *v102;
      *(v0 + 856) = v103;
      *(v0 + 864) = v104;
      v107 = swift_task_alloc();
      *(v107 + 16) = v0 + 856;
      sub_1D1771B38(v103, v104);
      sub_1D1771B38(v103, v104);
      v108 = sub_1D18B5E18(sub_1D19A1E8C, v107, v149);
      sub_1D1716AA4(v103, v104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
      if (v108)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E739C0;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v110;
        v151 = v103;
        v152 = v104;
        v153 = v140;
        v154 = 1;
        sub_1D1771B38(v103, v104);
        v111 = sub_1D19B6988(&v151);
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(inited + 48) = v111;
        v112 = sub_1D18D6E78(inited);
        swift_setDeallocating();
        sub_1D1741A30(inited + 32, &qword_1EC646228, &qword_1D1E8A0C0);
        v101 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D177D340(0, v148[2] + 1, 1, v148);
        }

        v114 = v101[2];
        v113 = v101[3];
        v115 = v114 + 1;
        if (v114 >= v113 >> 1)
        {
          v101 = sub_1D177D340((v113 > 1), v114 + 1, 1, v101);
        }

        sub_1D1716AA4(v103, v104);
      }

      else
      {
        v116 = swift_initStackObject();
        *(v116 + 16) = xmmword_1D1E739C0;
        *(v116 + 32) = sub_1D1E6781C();
        *(v116 + 40) = v117;
        v151 = v103;
        v152 = v104;
        v153 = v105;
        v154 = v106;
        v118 = sub_1D19B6988(&v151);
        *(v116 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(v116 + 48) = v118;
        v112 = sub_1D18D6E78(v116);
        swift_setDeallocating();
        sub_1D1741A30(v116 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
        v101 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D177D340(0, v148[2] + 1, 1, v148);
        }

        v114 = v101[2];
        v119 = v101[3];
        v115 = v114 + 1;
        if (v114 >= v119 >> 1)
        {
          v101 = sub_1D177D340((v119 > 1), v114 + 1, 1, v101);
        }
      }

      sub_1D1716AA4(v103, v104);
      v101[2] = v115;
      v101[v114 + 4] = v112;
      v102 += 24;
      --v100;
    }

    while (v100);
  }

  else
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1016) = v101;

  v120 = [objc_opt_self() processInfo];
  v121 = [v120 environment];

  v122 = sub_1D1E675FC();
  if (*(v122 + 16))
  {
    sub_1D171D2F0(0xD00000000000001BLL, 0x80000001D1EC0D30);
    if (v123)
    {

      swift_unknownObjectRelease();

      goto LABEL_79;
    }
  }

  v124 = swift_task_alloc();
  *(v0 + 1024) = v124;
  *v124 = v0;
  v124[1] = sub_1D198E240;
  v125 = *(v0 + 888);

  return StaticThermostatClusterGroup.updatePresetsInfo(presetInfo:device:)(v101, v139, v137);
}

uint64_t sub_1D198E240()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v7 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v4 = sub_1D198E420;
  }

  else
  {
    v5 = *(v2 + 1016);

    v4 = sub_1D198E35C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D198E35C()
{
  v1 = v0[126];
  swift_unknownObjectRelease();
  v2 = v0[123];
  v3 = v0[121];
  v4 = v0[118];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[113];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D198E420()
{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[123];
  v4 = v0[121];
  v5 = v0[118];
  v6 = v0[116];
  v7 = v0[115];
  v8 = v0[114];
  v9 = v0[113];

  swift_unknownObjectRelease();

  v10 = v0[1];
  v11 = v0[129];

  return v10();
}

uint64_t StaticThermostatClusterGroup.updateHoldPolicy(value:duration:)(char a1, uint64_t a2, char a3)
{
  *(v4 + 235) = a3;
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 234) = a1;
  v5 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 + 64);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v6 = type metadata accessor for EndpointPath(0);
  *(v4 + 104) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v4 + 120) = v8;
  v9 = *(v8 - 8);
  *(v4 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v11 = type metadata accessor for ClusterPath(0);
  *(v4 + 144) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198E690, 0, 0);
}

uint64_t sub_1D198E690()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  sub_1D19A1778(v0[8], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1D198E7B0;
  v10 = v0[17];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198E7B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[20];
  v6 = v3[19];
  v7 = v3[17];
  v8 = v3[16];
  v9 = v3[15];
  v11 = *v2;
  v4[21] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198E948, 0, 0);
}

void sub_1D198E948()
{
  v30 = v0;
  if (*(v0 + 168))
  {
    v1 = *(v0 + 235);
    *(v0 + 176) = *(v0 + 32);
    if (v1)
    {
      LOWORD(v2) = 0;
LABEL_10:
      *(v0 + 232) = v2;
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = *(v0 + 64);
      sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
      sub_1D19A1778(v19, v17, type metadata accessor for EndpointPath);
      *(v17 + *(v18 + 20)) = 19;
      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_1D198ED40;
      v21 = *(v0 + 152);

      sub_1D1A092C4(v21);
      return;
    }

    v2 = *(v0 + 56);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v2 >> 16))
    {
      goto LABEL_10;
    }

    __break(1u);
    return;
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE07A0B0);
  sub_1D19A1778(v4, v3, type metadata accessor for StaticThermostatClusterGroup);
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000021, 0x80000001D1EC0E10, &v29);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0E40, &v29);
    *(v11 + 22) = 2080;
    sub_1D19A1778(v10, v8, type metadata accessor for EndpointPath);
    *(v8 + *(v9 + 20)) = 19;
    v13 = ClusterPath.description.getter();
    v15 = v14;
    sub_1D199FA0C(v8, type metadata accessor for ClusterPath);
    sub_1D199FA0C(v10, type metadata accessor for StaticThermostatClusterGroup);
    v16 = sub_1D1B1312C(v13, v15, &v29);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_1D16EC000, v6, v7, "%s: Unable to update %s because device in current home with path %s could not be found.", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v22 = *(v0 + 88);

    sub_1D199FA0C(v22, type metadata accessor for StaticThermostatClusterGroup);
  }

  v23 = *(v0 + 152);
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v27 = *(v0 + 88);
  v26 = *(v0 + 96);

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_1D198ED40(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 192) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198EE74, 0, 0);
}

uint64_t sub_1D198EE74()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 235);
  v6 = *(v0 + 234);
  v15 = *(v0 + 168);
  sub_1D19A1778(*(v0 + 64), v2, type metadata accessor for StaticThermostatClusterGroup);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  *(v9 + 16) = v15;
  sub_1D199FB14(v2, v9 + v7, type metadata accessor for StaticThermostatClusterGroup);
  v10 = v9 + v8;
  *v10 = v6;
  *(v10 + 2) = v1;
  *(v10 + 4) = v5 & 1;
  swift_unknownObjectRetain();
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  *(v0 + 208) = 0x80000001D1EC0A80;
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_1D198F074;
  v13 = *(v0 + 192);

  return sub_1D19167E4(0xD000000000000010, 0x80000001D1EC0E60, v13, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A140, v9);
}

uint64_t sub_1D198F074()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1D198F240;
  }

  else
  {
    v6 = v2[25];
    v5 = v2[26];
    v7 = v2[24];

    v4 = sub_1D198F1A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D198F1A0()
{
  v1 = v0[21];
  swift_unknownObjectRelease();
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D198F240()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  *(v0 + 40) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 64);

    v6 = *(v0 + 48);
    sub_1D19A1778(v5, v4, type metadata accessor for EndpointPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D199FB14(v4, &v9[v7[5]], type metadata accessor for EndpointPath);
    v9[v7[6]] = 30;
    swift_willThrow();
  }

  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);

  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t StaticThermostatClusterGroup.updateAlvaradoEnabled(value:)(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 384) = a1;
  v3 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 + 64);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v4 = type metadata accessor for EndpointPath(0);
  *(v2 + 224) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v2 + 240) = v6;
  v7 = *(v6 - 8);
  *(v2 + 248) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  v9 = type metadata accessor for ClusterPath(0);
  *(v2 + 264) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198F618, 0, 0);
}

uint64_t sub_1D198F618()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  sub_1D19A1778(v0[23], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1D198F738;
  v10 = v0[32];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198F738(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[36];
  v6 = v3[35];
  v7 = v3[32];
  v8 = v3[31];
  v9 = v3[30];
  v11 = *v2;
  v4[37] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198F8D0, 0, 0);
}

uint64_t sub_1D198F8D0()
{
  v58 = v0;
  if (!*(v0 + 296))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v26 = *(v0 + 208);
      v27 = *(v0 + 184);
      v28 = sub_1D1E6709C();
      __swift_project_value_buffer(v28, qword_1EE07A0B0);
      sub_1D19A1778(v27, v26, type metadata accessor for StaticThermostatClusterGroup);
      v29 = sub_1D1E6707C();
      v30 = sub_1D1E6833C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 280);
        v32 = *(v0 + 264);
        v33 = *(v0 + 208);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57 = v35;
        *v34 = 136315650;
        *(v34 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC0E80, &v57);
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EC0EA0, &v57);
        *(v34 + 22) = 2080;
        sub_1D19A1778(v33, v31, type metadata accessor for EndpointPath);
        *(v31 + *(v32 + 20)) = 19;
        v36 = ClusterPath.description.getter();
        v38 = v37;
        sub_1D199FA0C(v31, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v33, type metadata accessor for StaticThermostatClusterGroup);
        v39 = sub_1D1B1312C(v36, v38, &v57);

        *(v34 + 24) = v39;
        _os_log_impl(&dword_1D16EC000, v29, v30, "%s: Unable to update %s because device in current home with path %s could not be found.", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v35, -1, -1);
        MEMORY[0x1D3893640](v34, -1, -1);
      }

      else
      {
        v40 = *(v0 + 208);

        sub_1D199FA0C(v40, type metadata accessor for StaticThermostatClusterGroup);
      }

      v42 = *(v0 + 272);
      v41 = *(v0 + 280);
      v43 = *(v0 + 256);
      v44 = *(v0 + 232);
      v46 = *(v0 + 208);
      v45 = *(v0 + 216);

      v47 = *(v0 + 8);

      return v47();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v7 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E696F508];
  v10 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v13;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 312) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v14 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v15 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v15;
  v18 = sub_1D171D15C(v14);
  v19 = v15[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = v17;
  if (v15[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v15 = v57;
    }
  }

  else
  {
    sub_1D172684C(v21, isUniquelyReferenced_nonNull_native);
    v15 = v57;
    v23 = sub_1D171D15C(v14);
    if ((v22 & 1) != (v24 & 1))
    {

      return sub_1D1E690FC();
    }

    v18 = v23;
  }

  *(v0 + 320) = v15;

  if ((v22 & 1) == 0)
  {
    v48 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC(v18, v14, v48, v15);
  }

  v49 = *(v0 + 280);
  v50 = *(v0 + 264);
  v51 = *(v0 + 184);
  v52 = v15[7];
  v53 = *(v52 + 8 * v18);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v52 + 8 * v18);
  *(v52 + 8 * v18) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1D00000000, v54);
  *(v52 + 8 * v18) = v57;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v51, v49, type metadata accessor for EndpointPath);
  *(v49 + *(v50 + 20)) = 29;
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_1D198FF00;
  v56 = *(v0 + 280);

  return sub_1D1A092C4(v56);
}

uint64_t sub_1D198FF00(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1990034, 0, 0);
}

uint64_t sub_1D1990034()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 296);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 344) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 360) = v20;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D199023C;
  v15 = *(v0 + 336);

  return sub_1D19167E4(0xD000000000000015, 0x80000001D1EC0EC0, v15, v7, v12, v13, &unk_1D1E8A158, v10);
}

uint64_t sub_1D199023C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  v2[47] = v0;

  v5 = v2[45];
  if (v0)
  {
    v6 = v2[43];

    v7 = sub_1D199044C;
  }

  else
  {
    v9 = v2[43];
    v8 = v2[44];
    v10 = v2[42];

    v7 = sub_1D199039C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D199039C()
{
  v1 = v0[37];
  swift_unknownObjectRelease();
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D199044C()
{
  v1 = *(v0 + 376);
  *(v0 + 168) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 184);

    v5 = *(v0 + 176);
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

  v11 = *(v0 + 352);
  v12 = *(v0 + 336);
  v13 = *(v0 + 296);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 232);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);

  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D1990688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1990724, 0, 0);
}

uint64_t sub_1D1990724()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  ObjectType = swift_getObjectType();
  *(v7 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v9 = *(v5 + 56);

  v9(v1, 0, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1990870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199090C, 0, 0);
}

uint64_t sub_1D199090C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  ObjectType = swift_getObjectType();
  *(v7 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v9 = *(v5 + 56);

  v9(v1, 323551250, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1990A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1990AF8, 0, 0);
}

uint64_t sub_1D1990AF8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  ObjectType = swift_getObjectType();
  *(v7 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v9 = *(v5 + 56);

  v9(v1, 323551251, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1990C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a1;
  v9 = type metadata accessor for ClusterPath(0);
  v8[27] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1990CE4, 0, 0);
}

uint64_t sub_1D1990CE4()
{
  v24 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  ObjectType = swift_getObjectType();
  *(v7 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v10 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v11;
  v12 = *MEMORY[0x1E696F548];
  v13 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v16;
  v21[0] = v4 & 1;
  v22 = WORD1(v4);
  v23 = BYTE4(v4) & 1;
  v17 = sub_1D19B6AB4(v21);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v17;
  v18 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[18] = v18;
  (*(v6 + 56))(v1, 323551249, v0 + 18, ObjectType, v6);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v19 = v0[1];

  return v19();
}

uint64_t StaticThermostatClusterGroup.createPresetsIfNeeded()()
{
  v1[39] = v0;
  v2 = type metadata accessor for StaticThermostatClusterGroup();
  v1[40] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v4 = type metadata accessor for EndpointPath(0);
  v1[43] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v1[45] = v6;
  v7 = *(v6 - 8);
  v1[46] = v7;
  v8 = *(v7 + 64) + 15;
  v1[47] = swift_task_alloc();
  v9 = type metadata accessor for ClusterPath(0);
  v1[48] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1991080, 0, 0);
}

uint64_t sub_1D1991080()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  sub_1D19A1778(v0[39], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[50] = v9;
  *v9 = v0;
  v9[1] = sub_1D19911A0;
  v10 = v0[47];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D19911A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[36] = v2;
  v4[37] = a1;
  v4[38] = a2;
  v5 = v3[50];
  v6 = v3[49];
  v7 = v3[47];
  v8 = v3[46];
  v9 = v3[45];
  v11 = *v2;
  v4[51] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1991338, 0, 0);
}

uint64_t sub_1D1991338()
{
  v62 = v0;
  if (!*(v0 + 408))
  {
    if (qword_1EE07A0A8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    v6 = *(v0 + 312);
    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE07A0B0);
    sub_1D19A1778(v6, v5, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v6, v4, type metadata accessor for StaticThermostatClusterGroup);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6833C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 384);
      v11 = *(v0 + 392);
      v12 = *(v0 + 336);
      v54 = *(v0 + 328);
      v13 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v13 = 136315650;
      *&v61[0] = 0xD00000000000001DLL;
      *(&v61[0] + 1) = 0x80000001D1EC0A80;
      sub_1D19A1778(v12, v11, type metadata accessor for EndpointPath);
      *(v11 + *(v10 + 20)) = 19;
      v56 = v9;
      v14 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v14);

      sub_1D199FA0C(v11, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v15 = v61[0];
      sub_1D199FA0C(v12, type metadata accessor for StaticThermostatClusterGroup);
      v16 = sub_1D1B1312C(v15, *(&v15 + 1), &v60);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0EE0, &v60);
      *(v13 + 22) = 2082;
      sub_1D19A1778(v54, v11, type metadata accessor for EndpointPath);
      *(v11 + *(v10 + 20)) = 19;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D199FA0C(v11, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v54, type metadata accessor for StaticThermostatClusterGroup);
      v20 = sub_1D1B1312C(v17, v19, &v60);

      *(v13 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v8, v56, "[%s]-%s: Unable to update presets because device in current home with path %{public}s could not be found.", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v59, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {
      v22 = *(v0 + 328);
      v21 = *(v0 + 336);

      sub_1D199FA0C(v22, type metadata accessor for StaticThermostatClusterGroup);
      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    }

    goto LABEL_11;
  }

  v1 = *(v0 + 312) + *(*(v0 + 320) + 28);
  v2 = *(v1 + 16);
  if (!v2 || (v3 = *(v1 + 8)) == 0 || (v58 = *(v3 + 16)) == 0 || *(v2 + 16))
  {
    swift_unknownObjectRelease();
LABEL_11:
    v23 = *(v0 + 392);
    v24 = *(v0 + 376);
    v25 = *(v0 + 352);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);

    v28 = *(v0 + 8);

    return v28();
  }

  v50 = *(v0 + 408);
  v30 = 0;
  v31 = (v3 + 32);
  v49 = *(v0 + 304);
  v57 = *MEMORY[0x1E696F550];
  v55 = *MEMORY[0x1E696F548];
  v52 = *MEMORY[0x1E696F520];
  v53 = *MEMORY[0x1E696F568];
  v32 = MEMORY[0x1E69E7CC0];
  v51 = *(v1 + 8);
  do
  {
    if (v30 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    LOBYTE(v60) = *v31;
    ThermostatPreset.init(for:name:)(&v60, 0, 0, v61);
    v33 = v61[1];
    *(v0 + 224) = v61[0];
    *(v0 + 240) = v33;
    v34 = v61[3];
    *(v0 + 256) = v61[2];
    *(v0 + 272) = v34;
    v35 = sub_1D19B473C((v0 + 224), *(v0 + 240), 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v37;
    v38 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v38;
    *(inited + 56) = v39;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v40;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
    *(inited + 96) = v35;
    v41 = sub_1D18D6E78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
    swift_arrayDestroy();
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_1D1E739C0;
    *(v42 + 32) = sub_1D1E6781C();
    *(v42 + 40) = v43;
    *(v42 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
    *(v42 + 48) = v41;
    v44 = sub_1D18D6E78(v42);
    swift_setDeallocating();
    sub_1D1741A30(v42 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1D177D340(0, v32[2] + 1, 1, v32);
    }

    v46 = v32[2];
    v45 = v32[3];
    if (v46 >= v45 >> 1)
    {
      v32 = sub_1D177D340((v45 > 1), v46 + 1, 1, v32);
    }

    ++v30;
    *(v0 + 416) = v32;
    sub_1D1780738(v0 + 224);
    v32[2] = v46 + 1;
    v32[v46 + 4] = v44;
    v31 += 24;
    v3 = v51;
  }

  while (v58 != v30);
  v47 = swift_task_alloc();
  *(v0 + 424) = v47;
  *v47 = v0;
  v47[1] = sub_1D1991A34;
  v48 = *(v0 + 312);

  return sub_1D1991DA8(v32, v50, v49);
}

uint64_t sub_1D1991A34()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v7 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_1D1991BF0;
  }

  else
  {
    v5 = *(v2 + 416);

    v4 = sub_1D1991B50;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1991B50()
{
  v1 = v0[51];
  swift_unknownObjectRelease();
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[44];
  v6 = v0[41];
  v5 = v0[42];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1991BF0()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];

  swift_unknownObjectRelease();

  v8 = v0[1];
  v9 = v0[54];

  return v8();
}

uint64_t StaticThermostatClusterGroup.loggingIdentifier.getter()
{
  v1 = type metadata accessor for ClusterPath(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0xD00000000000001DLL;
  v8[1] = 0x80000001D1EC0A80;
  sub_1D19A1778(v0, v5, type metadata accessor for EndpointPath);
  v5[*(v2 + 28)] = 19;
  v6 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);
  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_1D1991DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v6 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v4[31] = v6;
  v4[32] = *(v6 + 64);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v7 = type metadata accessor for ClusterPath(0);
  v4[35] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1991ED8, 0, 0);
}

uint64_t sub_1D1991ED8()
{
  v35 = v0;
  if (*(v0[26] + 16))
  {
    v2 = v0[35];
    v1 = v0[36];
    v3 = v0[29];
    v4 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
    v0[37] = v4;
    v5 = sub_1D1E691BC();
    [v4 setRequestType_];

    v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D1E739C0;
    v7 = sub_1D1E692CC();
    v8 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v0[39] = v8;
    *(v6 + 56) = v8;
    *(v6 + 32) = v7;
    v9 = sub_1D1E67BFC();

    [v4 setAttributeRequests_];

    v10 = sub_1D1E6821C();
    [v4 setTimeout_];

    v0[40] = sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v2 + 20)) = 19;
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_1D19923AC;
    v12 = v0[36];

    return sub_1D1A092C4(v12);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v14 = v0[33];
    v15 = v0[29];
    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07A0B0);
    sub_1D19A1778(v15, v14, type metadata accessor for StaticThermostatClusterGroup);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[35];
      v20 = v0[36];
      v21 = v0[33];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315394;
      v32 = v23;
      v33 = 0xD00000000000001DLL;
      v34 = 0x80000001D1EC0A80;
      sub_1D19A1778(v21, v20, type metadata accessor for EndpointPath);
      *(v20 + *(v19 + 20)) = 19;
      v24 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v24);

      sub_1D199FA0C(v20, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
      v25 = sub_1D1B1312C(v33, v34, &v32);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC1150, &v32);
      _os_log_impl(&dword_1D16EC000, v17, v18, "[%s]-%s: Unable to update presets because thermostat has no presets.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    else
    {
      v26 = v0[33];

      sub_1D199FA0C(v26, type metadata accessor for StaticThermostatClusterGroup);
    }

    v27 = v0[36];
    v28 = v0[33];
    v29 = v0[34];
    v30 = v0[30];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1D19923AC(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D19924E0, 0, 0);
}

uint64_t sub_1D19924E0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_1D19A1778(*(v0 + 232), v2, type metadata accessor for StaticThermostatClusterGroup);
  v5 = *(v4 + 80);
  *(v0 + 432) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 344) = v7;
  *(v7 + 16) = v1;
  sub_1D199FB14(v2, v7 + v6, type metadata accessor for StaticThermostatClusterGroup);
  v8 = v1;
  v9 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v9);

  *(v0 + 352) = 0x80000001D1EC0A80;
  v10 = swift_task_alloc();
  *(v0 + 360) = v10;
  *v10 = v0;
  v10[1] = sub_1D19926A0;
  v11 = *(v0 + 336);

  return sub_1D19167E4(0xD000000000000010, 0x80000001D1EC0F60, v11, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A5B8, v7);
}

uint64_t sub_1D19926A0()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_1D19927CC;
  }

  else
  {
    v6 = v2[43];
    v5 = v2[44];
    v7 = v2[42];

    v4 = sub_1D19929E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D19927CC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);

  *(v0 + 176) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);

    v6 = *(v0 + 184);
    sub_1D19A1778(v5, v4, type metadata accessor for EndpointPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D199FB14(v4, &v9[v7[5]], type metadata accessor for EndpointPath);
    v9[v7[6]] = 30;
    swift_willThrow();
  }

  v13 = *(v0 + 336);
  v12 = *(v0 + 344);

  v14 = *(v0 + 288);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 240);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D19929E8()
{
  v27 = v0[38];
  v28 = v0[39];
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[28];
  v3 = v0[29];
  v26 = v3;
  v6 = v0[26];
  v5 = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v8 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v9;
  v10 = *MEMORY[0x1E696F4F8];
  v11 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v13 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v14;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v6;

  v15 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[18] = v15;
  (*(v4 + 56))(v1, 80, v0 + 18, ObjectType, v4);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v17 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
  v0[47] = v17;
  v18 = sub_1D1E691BC();
  [v17 setRequestType_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D1E739C0;
  v20 = sub_1D1E692CC();
  *(v19 + 56) = v28;
  *(v19 + 32) = v20;
  v21 = sub_1D1E67BFC();

  [v17 setAttributeRequests_];

  sub_1D19A1778(v26, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v22 = swift_task_alloc();
  v0[48] = v22;
  *v22 = v0;
  v22[1] = sub_1D1992D04;
  v23 = v0[40];
  v24 = v0[36];

  return sub_1D1A092C4(v24);
}

uint64_t sub_1D1992D04(uint64_t a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 392) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1992E38, 0, 0);
}

uint64_t sub_1D1992E38()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = (*(v0 + 432) + 24) & ~*(v0 + 432);
  sub_1D19A1778(*(v0 + 232), v2, type metadata accessor for StaticThermostatClusterGroup);
  v5 = swift_allocObject();
  *(v0 + 400) = v5;
  *(v5 + 16) = v1;
  sub_1D199FB14(v2, v5 + v4, type metadata accessor for StaticThermostatClusterGroup);
  v6 = v1;
  v7 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  *(v0 + 408) = 0x80000001D1EC0A80;
  v8 = swift_task_alloc();
  *(v0 + 416) = v8;
  *v8 = v0;
  v8[1] = sub_1D1992FF4;
  v9 = *(v0 + 392);

  return sub_1D19167E4(0xD000000000000011, 0x80000001D1EC0F80, v9, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A5C8, v5);
}

uint64_t sub_1D1992FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_1D19931BC;
  }

  else
  {
    v6 = v2[50];
    v5 = v2[51];
    v7 = v2[49];

    v4 = sub_1D1993120;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1993120()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 240);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D19931BC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);

  *(v0 + 192) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);

    v6 = *(v0 + 200);
    sub_1D19A1778(v5, v4, type metadata accessor for EndpointPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D199FB14(v4, &v9[v7[5]], type metadata accessor for EndpointPath);
    v9[v7[6]] = 30;
    swift_willThrow();
  }

  v13 = *(v0 + 392);
  v12 = *(v0 + 400);
  v14 = *(v0 + 296);

  v15 = *(v0 + 288);
  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 240);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t StaticThermostatClusterGroup.updateSetpoints(for:)(_OWORD *a1)
{
  *(v2 + 1032) = v1;
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  *(v2 + 1040) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 1048) = swift_task_alloc();
  *(v2 + 1056) = swift_task_alloc();
  *(v2 + 1064) = swift_task_alloc();
  *(v2 + 1072) = swift_task_alloc();
  v6 = type metadata accessor for EndpointPath(0);
  *(v2 + 1080) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 1088) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v2 + 1096) = v8;
  v9 = *(v8 - 8);
  *(v2 + 1104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 1112) = swift_task_alloc();
  v11 = type metadata accessor for ClusterPath(0);
  *(v2 + 1120) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v2 + 1128) = swift_task_alloc();
  v13 = a1[1];
  *(v2 + 352) = *a1;
  *(v2 + 368) = v13;
  v14 = a1[3];
  *(v2 + 384) = a1[2];
  *(v2 + 400) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D199356C, 0, 0);
}

uint64_t sub_1D199356C()
{
  v1 = v0[141];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[136];
  v7 = v0[135];
  sub_1D19A1778(v0[129], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[142] = v9;
  *v9 = v0;
  v9[1] = sub_1D1993698;
  v10 = v0[139];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D1993698(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[124] = v2;
  v4[125] = a1;
  v4[126] = a2;
  v5 = v3[142];
  v6 = v3[141];
  v7 = v3[139];
  v8 = v3[138];
  v9 = v3[137];
  v11 = *v2;
  v4[143] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1993834, 0, 0);
}

uint64_t sub_1D1993834()
{
  v133 = v0;
  v1 = *(v0 + 1144);
  if (!v1)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 1056);
    v47 = *(v0 + 1048);
    v48 = *(v0 + 1032);
    v49 = sub_1D1E6709C();
    __swift_project_value_buffer(v49, qword_1EE07A0B0);
    sub_1D19A1778(v48, v46, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v48, v47, type metadata accessor for StaticThermostatClusterGroup);
    v33 = sub_1D1E6707C();
    v50 = sub_1D1E6833C();
    if (os_log_type_enabled(v33, v50))
    {
      v51 = *(v0 + 1128);
      v52 = *(v0 + 1120);
      v53 = *(v0 + 1056);
      v125 = *(v0 + 1048);
      v54 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v130 = v129;
      *v54 = 136315650;
      v131 = 0xD00000000000001DLL;
      v132 = 0x80000001D1EC0A80;
      sub_1D19A1778(v53, v51, type metadata accessor for EndpointPath);
      *(v51 + *(v52 + 20)) = 19;
      v126 = v50;
      v55 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v55);

      sub_1D199FA0C(v51, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v53, type metadata accessor for StaticThermostatClusterGroup);
      v56 = sub_1D1B1312C(v131, v132, &v130);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC0F00, &v130);
      *(v54 + 22) = 2082;
      sub_1D19A1778(v125, v51, type metadata accessor for EndpointPath);
      *(v51 + *(v52 + 20)) = 19;
      v57 = ClusterPath.description.getter();
      v59 = v58;
      sub_1D199FA0C(v51, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v125, type metadata accessor for StaticThermostatClusterGroup);
      v60 = sub_1D1B1312C(v57, v59, &v130);

      *(v54 + 24) = v60;
      _os_log_impl(&dword_1D16EC000, v33, v126, "[%s]-%s: Unable to update presets because device in current home with path %{public}s could not be found.", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v129, -1, -1);
      MEMORY[0x1D3893640](v54, -1, -1);
LABEL_21:

      goto LABEL_22;
    }

    v63 = *(v0 + 1056);
    v64 = *(v0 + 1048);

    sub_1D199FA0C(v64, type metadata accessor for StaticThermostatClusterGroup);
    v62 = v63;
LABEL_18:
    sub_1D199FA0C(v62, type metadata accessor for StaticThermostatClusterGroup);
LABEL_22:
    v68 = *(v0 + 1128);
    v69 = *(v0 + 1112);
    v70 = *(v0 + 1088);
    v71 = *(v0 + 1072);
    v72 = *(v0 + 1064);
    v73 = *(v0 + 1056);
    v74 = *(v0 + 1048);

    v75 = *(v0 + 8);

    return v75();
  }

  v2 = *(v0 + 408);
  if (v2 == 1)
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 1008);
  v4 = *(v0 + 368);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  *(v0 + 480) = *(v0 + 352);
  v117 = v4;
  *(v0 + 496) = v4;
  *(v0 + 528) = *(v0 + 400);
  v7 = *(v0 + 385);
  *(v0 + 497) = *(v0 + 369);
  *(v0 + 513) = v7;
  *(v0 + 536) = v2;
  v8 = v6 + *(v5 + 28);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_8:
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v30 = *(v0 + 1064);
      v31 = *(v0 + 1032);
      v32 = sub_1D1E6709C();
      __swift_project_value_buffer(v32, qword_1EE07A0B0);
      sub_1D19A1778(v31, v30, type metadata accessor for StaticThermostatClusterGroup);
      sub_1D1741C08(v0 + 352, v0 + 544, &qword_1EC647FB0, &unk_1D1E8A180);
      v33 = sub_1D1E6707C();
      v34 = sub_1D1E6833C();
      sub_1D1741A30(v0 + 352, &qword_1EC647FB0, &unk_1D1E8A180);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 1128);
        v36 = *(v0 + 1120);
        v37 = *(v0 + 1064);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 136315650;
        v130 = v39;
        v131 = 0xD00000000000001DLL;
        v132 = 0x80000001D1EC0A80;
        sub_1D19A1778(v37, v35, type metadata accessor for EndpointPath);
        *(v35 + *(v36 + 20)) = 19;
        v40 = ClusterPath.description.getter();
        MEMORY[0x1D3890F70](v40);

        sub_1D199FA0C(v35, type metadata accessor for ClusterPath);
        MEMORY[0x1D3890F70](41, 0xE100000000000000);
        v41 = v131;
        v42 = v132;
        sub_1D199FA0C(v37, type metadata accessor for StaticThermostatClusterGroup);
        v43 = sub_1D1B1312C(v41, v42, &v130);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC0F00, &v130);
        *(v38 + 22) = 2080;
        if (*(v0 + 408) == 1)
        {
          v44 = 0;
          v45 = 0;
        }

        else
        {
          LOBYTE(v131) = *(v0 + 368);
          v44 = ThermostatPresetScenario.shortPresetLabel.getter();
        }

        *(v0 + 1016) = v44;
        *(v0 + 1024) = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
        v65 = sub_1D1E6789C();
        v67 = sub_1D1B1312C(v65, v66, &v130);

        *(v38 + 24) = v67;
        _os_log_impl(&dword_1D16EC000, v33, v34, "[%s]-%s: Unable to update setpoints for preset: %s there are no presets configured on the thermostat.", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v39, -1, -1);
        MEMORY[0x1D3893640](v38, -1, -1);
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      v61 = *(v0 + 1064);
      swift_unknownObjectRelease();

      v62 = v61;
      goto LABEL_18;
    }

LABEL_50:
    swift_once();
    goto LABEL_9;
  }

  v115 = v3;
  v10 = *(v0 + 368);
  *(v0 + 672) = *(v0 + 352);
  *(v0 + 688) = v10;
  v11 = *(v0 + 400);
  *(v0 + 704) = *(v0 + 384);
  *(v0 + 720) = v11;
  sub_1D17806DC(v0 + 672, v0 + 736);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1072);
  v13 = *(v0 + 1032);
  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EE07A0B0);
  sub_1D19A1778(v13, v12, type metadata accessor for StaticThermostatClusterGroup);
  v15 = *(v0 + 368);
  *(v0 + 608) = *(v0 + 352);
  *(v0 + 624) = v15;
  v16 = *(v0 + 400);
  *(v0 + 640) = *(v0 + 384);
  *(v0 + 656) = v16;
  sub_1D17806DC(v0 + 608, v0 + 800);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();
  sub_1D1741A30(v0 + 352, &qword_1EC647FB0, &unk_1D1E8A180);
  v128 = v9;
  v116 = v1;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 1128);
    v20 = *(v0 + 1120);
    v21 = *(v0 + 1072);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136315650;
    v130 = v23;
    v131 = 0xD00000000000001DLL;
    v132 = 0x80000001D1EC0A80;
    sub_1D19A1778(v21, v19, type metadata accessor for EndpointPath);
    *(v19 + *(v20 + 20)) = 19;
    v24 = ClusterPath.description.getter();
    MEMORY[0x1D3890F70](v24);

    sub_1D199FA0C(v19, type metadata accessor for ClusterPath);
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    v25 = sub_1D1B1312C(v131, v132, &v130);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC0F00, &v130);
    *(v22 + 22) = 2080;
    LOBYTE(v131) = v117;
    v26 = ThermostatPresetScenario.label.getter();
    v28 = sub_1D1B1312C(v26, v27, &v130);

    *(v22 + 24) = v28;
    _os_log_impl(&dword_1D16EC000, v17, v18, "[%s]-%s: Updating preset: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v23, -1, -1);
    v29 = v22;
    v9 = v128;
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  else
  {
    v77 = *(v0 + 1072);

    sub_1D199FA0C(v77, type metadata accessor for StaticThermostatClusterGroup);
  }

  v127 = *(v9 + 16);
  if (v127)
  {
    v78 = 0;
    v79 = *(v8 + 8);
    v124 = v9 + 32;
    v118 = (v79 + 32);
    v123 = *MEMORY[0x1E696F550];
    v122 = *MEMORY[0x1E696F548];
    v120 = *MEMORY[0x1E696F520];
    v121 = *MEMORY[0x1E696F568];
    v80 = MEMORY[0x1E69E7CC0];
    v119 = v79;
    while (v78 < *(v9 + 16))
    {
      v81 = (v124 + (v78 << 6));
      v82 = *v81;
      v83 = v81[1];
      v84 = v81[3];
      *(v0 + 448) = v81[2];
      *(v0 + 464) = v84;
      *(v0 + 416) = v82;
      *(v0 + 432) = v83;
      v85 = *(v0 + 432);
      if (v79)
      {
        v86 = *(v79 + 16) + 1;
        v87 = v118;
        while (--v86)
        {
          v88 = v87 + 24;
          v89 = (0xFE060504030201uLL >> (8 * *v87)) == (0xFE060504030201uLL >> (8 * v85));
          v87 += 24;
          if (v89)
          {
            v90 = *(v88 - 8);
            goto LABEL_36;
          }
        }
      }

      v90 = 0;
LABEL_36:
      v91 = v0 + 416;
      if ((0xFE060504030201uLL >> (8 * v117)) == (0xFE060504030201uLL >> (8 * v85)))
      {
        sub_1D17806DC(v91, v0 + 928);
        v92 = sub_1D19B473C((v0 + 480), v117, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E73A90;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v94;
        v95 = sub_1D1E6781C();
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v95;
        *(inited + 56) = v96;
        *(inited + 80) = sub_1D1E6781C();
        *(inited + 88) = v97;
        *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
        *(inited + 96) = v92;
        v98 = sub_1D18D6E78(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
        swift_arrayDestroy();
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1D1E739C0;
        *(v99 + 32) = sub_1D1E6781C();
        *(v99 + 40) = v100;
        *(v99 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(v99 + 48) = v98;
        v101 = sub_1D18D6E78(v99);
        swift_setDeallocating();
        sub_1D1741A30(v99 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
        swift_deallocClassInstance();
      }

      else
      {
        sub_1D17806DC(v91, v0 + 864);
        v102 = sub_1D19B473C((v0 + 416), v85, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
        v103 = swift_initStackObject();
        *(v103 + 16) = xmmword_1D1E73A90;
        *(v103 + 32) = sub_1D1E6781C();
        *(v103 + 40) = v104;
        v105 = sub_1D1E6781C();
        *(v103 + 72) = MEMORY[0x1E69E6158];
        *(v103 + 48) = v105;
        *(v103 + 56) = v106;
        *(v103 + 80) = sub_1D1E6781C();
        *(v103 + 88) = v107;
        *(v103 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
        *(v103 + 96) = v102;
        v108 = sub_1D18D6E78(v103);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
        swift_arrayDestroy();
        v109 = swift_initStackObject();
        *(v109 + 16) = xmmword_1D1E739C0;
        *(v109 + 32) = sub_1D1E6781C();
        *(v109 + 40) = v110;
        *(v109 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(v109 + 48) = v108;
        v101 = sub_1D18D6E78(v109);
        swift_setDeallocating();
        sub_1D1741A30(v109 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1D177D340(0, v80[2] + 1, 1, v80);
      }

      v112 = v80[2];
      v111 = v80[3];
      if (v112 >= v111 >> 1)
      {
        v80 = sub_1D177D340((v111 > 1), v112 + 1, 1, v80);
      }

      ++v78;
      sub_1D1780738(v0 + 416);
      v80[2] = v112 + 1;
      v80[v112 + 4] = v101;
      v9 = v128;
      v79 = v119;
      if (v78 == v127)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_46:
  *(v0 + 1152) = v80;
  v113 = swift_task_alloc();
  *(v0 + 1160) = v113;
  *v113 = v0;
  v113[1] = sub_1D1994750;
  v114 = *(v0 + 1032);

  return sub_1D1991DA8(v80, v116, v115);
}

uint64_t sub_1D1994750()
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v7 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v4 = sub_1D1994948;
  }

  else
  {
    v5 = *(v2 + 1152);

    v4 = sub_1D199486C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D199486C()
{
  v1 = v0[143];
  swift_unknownObjectRelease();
  sub_1D1741A30((v0 + 44), &qword_1EC647FB0, &unk_1D1E8A180);
  v2 = v0[141];
  v3 = v0[139];
  v4 = v0[136];
  v5 = v0[134];
  v6 = v0[133];
  v7 = v0[132];
  v8 = v0[131];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1994948()
{
  v1 = v0[144];
  v2 = v0[143];
  v3 = v0[141];
  v4 = v0[139];
  v5 = v0[136];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[132];
  v9 = v0[131];
  swift_unknownObjectRelease();
  sub_1D1741A30((v0 + 44), &qword_1EC647FB0, &unk_1D1E8A180);

  v10 = v0[1];
  v11 = v0[146];

  return v10();
}

uint64_t sub_1D1994A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = type metadata accessor for ClusterPath(0);
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1994AD4, 0, 0);
}

uint64_t sub_1D1994AD4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v14 = v0[4];
  v4 = v0[3];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v6 = *(v14 + 80);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1D1994C48;
  v9 = v0[7];
  v11 = v0[3];
  v10 = v0[4];

  return (v13)(v9, 323551479, 0, 0, ObjectType, v10);
}

uint64_t sub_1D1994C48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v8 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);
  if (v1)
  {
    v6 = sub_1D17C2F00;
  }

  else
  {
    v6 = sub_1D1994D90;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1994D90()
{
  v1 = v0[9];
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

  v4 = v0[7];
  v5 = v0[2];
  *v5 = v1;
  v5[3] = v2;

  v6 = v0[1];

  return v6();
}

uint64_t StaticThermostatClusterGroup.clearPrimaryFabric()()
{
  v1[7] = v0;
  v2 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v1[8] = v2;
  v1[9] = *(v2 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for EndpointPath(0);
  v1[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for ClusterPath(0);
  v1[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1994FBC, 0, 0);
}

uint64_t sub_1D1994FBC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  sub_1D19A1778(v0[7], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1D19950DC;
  v10 = v0[16];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D19950DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[19];
  v6 = v3[18];
  v7 = v3[16];
  v8 = v3[15];
  v9 = v3[14];
  v11 = *v2;
  v4[20] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1995274, 0, 0);
}

uint64_t sub_1D1995274()
{
  v29 = v0;
  if (v0[20])
  {
    v2 = v0[17];
    v1 = v0[18];
    v3 = v0[7];
    v0[21] = v0[4];
    sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v2 + 20)) = 19;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1D1995640;
    v5 = v0[18];

    return sub_1D1A092C4(v5);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v8 = v0[7];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D19A1778(v8, v7, type metadata accessor for StaticThermostatClusterGroup);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[10];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EC0F20, &v28);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EC0CA0, &v28);
      *(v15 + 22) = 2080;
      sub_1D19A1778(v14, v12, type metadata accessor for EndpointPath);
      *(v12 + *(v13 + 20)) = 19;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D199FA0C(v12, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v14, type metadata accessor for StaticThermostatClusterGroup);
      v20 = sub_1D1B1312C(v17, v19, &v28);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s: Unable to update %s because device in current home with path %s could not be found.", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {
      v21 = v0[10];

      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    }

    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[13];
    v26 = v0[10];
    v25 = v0[11];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1D1995640(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 184) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1995774, 0, 0);
}

uint64_t sub_1D1995774()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v10 = *(v0 + 160);
  sub_1D19A1778(*(v0 + 56), v1, type metadata accessor for StaticThermostatClusterGroup);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 192) = v5;
  *(v5 + 16) = v10;
  sub_1D199FB14(v1, v5 + v4, type metadata accessor for StaticThermostatClusterGroup);
  swift_unknownObjectRetain();
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  *(v0 + 200) = 0x80000001D1EC0A80;
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_1D1995938;
  v8 = *(v0 + 184);

  return sub_1D19167E4(0xD000000000000019, 0x80000001D1EC0F40, v8, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A1A0, v5);
}

uint64_t sub_1D1995938()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  if (v0)
  {

    v6 = sub_1D19A1E68;
  }

  else
  {
    v8 = v2[23];
    v7 = v2[24];

    v6 = sub_1D19A1E78;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1995A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = type metadata accessor for ClusterPath(0);
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1995B18, 0, 0);
}

uint64_t sub_1D1995B18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v14 = v0[4];
  v4 = v0[3];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v6 = *(v14 + 80);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1D1995C8C;
  v9 = v0[7];
  v11 = v0[3];
  v10 = v0[4];

  return (v13)(v9, 323551480, 0, 0, ObjectType, v10);
}

uint64_t sub_1D1995C8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v8 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);
  if (v1)
  {
    v6 = sub_1D19A1E80;
  }

  else
  {
    v6 = sub_1D19A1E50;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t StaticThermostatClusterGroup.updatePresetsInfo(presetInfo:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v6 = type metadata accessor for ClusterPath(0);
  v4[31] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  v4[33] = v8;
  v4[34] = *(v8 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1995F04, 0, 0);
}

uint64_t sub_1D1995F04()
{
  v39 = v0;
  v1 = *(v0[26] + 16);
  if (v1)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
      v33 = v0[26];
    }

    v2 = v0[36];
    v3 = v0[29];
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE07A0B0);
    sub_1D19A1778(v3, v2, type metadata accessor for StaticThermostatClusterGroup);
    swift_bridgeObjectRetain_n();
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[36];
    if (v7)
    {
      v9 = v0[31];
      v10 = v0[32];
      v34 = v0[26];
      v11 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v11 = 136315650;
      v37 = 0xD00000000000001DLL;
      v38 = 0x80000001D1EC0A80;
      sub_1D19A1778(v8, v10, type metadata accessor for EndpointPath);
      *(v10 + *(v9 + 20)) = 19;
      v12 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v12);

      sub_1D199FA0C(v10, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v8, type metadata accessor for StaticThermostatClusterGroup);
      v13 = sub_1D1B1312C(v37, v38, &v36);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD000000000000025, 0x80000001D1EC0FA0, &v36);
      *(v11 + 22) = 2048;

      *(v11 + 24) = v1;

      swift_arrayDestroy();
      MEMORY[0x1D3893640](v35, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
      v20 = v0[26];
      swift_bridgeObjectRelease_n();

      sub_1D199FA0C(v8, type metadata accessor for StaticThermostatClusterGroup);
    }

    v0[37] = 0x80000001D1EC0A80;
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[29];
    v24 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
    v0[38] = v24;
    v25 = sub_1D1E691BC();
    [v24 setRequestType_];

    v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D1E739C0;
    v27 = sub_1D1E692CC();
    v28 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v0[40] = v28;
    *(v26 + 56) = v28;
    *(v26 + 32) = v27;
    v29 = sub_1D1E67BFC();

    [v24 setAttributeRequests_];

    v30 = sub_1D1E6821C();
    [v24 setTimeout_];

    v0[41] = sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v23, v21, type metadata accessor for EndpointPath);
    *(v21 + *(v22 + 20)) = 19;
    v31 = swift_task_alloc();
    v0[42] = v31;
    *v31 = v0;
    v31[1] = sub_1D1996438;
    v32 = v0[32];

    return sub_1D1A092C4(v32);
  }

  else
  {
    v15 = v0[35];
    v14 = v0[36];
    v16 = v0[32];
    v17 = v0[30];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1D1996438(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 344) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199656C, 0, 0);
}

uint64_t sub_1D199656C()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  sub_1D19A1778(*(v0 + 232), v3, type metadata accessor for StaticThermostatClusterGroup);
  v5 = *(v4 + 80);
  *(v0 + 440) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 352) = v7;
  *(v7 + 16) = v1;
  sub_1D199FB14(v3, v7 + v6, type metadata accessor for StaticThermostatClusterGroup);
  v8 = v1;
  v9 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v9);

  *(v0 + 360) = v2;
  v10 = swift_task_alloc();
  *(v0 + 368) = v10;
  *v10 = v0;
  v10[1] = sub_1D1996724;
  v11 = *(v0 + 344);

  return sub_1D19167E4(0xD000000000000010, 0x80000001D1EC0F60, v11, 0, 0xD00000000000001DLL, v2, &unk_1D1E8A1B8, v7);
}

uint64_t sub_1D1996724()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_1D1996850;
  }

  else
  {
    v6 = v2[44];
    v5 = v2[45];
    v7 = v2[43];

    v4 = sub_1D1996A70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1996850()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);

  *(v0 + 176) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);

    v6 = *(v0 + 184);
    sub_1D19A1778(v5, v4, type metadata accessor for EndpointPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D199FB14(v4, &v9[v7[5]], type metadata accessor for EndpointPath);
    v9[v7[6]] = 30;
    swift_willThrow();
  }

  v13 = *(v0 + 344);
  v12 = *(v0 + 352);

  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 256);
  v17 = *(v0 + 240);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1996A70()
{
  v27 = v0[39];
  v28 = v0[40];
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v26 = v3;
  v6 = v0[26];
  v5 = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v8 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v9;
  v10 = *MEMORY[0x1E696F4F8];
  v11 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v13 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v14;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v6;

  v15 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[18] = v15;
  (*(v4 + 56))(v1, 323551248, v0 + 18, ObjectType, v4);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v17 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
  v0[48] = v17;
  v18 = sub_1D1E691BC();
  [v17 setRequestType_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D1E739C0;
  v20 = sub_1D1E692CC();
  *(v19 + 56) = v28;
  *(v19 + 32) = v20;
  v21 = sub_1D1E67BFC();

  [v17 setAttributeRequests_];

  sub_1D19A1778(v26, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v22 = swift_task_alloc();
  v0[49] = v22;
  *v22 = v0;
  v22[1] = sub_1D1996D94;
  v23 = v0[41];
  v24 = v0[32];

  return sub_1D1A092C4(v24);
}

uint64_t sub_1D1996D94(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 400) = a1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1996EC8, 0, 0);
}

uint64_t sub_1D1996EC8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = (*(v0 + 440) + 24) & ~*(v0 + 440);
  sub_1D19A1778(*(v0 + 232), v3, type metadata accessor for StaticThermostatClusterGroup);
  v5 = swift_allocObject();
  *(v0 + 408) = v5;
  *(v5 + 16) = v1;
  sub_1D199FB14(v3, v5 + v4, type metadata accessor for StaticThermostatClusterGroup);
  v6 = v1;
  v7 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  *(v0 + 416) = v2;
  v8 = swift_task_alloc();
  *(v0 + 424) = v8;
  *v8 = v0;
  v8[1] = sub_1D1997074;
  v9 = *(v0 + 400);

  return sub_1D19167E4(0xD000000000000011, 0x80000001D1EC0F80, v9, 0, 0xD00000000000001DLL, v2, &unk_1D1E8A1C8, v5);
}

uint64_t sub_1D1997074()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v9 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_1D199723C;
  }

  else
  {
    v6 = v2[51];
    v5 = v2[52];
    v7 = v2[50];

    v4 = sub_1D19971A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D19971A0()
{
  v1 = *(v0 + 304);

  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D199723C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);

  *(v0 + 192) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);

    v6 = *(v0 + 200);
    sub_1D19A1778(v5, v4, type metadata accessor for EndpointPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D199FB14(v4, &v9[v7[5]], type metadata accessor for EndpointPath);
    v9[v7[6]] = 30;
    swift_willThrow();
  }

  v13 = *(v0 + 400);
  v12 = *(v0 + 408);
  v14 = *(v0 + 304);

  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = *(v0 + 256);
  v18 = *(v0 + 240);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t StaticThermostatClusterGroup.updatePresetInfo(for:)(uint64_t a1)
{
  *(v2 + 520) = v1;
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  *(v2 + 528) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  v6 = type metadata accessor for EndpointPath(0);
  *(v2 + 576) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 584) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v2 + 592) = v8;
  v9 = *(v8 - 8);
  *(v2 + 600) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 608) = swift_task_alloc();
  v11 = type metadata accessor for ClusterPath(0);
  *(v2 + 616) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = *a1;
  *(v2 + 688) = *(a1 + 16);
  *(v2 + 689) = *(a1 + 17);

  return MEMORY[0x1EEE6DFA0](sub_1D199760C, 0, 0);
}

uint64_t sub_1D199760C()
{
  v42 = v0;
  v1 = *(v0 + 689);
  v2 = *(v0 + 688);
  v3 = *(v0 + 520);
  v38 = *(v0 + 632);
  v39 = v2;
  v40 = v1;
  StaticThermostatClusterGroup.preset(for:)(&v38, v0 + 432);
  *(v0 + 690) = *(v0 + 448);
  if (*(v0 + 488) == 1)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 536);
    v5 = *(v0 + 520);
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE07A0B0);
    sub_1D19A1778(v5, v4, type metadata accessor for StaticThermostatClusterGroup);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 624);
      v10 = *(v0 + 616);
      v11 = *(v0 + 536);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315394;
      *&v38 = 0xD00000000000001DLL;
      *(&v38 + 1) = 0x80000001D1EC0A80;
      sub_1D19A1778(v11, v9, type metadata accessor for EndpointPath);
      *(v9 + *(v10 + 20)) = 19;
      v14 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v14);

      sub_1D199FA0C(v9, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v15 = v38;
      sub_1D199FA0C(v11, type metadata accessor for StaticThermostatClusterGroup);
      v16 = sub_1D1B1312C(v15, *(&v15 + 1), &v41);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v41);
      _os_log_impl(&dword_1D16EC000, v7, v8, "[%s]-%s: Unable to update preset info because no matching preset was found.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {
      v28 = *(v0 + 536);

      sub_1D199FA0C(v28, type metadata accessor for StaticThermostatClusterGroup);
    }

    v29 = *(v0 + 624);
    v30 = *(v0 + 608);
    v31 = *(v0 + 584);
    v32 = *(v0 + 568);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 544);
    v36 = *(v0 + 536);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v17 = *(v0 + 624);
    v18 = *(v0 + 616);
    v19 = *(v0 + 608);
    v20 = *(v0 + 600);
    v21 = *(v0 + 592);
    v22 = *(v0 + 584);
    v23 = *(v0 + 576);
    sub_1D19A1778(*(v0 + 520), v17, type metadata accessor for EndpointPath);
    *(v17 + *(v18 + 20)) = 19;
    v24 = *(v17 + *(v23 + 20));
    sub_1D19A1778(v17, v22, type metadata accessor for EndpointPath);
    (*(v20 + 32))(v19, v22, v21);
    v25 = swift_task_alloc();
    *(v0 + 648) = v25;
    *v25 = v0;
    v25[1] = sub_1D1997A78;
    v26 = *(v0 + 608);

    return sub_1D1A0A508(v24, v26);
  }
}

uint64_t sub_1D1997A78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = v2;
  v4[63] = a1;
  v4[64] = a2;
  v5 = v3[81];
  v6 = v3[78];
  v7 = v3[76];
  v8 = v3[75];
  v9 = v3[74];
  v11 = *v2;
  v4[82] = a1;

  (*(v8 + 8))(v7, v9);
  sub_1D199FA0C(v6, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1997C10, 0, 0);
}

uint64_t sub_1D1997C10()
{
  v130 = v0;
  if (!v0[82])
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v18 = v0[69];
    v19 = v0[68];
    v20 = v0[65];
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EE07A0B0);
    sub_1D19A1778(v20, v18, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v20, v19, type metadata accessor for StaticThermostatClusterGroup);
    v22 = v0[61];
    sub_1D1771B38(v0[57], v0[58]);

    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6833C();
    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
    if (os_log_type_enabled(v23, v24))
    {
      v115 = *(v0 + 690);
      v25 = v119[78];
      v26 = v119[77];
      v27 = v119[69];
      v117 = v119[68];
      v28 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v129 = v124;
      *v28 = 136315906;
      v125 = 0xD00000000000001DLL;
      v126 = 0x80000001D1EC0A80;
      sub_1D19A1778(v27, v25, type metadata accessor for EndpointPath);
      *(v25 + *(v26 + 20)) = 19;
      v120 = v24;
      v29 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v29);

      sub_1D199FA0C(v25, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v27, type metadata accessor for StaticThermostatClusterGroup);
      v30 = sub_1D1B1312C(v125, v126, &v129);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v129);
      *(v28 + 22) = 2080;
      LOBYTE(v125) = v115;
      v31 = ThermostatPresetScenario.label.getter();
      v33 = sub_1D1B1312C(v31, v32, &v129);

      *(v28 + 24) = v33;
      *(v28 + 32) = 2082;
      sub_1D19A1778(v117, v25, type metadata accessor for EndpointPath);
      *(v25 + *(v26 + 20)) = 19;
      v34 = ClusterPath.description.getter();
      v36 = v35;
      v0 = v119;
      sub_1D199FA0C(v25, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v117, type metadata accessor for StaticThermostatClusterGroup);
      v37 = sub_1D1B1312C(v34, v36, &v129);

      *(v28 + 34) = v37;
      _os_log_impl(&dword_1D16EC000, v23, v120, "[%s]-%s: Unable to update preset info for preset: %s because device in current home with path %{public}s could not be found.", v28, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v124, -1, -1);
      MEMORY[0x1D3893640](v28, -1, -1);
LABEL_16:
      sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);

LABEL_37:
      v92 = v0[78];
      v93 = v0[76];
      v94 = v0[73];
      v95 = v0[71];
      v96 = v0[70];
      v97 = v0[69];
      v98 = v0[68];
      v99 = v0[67];

      v100 = v0[1];

      return v100();
    }

    v88 = v0[69];
    v89 = v0[68];

    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
    sub_1D199FA0C(v89, type metadata accessor for StaticThermostatClusterGroup);
    v90 = v88;
LABEL_36:
    sub_1D199FA0C(v90, type metadata accessor for StaticThermostatClusterGroup);
    goto LABEL_37;
  }

  v1 = v0[65];
  v2 = *(v1 + *(v0[66] + 28) + 24);
  if (!v2)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
      v1 = v0[65];
    }

    v38 = v0[70];
    v39 = sub_1D1E6709C();
    __swift_project_value_buffer(v39, qword_1EE07A0B0);
    sub_1D19A1778(v1, v38, type metadata accessor for StaticThermostatClusterGroup);
    v40 = v0[61];
    sub_1D1771B38(v0[57], v0[58]);

    v23 = sub_1D1E6707C();
    v41 = sub_1D1E6833C();
    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
    if (os_log_type_enabled(v23, v41))
    {
      v42 = *(v0 + 690);
      v43 = v119[78];
      v44 = v119[77];
      v45 = v119[70];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v129 = v47;
      *v46 = 136315650;
      v125 = 0xD00000000000001DLL;
      v126 = 0x80000001D1EC0A80;
      sub_1D19A1778(v45, v43, type metadata accessor for EndpointPath);
      *(v43 + *(v44 + 20)) = 19;
      v48 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v48);

      sub_1D199FA0C(v43, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v45, type metadata accessor for StaticThermostatClusterGroup);
      v49 = sub_1D1B1312C(v125, v126, &v129);
      v0 = v119;

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v129);
      *(v46 + 22) = 2080;
      LOBYTE(v125) = v42;
      v50 = ThermostatPresetScenario.label.getter();
      v52 = sub_1D1B1312C(v50, v51, &v129);

      *(v46 + 24) = v52;
      _os_log_impl(&dword_1D16EC000, v23, v41, "[%s]-%s: Unable to update preset info for preset: %s because thermostat has no preset information.", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v91 = v0[70];
    swift_unknownObjectRelease();
    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);

    v90 = v91;
    goto LABEL_36;
  }

  v108 = v0[64];
  v109 = v0[82];
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
    v1 = v0[65];
  }

  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[71];
  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE07A0B0);
  sub_1D19A1778(v1, v5, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1771B38(v4, v3);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();
  sub_1D1716AA4(v4, v3);
  if (!os_log_type_enabled(v7, v8))
  {
    v53 = v0[71];

    sub_1D199FA0C(v53, type metadata accessor for StaticThermostatClusterGroup);
    v54 = *(v2 + 16);
    if (!v54)
    {
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  v123 = v0[80];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[71];
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v129 = v13;
  *v12 = 136315650;
  v125 = 0xD00000000000001DLL;
  v126 = 0x80000001D1EC0A80;
  sub_1D19A1778(v11, v9, type metadata accessor for EndpointPath);
  *(v9 + *(v10 + 20)) = 19;
  v14 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v14);

  sub_1D199FA0C(v9, type metadata accessor for ClusterPath);
  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  sub_1D199FA0C(v11, type metadata accessor for StaticThermostatClusterGroup);
  v15 = sub_1D1B1312C(v125, v126, &v129);

  *(v12 + 4) = v15;
  *(v12 + 12) = 2080;
  *(v12 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v129);
  *(v12 + 22) = 2080;
  if (v123 >> 60 == 15)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v102 = v0[80];
    v103 = v0[79];
    v16 = sub_1D1E6689C();
    v17 = v104;
  }

  v105 = sub_1D1B1312C(v16, v17, &v129);

  *(v12 + 24) = v105;
  _os_log_impl(&dword_1D16EC000, v7, v8, "[%s]-%s: Updating preset info for handle: [%s", v12, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v13, -1, -1);
  MEMORY[0x1D3893640](v12, -1, -1);

  v54 = *(v2 + 16);
  if (v54)
  {
LABEL_18:
    v55 = (v2 + 49);
    v56 = MEMORY[0x1E69E7CC0];
    v116 = *MEMORY[0x1E696F520];
    v114 = *MEMORY[0x1E696F550];
    v112 = *MEMORY[0x1E696F568];
    v113 = *MEMORY[0x1E696F548];
    v111 = v0[80] >> 60;
    while (1)
    {
      v57 = *(v55 - 17);
      v58 = *(v55 - 9);
      v59 = *(v55 - 1);
      v60 = *v55;
      v61 = v0[80];
      if (v58 >> 60 == 15)
      {
        if (v111 <= 0xE)
        {
          goto LABEL_23;
        }

        v62 = v0[79];
        sub_1D1771B38(v57, v58);
        sub_1D1771B38(v62, v61);
        sub_1D1771B38(v57, v58);
        sub_1D1716AA4(v57, v58);
      }

      else
      {
        if (v111 > 0xE)
        {
LABEL_23:
          v121 = *v55;
          v63 = v0[79];
          sub_1D1771B38(v57, v58);
          sub_1D1771B38(v63, v61);
          sub_1D1771B38(v57, v58);
          sub_1D1716AA4(v57, v58);
          sub_1D1716AA4(v63, v61);
LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E739C0;
          *(inited + 32) = sub_1D1E6781C();
          *(inited + 40) = v65;
          v66 = swift_initStackObject();
          *(v66 + 16) = xmmword_1D1E73A90;
          *(v66 + 32) = sub_1D1E6781C();
          *(v66 + 40) = v67;
          v68 = sub_1D1E6781C();
          *(v66 + 72) = MEMORY[0x1E69E6158];
          *(v66 + 48) = v68;
          *(v66 + 56) = v69;
          *(v66 + 80) = sub_1D1E6781C();
          *(v66 + 88) = v70;
          v125 = v57;
          v126 = v58;
          v127 = v59;
          v128 = v121;
          v71 = sub_1D19B63BC(&v125);
          *(v66 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
          *(v66 + 96) = v71;
          v72 = sub_1D18D6E78(v66);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
          swift_arrayDestroy();
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          *(inited + 48) = v72;
          v73 = sub_1D18D6E78(inited);
          swift_setDeallocating();
          sub_1D1741A30(inited + 32, &qword_1EC646228, &qword_1D1E8A0C0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1D177D340(0, v56[2] + 1, 1, v56);
          }

          goto LABEL_30;
        }

        v121 = *v55;
        v74 = v0[79];
        sub_1D1771B38(v57, v58);
        sub_1D1771B38(v57, v58);
        sub_1D1771B38(v74, v61);
        sub_1D1771B38(v57, v58);
        v75 = sub_1D199F344(v57, v58, v74, v61);
        sub_1D1716AA4(v74, v61);
        sub_1D1716AA4(v57, v58);
        sub_1D1716AA4(v57, v58);
        if ((v75 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v122 = *(v0 + 689);
      v118 = *(v0 + 688);
      v110 = v0[80];
      v76 = v0[79];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_1D1E739C0;
      *(v77 + 32) = sub_1D1E6781C();
      *(v77 + 40) = v78;
      v79 = swift_initStackObject();
      *(v79 + 16) = xmmword_1D1E73A90;
      *(v79 + 32) = sub_1D1E6781C();
      *(v79 + 40) = v80;
      v81 = sub_1D1E6781C();
      *(v79 + 72) = MEMORY[0x1E69E6158];
      *(v79 + 48) = v81;
      *(v79 + 56) = v82;
      *(v79 + 80) = sub_1D1E6781C();
      *(v79 + 88) = v83;
      v125 = v76;
      v126 = v110;
      v127 = v118;
      v128 = v122;
      v84 = sub_1D19B63BC(&v125);
      *(v79 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
      *(v79 + 96) = v84;
      v85 = sub_1D18D6E78(v79);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
      swift_arrayDestroy();
      *(v77 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      *(v77 + 48) = v85;
      v73 = sub_1D18D6E78(v77);
      swift_setDeallocating();
      sub_1D1741A30(v77 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1D177D340(0, v56[2] + 1, 1, v56);
      }

LABEL_30:
      v87 = v56[2];
      v86 = v56[3];
      v0 = v119;
      if (v87 >= v86 >> 1)
      {
        v56 = sub_1D177D340((v86 > 1), v87 + 1, 1, v56);
      }

      sub_1D1716AA4(v57, v58);
      v56[2] = v87 + 1;
      v56[v87 + 4] = v73;
      v55 += 24;
      if (!--v54)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_42:
  v56 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v0[83] = v56;
  v106 = swift_task_alloc();
  v0[84] = v106;
  *v106 = v0;
  v106[1] = sub_1D1998C30;
  v107 = v0[65];

  return StaticThermostatClusterGroup.updatePresetsInfo(presetInfo:device:)(v56, v109, v108);
}

uint64_t sub_1D1998C30()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v7 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_1D1998E3C;
  }

  else
  {
    v5 = *(v2 + 664);

    v4 = sub_1D1998D4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1998D4C()
{
  v1 = v0[82];
  swift_unknownObjectRelease();
  sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[73];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1998E3C()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[78];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  swift_unknownObjectRelease();
  sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);

  v11 = v0[1];
  v12 = v0[85];

  return v11();
}

uint64_t sub_1D1998F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = type metadata accessor for ClusterPath(0);
  v6[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StaticThermostatClusterGroup() - 8) + 64) + 15;
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199900C, 0, 0);
}

uint64_t sub_1D199900C()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[28] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D199918C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_166;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D199918C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1D19A1E7C;
  }

  else
  {
    v3 = sub_1D199929C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D199929C()
{
  v10 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D19997EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = type metadata accessor for ClusterPath(0);
  v6[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StaticThermostatClusterGroup() - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19998C0, 0, 0);
}

uint64_t sub_1D19998C0()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[29] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1999A40;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_162;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1999A40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1D19A1E74;
  }

  else
  {
    v3 = sub_1D1999B50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1999B50()
{
  v11 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D199A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = type metadata accessor for ClusterPath(0);
  v6[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StaticThermostatClusterGroup() - 8) + 64) + 15;
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199A3C8, 0, 0);
}

uint64_t sub_1D199A3C8()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[28] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D199A548;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_143;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D199A548()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1D199ABAC;
  }

  else
  {
    v3 = sub_1D199A658;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D199A658()
{
  v10 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D199ABAC()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D199AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = type metadata accessor for ClusterPath(0);
  v6[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StaticThermostatClusterGroup() - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199AD00, 0, 0);
}

uint64_t sub_1D199AD00()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[29] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D199AE80;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_25;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D199AE80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1D199B748;
  }

  else
  {
    v3 = sub_1D199AF90;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D199AF90()
{
  v11 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D199B748()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];

  v7 = v0[1];

  return v7();
}

double StaticThermostatClusterGroup.maxTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  v6 = v0 + *(v5 + 36);
  if (*(v6 + 40) == 1)
  {
    v7 = v0 + *(v5 + 40);
    if (*(v7 + 40))
    {
      v8 = 3200;
    }

    else
    {
      v8 = *(v7 + 32);
    }
  }

  else
  {
    v8 = *(v6 + 32);
  }

  sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v9 = sub_1D1E6838C();
  v10 = objc_opt_self();
  v11 = [v10 fahrenheit];
  v12 = sub_1D1E684FC();

  if (v12)
  {
    v13 = 0.555555556;
  }

  else
  {
    v14 = [v10 celsius];
    sub_1D1E684FC();

    v13 = 0.5;
    v9 = v14;
  }

  return v13 * round(v8 / 100.0 / v13);
}

double StaticThermostatClusterGroup.minTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  v6 = v0 + *(v5 + 40);
  if (*(v6 + 24) == 1)
  {
    v7 = v0 + *(v5 + 36);
    if (*(v7 + 24))
    {
      v8 = 700;
    }

    else
    {
      v8 = *(v7 + 16);
    }
  }

  else
  {
    v8 = *(v6 + 16);
  }

  sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v9 = sub_1D1E6838C();
  v10 = objc_opt_self();
  v11 = [v10 fahrenheit];
  v12 = sub_1D1E684FC();

  if (v12)
  {
    v13 = 0.555555556;
  }

  else
  {
    v14 = [v10 celsius];
    sub_1D1E684FC();

    v13 = 0.5;
    v9 = v14;
  }

  return v13 * round(v8 / 100.0 / v13);
}

uint64_t StaticThermostatClusterGroup.coolingTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  *&result = 0.0;
  v7 = v0 + *(v5 + 36);
  if ((*(v7 + 8) & 1) == 0)
  {
    v8 = *v7 / 100.0;
    sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v9 = sub_1D1E6838C();
    v10 = objc_opt_self();
    v11 = [v10 fahrenheit];
    v12 = sub_1D1E684FC();

    if (v12)
    {
      v13 = 0.555555556;
    }

    else
    {
      v14 = [v10 celsius];
      sub_1D1E684FC();

      v13 = 0.5;
      v9 = v14;
    }

    *&result = v13 * round(v8 / v13);
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.heatingTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E66ADC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  *&result = 0.0;
  v7 = v0 + *(v5 + 40);
  if ((*(v7 + 8) & 1) == 0)
  {
    v8 = *v7 / 100.0;
    sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v9 = sub_1D1E6838C();
    v10 = objc_opt_self();
    v11 = [v10 fahrenheit];
    v12 = sub_1D1E684FC();

    if (v12)
    {
      v13 = 0.555555556;
    }

    else
    {
      v14 = [v10 celsius];
      sub_1D1E684FC();

      v13 = 0.5;
      v9 = v14;
    }

    *&result = v13 * round(v8 / v13);
  }

  return result;
}