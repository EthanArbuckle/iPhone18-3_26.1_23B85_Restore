uint64_t sub_2296C602C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8B44;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2296C6134;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v6);
}

uint64_t sub_2296C6134()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2296C6264;
    v5 = 0;
  }

  else
  {
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[2];

    v4 = sub_2296C8C74;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C6264()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];

  return MEMORY[0x2822009F8](sub_2296C8C80, v3, 0);
}

void sub_2296C62D8(uint64_t a1, int a2)
{
  v5 = objc_opt_self();
  v6 = sub_22A4DB77C();
  [v5 findHAPAccessoryWithModelID_];

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    v7 = [v20 supportsAdaptiveTemperatureAutomations];
    if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, ((v9 ^ a2) & 1) != 0))
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v20 setSupportsAdaptiveTemperatureAutomations_];

      sub_2297082C0();
      if (qword_27D87BA00 != -1)
      {
        swift_once();
      }

      v11 = sub_22A4DD07C();
      __swift_project_value_buffer(v11, qword_27D8AB878);

      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v14 = 136315906;
        *(v14 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v20);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5915E0, &v20);
        *(v14 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F1D0, &qword_22A57E358);
        v15 = sub_22A4DD64C();
        v17 = sub_2295A3E30(v15, v16, &v20);

        *(v14 + 24) = v17;
        *(v14 + 32) = 1024;
        *(v14 + 34) = a2 & 1;
        _os_log_impl(&dword_229538000, v12, v13, "%s %s Updated supportsAdaptiveTemperatureAutomations from %s to %{BOOL}d", v14, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v19, -1, -1);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2296C6638(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_2296C6684, v1, 0);
}

uint64_t sub_2296C6684()
{
  v28 = v0;
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      *(v0 + 40) = v6;

      if (v6)
      {
        v7 = *(v0 + 16);
        v8 = *(v0 + 24);
        v9 = *(v0 + 80);
        v10 = swift_allocObject();
        *(v0 + 48) = v10;
        *(v10 + 16) = v7;
        *(v10 + 24) = v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;

        v11 = v6;

        return MEMORY[0x2822009F8](sub_2296C6A84, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 16);
    v13 = sub_22A4DD07C();
    __swift_project_value_buffer(v13, qword_27D8AB878);

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2295A3E30(*(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v27);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A5915B0, &v27);
      _os_log_impl(&dword_229538000, v14, v15, "%s %s Missing context, failed to update supportsCleanEnergyAutomation", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 16);
    v20 = sub_22A4DD07C();
    __swift_project_value_buffer(v20, qword_27D8AB878);

    v14 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v21))
    {
      v22 = *(v0 + 16);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v27);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A5915B0, &v27);
      _os_log_impl(&dword_229538000, v14, v21, "%s %s Missing home, failed to update supportsCleanEnergyAutomation", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2296C6A84()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8AE0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2296C6B8C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2296C6B8C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2296C6D24;
    v5 = 0;
  }

  else
  {
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[2];

    v4 = sub_2296C6CBC;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C6CBC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C6D24()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];

  return MEMORY[0x2822009F8](sub_2296C6D98, v3, 0);
}

uint64_t sub_2296C6D98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

void sub_2296C6E00(uint64_t a1, int a2)
{
  v5 = objc_opt_self();
  v6 = sub_22A4DB77C();
  [v5 findHAPAccessoryWithModelID_];

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v2)
  {
    v7 = [v20 supportsCleanEnergyAutomation];
    if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, ((v9 ^ a2) & 1) != 0))
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v20 setSupportsCleanEnergyAutomation_];

      sub_2297082C0();
      if (qword_27D87BA00 != -1)
      {
        swift_once();
      }

      v11 = sub_22A4DD07C();
      __swift_project_value_buffer(v11, qword_27D8AB878);

      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v14 = 136315906;
        *(v14 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v20);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_2295A3E30(0xD000000000000028, 0x800000022A5915B0, &v20);
        *(v14 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F1D0, &qword_22A57E358);
        v15 = sub_22A4DD64C();
        v17 = sub_2295A3E30(v15, v16, &v20);

        *(v14 + 24) = v17;
        *(v14 + 32) = 1024;
        *(v14 + 34) = a2 & 1;
        _os_log_impl(&dword_229538000, v12, v13, "%s %s Updated supportsCleanEnergyAutomation from %s to %{BOOL}d", v14, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v19, -1, -1);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2296C7160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(type metadata accessor for ThermostatSuggestedPreset.Current(0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296C724C, v1, 0);
}

uint64_t sub_2296C724C()
{
  v33 = v0;
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[9] = v6;

      if (v6)
      {
        v8 = v0[6];
        v7 = v0[7];
        v10 = v0[4];
        v9 = v0[5];
        v11 = v0[3];
        sub_2296C8838(v0[2], v7);
        v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
        v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
        v14 = swift_allocObject();
        v0[10] = v14;
        *(v14 + 16) = v11;
        sub_2296C8A1C(v7, v14 + v12, type metadata accessor for ThermostatSuggestedPreset.Current);
        *(v14 + v13) = v6;
        *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;

        v15 = v6;

        return MEMORY[0x2822009F8](sub_2296C76B0, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v16 = v0[3];
    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_27D8AB878);

    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[3];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_2295A3E30(*(v20 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v20 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v32);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A591550, &v32);
      _os_log_impl(&dword_229538000, v18, v19, "%s %s Missing context, failed to update thermostatSuggestedPreset", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v23 = v0[3];
    v24 = sub_22A4DD07C();
    __swift_project_value_buffer(v24, qword_27D8AB878);

    v18 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v25))
    {
      v26 = v0[3];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_2295A3E30(*(v26 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v26 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v32);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A591550, &v32);
      _os_log_impl(&dword_229538000, v18, v25, "%s %s Missing home, failed to update thermostatSuggestedPreset", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }
  }

  v29 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2296C76B0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C889C;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2296C77B8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v6);
}

uint64_t sub_2296C77B8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2296C7958;
    v5 = 0;
  }

  else
  {
    v6 = v2[10];
    v7 = v2[11];
    v8 = v2[3];

    v4 = sub_2296C78E8;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C78E8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2296C7958()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[3];

  return MEMORY[0x2822009F8](sub_2296C79CC, v3, 0);
}

uint64_t sub_2296C79CC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 104);

  return v3();
}

uint64_t sub_2296C7A40(uint64_t a1, char *a2, uint64_t a3)
{
  v82 = a3;
  v83 = a2;
  v4 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C0, &unk_22A57E340);
  v7 = *(*(v80 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v80);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v75 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  v25 = objc_opt_self();
  v84 = a1;
  v26 = sub_22A4DB77C();
  v27 = [v25 findHAPAccessoryWithModelID_];

  v88 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  v28 = v87;
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (v28)
  {
    return result;
  }

  v77 = "tiveTemperatureUpdated";
  v78 = v16;
  v79 = 0;
  v76 = v13;
  v30 = v83;
  v31 = v84;
  v87 = v19;
  v32 = v89;
  v33 = swift_unknownObjectRetain();
  sub_2296C8344(v33, v24);
  sub_2296C8944(v24, v22);
  if ((*(v85 + 6))(v22, 1, v86) == 1)
  {
    sub_2296C89B4(v22);
    v86 = v10;
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v34 = sub_22A4DD07C();
    __swift_project_value_buffer(v34, qword_27D8AB878);

    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_2295A3E30(*(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v89);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2295A3E30(0xD000000000000021, v77 | 0x8000000000000000, &v89);
      _os_log_impl(&dword_229538000, v35, v36, "%s %s Missing saved thermostat suggested preset. Not submitting log event", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);
    }

    v39 = v78;
    goto LABEL_14;
  }

  v40 = v22;
  v41 = v81;
  sub_2296C8A1C(v40, v81, type metadata accessor for ThermostatSuggestedPreset.MKF);
  v39 = v78;
  if (*v41 != *v30)
  {
    v86 = v10;
    v52 = *(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_thermostatSuggestedLogEventFactory);
    sub_2297C4D28(v41, v30);
    sub_2296C8A84(v41);
LABEL_14:
    v53 = *v30;
    v54 = sub_22A4DE74C();
    [v32 setThermostatCurrentSuggestedPresetScenario_];

    v55 = &v30[*(type metadata accessor for ThermostatSuggestedPreset.Current(0) + 24)];
    v56 = sub_22A4DB6AC();
    [v32 setThermostatCurrentSuggestedPresetChangedTimestamp_];

    v57 = swift_unknownObjectRetain();
    v58 = v87;
    sub_2296C8344(v57, v87);
    v59 = v76;
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v60 = sub_22A4DD07C();
    __swift_project_value_buffer(v60, qword_27D8AB878);
    sub_2296C8944(v24, v39);
    sub_2296C8944(v58, v59);

    v61 = sub_22A4DD05C();
    v62 = sub_22A4DDCCC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      LODWORD(v83) = v62;
      v64 = v63;
      v84 = swift_slowAlloc();
      v89 = v84;
      *v64 = 136315906;
      *(v64 + 4) = sub_2295A3E30(*(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v89);
      v85 = v24;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_2295A3E30(0xD000000000000021, v77 | 0x8000000000000000, &v89);
      *(v64 + 22) = 2080;
      v65 = v86;
      sub_2296C8944(v39, v86);
      v66 = sub_22A4DD64C();
      v68 = v67;
      sub_2296C89B4(v39);
      v69 = sub_2295A3E30(v66, v68, &v89);

      *(v64 + 24) = v69;
      *(v64 + 32) = 2080;
      sub_2296C8944(v59, v65);
      v70 = sub_22A4DD64C();
      v72 = v71;
      sub_2296C89B4(v59);
      v73 = sub_2295A3E30(v70, v72, &v89);
      v24 = v85;

      *(v64 + 34) = v73;
      _os_log_impl(&dword_229538000, v61, v83, "%s %s Saving new thermostat suggested preset %s -> %s", v64, 0x2Au);
      v74 = v84;
      swift_arrayDestroy();
      v58 = v87;
      MEMORY[0x22AAD4E50](v74, -1, -1);
      MEMORY[0x22AAD4E50](v64, -1, -1);
    }

    else
    {

      sub_2296C89B4(v59);
      sub_2296C89B4(v39);
    }

    sub_2297082C0();
    swift_unknownObjectRelease();
    sub_2296C89B4(v58);
    return sub_2296C89B4(v24);
  }

  if (qword_27D87BA00 != -1)
  {
    swift_once();
  }

  v42 = sub_22A4DD07C();
  __swift_project_value_buffer(v42, qword_27D8AB878);

  v43 = sub_22A4DD05C();
  v44 = sub_22A4DDCCC();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v77;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v48 = v41;
    v49 = v24;
    v50 = swift_slowAlloc();
    v89 = v50;
    *v47 = 136315394;
    *(v47 + 4) = sub_2295A3E30(*(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v31 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v89);
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_2295A3E30(0xD000000000000021, v46 | 0x8000000000000000, &v89);
    _os_log_impl(&dword_229538000, v43, v44, "%s %s Ignoring thermostat suggested preset because it has not changed", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v50, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);
    swift_unknownObjectRelease();

    sub_2296C8A84(v48);
    v51 = v49;
  }

  else
  {
    swift_unknownObjectRelease();

    sub_2296C8A84(v41);
    v51 = v24;
  }

  return sub_2296C89B4(v51);
}

uint64_t sub_2296C8344@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 thermostatCurrentSuggestedPresetScenario];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 thermostatCurrentSuggestedPresetChangedTimestamp];
    if (v11)
    {
      v12 = v11;
      sub_22A4DB70C();

      v13 = sub_2296F0214([v10 unsignedCharValue]);
      if (v13 != 8)
      {
        v19 = v13;
        swift_unknownObjectRelease();

        *a2 = v19;
        v20 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
        (*(v5 + 32))(&a2[*(v20 + 20)], v8, v4);
        return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
      }

      if (qword_27D87BA40 != -1)
      {
        swift_once();
      }

      v14 = sub_22A4DD07C();
      __swift_project_value_buffer(v14, qword_27D8AB940);
      v15 = sub_22A4DD05C();
      v16 = sub_22A4DDCEC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_2295A3E30(0x7469772874696E69, 0xEB00000000293A68, &v24);
        _os_log_impl(&dword_229538000, v15, v16, "%s Invalid MKF.thermostatCurrentSuggestedPresetScenario", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AAD4E50](v18, -1, -1);
        MEMORY[0x22AAD4E50](v17, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v8, v4);
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

  v22 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t sub_2296C8684()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  v1 = OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_uuid;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_thermostatSuggestedLogEventFactory);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DefaultHAPAccessoryClimateStorage()
{
  result = qword_27D87F1A8;
  if (!qword_27D87F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296C877C()
{
  result = sub_22A4DB7DC();
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

uint64_t sub_2296C8838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatSuggestedPreset.Current(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296C889C()
{
  v1 = *(type metadata accessor for ThermostatSuggestedPreset.Current(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_2296C7A40(*(v0 + 16), (v0 + v2), *(v0 + v3));
}

uint64_t sub_2296C8944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C0, &unk_22A57E340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296C89B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C0, &unk_22A57E340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296C8A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296C8A84(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2296C8AE0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2296C6E00(*(v0 + 16), *(v0 + 24));
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2296C8B44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2296C62D8(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_2296C8BF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2296C208C();
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2296C8C54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2296C1748();
}

uint64_t sub_2296C8C94()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB8A8);
  __swift_project_value_buffer(v0, qword_27D8AB8A8);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296C8D0C()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB8C0);
  __swift_project_value_buffer(v0, qword_27D8AB8C0);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296C8D84()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB8D8);
  __swift_project_value_buffer(v0, qword_27D8AB8D8);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

BOOL sub_2296C8E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_2296D00B8(a4, a5);
  }

  while ((sub_22A4DD58C() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_2296C8F94()
{
  v0 = sub_22A4DCC4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22A4DCCCC();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v22 = sub_22A4DC6BC();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, qword_27D8AB8F0);
  sub_22A4DCCBC();
  (*(v1 + 16))(v4, v16, v0);
  v17 = v23;
  (*(v5 + 16))(v9, v11, v23);
  sub_22A4DC6CC();
  (*(v5 + 8))(v11, v17);
  v18 = sub_22A4DC6AC();
  (*(v12 + 8))(v15, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F278, &qword_22A57E3E8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22A576180;
  *(v19 + 32) = v18;
  v20 = sub_22A4DC69C();

  return v20;
}

uint64_t sub_2296C92A0()
{
  v0 = sub_22A4DCDAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DC77C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v32 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - v10);
  v31 = sub_22A4DC67C();
  v33 = *(v31 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D87BA28 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_27D8AB908);
  v16 = *MEMORY[0x277D17238];
  v29 = v6[13];
  v29(v11, v16, v5);
  v28 = *(v1 + 16);
  v28(v4, v15, v0);
  v27 = v6[2];
  v27(v32, v11, v5);
  sub_22A4DC68C();
  v26 = v6[1];
  v26(v11, v5);
  v30 = sub_22A4DC66C();
  v17 = *(v33 + 8);
  v33 += 8;
  v25 = v17;
  v17(v14, v31);
  if (qword_27D87BA30 != -1)
  {
    swift_once();
  }

  v18 = v0;
  v19 = __swift_project_value_buffer(v0, qword_27D8AB920);
  *v11 = 24;
  v29(v11, *MEMORY[0x277D17240], v5);
  v28(v4, v19, v18);
  v27(v32, v11, v5);
  sub_22A4DC68C();
  v26(v11, v5);
  v20 = sub_22A4DC66C();
  v25(v14, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F280, &unk_22A57E3F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22A5761A0;
  *(v21 + 32) = v30;
  *(v21 + 40) = v20;
  v22 = sub_22A4DC65C();

  return v22;
}

uint64_t sub_2296C96DC(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E948, &unk_22A57E3C0) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[35] = v4;
  v5 = *(v4 - 8);
  v2[36] = v5;
  v6 = *(v5 + 64) + 15;
  v2[37] = swift_task_alloc();
  v7 = sub_22A4DCD0C();
  v2[38] = v7;
  v8 = *(v7 - 8);
  v2[39] = v8;
  v9 = *(v8 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296C983C, 0, 0);
}

uint64_t sub_2296C983C()
{
  v38 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_0(*(v0 + 264) *(*(v0 + 264) + 24))];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = *(v0 + 328);
    v5 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v6 = MEMORY[0x277D17450];
    *(v0 + 80) = v5;
    *(v0 + 88) = v6;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);
    sub_22A4DCCDC();
    v7 = *(MEMORY[0x277D17250] + 4);
    v8 = swift_task_alloc();
    *(v0 + 336) = v8;
    *v8 = v0;
    v8[1] = sub_2296C9CD0;
    v9 = *(v0 + 328);

    return MEMORY[0x282171548](v0 + 16, v9);
  }

  else
  {
    if (qword_27D87BA18 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 264);
    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB8D8);
    sub_22957F1C4(v10, v0 + 96);
    sub_22957F1C4(v10, v0 + 136);
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCCC();
    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 288);
      v14 = *(v0 + 296);
      v36 = *(v0 + 280);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v37);
      *(v16 + 12) = 2080;
      v18 = [*__swift_project_boxed_opaque_existential_0((v0 + 96) *(v0 + 120))];
      v19 = sub_22A4DD5EC();
      v21 = v20;

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v22 = sub_2295A3E30(v19, v21, &v37);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      v23 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v15 + 8))(v14, v36);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v27 = sub_2295A3E30(v24, v26, &v37);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_229538000, v12, v13, "[%s:%s/%s] Device not supported (no matterDevice)", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v28 = *(v0 + 256);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v31 = *(v0 + 320);
    v30 = *(v0 + 328);
    v32 = *(v0 + 296);
    v33 = *(v0 + 272);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_2296C9CD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 328);
  v6 = *(*v2 + 312);
  v7 = *(*v2 + 304);
  v10 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2296CA4E0;
  }

  else
  {
    v8 = sub_2296C9E44;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2296C9E44()
{
  v35 = v0;
  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[33];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB8D8);
  sub_22957F1C4(v2, (v0 + 22));
  sub_22957F1C4(v2, (v0 + 27));
  swift_bridgeObjectRetain_n();
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  if (v6)
  {
    v8 = v0[37];
    v9 = v0[36];
    v31 = v0[35];
    v32 = v0[38];
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v10 = 136316162;
    *(v10 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v34);
    *(v10 + 12) = 2080;
    v11 = [*__swift_project_boxed_opaque_existential_0(v0 + 22 v0[25])];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
    v15 = sub_2295A3E30(v12, v14, &v34);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = [*__swift_project_boxed_opaque_existential_0(v0 + 27 v0[30])];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v9 + 8))(v8, v31);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v20 = sub_2295A3E30(v17, v19, &v34);

    *(v10 + 24) = v20;
    *(v10 + 32) = 2048;
    v21 = *(v7 + 16);

    *(v10 + 34) = v21;

    *(v10 + 42) = 2080;
    v22 = MEMORY[0x22AAD0A20](v7, v32);
    v24 = sub_2295A3E30(v22, v23, &v34);

    *(v10 + 44) = v24;
    _os_log_impl(&dword_229538000, v4, v5, "[%s:%s/%s] Retrieved %ld child endpoints: %s", v10, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {
    v25 = v0[43];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  }

  v26 = swift_task_alloc();
  v0[45] = v26;
  *v26 = v0;
  v26[1] = sub_2296CA200;
  v27 = v0[43];
  v29 = v0[33];
  v28 = v0[34];

  return sub_2296CA620(v28, v29, (v0 + 2), v27);
}

