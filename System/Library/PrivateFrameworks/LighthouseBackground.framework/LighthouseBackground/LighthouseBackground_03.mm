unint64_t sub_1DF190894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D298, &unk_1DF22FF60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF0, &unk_1DF22D6F0);
    v8 = sub_1DF22B3F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DF17A6A8(v10, v6, &qword_1ECE0D298, &unk_1DF22FF60);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DF175254(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MLHostAnalytics();
      result = sub_1DF190F10(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF190A7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DF22B3F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1DF175254(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DF190B78()
{
  v0 = sub_1DF22B420();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF190BC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F62 && a2 == 0xE500000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697261646E756F62 && a2 == 0xEA00000000007365 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4374656B637562 && a2 == 0xEB00000000746E75 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1DF22B620() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1DF190E70()
{
  result = qword_1ECE0D290;
  if (!qword_1ECE0D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D290);
  }

  return result;
}

uint64_t sub_1DF190EC4()
{
  v0 = sub_1DF22B420();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF190F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHostAnalytics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF190F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 5u)
  {
    if (((1 << a6) & 0xB) == 0)
    {
    }
  }

  return result;
}

uint64_t sub_1DF190FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2C0, &qword_1DF22FFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1DF191044(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id TaskRequest.getSystemTaskRequest(identifier:)()
{
  v1 = v0[13];
  v54 = v0[12];
  v55 = v1;
  v2 = v0[15];
  v56 = v0[14];
  v57 = v2;
  v3 = v0[9];
  v50 = v0[8];
  v51 = v3;
  v4 = v0[11];
  v52 = v0[10];
  v53 = v4;
  v5 = v0[5];
  v46 = v0[4];
  v47 = v5;
  v6 = v0[7];
  v48 = v0[6];
  v49 = v6;
  v7 = v0[1];
  v42 = *v0;
  v43 = v7;
  v8 = v0[3];
  v44 = v0[2];
  v45 = v8;
  if (BYTE1(v43))
  {
    if (BYTE9(v44))
    {
      goto LABEL_10;
    }

    v9 = objc_allocWithZone(MEMORY[0x1E698E478]);
    v10 = sub_1DF22ACA0();
    v11 = [v9 initWithIdentifier_];

    [v11 setScheduleAfter_];
    if ((BYTE8(v44) & 1) == 0)
    {
      [v11 setTrySchedulingBefore_];
    }
  }

  else
  {
    if (!BYTE9(v44))
    {
      goto LABEL_10;
    }

    v12 = objc_allocWithZone(MEMORY[0x1E698E490]);
    v13 = sub_1DF22ACA0();
    v11 = [v12 initWithIdentifier_];

    [v11 setInterval_];
    if ((v43 & 1) == 0)
    {
      [v11 setMinDurationBetweenInstances_];
    }
  }

  if (v11)
  {
    *&v41[0] = v11;
    sub_1DF191474(v41);
    return v11;
  }

LABEL_10:
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF22A8C0();
  __swift_project_value_buffer(v14, qword_1ED8E92C0);
  sub_1DF1913C4(&v42, v41);
  v15 = sub_1DF22A8A0();
  v16 = sub_1DF22B110();
  sub_1DF191420(&v42);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v28 = v46;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v45;
    sub_1DF1913C4(&v42, v41);
    v19 = TaskRequest.description.getter();
    v21 = v20;
    v41[12] = v36;
    v41[13] = v37;
    v41[14] = v38;
    v41[15] = v39;
    v41[8] = v32;
    v41[9] = v33;
    v41[10] = v34;
    v41[11] = v35;
    v41[4] = v28;
    v41[5] = v29;
    v41[6] = v30;
    v41[7] = v31;
    v41[0] = v24;
    v41[1] = v25;
    v41[2] = v26;
    v41[3] = v27;
    sub_1DF191420(v41);
    v22 = sub_1DF160728(v19, v21, &v40);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1DF15A000, v15, v16, "Invalid TaskRequest, can't generate BGSystemTaskRequest: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12D0B40](v18, -1, -1);
    MEMORY[0x1E12D0B40](v17, -1, -1);
  }

  return 0;
}

void sub_1DF191474(id *a1)
{
  v2 = *a1;
  v3 = *(v1 + 43);
  [*a1 setRequiresNetworkConnectivity_];
  v4 = *(v1 + 44);
  [v2 setRequiresExternalPower_];
  v5 = *(v1 + 45);
  [v2 setPriority_];
  v6 = qword_1DF230080[v5];
  LOBYTE(v5) = *(v1 + 46);
  [v2 setRequiresProtectionClass_];
  v7 = *(v1 + 48);
  LODWORD(v4) = *(v1 + 56);
  [v2 setPreventsDeviceSleep_];
  v8 = 0.0;
  if (!v4)
  {
    v8 = v7;
  }

  v9 = *(v1 + 57);
  [v2 setRandomInitialDelay_];
  v10 = *(v1 + 58);
  [v2 setPostInstall_];
  v11 = *(v1 + 59);
  [v2 setRequiresInexpensiveNetworkConnectivity_];
  v12 = *(v1 + 60);
  [v2 setRequiresUnconstrainedNetworkConnectivity_];
  v13 = *(v1 + 61);
  [v2 setAppRefresh_];
  v14 = *(v1 + 62);
  [v2 setRequiresUserInactivity_];
  v15 = *(v1 + 63);
  [v2 setRequiresSignificantUserInactivity_];
  v16 = *(v1 + 64);
  [v2 setPowerNap_];
  v17 = *(v1 + 72);
  [v2 setResourceIntensive_];
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = (v17 + 32);
      do
      {
        v21 = *v20++;
        v22 = qword_1DF230010[v21];
        if ((v22 & v19) != 0)
        {
          v22 = 0;
        }

        v19 |= v22;
        --v18;
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    [v2 setResources_];
  }

  v23 = *(v1 + 81);
  [v2 setMayRebootDevice_];
  v24 = *(v1 + 88);
  v25 = *(v1 + 96);
  [v2 setUserRequestedBackupTask_];
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = *(v1 + 104);
  v28 = *(v1 + 112);
  [v2 setNetworkDownloadSize_];
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v30 = *(v1 + 113);
  [v2 setNetworkUploadSize_];
  v31 = *(v1 + 114);
  [v2 setCommunicatesWithPairedDevice_];
  v32 = *(v1 + 120);
  v33 = *(v1 + 128);
  [v2 setShouldWakeDevice_];
  if (v33)
  {
    v34 = sub_1DF22ACA0();
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v1 + 136);
  v36 = *(v1 + 144);
  [v2 setGroupName_];

  if (v36)
  {
    v37 = 1;
  }

  else
  {
    v37 = v35;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = *(v1 + 152);
    v39 = *(v1 + 160);
    [v2 setGroupConcurrencyLimit_];
    if (v39)
    {
      v40 = sub_1DF22ACA0();
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v1 + 168);
    v42 = *(v1 + 176);
    [v2 setRateLimitConfigurationName_];

    v43 = 0.0;
    if (!v42)
    {
      v43 = v41;
    }

    v44 = *(v1 + 177);
    [v2 setExpectedDuration_];
    v45 = *(v1 + 178);
    [v2 setPowerBudgeted_];
    v46 = *(v1 + 184);
    [v2 setDataBudgeted_];
    if (v46)
    {
      v47 = sub_1DF22AE70();
    }

    else
    {
      v47 = 0;
    }

    v48 = *(v1 + 192);
    [v2 setRelatedApplications_];

    if (v48)
    {
      v48 = sub_1DF22AE70();
    }

    v49 = *(v1 + 202);
    [v2 setInvolvedProcesses_];

    v50 = *(v1 + 208);
    [v2 setRequiresBuddyComplete_];
    if (v50)
    {
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = 0;
        v53 = (v50 + 32);
        do
        {
          v55 = *v53++;
          v54 = v55;
          if ((~v52 & (v55 + 1)) != 0)
          {
            v56 = v54 + 1;
          }

          else
          {
            v56 = 0;
          }

          v52 |= v56;
          --v51;
        }

        while (v51);
      }

      else
      {
        v52 = 0;
      }

      [v2 setTargetDevice_];
    }

    if (*(v1 + 224))
    {
      v57 = *(v1 + 216);
      v58 = sub_1DF22ACA0();
    }

    else
    {
      v58 = 0;
    }

    v59 = *(v1 + 232);
    [v2 setRemoteDevice_];

    v60 = *(v1 + 233);
    [v2 setRequiresRemoteDeviceWake_];
    v61 = qword_1DF230038[v60];
    v79 = *(v1 + 240);
    v62 = v79;
    [v2 setRunOnMotionState_];
    if (v79)
    {
      sub_1DF192910(&v79, &v78);
      sub_1DF1925DC(v62);
      sub_1DF192980(&v79);
      v62 = sub_1DF22B060();
    }

    v63 = *(v1 + 248);
    [v2 setProducedResultIdentifiers_];

    if (!v63)
    {
LABEL_61:
      [v2 setDependencies_];

      return;
    }

    v64 = 0;
    v77 = MEMORY[0x1E69E7CC0];
    v78 = MEMORY[0x1E69E7CC0];
    v65 = v63[2];
    v66 = v63 + 5;
    v76 = v63 + 5;
LABEL_52:
    v67 = &v66[2 * v64];
    while (1)
    {
      if (v65 == v64)
      {
        v75 = sub_1DF192674(v77);

        sub_1DF1922AC(v75);

        v63 = sub_1DF22B060();

        goto LABEL_61;
      }

      if (v64 >= v65)
      {
        break;
      }

      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_63;
      }

      v70 = *(v67 - 1);
      v69 = *v67;
      v71 = objc_allocWithZone(MEMORY[0x1E698E4B0]);

      v72 = sub_1DF22ACA0();

      v73 = [v71 initWithIdentifier:v72 batchSize:1];

      ++v64;
      v67 += 2;
      if (v73)
      {
        MEMORY[0x1E12CF930]();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v74 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DF22AEC0();
        }

        sub_1DF22AF00();
        v77 = v78;
        v64 = v68;
        v66 = v76;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
  }

  __break(1u);
}

void TaskRequest.asSystemRequest<A>(request:)(id *a1)
{
  v2 = *(v1 + 44);
  v3 = *(v1 + 45);
  v4 = *(v1 + 48);
  v65 = *(v1 + 56);
  v70 = *(v1 + 72);
  v71 = *(v1 + 80);
  v72 = *(v1 + 81);
  v74 = *(v1 + 88);
  v73 = *(v1 + 96);
  v76 = *(v1 + 104);
  v75 = *(v1 + 112);
  v77 = *(v1 + 113);
  v78 = *(v1 + 114);
  v52 = *(v1 + 120);
  v79 = *(v1 + 128);
  v81 = *(v1 + 136);
  v80 = *(v1 + 144);
  v53 = *(v1 + 160);
  v5 = *(v1 + 168);
  v54 = *(v1 + 176);
  v55 = *(v1 + 177);
  v56 = *(v1 + 178);
  v57 = *(v1 + 184);
  v58 = *(v1 + 192);
  v59 = *(v1 + 202);
  v50 = *(v1 + 152);
  v51 = *(v1 + 216);
  v60 = *(v1 + 208);
  v61 = *(v1 + 224);
  v63 = *(v1 + 232);
  v6 = *a1;
  v62 = *(v1 + 233);
  v7 = *(v1 + 248);
  v64 = *(v1 + 240);
  v8 = *(v1 + 42);
  v9 = *(v1 + 43);
  v10 = *(v1 + 46);
  v11 = *(v1 + 57);
  v12 = *(v1 + 58);
  v13 = *(v1 + 59);
  v66 = *(v1 + 60);
  v67 = *(v1 + 61);
  v68 = *(v1 + 62);
  v69 = *(v1 + 63);
  v14 = *(v1 + 64);
  [*a1 setRequiresNetworkConnectivity_];
  [v6 setRequiresExternalPower_];
  [v6 setPriority_];
  [v6 setRequiresProtectionClass_];
  [v6 setPreventsDeviceSleep_];
  v15 = 0.0;
  if (!v65)
  {
    v15 = v4;
  }

  [v6 setRandomInitialDelay_];
  [v6 setPostInstall_];
  [v6 setRequiresInexpensiveNetworkConnectivity_];
  [v6 setRequiresUnconstrainedNetworkConnectivity_];
  [v6 setAppRefresh_];
  [v6 setRequiresUserInactivity_];
  [v6 setRequiresSignificantUserInactivity_];
  [v6 setPowerNap_];
  [v6 setResourceIntensive_];
  if (v70)
  {
    v16 = *(v70 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = (v70 + 32);
      do
      {
        v19 = *v18++;
        v20 = qword_1DF230010[v19];
        if ((v20 & v17) != 0)
        {
          v20 = 0;
        }

        v17 |= v20;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    [v6 setResources_];
  }

  [v6 setMayRebootDevice_];
  [v6 setUserRequestedBackupTask_];
  if (v73)
  {
    v21 = 0;
  }

  else
  {
    v21 = v74;
  }

  [v6 setNetworkDownloadSize_];
  if (v75)
  {
    v22 = 0;
  }

  else
  {
    v22 = v76;
  }

  [v6 setNetworkUploadSize_];
  [v6 setCommunicatesWithPairedDevice_];
  [v6 setShouldWakeDevice_];
  if (v79)
  {
    v23 = sub_1DF22ACA0();
  }

  else
  {
    v23 = 0;
  }

  [v6 setGroupName_];

  if (v80)
  {
    v24 = 1;
  }

  else
  {
    v24 = v81;
  }

  if (v24 < 0)
  {
LABEL_66:
    __break(1u);
    return;
  }

  [v6 setGroupConcurrencyLimit_];
  if (v53)
  {
    v25 = sub_1DF22ACA0();
  }

  else
  {
    v25 = 0;
  }

  [v6 setRateLimitConfigurationName_];

  v26 = 0.0;
  if (!v54)
  {
    v26 = v5;
  }

  [v6 setExpectedDuration_];
  [v6 setPowerBudgeted_];
  [v6 setDataBudgeted_];
  if (v57)
  {
    v27 = sub_1DF22AE70();
  }

  else
  {
    v27 = 0;
  }

  [v6 setRelatedApplications_];

  if (v58)
  {
    v28 = sub_1DF22AE70();
  }

  else
  {
    v28 = 0;
  }

  [v6 setInvolvedProcesses_];

  [v6 setRequiresBuddyComplete_];
  v29 = v64;
  if (v60)
  {
    v30 = *(v60 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = (v60 + 32);
      do
      {
        v34 = *v32++;
        v33 = v34;
        if ((~v31 & (v34 + 1)) != 0)
        {
          v35 = v33 + 1;
        }

        else
        {
          v35 = 0;
        }

        v31 |= v35;
        --v30;
      }

      while (v30);
    }

    else
    {
      v31 = 0;
    }

    [v6 setTargetDevice_];
  }

  if (v61)
  {
    v36 = sub_1DF22ACA0();
  }

  else
  {
    v36 = 0;
  }

  [v6 setRemoteDevice_];

  [v6 setRequiresRemoteDeviceWake_];
  [v6 setRunOnMotionState_];
  if (v64)
  {

    sub_1DF1925DC(v37);

    v29 = sub_1DF22B060();
  }

  [v6 setProducedResultIdentifiers_];

  if (v7)
  {
    v38 = 0;
    v82 = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC0];
    v39 = *(v7 + 16);
    v40 = v7 + 40;
LABEL_53:
    v41 = (v40 + 16 * v38);
    while (1)
    {
      if (v39 == v38)
      {
        v49 = sub_1DF192674(v82);

        sub_1DF1922AC(v49);

        v83 = sub_1DF22B060();

        goto LABEL_62;
      }

      if (v38 >= *(v7 + 16))
      {
        break;
      }

      ++v38;
      v42 = v41 + 2;
      v44 = *(v41 - 1);
      v43 = *v41;
      v45 = objc_allocWithZone(MEMORY[0x1E698E4B0]);

      v46 = sub_1DF22ACA0();

      v47 = [v45 initWithIdentifier:v46 batchSize:1];

      v41 = v42;
      if (v47)
      {
        MEMORY[0x1E12CF930]();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DF22AEC0();
        }

        sub_1DF22AF00();
        v82 = v84;
        v40 = v7 + 40;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  v83 = 0;
LABEL_62:
  [v6 setDependencies_];
}

uint64_t sub_1DF1922AC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DF22B260())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2D8, &qword_1DF22FFD8);
  v3 = sub_1DF22B2E0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1DF22B250();
  sub_1DF19286C();
  sub_1DF1928B8();
  result = sub_1DF22B080();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1DF22B280();
    if (!v16)
    {
LABEL_34:
      sub_1DF178EDC();

      return v3;
    }

    *&v28 = v16;
    sub_1DF19286C();
    swift_dynamicCast();
LABEL_25:
    sub_1DF19286C();
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_1DF22B290();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DF1925DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12CFB40](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF1EA9A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DF192674(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DF22B260())
  {
    v4 = sub_1DF19286C();
    v5 = sub_1DF1928B8();
    result = MEMORY[0x1E12CFB40](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12CFE10](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1DF1EA770(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DF22B260();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DF1927A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DF192818();
  result = MEMORY[0x1E12CFB40](v2, &type metadata for TaskStatus, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1DF1EAAF8(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1DF192818()
{
  result = qword_1ECE0D2D0;
  if (!qword_1ECE0D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D2D0);
  }

  return result;
}

unint64_t sub_1DF19286C()
{
  result = qword_1ECE0D2E0;
  if (!qword_1ECE0D2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE0D2E0);
  }

  return result;
}

unint64_t sub_1DF1928B8()
{
  result = qword_1ECE0D2E8;
  if (!qword_1ECE0D2E8)
  {
    sub_1DF19286C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D2E8);
  }

  return result;
}

uint64_t sub_1DF192910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2F0, &qword_1DF22FFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF192980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2F0, &qword_1DF22FFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF1929E8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1DF22B0B0();
  if (!v26)
  {
    return sub_1DF22AED0();
  }

  v48 = v26;
  v52 = sub_1DF22B380();
  v39 = sub_1DF22B390();
  sub_1DF22B360();
  result = sub_1DF22B0A0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1DF22B0D0();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1DF22B370();
      result = sub_1DF22B0C0();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF192E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  swift_beginAccess();
  v17 = *(v4 + 32);
  if (!*(v17 + 16))
  {
    goto LABEL_8;
  }

  v18 = sub_1DF175254(a1, a2);
  if ((v19 & 1) == 0)
  {

LABEL_8:
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
    (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
    v38 = v16;
LABEL_11:
    sub_1DF1964C0(v38);
    return 0;
  }

  v20 = v18;
  v47 = a2;
  v48 = a1;
  v49 = a4;
  v50 = a3;
  v21 = *(v17 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v23 = *(*(v22 - 8) + 72);
  v24 = v21 + v23 * v20;
  v25 = *(v22 - 8);
  sub_1DF17A6A8(v24, v16, &qword_1ECE0CD60, &qword_1DF22FFC0);

  v26 = *(v25 + 56);
  v26(v16, 0, 1, v22);
  sub_1DF1964C0(v16);
  v27 = *(v5 + 32);
  if (!*(v27 + 16))
  {
LABEL_10:
    v26(v14, 1, 1, v22);
    v38 = v14;
    goto LABEL_11;
  }

  v28 = *(v5 + 32);

  v29 = v49;
  v30 = sub_1DF175254(v50, v49);
  if ((v31 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1DF17A6A8(*(v27 + 56) + v30 * v23, v14, &qword_1ECE0CD60, &qword_1DF22FFC0);

  v26(v14, 0, 1, v22);
  sub_1DF1964C0(v14);
  v32 = sub_1DF1623A4();
  v33 = v47;
  v34 = sub_1DF193214(v51, v48, v47);
  v36 = v35;
  if ((*(v25 + 48))(v35, 1, v22))
  {
    (v34)(v51, 0);
    (v32)(v52, 0);
  }

  else
  {
    v40 = *(v22 + 52);
    v41 = *(v36 + v40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + v40) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1DF174730(0, *(v41 + 2) + 1, 1, v41);
      *(v36 + v40) = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      v41 = sub_1DF174730((v43 > 1), v44 + 1, 1, v41);
      *(v36 + v40) = v41;
    }

    *(v41 + 2) = v44 + 1;
    v45 = &v41[32 * v44];
    *(v45 + 4) = v48;
    *(v45 + 5) = v33;
    *(v45 + 6) = v50;
    *(v45 + 7) = v29;
    (v34)(v51, 0);
    (v32)(v52, 0);
  }

  return 1;
}

void (*sub_1DF193214(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DF195A04(v6, a2, a3);
  return sub_1DF19329C;
}

void sub_1DF19329C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CustomEventAnalytics.stateCountMap.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CustomEventAnalytics.transitionStatsMap.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for CustomEventAnalytics()
{
  result = qword_1ECE0D378;
  if (!qword_1ECE0D378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomEventAnalytics.taskName.getter()
{
  v1 = (v0 + *(type metadata accessor for CustomEventAnalytics() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CustomEventAnalytics.taskName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CustomEventAnalytics() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1DF1936EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t CustomEventAnalytics.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  a1[1] = sub_1DF18FD18(v2);
  v3 = type metadata accessor for CustomEventAnalytics();
  v4 = v3[6];
  v5 = type metadata accessor for LedgerState();
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v3[7], 1, 1, v5);
  v7 = (a1 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v3[9];
  v9 = sub_1DF22A800();
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), a1 + v8, 1, 1, v9);
  v10 = a1 + v3[10];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_1DF1939CC()
{
  v1 = *v0;
  v2 = 0x756F436574617473;
  v3 = 0x745374656B637562;
  if (v1 != 5)
  {
    v3 = 0x6E4574656B637562;
  }

  v4 = 0x656D614E6B736174;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x6C61567473726966;
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

uint64_t sub_1DF193AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF196220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF193AF8(uint64_t a1)
{
  v2 = sub_1DF196000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF193B34(uint64_t a1)
{
  v2 = sub_1DF196000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CustomEventAnalytics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2F8, &unk_1DF2300C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF196000();
  sub_1DF22B740();
  v22 = *v3;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
  sub_1DF1960A8(&qword_1ECE0D310);
  sub_1DF22B5C0();
  if (!v2)
  {
    v22 = v3[1];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    sub_1DF196118(&qword_1ECE0D320, sub_1DF17C3E4, sub_1DF196054);
    sub_1DF22B5C0();
    v11 = type metadata accessor for CustomEventAnalytics();
    v12 = v11[6];
    LOBYTE(v22) = 2;
    type metadata accessor for LedgerState();
    sub_1DF1965D4(&qword_1ECE0CE10, type metadata accessor for LedgerState);
    sub_1DF22B560();
    v13 = v11[7];
    LOBYTE(v22) = 3;
    sub_1DF22B560();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v22) = 4;
    sub_1DF22B510();
    v17 = v11[9];
    LOBYTE(v22) = 5;
    sub_1DF22A800();
    sub_1DF1965D4(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B560();
    v18 = v11[10];
    LOBYTE(v22) = 6;
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CustomEventAnalytics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D330, &qword_1DF2300D8);
  v54 = *(v56 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v43 - v13;
  v15 = type metadata accessor for CustomEventAnalytics();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1E69E7CC0];
  v53 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *v19 = v53;
  v51 = sub_1DF18FD18(v20);
  v19[1] = v51;
  v21 = v16[8];
  v22 = type metadata accessor for LedgerState();
  v23 = *(*(v22 - 8) + 56);
  v49 = v21;
  v23(v19 + v21, 1, 1, v22);
  v48 = v16[9];
  v23(v19 + v48, 1, 1, v22);
  v24 = (v19 + v16[10]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v16[11];
  v26 = sub_1DF22A800();
  v27 = *(*(v26 - 8) + 56);
  v45 = v25;
  v27(v19 + v25, 1, 1, v26);
  v28 = v16[12];
  v58 = v19;
  v27(v19 + v28, 1, 1, v26);
  v29 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_1DF196000();
  v55 = v14;
  v30 = v57;
  sub_1DF22B730();
  if (v30)
  {
    v31 = v58;
  }

  else
  {
    v57 = v24;
    v43 = v28;
    v32 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
    v60 = 0;
    sub_1DF1960A8(&qword_1ECE0D338);
    sub_1DF22B4E0();

    v31 = v58;
    *v58 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    v60 = 1;
    sub_1DF196118(&qword_1ECE0D340, sub_1DF17C390, sub_1DF1961A8);
    sub_1DF22B4E0();

    *(v31 + 8) = v61;
    LOBYTE(v61) = 2;
    sub_1DF1965D4(&qword_1ECE0CE08, type metadata accessor for LedgerState);
    v33 = v52;
    sub_1DF22B480();
    sub_1DF1936EC(v33, v31 + v49, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v61) = 3;
    v35 = v50;
    v36 = v55;
    sub_1DF22B480();
    sub_1DF1936EC(v35, v31 + v48, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v61) = 4;
    v37 = sub_1DF22B430();
    v38 = v57;
    *v57 = v37;
    v38[1] = v39;
    LOBYTE(v61) = 5;
    sub_1DF1965D4(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
    v40 = v47;
    sub_1DF22B480();
    sub_1DF1936EC(v40, v31 + v45, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    LOBYTE(v61) = 6;
    v41 = v46;
    v42 = v56;
    sub_1DF22B480();
    (*(v32 + 8))(v36, v42);
    sub_1DF1936EC(v41, v31 + v43, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    sub_1DF196FD0(v31, v44, type metadata accessor for CustomEventAnalytics);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  return sub_1DF197038(v31, type metadata accessor for CustomEventAnalytics);
}

uint64_t sub_1DF194694(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1DF1946E8(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*sub_1DF194798(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t (*sub_1DF194820(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1DF194844@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  a2[1] = sub_1DF18FD18(v4);
  v5 = a1[6];
  v6 = type metadata accessor for LedgerState();
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + a1[7], 1, 1, v6);
  v8 = a1[9];
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_1DF22A800();
  v13 = *(*(v10 - 8) + 56);
  (v13)((v10 - 8), a2 + v8, 1, 1, v10);
  v11 = a2 + a1[10];

  return v13(v11, 1, 1, v10);
}

char *getCustomStateMachine<A>(states:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v126 = a3;
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v133 = &v112 - v10;
  v141 = *(a2 - 1);
  v11 = *(v141 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v136 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v112 - v14;
  v15 = sub_1DF22B1A0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v128 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v112 - v19;
  v20 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v118 = AssociatedConformanceWitness[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  v22 = *(v122 + 64);
  v23 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v134 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v112 - v25;
  v26 = swift_checkMetadataState();
  v139 = *(v26 - 8);
  v27 = *(v139 + 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v112 - v28;
  v148 = 0x72476D6F74737543;
  v149 = 0xEB00000000687061;
  v146 = a2;
  swift_getMetatypeMetadata();
  v30 = sub_1DF22ACE0();
  MEMORY[0x1E12CF820](v30);

  v31 = v148;
  v32 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D350, &qword_1DF2300E8);
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E7CC0];
  v33[4] = sub_1DF18FE5C(MEMORY[0x1E69E7CC0]);
  v33[2] = v31;
  v33[3] = v32;
  v35 = AssociatedTypeWitness;
  v36 = sub_1DF18FE5C(v34);
  swift_beginAccess();
  v37 = v33[4];
  v137 = v33 + 4;
  v33[4] = v36;

  sub_1DF22B320();
  v143 = a2;
  v144 = v126;
  v114 = v33;
  v145 = v33;
  sub_1DF1929E8(sub_1DF1961FC, v142, v26, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], AssociatedConformanceWitness, MEMORY[0x1E69E7410], v38);

  (*(v139 + 1))(v29, v26);
  v117 = v20;
  sub_1DF22B320();
  v115 = v29;
  sub_1DF22ADE0();
  v116 = v26;
  v39 = swift_getAssociatedConformanceWitness();
  v40 = v119;
  sub_1DF22B1B0();
  v41 = v40;
  v42 = v141;
  v44 = v141 + 48;
  v43 = *(v141 + 48);
  if ((v43)(v41, 1, a2) != 1)
  {
    v46 = *(v42 + 32);
    v45 = v42 + 32;
    v138 = (v45 - 24);
    v139 = v46;
    v122 += 8;
    v47 = v135;
    v48 = v128;
    v49 = v134;
    v141 = v45;
    v132 = v35;
    v131 = v39;
    v130 = v44;
    AssociatedConformanceWitness = v43;
    v129 = a2;
    v46(v135, v41, a2);
    while (1)
    {
      sub_1DF22B320();
      sub_1DF22ADE0();
      v54 = v49;
      sub_1DF22B1B0();
      v55 = (v43)(v48, 1, a2);
      v56 = v126;
      v57 = v136;
      if (v55 != 1)
      {
        break;
      }

LABEL_4:
      v49 = v54;
      v50 = *v122;
      (*v122)(v54, v35);
      (*v138)(v47, a2);
      v51 = v119;
      sub_1DF22B1B0();
      v52 = v51;
      v53 = v51;
      v43 = AssociatedConformanceWitness;
      if ((AssociatedConformanceWitness)(v53, 1, a2) == 1)
      {
        v50(v121, v35);
        goto LABEL_32;
      }

      v139(v47, v52, a2);
    }

    while (1)
    {
      v139(v57, v48, a2);
      v59 = *(v56 + 16);
      if ((sub_1DF22B630() & 1) == 0)
      {
        break;
      }

      (*v138)(v57, a2);
LABEL_9:
      v58 = AssociatedConformanceWitness;
LABEL_10:
      sub_1DF22B1B0();
      if (v58(v48, 1, a2) == 1)
      {
        goto LABEL_4;
      }
    }

    sub_1DF22AE10();
    v146 = v148;
    v147 = v149;
    v60 = sub_1DF22ADC0();
    v62 = v61;
    sub_1DF22AE10();
    v146 = v148;
    v147 = v149;
    v63 = sub_1DF22ADC0();
    v65 = v64;
    v66 = *v137;
    if (!*(*v137 + 16))
    {

LABEL_20:
      v58 = AssociatedConformanceWitness;
      v91 = v136;
      a2 = v129;
      (*v138)(v136, v129);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
      v93 = v133;
      (*(*(v92 - 8) + 56))(v133, 1, 1, v92);
      v94 = v93;
      v57 = v91;
      sub_1DF1964C0(v94);
      v35 = v132;
      v54 = v134;
      v47 = v135;
      goto LABEL_10;
    }

    v67 = v63;
    v68 = *v137;

    v69 = sub_1DF175254(v60, v62);
    if ((v70 & 1) == 0)
    {

      v48 = v128;
      goto LABEL_20;
    }

    v71 = v69;
    v127 = v62;
    v125 = v60;
    v72 = *(v66 + 56);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
    v74 = *(v73 - 8);
    v75 = *(v74 + 72);
    v76 = v133;
    v77 = v73;
    sub_1DF17A6A8(v72 + v75 * v71, v133, &qword_1ECE0CD60, &qword_1DF22FFC0);

    v78 = *(v74 + 56);
    v78(v76, 0, 1, v77);
    sub_1DF1964C0(v76);
    v79 = *v137;
    if (*(*v137 + 16))
    {
      v80 = *v137;

      v123 = v67;
      v81 = sub_1DF175254(v67, v65);
      a2 = v129;
      v82 = v127;
      if (v83)
      {
        v84 = *(v79 + 56) + v81 * v75;
        v85 = v124;
        sub_1DF17A6A8(v84, v124, &qword_1ECE0CD60, &qword_1DF22FFC0);

        v78(v85, 0, 1, v77);
        sub_1DF1964C0(v85);
        v86 = sub_1DF1623A4();
        v87 = v125;
        v88 = sub_1DF193214(&v146, v125, v82);
        v90 = v89;
        if (!(*(v74 + 48))(v89, 1, v77))
        {
          v113 = v86;
          v98 = *(v77 + 52);
          v99 = *(v90 + v98);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v90 + v98) = v99;
          v47 = v135;
          v101 = v88;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v99 = sub_1DF174730(0, *(v99 + 2) + 1, 1, v99);
            *(v90 + v98) = v99;
          }

          v103 = *(v99 + 2);
          v102 = *(v99 + 3);
          v104 = v103 + 1;
          if (v103 >= v102 >> 1)
          {
            v112 = v103 + 1;
            v106 = sub_1DF174730((v102 > 1), v103 + 1, 1, v99);
            v104 = v112;
            v99 = v106;
            *(v90 + v98) = v106;
          }

          v48 = v128;
          *(v99 + 2) = v104;
          v105 = &v99[32 * v103];
          *(v105 + 4) = v87;
          *(v105 + 5) = v82;
          *(v105 + 6) = v123;
          *(v105 + 7) = v65;
          v101(&v146, 0);

          (v113)(&v148, 0);
          v57 = v136;
          (*v138)(v136, a2);
          v56 = v126;
          goto LABEL_25;
        }

        (v88)(&v146, 0);

        (v86)(&v148, 0);
        v57 = v136;
        (*v138)(v136, a2);
        v56 = v126;
        v47 = v135;
LABEL_24:
        v48 = v128;
LABEL_25:
        v35 = v132;
        v54 = v134;
        goto LABEL_9;
      }

      v47 = v135;
    }

    else
    {

      v47 = v135;
      a2 = v129;
    }

    v95 = v136;
    (*v138)(v136, a2);
    v96 = v124;
    v78(v124, 1, 1, v77);
    v97 = v96;
    v57 = v95;
    sub_1DF1964C0(v97);
    v56 = v126;
    goto LABEL_24;
  }

  (*(v122 + 8))(v121, v35);
LABEL_32:
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D358, &unk_1DF2300F0);
  v108 = *(v107 + 48);
  v109 = *(v107 + 52);
  swift_allocObject();
  v110 = sub_1DF1969F4(v114, type metadata accessor for CustomEventAnalytics, type metadata accessor for CustomEventAnalytics);

  return v110;
}

uint64_t sub_1DF195804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for LedgerState();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a4 + 16);
  sub_1DF22AE10();
  v21[4] = v21[1];
  v21[5] = v21[2];
  v15 = sub_1DF22ADC0();
  v17 = v16;
  v18 = v13 + *(v10 + 28);
  sub_1DF22A740();
  *v13 = v15;
  v13[1] = v17;
  sub_1DF196FD0(v13, v8, type metadata accessor for LedgerState);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  *&v8[*(v19 + 52)] = MEMORY[0x1E69E7CC0];
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  swift_beginAccess();

  sub_1DF167430(v8, v15, v17);
  swift_endAccess();
  return sub_1DF197038(v13, type metadata accessor for LedgerState);
}

void (*sub_1DF195A04(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1DF195FCC(v8);
  v8[9] = sub_1DF195B10(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DF195AB0;
}

void sub_1DF195AB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DF195B10(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_1DF175254(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_1DF196EF8(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1DF195DE4;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1DF17605C();
      goto LABEL_16;
    }

    sub_1DF1A5DF0(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_1DF175254(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1DF22B660();
  __break(1u);
  return result;
}

void sub_1DF195DE4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1DF17A6A8(v5, v6, &qword_1ECE0CD70, &qword_1DF2300E0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1DF196EF8(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1DF196EF8(v13, v14);
        sub_1DF1A85A4(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1DF17A6A8(v5, v17, &qword_1ECE0CD70, &qword_1DF2300E0);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1DF196EF8(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1DF196EF8(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1DF1964C0(v9);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1DF196EA4(*(v20 + 48) + 16 * v19);
    sub_1DF1759CC(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1DF1964C0(v23);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1DF195FCC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DF195FF4;
}

unint64_t sub_1DF196000()
{
  result = qword_1ECE0D300;
  if (!qword_1ECE0D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D300);
  }

  return result;
}

unint64_t sub_1DF196054()
{
  result = qword_1ECE0D328;
  if (!qword_1ECE0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D328);
  }

  return result;
}

uint64_t sub_1DF1960A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D308, &unk_1DF239C50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF196118(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D318, &qword_1DF2300D0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF1961A8()
{
  result = qword_1ECE0D348;
  if (!qword_1ECE0D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D348);
  }

  return result;
}

uint64_t sub_1DF196220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436574617473 && a2 == 0xED000070614D746ELL;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23D960 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61567473726966 && a2 == 0xEF65746174536469 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23D980 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x745374656B637562 && a2 == 0xEB00000000747261 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E4574656B637562 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DF1964C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF196528(void *a1)
{
  a1[1] = sub_1DF1965D4(&qword_1ECE0D360, type metadata accessor for CustomEventAnalytics);
  a1[2] = sub_1DF1965D4(&qword_1ECE0D368, type metadata accessor for CustomEventAnalytics);
  result = sub_1DF1965D4(&qword_1ECE0D370, type metadata accessor for CustomEventAnalytics);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF1965D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF196644()
{
  sub_1DF196748();
  if (v0 <= 0x3F)
  {
    sub_1DF1967A8();
    if (v1 <= 0x3F)
    {
      sub_1DF19685C(319, &qword_1ECE0D398, type metadata accessor for LedgerState);
      if (v2 <= 0x3F)
      {
        sub_1DF19680C();
        if (v3 <= 0x3F)
        {
          sub_1DF19685C(319, &unk_1ED8E7330, MEMORY[0x1E6969530]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DF196748()
{
  if (!qword_1ECE0D388)
  {
    v0 = sub_1DF22ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE0D388);
    }
  }
}

void sub_1DF1967A8()
{
  if (!qword_1ECE0D390)
  {
    sub_1DF17C438();
    v0 = sub_1DF22ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE0D390);
    }
  }
}

void sub_1DF19680C()
{
  if (!qword_1ED8E6C08)
  {
    v0 = sub_1DF22B1A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E6C08);
    }
  }
}

void sub_1DF19685C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF22B1A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF1968C4()
{
  result = qword_1ECE0D3A0;
  if (!qword_1ECE0D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3A0);
  }

  return result;
}

unint64_t sub_1DF19691C()
{
  result = qword_1ECE0D3A8;
  if (!qword_1ECE0D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3A8);
  }

  return result;
}

unint64_t sub_1DF196974()
{
  result = qword_1ECE0D3B0;
  if (!qword_1ECE0D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3B0);
  }

  return result;
}

char *sub_1DF1969F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v24 = a3;
  v5 = a2(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  v14 = qword_1ECE0F348;
  v15 = type metadata accessor for LedgerState();
  v16 = *(*(v15 - 8) + 56);
  v16(&v3[v14], 1, 1, v15);
  *(v3 + 2) = a1;
  v16(v13, 1, 1, v15);
  v17 = qword_1ECE0F348;
  swift_beginAccess();

  sub_1DF1936EC(v13, &v3[v17], &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *v9 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v9[1] = sub_1DF18FD18(v18);
  v16(v9 + v6[8], 1, 1, v15);
  v16(v9 + v6[9], 1, 1, v15);
  v19 = (v9 + v6[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = v6[11];
  v21 = sub_1DF22A800();
  v22 = *(*(v21 - 8) + 56);
  v22(v9 + v20, 1, 1, v21);
  v22(v9 + v6[12], 1, 1, v21);
  sub_1DF196F68(v9, &v3[*(*v3 + 112)], v24);
  return v3;
}

char *sub_1DF196C80(uint64_t a1)
{
  v3 = type metadata accessor for MLHostAnalytics();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = qword_1ECE0F348;
  v13 = type metadata accessor for LedgerState();
  v14 = *(*(v13 - 8) + 56);
  v14(&v1[v12], 1, 1, v13);
  *(v1 + 2) = a1;
  v14(v11, 1, 1, v13);
  v15 = qword_1ECE0F348;
  swift_beginAccess();

  sub_1DF1936EC(v11, &v1[v15], &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v16 = MEMORY[0x1E69E7CC0];
  *v7 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v7[1] = sub_1DF18FD18(v16);
  v14(v7 + *(v4 + 32), 1, 1, v13);
  v14(v7 + *(v4 + 36), 1, 1, v13);
  sub_1DF196F68(v7, &v1[*(*v1 + 112)], type metadata accessor for MLHostAnalytics);
  return v1;
}

uint64_t sub_1DF196EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF196F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF196FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF197038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DediscoAnalytics.stateCountMap.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DediscoAnalytics.transitionStatsMap.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for DediscoAnalytics()
{
  result = qword_1ECE0C508;
  if (!qword_1ECE0C508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DediscoAnalytics.taskName.getter()
{
  v1 = (v0 + *(type metadata accessor for DediscoAnalytics() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DediscoAnalytics.taskName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DediscoAnalytics() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DediscoAnalytics.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  a1[1] = sub_1DF18FD18(v2);
  v3 = type metadata accessor for DediscoAnalytics();
  v4 = v3[6];
  v5 = type metadata accessor for LedgerState();
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v3[7], 1, 1, v5);
  v7 = (a1 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v3[9];
  v9 = sub_1DF22A800();
  v12 = *(*(v9 - 8) + 56);
  (v12)((v9 - 8), a1 + v8, 1, 1, v9);
  v10 = a1 + v3[10];

  return v12(v10, 1, 1, v9);
}

uint64_t sub_1DF197714(uint64_t a1)
{
  v2 = sub_1DF198FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF197750(uint64_t a1)
{
  v2 = sub_1DF198FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DediscoAnalytics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D3B8, &qword_1DF230300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF198FF0();
  sub_1DF22B740();
  v22 = *v3;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
  sub_1DF1960A8(&qword_1ECE0D310);
  sub_1DF22B5C0();
  if (!v2)
  {
    v22 = v3[1];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    sub_1DF196118(&qword_1ECE0D320, sub_1DF17C3E4, sub_1DF196054);
    sub_1DF22B5C0();
    v11 = type metadata accessor for DediscoAnalytics();
    v12 = v11[6];
    LOBYTE(v22) = 2;
    type metadata accessor for LedgerState();
    sub_1DF1990F0(&qword_1ECE0CE10, type metadata accessor for LedgerState);
    sub_1DF22B560();
    v13 = v11[7];
    LOBYTE(v22) = 3;
    sub_1DF22B560();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v22) = 4;
    sub_1DF22B510();
    v17 = v11[9];
    LOBYTE(v22) = 5;
    sub_1DF22A800();
    sub_1DF1990F0(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B560();
    v18 = v11[10];
    LOBYTE(v22) = 6;
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DediscoAnalytics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D3C8, &qword_1DF230308);
  v54 = *(v56 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v43 - v13;
  v15 = type metadata accessor for DediscoAnalytics();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1E69E7CC0];
  v53 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  *v19 = v53;
  v51 = sub_1DF18FD18(v20);
  v19[1] = v51;
  v21 = v16[8];
  v22 = type metadata accessor for LedgerState();
  v23 = *(*(v22 - 8) + 56);
  v49 = v21;
  v23(v19 + v21, 1, 1, v22);
  v48 = v16[9];
  v23(v19 + v48, 1, 1, v22);
  v24 = (v19 + v16[10]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v16[11];
  v26 = sub_1DF22A800();
  v27 = *(*(v26 - 8) + 56);
  v45 = v25;
  v27(v19 + v25, 1, 1, v26);
  v28 = v16[12];
  v58 = v19;
  v27(v19 + v28, 1, 1, v26);
  v29 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_1DF198FF0();
  v55 = v14;
  v30 = v57;
  sub_1DF22B730();
  if (v30)
  {
    v31 = v58;
  }

  else
  {
    v57 = v24;
    v43 = v28;
    v32 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D308, &unk_1DF239C50);
    v60 = 0;
    sub_1DF1960A8(&qword_1ECE0D338);
    sub_1DF22B4E0();

    v31 = v58;
    *v58 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D318, &qword_1DF2300D0);
    v60 = 1;
    sub_1DF196118(&qword_1ECE0D340, sub_1DF17C390, sub_1DF1961A8);
    sub_1DF22B4E0();

    *(v31 + 8) = v61;
    LOBYTE(v61) = 2;
    sub_1DF1990F0(&qword_1ECE0CE08, type metadata accessor for LedgerState);
    v33 = v52;
    sub_1DF22B480();
    sub_1DF1936EC(v33, v31 + v49, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v61) = 3;
    v35 = v50;
    v36 = v55;
    sub_1DF22B480();
    sub_1DF1936EC(v35, v31 + v48, &qword_1ECE0CCF8, &qword_1DF22FF80);
    LOBYTE(v61) = 4;
    v37 = sub_1DF22B430();
    v38 = v57;
    *v57 = v37;
    v38[1] = v39;
    LOBYTE(v61) = 5;
    sub_1DF1990F0(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
    v40 = v47;
    sub_1DF22B480();
    sub_1DF1936EC(v40, v31 + v45, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    LOBYTE(v61) = 6;
    v41 = v46;
    v42 = v56;
    sub_1DF22B480();
    (*(v32 + 8))(v36, v42);
    sub_1DF1936EC(v41, v31 + v43, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    sub_1DF1992DC(v31, v44, type metadata accessor for DediscoAnalytics);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  return sub_1DF199344(v31, type metadata accessor for DediscoAnalytics);
}

uint64_t sub_1DF1982D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v117 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v116 = &v107 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v115 = *(v121 - 8);
  v5 = *(v115 + 8);
  v6 = MEMORY[0x1EEE9AC00](v121);
  v124 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v114 = (&v107 - v8);
  v9 = type metadata accessor for LedgerState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v120 = (&v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v119 = (&v107 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v107 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v107 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D350, &qword_1DF2300E8);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 32) = sub_1DF18FE5C(MEMORY[0x1E69E7CC0]);
  strcpy((v21 + 16), "DediscoGraph");
  *(v21 + 29) = 0;
  *(v21 + 30) = -5120;
  v112 = v21;
  v23 = sub_1DF18FE5C(v22);
  swift_beginAccess();
  v125 = (v21 + 32);
  *(v21 + 32) = v23;

  v24 = 0;
  v122 = 0x80000001DF23D9A0;
  v126 = v22;
  do
  {
    v25 = *(&unk_1F5A470C0 + v24 + 32);
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = 0x6843746567647562;
        v27 = 0xEB000000006B6365;
        goto LABEL_16;
      }

      if (v25 != 4)
      {
        if (v25 == 5)
        {
          v27 = 0xE600000000000000;
          v26 = 0x64616F6C7075;
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v26 = 0x4364616F6C796170;
      v27 = 0xEF6E6F6974616572;
    }

    else
    {
      if (!v25)
      {
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
        goto LABEL_16;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          v26 = 0x7A696D6F646E6172;
          v27 = 0xED00006E6F697461;
          goto LABEL_16;
        }

LABEL_13:
        v27 = 0xE700000000000000;
        v26 = 0x746C7561666564;
        goto LABEL_16;
      }

      v26 = 0xD000000000000010;
      v27 = v122;
    }

LABEL_16:
    v128 = v26;
    v129 = v27;

    MEMORY[0x1E12CF820](0x6564656563637553, 0xE900000000000064);

    v28 = v128;
    v29 = v129;
    v30 = v20 + *(v9 + 20);
    sub_1DF22A740();
    *v20 = v28;
    v20[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_1DF17483C(0, v126[2] + 1, 1, v126);
    }

    v32 = v126[2];
    v31 = v126[3];
    if (v32 >= v31 >> 1)
    {
      v126 = sub_1DF17483C(v31 > 1, v32 + 1, 1, v126);
    }

    v33 = v126;
    v126[2] = v32 + 1;
    v123 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v34 = *(v10 + 72);
    sub_1DF199278(v20, v33 + v123 + v34 * v32);
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v35 = 0x6843746567647562;
        v36 = 0xEB000000006B6365;
        goto LABEL_34;
      }

      if (v25 != 4)
      {
        if (v25 == 5)
        {
          v36 = 0xE600000000000000;
          v35 = 0x64616F6C7075;
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      v35 = 0x4364616F6C796170;
      v36 = 0xEF6E6F6974616572;
    }

    else
    {
      if (!v25)
      {
        v36 = 0xE700000000000000;
        v35 = 0x6E776F6E6B6E75;
        goto LABEL_34;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          v35 = 0x7A696D6F646E6172;
          v36 = 0xED00006E6F697461;
          goto LABEL_34;
        }

LABEL_31:
        v36 = 0xE700000000000000;
        v35 = 0x746C7561666564;
        goto LABEL_34;
      }

      v35 = 0xD000000000000010;
      v36 = v122;
    }

LABEL_34:
    v37 = v123;
    v128 = v35;
    v129 = v36;

    MEMORY[0x1E12CF820](0x64656C696146, 0xE600000000000000);

    v38 = v128;
    v39 = v129;
    v40 = v18 + *(v9 + 20);
    sub_1DF22A740();
    *v18 = v38;
    v18[1] = v39;
    v42 = v126[2];
    v41 = v126[3];
    if (v42 >= v41 >> 1)
    {
      v126 = sub_1DF17483C(v41 > 1, v42 + 1, 1, v126);
    }

    v43 = v126;
    v126[2] = v42 + 1;
    v44 = v43 + v37;
    sub_1DF199278(v18, v43 + v37 + v42 * v34);
    v24 += 4;
  }

  while (v24 != 24);
  v113 = v44;
  v118 = v126[2];
  if (!v118)
  {
LABEL_80:

    return v112;
  }

  v45 = 0;
  v46 = v126 + v37;
  while (2)
  {
    if (v45 < v126[2])
    {
      v49 = v119;
      sub_1DF1992DC(v46, v119, type metadata accessor for LedgerState);
      v50 = *v49;
      v51 = v49[1];
      v52 = v49;
      v53 = v114;
      sub_1DF1992DC(v52, v114, type metadata accessor for LedgerState);
      *(v53 + *(v121 + 52)) = MEMORY[0x1E69E7CC0];
      v54 = v125;
      swift_beginAccess();
      sub_1DF196EF8(v53, v124);
      v55 = *v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *v54;
      v127[0] = v57;
      v59 = sub_1DF175254(v50, v51);
      v60 = v57[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_82;
      }

      v63 = v58;
      if (v57[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v66 = v127[0];
          if ((v58 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_1DF17605C();
          v66 = v127[0];
          if ((v63 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_1DF1A5DF0(v62, isUniquelyReferenced_nonNull_native);
        v64 = sub_1DF175254(v50, v51);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_85;
        }

        v59 = v64;
        v66 = v127[0];
        if ((v63 & 1) == 0)
        {
LABEL_49:
          v66[(v59 >> 6) + 8] |= 1 << v59;
          v67 = (v66[6] + 16 * v59);
          *v67 = v50;
          v67[1] = v51;
          v68 = v66[7];
          v122 = *(v115 + 9);
          sub_1DF196EF8(v124, v68 + v122 * v59);
          v69 = v66[2];
          v70 = __OFADD__(v69, 1);
          v71 = v69 + 1;
          if (v70)
          {
            goto LABEL_84;
          }

          v66[2] = v71;

LABEL_40:
          ++v45;
          *v125 = v66;
          swift_endAccess();
          sub_1DF199344(v119, type metadata accessor for LedgerState);
          v46 += v34;
          v48 = v116;
          if (v118 == v45)
          {
            v72 = 0;
            v124 = (v115 + 56);
            v119 = v126[2];
            v111 = (v115 + 48);
            v114 = (v126 + v123 + 8);
            v73 = v121;
            while (1)
            {
              if (v72 >= v126[2])
              {
                goto LABEL_83;
              }

              v123 = v72;
              sub_1DF1992DC(&v113[v72 * v34], v120, type metadata accessor for LedgerState);
              if (v119)
              {
                break;
              }

LABEL_54:
              v72 = v123 + 1;
              sub_1DF199344(v120, type metadata accessor for LedgerState);
              if (v72 == v118)
              {
                goto LABEL_80;
              }
            }

            v74 = v119;
            v75 = *v120;
            v76 = v120[1];
            v77 = v114;
            while (2)
            {
              v79 = *(v77 - 1);
              v80 = *v77;
              v81 = v75 == v79 && v76 == v80;
              if (v81 || (v82 = *(v77 - 1), v83 = *v77, (sub_1DF22B620() & 1) != 0))
              {
LABEL_61:
                v77 = (v77 + v34);
                if (!--v74)
                {
                  goto LABEL_54;
                }

                continue;
              }

              break;
            }

            v84 = *v125;
            if ((*v125)[2])
            {

              v85 = sub_1DF175254(v75, v76);
              if (v86)
              {
                sub_1DF17A6A8(v84[7] + v122 * v85, v48, &qword_1ECE0CD60, &qword_1DF22FFC0);

                v87 = v73;
                v88 = *v124;
                (*v124)(v48, 0, 1, v87);
                sub_1DF1964C0(v48);
                if (v84[2])
                {

                  v89 = sub_1DF175254(v79, v80);
                  if (v90)
                  {
                    v91 = v117;
                    sub_1DF17A6A8(v84[7] + v89 * v122, v117, &qword_1ECE0CD60, &qword_1DF22FFC0);

                    v92 = v121;
                    v88(v91, 0, 1, v121);
                    v73 = v92;
                    sub_1DF1964C0(v91);
                    v115 = sub_1DF1623A4();
                    v93 = sub_1DF193214(v127, v75, v76);
                    v95 = v94;
                    if ((*v111)(v94, 1, v73))
                    {

                      (v93)(v127, 0);
                      (v115)(&v128, 0);
                      v48 = v116;
                    }

                    else
                    {
                      v110 = v93;
                      v98 = *(v73 + 52);
                      v99 = *(v95 + v98);

                      v100 = swift_isUniquelyReferenced_nonNull_native();
                      v109 = v98;
                      *(v95 + v98) = v99;
                      v48 = v116;
                      v108 = v95;
                      if ((v100 & 1) == 0)
                      {
                        v99 = sub_1DF174730(0, *(v99 + 2) + 1, 1, v99);
                        *(v95 + v109) = v99;
                      }

                      v102 = *(v99 + 2);
                      v101 = *(v99 + 3);
                      v103 = v102 + 1;
                      if (v102 >= v101 >> 1)
                      {
                        v107 = v102 + 1;
                        v105 = sub_1DF174730((v101 > 1), v102 + 1, 1, v99);
                        v103 = v107;
                        v99 = v105;
                        *(v108 + v109) = v105;
                      }

                      *(v99 + 2) = v103;
                      v104 = &v99[32 * v102];
                      *(v104 + 4) = v75;
                      *(v104 + 5) = v76;
                      *(v104 + 6) = v79;
                      *(v104 + 7) = v80;
                      v110(v127, 0);
                      (v115)(&v128, 0);
                      v73 = v121;
                    }

                    goto LABEL_61;
                  }
                }

                v96 = v117;
                v97 = v121;
                v88(v117, 1, 1, v121);
                v73 = v97;
                v78 = v96;
LABEL_60:
                sub_1DF1964C0(v78);
                goto LABEL_61;
              }
            }

            (*v124)(v48, 1, 1, v73);
            v78 = v48;
            goto LABEL_60;
          }

          continue;
        }
      }

      v47 = v66[7];
      v122 = *(v115 + 9);
      sub_1DF1936EC(v124, v47 + v122 * v59, &qword_1ECE0CD60, &qword_1DF22FFC0);
      goto LABEL_40;
    }

    break;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

unint64_t sub_1DF198FF0()
{
  result = qword_1ECE0D3C0;
  if (!qword_1ECE0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3C0);
  }

  return result;
}

uint64_t sub_1DF199044(void *a1)
{
  a1[1] = sub_1DF1990F0(&qword_1ECE0D3D0, type metadata accessor for DediscoAnalytics);
  a1[2] = sub_1DF1990F0(&qword_1ECE0D3D8, type metadata accessor for DediscoAnalytics);
  result = sub_1DF1990F0(&qword_1ECE0D3E0, type metadata accessor for DediscoAnalytics);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF1990F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF199174()
{
  result = qword_1ECE0D3E8;
  if (!qword_1ECE0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3E8);
  }

  return result;
}

unint64_t sub_1DF1991CC()
{
  result = qword_1ECE0D3F0;
  if (!qword_1ECE0D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3F0);
  }

  return result;
}

unint64_t sub_1DF199224()
{
  result = qword_1ECE0D3F8;
  if (!qword_1ECE0D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D3F8);
  }

  return result;
}

uint64_t sub_1DF199278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LedgerState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF1992DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF199344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLHostAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url;
  v4 = sub_1DF22A6B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLHostAsset.deinit()
{
  v1 = v0;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF22A8C0();
  __swift_project_value_buffer(v2, qword_1ED8E92C0);

  v3 = sub_1DF22A8A0();
  v4 = sub_1DF22B100();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136315138;
    v7 = [*(v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset) description];
    v8 = sub_1DF22ACC0();
    v10 = v9;

    v11 = sub_1DF160728(v8, v10, &v30);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1DF15A000, v3, v4, "MAAutoAsset endLockUsage: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12D0B40](v6, -1, -1);
    MEMORY[0x1E12D0B40](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset;
  v13 = v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_clientName;
  v14 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_clientName);
  v15 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_clientName + 8);
  v16 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset);

  v17 = sub_1DF22ACA0();

  v18 = [v16 endLockUsageSync_];

  if (v18)
  {
    v19 = v18;
    v20 = sub_1DF22A8A0();
    v21 = sub_1DF22B110();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v19;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1DF15A000, v20, v21, "MAAutoAsset endLockUsage error: %@", v22, 0xCu);
      sub_1DF16184C(v23, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v23, -1, -1);
      MEMORY[0x1E12D0B40](v22, -1, -1);
      v19 = v20;
      v20 = v24;
    }
  }

  v26 = OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url;
  v27 = sub_1DF22A6B0();
  (*(*(v27 - 8) + 8))(v1 + v26, v27);

  v28 = *(v13 + 8);

  return v1;
}

uint64_t MLHostAsset.__deallocating_deinit()
{
  MLHostAsset.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DF1997C8(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset) assetSelector];
  v4 = [v3 *a1];

  v5 = sub_1DF22ACC0();
  return v5;
}

void sub_1DF199848()
{
  sub_1DF22A660();

  JUMPOUT(0x1E12CF4A0);
}

void sub_1DF1998C8(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69B1908]) init];
  [v3 setInterestAcrossTermination_];
  [v3 setPreventGarbageCollectionSecs_];

  *a2 = v3;
}

id sub_1DF199960(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1DF1999C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "failedToGetAutoAsset";
  v4 = 0xD00000000000001ELL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (v2 == 1)
  {
    v6 = "failedToGetAutoAsset";
  }

  else
  {
    v6 = "failedToExpressInterestInAsset";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "CategoricalType";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "failedToExpressInterestInAsset";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "CategoricalType";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF199A98()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF199B34()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF199BBC()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF199C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF19B294();
  *a2 = result;
  return result;
}

void sub_1DF199C84(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "failedToGetAutoAsset";
  v4 = 0xD00000000000001ELL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "failedToExpressInterestInAsset";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "CategoricalType";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t static MLHostAsset.isRemoteAssetAvailable(context:assetType:assetSpecifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DF199DB8;

  return sub_1DF19BCE4(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF199DB8(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1DF199EC0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1DF199F90(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1DF19DB18;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF19A310;
  aBlock[3] = &block_descriptor_18;
  v11 = _Block_copy(aBlock);

  [a2 currentStatus_];
  _Block_release(v11);
}

void sub_1DF19A140(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF22A8C0();
    __swift_project_value_buffer(v4, qword_1ED8E92C0);
    v5 = a2;
    v6 = sub_1DF22A8A0();
    v7 = sub_1DF22B110();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1DF15A000, v6, v7, "MAAutoAsset currentStatus failed: %@", v8, 0xCu);
      sub_1DF16184C(v9, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v9, -1, -1);
      MEMORY[0x1E12D0B40](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);
    sub_1DF22AFA0();
  }

  else
  {
    if (a1)
    {
      v12 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8);
    sub_1DF22AFA0();
  }
}

void sub_1DF19A310(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DF19A474;

  return sub_1DF19B2E0(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF19A474(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1DF19A570(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v36 - v9;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF22A8C0();
  __swift_project_value_buffer(v11, qword_1ED8E92C0);
  v12 = a2;
  v13 = sub_1DF22A8A0();
  v14 = sub_1DF22B0F0();

  v15 = os_log_type_enabled(v13, v14);
  v38 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v37 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = [v12 description];
    v36[0] = v10;
    v36[1] = v8;
    v20 = a1;
    v21 = v19;
    v22 = a3;
    v23 = sub_1DF22ACC0();
    v25 = v24;

    v26 = v23;
    a3 = v22;
    v27 = sub_1DF160728(v26, v25, aBlock);

    *(v17 + 4) = v27;
    a1 = v20;
    v10 = v36[0];
    _os_log_impl(&dword_1DF15A000, v13, v14, "MAAutoAsset lockContent: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12D0B40](v18, -1, -1);
    v28 = v17;
    v6 = v37;
    MEMORY[0x1E12D0B40](v28, -1, -1);
  }

  v29 = *(a3 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
  v30 = *(a3 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8);
  v31 = sub_1DF22ACA0();
  if (qword_1ECE0C750 != -1)
  {
    swift_once();
  }

  v32 = qword_1ECE0D408;
  (*(v7 + 16))(v10, a1, v6);
  v33 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v33, v10, v6);
  aBlock[4] = sub_1DF19D8B8;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF19B0FC;
  aBlock[3] = &block_descriptor;
  v35 = _Block_copy(aBlock);

  [v38 lockContent:v31 withUsagePolicy:v32 withTimeout:0 completion:v35];
  _Block_release(v35);
}

void sub_1DF19A8F8(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v68 = a6;
  v10 = sub_1DF22A6B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  if (a5)
  {
    v25 = a5;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF22A8C0();
    __swift_project_value_buffer(v26, qword_1ED8E92C0);
    v27 = a5;
    v28 = sub_1DF22A8A0();
    v29 = sub_1DF22B110();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = a5;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1DF15A000, v28, v29, "MAAutoAsset lockContent failed: %@", v30, 0xCu);
      sub_1DF16184C(v31, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v31, -1, -1);
      MEMORY[0x1E12D0B40](v30, -1, -1);
    }

    (*(v11 + 56))(v24, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
    sub_1DF22AFA0();

    return;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v39 = sub_1DF22A8C0();
    __swift_project_value_buffer(v39, qword_1ED8E92C0);
    v35 = sub_1DF22A8A0();
    v36 = sub_1DF22B110();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_18;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "MAAutoAsset lockContent failed: locked false";
    goto LABEL_17;
  }

  sub_1DF19D848(a3, v22);
  if ((*(v11 + 48))(v22, 1, v10) == 1)
  {
    sub_1DF16184C(v22, &qword_1ECE0D428, &qword_1DF2305C0);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v34 = sub_1DF22A8C0();
    __swift_project_value_buffer(v34, qword_1ED8E92C0);
    v35 = sub_1DF22A8A0();
    v36 = sub_1DF22B110();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_18;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "MAAutoAsset lockContent failed: url nil";
LABEL_17:
    _os_log_impl(&dword_1DF15A000, v35, v36, v38, v37, 2u);
    MEMORY[0x1E12D0B40](v37, -1, -1);
LABEL_18:

    (*(v11 + 56))(v24, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
    sub_1DF22AFA0();
    return;
  }

  (*(v11 + 32))(v17, v22, v10);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v40 = sub_1DF22A8C0();
  v41 = __swift_project_value_buffer(v40, qword_1ED8E92C0);
  v66 = *(v11 + 16);
  v67 = v11 + 16;
  v66(v15, v17, v10);
  v42 = sub_1DF22A8A0();
  v43 = sub_1DF22B0F0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v64 = v41;
    v45 = v44;
    v63 = swift_slowAlloc();
    v69 = v63;
    *v45 = 136315138;
    v46 = v45;
    sub_1DF19D97C();
    v62 = sub_1DF22B600();
    v48 = v47;
    v65 = *(v11 + 8);
    v65(v15, v10);
    v49 = sub_1DF160728(v62, v48, &v69);

    v50 = v46;
    *(v46 + 1) = v49;
    _os_log_impl(&dword_1DF15A000, v42, v43, "MAAutoAsset url: %s", v46, 0xCu);
    v51 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1E12D0B40](v51, -1, -1);
    MEMORY[0x1E12D0B40](v50, -1, -1);
  }

  else
  {

    v65 = *(v11 + 8);
    v65(v15, v10);
  }

  v52 = a4;
  v53 = sub_1DF22A8A0();
  v54 = sub_1DF22B0F0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v69 = v64;
    *v55 = 136315138;
    if (a4)
    {
      v56 = [v52 description];
      v57 = sub_1DF22ACC0();
      v59 = v58;
    }

    else
    {
      v59 = 0xE300000000000000;
      v57 = 4271950;
    }

    v60 = sub_1DF160728(v57, v59, &v69);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_1DF15A000, v53, v54, "MAAutoAsset newerInProgress: %s", v55, 0xCu);
    v61 = v64;
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x1E12D0B40](v61, -1, -1);
    MEMORY[0x1E12D0B40](v55, -1, -1);
  }

  v66(v24, v17, v10);
  (*(v11 + 56))(v24, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8);
  sub_1DF22AFA0();
  v65(v17, v10);
}

uint64_t sub_1DF19B0FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  if (a4)
  {
    sub_1DF22A670();
    v18 = sub_1DF22A6B0();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_1DF22A6B0();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  v20 = a2;
  v21 = a5;
  v22 = a6;
  v17(v20, a3, v15, a5, a6);

  return sub_1DF16184C(v15, &qword_1ECE0D428, &qword_1DF2305C0);
}

uint64_t sub_1DF19B294()
{
  v0 = sub_1DF22B420();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF19B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1DF22A6B0();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF19B428, 0, 0);
}

uint64_t sub_1DF19B428()
{
  v47 = v0;
  v46[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_1DF22A8C0();
  v0[15] = __swift_project_value_buffer(v3, qword_1ED8E92C0);

  v4 = sub_1DF22A8A0();
  v5 = sub_1DF22B0F0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DF160728(v9, v8, v46);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DF160728(v7, v6, v46);
    _os_log_impl(&dword_1DF15A000, v4, v5, "Querying MAAutoAsset for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v11, -1, -1);
    MEMORY[0x1E12D0B40](v10, -1, -1);
  }

  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = objc_allocWithZone(MEMORY[0x1E69B1910]);
  v17 = sub_1DF22ACA0();
  v18 = sub_1DF22ACA0();
  v19 = [v16 initForAssetType:v17 withAssetSpecifier:v18];
  v0[16] = v19;

  v0[2] = 0;
  v20 = objc_allocWithZone(MEMORY[0x1E69B18F8]);
  v21 = v19;
  v22 = sub_1DF22ACA0();
  v23 = [v20 initForClientName:v22 selectingAsset:v21 error:v0 + 2];
  v0[17] = v23;

  v24 = v0[2];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1DF22A8A0();
    v27 = sub_1DF22B110();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v24;
      v30 = v25;
      _os_log_impl(&dword_1DF15A000, v26, v27, "MAAutoAsset failed: %@", v28, 0xCu);
      sub_1DF16184C(v29, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v29, -1, -1);
      MEMORY[0x1E12D0B40](v28, -1, -1);
      v31 = v30;
    }

    else
    {
      v30 = v23;
      v31 = v26;
      v23 = v25;
      v26 = v25;
    }

    v40 = v0[13];
    v39 = v0[14];
    v42 = v0[10];
    v41 = v0[11];

    v43 = v0[1];
    v44 = *MEMORY[0x1E69E9840];

    return v43(0);
  }

  else
  {
    v32 = v0[3];
    v33 = swift_task_alloc();
    v0[18] = v33;
    *(v33 + 16) = v23;
    *(v33 + 24) = v32;
    v34 = *(MEMORY[0x1E69E88D0] + 4);
    v35 = swift_task_alloc();
    v0[19] = v35;
    *v35 = v0;
    v35[1] = sub_1DF19B908;
    v36 = v0[14];
    v37 = v0[12];
    v38 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DDE0](v36, 0, 0, 0xD000000000000031, 0x80000001DF23DA30, sub_1DF19D840, v33, v37);
  }
}

uint64_t sub_1DF19B908()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF19BA4C, 0, 0);
}

uint64_t sub_1DF19BA4C()
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  sub_1DF19D848(v0[14], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    sub_1DF16184C(v0[13], &qword_1ECE0D428, &qword_1DF2305C0);
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[14];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DF15A000, v5, v6, "MAAutoAsset lockContent failed: url nil", v11, 2u);
      MEMORY[0x1E12D0B40](v11, -1, -1);
    }

    else
    {
    }

    sub_1DF16184C(v10, &qword_1ECE0D428, &qword_1DF2305C0);
    v27 = 0;
  }

  else
  {
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[3];
    sub_1DF16184C(v0[14], &qword_1ECE0D428, &qword_1DF2305C0);

    v20 = *(v18 + 32);
    v20(v15, v14, v17);
    v20(v16, v15, v17);
    v21 = v19 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName;
    v23 = *(v19 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
    v22 = *(v21 + 8);
    v24 = type metadata accessor for MLHostAsset();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v20(v27 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url, v16, v17);
    *(v27 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_autoAsset) = v12;
    v28 = (v27 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_clientName);
    *v28 = v23;
    v28[1] = v22;
  }

  v30 = v0[13];
  v29 = v0[14];
  v32 = v0[10];
  v31 = v0[11];

  v33 = v0[1];
  v34 = *MEMORY[0x1E69E9840];

  return v33(v27);
}

uint64_t sub_1DF19BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v5[28] = a4;
  v5[29] = a5;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_1DF22A6B0();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF19BDD8, 0, 0);
}

uint64_t sub_1DF19BDD8()
{
  v53 = v0;
  v52[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[27];
  v3 = sub_1DF22A8C0();
  v0[33] = __swift_project_value_buffer(v3, qword_1ED8E92C0);

  v4 = sub_1DF22A8A0();
  v5 = sub_1DF22B0F0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DF160728(v9, v8, v52);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DF160728(v7, v6, v52);
    _os_log_impl(&dword_1DF15A000, v4, v5, "Querying MAAutoAsset for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v11, -1, -1);
    MEMORY[0x1E12D0B40](v10, -1, -1);
  }

  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v17 = objc_allocWithZone(MEMORY[0x1E69B1910]);
  v18 = sub_1DF22ACA0();
  v19 = sub_1DF22ACA0();
  v20 = [v17 initForAssetType:v18 withAssetSpecifier:v19];
  v0[34] = v20;

  v21 = *(v16 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
  v22 = *(v16 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8);
  v0[18] = 0;
  v23 = objc_allocWithZone(MEMORY[0x1E69B18F8]);
  v24 = v20;
  v25 = sub_1DF22ACA0();
  v26 = [v23 initForClientName:v25 selectingAsset:v24 error:v0 + 18];
  v0[35] = v26;

  v27 = v0[18];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1DF22A8A0();
    v30 = sub_1DF22B110();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v27;
      v33 = v28;
      _os_log_impl(&dword_1DF15A000, v29, v30, "MAAutoAsset failed: %@", v31, 0xCu);
      sub_1DF16184C(v32, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v32, -1, -1);
      MEMORY[0x1E12D0B40](v31, -1, -1);
    }

    sub_1DF19DA38();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    v35 = v0[32];

    v36 = v0[1];
    v37 = *MEMORY[0x1E69E9840];

    return v36(0);
  }

  else
  {
    v39 = v0 + 19;
    v40 = v0[29];

    v41 = sub_1DF22A8A0();
    v42 = sub_1DF22B0F0();

    if (os_log_type_enabled(v41, v42))
    {
      v51 = v0[29];
      v43 = v0[28];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52[0] = v45;
      *v44 = 136315138;
      v46 = v43;
      v39 = v0 + 19;
      *(v44 + 4) = sub_1DF160728(v46, v51, v52);
      _os_log_impl(&dword_1DF15A000, v41, v42, "MAAutoAsset expressing interest for assetSpecifier: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12D0B40](v45, -1, -1);
      MEMORY[0x1E12D0B40](v44, -1, -1);
    }

    v47 = sub_1DF22ACA0();
    v0[36] = v47;
    if (qword_1ECE0C748 != -1)
    {
      swift_once();
    }

    v48 = qword_1ECE0D400;
    v0[2] = v0;
    v0[7] = v39;
    v0[3] = sub_1DF19C3F0;
    v49 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D440, &qword_1DF2305D0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DF199EC0;
    v0[13] = &block_descriptor_9;
    v0[14] = v49;
    [v26 interestInContent:v47 withInterestPolicy:v48 completion:v0 + 10];
    v50 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1DF19C3F0()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_1DF19D48C;
  }

  else
  {
    v3 = sub_1DF19C52C;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF19C52C()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 312) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D460, &qword_1DF2305E0);
  *v5 = v0;
  v5[1] = sub_1DF19C66C;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DDE0](v0 + 176, 0, 0, 0xD000000000000039, 0x80000001DF23DAF0, sub_1DF19DA8C, v3, v6);
}

uint64_t sub_1DF19C66C()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF19C7B0, 0, 0);
}

uint64_t sub_1DF19C7B0()
{
  v79 = v0;
  v78[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 176);
  *(v0 + 320) = v1;
  v2 = *(v0 + 264);
  if (!v1)
  {
    v16 = sub_1DF22A8A0();
    v17 = sub_1DF22B110();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DF15A000, v16, v17, "MAAutoAsset failed at calling currentStatus.", v18, 2u);
      MEMORY[0x1E12D0B40](v18, -1, -1);
    }

    v20 = *(v0 + 272);
    v19 = *(v0 + 280);

    sub_1DF19DA38();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();

    v22 = *(v0 + 256);

    v23 = *(v0 + 8);
    v24 = *MEMORY[0x1E69E9840];
    v25 = 0;
    goto LABEL_35;
  }

  v3 = v1;
  v4 = sub_1DF22A8A0();
  v5 = sub_1DF22B0F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v1;
    v8 = v3;
    _os_log_impl(&dword_1DF15A000, v4, v5, "MAAutoAsset status: %@", v6, 0xCu);
    sub_1DF16184C(v7, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v7, -1, -1);
    MEMORY[0x1E12D0B40](v6, -1, -1);
  }

  v9 = [v3 availableForUseError];
  if (v9)
  {
    *(v0 + 184) = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    sub_1DF19D9EC();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 192);
      v12 = [v11 domain];
      v13 = sub_1DF22ACC0();
      v15 = v14;

      if (v13 == 0xD000000000000024 && 0x80000001DF23DB30 == v15)
      {
      }

      else
      {
        v34 = sub_1DF22B620();

        if ((v34 & 1) == 0)
        {

LABEL_24:
          goto LABEL_25;
        }
      }

      if (([v11 code]| 4) == 0x183D)
      {
        v35 = *(v0 + 264);
        v36 = sub_1DF22A8A0();
        v37 = sub_1DF22B0F0();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1DF15A000, v36, v37, "Found an error that we can proceed through, continuing...", v38, 2u);
          MEMORY[0x1E12D0B40](v38, -1, -1);
        }

        v39 = *(v0 + 280);

        goto LABEL_34;
      }

      v40 = *(v0 + 264);
      v11 = v11;
      v41 = sub_1DF22A8A0();
      v42 = sub_1DF22B110();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v11;
        *v44 = v11;
        v45 = v3;
        v46 = v11;
        _os_log_impl(&dword_1DF15A000, v41, v42, "Found a real error, continuing: %@", v43, 0xCu);
        sub_1DF16184C(v44, &qword_1ECE0C7E8, &qword_1DF230550);
        MEMORY[0x1E12D0B40](v44, -1, -1);
        MEMORY[0x1E12D0B40](v43, -1, -1);
        v11 = v41;
        v41 = v46;
        v3 = v45;
      }

      goto LABEL_24;
    }

    v26 = *(v0 + 264);

    v27 = v10;
    v28 = sub_1DF22A8A0();
    v29 = sub_1DF22B110();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v27;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1DF15A000, v28, v29, "Found an error which couldn't be cast to NSError: %@", v30, 0xCu);
      sub_1DF16184C(v31, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v31, -1, -1);
      MEMORY[0x1E12D0B40](v30, -1, -1);
    }

    else
    {
    }
  }

LABEL_25:
  v47 = [v3 availableForUseAttributes];
  v48 = *(v0 + 264);
  if (v47)
  {
    v49 = v47;
    sub_1DF22ABA0();

    v50 = sub_1DF22A8A0();
    v51 = sub_1DF22B0F0();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 272);
    v54 = *(v0 + 280);
    if (v52)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v78[0] = v56;
      *v55 = 136315138;
      v57 = sub_1DF22ABB0();
      v77 = v3;
      v59 = v58;

      v60 = sub_1DF160728(v57, v59, v78);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1DF15A000, v50, v51, "MAAutoAsset available: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1E12D0B40](v56, -1, -1);
      MEMORY[0x1E12D0B40](v55, -1, -1);
    }

    else
    {
    }

LABEL_34:
    v75 = *(v0 + 256);

    v23 = *(v0 + 8);
    v76 = *MEMORY[0x1E69E9840];
    v25 = 1;
LABEL_35:

    return v23(v25);
  }

  v61 = v3;
  v62 = sub_1DF22A8A0();
  v63 = sub_1DF22B0F0();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v1;
    v66 = v61;
    _os_log_impl(&dword_1DF15A000, v62, v63, "MAAutoAsset not available on the device: %@", v64, 0xCu);
    sub_1DF16184C(v65, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v65, -1, -1);
    MEMORY[0x1E12D0B40](v64, -1, -1);
  }

  v67 = swift_task_alloc();
  *(v0 + 328) = v67;
  *v67 = v0;
  v67[1] = sub_1DF19D07C;
  v68 = *(v0 + 224);
  v69 = *(v0 + 232);
  v70 = *(v0 + 208);
  v71 = *(v0 + 216);
  v72 = *(v0 + 200);
  v73 = *MEMORY[0x1E69E9840];

  return sub_1DF19B2E0(v72, v70, v71, v68, v69);
}

uint64_t sub_1DF19D07C(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 328);
  v6 = *v1;
  *(*v1 + 336) = a1;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF19D1A8, 0, 0);
}

uint64_t sub_1DF19D1A8()
{
  v34 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 336);
  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = *(v0 + 336);

    v4 = sub_1DF22A8A0();
    v5 = sub_1DF22B0F0();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 320);
    v8 = *(v0 + 280);
    if (v6)
    {
      log = v4;
      v30 = *(v0 + 272);
      v32 = *(v0 + 320);
      v10 = *(v0 + 248);
      v9 = *(v0 + 256);
      v11 = *(v0 + 240);
      v31 = *(v0 + 280);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33[0] = v13;
      *v12 = 136315138;
      (*(v10 + 16))(v9, v1 + OBJC_IVAR____TtC20LighthouseBackground11MLHostAsset_url, v11);
      sub_1DF19D97C();
      v14 = sub_1DF22B600();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_1DF160728(v14, v16, v33);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DF15A000, log, v5, "MAAutoAsset available on the filesystem: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12D0B40](v13, -1, -1);
      MEMORY[0x1E12D0B40](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v18 = sub_1DF22A8A0();
    v19 = sub_1DF22B0F0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 320);
    v23 = *(v0 + 272);
    v22 = *(v0 + 280);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DF15A000, v18, v19, "MAAutoAsset not available on the device after lock.", v24, 2u);
      MEMORY[0x1E12D0B40](v24, -1, -1);
    }

    else
    {
    }
  }

  v25 = *(v0 + 256);

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x1E69E9840];

  return v26(v1 != 0);
}