uint64_t sub_2296CA200()
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 344);
  v6 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_2296CA580;
  }

  else
  {
    v4 = sub_2296CA330;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296CA330()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[34];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[32];
    sub_22953EAE4(v0[34], &qword_27D87E948, &unk_22A57E3C0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = v0[40];
    v7 = v0[38];
    v8 = v0[32];
    v9 = *(v0[39] + 32);
    v9(v6, v0[34], v7);
    v9(v8, v6, v7);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  v12 = v0[40];
  v11 = v0[41];
  v13 = v0[37];
  v14 = v0[34];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2296CA4E0()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v5 = v0[34];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2296CA580()
{
  v1 = v0[46];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v5 = v0[34];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2296CA620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_22A4DB7DC();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v8 = sub_22A4DC52C();
  v4[29] = v8;
  v9 = *(v8 - 8);
  v4[30] = v9;
  v10 = *(v9 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = sub_22A4DC55C();
  v4[33] = v11;
  v12 = *(v11 - 8);
  v4[34] = v12;
  v13 = *(v12 + 64) + 15;
  v4[35] = swift_task_alloc();
  v14 = sub_22A4DCD0C();
  v4[36] = v14;
  v15 = *(v14 - 8);
  v4[37] = v15;
  v16 = *(v15 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296CA81C, 0, 0);
}

uint64_t sub_2296CA81C()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 424) = v6;
    *(v0 + 336) = *(v4 + 56);
    *(v0 + 344) = v5;
    v7 = *(v0 + 320);
    *(v0 + 352) = 0;
    *(v0 + 360) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = *(MEMORY[0x277D17248] + 4);
    v9 = swift_task_alloc();
    *(v0 + 368) = v9;
    *v9 = v0;
    v9[1] = sub_2296CA9CC;
    v10 = *(v0 + 320);
    v11 = *(v0 + 192);

    return MEMORY[0x282171540](v11, v10);
  }

  else
  {
    v12 = *(v0 + 312);
    v13 = *(v0 + 320);
    v14 = *(v0 + 304);
    v15 = *(v0 + 280);
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 224);
    (*(*(v0 + 296) + 56))(*(v0 + 176), 1, 1, *(v0 + 288));

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2296CA9CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_2296CB97C;
  }

  else
  {
    v5 = sub_2296CAAE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296CAAE0()
{
  v78 = v0;
  v1 = 0;
  v71 = *(v0 + 376);
  v73 = *(v71 + 16);
  while (v73 != v1)
  {
    if (v1 >= *(v71 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v2 = *(v0 + 272);
    v3 = *(v0 + 280);
    v4 = *(v0 + 256);
    v75 = *(v0 + 264);
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 232);
    (*(v2 + 16))(v3, *(v0 + 376) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1++);
    sub_22A4DC54C();
    sub_22A4DC50C();
    sub_2296D00B8(&qword_27D87DCE0, MEMORY[0x277D17180]);
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    v8 = *(v5 + 8);
    v8(v6, v7);
    v8(v4, v7);
    (*(v2 + 8))(v3, v75);
    if (*(v0 + 416) == *(v0 + 420))
    {
      v9 = *(v0 + 376);

      v10 = *(MEMORY[0x277D17258] + 4);
      v11 = swift_task_alloc();
      *(v0 + 392) = v11;
      *v11 = v0;
      v11[1] = sub_2296CB228;
      v12 = *(v0 + 320);
      v13 = *(v0 + 192);

      return MEMORY[0x282171550](v13, v12);
    }
  }

  if (qword_27D87BA18 == -1)
  {
    goto LABEL_9;
  }

LABEL_20:
  swift_once();
LABEL_9:
  v14 = *(v0 + 376);
  v15 = *(v0 + 360);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 184);
  v21 = sub_22A4DD07C();
  __swift_project_value_buffer(v21, qword_27D8AB8D8);
  sub_22957F1C4(v20, v0 + 96);
  sub_22957F1C4(v20, v0 + 136);
  v16(v18, v17, v19);

  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCDC();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 320);
  v26 = *(v0 + 296);
  v27 = *(v0 + 304);
  v28 = *(v0 + 288);
  if (v24)
  {
    v70 = *(v0 + 264);
    v74 = v23;
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v68 = *(v0 + 208);
    v76 = *(v0 + 320);
    v69 = *(v0 + 376);
    v31 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v77 = v72;
    *v31 = 136316162;
    *(v31 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v77);
    *(v31 + 12) = 2080;
    v32 = [*__swift_project_boxed_opaque_existential_0((v0 + 96) *(v0 + 120))];
    v33 = sub_22A4DD5EC();
    v67 = v28;
    v35 = v34;

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v36 = sub_2295A3E30(v33, v35, &v77);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    v37 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
    v38 = sub_22A4DE5CC();
    v40 = v39;
    (*(v30 + 8))(v29, v68);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v41 = sub_2295A3E30(v38, v40, &v77);

    *(v31 + 24) = v41;
    *(v31 + 32) = 512;
    LOWORD(v41) = sub_22A4DCCFC();
    v42 = *(v26 + 8);
    v42(v27, v67);
    *(v31 + 34) = v41;
    *(v31 + 36) = 2080;
    v43 = MEMORY[0x22AAD0A20](v69, v70);
    v45 = v44;

    v46 = sub_2295A3E30(v43, v45, &v77);

    *(v31 + 38) = v46;
    _os_log_impl(&dword_229538000, v22, v74, "[%s:%s/%s] Endpoint 0x%hx - no matching device type (%s)", v31, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v72, -1, -1);
    MEMORY[0x22AAD4E50](v31, -1, -1);

    v42(v76, v67);
  }

  else
  {
    v47 = *(v26 + 8);
    v47(*(v0 + 304), *(v0 + 288));

    v47(v25, v28);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  v48 = *(v0 + 352) + 1;
  if (v48 == *(v0 + 328))
  {
    v49 = *(v0 + 312);
    v50 = *(v0 + 320);
    v51 = *(v0 + 304);
    v52 = *(v0 + 280);
    v54 = *(v0 + 248);
    v53 = *(v0 + 256);
    v55 = *(v0 + 224);
    (*(*(v0 + 296) + 56))(*(v0 + 176), 1, 1, *(v0 + 288));

    v56 = *(v0 + 8);

    return v56();
  }

  else
  {
    v57 = *(v0 + 344);
    v58 = *(v0 + 320);
    v59 = *(v0 + 288);
    v60 = *(v0 + 200) + ((*(v0 + 424) + 32) & ~*(v0 + 424)) + *(v0 + 336) * v48;
    v61 = (*(v0 + 296) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 352) = v48;
    *(v0 + 360) = v61;
    v57(v58, v60, v59);
    v62 = *(MEMORY[0x277D17248] + 4);
    v63 = swift_task_alloc();
    *(v0 + 368) = v63;
    *v63 = v0;
    v63[1] = sub_2296CA9CC;
    v64 = *(v0 + 320);
    v65 = *(v0 + 192);

    return MEMORY[0x282171540](v65, v64);
  }
}

uint64_t sub_2296CB228(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v7 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v5 = sub_2296CBA50;
  }

  else
  {
    v5 = sub_2296CB33C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296CB33C()
{
  v71 = v0;
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_22A4DCC4C();
  v3 = __swift_project_value_buffer(v2, qword_27D8AB8F0);
  if (sub_2296C8E8C(v3, v1, MEMORY[0x277D173C8], &qword_27D87F268, MEMORY[0x277D173C8]))
  {
    v4 = *(v0 + 400);
    v5 = *(v0 + 320);
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    v8 = *(v0 + 176);

    (*(v7 + 32))(v8, v5, v6);
    v9 = 0;
LABEL_12:
    v45 = *(v0 + 312);
    v46 = *(v0 + 320);
    v47 = *(v0 + 304);
    v48 = *(v0 + 280);
    v50 = *(v0 + 248);
    v49 = *(v0 + 256);
    v51 = *(v0 + 224);
    (*(*(v0 + 296) + 56))(*(v0 + 176), v9, 1, *(v0 + 288));

    v52 = *(v0 + 8);

    return v52();
  }

  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 400);
  v11 = *(v0 + 360);
  v12 = *(v0 + 344);
  v14 = *(v0 + 312);
  v13 = *(v0 + 320);
  v15 = *(v0 + 288);
  v16 = *(v0 + 184);
  v17 = sub_22A4DD07C();
  __swift_project_value_buffer(v17, qword_27D8AB8D8);
  sub_22957F1C4(v16, v0 + 16);
  sub_22957F1C4(v16, v0 + 56);
  v12(v14, v13, v15);

  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCDC();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 312);
  v22 = *(v0 + 320);
  v23 = *(v0 + 288);
  v24 = *(v0 + 296);
  if (v20)
  {
    v67 = v19;
    log = v18;
    v69 = *(v0 + 320);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v64 = *(v0 + 208);
    v65 = *(v0 + 400);
    v27 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v70 = v66;
    *v27 = 136316162;
    *(v27 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v70);
    *(v27 + 12) = 2080;
    v28 = [*__swift_project_boxed_opaque_existential_0((v0 + 16) *(v0 + 40))];
    v63 = v23;
    v29 = sub_22A4DD5EC();
    v31 = v30;

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v32 = sub_2295A3E30(v29, v31, &v70);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    v33 = [*__swift_project_boxed_opaque_existential_0((v0 + 56) *(v0 + 80))];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
    v34 = sub_22A4DE5CC();
    v36 = v35;
    (*(v26 + 8))(v25, v64);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v37 = sub_2295A3E30(v34, v36, &v70);

    *(v27 + 24) = v37;
    *(v27 + 32) = 512;
    LOWORD(v37) = sub_22A4DCCFC();
    v38 = *(v24 + 8);
    v38(v21, v63);
    *(v27 + 34) = v37;
    *(v27 + 36) = 2080;
    v39 = MEMORY[0x22AAD0A20](v65, v2);
    v41 = v40;

    v42 = sub_2295A3E30(v39, v41, &v70);

    *(v27 + 38) = v42;
    _os_log_impl(&dword_229538000, log, v67, "[%s:%s/%s] Endpoint 0x%hx - no matching client clusters (%s)", v27, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v66, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);

    v38(v69, v63);
  }

  else
  {
    v43 = *(v24 + 8);
    v43(*(v0 + 312), *(v0 + 288));

    v43(v22, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v44 = *(v0 + 352) + 1;
  if (v44 == *(v0 + 328))
  {
    v9 = 1;
    goto LABEL_12;
  }

  v54 = *(v0 + 344);
  v55 = *(v0 + 320);
  v56 = *(v0 + 288);
  v57 = *(v0 + 200) + ((*(v0 + 424) + 32) & ~*(v0 + 424)) + *(v0 + 336) * v44;
  v58 = (*(v0 + 296) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 352) = v44;
  *(v0 + 360) = v58;
  v54(v55, v57, v56);
  v59 = *(MEMORY[0x277D17248] + 4);
  v60 = swift_task_alloc();
  *(v0 + 368) = v60;
  *v60 = v0;
  v60[1] = sub_2296CA9CC;
  v61 = *(v0 + 320);
  v62 = *(v0 + 192);

  return MEMORY[0x282171540](v62, v61);
}

uint64_t sub_2296CB97C()
{
  v1 = v0[48];
  v2 = v0[39];
  v3 = v0[38];
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  (*(v0[37] + 8))(v0[40], v0[36]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2296CBA50()
{
  v1 = v0[51];
  v2 = v0[39];
  v3 = v0[38];
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  (*(v0[37] + 8))(v0[40], v0[36]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2296CBB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_2296D00B8(&qword_281403880, MEMORY[0x277CC95F0]);
      v28 = sub_22A4DD4EC();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_2296D00B8(&qword_281403870, MEMORY[0x277CC95F0]);
        v33 = sub_22A4DD58C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296CBEE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DCCAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_2296D00B8(&qword_27D87CF18, MEMORY[0x277D173F0]);
      v28 = sub_22A4DD4EC();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_2296D00B8(&qword_27D87CF20, MEMORY[0x277D173F0]);
        v33 = sub_22A4DD58C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296CC2AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_2296CC60C(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_229562F68(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v30 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v31 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v31 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(a2 + 40);
          v22 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v23 = sub_22A4DDECC();
          v24 = -1 << *(a2 + 32);
          v25 = v23 & ~v24;
          if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            break;
          }

          v26 = ~v24;
          while (1)
          {
            v27 = *(*(a2 + 48) + 8 * v25);
            v28 = sub_22A4DDEDC();

            if (v28)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v30;
          v13 = v31;
          v17 = a1;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_2296CC60C(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

uint64_t sub_2296CC5A8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a2(0);
  __swift_allocate_value_buffer(v8, a3);
  __swift_project_value_buffer(v8, a3);
  return a5(a4);
}

void sub_2296CC60C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_22A4DE0EC())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_22A4DE13C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2296CC70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22A4DCD0C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296CC7D0, 0, 0);
}

uint64_t sub_2296CC7D0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_22A4DCCEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F270, &qword_22A57E3E0);
  v7 = *(sub_22A4DC55C() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_22A576180;
  sub_22A4DC4FC();
  v10 = sub_22A4DC64C();

  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_2296CC958(char *a1, uint64_t a2)
{
  v78 = a2;
  v4 = sub_22A4DCC4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F260, &qword_22A57E3B0);
  v8 = *(*(v103 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v103);
  v81 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F258, &qword_22A57E3A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v77 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v77 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = (&v77 - v28);
  v112 = sub_22A4DCCAC();
  v30 = *(*(v112 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v112);
  v84 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v85 = &v77 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v77 = &v77 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v83 = &v77 - v38;
  MEMORY[0x28223BE20](v37);
  v109 = &v77 - v40;
  v110 = a1;
  v96 = *(a1 + 2);
  v79 = v39;
  if (!v96)
  {

    v111 = 0;
    v58 = 0;
    goto LABEL_20;
  }

  v90 = v21;
  v42 = *(v39 + 16);
  v41 = v39 + 16;
  v106 = v42;
  v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
  v44 = (v5 + 16);
  v102 = (v5 + 56);
  v104 = *(v41 + 56);
  v97 = (v5 + 48);
  v87 = (v5 + 32);
  v92 = (v5 + 8);
  v45 = v41;
  v101 = (v41 - 8);

  v46 = 0;
  v82 = v43;
  v93 = v44;
  v94 = v24;
  v107 = v27;
  v108 = v29;
  v105 = v45;
  while (1)
  {
    v111 = v46;
    v106(v109, &v110[v43], v112);
    sub_22A4DCC9C();
    if (qword_27D87BA20 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v4, qword_27D8AB8F0);
    v99 = *v44;
    v100 = v49;
    v50 = v44;
    v99(v27);
    v98 = *v102;
    v98(v27, 0, 1, v4);
    v51 = *(v103 + 48);
    sub_2296D0048(v29, v12);
    sub_2296D0048(v27, &v12[v51]);
    v52 = v27;
    v53 = *v97;
    if ((*v97)(v12, 1, v4) == 1)
    {
      break;
    }

    sub_2296D0048(v12, v24);
    v95 = v53;
    if (v53(&v12[v51], 1, v4) != 1)
    {
      v54 = v88;
      (*v87)(v88, &v12[v51], v4);
      sub_2296D00B8(&qword_27D87F268, MEMORY[0x277D173C8]);
      v89 = sub_22A4DD58C();
      v55 = *v92;
      (*v92)(v54, v4);
      v2 = &qword_27D87F258;
      sub_22953EAE4(v107, &qword_27D87F258, &qword_22A57E3A8);
      sub_22953EAE4(v108, &qword_27D87F258, &qword_22A57E3A8);
      v56 = *v101;
      (*v101)(v109, v112);
      v55(v24, v4);
      v44 = v93;
      result = sub_22953EAE4(v12, &qword_27D87F258, &qword_22A57E3A8);
      v48 = v105;
      if (v89)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v2 = &qword_22A57E3A8;
    sub_22953EAE4(v107, &qword_27D87F258, &qword_22A57E3A8);
    sub_22953EAE4(v108, &qword_27D87F258, &qword_22A57E3A8);
    (*v101)(v109, v112);
    (*v92)(v24, v4);
LABEL_4:
    sub_22953EAE4(v12, &qword_27D87F260, &qword_22A57E3B0);
    v48 = v105;
    v24 = v94;
    v44 = v50;
LABEL_5:
    v46 = v111 + 1;
    v43 += v104;
    v27 = v107;
    v29 = v108;
    if (v96 == v111 + 1)
    {
      v111 = v96;
      goto LABEL_18;
    }
  }

  v2 = &qword_27D87F258;
  sub_22953EAE4(v52, &qword_27D87F258, &qword_22A57E3A8);
  sub_22953EAE4(v29, &qword_27D87F258, &qword_22A57E3A8);
  v47 = *v101;
  (*v101)(v109, v112);
  if (v53(&v12[v51], 1, v4) != 1)
  {
    goto LABEL_4;
  }

  v95 = v53;
  result = sub_22953EAE4(v12, &qword_27D87F258, &qword_22A57E3A8);
  v48 = v105;
  v56 = v47;
LABEL_16:
  v2 = v81;
  v59 = v83;
  if (__OFADD__(v111, 1))
  {
    __break(1u);
    return result;
  }

  if (v111 + 1 == v96)
  {
LABEL_18:
    v60 = v111;
    v58 = *(v110 + 2);
    if (v58 < v111)
    {
      goto LABEL_57;
    }

    v60 = v111;
    if (v111 < 0)
    {
      goto LABEL_58;
    }

LABEL_20:
    v60 = v111 - v58;
    v48 = v111;
    if (__OFADD__(v58, v111 - v58))
    {
      goto LABEL_59;
    }

    v61 = v110;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v61;
    if (!isUniquelyReferenced_nonNull_native || v48 > *(v110 + 3) >> 1)
    {
      if (v58 <= v48)
      {
        v63 = v48;
      }

      else
      {
        v63 = v58;
      }

      v110 = sub_22958B424(isUniquelyReferenced_nonNull_native, v63, 1, v110);
      v113 = v110;
    }

    v4 = v77;
    sub_2296A4FCC(v111, v58, 0);
    v2 = v79;
    (*(v79 + 16))(v4, v78, v112);
    v48 = *(v110 + 2);
    v60 = *(v110 + 3);
    v58 = v48 + 1;
    if (v48 >= v60 >> 1)
    {
      goto LABEL_60;
    }

    goto LABEL_28;
  }

  v109 = v56;
  v65 = v104 + v43;
  v66 = v111 + 1;
  v108 = (v79 + 40);
  v58 = v97;
  v80 = v4;
  while (2)
  {
    v60 = *(v110 + 2);
    if (v66 < v60)
    {
      v106(v59, &v110[v65], v112);
      v48 = v59;
      v67 = v90;
      sub_22A4DCC9C();
      v68 = v91;
      (v99)(v91, v100, v4);
      v98(v68, 0, 1, v4);
      v69 = *(v103 + 48);
      sub_2296D0048(v67, v2);
      sub_2296D0048(v68, v2 + v69);
      v70 = v95;
      if (v95(v2, 1, v4) == 1)
      {
        sub_22953EAE4(v68, &qword_27D87F258, &qword_22A57E3A8);
        v4 = v80;
        sub_22953EAE4(v67, &qword_27D87F258, &qword_22A57E3A8);
        (v109)(v48, v112);
        v59 = v48;
        if (v70(v2 + v69, 1, v4) == 1)
        {
          sub_22953EAE4(v2, &qword_27D87F258, &qword_22A57E3A8);
LABEL_46:
          v48 = v105;
          v60 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_52;
          }

          ++v66;
          v65 += v104;
          if (v60 == *(v110 + 2))
          {
            goto LABEL_18;
          }

          continue;
        }

LABEL_36:
        sub_22953EAE4(v2, &qword_27D87F260, &qword_22A57E3B0);
      }

      else
      {
        v48 = v86;
        sub_2296D0048(v2, v86);
        if (v70(v2 + v69, 1, v4) == 1)
        {
          sub_22953EAE4(v91, &qword_27D87F258, &qword_22A57E3A8);
          sub_22953EAE4(v90, &qword_27D87F258, &qword_22A57E3A8);
          v59 = v83;
          (v109)(v83, v112);
          (*v92)(v48, v4);
          v58 = v97;
          goto LABEL_36;
        }

        v73 = v2 + v69;
        v74 = v88;
        (*v87)(v88, v73, v4);
        sub_2296D00B8(&qword_27D87F268, MEMORY[0x277D173C8]);
        v75 = sub_22A4DD58C();
        v76 = *v92;
        v48 = v81;
        (*v92)(v74, v4);
        sub_22953EAE4(v91, &qword_27D87F258, &qword_22A57E3A8);
        sub_22953EAE4(v90, &qword_27D87F258, &qword_22A57E3A8);
        v59 = v83;
        (v109)(v83, v112);
        v76(v86, v4);
        v2 = v48;
        sub_22953EAE4(v48, &qword_27D87F258, &qword_22A57E3A8);
        v58 = v97;
        if (v75)
        {
          goto LABEL_46;
        }
      }

      if (v66 != v111)
      {
        v60 = v111;
        if (v111 < 0)
        {
          goto LABEL_53;
        }

        v60 = v111;
        v48 = *(v110 + 2);
        if (v111 >= v48)
        {
          goto LABEL_54;
        }

        v58 = v111 * v104;
        v71 = v106;
        v106(v85, &v110[v82 + v111 * v104], v112);
        if (v66 >= v48)
        {
          goto LABEL_55;
        }

        v71(v84, &v110[v65], v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2295AFEB4(v110);
        }

        v72 = v110;
        v48 = *v108;
        (*v108)(&v110[v82 + v58], v84, v112);
        v60 = *(v72 + 2);
        if (v66 >= v60)
        {
          goto LABEL_56;
        }

        (v48)(&v110[v65], v85, v112);
        v58 = v97;
      }

      ++v111;
      goto LABEL_46;
    }

    break;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v110 = sub_22958B424(v60 > 1, v58, 1, v110);
LABEL_28:
  v64 = v110;
  *(v110 + 2) = v58;
  (v2[4])(&v64[((*(v2 + 80) + 32) & ~*(v2 + 80)) + v2[9] * v48], v4, v112);
  return v64;
}

uint64_t sub_2296CD79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F258, &qword_22A57E3A8) - 8) + 64) + 15;
  v4[79] = swift_task_alloc();
  v6 = sub_22A4DC6EC();
  v4[80] = v6;
  v7 = *(v6 - 8);
  v4[81] = v7;
  v8 = *(v7 + 64) + 15;
  v4[82] = swift_task_alloc();
  v9 = sub_22A4DCCAC();
  v4[83] = v9;
  v10 = *(v9 - 8);
  v4[84] = v10;
  v11 = *(v10 + 64) + 15;
  v4[85] = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  v4[86] = v12;
  v13 = *(v12 - 8);
  v4[87] = v13;
  v14 = *(v13 + 64) + 15;
  v4[88] = swift_task_alloc();
  v15 = sub_22A4DCC4C();
  v4[89] = v15;
  v16 = *(v15 - 8);
  v4[90] = v16;
  v17 = *(v16 + 64) + 15;
  v4[91] = swift_task_alloc();
  v18 = sub_22A4DCD0C();
  v4[92] = v18;
  v19 = *(v18 - 8);
  v4[93] = v19;
  v20 = *(v19 + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296CDA58, 0, 0);
}

uint64_t sub_2296CDA58()
{
  v43 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_0(*(v0 + 600) *(*(v0 + 600) + 24))];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = *(v0 + 608);
    v5 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v6 = MEMORY[0x277D17450];
    *(v0 + 80) = v5;
    *(v0 + 88) = v6;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);

    return MEMORY[0x2822009F8](sub_2296CDF30, v4, 0);
  }

  else
  {
    if (qword_27D87BA18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 600);
    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D8AB8D8);
    sub_22957F1C4(v7, v0 + 96);
    sub_22957F1C4(v7, v0 + 136);
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 704);
      v12 = *(v0 + 696);
      v41 = *(v0 + 688);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, v42);
      *(v13 + 12) = 2080;
      v15 = [*__swift_project_boxed_opaque_existential_0((v0 + 96) *(v0 + 120))];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v19 = sub_2295A3E30(v16, v18, v42);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      v20 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
      v21 = sub_22A4DE5CC();
      v23 = v22;
      (*(v12 + 8))(v11, v41);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v24 = sub_2295A3E30(v21, v23, v42);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_229538000, v9, v10, "[%s:%s/%s] Device not supported (no matterDevice)", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v25 = objc_opt_self();
    v26 = sub_22A4DD5AC();
    [v25 hmfErrorWithCode:3 reason:v26];

    swift_willThrow();
    v27 = *(v0 + 800);
    v28 = *(v0 + 792);
    v29 = *(v0 + 784);
    v30 = *(v0 + 776);
    v31 = *(v0 + 768);
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v34 = *(v0 + 728);
    v35 = *(v0 + 704);
    v36 = *(v0 + 680);
    v39 = *(v0 + 656);
    v40 = *(v0 + 632);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_2296CDF30()
{
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 168);
  v0[101] = v2;
  if (v2)
  {
    v0[102] = *(v0[76] + 176);
    swift_unknownObjectRetain();
    v3 = sub_2296CDFDC;
  }

  else
  {
    v3 = sub_2296CF888;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296CDFDC()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[93];
  v6 = v0[92];
  swift_getObjectType();
  sub_22A4DC5BC();
  swift_unknownObjectRelease();
  (*(v5 + 32))(v3, v4, v6);
  v7 = *(MEMORY[0x277D17260] + 4);
  v8 = swift_task_alloc();
  v0[103] = v8;
  *v8 = v0;
  v8[1] = sub_2296CE0D8;
  v9 = v0[77];

  return MEMORY[0x282171558](v0 + 2, v9);
}

uint64_t sub_2296CE0D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 824);
  v7 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 840) = v1;

  if (v1)
  {
    v5 = sub_2296CFC9C;
  }

  else
  {
    v5 = sub_2296CE1F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296CE1F0()
{
  v64 = v0;
  v1 = v0[104];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  sub_22A4DCC1C();
  LOBYTE(v1) = sub_2296C8E8C(v2, v1, MEMORY[0x277D173C8], &qword_27D87F268, MEMORY[0x277D173C8]);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    v5 = v0[104];

    v6 = *(MEMORY[0x277D173E0] + 4);
    v7 = swift_task_alloc();
    v0[106] = v7;
    *v7 = v0;
    v7[1] = sub_2296CE830;
    v8 = v0[77];

    return MEMORY[0x282171788](v0 + 2, v8);
  }

  else
  {
    if (qword_27D87BA18 != -1)
    {
      swift_once();
    }

    v9 = v0[104];
    v10 = v0[94];
    v11 = v0[93];
    v12 = v0[92];
    v13 = v0[77];
    v14 = v0[75];
    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8AB8D8);
    sub_22957F1C4(v14, (v0 + 22));
    sub_22957F1C4(v14, (v0 + 27));
    (*(v11 + 16))(v10, v13, v12);

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCCC();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[94];
    v20 = v0[93];
    if (v18)
    {
      v58 = v0[89];
      v62 = v17;
      v21 = v0[88];
      v22 = v0[87];
      v55 = v0[86];
      v56 = v0[92];
      v57 = v0[104];
      v23 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63[0] = v60;
      *v23 = 136316162;
      *(v23 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, v63);
      *(v23 + 12) = 2080;
      v24 = [*__swift_project_boxed_opaque_existential_0(v0 + 22 v0[25])];
      v25 = sub_22A4DD5EC();
      v27 = v26;

      __swift_destroy_boxed_opaque_existential_0(v0 + 22);
      v28 = sub_2295A3E30(v25, v27, v63);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      v29 = [*__swift_project_boxed_opaque_existential_0(v0 + 27 v0[30])];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
      v30 = sub_22A4DE5CC();
      v32 = v31;
      (*(v22 + 8))(v21, v55);
      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
      v33 = sub_2295A3E30(v30, v32, v63);

      *(v23 + 24) = v33;
      *(v23 + 32) = 512;
      LOWORD(v33) = sub_22A4DCCFC();
      v34 = *(v20 + 8);
      v34(v19, v56);
      *(v23 + 34) = v33;
      *(v23 + 36) = 2080;
      v35 = MEMORY[0x22AAD0A20](v57, v58);
      v37 = v36;

      v38 = sub_2295A3E30(v35, v37, v63);

      *(v23 + 38) = v38;
      _os_log_impl(&dword_229538000, v16, v62, "[%s:%s/%s] Device Endpoint 0x%hx - no Binding server cluster: %s", v23, 0x2Eu);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v60, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    else
    {
      v34 = *(v20 + 8);
      v34(v0[94], v0[92]);

      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
      __swift_destroy_boxed_opaque_existential_0(v0 + 22);
    }

    v39 = v0[100];
    v40 = v0[92];
    v41 = objc_opt_self();
    v42 = sub_22A4DD5AC();
    [v41 hmfErrorWithCode:3 reason:v42];

    swift_willThrow();
    v34(v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v43 = v0[100];
    v44 = v0[99];
    v45 = v0[98];
    v46 = v0[97];
    v47 = v0[96];
    v48 = v0[95];
    v49 = v0[94];
    v50 = v0[91];
    v51 = v0[88];
    v52 = v0[85];
    v59 = v0[82];
    v61 = v0[79];

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_2296CE830(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 848);
  v7 = *v2;
  *(v3 + 856) = a1;
  *(v3 + 864) = v1;

  if (v1)
  {
    v5 = sub_2296CFDD4;
  }

  else
  {
    v5 = sub_2296CE948;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296CE948()
{
  v127 = v0;
  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v1 = v0[107];
  v2 = v0[98];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[77];
  v6 = v0[75];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8AB8D8);
  sub_22957F1C4(v6, (v0 + 32));
  sub_22957F1C4(v6, (v0 + 37));
  v122 = *(v3 + 16);
  v122(v2, v5, v4);

  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v116 = v0[107];
    v107 = v0[98];
    v108 = v0[93];
    v10 = v0[88];
    v11 = v0[87];
    v106 = v0[86];
    v110 = v0[92];
    v112 = v0[83];
    v12 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v126 = v119;
    *v12 = 136316162;
    *(v12 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v126);
    *(v12 + 12) = 2080;
    v13 = [*__swift_project_boxed_opaque_existential_0(v0 + 32 v0[35])];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    v17 = sub_2295A3E30(v14, v16, &v126);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    v18 = [*__swift_project_boxed_opaque_existential_0(v0 + 37 v0[40])];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
    v19 = sub_22A4DE5CC();
    v21 = v20;
    (*(v11 + 8))(v10, v106);
    __swift_destroy_boxed_opaque_existential_0(v0 + 37);
    v22 = sub_2295A3E30(v19, v21, &v126);

    *(v12 + 24) = v22;
    *(v12 + 32) = 512;
    LOWORD(v22) = sub_22A4DCCFC();
    v23 = *(v108 + 8);
    v23(v107, v110);
    *(v12 + 34) = v22;
    *(v12 + 36) = 2080;
    v24 = MEMORY[0x22AAD0A20](v116, v112);
    v26 = sub_2295A3E30(v24, v25, &v126);

    *(v12 + 38) = v26;
    _os_log_impl(&dword_229538000, v8, v9, "[%s:%s/%s] Device Endpoint 0x%hx - current bindings: %s", v12, 0x2Eu);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v119, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
    v23 = *(v0[93] + 8);
    v23(v0[98], v0[92]);

    __swift_destroy_boxed_opaque_existential_0(v0 + 37);
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  v120 = v23;
  v0[109] = v23;
  v27 = v0[100];
  v28 = v0[97];
  v29 = v0[92];
  (*(v0[81] + 16))(v0[82], v0[78], v0[80]);
  v122(v28, v27, v29);
  if (qword_27D87BA20 != -1)
  {
    swift_once();
  }

  v30 = v0[107];
  v31 = v0[97];
  v32 = v0[90];
  v33 = v0[89];
  v34 = v0[85];
  v35 = v0[84];
  v36 = v0[83];
  v37 = v0[82];
  v38 = v0[79];
  v39 = __swift_project_value_buffer(v33, qword_27D8AB8F0);
  (*(v32 + 16))(v38, v39, v33);
  (*(v32 + 56))(v38, 0, 1, v33);
  sub_22A4DCC8C();
  v40 = sub_2296CC958(v30, v34);
  v0[110] = v40;
  (*(v35 + 8))(v34, v36);
  v41 = sub_229672658(v30);

  v43 = sub_229672658(v42);

  LOBYTE(v37) = sub_2296CBEE8(v41, v43);

  v44 = v0[92];
  v45 = v0[77];
  v46 = v0[75];
  if (v37)
  {
    v47 = v0[96];

    sub_22957F1C4(v46, (v0 + 52));
    sub_22957F1C4(v46, (v0 + 57));
    v122(v47, v45, v44);
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCCC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[100];
    v52 = v0[96];
    v53 = v0[93];
    v54 = v0[92];
    if (v50)
    {
      v117 = v49;
      v55 = v0[88];
      v123 = v0[100];
      v56 = v0[87];
      v111 = v0[86];
      v57 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v126 = v114;
      *v57 = 136315906;
      *(v57 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v126);
      *(v57 + 12) = 2080;
      v58 = [*__swift_project_boxed_opaque_existential_0(v0 + 52 v0[55])];
      v59 = sub_22A4DD5EC();
      v61 = v60;

      __swift_destroy_boxed_opaque_existential_0(v0 + 52);
      v62 = sub_2295A3E30(v59, v61, &v126);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2080;
      v63 = [*__swift_project_boxed_opaque_existential_0(v0 + 57 v0[60])];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
      v64 = sub_22A4DE5CC();
      v66 = v65;
      (*(v56 + 8))(v55, v111);
      __swift_destroy_boxed_opaque_existential_0(v0 + 57);
      v67 = sub_2295A3E30(v64, v66, &v126);

      *(v57 + 24) = v67;
      *(v57 + 32) = 512;
      LOWORD(v67) = sub_22A4DCCFC();
      v120(v52, v54);
      *(v57 + 34) = v67;
      _os_log_impl(&dword_229538000, v48, v117, "[%s:%s/%s] Device Endpoint 0x%hx - bindings already have correct values", v57, 0x24u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v114, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);

      v120(v123, v54);
      v68 = v0 + 2;
    }

    else
    {
      v120(v0[96], v0[92]);

      v120(v51, v54);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      __swift_destroy_boxed_opaque_existential_0(v0 + 57);
      v68 = v0 + 52;
    }

    __swift_destroy_boxed_opaque_existential_0(v68);
    v91 = v0[100];
    v92 = v0[99];
    v93 = v0[98];
    v94 = v0[97];
    v95 = v0[96];
    v96 = v0[95];
    v97 = v0[94];
    v98 = v0[91];
    v99 = v0[88];
    v100 = v0[85];
    v121 = v0[82];
    v125 = v0[79];

    v101 = v0[1];

    return v101();
  }

  else
  {
    v69 = v0[95];
    sub_22957F1C4(v0[75], (v0 + 42));
    sub_22957F1C4(v46, (v0 + 47));
    v122(v69, v45, v44);

    v70 = sub_22A4DD05C();
    v71 = sub_22A4DDCCC();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[95];
    v74 = v0[93];
    if (v72)
    {
      v124 = v71;
      v75 = v0[88];
      v76 = v0[87];
      v109 = v0[86];
      v113 = v0[92];
      v115 = v0[83];
      v77 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v126 = v118;
      *v77 = 136316162;
      *(v77 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, &v126);
      *(v77 + 12) = 2080;
      v78 = [*__swift_project_boxed_opaque_existential_0(v0 + 42 v0[45])];
      v79 = sub_22A4DD5EC();
      v81 = v80;

      __swift_destroy_boxed_opaque_existential_0(v0 + 42);
      v82 = sub_2295A3E30(v79, v81, &v126);

      *(v77 + 14) = v82;
      *(v77 + 22) = 2080;
      v83 = [*__swift_project_boxed_opaque_existential_0(v0 + 47 v0[50])];
      sub_22A4DB79C();

      sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
      v84 = sub_22A4DE5CC();
      v86 = v85;
      (*(v76 + 8))(v75, v109);
      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      v87 = sub_2295A3E30(v84, v86, &v126);

      *(v77 + 24) = v87;
      *(v77 + 32) = 512;
      LOWORD(v87) = sub_22A4DCCFC();
      v120(v73, v113);
      *(v77 + 34) = v87;
      *(v77 + 36) = 2080;
      v88 = MEMORY[0x22AAD0A20](v40, v115);
      v90 = sub_2295A3E30(v88, v89, &v126);

      *(v77 + 38) = v90;
      _os_log_impl(&dword_229538000, v70, v124, "[%s:%s/%s] Device Endpoint 0x%hx - updating binding to: %s", v77, 0x2Eu);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v118, -1, -1);
      MEMORY[0x22AAD4E50](v77, -1, -1);
    }

    else
    {
      v120(v0[95], v0[92]);

      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      __swift_destroy_boxed_opaque_existential_0(v0 + 42);
    }

    v103 = *(MEMORY[0x277D173E8] + 4);
    v104 = swift_task_alloc();
    v0[111] = v104;
    *v104 = v0;
    v104[1] = sub_2296CF620;
    v105 = v0[77];

    return MEMORY[0x282171790](v40, v0 + 2, v105);
  }
}

uint64_t sub_2296CF620()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = *(v2 + 880);

  if (v0)
  {
    v6 = sub_2296CFF0C;
  }

  else
  {
    v6 = sub_2296CF754;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2296CF754()
{
  v1 = *(v0 + 744) + 8;
  (*(v0 + 872))(*(v0 + 800), *(v0 + 736));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = *(v0 + 704);
  v11 = *(v0 + 680);
  v14 = *(v0 + 656);
  v15 = *(v0 + 632);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2296CF888()
{
  v37 = v0;
  if (qword_27D87BA18 != -1)
  {
    swift_once();
  }

  v1 = v0[75];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8D8);
  sub_22957F1C4(v1, (v0 + 62));
  sub_22957F1C4(v1, (v0 + 67));
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[88];
    v6 = v0[87];
    v35 = v0[86];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A591820, v36);
    *(v7 + 12) = 2080;
    v9 = [*__swift_project_boxed_opaque_existential_0(v0 + 62 v0[65])];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    v13 = sub_2295A3E30(v10, v12, v36);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = [*__swift_project_boxed_opaque_existential_0(v0 + 67 v0[70])];
    sub_22A4DB79C();

    sub_2296D00B8(&qword_281403860, MEMORY[0x277CC95F0]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v6 + 8))(v5, v35);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    v18 = sub_2295A3E30(v15, v17, v36);

    *(v7 + 24) = v18;
    _os_log_impl(&dword_229538000, v3, v4, "[%s:%s/%s] Unable to read the server endpoint (server already dead?)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  }

  v19 = objc_opt_self();
  v20 = sub_22A4DD5AC();
  [v19 hmfErrorWithCode:3 reason:v20];

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v21 = v0[100];
  v22 = v0[99];
  v23 = v0[98];
  v24 = v0[97];
  v25 = v0[96];
  v26 = v0[95];
  v27 = v0[94];
  v28 = v0[91];
  v29 = v0[88];
  v30 = v0[85];
  v33 = v0[82];
  v34 = v0[79];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2296CFC9C()
{
  (*(v0[93] + 8))(v0[100], v0[92]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[91];
  v9 = v0[88];
  v10 = v0[85];
  v13 = v0[82];
  v14 = v0[79];
  v15 = v0[105];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2296CFDD4()
{
  (*(v0[93] + 8))(v0[100], v0[92]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[91];
  v9 = v0[88];
  v10 = v0[85];
  v13 = v0[82];
  v14 = v0[79];
  v15 = v0[108];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2296CFF0C()
{
  v1 = *(v0 + 744) + 8;
  (*(v0 + 872))(*(v0 + 800), *(v0 + 736));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = *(v0 + 704);
  v11 = *(v0 + 680);
  v14 = *(v0 + 656);
  v15 = *(v0 + 632);
  v16 = *(v0 + 896);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2296D0048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F258, &qword_22A57E3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296D00B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HMMediaPlaybackState.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E55;
      case 1:
        v2 = 2036427856;
        return v2 | 0x676E6900000000;
      case 2:
        return 0x646573756150;
    }

    return 0x746C7561666564;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v2 = 1801807187;
      return v2 | 0x676E6900000000;
    }

    if (a1 == 6)
    {
      v2 = 1684107084;
      return v2 | 0x676E6900000000;
    }

    return 0x746C7561666564;
  }

  if (a1 == 3)
  {
    return 0x646570706F7453;
  }

  else
  {
    return 0x7075727265746E49;
  }
}

uint64_t sub_2296D0208()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x646573756150;
      }

      return 0x746C7561666564;
    }

    v3 = 2036427856;
    return v3 | 0x676E6900000000;
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v3 = 1801807187;
    }

    else
    {
      if (v1 != 6)
      {
        return 0x746C7561666564;
      }

      v3 = 1684107084;
    }

    return v3 | 0x676E6900000000;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      return 0x7075727265746E49;
    }

    return 0x746C7561666564;
  }

  return 0x646570706F7453;
}