uint64_t sub_1DF19D48C()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  swift_willThrow();

  *(v0 + 160) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
  sub_1DF19D9EC();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 264);

    v5 = *(v0 + 168);
    v6 = sub_1DF22A8A0();
    v7 = sub_1DF22B110();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_1DF15A000, v6, v7, "MAAutoAsset interest failed: %@", v8, 0xCu);
      sub_1DF16184C(v9, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v9, -1, -1);
      MEMORY[0x1E12D0B40](v8, -1, -1);
    }

    v12 = *(v0 + 272);
    v11 = *(v0 + 280);

    sub_1DF19DA38();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    v14 = *(v0 + 280);

    v15 = *(v0 + 296);
  }

  v16 = *(v0 + 256);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17(0);
}

uint64_t type metadata accessor for MLHostAsset()
{
  result = qword_1ECE0D418;
  if (!qword_1ECE0D418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF19D714()
{
  result = sub_1DF22A6B0();
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

uint64_t sub_1DF19D848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF19D8B8(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D430, &qword_1DF2305C8) - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  sub_1DF19A8F8(a1, a2, a3, a4, a5, v12);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF19D97C()
{
  result = qword_1ECE0D438;
  if (!qword_1ECE0D438)
  {
    sub_1DF22A6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D438);
  }

  return result;
}

unint64_t sub_1DF19D9EC()
{
  result = qword_1ECE0D450;
  if (!qword_1ECE0D450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE0D450);
  }

  return result;
}

unint64_t sub_1DF19DA38()
{
  result = qword_1ECE0D458;
  if (!qword_1ECE0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D458);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

void sub_1DF19DB18(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D468, &qword_1DF2305E8) - 8) + 80);

  sub_1DF19A140(a1, a2);
}

unint64_t sub_1DF19DBB8()
{
  result = qword_1ECE0D470;
  if (!qword_1ECE0D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D470);
  }

  return result;
}

unint64_t sub_1DF19DC10(uint64_t a1)
{
  *(a1 + 8) = sub_1DF19DA38();
  result = sub_1DF19DC40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF19DC40()
{
  result = qword_1ECE0D478;
  if (!qword_1ECE0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D478);
  }

  return result;
}

BOOL sub_1DF19DC9C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000013;
    if (*v4 == 1)
    {
      v8 = 0xD000000000000010;
      v9 = 0x80000001DF23CF80;
    }

    else
    {
      v9 = 0x80000001DF23CFA0;
    }

    if (*v4)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x546E776F6E6B6E75;
    }

    if (*v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEE00726567676972;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v12 = 0xD000000000000013;
      }

      if (a1 == 1)
      {
        v13 = 0x80000001DF23CF80;
      }

      else
      {
        v13 = 0x80000001DF23CFA0;
      }

      if (v10 != v12)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v13 = 0xEE00726567676972;
      if (v10 != 0x546E776F6E6B6E75)
      {
        goto LABEL_2;
      }
    }

    if (v11 == v13)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_1DF22B620();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

LighthouseBackground::TaskValidationError_optional __swiftcall TaskValidationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskValidationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x4564696C61766E69;
    if (v1 != 6)
    {
      v5 = 0x4F64696C61766E69;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4E64696C61766E69;
    v3 = 0xD000000000000011;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0xD000000000000017;
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
}