uint64_t *ACWGKeyManager.shared.unsafeMutableAddressor()
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  return &static ACWGKeyManager.shared;
}

id sub_2296D0354(char a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() CKKSControlObject:a1 & 1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_22A4DB3EC();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2296D0418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = 0;
  v15 = 1;
  v6 = sub_22A4DBCFC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &v15;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = &v16;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2296DCBB0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_22957A47C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296DBBF4;
  aBlock[3] = &block_descriptor_98;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  [v3 unsafeSynchronousBlock_];
  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      v12 = v16;
      if (!v16)
      {
        [objc_opt_self() hmErrorWithCode_];
      }

      swift_willThrow();
      v13 = v12;
    }
  }

  return result;
}

uint64_t sub_2296D0608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = 0;
  v15 = 2;
  v6 = sub_22A4DBCFC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &v15;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = &v16;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2296DCC08;
  *(v8 + 24) = v7;
  aBlock[4] = sub_22957A47C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296DBBF4;
  aBlock[3] = &block_descriptor_108;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  [v3 unsafeSynchronousBlock_];
  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v12) = v15;
    if (v15 == 2)
    {
      v12 = v16;
      if (!v16)
      {
        [objc_opt_self() hmErrorWithCode_];
      }

      swift_willThrow();
      v13 = v12;
    }

    else
    {
    }

    return v12 & 1;
  }

  return result;
}

uint64_t sub_2296D0818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v27 = 0;
  updated = _s21MobileAssetUpdateInfoVMa();
  v13 = *(updated - 8);
  (*(v13 + 56))(v11, 1, 1, updated);
  v14 = sub_22A4DBCFC();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v11;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = &v27;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2296DCA80;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2295704E8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296DBBF4;
  aBlock[3] = &block_descriptor_17;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  [v25 unsafeSynchronousBlock_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_2296DCA90(v11, v9);
    if ((*(v13 + 48))(v9, 1, updated) == 1)
    {
      v20 = v18;
      sub_22953EAE4(v9, &qword_27D87F2D8, &unk_22A57E5D0);
      v21 = v27;
      if (!v27)
      {
        [objc_opt_self() hmErrorWithCode_];
      }

      swift_willThrow();
      v22 = v21;

      sub_22953EAE4(v11, &qword_27D87F2D8, &unk_22A57E5D0);
    }

    else
    {

      sub_229669368(v9, v24);
      sub_22953EAE4(v11, &qword_27D87F2D8, &unk_22A57E5D0);
    }
  }

  return result;
}

void sub_2296D0B68()
{
  v0 = [objc_opt_self() systemStore];
  v1 = type metadata accessor for ACWGKeyManager();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v2[14] = sub_22A4DBA1C();
  v2[15] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = v0;
  v4 = objc_msgSendSuper2(&v5, sel_init);

  static ACWGKeyManager.shared = v4;
}

uint64_t static ACWGKeyManager.shared.getter()
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }
}

uint64_t ACWGKeyManager.getOrCreateIssuerKeyPairExternalRepresentation(withHomeUUID:shouldRoll:flow:requireCloudFetch:shouldAwaitOnPush:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = v5;
  *(v6 + 35) = a5;
  *(v6 + 34) = a4;
  *(v6 + 33) = a2;
  *(v6 + 40) = a1;
  return MEMORY[0x2822009F8](sub_2296D0D04, v5, 0);
}

uint64_t sub_2296D0D04()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 35);
  v4 = *(v0 + 34);
  v5 = *(v0 + 33);
  v6 = *(v0 + 40);
  v7 = *(v1 + 112);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 41) = v4;
  *(v8 + 42) = v3;
  v9 = *(MEMORY[0x277D0EF78] + 4);
  v13 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v10 = v0;
  v10[1] = sub_2296D0E34;

  return v13(v0 + 16, &unk_22A57E490, v8, v11);
}

uint64_t sub_2296D0E34()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_2296D0F78;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_2296D0F58;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D0F78()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_2296D0FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 90) = a7;
  *(v7 + 89) = a6;
  *(v7 + 88) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2296D1010, a3, 0);
}

uint64_t sub_2296D1010()
{
  v1 = *(v0 + 90);
  v2 = *(v0 + 89);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v3;
  *(v4 + 33) = v2;
  *(v4 + 34) = v1;
  v5 = *MEMORY[0x277D0F1A8];
  v6 = sub_22A4DD5EC();
  v8 = v7;
  *(v0 + 56) = v7;
  v9 = sub_22A4DBCEC();
  v11 = v10;
  *(v0 + 64) = v10;
  v12 = *(MEMORY[0x277D0EFF8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v13 = v0;
  v13[1] = sub_2296D115C;
  v14 = *(v0 + 24);
  v15 = *(v0 + 16);

  return MEMORY[0x2821677F0](v15, v14, v6, v8, v9, v11, &unk_22A57E5F0, v4);
}

uint64_t sub_2296D115C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_2296D12B0, v4, 0);
  }

  else
  {
    v6 = v3[7];
    v5 = v3[8];
    v7 = v3[6];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2296D12B0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_2296D1328(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 42);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2296D0FE0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2296D1404(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v17 = *MEMORY[0x277D85DE8];
  *(v6 + 747) = a6;
  *(v6 + 746) = a5;
  *(v6 + 745) = a4;
  *(v6 + 304) = a2;
  *(v6 + 312) = a3;
  *(v6 + 296) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  *(v6 + 328) = v9;
  v10 = *(v9 - 8);
  *(v6 + 336) = v10;
  *(v6 + 344) = *(v10 + 64);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
  *(v6 + 384) = v12;
  v13 = *(v12 - 8);
  *(v6 + 392) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D1604, a2, 0);
}

uint64_t sub_2296D1604()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22A4DBD0C();
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_2296D16E4;
  v3 = v0[38];
  v2 = v0[39];
  v4 = *MEMORY[0x277D85DE8];

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)((v0 + 18), v2);
}

uint64_t sub_2296D16E4()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 408);
  v5 = *v1;
  *(v3 + 416) = v0;
  *(v3 + 424) = *(v3 + 144);
  v6 = *(v2 + 168);
  *(v3 + 440) = *(v2 + 176);

  if (v0)
  {
    v7 = *(v3 + 400);
    v8 = *(v3 + 368);
    v9 = *(v3 + 376);
    v11 = *(v3 + 352);
    v10 = *(v3 + 360);
    v12 = *(v3 + 320);

    v13 = *(v5 + 8);
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }

  else
  {
    v16 = *(v3 + 304);

    v17 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2296D1904, v16, 0);
  }
}

uint64_t sub_2296D1904()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 432);
  if (v1 >> 60 == 15 || (*(v0 + 745) & 1) != 0)
  {
    v13 = swift_task_alloc();
    *(v0 + 448) = v13;
    *v13 = v0;
    v13[1] = sub_2296D1AD0;
    v14 = *(v0 + 304);
    v15 = *MEMORY[0x277D85DE8];

    return sub_2296D6210();
  }

  else
  {
    v2 = *(v0 + 424);
    sub_22956C148(v2, *(v0 + 432));
    sub_22A4DBD0C();
    sub_229590D18(v2, v1);
    v3 = *(v0 + 400);
    v4 = *(v0 + 368);
    v5 = *(v0 + 376);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    *v9 = *(v0 + 424);
    *(v9 + 16) = 0;

    v10 = *(v0 + 8);
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }
}

uint64_t sub_2296D1AD0(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 748) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D1C14, v3, 0);
}

uint64_t sub_2296D1C14()
{
  v39 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 748) & 1) == 0 && *(v0 + 746))
  {
    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A5921A0);
    MEMORY[0x22AAD08C0](0x65736C6166, 0xE500000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000015, 0x800000022A5921E0);
    MEMORY[0x22AAD08C0](1702195828, 0xE400000000000000);
    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    sub_22A4DBD3C();

    v3 = [objc_opt_self() hmfErrorWithCode_];
LABEL_8:
    v3;
    swift_willThrow();
    sub_229590D18(v2, v1);
    goto LABEL_9;
  }

  v4 = *MEMORY[0x277CDC190];
  *(v0 + 456) = *MEMORY[0x277CDC190];
  if (!v4)
  {
    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    sub_22A4DBD3C();
    v3 = [objc_opt_self() hmfErrorWithCode_];
    goto LABEL_8;
  }

  v5 = *(v0 + 416);
  v6 = sub_22A4DD5EC();
  v8 = v7;
  *(v0 + 464) = v6;
  *(v0 + 472) = v7;
  sub_229562F68(0, &qword_281401C60, 0x277CDBD00);
  v9 = v4;
  v10 = sub_2296D0354(1);
  *(v0 + 480) = v10;
  if (v5)
  {
    v12 = *(v0 + 424);
    v11 = *(v0 + 432);

    sub_229590D18(v12, v11);

LABEL_9:
    v13 = *(v0 + 400);
    v15 = *(v0 + 368);
    v14 = *(v0 + 376);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    v18 = *(v0 + 320);

    v19 = *(v0 + 8);
    v20 = *MEMORY[0x277D85DE8];

    return v19();
  }

  if (*(v0 + 748) == 1 && *(v0 + 746))
  {
    v22 = v10;
    v23 = swift_allocObject();
    *(v0 + 488) = v23;
    v23[2] = v22;
    v23[3] = v6;
    v23[4] = v8;
    v24 = v22;

    v25 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2296D20B4, 0, 0);
  }

  else
  {

    v27 = *(v0 + 432);
    v26 = *(v0 + 440);
    v28 = *(v0 + 424);
    *(v0 + 584) = v27;
    *(v0 + 576) = v28;
    *(v0 + 568) = v26;
    v29 = [objc_opt_self() createNIST256KeyPair];
    if (!v29)
    {
      v37 = *(v0 + 472);
      v38 = *(v0 + 480);

      sub_22A4DBD3C();
      [objc_opt_self() hmErrorWithCode_];
      swift_willThrow();
      sub_229590D18(v28, v27);

      goto LABEL_9;
    }

    v30 = v29;
    v31 = sub_22A4DB62C();
    v33 = v32;

    *(v0 + 592) = v31;
    *(v0 + 600) = v33;
    v34 = swift_task_alloc();
    *(v0 + 608) = v34;
    *v34 = v0;
    v34[1] = sub_2296D2E6C;
    v35 = *(v0 + 304);
    v36 = *MEMORY[0x277D85DE8];

    return sub_2296DB2A4();
  }
}