void sub_1DF19DFBC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEE0065746144646ELL;
    v9 = 0x4564696C61766E69;
    if (v2 != 6)
    {
      v9 = 0x4F64696C61766E69;
      v8 = 0xED00006570795453;
    }

    v10 = 0x80000001DF23D290;
    v11 = 0xD000000000000019;
    if (v2 != 4)
    {
      v11 = 0xD000000000000010;
      v10 = 0x80000001DF23D2B0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000656D61;
    v4 = 0x4E64696C61766E69;
    v5 = 0x80000001DF23D250;
    v6 = 0xD000000000000011;
    if (v2 != 2)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000001DF23D270;
    }

    if (*v1)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000001DF23D230;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t _s20LighthouseBackground26validateTaskTriggerRequestyyAA0deF0VAA0D15ValidationErrorOYKF(uint64_t *a1, _BYTE *a2)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v117 = (&v109 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D480, &qword_1DF230708);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v109 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v109 - v16;
  v18 = *a1;
  v19 = a1[1];
  v118 = a1[2];
  v119 = v18;
  v20 = a1[4];
  v115 = a1[3];
  v116 = v19;
  v22 = a1[5];
  v21 = a1[6];
  v23 = a1[7];
  v114 = "setStatus8@NSError16";
  v24 = v125;
  sub_1DF22A880();
  if (v24)
  {

    (*(v11 + 7))(v9, 1, 1, v10);
    sub_1DF16184C(v9, &qword_1ECE0D480, &qword_1DF230708);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF22A8C0();
    __swift_project_value_buffer(v25, qword_1ED8E92C0);
    v26 = sub_1DF22A8A0();
    v27 = sub_1DF22B110();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v123 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF160728(0xD000000000000017, v114 | 0x8000000000000000, &v123);
      _os_log_impl(&dword_1DF15A000, v26, v27, "Failed to compile regex: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12D0B40](v29, -1, -1);
      MEMORY[0x1E12D0B40](v28, -1, -1);
    }

    *v120 = 0;
    LOBYTE(v123) = 0;
    sub_1DF1A09AC();
    return swift_willThrowTypedImpl();
  }

  v111 = v15;
  v112 = v22;
  v31 = v117;
  v113 = 0;
  v114 = v23;
  (*(v11 + 7))(v9, 0, 1, v10);
  (*(v11 + 4))(v17, v9, v10);
  v32 = v10;
  v33 = v11;
  v125 = v17;
  if ((v119 - 86401) < 0xFFFFFFFFFFFEAEBBLL)
  {
    v117 = v11;
    v34 = v118;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v35 = sub_1DF22A8C0();
    __swift_project_value_buffer(v35, qword_1ED8E92C0);
    v36 = v116;
    sub_1DF180D2C(v116, v34);

    v37 = sub_1DF22A8A0();
    v38 = sub_1DF22B110();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v119;
      sub_1DF180DA8(v36, v34);

      _os_log_impl(&dword_1DF15A000, v37, v38, "Invalid inactivityTimeout: %ld", v39, 0xCu);
      v40 = v32;
      MEMORY[0x1E12D0B40](v39, -1, -1);

      v41 = v125;
    }

    else
    {
      sub_1DF180DA8(v36, v34);

      v41 = v125;
      v40 = v32;
    }

    *v120 = 4;
    LOBYTE(v123) = 4;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return v117[1](v41, v40);
  }

  v42 = v21;
  v43 = v118;
  if (!v118)
  {
    if (v21)
    {
      v44 = sub_1DF19DC9C(2, &unk_1F5A47240);
      if (v44)
      {
        goto LABEL_20;
      }
    }

    else if (sub_1DF19DC9C(0, &unk_1F5A47240))
    {
      return v33[1](v125, v32);
    }

    goto LABEL_43;
  }

  if (!v21)
  {
    if (sub_1DF19DC9C(1, &unk_1F5A47240))
    {
      goto LABEL_29;
    }

LABEL_43:
    v117 = v33;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v58 = sub_1DF22A8C0();
    __swift_project_value_buffer(v58, qword_1ED8E92C0);
    v59 = v116;
    sub_1DF180D2C(v116, v43);

    v60 = sub_1DF22A8A0();
    v61 = sub_1DF22B110();
    sub_1DF180DA8(v59, v43);

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v110 = v32;
      v64 = v63;
      v123 = v63;
      *v62 = 136315138;
      v65 = 0x80000001DF23CFA0;
      v66 = 0xD000000000000013;
      if (!v21)
      {
        v66 = 0x546E776F6E6B6E75;
        v65 = 0xEE00726567676972;
      }

      v67 = 0x80000001DF23CF80;
      v68 = 0xD000000000000010;
      if (v21)
      {
        v68 = 0x546E776F6E6B6E75;
      }

      v69 = v117;
      if (v21)
      {
        v67 = 0xEE00726567676972;
      }

      if (v43)
      {
        v70 = v68;
      }

      else
      {
        v70 = v66;
      }

      if (v43)
      {
        v71 = v67;
      }

      else
      {
        v71 = v65;
      }

      v72 = sub_1DF160728(v70, v71, &v123);

      *(v62 + 4) = v72;
      v73 = v125;
      _os_log_impl(&dword_1DF15A000, v60, v61, "Invalid taskTriggerRequest category: %s.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      v32 = v110;
      MEMORY[0x1E12D0B40](v64, -1, -1);
      MEMORY[0x1E12D0B40](v62, -1, -1);
    }

    else
    {

      v73 = v125;
      v69 = v117;
    }

    *v120 = 4;
    LOBYTE(v123) = 4;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return v69[1](v73, v32);
  }

  if (!sub_1DF19DC9C(0, &unk_1F5A47240))
  {
    goto LABEL_43;
  }

LABEL_29:
  v49 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v49 = v116 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    goto LABEL_37;
  }

  v50 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v50 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
LABEL_37:
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v51 = sub_1DF22A8C0();
    __swift_project_value_buffer(v51, qword_1ED8E92C0);
    v52 = sub_1DF22A8A0();
    v53 = sub_1DF22B110();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v125;
    if (!v54)
    {
      goto LABEL_67;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "Invalid taskTriggerRequest: datastoreTriggerKey is empty.";
    goto LABEL_66;
  }

  v123 = v116;
  v124 = v43;
  v121 = 58;
  v122 = 0xE100000000000000;
  sub_1DF17924C();

  if (sub_1DF22B1D0())
  {

LABEL_62:
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v75 = sub_1DF22A8C0();
    __swift_project_value_buffer(v75, qword_1ED8E92C0);
    v52 = sub_1DF22A8A0();
    v53 = sub_1DF22B110();
    v76 = os_log_type_enabled(v52, v53);
    v55 = v125;
    if (!v76)
    {
      goto LABEL_67;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "Invalid taskTriggerRequest: datastoreTriggerKey is invalid.";
LABEL_66:
    _os_log_impl(&dword_1DF15A000, v52, v53, v57, v56, 2u);
    MEMORY[0x1E12D0B40](v56, -1, -1);
LABEL_67:

    *v120 = 4;
    LOBYTE(v123) = 4;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return v33[1](v55, v32);
  }

  v123 = v115;
  v124 = v20;
  v121 = 58;
  v122 = 0xE100000000000000;
  v74 = sub_1DF22B1D0();

  if (v74)
  {
    goto LABEL_62;
  }

  v42 = v21;
  if (!v21)
  {
    return v33[1](v125, v32);
  }

LABEL_20:
  v45 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v45 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v47 = v113;
    v46 = v114;
    if (!v114)
    {
      return v33[1](v125, v32);
    }

LABEL_24:
    if (!*(v46 + 16))
    {
      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v81 = sub_1DF22A8C0();
      __swift_project_value_buffer(v81, qword_1ED8E92C0);
      v52 = sub_1DF22A8A0();
      v53 = sub_1DF22B110();
      v82 = os_log_type_enabled(v52, v53);
      v55 = v125;
      if (!v82)
      {
        goto LABEL_67;
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = "Invalid taskTriggerRequest: subscriptionTopics is empty";
      goto LABEL_66;
    }

    MEMORY[0x1EEE9AC00](v44);
    *(&v109 - 2) = v125;
    v48 = sub_1DF19F300(sub_1DF1A0B40, (&v109 - 4), v46);
    if (v48)
    {
      v123 = v112;
      v124 = v42;
      MEMORY[0x1EEE9AC00](v48);
      *(&v109 - 2) = &v123;
      if (sub_1DF16054C(sub_1DF1A0A00, (&v109 - 4), v46))
      {
        v113 = v47;
        return v33[1](v125, v32);
      }

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v101 = sub_1DF22A8C0();
      __swift_project_value_buffer(v101, qword_1ED8E92C0);
      v102 = v114;

      v93 = sub_1DF22A8A0();
      v103 = sub_1DF22B110();

      if (os_log_type_enabled(v93, v103))
      {
        v95 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v105 = v42;
        v96 = v104;
        v123 = v104;
        *v95 = 136315394;
        *(v95 + 4) = sub_1DF160728(v112, v105, &v123);
        *(v95 + 12) = 2080;
        v106 = MEMORY[0x1E12CF970](v102, MEMORY[0x1E69E6158]);
        v108 = sub_1DF160728(v106, v107, &v123);

        *(v95 + 14) = v108;
        v100 = v125;
        _os_log_impl(&dword_1DF15A000, v93, v103, "Trigger topic must be included in subscriptionTopics: %s not in %s", v95, 0x16u);
        swift_arrayDestroy();
        goto LABEL_92;
      }
    }

    else
    {
      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v91 = sub_1DF22A8C0();
      __swift_project_value_buffer(v91, qword_1ED8E92C0);
      v92 = v114;

      v93 = sub_1DF22A8A0();
      v94 = sub_1DF22B110();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v123 = v96;
        *v95 = 136315138;
        v97 = MEMORY[0x1E12CF970](v92, MEMORY[0x1E69E6158]);
        v99 = sub_1DF160728(v97, v98, &v123);

        *(v95 + 4) = v99;
        v100 = v125;
        _os_log_impl(&dword_1DF15A000, v93, v94, "Invalid taskTriggerRequest format: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
LABEL_92:
        MEMORY[0x1E12D0B40](v96, -1, -1);
        MEMORY[0x1E12D0B40](v95, -1, -1);

LABEL_94:
        *v120 = 4;
        LOBYTE(v123) = 4;
        sub_1DF1A09AC();
        swift_willThrowTypedImpl();
        return v33[1](v100, v32);
      }
    }

    v100 = v125;
    goto LABEL_94;
  }

  sub_1DF164BEC(&qword_1ECE0C718, &qword_1ECE0C7E0, &unk_1DF22C510);
  v77 = v111;
  sub_1DF22A850();
  sub_1DF22ADD0();
  v78 = v113;
  sub_1DF22A870();
  v110 = v32;
  if (v78)
  {

    v79 = v33[1];
    v79(v77, v32);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    (*(*(v80 - 8) + 56))(v31, 1, 1, v80);
  }

  else
  {
    v113 = 0;
    v79 = v33[1];
    v79(v77, v32);

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    if ((*(*(v83 - 8) + 48))(v31, 1, v83) != 1)
    {
      v44 = sub_1DF16184C(v31, &qword_1ECE0C7D8, &qword_1DF230700);
      v42 = v21;
      v32 = v110;
      v47 = v113;
      v46 = v114;
      if (!v114)
      {
        return v33[1](v125, v32);
      }

      goto LABEL_24;
    }
  }

  sub_1DF16184C(v31, &qword_1ECE0C7D8, &qword_1DF230700);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v84 = sub_1DF22A8C0();
  __swift_project_value_buffer(v84, qword_1ED8E92C0);
  v85 = sub_1DF22A8A0();
  v86 = sub_1DF22B110();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v110;
  v89 = v125;
  if (v87)
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_1DF15A000, v85, v86, "Invalid taskTriggerRequest: triggerTopic is empty or invalid.", v90, 2u);
    MEMORY[0x1E12D0B40](v90, -1, -1);
  }

  *v120 = 4;
  LOBYTE(v123) = 4;
  sub_1DF1A09AC();
  swift_willThrowTypedImpl();
  return v79(v89, v88);
}

uint64_t sub_1DF19F300(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      v9 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- != 0;
      if ((v9 & v11 & 1) == 0)
      {
        return v9 & 1;
      }
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

uint64_t _s20LighthouseBackground19validateTaskRequestyyAA0dE0VAA0D15ValidationErrorOYKF(__int128 *a1, _BYTE *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D480, &qword_1DF230708);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v62 - v12);
  v14 = a1[13];
  v93 = a1[12];
  v94 = v14;
  v15 = a1[15];
  v95 = a1[14];
  v96 = v15;
  v16 = a1[9];
  v89 = a1[8];
  v90 = v16;
  v17 = a1[11];
  v91 = a1[10];
  v92 = v17;
  v18 = a1[5];
  v85 = a1[4];
  v86 = v18;
  v19 = a1[7];
  v87 = a1[6];
  v88 = v19;
  v20 = a1[1];
  v81 = *a1;
  v82 = v20;
  v21 = a1[3];
  v83 = a1[2];
  v84 = v21;
  sub_1DF22A880();
  if (!v2)
  {
    (*(v10 + 56))(v8, 0, 1, v9);
    v28 = (*(v10 + 32))(v13, v8, v9);
    v29 = *(&v82 + 1);
    if (BYTE1(v82) == 1)
    {
      if (BYTE9(v83))
      {
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v30 = sub_1DF22A8C0();
        __swift_project_value_buffer(v30, qword_1ED8E92C0);
        sub_1DF1913C4(&v81, v80);
        v31 = sub_1DF22A8A0();
        v32 = sub_1DF22B110();
        sub_1DF191420(&v81);
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v97 = v63;
          *v33 = 136315138;
          v76 = v93;
          v77 = v94;
          v78 = v95;
          v79 = v96;
          v72 = v89;
          v73 = v90;
          v74 = v91;
          v75 = v92;
          v68 = v85;
          v69 = v86;
          v70 = v87;
          v71 = v88;
          v64 = v81;
          v65 = v82;
          v66 = v83;
          v67 = v84;
          sub_1DF1913C4(&v81, v80);
          LODWORD(v62) = v32;
          v34 = TaskRequest.description.getter();
          v36 = v35;
          v80[12] = v76;
          v80[13] = v77;
          v80[14] = v78;
          v80[15] = v79;
          v80[8] = v72;
          v80[9] = v73;
          v80[10] = v74;
          v80[11] = v75;
          v80[4] = v68;
          v80[5] = v69;
          v80[6] = v70;
          v80[7] = v71;
          v80[0] = v64;
          v80[1] = v65;
          v80[2] = v66;
          v80[3] = v67;
          sub_1DF191420(v80);
          v37 = sub_1DF160728(v34, v36, &v97);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_1DF15A000, v31, v62, "Malformed request: %s", v33, 0xCu);
          v38 = v63;
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x1E12D0B40](v38, -1, -1);
          MEMORY[0x1E12D0B40](v33, -1, -1);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v39 = v81;
      if (*&v81 < 60.0 || *&v81 > 86400.0)
      {
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v50 = sub_1DF22A8C0();
        __swift_project_value_buffer(v50, qword_1ED8E92C0);
        v42 = sub_1DF22A8A0();
        v51 = sub_1DF22B110();
        if (!os_log_type_enabled(v42, v51))
        {
          goto LABEL_45;
        }

        v45 = swift_slowAlloc();
        *v45 = 134217984;
        *(v45 + 4) = v39;
        v52 = "Invalid interval: %f";
        goto LABEL_34;
      }

      if (BYTE9(v83))
      {
LABEL_19:
        v40 = *(&v96 + 1);
        if (*(&v96 + 1) && *(*(&v96 + 1) + 16) && (MEMORY[0x1EEE9AC00](v28), *(&v62 - 2) = v13, v28 = sub_1DF19F300(sub_1DF1A0B40, (&v62 - 4), v40), (v28 & 1) == 0))
        {
          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v41 = sub_1DF22A8C0();
          __swift_project_value_buffer(v41, qword_1ED8E92C0);

          v42 = sub_1DF22A8A0();
          v43 = sub_1DF22B110();

          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_45;
          }

          v44 = swift_slowAlloc();
          LODWORD(v63) = v43;
          v45 = v44;
          v62 = swift_slowAlloc();
          *&v80[0] = v62;
          *v45 = 136315138;
          v46 = MEMORY[0x1E12CF970](v40, MEMORY[0x1E69E6158]);
          v48 = sub_1DF160728(v46, v47, v80);

          *(v45 + 4) = v48;
          v49 = "Invalid dependencies format: %s";
        }

        else
        {
          v54 = v96;
          if (!v96)
          {
            return (*(v10 + 8))(v13, v9);
          }

          if (!*(v96 + 16))
          {
            return (*(v10 + 8))(v13, v9);
          }

          MEMORY[0x1EEE9AC00](v28);
          *(&v62 - 2) = v13;
          if (sub_1DF19F300(sub_1DF1A0A20, (&v62 - 4), v54))
          {
            return (*(v10 + 8))(v13, v9);
          }

          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v55 = sub_1DF22A8C0();
          __swift_project_value_buffer(v55, qword_1ED8E92C0);

          v42 = sub_1DF22A8A0();
          v56 = sub_1DF22B110();

          if (!os_log_type_enabled(v42, v56))
          {
            goto LABEL_45;
          }

          v57 = swift_slowAlloc();
          LODWORD(v63) = v56;
          v45 = v57;
          v62 = swift_slowAlloc();
          *&v80[0] = v62;
          *v45 = 136315138;
          v58 = MEMORY[0x1E12CF970](v54, MEMORY[0x1E69E6158]);
          v60 = sub_1DF160728(v58, v59, v80);

          *(v45 + 4) = v60;
          v49 = "Invalid producedResultIdentifiers format: %s";
        }

        _os_log_impl(&dword_1DF15A000, v42, v63, v49, v45, 0xCu);
        v61 = v62;
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x1E12D0B40](v61, -1, -1);
LABEL_44:
        MEMORY[0x1E12D0B40](v45, -1, -1);