uint64_t sub_2296D20B4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[61];
  v2 = swift_task_alloc();
  v0[62] = v2;
  v2[2] = &unk_22A57E620;
  v2[3] = v1;
  v2[4] = 0x4039000000000000;
  v3 = *(MEMORY[0x277D859B8] + 4);
  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_2296D21E4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200740]();
}

uint64_t sub_2296D21E4()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  v2[64] = v0;

  v5 = v2[62];
  if (v0)
  {
    v6 = v2[59];
    v7 = v2[57];

    v8 = sub_2296D25DC;
  }

  else
  {

    v8 = sub_2296D2368;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2296D2368()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[61];

  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_2296D2434;
  v4 = v0[38];
  v3 = v0[39];
  v5 = *MEMORY[0x277D85DE8];

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)((v0 + 28), v3);
}

uint64_t sub_2296D2434()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 520);
  v5 = *v1;
  *(v3 + 528) = v0;
  *(v3 + 536) = *(v3 + 224);
  v6 = *(v2 + 248);
  *(v3 + 552) = *(v2 + 256);

  if (v0)
  {
    v7 = *(v3 + 472);
    v8 = *(v3 + 456);
    v9 = *(v3 + 304);

    v10 = sub_2296D42F8;
  }

  else
  {
    v9 = *(v3 + 304);

    v10 = sub_2296D2760;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2296D25DC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 488);
  v2 = *(v0 + 304);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D2674, v2, 0);
}

uint64_t sub_2296D2674()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  sub_229590D18(v0[53], v0[54]);

  v2 = v0[64];
  v3 = v0[50];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[40];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_2296D2760()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 544);
  v2 = *(v0 + 745);
  sub_229590D18(*(v0 + 424), *(v0 + 432));
  v3 = *(v0 + 480);
  if (v1 >> 60 == 15 || (v2 & 1) != 0)
  {
    v23 = *(v0 + 456);
    v19 = *(v0 + 392);
    v18 = *(v0 + 400);
    v20 = *(v0 + 384);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 744;
    *(v0 + 24) = sub_2296D2A6C;
    swift_continuation_init();
    *(v0 + 136) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v19 + 32))(boxed_opaque_existential_1, v18, v20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_229862B74;
    *(v0 + 104) = &block_descriptor_142;
    [v3 initialSyncStatus:v23 reply:v0 + 80];
    (*(v19 + 8))(boxed_opaque_existential_1, v20);
    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 472);
    v7 = *(v0 + 456);
    sub_2295AEF1C(v5, v4);

    sub_22A4DBD0C();
    sub_229590D18(v5, v4);

    v8 = *(v0 + 400);
    v9 = *(v0 + 368);
    v10 = *(v0 + 376);
    v12 = *(v0 + 352);
    v11 = *(v0 + 360);
    v13 = *(v0 + 320);
    v14 = *(v0 + 296);
    *v14 = *(v0 + 536);
    *(v14 + 16) = 0;

    v15 = *(v0 + 8);
    v16 = *MEMORY[0x277D85DE8];

    return v15();
  }
}

uint64_t sub_2296D2A6C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 560) = v3;
  if (v3)
  {
    v4 = *(v1 + 472);
    v5 = *(v1 + 304);

    v6 = *MEMORY[0x277D85DE8];
    v7 = sub_2296D43E4;
    v8 = v5;
  }

  else
  {
    v8 = *(v1 + 304);
    v9 = *MEMORY[0x277D85DE8];
    v7 = sub_2296D2BE0;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_2296D2BE0()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 744);

  if (v1 == 1)
  {
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    *(v0 + 584) = v3;
    *(v0 + 576) = v4;
    *(v0 + 568) = v2;
    v5 = [objc_opt_self() createNIST256KeyPair];
    if (v5)
    {
      v6 = v5;
      v7 = sub_22A4DB62C();
      v9 = v8;

      *(v0 + 592) = v7;
      *(v0 + 600) = v9;
      v10 = swift_task_alloc();
      *(v0 + 608) = v10;
      *v10 = v0;
      v10[1] = sub_2296D2E6C;
      v11 = *(v0 + 304);
      v12 = *MEMORY[0x277D85DE8];

      return sub_2296DB2A4();
    }

    v17 = *(v0 + 472);
    v15 = *(v0 + 480);

    sub_22A4DBD3C();
    v16 = [objc_opt_self() hmErrorWithCode_];
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);

    sub_22A4DBD3C();
    v16 = [objc_opt_self() hmfErrorWithCode_];
  }

  v16;
  swift_willThrow();
  sub_229590D18(v4, v3);

  v18 = *(v0 + 400);
  v20 = *(v0 + 368);
  v19 = *(v0 + 376);
  v22 = *(v0 + 352);
  v21 = *(v0 + 360);
  v23 = *(v0 + 320);

  v24 = *(v0 + 8);
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

uint64_t sub_2296D2E6C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *(*v3 + 608);
  v14 = *v3;
  v4[77] = a1;
  v4[78] = a2;
  v4[79] = v2;

  if (v2)
  {
    v6 = v4[59];
    v7 = v4[38];

    v8 = *MEMORY[0x277D85DE8];
    v9 = sub_2296D44EC;
    v10 = v7;
  }

  else
  {
    v10 = v4[38];
    v11 = *MEMORY[0x277D85DE8];
    v9 = sub_2296D2FE8;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_2296D2FE8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() driver];
  v2 = sub_2297B37F8();
  *(v0 + 640) = v2;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D30B4, v2, 0);
}

uint64_t sub_2296D30B4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[80];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v2;

    v0[82] = v3;
    v4 = v0[38];
    v5 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2296D33C8, v4, 0);
  }

  else
  {
    v6 = sub_2296DC6A4();
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[81] = v8;
    v9 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *v8 = v0;
    v8[1] = sub_2296D324C;
    v10 = v0[80];
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822007B8](v0 + 35, v1, v6, 0x29287469617761, 0xE700000000000000, sub_2296DD574, v10, v9);
  }
}

uint64_t sub_2296D324C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 640);
  v8 = *v0;

  v1[82] = v1[35];
  v4 = v1[38];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D33C8, v4, 0);
}

uint64_t sub_2296D33C8()
{
  v98 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 656) appleAccountManager];
  if (!v1)
  {
LABEL_27:
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 device];

  if (!v3)
  {
    v7 = *(v0 + 624);
    v8 = *(v0 + 472);

LABEL_9:
    v16 = *(v0 + 656);
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);
    v20 = *(v0 + 576);
    v21 = *(v0 + 480);
    sub_22A4DBD3C();
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    sub_229590D18(v20, v19);

    sub_2295798D4(v18, v17);
LABEL_10:
    v22 = *(v0 + 400);
    v24 = *(v0 + 368);
    v23 = *(v0 + 376);
    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = *(v0 + 320);

    v28 = *(v0 + 8);
    v29 = *MEMORY[0x277D85DE8];

    return v28();
  }

  v4 = [v3 idsIdentifier];

  if (v4)
  {
    v5 = *(v0 + 368);
    sub_22A4DB79C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = *(v0 + 368);
  v10 = *(v0 + 376);
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  (*(v12 + 56))(v9, v6, 1, v11);
  sub_229564B0C(v9, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v13 = *(v0 + 624);
    v14 = *(v0 + 472);
    v15 = *(v0 + 376);

    sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
    goto LABEL_9;
  }

  v31 = *(v0 + 600);
  v32 = *(v0 + 592);
  v33 = *(v0 + 568);
  v34 = *(v0 + 376);
  v35 = *(v0 + 328);
  v36 = *(v0 + 336);
  sub_22A4DB76C();
  v37 = *(v36 + 8);
  *(v0 + 664) = v37;
  *(v0 + 672) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v34, v35);
  v38 = objc_opt_self();
  v39 = sub_22A4DB61C();
  v40 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v41 = v39;
  v94 = v37;
  v42 = *(v0 + 624);
  v43 = *(v0 + 616);
  v44 = *(v0 + 312);
  v95 = *(v0 + 304);
  v45 = sub_22A4DB77C();
  v46 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
  v47 = sub_22A4DD5AC();

  v48 = sub_22A4DD5AC();

  v49 = [v38 createIssuerKeyV2KeychainItemWithKeyPairExternalRepresentation:v41 generationCounter:v40 homeUUID:v45 dateProvider:v46 accountIdentifier:v47 idsIdentifier:v48];
  *(v0 + 680) = v49;

  sub_22A4DBD0C();
  v50 = *(v95 + 120);
  *(v0 + 288) = 0;
  v51 = [v50 addKeychainItem:v49 error:v0 + 288];
  v52 = *(v0 + 288);
  if (!v51)
  {
    v72 = *(v0 + 656);
    v97 = *(v0 + 600);
    v73 = *(v0 + 592);
    v74 = *(v0 + 584);
    v75 = *(v0 + 576);
    v76 = *(v0 + 472);
    v77 = *(v0 + 480);
    v78 = v52;

    sub_22A4DB3EC();

    swift_willThrow();
    sub_229590D18(v75, v74);

    sub_2295798D4(v73, v97);
    goto LABEL_10;
  }

  if (*(v0 + 748) == 1)
  {
    v96 = *(v0 + 472);
    v53 = *(v0 + 464);
    v92 = v53;
    v93 = *(v0 + 480);
    v54 = *(v0 + 352);
    v55 = *(v0 + 360);
    v56 = *(v0 + 336);
    v57 = *(v0 + 328);
    v58 = *(v0 + 747);
    v59 = *(v56 + 16);
    v59(v55, *(v0 + 312), v57);
    v59(v54, v55, v57);
    v60 = (*(v56 + 80) + 41) & ~*(v56 + 80);
    v61 = swift_allocObject();
    *(v0 + 688) = v61;
    *(v61 + 16) = v93;
    *(v61 + 24) = v92;
    *(v61 + 32) = v96;
    *(v61 + 40) = v58;
    (*(v56 + 32))(v61 + v60, v55, v57);
    v62 = *(v0 + 480);
    if (v58 == 1)
    {
      v63 = *(v0 + 472);
      v64 = v62;

      v65 = v52;
      v66 = swift_task_alloc();
      *(v0 + 696) = v66;
      *v66 = v0;
      v66[1] = sub_2296D3B18;
      v67 = *(v0 + 472);
      v68 = *(v0 + 480);
      v69 = *(v0 + 464);
      v70 = *(v0 + 352);
      v71 = *MEMORY[0x277D85DE8];

      return sub_2296D4BCC(v68, v69, v67, 1, v70);
    }

    v81 = *(v0 + 352);
    v83 = *(v0 + 320);
    v82 = *(v0 + 328);
    v84 = v62;
    v85 = v52;
    v94(v81, v82);
    v86 = sub_22A4DD9DC();
    (*(*(v86 - 8) + 56))(v83, 1, 1, v86);
    v87 = swift_allocObject();
    v87[2] = 0;
    v87[3] = 0;
    v87[4] = &unk_22A57E600;
    v87[5] = v61;
    sub_22957F6B0(0, 0, v83, &unk_22A57E610, v87);
  }

  else
  {
    v79 = *(v0 + 472);
    v80 = v52;
  }

  v88 = swift_task_alloc();
  *(v0 + 712) = v88;
  *v88 = v0;
  v88[1] = sub_2296D3DB8;
  v90 = *(v0 + 304);
  v89 = *(v0 + 312);
  v91 = *MEMORY[0x277D85DE8];

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 184, v89);
}

uint64_t sub_2296D3B18()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  *(*v1 + 704) = v0;

  v5 = v2[84];
  v6 = v2[83];
  v7 = v2[59];
  v8 = v2[44];
  v9 = v2[41];
  v10 = v2[38];
  v6(v8, v9);

  if (v0)
  {
    v11 = sub_2296D45F0;
  }

  else
  {
    v11 = sub_2296D3CEC;
  }

  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2296D3CEC()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[86];

  v2 = swift_task_alloc();
  v0[89] = v2;
  *v2 = v0;
  v2[1] = sub_2296D3DB8;
  v4 = v0[38];
  v3 = v0[39];
  v5 = *MEMORY[0x277D85DE8];

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)((v0 + 23), v3);
}

uint64_t sub_2296D3DB8()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 712);
  v5 = *v1;
  *(v3 + 720) = v0;
  *(v3 + 728) = *(v3 + 184);
  v6 = *(v2 + 208);

  v7 = *(v2 + 304);
  if (v0)
  {
    v8 = sub_2296D4710;
  }

  else
  {

    v8 = sub_2296D3F44;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2296D3F44()
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = v0[92];
  if (v1 >> 60 == 15)
  {
    v44 = v0[85];
    v2 = v0[82];
    v3 = v0[75];
    v4 = v0[74];
    v5 = v0[73];
    v6 = v0[72];
    v7 = v0[60];
    sub_22A4DBD3C();
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    sub_229590D18(v6, v5);

    sub_2295798D4(v4, v3);
    v8 = v0[50];
    v10 = v0[46];
    v9 = v0[47];
    v12 = v0[44];
    v11 = v0[45];
    v13 = v0[40];

    v14 = v0[1];
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = v0[85];
    v17 = v0[41];
    v18 = v0[39];
    sub_22956C148(v0[91], v1);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002CLL, 0x800000022A5920A0);
    sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
    v19 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v19);

    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A5920D0);
    v20 = [v16 account];
    if (v20)
    {
      v21 = v20;
      v22 = sub_22A4DD5EC();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = v0[91];
    v42 = v0[92];
    v43 = v0[85];
    v26 = v0[82];
    v27 = v0[75];
    v28 = v0[74];
    v29 = v0[73];
    v30 = v0[72];
    v31 = v0[60];
    v0[33] = v22;
    v0[34] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
    v32 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v32);

    sub_22A4DBD0C();
    sub_229590D18(v30, v29);

    sub_2295798D4(v28, v27);
    sub_229590D18(v25, v42);

    v33 = v0[50];
    v34 = v0[46];
    v35 = v0[47];
    v37 = v0[44];
    v36 = v0[45];
    v38 = v0[40];
    v39 = v0[37];
    *v39 = *(v0 + 91);
    *(v39 + 16) = 1;

    v14 = v0[1];
    v40 = *MEMORY[0x277D85DE8];
  }

  return v14();
}

uint64_t sub_2296D42F8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  sub_229590D18(v0[53], v0[54]);

  v2 = v0[66];
  v3 = v0[50];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[40];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_2296D43E4()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[60];
  v5 = v0[57];
  swift_willThrow();
  sub_229590D18(v3, v2);

  v6 = v0[70];
  v7 = v0[50];
  v9 = v0[46];
  v8 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[40];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_2296D44EC()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[60];
  sub_229590D18(v0[72], v0[73]);

  sub_2295798D4(v2, v1);
  v4 = v0[79];
  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[40];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2296D45F0()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[60];
  sub_229590D18(v0[72], v0[73]);

  sub_2295798D4(v5, v4);

  v7 = v0[88];
  v8 = v0[50];
  v10 = v0[46];
  v9 = v0[47];
  v12 = v0[44];
  v11 = v0[45];
  v13 = v0[40];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_2296D4710()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[85];
  v2 = v0[82];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[60];
  sub_229590D18(v0[72], v0[73]);

  sub_2295798D4(v4, v3);
  v6 = v0[90];
  v7 = v0[50];
  v9 = v0[46];
  v8 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[40];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_2296D4824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D48F4, 0, 0);
}

uint64_t sub_2296D48F4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v1[19];
  v8 = v1[20];
  v12 = v1[18];
  v9 = sub_22A4DD5AC();
  v1[24] = v9;
  v1[2] = v1;
  v1[3] = sub_2296D4ABC;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229787290;
  v1[13] = &block_descriptor_158;
  [v12 rpcFetchAndProcessChangesIfNoRecentFetch:v9 reply:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2296D4ABC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2296DD568;
  }

  else
  {
    v3 = sub_2296DD544;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296D4BCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2296D4BF4, 0, 0);
}

uint64_t sub_2296D4BF4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_allocObject();
  v0[10] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = &unk_22A57E660;
  v6[3] = v4;
  v6[4] = 0x4039000000000000;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_2296D4D2C;

  return MEMORY[0x282200740]();
}

uint64_t sub_2296D4D2C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2296D4FD4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2296D4E48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296D4E48()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 112);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A592260);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
  v4 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v4);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A592240);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v5, v6);

  sub_22A4DBD0C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2296D4FD4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 112);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000031, 0x800000022A592200);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_22A4DE5EC();
  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A592240);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v7, v8);

  sub_22A4DBD3C();

  swift_willThrow();
  v9 = *(v0 + 8);
  v10 = *(v0 + 104);

  return v9();
}

uint64_t sub_2296D5120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D51F0, 0, 0);
}

uint64_t sub_2296D51F0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v1[19];
  v8 = v1[20];
  v12 = v1[18];
  v9 = sub_22A4DD5AC();
  v1[24] = v9;
  v1[2] = v1;
  v1[3] = sub_229630704;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229787290;
  v1[13] = &block_descriptor_171;
  [v12 rpcPushOutgoingChanges:v9 reply:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2296D53B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_2296D54A4;

  return v8();
}