LABEL_45:

LABEL_46:
        *a2 = 3;
        LOBYTE(v80[0]) = 3;
        sub_1DF1A09AC();
        swift_willThrowTypedImpl();
        return (*(v10 + 8))(v13, v9);
      }
    }

    if (*(&v82 + 1) >= 60.0 && *(&v82 + 1) <= 86400.0)
    {
      goto LABEL_19;
    }

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v53 = sub_1DF22A8C0();
    __swift_project_value_buffer(v53, qword_1ED8E92C0);
    v42 = sub_1DF22A8A0();
    v51 = sub_1DF22B110();
    if (!os_log_type_enabled(v42, v51))
    {
      goto LABEL_45;
    }

    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = v29;
    v52 = "Invalid scheduleAfter: %f";
LABEL_34:
    _os_log_impl(&dword_1DF15A000, v42, v51, v52, v45, 0xCu);
    goto LABEL_44;
  }

  (*(v10 + 56))(v8, 1, 1, v9);
  sub_1DF16184C(v8, &qword_1ECE0D480, &qword_1DF230708);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF22A8C0();
  __swift_project_value_buffer(v22, qword_1ED8E92C0);
  v23 = sub_1DF22A8A0();
  v24 = sub_1DF22B110();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v80[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DF160728(0xD000000000000017, 0x80000001DF23DB90, v80);
    _os_log_impl(&dword_1DF15A000, v23, v24, "Failed to compile regex: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12D0B40](v26, -1, -1);
    MEMORY[0x1E12D0B40](v25, -1, -1);
  }

  *a2 = 0;
  LOBYTE(v80[0]) = 0;
  sub_1DF1A09AC();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DF19FDB0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - v9;
  v12 = *a1;
  v11 = a1[1];
  sub_1DF164BEC(&qword_1ECE0C718, &qword_1ECE0C7E0, &unk_1DF22C510);
  sub_1DF22A850();
  sub_1DF22ADD0();
  v13 = v18[1];
  sub_1DF22A870();
  if (v13)
  {

    (*(v3 + 8))(v6, v2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  (*(v3 + 8))(v6, v2);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
  v16 = 1;
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_1DF16184C(v10, &qword_1ECE0C7D8, &qword_1DF230700);
  return v16;
}

uint64_t _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF(uint64_t a1, _BYTE *a2)
{
  v70 = a1;
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D480, &qword_1DF230708);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v66 - v17;
  sub_1DF22A880();
  if (v2)
  {
    v19 = v71;

    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1DF16184C(v10, &qword_1ECE0D480, &qword_1DF230708);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v20 = sub_1DF22A8C0();
    __swift_project_value_buffer(v20, qword_1ED8E92C0);
    v21 = sub_1DF22A8A0();
    v22 = sub_1DF22B110();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v90[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DF160728(0xD000000000000017, 0x80000001DF23DB90, v90);
      _os_log_impl(&dword_1DF15A000, v21, v22, "Failed to compile regex: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12D0B40](v24, -1, -1);
      MEMORY[0x1E12D0B40](v23, -1, -1);
    }

    *v19 = 0;
    LOBYTE(v90[0]) = 0;
    sub_1DF1A09AC();
    return swift_willThrowTypedImpl();
  }

  v67 = v16;
  v68 = v6;
  v69 = 0;
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v12 + 32))(v18, v10, v11);
  v26 = v11;
  v27 = *(v70 + 8);
  if ((v27 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v28 = *v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    *v71 = 0;
    LOBYTE(v90[0]) = 0;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return (*(v12 + 8))(v18, v11);
  }

  sub_1DF164BEC(&qword_1ECE0C718, &qword_1ECE0C7E0, &unk_1DF22C510);
  v29 = v67;
  v66 = v18;
  sub_1DF22A850();
  sub_1DF22ADD0();
  v31 = v68;
  v30 = v69;
  sub_1DF22A870();
  if (v30)
  {

    v32 = *(v12 + 8);
    v32(v29, v11);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
LABEL_16:
    v35 = v66;
    sub_1DF16184C(v31, &qword_1ECE0C7D8, &qword_1DF230700);
    *v71 = 0;
    LOBYTE(v90[0]) = 0;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    return (v32)(v35, v26);
  }

  v32 = *(v12 + 8);
  v69 = v11;
  v32(v29, v11);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
  if ((*(*(v34 - 8) + 48))(v31, 1, v34) == 1)
  {
    v26 = v69;
    goto LABEL_16;
  }

  sub_1DF16184C(v31, &qword_1ECE0C7D8, &qword_1DF230700);
  v36 = *(v70 + 24);
  v37 = *(v70 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v36) & 0xF;
  }

  v38 = v66;
  if (!v37)
  {
    *v71 = 1;
    LOBYTE(v90[0]) = 1;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    v49 = v38;
LABEL_26:
    v50 = v69;
    return (v32)(v49, v50);
  }

  v39 = *(v70 + 240);
  v90[12] = *(v70 + 224);
  v90[13] = v39;
  v40 = *(v70 + 272);
  v90[14] = *(v70 + 256);
  v90[15] = v40;
  v41 = *(v70 + 176);
  v90[8] = *(v70 + 160);
  v90[9] = v41;
  v42 = *(v70 + 208);
  v90[10] = *(v70 + 192);
  v90[11] = v42;
  v43 = *(v70 + 112);
  v90[4] = *(v70 + 96);
  v90[5] = v43;
  v44 = *(v70 + 144);
  v90[6] = *(v70 + 128);
  v90[7] = v44;
  v45 = *(v70 + 48);
  v90[0] = *(v70 + 32);
  v90[1] = v45;
  v46 = *(v70 + 80);
  v90[2] = *(v70 + 64);
  v90[3] = v46;
  v47 = sub_1DF182574(v90);
  v48 = v69;
  if (v47 == 1 && *(v70 + 304) == 1)
  {
    *v71 = 2;
    LOBYTE(v74) = 2;
    sub_1DF1A09AC();
    swift_willThrowTypedImpl();
    v49 = v38;
    v50 = v48;
    return (v32)(v49, v50);
  }

  v51 = *(v70 + 240);
  v86 = *(v70 + 224);
  v87 = v51;
  v52 = *(v70 + 272);
  v88 = *(v70 + 256);
  v89 = v52;
  v53 = *(v70 + 176);
  v82 = *(v70 + 160);
  v83 = v53;
  v54 = *(v70 + 208);
  v84 = *(v70 + 192);
  v85 = v54;
  v55 = *(v70 + 112);
  v78 = *(v70 + 96);
  v79 = v55;
  v56 = *(v70 + 144);
  v80 = *(v70 + 128);
  v81 = v56;
  v57 = *(v70 + 48);
  v74 = *(v70 + 32);
  v75 = v57;
  v58 = *(v70 + 80);
  v76 = *(v70 + 64);
  v77 = v58;
  if (sub_1DF182574(&v74) != 1)
  {
    v73[11] = v86;
    v73[12] = v87;
    v73[13] = v88;
    v73[14] = v89;
    v73[7] = v82;
    v73[8] = v83;
    v73[9] = v84;
    v73[10] = v85;
    v73[3] = v78;
    v73[4] = v79;
    v73[5] = v80;
    v73[6] = v81;
    v72 = v74;
    v73[0] = v75;
    v73[1] = v76;
    v73[2] = v77;
    _s20LighthouseBackground19validateTaskRequestyyAA0dE0VAA0D15ValidationErrorOYKF(&v72, &v91);
  }

  v59 = *(v70 + 304);
  if (v59 != 1)
  {
    v72 = *(v70 + 288);
    *&v73[0] = v59;
    BYTE8(v73[3]) = *(v70 + 360);
    v60 = *(v70 + 328);
    *(v73 + 8) = *(v70 + 312);
    *(&v73[1] + 8) = v60;
    *(&v73[2] + 8) = *(v70 + 344);
    _s20LighthouseBackground26validateTaskTriggerRequestyyAA0deF0VAA0D15ValidationErrorOYKF(&v72, &v91);
  }

  v68 = 0;
  v61 = *(v70 + *(type metadata accessor for TaskDefinition(0) + 40));
  if (v61)
  {
    v62 = *(v61 + 16);
    for (i = (v61 + 32); ; ++i)
    {
      if (!v62)
      {
        *v71 = 7;
        LOBYTE(v72) = 7;
        sub_1DF1A09AC();
        swift_willThrowTypedImpl();
        v49 = v66;
        goto LABEL_26;
      }

      v65 = *i;
      if (v65 <= 2 && v65 != 1 && v65 != 2)
      {
        break;
      }

      v64 = sub_1DF22B620();

      --v62;
      if (v64)
      {
        return (v32)(v66, v69);
      }
    }
  }

  return (v32)(v66, v69);
}

unint64_t sub_1DF1A09AC()
{
  result = qword_1ECE0C358;
  if (!qword_1ECE0C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C358);
  }

  return result;
}

unint64_t sub_1DF1A0A44()
{
  result = qword_1ECE0D488;
  if (!qword_1ECE0D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D488);
  }

  return result;
}

unint64_t sub_1DF1A0AEC()
{
  result = qword_1ECE0D4A0;
  if (!qword_1ECE0D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D4A0);
  }

  return result;
}

uint64_t sub_1DF1A0B5C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LedgerState();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1DF1A88EC(a3 + v16 + v17 * v14, v13, type metadata accessor for LedgerState);
      v18 = a1(v13);
      if (v3)
      {
        sub_1DF1A8954(v13, type metadata accessor for LedgerState);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1DF1A89B4(v13, v25, type metadata accessor for LedgerState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF160D30(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DF160D30(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1DF1A89B4(v25, v15 + v16 + v21 * v17, type metadata accessor for LedgerState);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1DF1A8954(v13, type metadata accessor for LedgerState);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1DF1A0DE8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TaskStatusEvent(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1DF1A88EC(a3 + v16 + v17 * v14, v13, type metadata accessor for TaskStatusEvent);
      v18 = a1(v13);
      if (v3)
      {
        sub_1DF1A8954(v13, type metadata accessor for TaskStatusEvent);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1DF1A89B4(v13, v25, type metadata accessor for TaskStatusEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF160D94(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DF160D94(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1DF1A89B4(v25, v15 + v16 + v21 * v17, type metadata accessor for TaskStatusEvent);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1DF1A8954(v13, type metadata accessor for TaskStatusEvent);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1DF1A1074(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - v11;
  sub_1DF17A6A8(a2, &aBlock - v11, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  sub_1DF17A6A8(a3, v10, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v13 = sub_1DF22A800();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = 0;
  if (v15(v12, 1, v13) != 1)
  {
    v16 = sub_1DF22A770();
    (*(v14 + 8))(v12, v13);
  }

  if (v15(v10, 1, v13) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1DF22A770();
    (*(v14 + 8))(v10, v13);
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v16 endDate:v17 maxEvents:0 lastN:0 reversed:0];

  v19 = sub_1DF22ACA0();
  v20 = [a1 publisherWithUseCase:v19 options:v18];

  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v31 = nullsub_1;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1DF21064C;
  v30 = &block_descriptor_0;
  v22 = _Block_copy(&aBlock);
  v31 = sub_1DF1A8A9C;
  v32 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1DF1A1670;
  v30 = &block_descriptor_3;
  v23 = _Block_copy(&aBlock);

  v24 = [v20 sinkWithCompletion:v22 receiveInput:v23];

  _Block_release(v23);
  _Block_release(v22);

  swift_beginAccess();
  v25 = *(v21 + 16);

  return v25;
}

void sub_1DF1A141C(void *a1, uint64_t a2)
{
  v4 = [a1 eventBody];
  if (v4)
  {
    v5 = v4;
    [a1 timestamp];
    v7 = v6;
    swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1DF174864(0, v8[2] + 1, 1, v8);
      *(a2 + 16) = v8;
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_1DF174864((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = v7;
    v13[5] = v9;
    *(a2 + 16) = v8;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF22A8C0();
    __swift_project_value_buffer(v14, qword_1ED8E92C0);
    v15 = a1;
    oslog = sub_1DF22A8A0();
    v16 = sub_1DF22B100();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_1DF15A000, oslog, v16, "Invalid event: %@", v17, 0xCu);
      sub_1DF16184C(v18, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v18, -1, -1);
      MEMORY[0x1E12D0B40](v17, -1, -1);
    }
  }
}

void sub_1DF1A1670(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id DediscoAnalytics.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v134 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v133 - v6;
  v8 = sub_1DF22A800();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v133 - v14;
  v16 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v17 = *v0;
  v18 = *(*v0 + 16);
  v135 = v7;
  if (v18)
  {
    v19 = sub_1DF175254(0xD000000000000014, 0x80000001DF23DBB0);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);
    }
  }

  v22 = sub_1DF22B090();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v136 = v16;
  sub_1DF1A7B40(v22, 0xD000000000000019, 0x80000001DF23DBD0, isUniquelyReferenced_nonNull_native);
  v24 = v136;
  if (*(v17 + 16))
  {
    v25 = sub_1DF175254(0xD000000000000011, 0x80000001DF23DBF0);
    if (v26)
    {
      v27 = *(*(v17 + 56) + 8 * v25);
    }
  }

  v28 = sub_1DF22B090();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v24;
  sub_1DF1A7B40(v28, 0xD000000000000016, 0x80000001DF23DC10, v29);
  v30 = v136;
  if (*(v17 + 16))
  {
    v31 = sub_1DF175254(0xD000000000000010, 0x80000001DF23DC30);
    if (v32)
    {
      v33 = *(*(v17 + 56) + 8 * v31);
    }
  }

  v34 = sub_1DF22B090();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v30;
  sub_1DF1A7B40(v34, 0xD000000000000015, 0x80000001DF23DC50, v35);
  v36 = v136;
  if (*(v17 + 16))
  {
    v37 = sub_1DF175254(0x466E776F6E6B6E75, 0xED000064656C6961);
    if (v38)
    {
      v39 = *(*(v17 + 56) + 8 * v37);
    }
  }

  v40 = sub_1DF22B090();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v36;
  sub_1DF1A7B40(v40, 0xD000000000000012, 0x80000001DF23DC70, v41);
  v42 = v136;
  if (*(v17 + 16))
  {
    v43 = sub_1DF175254(0xD000000000000019, 0x80000001DF23DC90);
    if (v44)
    {
      v45 = *(*(v17 + 56) + 8 * v43);
    }
  }

  v46 = sub_1DF22B090();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v42;
  sub_1DF1A7B40(v46, 0xD00000000000001ELL, 0x80000001DF23DCB0, v47);
  v48 = v136;
  if (*(v17 + 16))
  {
    v49 = sub_1DF175254(0xD000000000000016, 0x80000001DF23DCD0);
    if (v50)
    {
      v51 = *(*(v17 + 56) + 8 * v49);
    }
  }

  v52 = sub_1DF22B090();
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v48;
  sub_1DF1A7B40(v52, 0xD00000000000001BLL, 0x80000001DF23DCF0, v53);
  v54 = v136;
  if (*(v17 + 16))
  {
    v55 = sub_1DF175254(0xD000000000000016, 0x80000001DF23DD10);
    if (v56)
    {
      v57 = *(*(v17 + 56) + 8 * v55);
    }
  }

  v58 = sub_1DF22B090();
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v54;
  sub_1DF1A7B40(v58, 0xD00000000000001BLL, 0x80000001DF23DD30, v59);
  v60 = v136;
  if (*(v17 + 16))
  {
    v61 = sub_1DF175254(0xD000000000000013, 0x80000001DF23DD50);
    if (v62)
    {
      v63 = *(*(v17 + 56) + 8 * v61);
    }
  }

  v64 = sub_1DF22B090();
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v60;
  sub_1DF1A7B40(v64, 0xD000000000000018, 0x80000001DF23DD70, v65);
  v66 = v136;
  if (*(v17 + 16))
  {
    v67 = sub_1DF175254(0xD000000000000018, 0x80000001DF23DD90);
    if (v68)
    {
      v69 = *(*(v17 + 56) + 8 * v67);
    }
  }

  v70 = sub_1DF22B090();
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v66;
  sub_1DF1A7B40(v70, 0xD00000000000001DLL, 0x80000001DF23DDB0, v71);
  v72 = v136;
  if (*(v17 + 16))
  {
    v73 = sub_1DF175254(0xD000000000000015, 0x80000001DF23DDD0);
    if (v74)
    {
      v75 = *(*(v17 + 56) + 8 * v73);
    }
  }

  v76 = sub_1DF22B090();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v72;
  sub_1DF1A7B40(v76, 0xD00000000000001ALL, 0x80000001DF23DDF0, v77);
  v78 = v136;
  if (*(v17 + 16))
  {
    v79 = sub_1DF175254(0x755364616F6C7075, 0xEF64656465656363);
    if (v80)
    {
      v81 = *(*(v17 + 56) + 8 * v79);
    }
  }

  v82 = sub_1DF22B090();
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v78;
  sub_1DF1A7B40(v82, 0xD000000000000014, 0x80000001DF23DE10, v83);
  v84 = v136;
  if (*(v17 + 16))
  {
    v85 = sub_1DF175254(0x614664616F6C7075, 0xEC00000064656C69);
    if (v86)
    {
      v87 = *(*(v17 + 56) + 8 * v85);
    }
  }

  v88 = sub_1DF22B090();
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v84;
  sub_1DF1A7B40(v88, 0xD000000000000011, 0x80000001DF23DE30, v89);
  v90 = v136;
  if (*(v17 + 16))
  {
    v91 = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
    if (v92)
    {
      v93 = *(*(v17 + 56) + 8 * v91);
    }
  }

  v94 = sub_1DF22B090();
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v90;
  sub_1DF1A7B40(v94, 0xD000000000000012, 0x80000001DF23DE50, v95);
  v96 = v136;
  if (*(v17 + 16))
  {
    v97 = sub_1DF175254(0x64656C696146, 0xE600000000000000);
    if (v98)
    {
      v99 = *(*(v17 + 56) + 8 * v97);
    }
  }

  v100 = sub_1DF22B090();
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v96;
  sub_1DF1A7B40(v100, 0x736154746E756F63, 0xEF64656C6961466BLL, v101);
  v102 = v136;
  if (*(v17 + 16))
  {
    v103 = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
    if (v104)
    {
      v105 = *(*(v17 + 56) + 8 * v103);
    }
  }

  v106 = sub_1DF22B090();
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v102;
  sub_1DF1A7B40(v106, 0xD000000000000011, 0x80000001DF23DE70, v107);
  v108 = v136;
  v109 = type metadata accessor for DediscoAnalytics();
  v110 = (v1 + v109[8]);
  if (v110[1])
  {
    v111 = *v110;
    v112 = v110[1];
  }

  v113 = sub_1DF22ACA0();

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v108;
  sub_1DF1A7B40(v113, 0x656D614E6B736174, 0xE800000000000000, v114);
  v116 = v135;
  v115 = v136;
  sub_1DF17A6A8(v1 + v109[9], v135, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v117 = *(v9 + 48);
  if (v117(v116, 1, v8) == 1)
  {
    sub_1DF16184C(v116, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    return v115;
  }

  v133 = v13;
  v118 = *(v9 + 32);
  v118(v15, v116, v8);
  v119 = v1 + v109[10];
  v120 = v134;
  sub_1DF17A6A8(v119, v134, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  if (v117(v120, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    sub_1DF16184C(v120, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    return v115;
  }

  v134 = v8;
  v135 = v9;
  v118(v133, v120, v8);
  result = sub_1DF22A7A0();
  if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v122 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v122 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v123 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  result = [v123 stringValue];
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v124 = result;

  v125 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v115;
  sub_1DF1A7B40(v124, 0x745374656B637562, 0xEB00000000747261, v125);
  v126 = v136;
  result = sub_1DF22A7A0();
  if ((*&v127 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_65;
  }

  if (v127 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v127 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v128 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  result = [v128 stringValue];
  if (result)
  {
    v129 = result;

    v130 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v126;
    sub_1DF1A7B40(v129, 0x6E4574656B637562, 0xE900000000000064, v130);
    v115 = v136;
    v131 = *(v135 + 1);
    v132 = v134;
    v131(v133, v134);
    v131(v15, v132);
    return v115;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t getDediscoData(telemetryRange:)(uint64_t a1)
{
  v110 = type metadata accessor for LedgerState();
  v107 = *(v110 - 8);
  v2 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v112 = (&v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v104 - v13;
  v15 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v16 = [v15 Ledger];
  swift_unknownObjectRelease();
  v17 = [v16 DediscoPrivacyEvent];
  swift_unknownObjectRelease();
  v18 = type metadata accessor for TelemetryBucketRange();
  v19 = v5 + 2;
  v20 = v5[2];
  v20(v14, a1 + *(v18 + 24), v4);
  v119 = v5;
  v21 = v5[7];
  v21(v14, 0, 1, v4);
  v22 = a1 + *(v18 + 28);
  v108 = v20;
  v109 = v19;
  v20(v12, v22, v4);
  v116 = v4;
  v21(v12, 0, 1, v4);
  v105 = v17;
  v23 = sub_1DF1A1074(v17, v14, v12);
  sub_1DF16184C(v12, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  sub_1DF16184C(v14, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v115 = sub_1DF190160(MEMORY[0x1E69E7CC0]);
  v24 = *(v23 + 16);
  if (!v24)
  {
    v114 = 0;
LABEL_74:

    sub_1DF15EAC4(v114);
    return v115;
  }

  v113 = *(v23 + 16);
  v114 = 0;
  v25 = 0;
  v104 = 0x80000001DF23D9A0;
  v111 = (v119 + 8);
  v26 = (v23 + 40);
  v27 = &off_1E86AB000;
  v28 = &unk_1ED8E7000;
  v106 = v23;
  while (v25 < *(v23 + 16))
  {
    v31 = *v26;
    v32 = [v31 v27[227]];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 bmltIdentifiers];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 trialTaskID];
        if (!v36)
        {
          v61 = v27;
          v62 = v23;
          v63 = v31;
          if (v28[166] != -1)
          {
            swift_once();
          }

          v64 = sub_1DF22A8C0();
          __swift_project_value_buffer(v64, qword_1ED8E92C0);
          v65 = sub_1DF22A8A0();
          v66 = sub_1DF22B100();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_1DF15A000, v65, v66, "Dedisco: No Trial experiment ID", v67, 2u);
            v68 = v67;
            v28 = &unk_1ED8E7000;
            MEMORY[0x1E12D0B40](v68, -1, -1);
          }

          v23 = v62;
          v27 = v61;
          v24 = v113;
          goto LABEL_4;
        }

        v37 = v36;
        v117 = sub_1DF22ACC0();
        v39 = v38;

        v40 = [v31 timestamp];
        v119 = v31;
        if (!v40)
        {

          v28 = &unk_1ED8E7000;
          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v69 = sub_1DF22A8C0();
          __swift_project_value_buffer(v69, qword_1ED8E92C0);
          v70 = sub_1DF22A8A0();
          v71 = sub_1DF22B100();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_1DF15A000, v70, v71, "Dedisco: No timestamp", v72, 2u);
            v73 = v72;
            v28 = &unk_1ED8E7000;
            MEMORY[0x1E12D0B40](v73, -1, -1);
          }

          goto LABEL_4;
        }

        v41 = v40;
        sub_1DF22A7C0();

        v42 = [v31 event];
        if (!v42)
        {

          v28 = &unk_1ED8E7000;
          if (qword_1ED8E7530 != -1)
          {
            swift_once();
          }

          v74 = sub_1DF22A8C0();
          __swift_project_value_buffer(v74, qword_1ED8E92C0);
          v75 = sub_1DF22A8A0();
          v76 = sub_1DF22B100();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&dword_1DF15A000, v75, v76, "Dedisco: No event", v77, 2u);
            v78 = v77;
            v28 = &unk_1ED8E7000;
            MEMORY[0x1E12D0B40](v78, -1, -1);
          }

          else
          {
          }

          (*v111)(v118, v116);
          goto LABEL_4;
        }

        v43 = v42;
        v44 = [v42 succeeded];
        if (v44)
        {
          v45 = 0x6564656563637553;
        }

        else
        {
          v45 = 0x64656C696146;
        }

        if (v44)
        {
          v46 = 0xE900000000000064;
        }

        else
        {
          v46 = 0xE600000000000000;
        }

        v47 = [v43 phase];
        if (v47 > 2)
        {
          switch(v47)
          {
            case 3:
              v48 = 0x6843746567647562;
              v49 = 0xEB000000006B6365;
              break;
            case 4:
              v48 = 0x4364616F6C796170;
              v49 = 0xEF6E6F6974616572;
              break;
            case 5:
              v49 = 0xE600000000000000;
              v48 = 0x64616F6C7075;
              break;
            default:
              goto LABEL_54;
          }
        }

        else if (v47)
        {
          if (v47 == 1)
          {
            v48 = 0xD000000000000010;
            v49 = v104;
          }

          else
          {
            if (v47 == 2)
            {
              v48 = 0x7A696D6F646E6172;
              v49 = 0xED00006E6F697461;
              goto LABEL_57;
            }

LABEL_54:
            v49 = 0xE700000000000000;
            v48 = 0x746C7561666564;
          }
        }

        else
        {
          v49 = 0xE700000000000000;
          v48 = 0x6E776F6E6B6E75;
        }

LABEL_57:
        v120 = v48;
        v121 = v49;

        MEMORY[0x1E12CF820](v45, v46);

        v79 = v120;
        v80 = v121;
        v81 = v112;
        v108(v112 + *(v110 + 20), v118, v116);
        *v81 = v79;
        v81[1] = v80;
        sub_1DF15EAC4(v114);
        v82 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v82;
        v85 = sub_1DF175254(v117, v39);
        v86 = *(v82 + 16);
        v87 = (v84 & 1) == 0;
        v88 = v86 + v87;
        if (__OFADD__(v86, v87))
        {
          goto LABEL_76;
        }

        v89 = v84;
        if (*(v82 + 24) >= v88)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v92 = v120;
            if ((v84 & 1) == 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            sub_1DF1761EC();
            v92 = v120;
            if ((v89 & 1) == 0)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          sub_1DF1A73B4(v88, isUniquelyReferenced_nonNull_native, &qword_1ECE0CD88, &unk_1DF22FFA0);
          v90 = sub_1DF175254(v117, v39);
          if ((v89 & 1) != (v91 & 1))
          {
            goto LABEL_78;
          }

          v85 = v90;
          v92 = v120;
          if ((v89 & 1) == 0)
          {
LABEL_61:
            v92[(v85 >> 6) + 8] |= 1 << v85;
            v93 = (v92[6] + 16 * v85);
            *v93 = v117;
            v93[1] = v39;
            *(v92[7] + 8 * v85) = MEMORY[0x1E69E7CC0];
            v94 = v92[2];
            v95 = __OFADD__(v94, 1);
            v96 = v94 + 1;
            if (v95)
            {
              goto LABEL_77;
            }

            v92[2] = v96;
            goto LABEL_66;
          }
        }

LABEL_66:
        v115 = v92;
        v97 = v92[7];
        v98 = *(v97 + 8 * v85);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        *(v97 + 8 * v85) = v98;
        if ((v99 & 1) == 0)
        {
          v98 = sub_1DF17483C(0, v98[2] + 1, 1, v98);
          *(v97 + 8 * v85) = v98;
        }

        v101 = v98[2];
        v100 = v98[3];
        if (v101 >= v100 >> 1)
        {
          *(v97 + 8 * v85) = sub_1DF17483C(v100 > 1, v101 + 1, 1, v98);
        }

        (*v111)(v118, v116);
        v102 = *(v97 + 8 * v85);
        *(v102 + 16) = v101 + 1;
        sub_1DF1A89B4(v112, v102 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v101, type metadata accessor for LedgerState);
        v114 = sub_1DF15EAB4;
        v23 = v106;
        v24 = v113;
        v27 = &off_1E86AB000;
        v28 = &unk_1ED8E7000;
        goto LABEL_4;
      }

      if (v28[166] != -1)
      {
        swift_once();
      }

      v53 = sub_1DF22A8C0();
      __swift_project_value_buffer(v53, qword_1ED8E92C0);
      v54 = sub_1DF22A8A0();
      v55 = sub_1DF22B100();
      if (!os_log_type_enabled(v54, v55))
      {

        goto LABEL_36;
      }

      v56 = v24;
      v57 = v27;
      v58 = v23;
      v59 = v31;
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DF15A000, v54, v55, "Dedisco: No experiment identifiers", v60, 2u);
      MEMORY[0x1E12D0B40](v60, -1, -1);

      v23 = v58;
      v27 = v57;
      v24 = v56;
      v28 = &unk_1ED8E7000;
    }

    else
    {
      if (v28[166] != -1)
      {
        swift_once();
      }

      v50 = sub_1DF22A8C0();
      __swift_project_value_buffer(v50, qword_1ED8E92C0);
      v51 = sub_1DF22A8A0();
      v52 = sub_1DF22B100();
      if (!os_log_type_enabled(v51, v52))
      {

LABEL_36:
        goto LABEL_4;
      }

      v29 = v31;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DF15A000, v51, v52, "Dedisco: No identifiers", v30, 2u);
      MEMORY[0x1E12D0B40](v30, -1, -1);
    }

LABEL_4:
    ++v25;
    v26 += 2;
    if (v24 == v25)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t processDediscoEvents(dediscoEventMap:telemetryRange:dailyTelemetryResults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for TaskTelemetry(0);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for LedgerState();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for DediscoAnalytics();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4A8, &unk_1DF23A460);
  v3[21] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  v3[24] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v18 = sub_1DF22A800();
  v3[27] = v18;
  v19 = *(v18 - 8);
  v3[28] = v19;
  v20 = *(v19 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1A320C, 0, 0);
}

unint64_t sub_1DF1A320C()
{
  v179 = v0;
  v1 = v0[28];
  v174 = v0[24];
  v164 = v0[21];
  v157 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v155 = v0[11];
  v4 = v0[8];
  v160 = v0[9];
  v161 = v0[16];
  v5 = v0[7];
  v6 = sub_1DF1982D8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4B0, &qword_1DF2308D8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1DF1969C8(v6);

  v11 = v5 + 64;
  v12 = -1;
  v13 = -1 << *(v5 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v5 + 64);
  v167 = v10;
  v162 = *(*v10 + 112);
  v15 = (63 - v13) >> 6;
  v166 = (v1 + 16);
  v163 = (v1 + 32);
  v165 = (v1 + 8);
  v156 = v2;
  v158 = (v1 + 56);
  v159 = (v2 + 56);

  v168 = MEMORY[0x1E69E7CC0];
  v17 = 0;
  if (!v14)
  {
    while (1)
    {
LABEL_5:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
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
        return result;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v128 = v0[7];

LABEL_73:
    v130 = v0[29];
    v129 = v0[30];
    v132 = v0[25];
    v131 = v0[26];
    v134 = v0[22];
    v133 = v0[23];
    v136 = v0[19];
    v135 = v0[20];
    v137 = v0[18];
    v138 = v0[15];
    v177 = v0[12];

    v139 = v0[1];

    return v139(v168);
  }

  while (1)
  {
    v18 = v17;
LABEL_8:
    v19 = __clz(__rbit64(v14)) | (v18 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v175 = v20[1];
    v176 = *v20;
    v21 = *(*(v5 + 56) + 8 * v19);

    if (sub_1DF22B020())
    {
      v140 = v0[7];

      v168 = 0;
      goto LABEL_73;
    }

    v14 &= v14 - 1;
    v22 = *v0[8];
    v23 = *(v4 + 8);
    if (v23 > v22)
    {
      break;
    }

LABEL_10:

    v17 = v18;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  result = swift_beginAccess();
  v24 = 0;
  v146 = v4;
  v147 = v3;
  v145 = v5;
  v142 = v15;
  v143 = v11;
  v154 = v21;
  while (1)
  {
    v28 = __OFADD__(v24, 1);
    v29 = v24 + 1;
    if (v28)
    {
      goto LABEL_87;
    }

    v148 = v29;
    v30 = v0[29];
    v31 = v0[30];
    v32 = v0[27];
    sub_1DF22A720();
    sub_1DF22A760();
    sub_1DF1A8874();
    result = sub_1DF22AC60();
    if ((result & 1) == 0)
    {
      goto LABEL_88;
    }

    v169 = v0[30];
    v33 = v0[26];
    v34 = v0[27];
    v151 = v33;
    v36 = v0[22];
    v35 = v0[23];
    v37 = *v166;
    (*v166)(v35, v0[29], v34);
    v144 = v37;
    v37(v35 + *(v164 + 48), v169, v34);
    sub_1DF17A6A8(v35, v36, &qword_1ECE0D4A8, &unk_1DF23A460);
    v149 = *(v164 + 48);
    v170 = *v163;
    (*v163)(v33, v36, v34);
    v38 = *v165;
    (*v165)(v36 + v149, v34);
    sub_1DF17A710(v35, v36, &qword_1ECE0D4A8, &unk_1DF23A460);
    v170(v33 + *(v174 + 36), v36 + *(v164 + 48), v34);
    v150 = v38;
    v38(v36, v34);
    v39 = swift_task_alloc();
    *(v39 + 16) = v151;

    v40 = sub_1DF1A0B5C(sub_1DF1A88CC, v39, v154);

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v41 = v0[25];
    v42 = v0[26];
    v43 = sub_1DF22A8C0();
    __swift_project_value_buffer(v43, qword_1ED8E92C0);
    sub_1DF17A6A8(v42, v41, &qword_1ECE0EF40, &qword_1DF23AAB0);

    v44 = sub_1DF22A8A0();
    v45 = sub_1DF22B100();

    if (!os_log_type_enabled(v44, v45))
    {
      break;
    }

    v141 = v0[27];
    v46 = v0[25];
    v47 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v178[0] = v171;
    *v47 = 134218498;
    *(v47 + 4) = *(v40 + 16);

    v152 = v45;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_1DF160728(v176, v175, v178);
    *(v47 + 22) = 2080;
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_1DF22B3B0();
    MEMORY[0x1E12CF820](3943982, 0xE300000000000000);
    v48 = *(v174 + 36);
    sub_1DF22B3B0();
    v49 = v0[5];
    v50 = v0[6];
    sub_1DF16184C(v46, &qword_1ECE0EF40, &qword_1DF23AAB0);
    v51 = sub_1DF160728(v49, v50, v178);

    *(v47 + 24) = v51;
    _os_log_impl(&dword_1DF15A000, v44, v152, "%ld events for %s in %s.", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v171, -1, -1);
    MEMORY[0x1E12D0B40](v47, -1, -1);

    v4 = v146;
    v3 = v147;
    v5 = v145;
    if (*(v40 + 16))
    {
      goto LABEL_23;
    }

LABEL_13:
    v25 = v0[29];
    v26 = v0[30];
    v27 = v0[27];

    v150(v25, v27);
    v150(v26, v27);
LABEL_14:
    v24 = v148;
    result = sub_1DF16184C(v0[26], &qword_1ECE0EF40, &qword_1DF23AAB0);
    v15 = v142;
    v11 = v143;
    if (v23 <= v22 + v148 * 86400.0)
    {
      goto LABEL_10;
    }
  }

  v52 = v0[25];

  sub_1DF16184C(v52, &qword_1ECE0EF40, &qword_1DF23AAB0);
  v4 = v146;
  v3 = v147;
  v5 = v145;
  if (!*(v40 + 16))
  {
    goto LABEL_13;
  }

LABEL_23:
  v53 = v0[20];
  (*v159)(v53, 1, 1, v0[13]);
  sub_1DF1A4750(v53, type metadata accessor for DediscoAnalytics, type metadata accessor for DediscoAnalytics);
  sub_1DF16184C(v53, &qword_1ECE0CCF8, &qword_1DF22FF80);
  v54 = v40;
  v55 = *(v40 + 16);
  if (v55)
  {
    v56 = v54 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    v57 = *(v156 + 72);
    do
    {
      v58 = v0[15];
      sub_1DF1A88EC(v56, v58, type metadata accessor for LedgerState);
      sub_1DF1A4C90(v58, type metadata accessor for DediscoAnalytics, type metadata accessor for DediscoAnalytics);
      sub_1DF1A8954(v58, type metadata accessor for LedgerState);
      v56 += v57;
      --v55;
    }

    while (v55);
  }

  v59 = v0[29];
  v172 = v0[30];
  v60 = v0[27];
  v61 = v0[19];
  sub_1DF1A88EC(&v167[v162], v61, type metadata accessor for DediscoAnalytics);
  v62 = (v61 + v161[8]);
  v63 = v62[1];

  *v62 = v176;
  v62[1] = v175;
  v64 = v161[9];
  sub_1DF16184C(v61 + v64, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v144(v61 + v64, v59, v60);
  v65 = *v158;
  (*v158)(v61 + v64, 0, 1, v60);
  v66 = v161[10];
  sub_1DF16184C(v61 + v66, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v144(v61 + v66, v172, v60);
  v67 = v61 + v66;
  v68 = v175;
  v65(v67, 0, 1, v60);
  v69 = *(v160 + 16);
  v3 = v147;
  if (!v69)
  {
LABEL_67:
    sub_1DF1A88EC(v0[19], v0[18], type metadata accessor for DediscoAnalytics);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_1DF174888(0, v168[2] + 1, 1, v168);
    }

    v124 = v168[2];
    v123 = v168[3];
    if (v124 >= v123 >> 1)
    {
      v168 = sub_1DF174888(v123 > 1, v124 + 1, 1, v168);
    }

    v125 = v0[30];
    v126 = v0[27];
    v127 = v0[18];
    v153 = v0[19];
    v150(v0[29], v126);
    v150(v125, v126);
    v168[2] = v124 + 1;
    sub_1DF1A89B4(v127, v168 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v124, type metadata accessor for DediscoAnalytics);
    sub_1DF1A8954(v153, type metadata accessor for DediscoAnalytics);
    v5 = v145;
    v4 = v146;
    goto LABEL_14;
  }

  v70 = v0[9] + ((*(v155 + 80) + 32) & ~*(v155 + 80));
  v173 = *(v155 + 72);
  while (2)
  {
    v71 = v0[12];
    sub_1DF1A88EC(v70, v71, type metadata accessor for TaskTelemetry);
    v72 = (v71 + v147[7]);
    v73 = *v72 == v176 && v72[1] == v68;
    if (!v73 && (sub_1DF22B620() & 1) == 0 || (v74 = v0[8], v75 = v0[12] + v147[5], v76 = *(v174 + 36), v77 = *(type metadata accessor for TelemetryBucketRange() + 28), (sub_1DF22A7B0() & 1) == 0))
    {
LABEL_30:
      sub_1DF1A8954(v0[12], type metadata accessor for TaskTelemetry);
      v70 += v173;
      if (!--v69)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v78 = v0[19];
  v79 = *(v0[12] + v147[10]);
  v80 = *v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v78;
  v178[0] = v82;
  result = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
  v84 = v82[2];
  v85 = (v83 & 1) == 0;
  v28 = __OFADD__(v84, v85);
  v86 = v84 + v85;
  if (v28)
  {
    goto LABEL_81;
  }

  v87 = v83;
  if (v82[3] >= v86)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_42;
    }

    v89 = result;
    sub_1DF176390();
    result = v89;
    v82 = v178[0];
    if ((v87 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_43:
    *(v82[7] + 8 * result) = v79;
  }

  else
  {
    sub_1DF1A63D0(v86, isUniquelyReferenced_nonNull_native);
    v82 = v178[0];
    result = sub_1DF175254(0x6574656C706D6F43, 0xE900000000000064);
    if ((v87 & 1) != (v88 & 1))
    {
      goto LABEL_77;
    }

LABEL_42:
    if (v87)
    {
      goto LABEL_43;
    }

LABEL_45:
    v82[(result >> 6) + 8] |= 1 << result;
    v90 = (v82[6] + 16 * result);
    *v90 = 0x6574656C706D6F43;
    v90[1] = 0xE900000000000064;
    *(v82[7] + 8 * result) = v79;
    v91 = v82[2];
    v28 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v28)
    {
      goto LABEL_84;
    }

    v82[2] = v92;
  }

  v93 = v0[19];
  v94 = v0[12];
  *v93 = v82;
  v95 = *(v94 + v147[11]);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v178[0] = *v93;
  v97 = v178[0];
  result = sub_1DF175254(0x64656C696146, 0xE600000000000000);
  v99 = v97[2];
  v100 = (v98 & 1) == 0;
  v28 = __OFADD__(v99, v100);
  v101 = v99 + v100;
  if (v28)
  {
    goto LABEL_82;
  }

  v102 = v98;
  if (v97[3] >= v101)
  {
    if (v96)
    {
      goto LABEL_52;
    }

    v104 = result;
    sub_1DF176390();
    result = v104;
    v97 = v178[0];
    if ((v102 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_53:
    *(v97[7] + 8 * result) = v95;
  }

  else
  {
    sub_1DF1A63D0(v101, v96);
    v97 = v178[0];
    result = sub_1DF175254(0x64656C696146, 0xE600000000000000);
    if ((v102 & 1) != (v103 & 1))
    {
      goto LABEL_77;
    }

LABEL_52:
    if (v102)
    {
      goto LABEL_53;
    }

LABEL_55:
    v97[(result >> 6) + 8] |= 1 << result;
    v105 = (v97[6] + 16 * result);
    *v105 = 0x64656C696146;
    v105[1] = 0xE600000000000000;
    *(v97[7] + 8 * result) = v95;
    v106 = v97[2];
    v28 = __OFADD__(v106, 1);
    v107 = v106 + 1;
    if (v28)
    {
      goto LABEL_85;
    }

    v97[2] = v107;
  }

  v108 = v0[19];
  v109 = v0[12];
  *v108 = v97;
  v110 = *(v109 + v147[12]);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v178[0] = *v108;
  v112 = v178[0];
  result = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
  v114 = v112[2];
  v115 = (v113 & 1) == 0;
  v28 = __OFADD__(v114, v115);
  v116 = v114 + v115;
  if (v28)
  {
    goto LABEL_83;
  }

  v117 = v113;
  if (v112[3] >= v116)
  {
    if ((v111 & 1) == 0)
    {
      v122 = result;
      sub_1DF176390();
      result = v122;
      v112 = v178[0];
      if ((v117 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_28;
    }

LABEL_62:
    if ((v117 & 1) == 0)
    {
LABEL_63:
      v112[(result >> 6) + 8] |= 1 << result;
      v119 = (v112[6] + 16 * result);
      *v119 = 0x6465727265666544;
      v119[1] = 0xE800000000000000;
      *(v112[7] + 8 * result) = v110;
      v120 = v112[2];
      v28 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v28)
      {
        goto LABEL_86;
      }

      v112[2] = v121;
      goto LABEL_29;
    }

LABEL_28:
    *(v112[7] + 8 * result) = v110;
LABEL_29:
    *v0[19] = v112;
    v68 = v175;
    goto LABEL_30;
  }

  sub_1DF1A63D0(v116, v111);
  v112 = v178[0];
  result = sub_1DF175254(0x6465727265666544, 0xE800000000000000);
  if ((v117 & 1) == (v118 & 1))
  {
    goto LABEL_62;
  }

LABEL_77:

  return sub_1DF22B660();
}

uint64_t sub_1DF1A420C()
{
  v0 = *(type metadata accessor for LedgerState() + 20);
  sub_1DF22A800();
  sub_1DF1A8874();
  if (sub_1DF22AC50())
  {
    v1 = 0;
  }

  else
  {
    v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0) + 36);
    v1 = sub_1DF22AC50() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1DF1A42BC(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for LedgerState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLHostAnalytics();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = *(v3 + 56);
  v17(&v25 - v15, 1, 1, v2);
  v18 = qword_1ECE0F348;
  swift_beginAccess();
  v26 = v18;
  sub_1DF1936EC(v16, v1 + v18, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v19 = MEMORY[0x1E69E7CC0];
  *v9 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v9[1] = sub_1DF18FD18(v19);
  v17(v9 + *(v6 + 24), 1, 1, v2);
  v27 = v6;
  v17(v9 + *(v6 + 28), 1, 1, v2);
  v20 = v1 + *(*v1 + 112);
  swift_beginAccess();
  sub_1DF1A8A1C(v9, v20, type metadata accessor for MLHostAnalytics);
  swift_endAccess();
  sub_1DF17A6A8(v29, v14, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {
    return sub_1DF16184C(v14, &qword_1ECE0CCF8, &qword_1DF22FF80);
  }

  v22 = v28;
  sub_1DF1A89B4(v14, v28, type metadata accessor for LedgerState);
  sub_1DF1A88EC(v22, v16, type metadata accessor for LedgerState);
  v17(v16, 0, 1, v2);
  v23 = v26;
  swift_beginAccess();
  sub_1DF1936EC(v16, v1 + v23, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  sub_1DF1A88EC(v22, v16, type metadata accessor for LedgerState);
  v17(v16, 0, 1, v2);
  swift_beginAccess();
  v24 = v27;
  sub_1DF1936EC(v16, v20 + *(v27 + 24), &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF1A88EC(v22, v16, type metadata accessor for LedgerState);
  v17(v16, 0, 1, v2);
  sub_1DF1936EC(v16, v20 + *(v24 + 28), &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  return sub_1DF1A8954(v22, type metadata accessor for LedgerState);
}

uint64_t sub_1DF1A4750(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v43 = a3;
  v44 = a1;
  v5 = type metadata accessor for LedgerState();
  v42 = *(v5 - 8);
  v6 = v42;
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v38 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v19 = *(v6 + 56);
  v19(&v38 - v17, 1, 1, v5);
  v20 = qword_1ECE0F348;
  swift_beginAccess();
  v38 = v20;
  sub_1DF1936EC(v18, v3 + v20, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v21 = MEMORY[0x1E69E7CC0];
  *v12 = sub_1DF18FC1C(MEMORY[0x1E69E7CC0]);
  v12[1] = sub_1DF18FD18(v21);
  v19(v12 + v9[6], 1, 1, v5);
  v22 = v12 + v9[7];
  v39 = v19;
  v19(v22, 1, 1, v5);
  v23 = (v12 + v9[8]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v9[9];
  v25 = sub_1DF22A800();
  v26 = *(*(v25 - 8) + 56);
  v27 = v12 + v24;
  v28 = v3;
  v29 = v9;
  v26(v27, 1, 1, v25);
  v26(v12 + v9[10], 1, 1, v25);
  v30 = v41;
  v31 = v5;
  v32 = v28 + *(*v28 + 112);
  swift_beginAccess();
  sub_1DF1A8A1C(v12, v32, v43);
  swift_endAccess();
  sub_1DF17A6A8(v44, v30, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v42 + 48))(v30, 1, v5) == 1)
  {
    return sub_1DF16184C(v30, &qword_1ECE0CCF8, &qword_1DF22FF80);
  }

  v34 = v30;
  v35 = v40;
  sub_1DF1A89B4(v34, v40, type metadata accessor for LedgerState);
  sub_1DF1A88EC(v35, v18, type metadata accessor for LedgerState);
  v36 = v39;
  v39(v18, 0, 1, v5);
  v37 = v38;
  swift_beginAccess();
  sub_1DF1936EC(v18, v28 + v37, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  sub_1DF1A88EC(v35, v18, type metadata accessor for LedgerState);
  v36(v18, 0, 1, v31);
  swift_beginAccess();
  sub_1DF1936EC(v18, v32 + v29[6], &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF1A88EC(v35, v18, type metadata accessor for LedgerState);
  v36(v18, 0, 1, v31);
  sub_1DF1936EC(v18, v32 + v29[7], &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  return sub_1DF1A8954(v35, type metadata accessor for LedgerState);
}

uint64_t sub_1DF1A4C90(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v83 = a3;
  v80 = a2;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v79 - v11;
  v13 = type metadata accessor for LedgerState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v82 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v81 = (&v79 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v79 - v20);
  v22 = qword_1ECE0F348;
  swift_beginAccess();
  sub_1DF17A6A8(v4 + v22, v12, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_1DF1A89B4(v12, v21, type metadata accessor for LedgerState);
    v38 = v4[2];
    v32 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = *a1;
    if (sub_1DF222EC4(*v21, v21[1], *a1, v32))
    {
      sub_1DF1A55C8(v21, a1, v80);
      sub_1DF1A88EC(a1, v10, type metadata accessor for LedgerState);
      (*(v14 + 56))(v10, 0, 1, v13);
      swift_beginAccess();
      sub_1DF1936EC(v10, v4 + v22, &qword_1ECE0CCF8, &qword_1DF22FF80);
LABEL_39:
      swift_endAccess();
      return sub_1DF1A8954(v21, type metadata accessor for LedgerState);
    }

    if (qword_1ED8E7530 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v21 = &qword_1DF22FF80;
  sub_1DF16184C(v12, &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF1A88EC(a1, v10, type metadata accessor for LedgerState);
  v23 = *(v14 + 56);
  v24 = v14 + 56;
  v25 = v13;
  v80 = v23;
  v81 = v24;
  (v23)(v10, 0, 1, v13);
  swift_beginAccess();
  sub_1DF1936EC(v10, v4 + v22, &qword_1ECE0CCF8, &qword_1DF22FF80);
  swift_endAccess();
  v26 = *a1;
  v27 = *(a1 + 8);
  v82 = a1;
  a1 = v26;
  v4 = (v4 + *(*v4 + 112));
  swift_beginAccess();

  v28 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v4;
  v30 = v84;
  *v4 = 0x8000000000000000;
  v32 = sub_1DF175254(a1, v27);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_10:
    v39 = sub_1DF22A8C0();
    __swift_project_value_buffer(v39, qword_1ED8E92C0);
    v40 = v81;
    sub_1DF1A88EC(v21, v81, type metadata accessor for LedgerState);
    v41 = v82;
    sub_1DF1A88EC(a1, v82, type metadata accessor for LedgerState);
    v42 = sub_1DF22A8A0();
    v43 = sub_1DF22B100();
    v44 = os_log_type_enabled(v42, v43);
    v83 = isUniquelyReferenced_nonNull_native;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85[0] = v79;
      *v45 = 136315394;
      v47 = *v40;
      v46 = v40[1];

      v80 = v21;
      sub_1DF1A8954(v40, type metadata accessor for LedgerState);
      v48 = sub_1DF160728(v47, v46, v85);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = *v41;
      v50 = v41[1];

      v21 = v80;
      sub_1DF1A8954(v41, type metadata accessor for LedgerState);
      a1 = sub_1DF160728(v49, v50, v85);

      *(v45 + 14) = a1;
      _os_log_impl(&dword_1DF15A000, v42, v43, "Invalid StateMachine transition, incrementing state: %s -> %s", v45, 0x16u);
      v51 = v79;
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v51, -1, -1);
      MEMORY[0x1E12D0B40](v45, -1, -1);
    }

    else
    {

      sub_1DF1A8954(v41, type metadata accessor for LedgerState);
      sub_1DF1A8954(v40, type metadata accessor for LedgerState);
    }

    v27 = *(*v4 + 112);
    swift_beginAccess();

    v52 = *(v4 + v27);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v4 + v27);
    v25 = v84;
    *(v4 + v27) = 0x8000000000000000;
    v10 = sub_1DF175254(v83, v32);
    v55 = v25[2];
    v56 = (v54 & 1) == 0;
    v57 = v55 + v56;
    if (!__OFADD__(v55, v56))
    {
      LOBYTE(a1) = v54;
      if (v25[3] >= v57)
      {
        if (v53)
        {
          *(v4 + v27) = v25;
          if ((v54 & 1) == 0)
          {
LABEL_35:
            sub_1DF226334(&v84);
            v25[(v10 >> 6) + 8] |= 1 << v10;
            v72 = (v25[6] + 16 * v10);
            v73 = v84;
            *v72 = v83;
            v72[1] = v32;
            *(v25[7] + 8 * v10) = v73;
            v74 = v25[2];
            v63 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v63)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v25[2] = v75;
LABEL_37:
            v76 = v25[7];
            v77 = *(v76 + 8 * v10);
            v63 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (!v63)
            {
              *(v76 + 8 * v10) = v78;
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_23:

          goto LABEL_37;
        }

LABEL_34:
        sub_1DF176390();
        v25 = v84;
        *(v4 + v27) = v84;
        if ((a1 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      sub_1DF1A63D0(v57, v53);
      v25 = v84;
      v58 = sub_1DF175254(v83, v32);
      if ((a1 & 1) == (v59 & 1))
      {
        v10 = v58;
        *(v4 + v27) = v25;
        if ((a1 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_27;
  }

  v21 = v31;
  if (v30[3] >= v35)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v4 = v30;
      if (v31)
      {
        goto LABEL_14;
      }

LABEL_28:
      sub_1DF226334(&v84);
      v60 = v84;
      v30[(v32 >> 6) + 8] |= 1 << v32;
      v61 = (v30[6] + 16 * v32);
      *v61 = a1;
      v61[1] = v27;
      *(v30[7] + 8 * v32) = v60;
      v62 = v30[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v30[2] = v64;
LABEL_30:
      v65 = v30[7];
      v66 = *(v65 + 8 * v32);
      v63 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (!v63)
      {
        *(v65 + 8 * v32) = v67;
        swift_endAccess();
        v68 = v82;
        sub_1DF1A88EC(v82, v10, type metadata accessor for LedgerState);
        v69 = v80;
        (v80)(v10, 0, 1, v25);
        swift_beginAccess();
        v70 = v83(0);
        sub_1DF1936EC(v10, v4 + *(v70 + 24), &qword_1ECE0CCF8, &qword_1DF22FF80);
        sub_1DF1A88EC(v68, v10, type metadata accessor for LedgerState);
        (v69)(v10, 0, 1, v25);
        sub_1DF1936EC(v10, v4 + *(v70 + 28), &qword_1ECE0CCF8, &qword_1DF22FF80);
        return swift_endAccess();
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_27:
    sub_1DF176390();
    v30 = v84;
    *v4 = v84;
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  sub_1DF1A63D0(v35, isUniquelyReferenced_nonNull_native);
  v30 = v84;
  v36 = sub_1DF175254(a1, v27);
  if ((v21 & 1) == (v37 & 1))
  {
    v32 = v36;
    *v4 = v30;
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_14:

    goto LABEL_30;
  }

LABEL_42:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t sub_1DF1A55C8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v57 - v10);
  v12 = a1[1];
  v60 = *a1;
  v14 = *a2;
  v13 = a2[1];
  v59 = type metadata accessor for LedgerState();
  v15 = *(v59 + 20);
  swift_bridgeObjectRetain_n();

  sub_1DF22A7F0();
  v17 = v16;
  v18 = (v5 + *(*v5 + 112));
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v18;
  v21 = v61;
  *v18 = 0x8000000000000000;
  v22 = sub_1DF175254(v14, v13);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v23;
  if (v21[3] < v27)
  {
    sub_1DF1A63D0(v27, v20);
    v21 = v61;
    v22 = sub_1DF175254(v14, v13);
    if ((v5 & 1) == (v28 & 1))
    {
      goto LABEL_6;
    }

    v22 = sub_1DF22B660();
    __break(1u);
  }

  if ((v20 & 1) == 0)
  {
LABEL_9:
    v20 = a2;
    v29 = v11;
    v30 = a3;
    v31 = v22;
    sub_1DF176390();
    v22 = v31;
    a3 = v30;
    v11 = v29;
    a2 = v20;
    v21 = v61;
    *v18 = v61;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  *v18 = v21;
  if (v5)
  {
LABEL_7:
    v5 = v22;

    v22 = v5;
    goto LABEL_12;
  }

LABEL_10:
  v21[(v22 >> 6) + 8] |= 1 << v22;
  v32 = (v21[6] + 16 * v22);
  *v32 = v14;
  v32[1] = v13;
  *(v21[7] + 8 * v22) = 0;
  v33 = v21[2];
  v26 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v26)
  {
    goto LABEL_31;
  }

  v21[2] = v34;
LABEL_12:
  v35 = v21[7];
  v36 = *(v35 + 8 * v22);
  v26 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_29;
  }

  v58 = a2;
  a2 = v11;
  v11 = a3;
  *(v35 + 8 * v22) = v37;
  swift_endAccess();
  swift_beginAccess();
  v38 = v18[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v18[1];
  v40 = v61;
  v18[1] = 0x8000000000000000;
  v5 = sub_1DF1752CC(v60, v12, v14, v13);
  v42 = v40[2];
  v43 = (v41 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v20) = v41;
  if (v40[3] < v44)
  {
    sub_1DF1A60CC(v44, isUniquelyReferenced_nonNull_native);
    v40 = v61;
    v45 = sub_1DF1752CC(v60, v12, v14, v13);
    if ((v20 & 1) == (v46 & 1))
    {
      v5 = v45;
      goto LABEL_18;
    }

    goto LABEL_34;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
LABEL_18:
    v47 = v11;
    v18[1] = v40;
    v11 = a2;
    if (v20)
    {

      a2 = v58;
      goto LABEL_22;
    }

    v40[(v5 >> 6) + 8] |= 1 << v5;
    v48 = (v40[6] + 32 * v5);
    *v48 = v60;
    v48[1] = v12;
    v48[2] = v14;
    v48[3] = v13;
    v49 = (v40[7] + 32 * v5);
    *v49 = 0x7FEFFFFFFFFFFFFFLL;
    v49[1] = 0;
    v49[2] = 0;
    v49[3] = 0;
    v50 = v40[2];
    v26 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    a2 = v58;
    if (v26)
    {
      break;
    }

    v40[2] = v51;
LABEL_22:
    v52 = v40[7] + 32 * v5;
    if (v17 < *v52)
    {
      *v52 = v17;
    }

    if (*(v52 + 8) < v17)
    {
      *(v52 + 8) = v17;
    }

    v53 = *(v52 + 24);
    v26 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (!v26)
    {
      *(v52 + 24) = v54;
      *(v52 + 16) = *(v52 + 16) + (v17 - *(v52 + 16)) / v54;
      swift_endAccess();
      sub_1DF1A88EC(a2, v11, type metadata accessor for LedgerState);
      (*(*(v59 - 8) + 56))(v11, 0, 1);
      swift_beginAccess();
      v55 = (v47)(0);
      sub_1DF1936EC(v11, v18 + *(v55 + 28), &qword_1ECE0CCF8, &qword_1DF22FF80);
      return swift_endAccess();
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1DF176200();
    v40 = v61;
  }

  __break(1u);
LABEL_34:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t sub_1DF1A5AA4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v52 = a3;
  v53 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v50 = a2;
  result = sub_1DF22B3E0();
  v18 = result;
  if (*(v15 + 16))
  {
    v47 = v9;
    v48 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v49 + 72);
      v37 = v32 + v36 * v31;
      if (v50)
      {
        sub_1DF17A710(v37, v51, v52, v53);
      }

      else
      {
        sub_1DF17A6A8(v37, v51, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v34;
      v27[1] = v35;
      result = sub_1DF17A710(v51, *(v18 + 56) + v36 * v26, v52, v53);
      ++*(v18 + 16);
      v15 = v48;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v47;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_1DF1A5E14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA0, &qword_1DF22D7A0);
  v39 = a2;
  result = sub_1DF22B3E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DF1A60CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD0, &qword_1DF22D6C8);
  v42 = a2;
  result = sub_1DF22B3E0();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 32 * (v20 | (v9 << 6));
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      v45 = v25[2];
      v29 = (v24 + v23);
      v44 = *v29;
      v30 = *(v29 + 2);
      v43 = *(v29 + 3);
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v8 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 32 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v26;
      v18[1] = v27;
      v18[2] = v45;
      v18[3] = v28;
      v19 = *(v8 + 56) + v17;
      *v19 = v44;
      *(v19 + 16) = v30;
      *(v19 + 24) = v43;
      ++*(v8 + 16);
      v5 = v41;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DF1A63D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD78, &qword_1DF22D770);
  v38 = a2;
  result = sub_1DF22B3E0();
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
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
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