uint64_t sub_2296D54A4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {

    v3 = sub_2296DD578;
  }

  else
  {
    v3 = sub_2296D55C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296D57A8(uint64_t a1, char a2, void *a3, char a4, char a5, const void *a6, uint64_t a7)
{
  *(v7 + 35) = a5;
  *(v7 + 34) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a7;
  *(v7 + 33) = a2;
  v11 = sub_22A4DB7DC();
  *(v7 + 56) = v11;
  v12 = *(v11 - 8);
  *(v7 + 64) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = _Block_copy(a6);
  sub_22A4DB79C();
  v14 = a3;

  return MEMORY[0x2822009F8](sub_2296D58C0, a7, 0);
}

uint64_t sub_2296D58C0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 35);
  v3 = *(v0 + 34);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 33);
  v7 = *(v4 + 112);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v1;
  *(v8 + 40) = v6;
  *(v8 + 41) = v3;
  *(v8 + 42) = v2;
  v9 = *(MEMORY[0x277D0EF78] + 4);
  v13 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v10 = v0;
  v10[1] = sub_2296D59F0;

  return v13(v0 + 16, &unk_22A57E5C8, v8, v11);
}

uint64_t sub_2296D59F0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_2296D5C08;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 48);

    v5 = sub_2296D5B18;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D5B18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  (*(v4 + 8))(v1, v3);
  v10 = sub_22A4DB61C();
  (v2)[2](v2, v10, v9, 0);

  _Block_release(v2);
  sub_2295798D4(v7, v8);
  v11 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2296D5C08()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  (*(v5 + 8))(v4, v7);
  v9 = sub_22A4DB3DC();

  (v3)[2](v3, 0, 0, v9);
  _Block_release(v3);
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2296D5CF8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296D5D9C, 0, 0);
}

uint64_t sub_2296D5D9C()
{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_22A4DD9DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  sub_229773AF0(v1, &unk_22A57E640, v8);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_229773AF0(v1, &unk_22A57E650, v9);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);
  v10 = *(MEMORY[0x277D85818] + 4);
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F310, &unk_22A57B5E0);
  *v11 = v0;
  v11[1] = sub_2296D5F9C;
  v13 = v0[2];

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v12);
}

uint64_t sub_2296D5F9C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2296D61AC;
  }

  else
  {
    v3 = sub_2296D60B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296D60B0()
{
  if (*(v0 + 72) == 1)
  {
    [objc_opt_self() hmfErrorWithCode_];
    swift_willThrow();
    v1 = *(v0 + 48);
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = **(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DDAEC();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296D61AC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296D6210()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 40) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D62A0, v0, 0);
}

uint64_t sub_2296D62A0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() driver];
  v2 = sub_2297B37F8();
  *(v0 + 48) = v2;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D636C, v2, 0);
}

uint64_t sub_2296D636C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v2;

    v0[8] = v3;
    v4 = v0[5];
    v5 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2296D6680, v4, 0);
  }

  else
  {
    v6 = sub_2296DC6A4();
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[7] = v8;
    v9 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *v8 = v0;
    v8[1] = sub_2296D6504;
    v10 = v0[6];
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822007B8](v0 + 2, v1, v6, 0x29287469617761, 0xE700000000000000, sub_2296DC708, v10, v9);
  }
}

uint64_t sub_2296D6504()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v8 = *v0;

  v1[8] = v1[2];
  v4 = v1[5];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D6680, v4, 0);
}

id sub_2296D6680()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedSettings];
  if (([v1 isKeychainSyncEnabled] & 1) == 0)
  {
    goto LABEL_6;
  }

  result = [*(v0 + 64) reachabilityMonitor];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isReachable];

  if ((v4 & 1) == 0)
  {
LABEL_6:
    sub_22A4DBD3C();
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v5 = [objc_allocWithZone(HMDCloudKitReachabilitySource) init];
  *(v0 + 24) = 0;
  v6 = [v5 areCloudKitServersReachableWithError_];
  v7 = *(v0 + 24);
  if (v6 != 1)
  {
    v13 = v7;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A58E220);
    *(v0 + 32) = v7;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D0, &qword_22A57B5F8);
    v15 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v15);

    sub_22A4DBD3C();

    goto LABEL_7;
  }

  v8 = v7;
  sub_22A4DBD0C();

  v9 = 1;
LABEL_8:
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11(v9);
}

uint64_t ACWGKeyManager.getOrCreateIssuerKeyAndSaveToSharedUserReverseShare(withHomeUUID:context:shouldUpdateLocks:shouldRoll:flow:requireCloudFetch:isOnSharedUserAcceptance:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 36) = a7;
  *(v8 + 35) = a6;
  *(v8 + 56) = a5;
  *(v8 + 64) = v7;
  *(v8 + 34) = a4;
  *(v8 + 33) = a3;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2296D6924, v7, 0);
}

uint64_t sub_2296D6924()
{
  v1 = *(v0 + 36);
  v2 = *(v0 + 35);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 34);
  v6 = *(v0 + 33);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 25) = v5;
  *(v9 + 26) = v2;
  *(v9 + 27) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v7;
  v10 = *MEMORY[0x277D0F1A8];
  v11 = sub_22A4DD5EC();
  v13 = v12;
  *(v0 + 80) = v12;
  v14 = sub_22A4DBCEC();
  v16 = v15;
  *(v0 + 88) = v15;
  v17 = *(MEMORY[0x277D0EFF8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v18 = v0;
  v18[1] = sub_2296D6A94;
  v19 = *(v0 + 56);

  return MEMORY[0x2821677F0](v0 + 16, v19, v11, v13, v14, v16, &unk_22A57E4B0, v9);
}

uint64_t sub_2296D6A94()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v12 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = sub_2296D6BD4;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v10 = v2 + 8;
    v8 = v2[8];
    v9 = v10[1];

    v5 = sub_2296DD548;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D6BD4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_2296D6C50(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v10;
  *(v8 + 80) = a2;
  *(v8 + 88) = a7;
  *(v8 + 36) = a6;
  *(v8 + 35) = a5;
  *(v8 + 34) = a4;
  *(v8 + 33) = a3;
  *(v8 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2296D6C90, a7, 0);
}

uint64_t sub_2296D6C90()
{
  v20 = *(v0 + 36);
  v1 = *(v0 + 35);
  v2 = *(v0 + 34);
  v3 = *(v0 + 33);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v19 = *(v0 + 80);
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000003ELL, 0x800000022A591E30);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
  v4 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v4);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A591950);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v5, v6);

  MEMORY[0x22AAD08C0](0x52646C756F687320, 0xED0000203A6C6C6FLL);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v7, v8);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A591E70);
  if (v1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v9, v10);

  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A591E90);
  if (v20)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v20)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x22AAD08C0](v11, v12);

  sub_22A4DBD0C();

  v13 = *(v21 + 112);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *(v14 + 16) = v22;
  *(v14 + 24) = v21;
  *(v14 + 32) = v19;
  *(v14 + 40) = v2;
  *(v14 + 41) = v1;
  *(v14 + 42) = v20 ^ 1;
  v15 = *(MEMORY[0x277D0EF78] + 4);
  v23 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
  *v16 = v0;
  v16[1] = sub_2296D6FD4;

  return v23(v0 + 16, &unk_22A57E5E0, v14, v17);
}

uint64_t sub_2296D6FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_2296D73D0;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 88);

    v5 = sub_2296D70FC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D70FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 32);
  *(v0 + 37) = v3;
  v4 = objc_opt_self();
  v5 = sub_22A4DB61C();
  v6 = [v4 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

  if (v6)
  {
    v7 = sub_22A4DB62C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = *(v0 + 128);
  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  sub_22A4DBD4C();
  if (v10)
  {
    sub_229590D18(*(v0 + 56), *(v0 + 64));
    sub_2295798D4(v1, v2);
    v11 = *(v0 + 8);
LABEL_13:

    return v11();
  }

  v12 = *(v0 + 36);
  sub_229590D18(*(v0 + 56), *(v0 + 64));
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  *(v0 + 152) = v14;
  *(v0 + 160) = v13;
  if (((v3 | v12) & 1) == 0)
  {
LABEL_12:
    v23 = *(v0 + 37);
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = *(v0 + 72);
    sub_2295798D4(v14, v13);
    *v26 = v25;
    *(v26 + 8) = v24;
    *(v26 + 16) = v23;
    v11 = *(v0 + 8);
    goto LABEL_13;
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 80);
  v17 = swift_task_alloc();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v14;
  v17[5] = v13;
  sub_2296D0418(sub_2296DCC8C, v17);
  LOBYTE(v15) = *(v0 + 33);

  if ((v15 & 1) == 0)
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    goto LABEL_12;
  }

  sub_22A4DBD0C();
  v18 = sub_22A4DBCDC();
  *(v0 + 168) = v18;
  v19 = swift_task_alloc();
  *(v0 + 176) = v19;
  *v19 = v0;
  v19[1] = sub_2296D7434;
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);

  return sub_2296DAA28(v14, v13, v20, v18);
}

uint64_t sub_2296D73D0()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2296D7434()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  v5 = *(v2 + 168);
  v6 = *(v2 + 88);
  if (v0)
  {

    v7 = sub_2296DD564;
  }

  else
  {

    v7 = sub_2296D7588;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296D7588()
{
  v1 = *(v0 + 37);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 72);
  sub_2295798D4(*(v0 + 152), *(v0 + 160));
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2296D7608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 26);
  v8 = *(v1 + 27);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_229586D38;

  return sub_2296D6C50(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2296D7700(uint64_t a1, void *a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_27D87F300, off_2786663A0);
  (*(v6 + 16))(v9, a1, v5);
  v10 = [a2 managedObjectContext];
  v11 = sub_2296DCCAC(v9, v10);

  if (!v2)
  {
    v12 = sub_22A4DB61C();
    [v11 setMatCredIPKExternalRepresentation_];

    sub_2297082C0();
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A591F50);
    v13 = sub_22A4DB5AC();
    MEMORY[0x22AAD08C0](v13);

    sub_22A4DBD0C();
  }
}

uint64_t sub_2296D7ADC(uint64_t a1, void *a2, char a3, char a4, void *a5, char a6, char a7, const void *a8)
{
  v8[3] = a5;
  v8[4] = v25;
  v8[2] = a2;
  v15 = sub_22A4DB7DC();
  v8[5] = v15;
  v16 = *(v15 - 8);
  v8[6] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v8[7] = v18;
  v8[8] = _Block_copy(a8);
  sub_22A4DB79C();
  v19 = a2;
  v20 = a5;

  v21 = swift_task_alloc();
  v8[9] = v21;
  *v21 = v8;
  v21[1] = sub_2296D7C68;

  return ACWGKeyManager.getOrCreateIssuerKeyAndSaveToSharedUserReverseShare(withHomeUUID:context:shouldUpdateLocks:shouldRoll:flow:requireCloudFetch:isOnSharedUserAcceptance:)(v18, v19, a3, a4, a5, a6, a7);
}

uint64_t sub_2296D7C68(uint64_t a1, unint64_t a2, char a3)
{
  v5 = v3;
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 72);
  v11 = *v4;

  v12 = v8[8];
  v13 = v8[4];
  v14 = v8[3];
  v15 = v8[2];
  (*(v8[6] + 8))(v8[7], v8[5]);

  if (v5)
  {
    v16 = sub_22A4DB3DC();

    (v12)[2](v12, 0, 0, v16);
    _Block_release(v12);
  }

  else
  {
    v17 = sub_22A4DB61C();
    (v12)[2](v12, v17, a3 & 1, 0);

    _Block_release(v12);
    sub_2295798D4(a1, a2);
  }

  v18 = v9[7];

  v19 = *(v11 + 8);

  return v19();
}

uint64_t ACWGKeyManager.getOrCreateIssuerKeyAndSaveIfNeeded(home:user:context:shouldRoll:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 33) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return MEMORY[0x2822009F8](sub_2296D7EF4, v4, 0);
}

uint64_t sub_2296D7EF4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  sub_22A4DBD0C();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  LOBYTE(v1) = sub_2296D0608(sub_2296D9124, v3);

  v4 = *(v0 + 120);
  v5 = *(v0 + 33);
  v6 = *(v0 + 96);
  if (v1)
  {
    v7 = *(v0 + 104);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002FLL, 0x800000022A591920);
    sub_22A4DB7DC();
    sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
    v8 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v8);

    MEMORY[0x22AAD08C0](0x495555656D6F6820, 0xEB00000000203A44);
    v9 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v9);

    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A591950);
    MEMORY[0x22AAD08C0](1702195828, 0xE400000000000000);
    sub_22A4DBD0C();

    v10 = sub_22A4DBCFC();
    *(v0 + 128) = v10;
    v11 = *(v4 + 112);
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v4;
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    *(v12 + 41) = 257;
    v13 = *(MEMORY[0x277D0EF78] + 4);
    v29 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
    *v14 = v0;
    v14[1] = sub_2296D8428;

    return v29(v0 + 40, &unk_22A57E4C8, v12, v15);
  }

  else
  {
    v17 = *(v0 + 112);
    v18 = sub_22A4DBCFC();
    *(v0 + 208) = v18;
    v19 = swift_task_alloc();
    *(v0 + 216) = v19;
    *(v19 + 16) = v6;
    *(v19 + 24) = 1;
    *(v19 + 25) = v5;
    *(v19 + 26) = 1;
    *(v19 + 32) = v4;
    *(v19 + 40) = v18;
    *(v19 + 48) = v17;
    v20 = *MEMORY[0x277D0F1A8];
    v21 = sub_22A4DD5EC();
    v23 = v22;
    *(v0 + 224) = v22;
    v24 = sub_22A4DBCEC();
    v26 = v25;
    *(v0 + 232) = v25;
    v27 = *(MEMORY[0x277D0EFF8] + 4);
    v28 = swift_task_alloc();
    *(v0 + 240) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F290, &qword_22A57E498);
    *v28 = v0;
    v28[1] = sub_2296D8C7C;

    return MEMORY[0x2821677F0](v0 + 16, v18, v21, v23, v24, v26, &unk_22A57E4C0, v19);
  }
}

uint64_t sub_2296D8428()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_2296D8934;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 120);

    v5 = sub_2296D8550;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D8550()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 160) = v2;
  *(v0 + 168) = v1;
  v3 = *(v0 + 56);
  v4 = objc_opt_self();
  v5 = sub_22A4DB61C();
  v6 = [v4 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

  if (v6)
  {
    v7 = sub_22A4DB62C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = *(v0 + 152);
  *(v0 + 80) = v7;
  *(v0 + 88) = v9;
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 80), *(v0 + 88));
  if (v10)
  {
    sub_2295798D4(v2, v1);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A5918E0);
    sub_22A4DB7DC();
    sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
    v13 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v13);

    MEMORY[0x22AAD08C0](0x203A72657375202CLL, 0xE800000000000000);
    v14 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v14);

    sub_22A4DBD3C();

    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    *(v0 + 176) = v17;
    *(v0 + 184) = v18;
    if (v3)
    {
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = swift_task_alloc();
      v21[2] = v20;
      v21[3] = v17;
      v21[4] = v18;
      v21[5] = v19;
      sub_2296D0418(sub_2296DAA08, v21);

      sub_22A4DBD0C();
      v23 = sub_22A4DBCDC();
      *(v0 + 192) = v23;
      v24 = swift_task_alloc();
      *(v0 + 200) = v24;
      *v24 = v0;
      v24[1] = sub_2296D8AC0;
      v25 = *(v0 + 120);
      v26 = *(v0 + 96);

      return sub_2296DAA28(v17, v18, v26, v23);
    }

    else
    {
      sub_2295798D4(v17, v18);
      v22 = *(v0 + 8);

      return v22(v2, v1);
    }
  }
}

uint64_t sub_2296D8934()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A5918E0);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
  v5 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](0x203A72657375202CLL, 0xE800000000000000);
  v6 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v6);

  sub_22A4DBD3C();

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2296D8AC0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  v5 = *(v2 + 192);
  v6 = *(v2 + 120);
  if (v0)
  {

    v7 = sub_2296DD560;
  }

  else
  {

    v7 = sub_2296D8C14;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296D8C14()
{
  sub_2295798D4(v0[22], v0[23]);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2296D8C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v11 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = sub_2296D8E28;
  }

  else
  {
    v7 = v2[28];
    v6 = v2[29];
    v8 = v2[27];
    v9 = v2[15];

    v5 = sub_2296D8DC0;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296D8DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_2296D8E28()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];

  v5 = v0[31];
  v7 = v0[12];
  v6 = v0[13];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000034, 0x800000022A5918E0);
  sub_22A4DB7DC();
  sub_2296DC65C(&qword_281403860, MEMORY[0x277CC95F0]);
  v8 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v8);

  MEMORY[0x22AAD08C0](0x203A72657375202CLL, 0xE800000000000000);
  v9 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v9);

  sub_22A4DBD3C();

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_2296D8FC4@<X0>(unsigned __int8 *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = sub_22A4DB77C();
  v5 = [v3 findGuestWithModelID_];

  if (v5)
  {
    result = swift_unknownObjectRelease();
    *a1 = 0;
  }

  else
  {
    v7 = sub_22A4DB77C();
    [v3 findUserWithModelID_];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F8, qword_22A583D30);
    sub_22A4DBD4C();
    result = swift_unknownObjectRelease();
    if (!v1)
    {
      v8 = [v10 isOwner];
      result = swift_unknownObjectRelease();
      *a1 = v8;
    }
  }

  return result;
}

uint64_t sub_2296D92F0(uint64_t a1, uint64_t a2, void *a3, char a4, const void *a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v10 = sub_22A4DB7DC();
  v6[4] = v10;
  v11 = *(v10 - 8);
  v6[5] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v6[6] = v13;
  v14 = swift_task_alloc();
  v6[7] = v14;
  v6[8] = _Block_copy(a5);
  sub_22A4DB79C();
  sub_22A4DB79C();
  v15 = a3;

  v16 = swift_task_alloc();
  v6[9] = v16;
  *v16 = v6;
  v16[1] = sub_2296D9468;

  return ACWGKeyManager.getOrCreateIssuerKeyAndSaveIfNeeded(home:user:context:shouldRoll:)(v14, v13, v15, a4);
}

uint64_t sub_2296D9468(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 72);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  v13 = v7[7];
  v14 = v7[4];
  v15 = *(v7[5] + 8);
  v15(v7[6], v14);
  v15(v13, v14);
  if (v4)
  {
    v16 = sub_22A4DB3DC();

    v17 = v16;
    v18 = 0;
  }

  else
  {
    v16 = sub_22A4DB61C();
    sub_2295798D4(a1, a2);
    v18 = v16;
    v17 = 0;
  }

  v19 = v16;
  v20 = v8[7];
  v21 = v8[8];
  v22 = v8[6];
  v21[2](v21, v18, v17);

  _Block_release(v21);

  v23 = *(v12 + 8);

  return v23();
}

uint64_t ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2296D9740, v2, 0);
}

uint64_t sub_2296D9740()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  sub_22A4DBD0C();
  v2 = *(v1 + 120);
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v0 + 48) = 0;
  v5 = [v2 allKeychainItemsForType:v3 identifier:0 syncable:v4 error:v0 + 48];

  v6 = *(v0 + 48);
  if (!v5)
  {
    v24 = v6;
    v25 = sub_22A4DB3EC();

    swift_willThrow();
    *(v0 + 56) = v25;
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
LABEL_32:

      v42 = *(v0 + 8);
      v43 = *MEMORY[0x277D85DE8];

      return v42();
    }

    v27 = *(v0 + 64);
    v28 = [v27 userInfo];
    v29 = sub_22A4DD49C();

    v30 = *MEMORY[0x277CCA7E8];
    v31 = sub_22A4DD5EC();
    if (*(v29 + 16))
    {
      v33 = sub_229543DBC(v31, v32);
      v35 = v34;

      if (v35)
      {
        sub_2295404B0(*(v29 + 56) + 32 * v33, v0 + 16);

        if (swift_dynamicCast())
        {
          v36 = *(v0 + 72);
          v37 = [v36 code];

          if (v37 == -25300)
          {

            v7 = MEMORY[0x277D84F90];
            goto LABEL_3;
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

LABEL_31:
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000012, 0x800000022A591A70);
    v38 = [v27 description];
    v39 = sub_22A4DD5EC();
    v41 = v40;

    MEMORY[0x22AAD08C0](v39, v41);

    MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A591A90);
    sub_22A4DBD3C();

    swift_willThrow();
    goto LABEL_32;
  }

  sub_229562F68(0, &qword_281401B90, 0x277CFEB88);
  v7 = sub_22A4DD83C();
  v8 = v6;

LABEL_3:
  v49 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v48 = v0;
    v10 = 0;
    v0 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 type];
      v15 = [v14 integerValue];

      if (v15 == 1852203841 && (v16 = [v12 accessGroup]) != 0)
      {
        v17 = v16;
        v18 = sub_22A4DD5EC();
        v20 = v19;

        if (v18 == 0xD000000000000015 && 0x800000022A591AC0 == v20)
        {
        }

        else
        {
          v21 = sub_22A4DE60C();

          if ((v21 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        sub_22A4DE27C();
        v22 = *(v49 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

LABEL_7:
      ++v10;
      if (v13 == i)
      {
        v23 = v49;
        v0 = v48;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_39:
  *(v0 + 120) = v23;

  v45 = swift_task_alloc();
  *(v0 + 128) = v45;
  *v45 = v0;
  v45[1] = sub_2296D9D84;
  v46 = *(v0 + 112);
  v47 = *MEMORY[0x277D85DE8];

  return sub_2296DB2A4();
}

uint64_t sub_2296D9D84(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  v6[17] = v2;

  v9 = v6[14];
  if (v2)
  {
    v10 = sub_2296DA218;
  }

  else
  {
    v6[18] = a2;
    v6[19] = a1;
    v10 = sub_2296D9EF8;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2296D9EF8()
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[13];
  v5 = objc_opt_self();
  v6 = sub_22A4DB77C();
  sub_229562F68(0, &qword_281401B90, 0x277CFEB88);
  v7 = sub_22A4DD81C();

  v8 = sub_22A4DD5AC();

  v9 = [v5 findWinningIssuerKeyForHomeUUID:v6 withKeys:v7 accountIdentifier:v8];

  sub_22A4DE1FC();

  v0[10] = [v9 keychainItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F298, &qword_22A57E4E8);
  v10 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v10);

  MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A591B00);
  v0[11] = [v9 highestGeneration];
  v11 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v11);

  sub_22A4DBD0C();

  v12 = [v9 keychainItem];
  if (v12 && (v13 = v12, v14 = [v12 valueData], v13, v14))
  {
    v15 = sub_22A4DB62C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = [v9 keychainItem];
  if (v18 && (v19 = v18, v20 = [v18 account], v19, v20))
  {
    v21 = sub_22A4DD5EC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = v0[12];
  v25 = [v9 highestGeneration];

  *v24 = v15;
  v24[1] = v17;
  v24[2] = v21;
  v24[3] = v23;
  v24[4] = v25;
  v26 = v0[1];
  v27 = *MEMORY[0x277D85DE8];

  return v26();
}

uint64_t sub_2296DA218()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_2296DA434(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[7] = a3;
  v5 = sub_22A4DB7DC();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[10] = v8;
  v3[11] = _Block_copy(a2);
  sub_22A4DB79C();

  v9 = swift_task_alloc();
  v3[12] = v9;
  *v9 = v3;
  v9[1] = sub_2296DA568;

  return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)((v3 + 2), v8);
}

uint64_t sub_2296DA568()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v23 = *v1;
  v22 = *(*v1 + 16);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 32);
  v11 = *(*v1 + 40);
  v12 = *(*v1 + 48);

  (*(v6 + 8))(v5, v7);

  if (v2)
  {
    v13 = *(v3 + 88);
    v14 = sub_22A4DB3DC();

    (v13)[2](v13, 0, 0, 0, v14);
    _Block_release(v13);
    goto LABEL_9;
  }

  v15 = v12;
  if (v9 >> 60 != 15)
  {
    v16 = sub_22A4DB61C();
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = sub_22A4DD5AC();
LABEL_8:
  v18 = *(v3 + 88);
  (v18)[2](v18, v16, v17, v15, 0);

  _Block_release(v18);
  sub_229590D18(v22, v9);

LABEL_9:
  v19 = *(v3 + 80);

  v20 = *(v23 + 8);

  return v20();
}

uint64_t sub_2296DA83C()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  [v1 findUserWithModelID_];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F8, qword_22A583D30);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    v4 = sub_22A4DB61C();
    [v7 setMatCredIPKExternalRepresentation_];

    sub_2297082C0();
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000033, 0x800000022A591DA0);
    v5 = sub_22A4DB5AC();
    MEMORY[0x22AAD08C0](v5);

    sub_22A4DBD0C();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296DAA08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_2296DA83C();
}

uint64_t sub_2296DAA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_2296DAA50, v4, 0);
}

uint64_t sub_2296DAA50()
{
  v1 = [objc_opt_self() driver];
  v2 = sub_2297B37F8();
  *(v0 + 96) = v2;

  return MEMORY[0x2822009F8](sub_2296DAAE4, v2, 0);
}

uint64_t sub_2296DAAE4()
{
  v1 = v0[12];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = v2;

    v0[14] = v3;
    v4 = v0[11];

    return MEMORY[0x2822009F8](sub_2296DAD80, v4, 0);
  }

  else
  {
    v5 = sub_2296DC6A4();
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[13] = v7;
    v8 = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *v7 = v0;
    v7[1] = sub_2296DAC38;
    v9 = v0[12];

    return MEMORY[0x2822007B8](v0 + 2, v1, v5, 0x29287469617761, 0xE700000000000000, sub_2296DD574, v9, v8);
  }
}

uint64_t sub_2296DAC38()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  v1[14] = v1[2];
  v4 = v1[11];

  return MEMORY[0x2822009F8](sub_2296DAD80, v4, 0);
}

uint64_t sub_2296DAD80()
{
  v1 = [*(v0 + 112) homes];
  if (v1)
  {
    v2 = v1;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v3 = sub_22A4DD83C();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();
  v4 = *(v0 + 72);

  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_22968FFF0(sub_2296DCB90, v6, v5);

  *(v0 + 48) = v7;
  v21 = sub_229562F68(0, &qword_2814017B0, off_278666198);
  sub_22A4DBD4C();
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  v12 = *(v0 + 40);
  v13 = [v12 nfcReaderKeyManager];
  v14 = [v13 accessoryManager];

  v15 = sub_22A4DB61C();
  v16 = *(v0 + 80);
  if (v9)
  {
    v17 = *(v0 + 80);
  }

  else
  {
    v17 = sub_22A4DBCDC();
  }

  v18 = *(v0 + 112);
  v19 = v16;
  [v14 auditKeysLocallyOrRedispatchWithAccessoryUUID:0 issuerKey:v15 withFlow:v17];

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2296DB05C(id *a1, uint64_t a2)
{
  v19[1] = a2;
  v4 = &unk_27D87D2A0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v17 = [*a1 uuid];
  sub_22A4DB79C();

  (*(v10 + 32))(v8, v14, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_22A4DBD4C();
  sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
  if (!v2)
  {
    LOBYTE(v4) = sub_22A4DB78C();
    (*(v10 + 8))(v16, v9);
  }

  return v4 & 1;
}

uint64_t sub_2296DB2A4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296DB370, v0, 0);
}

uint64_t sub_2296DB370()
{
  v1 = [objc_opt_self() defaultStore];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2296DB564;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F138, &qword_22A57E1E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2296C0738;
    v0[13] = &block_descriptor_84;
    [v2 aa_primaryAppleAccountWithCompletion_];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2296DB564()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_2296DB7C0;
  }

  else
  {
    v5 = sub_2296DB684;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296DB684()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 184);
  if (v1)
  {
    v3 = *(v0 + 176);
    v4 = [*(v0 + 144) aa_personID];

    v5 = sub_22A4DD5EC();
    v7 = v6;

    v8 = *(v0 + 8);

    return v8(v5, v7);
  }

  else
  {

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v10 = *(v0 + 176);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2296DB7C0()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

void ACWGKeyManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ACWGKeyManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ACWGKeyManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ACWGKeyManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2296DB964()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();
}

uint64_t sub_2296DBA2C()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();
}

uint64_t sub_2296DBB00(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v12 - v8;
  result = a2(v7);
  if (!v2)
  {
    updated = _s21MobileAssetUpdateInfoVMa();
    (*(*(updated - 8) + 56))(v9, 0, 1, updated);
    return sub_2296DCB20(v9, a1);
  }

  return result;
}

uint64_t sub_2296DBC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D428, &qword_22A5785A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_22958A518(0, v9[2] + 1, 1, v9);
    *(a2 + 112) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_22958A518(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 112) = v9;
  return result;
}

unint64_t sub_2296DBDF0(char a1)
{
  v3 = *(v1 + 40);
  sub_22A4DE77C();
  sub_2295C6134(a1);
  sub_22A4DD6BC();

  v4 = sub_22A4DE7BC();

  return sub_2296DC214(a1, v4);
}

unint64_t sub_2296DBE78(unsigned int a1)
{
  v3 = MEMORY[0x22AAD1940](*(v1 + 40), a1, 4);

  return sub_2296DC318(a1, v3);
}

unint64_t sub_2296DBEC0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22A4DB7DC();
  v5 = MEMORY[0x277CC95F0];
  sub_2296DC65C(&qword_281403880, MEMORY[0x277CC95F0]);
  v6 = sub_22A4DD4EC();
  return sub_2296DC4BC(a1, v6, MEMORY[0x277CC95F0], &qword_281403870, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2296DBF94(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22A4DDECC();
  return sub_2296DC384(a1, v5, &qword_281401770, 0x277CCABB0);
}

unint64_t sub_2296DBFE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22A4DDECC();
  return sub_2296DC384(a1, v5, &qword_281401C20, off_278666020);
}

unint64_t sub_2296DC034(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22A4DDECC();
  return sub_2296DC384(a1, v5, &unk_281401910, off_278666388);
}

unint64_t sub_2296DC084(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](a1);
  v4 = sub_22A4DE7BC();

  return sub_2296DC450(a1, v4);
}

unint64_t sub_2296DC0F0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22A4DDECC();
  return sub_2296DC384(a1, v5, &qword_281401C30, off_278665FE8);
}

unint64_t sub_2296DC140(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22A4DC02C();
  v5 = MEMORY[0x277D17D28];
  sub_2296DC65C(&qword_27D87F2A8, MEMORY[0x277D17D28]);
  v6 = sub_22A4DD4EC();
  return sub_2296DC4BC(a1, v6, MEMORY[0x277D17D28], &qword_27D87F2B0, v5, MEMORY[0x277D17D38]);
}

unint64_t sub_2296DC214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_2295C6134(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_2295C6134(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_22A4DE60C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_2296DC318(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2296DC384(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_229562F68(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22A4DDEDC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2296DC450(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2296DC4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2296DC65C(v24, v25);
      v20 = sub_22A4DD58C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_2296DC65C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2296DC6A4()
{
  result = qword_27D87F2B8;
  if (!qword_27D87F2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87F2C0, &unk_22A583410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F2B8);
  }

  return result;
}

uint64_t sub_2296DC710()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296DA434(v2, v3, v4);
}

uint64_t sub_2296DC7C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229569B30;

  return sub_2296D92F0(v2, v3, v4, v5, v7, v6);
}

void sub_2296DC89C()
{
  v2 = *(v0 + 24);
  v12 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 49);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_229586D38;

  JUMPOUT(0x2296D7ADCLL);
}

uint64_t sub_2296DC99C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_229586D38;

  return sub_2296D57A8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_2296DCA80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_2296DBA2C();
}

uint64_t sub_2296DCA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296DCB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D8, &unk_22A57E5D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_2296DCBC8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  result = v2(&v6);
  if (!v1)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_2296DCC20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_2296DB964();
}

void *sub_2296DCC48()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  result = v2(&v6);
  if (!v1)
  {
    *v3 = v6;
  }

  return result;
}

void sub_2296DCC8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2296D7700(*(v0 + 16), *(v0 + 24));
}

id sub_2296DCCAC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22A4DB77C();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithModelID:v4 context:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_22A4DB7DC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_22A4DB3EC();

    swift_willThrow();
    v11 = sub_22A4DB7DC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2296DCE0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 34);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2296D1404(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2296DCED8()
{
  v2 = *(sub_22A4DB7DC() - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_229586D38;

  return sub_2296D4BCC(v4, v5, v6, v7, v0 + v3);
}

uint64_t sub_2296DCFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2296D53B8(a1, v4, v5, v7);
}

uint64_t sub_2296DD08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296D4824(v2, v3, v4);
}

uint64_t sub_2296DD134(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_2296D5CF8(v8, a1, a2, v6, v7);
}

uint64_t sub_2296DD210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229631318(a1, v4, v5, v7);
}

uint64_t sub_2296DD2D0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229631400(v4);
}

uint64_t objectdestroy_134Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2296DD3CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296D5120(v2, v3, v4);
}

uint64_t sub_2296DD474(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229569B30;

  return sub_2296D5CF8(v8, a1, a2, v6, v7);
}

uint64_t sub_2296DD57C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    sub_22A4DDA7C();
  }

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_2296DD620(void *a1)
{
  v3 = *v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 homeManager];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isThisDesignatedFMFDevice];
  }

  else
  {
    v11 = 0;
  }

  sub_229541CB0(v3, &off_283CE0828);
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_229538000, v12, v13, "Evaluating if execution is supported for MeDevice: %{BOOL}d", v14, 8u);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_2296DD7E4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v36 - v12;
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v4;
  sub_229541CB0(v4, &off_283CE0828);
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = v6;
    v22 = v9;
    v23 = a1;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_229538000, v18, v19, "Registering for me device changes", v20, 2u);
    v25 = v24;
    a1 = v23;
    v9 = v22;
    v6 = v21;
    v7 = v37;
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v26 = v2[2];
  v27 = sub_22A4DDE5C();
  v28 = sub_22A4DD9DC();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  sub_2295FE8C0(a1, v9);
  v31 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v27;
  v32[5] = v30;
  sub_2295FE930(v9, v32 + v31);
  *(v32 + ((v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v33 = sub_22957F3C0(0, 0, v29, &unk_22A57E6B8, v32);
  v34 = v2[3];
  v2[3] = v33;
}

uint64_t sub_2296DDB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_22A4DD07C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = sub_22A4DDE4C();
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296DDD30, 0, 0);
}

uint64_t sub_2296DDD30()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];

  sub_22A4DDE3C();
  swift_beginAccess();
  v4 = sub_2295F39B0();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_2296DDE04;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x282200308](v8, v9, v4);
}

uint64_t sub_2296DDE04()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2295FE7D4;
  }

  else
  {
    v3 = sub_2296DDF18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296DDF34()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[17];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v24);
    goto LABEL_10;
  }

  v5 = Strong;
  v6 = v0[25];
  sub_229541CB0(v0[19], &off_283CE0828);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v7, v8, "Received HMDFMFStatusUpdate", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[19];
  v31 = v0[20];
  v32 = v0[26];
  v16 = v0[18];

  (*(v12 + 8))(v10, v11);
  v0[5] = v15;
  v0[6] = &off_283CE0840;
  v0[2] = v5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) + 28);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v14 + 8))(v13, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v32);
  v18 = sub_2295F39B0();
  v19 = *(MEMORY[0x277D856D0] + 4);
  v20 = swift_task_alloc();
  v0[30] = v20;
  *v20 = v0;
  v20[1] = sub_2296DDE04;
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[27];

  return MEMORY[0x282200308](v22, v23, v18);
}

uint64_t sub_2296DE2A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2296DDB70(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2296DE3EC()
{
  v1[18] = v0;
  v1[19] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F458, &qword_22A57E718);
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = sub_22A4DB7DC();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296DE594, 0, 0);
}

uint64_t sub_2296DE594()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[29];
  v5 = v0[26];
  v13 = v0[27];
  v8 = v0 + 24;
  v6 = v0[24];
  v7 = v8[1];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22A576190;
  *(v9 + 32) = [objc_allocWithZone(MEMORY[0x277D287B8]) initWithLocationTypeEnum_];
  sub_229562F68(0, &qword_27D87F468, 0x277D287B8);
  v10 = sub_22A4DD81C();
  v1[31] = v10;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_2296DE7E0;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2296DF91C;
  v1[13] = &block_descriptor_18;
  [v14 createServiceWithServiceType:1 locationTypes:v10 reply:v3];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2296DE7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_2296DEAC4;
  }

  else
  {
    v3 = sub_2296DE8F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296DE8F0()
{
  v1 = v0[31];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  (*(v0[28] + 32))(v0[30], v0[29], v0[27]);

  v5 = objc_allocWithZone(MEMORY[0x277D28780]);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithDelegate:v4 serviceIdentifier:v6];

  v8 = *(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection);
  *(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection) = v7;

  sub_229541CB0(v3, &off_283CE08B0);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "Created ULConnection to milod", v15, 2u);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  (*(v14 + 8))(v12, v13);
  v16 = v0[29];
  v17 = v0[26];
  v19 = v0[22];
  v18 = v0[23];
  (*(v0[28] + 8))(v0[30], v0[27]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2296DEAC4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[22];
  v4 = v0[19];
  swift_willThrow();

  sub_229541CB0(v4, &off_283CE08B0);
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[32];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_229538000, v6, v7, "Unable to create ULConnection: %@", v10, 0xCu);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[29];
  v15 = v0[30];
  v16 = v0[26];
  v17 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2296DEC98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_229538000, v15, v16, "Calling ULConnection.connect()", v17, 2u);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v18 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection;
  v19 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection);
  if (v19)
  {
    v20 = [v19 connect];
    sub_22A4DB79C();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_22A4DB7DC();
  v23 = *(*(v22 - 8) + 56);
  v24 = 1;
  v23(v9, v21, 1, v22);
  sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
  v25 = *(v1 + v18);
  if (v25)
  {
    v26 = objc_allocWithZone(MEMORY[0x277D28818]);
    v27 = v25;
    v28 = [v26 initWithIsLowLatency_];
    v29 = [v27 startUpdatingWithConfiguration_];

    sub_22A4DB79C();
    v24 = 0;
  }

  v23(v7, v24, 1, v22);
  return sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
}

uint64_t sub_2296DEFB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_229538000, v15, v16, "Calling ULConnection.disconnect()", v17, 2u);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v18 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection;
  v19 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection);
  if (v19)
  {
    v20 = [v19 stopUpdating];
    sub_22A4DB79C();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_22A4DB7DC();
  v23 = *(*(v22 - 8) + 56);
  v24 = 1;
  v23(v9, v21, 1, v22);
  sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
  v25 = *(v1 + v18);
  if (v25)
  {
    v26 = [v25 disconnect];
    sub_22A4DB79C();

    v24 = 0;
  }

  v23(v7, v24, 1, v22);
  return sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
}

id sub_2296DF28C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F448, &qword_22A57E708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F450, &qword_22A577F80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F430, &qword_22A57E6F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19[-v14];
  *&v0[OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_ulConnection] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F420, &qword_22A57E6C8);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v20 = v15;
  sub_229562F68(0, &qword_27D87F410, 0x277D287F0);
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v2);
  sub_22A4DDA6C();
  (*(v8 + 16))(&v0[OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_events], v11, v7);
  sub_2296E01E0(v15, &v0[OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_continuation]);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  (*(v8 + 8))(v11, v7);
  sub_22953EAE4(v15, &qword_27D87F430, &qword_22A57E6F8);
  return v17;
}

uint64_t sub_2296DF578(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a2, &qword_27D87F430, &qword_22A57E6F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F420, &qword_22A57E6C8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

id sub_2296DF678()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_229538000, v8, v9, "deinit", v10, 2u);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_2296DEFB4();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t _s7AdapterCMa()
{
  result = qword_27D87F3F8;
  if (!qword_27D87F3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296DF91C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22A4DB7DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F458, &qword_22A57E718);
    sub_22A4DD8EC();
  }

  else
  {
    sub_22A4DB79C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F458, &qword_22A57E718);
    sub_22A4DD8FC();
  }
}

void sub_2296DFB00()
{
  sub_2296DFBD4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2296DFC3C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2296DFBD4()
{
  if (!qword_27D87F408)
  {
    sub_229562F68(255, &qword_27D87F410, 0x277D287F0);
    v0 = sub_22A4DDA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87F408);
    }
  }
}

void sub_2296DFC3C()
{
  if (!qword_27D87F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87F420, &qword_22A57E6C8);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87F418);
    }
  }
}

uint64_t sub_2296DFCBC(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v8 = a1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_229538000, v9, v10, "Received didUpdateServiceStatus from milod: %@", v11, 0xCu);
    sub_22953EAE4(v12, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2296DFE70(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F430, &qword_22A57E6F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F438, &qword_22A57E700);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE08B0);
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32 = v2;
    v24 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v25 = v18;
    _os_log_impl(&dword_229538000, v19, v20, "Received didUpdatePrediction from milod: %@", v22, 0xCu);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    v26 = v24;
    v2 = v32;
    MEMORY[0x22AAD4E50](v26, -1, -1);
    v27 = v22;
    v9 = v33;
    MEMORY[0x22AAD4E50](v27, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  sub_2296E01E0(v2 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger13MicroLocation7Adapter_continuation, v8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F420, &qword_22A57E6C8);
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v8, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v18;
    v31 = v18;
    sub_22A4DDA0C();
    (*(v34 + 8))(v12, v9);
    return (*(v29 + 8))(v8, v28);
  }

  return result;
}

uint64_t sub_2296E01E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F430, &qword_22A57E6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2296E0258(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x646E65526576696CLL;
    case 3:
      return 0x7470697263736564;
    case 4:
      return 0x4C79654B656D6F68;
    case 5:
      return 0xD00000000000001BLL;
    case 6:
      return 0x655674616D726F66;
    case 7:
      return 0x7462755364726163;
    case 8:
      return 0x6E6564496D616574;
    case 9:
    case 33:
      return 0xD000000000000018;
    case 10:
      return 0xD000000000000014;
    case 11:
      return 0xD00000000000001ALL;
    case 12:
      v3 = 1801675106;
      return v3 | 0x756F726700000000;
    case 13:
      v3 = 1701998438;
      return v3 | 0x756F726700000000;
    case 14:
      return 0x6C6F436C6562616CLL;
    case 15:
      return 0xD000000000000010;
    case 16:
    case 27:
      return 0xD00000000000001CLL;
    case 17:
      return 0xD000000000000021;
    case 18:
      return 0xD000000000000015;
    case 19:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000025;
    case 21:
      return 0xD00000000000002DLL;
    case 22:
    case 23:
      return 0xD000000000000019;
    case 24:
      return 0x43746E656D796170;
    case 25:
      return 0xD000000000000013;
    case 26:
      return 0x65636E6575716573;
    case 28:
      return 0x6E6172626F437369;
    case 29:
      return 0x4E746361746E6F63;
    case 30:
      v4 = 11;
      goto LABEL_30;
    case 31:
      return 0xD000000000000016;
    case 32:
      v4 = 9;
LABEL_30:
      result = v4 | 0xD000000000000014;
      break;
    case 34:
      result = 0x6570795464726163;
      break;
    case 35:
      result = 0x6F666E4972657375;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2296E06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E4344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E06EC(uint64_t a1)
{
  v2 = sub_2296E0EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E0728(uint64_t a1)
{
  v2 = sub_2296E0EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F470, &qword_22A57E720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E0EA4();
  sub_22A4DE80C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v62) = 0;
  sub_22A4DE54C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v62) = 1;
    sub_22A4DE54C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v62) = 2;
    sub_22A4DE54C();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v62) = 3;
    sub_22A4DE54C();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v62) = 4;
    sub_22A4DE54C();
    v21 = v3[10];
    LOBYTE(v62) = 5;
    sub_22A4DE57C();
    v22 = v3[11];
    LOBYTE(v62) = 6;
    sub_22A4DE57C();
    v23 = v3[12];
    v24 = v3[13];
    LOBYTE(v62) = 7;
    sub_22A4DE54C();
    v25 = v3[14];
    v26 = v3[15];
    LOBYTE(v62) = 8;
    sub_22A4DE54C();
    v28 = v3[16];
    v29 = v3[17];
    LOBYTE(v62) = 9;
    sub_22A4DE54C();
    v30 = v3[18];
    v31 = v3[19];
    LOBYTE(v62) = 10;
    sub_22A4DE54C();
    *&v62 = v3[20];
    v64 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F480, &qword_22A57E728);
    sub_2296EBD90(&qword_27D87F488);
    sub_22A4DE59C();
    v32 = v3[21];
    v33 = v3[22];
    LOBYTE(v62) = 12;
    sub_22A4DE54C();
    v34 = v3[23];
    v35 = v3[24];
    LOBYTE(v62) = 13;
    sub_22A4DE54C();
    v36 = v3[25];
    v37 = v3[26];
    LOBYTE(v62) = 14;
    sub_22A4DE54C();
    v38 = v3[27];
    v39 = v3[28];
    LOBYTE(v62) = 15;
    sub_22A4DE54C();
    v40 = *(v3 + 232);
    LOBYTE(v62) = 16;
    sub_22A4DE55C();
    v41 = v3[30];
    v42 = v3[31];
    LOBYTE(v62) = 17;
    sub_22A4DE54C();
    v43 = v3[32];
    v44 = v3[33];
    LOBYTE(v62) = 18;
    sub_22A4DE54C();
    v45 = v3[34];
    v46 = v3[35];
    LOBYTE(v62) = 19;
    sub_22A4DE54C();
    v47 = *(v3 + 288);
    LOBYTE(v62) = 20;
    sub_22A4DE55C();
    v48 = *(v3 + 289);
    LOBYTE(v62) = 21;
    sub_22A4DE55C();
    v49 = v3[37];
    LOBYTE(v62) = 22;
    sub_22A4DE57C();
    v50 = v3[38];
    LOBYTE(v62) = 23;
    sub_22A4DE57C();
    v62 = *(v3 + 39);
    v63 = v3[41];
    v64 = 24;
    sub_2296E0EF8();
    sub_22A4DE59C();
    *&v62 = v3[42];
    v64 = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F498, &qword_22A57E730);
    sub_2296E0F4C();
    sub_22A4DE59C();
    v51 = v3[43];
    LOBYTE(v62) = 26;
    sub_22A4DE57C();
    *&v62 = v3[44];
    v64 = 27;
    sub_22A4DE59C();
    v52 = *(v3 + 360);
    LOBYTE(v62) = 28;
    sub_22A4DE55C();
    v53 = v3[46];
    v54 = v3[47];
    LOBYTE(v62) = 29;
    sub_22A4DE54C();
    v55 = *(v3 + 384);
    LOBYTE(v62) = 30;
    sub_22A4DE55C();
    v56 = *(v3 + 385);
    LOBYTE(v62) = 31;
    sub_22A4DE55C();
    v57 = *(v3 + 386);
    LOBYTE(v62) = 32;
    sub_22A4DE55C();
    v58 = v3[49];
    v59 = v3[50];
    LOBYTE(v62) = 33;
    sub_22A4DE54C();
    v60 = v3[51];
    v61 = v3[52];
    LOBYTE(v62) = 34;
    sub_22A4DE54C();
    v62 = *(v3 + 53);
    v64 = 35;
    sub_2296E1024();
    sub_22A4DE53C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2296E0EA4()
{
  result = qword_27D87F478;
  if (!qword_27D87F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F478);
  }

  return result;
}

unint64_t sub_2296E0EF8()
{
  result = qword_27D87F490;
  if (!qword_27D87F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F490);
  }

  return result;
}

unint64_t sub_2296E0F4C()
{
  result = qword_27D87F4A0;
  if (!qword_27D87F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F498, &qword_22A57E730);
    sub_2296E0FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4A0);
  }

  return result;
}

unint64_t sub_2296E0FD0()
{
  result = qword_27D87F4A8;
  if (!qword_27D87F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4A8);
  }

  return result;
}

unint64_t sub_2296E1024()
{
  result = qword_27D87F4B0;
  if (!qword_27D87F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4B0);
  }

  return result;
}

void *PassJSON.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2296E4E5C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x1B8uLL);
  }

  return result;
}

void *sub_2296E10C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2296E4E5C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x1B8uLL);
  }

  return result;
}

uint64_t sub_2296E1130()
{
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](0);
  return sub_22A4DE7BC();
}

uint64_t sub_2296E1174()
{
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](0);
  return sub_22A4DE7BC();
}

uint64_t sub_2296E11D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x800000022A5926B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22A4DE60C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2296E1264(uint64_t a1)
{
  v2 = sub_2296E6528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E12A0(uint64_t a1)
{
  v2 = sub_2296E6528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserInfoJSON.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4B8, &qword_22A57E738);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t UserInfoJSON.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4C8, &qword_22A57E740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE7FC();
  if (!v1)
  {
    v9 = sub_22A4DE49C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2296E1578@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4C8, &qword_22A57E740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_22A4DE49C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_2296E16F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4B8, &qword_22A57E738);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E6528();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2296E1830(char a1)
{
  result = 0x54746E656D796170;
  switch(a1)
  {
    case 1:
      result = 0x6574617473;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6E6564494E415044;
      break;
    case 5:
      result = 0x666675534E415044;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x6564657263627573;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2296E1A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E68A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E1A98(uint64_t a1)
{
  v2 = sub_2296E657C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E1AD4(uint64_t a1)
{
  v2 = sub_2296E657C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaymentApplicationJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4D0, &unk_22A57E748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E657C();
  sub_22A4DE80C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v41) = 0;
  sub_22A4DE54C();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v41) = 1;
    sub_22A4DE57C();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v41) = 2;
    sub_22A4DE54C();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v41) = 3;
    sub_22A4DE54C();
    v18 = v3[7];
    v19 = v3[8];
    LOBYTE(v41) = 4;
    sub_22A4DE54C();
    v20 = v3[9];
    v21 = v3[10];
    LOBYTE(v41) = 5;
    sub_22A4DE54C();
    v22 = v3[11];
    LOBYTE(v41) = 6;
    sub_22A4DE57C();
    v23 = v3[12];
    LOBYTE(v41) = 7;
    sub_22A4DE57C();
    v24 = v3[13];
    LOBYTE(v41) = 8;
    sub_22A4DE57C();
    v25 = v3[14];
    v26 = v3[15];
    LOBYTE(v41) = 9;
    sub_22A4DE54C();
    v27 = *(v3 + 128);
    LOBYTE(v41) = 10;
    sub_22A4DE55C();
    v28 = v3[17];
    LOBYTE(v41) = 11;
    sub_22A4DE57C();
    *&v41 = v3[18];
    LOBYTE(v38[0]) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0);
    sub_22A4DE59C();
    v29 = v3[19];
    v30 = v3[20];
    LOBYTE(v41) = 13;
    sub_22A4DE54C();
    *&v41 = v3[21];
    LOBYTE(v38[0]) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4E8, &qword_22A57E758);
    sub_2296E663C();
    sub_22A4DE59C();
    v31 = *(v3 + 14);
    v32 = *(v3 + 12);
    v48 = *(v3 + 13);
    v49 = v31;
    v33 = *(v3 + 14);
    v50 = *(v3 + 15);
    v34 = *(v3 + 12);
    v47[0] = *(v3 + 11);
    v47[1] = v34;
    v43 = v48;
    v44 = v33;
    v45 = *(v3 + 15);
    v51 = v3[32];
    v46 = v3[32];
    v41 = v47[0];
    v42 = v32;
    v40 = 15;
    sub_2296E6714(v47, v38);
    sub_2296E674C();
    sub_22A4DE59C();
    v38[2] = v43;
    v38[3] = v44;
    v38[4] = v45;
    v39 = v46;
    v38[0] = v41;
    v38[1] = v42;
    sub_2296E67A0(v38);
    v37 = v3[33];
    v36[7] = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F508, &qword_22A57E760);
    sub_2296E67D0();
    sub_22A4DE59C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *PaymentApplicationJSON.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2296E6DE8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x110uLL);
  }

  return result;
}

void *sub_2296E205C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2296E6DE8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x110uLL);
  }

  return result;
}

uint64_t sub_2296E20C0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696669746E656469;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6574617473;
    }
  }

  else
  {
    v2 = 0x616D726F466F7369;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2296E21B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2296E77F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2296E21EC(uint64_t a1)
{
  v2 = sub_2296E779C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E2228(uint64_t a1)
{
  v2 = sub_2296E779C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubcredentialJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F520, &qword_22A57E768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E779C();
  sub_22A4DE80C();
  v11 = *v3;
  v29 = 0;
  sub_22A4DE57C();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v28 = 1;
    sub_22A4DE54C();
    v14 = v3[3];
    v15 = v3[4];
    v27 = 2;
    sub_22A4DE54C();
    v16 = v3[5];
    v17 = v3[6];
    v26 = 3;
    sub_22A4DE54C();
    v18 = v3[7];
    v25 = 4;
    sub_22A4DE58C();
    v19 = v3[8];
    v20 = v3[9];
    v24 = 5;
    sub_22A4DE51C();
    v23 = v3[10];
    v22[15] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0);
    sub_22A4DE53C();
  }

  return (*(v6 + 8))(v9, v5);
}