id sub_245249D88()
{
  v1 = v0;
  v2 = *(v0 + 192);
  v3 = [v2 isCurrentDevice];
  swift_getKeyPath();
  if (v3)
  {
    sub_245235F6C();
    sub_24525417C();

    if (*(v1 + 208) == 1)
    {
      v4 = *(v1 + 120);
      v5 = [v4 hasLocalSecret];
      [v2 localSecretType];
      v6 = [v4 deviceClass];
      if (v5)
      {
        if (v6)
        {
          v7 = v6;
          v8 = sub_24525518C();
          v10 = v9;
        }

        else
        {
          v8 = 0;
          v10 = 0;
        }

        sub_24523A584(v8, v10, 0, 0xD000000000000042);

        v31 = [objc_opt_self() bundle];
      }

      else
      {
        if (v6)
        {
          v27 = v6;
          v28 = sub_24525518C();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        sub_24523A584(v28, v30, 0, 0xD00000000000003ELL);

        v31 = [objc_opt_self() bundle];
      }

LABEL_26:
      v40 = v31;
      v39 = sub_2452540EC();

      return v39;
    }

LABEL_11:
    [v2 localSecretType];
    v17 = [*(v1 + 120) deviceClass];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24525518C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_24523A584(v19, v21, 0, 0xD000000000000035);

    v31 = [objc_opt_self() bundle];
    goto LABEL_26;
  }

  v41 = v1;
  sub_245235F6C();
  sub_24525417C();

  v11 = *(v1 + 208);
  v12 = [v2 localSecretType];
  if (v11 == 1)
  {
    v13 = "_SUBTITLE_PASSWORD";
    if (v12 == 2)
    {
      v13 = "ER_DEVICE_SUBTITLE_PASSCODE";
    }

    v1 = v13 | 0x8000000000000000;
    v14 = [objc_opt_self() bundle];
    sub_2452540EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24525DE30;
    result = [v2 localizedName];
    if (!result)
    {
      __break(1u);
      goto LABEL_11;
    }

LABEL_21:
    v35 = result;
    v36 = sub_24525518C();
    v38 = v37;

    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_24524DBE8();
    *(v15 + 32) = v36;
    *(v15 + 40) = v38;
    v39 = sub_24525519C();

    return v39;
  }

  v22 = [*(v1 + 120) deviceClass];
  if (v22)
  {
    v23 = v22;
    v24 = sub_24525518C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_24523A584(v24, v26, 0, 0xD000000000000032);
  v33 = v32;

  v34 = [objc_opt_self() bundle];
  sub_2452540EC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24525DE30;
  result = [v2 localizedName];
  if (result)
  {
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_24524A36C()
{
  v1 = *(v0 + 192);
  v2 = [v1 modelClass];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24525518C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_24523A584(v4, v6, 1, 0xD000000000000020);

  if ([v1 localSecretType] == 2)
  {

    v7 = 0x524F57535341505FLL;
    v8 = 0xE900000000000044;
  }

  else
  {

    v7 = 0x444F43535341505FLL;
    v8 = 0xE900000000000045;
  }

  MEMORY[0x245D65CD0](v7, v8);

  v9 = [objc_opt_self() bundle];
  v10 = sub_2452540EC();

  return v10;
}

uint64_t sub_24524A514()
{
  v1 = v0;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  if (*(v0 + 256) == 1)
  {
    v2 = [objc_opt_self() bundle];
    v3 = sub_2452540EC();
  }

  else
  {
    v4 = *(v0 + 96);
    if (sub_24521FFAC(3u, *(v1 + 96)) || sub_24521FFAC(2u, v4))
    {
      sub_245217E28(0, &qword_27EE0EC90);
      v5 = sub_2452552AC();
      [v5 prevailingLocalSecretType];
    }

    else
    {
      [*(v1 + 192) localSecretType];
    }

    v2 = [objc_opt_self() bundle];
    v3 = sub_2452540EC();
  }

  return v3;
}

void sub_24524A798()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_245235F6C();
  sub_24525417C();

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong remoteSecretEntryDidRequestDisableUserInteractionAndStartSpinner];

  if (*(v1 + 72) == 1)
  {
    *(v1 + 72) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    aBlock[0] = v1;
    sub_24525416C();
  }

  v4 = *(v1 + 88);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_24525417C();

  v5 = sub_24525515C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F110);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24525DE30;
  v7 = *(v1 + 192);
  *(v6 + 56) = sub_245217E28(0, &qword_27EE0EC90);
  *(v6 + 32) = v7;
  v8 = v7;
  v9 = sub_2452552AC();

  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24524DC4C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24524B854;
  aBlock[3] = &block_descriptor_8;
  v11 = _Block_copy(aBlock);

  [v4 validateSecret:v5 devices:v9 type:0 withCompletion:v11];
  _Block_release(v11);
}

void sub_24524AA60(char a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      swift_getKeyPath();
      v57 = v7;
      sub_245235F6C();
      sub_24525417C();

      v8 = swift_unknownObjectWeakLoadStrong();
      [v8 remoteSecretEntryDidAcceptValidSecret];
      goto LABEL_4;
    }

    if (*(Strong + 72))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v57 = v7;
      sub_245235F6C();
      sub_24525416C();
    }

    else
    {
      *(Strong + 72) = 0;
    }

    swift_getKeyPath();
    v57 = v7;
    sub_245235F6C();
    sub_24525417C();

    v14 = swift_unknownObjectWeakLoadStrong();
    [v14 remoteSecretEntryDidRequestEnableUserInteractionAndStopSpinner];

    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v15 = sub_24525420C();
    __swift_project_value_buffer(v15, qword_27EE11750);
    v16 = sub_2452541EC();
    v17 = sub_24525536C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2451DB000, v16, v17, "Remote Secret attempt is invalid.", v18, 2u);
      MEMORY[0x245D66A70](v18, -1, -1);
    }

    swift_getKeyPath();
    sub_24525417C();

    v57 = v7;
    swift_getKeyPath();
    sub_24525419C();

    v19 = *(v7 + 200);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (!v20)
    {
      *(v7 + 200) = v21;
      v57 = v7;
      swift_getKeyPath();
      sub_24525418C();

      v22 = [*(v7 + 192) remainingAttempts];
      v23 = v22 == 0;
      [*(v7 + 192) setRemainingAttempts_];
      if ((a2 & 1) != 0 && !v23)
      {
        v24 = sub_2452541EC();
        v25 = sub_24525536C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_2451DB000, v24, v25, "User can retry Remote Secret attempt.", v26, 2u);
          MEMORY[0x245D66A70](v26, -1, -1);
        }

        v27 = [objc_opt_self() currentDevice];
        v28 = [v27 userInterfaceIdiom];

        if (v28 || (sub_24524B5E4() & 1) != 0)
        {
          sub_24524B918(a3);
        }

        else
        {
          sub_24525509C();
          sub_24525442C();
        }

        sub_245246898(0, 0xE000000000000000);
        goto LABEL_49;
      }

      sub_245246898(0, 0xE000000000000000);
      v29 = a3;
      v30 = sub_2452541EC();
      v31 = sub_24525537C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v56 = a3;
        v57 = v33;
        *v32 = 136315138;
        v34 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F118);
        v35 = sub_2452551AC();
        v37 = sub_24524031C(v35, v36, &v57);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_2451DB000, v30, v31, "User cannot retry Remote Secret attempt due to: %s.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x245D66A70](v33, -1, -1);
        MEMORY[0x245D66A70](v32, -1, -1);
      }

      if (a3)
      {
        v57 = a3;
        v38 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBD8);
        sub_245217E28(0, &qword_27EE0F108);
        if (swift_dynamicCast())
        {
          v39 = [v56 domain];
          v40 = sub_24525518C();
          v42 = v41;

          if (v40 == sub_24525518C() && v42 == v43)
          {

            goto LABEL_35;
          }

          v44 = sub_2452555BC();

          if (v44)
          {
LABEL_35:
            v45 = [v56 code];
            if (v45 <= -5210)
            {
              if (v45 > -5219)
              {
                if (v45 == -5218)
                {
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v49 = swift_unknownObjectWeakLoadStrong();
                  [v49 remoteSecretEntryDidRequestCustodianRecovery];
                  goto LABEL_62;
                }

                if (v45 == -5212)
                {
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v49 = swift_unknownObjectWeakLoadStrong();
                  [v49 remoteSecretEntryDidRequestRecoveryKeyRecovery];
                  goto LABEL_62;
                }
              }

              else
              {
                if (v45 == -5223)
                {
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v49 = swift_unknownObjectWeakLoadStrong();
                  [v49 remoteSecretEntryDidRequestPiggybacking];
                  goto LABEL_62;
                }

                if (v45 == -5221)
                {
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v49 = swift_unknownObjectWeakLoadStrong();
                  [v49 remoteSecretEntryDidRequestDeviceSelection];
                  goto LABEL_62;
                }
              }
            }

            else if (v45 <= -5207)
            {
              if (v45 == -5209)
              {
                swift_getKeyPath();
                v57 = v7;
                sub_24525417C();

                v49 = swift_unknownObjectWeakLoadStrong();
                [v49 remoteSecretEntryDidRequestRemoteApproval];
                goto LABEL_62;
              }

              if (v45 == -5208)
              {
                swift_getKeyPath();
                v57 = v7;
                sub_24525417C();

                v49 = swift_unknownObjectWeakLoadStrong();
                [v49 remoteSecretEntryDidRequestAccountReset];
                goto LABEL_62;
              }
            }

            else
            {
              switch(v45)
              {
                case -5200:
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v51 = swift_unknownObjectWeakLoadStrong();
                  if (v51)
                  {
                    v52 = v51;
                    v53 = v56;
                    v54 = sub_2452540FC();

                    [v52 remoteSecretEntryDidFinishValidationWithError_];

                    return;
                  }

                  goto LABEL_63;
                case -5203:
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v49 = swift_unknownObjectWeakLoadStrong();
                  [v49 remoteSecretEntryDidExceedMaximumAttempts];
                  goto LABEL_62;
                case -5206:
                  swift_getKeyPath();
                  v57 = v7;
                  sub_24525417C();

                  v46 = swift_unknownObjectWeakLoadStrong();
                  if (v46)
                  {
                    v47 = v46;
                    v48 = *(v7 + 192);
                    [v47 remoteSecretEntryDidDepleteRemainingAttemptsForDevice_];

                    return;
                  }

                  goto LABEL_63;
              }
            }

            swift_getKeyPath();
            v57 = v7;
            sub_24525417C();

            v55 = swift_unknownObjectWeakLoadStrong();
            if (!v55)
            {
              goto LABEL_63;
            }

            v49 = v55;
            [v55 dismissViewControllerAnimated:1 completion:0];
LABEL_62:

LABEL_63:

            return;
          }
        }
      }

      swift_getKeyPath();
      v57 = v7;
      sub_24525417C();

      v50 = swift_unknownObjectWeakLoadStrong();
      if (!v50)
      {
        goto LABEL_49;
      }

      v8 = v50;
      [v50 remoteSecretEntryDidFinishValidationWithError_];
LABEL_4:

LABEL_49:

      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v9 = sub_24525420C();
    __swift_project_value_buffer(v9, qword_27EE11750);
    v10 = sub_2452541EC();
    v11 = sub_24525538C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2451DB000, v10, v11, "RemoteSecretViewModel was deallocated while validating secret. Cannot continue.", v12, 2u);
      MEMORY[0x245D66A70](v12, -1, -1);
    }
  }
}

uint64_t sub_24524B5E4()
{
  v8[1] = *MEMORY[0x277D85DE8];
  result = [*(v0 + 120) hasLocalSecret];
  if (result)
  {
    swift_getKeyPath();
    v8[0] = v0;
    sub_245235F6C();
    sub_24525417C();

    if ((*(v0 + 208) & 1) == 0)
    {
      v2 = *(v0 + 240);
      swift_getKeyPath();
      sub_24525417C();

      v3 = sub_24525515C();

      v8[0] = 0;
      v4 = [v2 unlockDeviceWithPasscode:v3 outError:v8];

      if (v4)
      {
        v5 = v8[0];
        return 1;
      }

      v6 = v8[0];
      v7 = sub_24525410C();

      swift_willThrow();
    }

    return 0;
  }

  return result;
}

uint64_t sub_24524B760(uint64_t a1)
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  swift_getKeyPath();
  sub_24525419C();

  v3 = *(a1 + 248);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 248) = v5;
    swift_getKeyPath();
    sub_24525418C();
  }

  return result;
}

void sub_24524B854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void sub_24524B918(void *a1)
{
  if (a1)
  {
    v2 = sub_24524BB4C(a1);
    v4 = v3;
    v6 = v5;
    v8 = v7;
    if (v1[73] == 1)
    {
      v1[73] = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v13[0] = v13;
      MEMORY[0x28223BE20](KeyPath);
      v14 = v1;
      sub_245235F6C();
      sub_24525416C();
    }

    v14 = v2;
    v15 = v4;
    v16 = v6;
    v17 = v8;
    v18 = 1;
    v12 = swift_getKeyPath();
    MEMORY[0x28223BE20](v12);
    v13[1] = v1;
    sub_245235F6C();
    sub_24525416C();
  }

  else
  {
    swift_getKeyPath();
    v14 = v1;
    sub_245235F6C();
    sub_24525417C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_24524BB4C(void *a1)
{
  v2 = v1;
  if ((sub_24524DA80(a1) & 1) == 0)
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v23 = sub_24525420C();
    __swift_project_value_buffer(v23, qword_27EE11750);
    v24 = a1;
    v25 = sub_2452541EC();
    v26 = sub_24525537C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      if (a1)
      {
        v29 = a1;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      _os_log_impl(&dword_2451DB000, v25, v26, "Secret validation failure reason: some other recovery failure: %@", v27, 0xCu);
      sub_245219A3C(v28);
      MEMORY[0x245D66A70](v28, -1, -1);
      MEMORY[0x245D66A70](v27, -1, -1);
    }

    v37 = [objc_opt_self() bundle];
    v14 = sub_2452540EC();

    sub_24524D360();
    return v14;
  }

  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24525420C();
  __swift_project_value_buffer(v4, qword_27EE11750);
  v5 = sub_2452541EC();
  v6 = sub_24525536C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2451DB000, v5, v6, "Secret validation failure reason: incorrect secret entered", v7, 2u);
    MEMORY[0x245D66A70](v7, -1, -1);
  }

  v8 = *(v2 + 192);
  v9 = [v8 localSecretType];
  v10 = "TRY_SYSTEM_ERROR_ALERT_TITLE";
  if (v9 == 2)
  {
    v10 = "_ALERT_SUBTITLE_PASSWORD";
  }

  v11 = v10 | 0x8000000000000000;
  v12 = objc_opt_self();
  v13 = [v12 bundle];
  v14 = sub_2452540EC();

  if ((sub_24524B5E4() & 1) == 0)
  {
    sub_24524D0B8();
    return v14;
  }

  v15 = sub_24524CD50();
  if (v16)
  {
    v17 = v16;
    v57 = v15;
    [v8 localSecretType];
    v18 = [v8 modelClass];
    if (v18)
    {
      v19 = v18;
      v20 = sub_24525518C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    sub_24523A584(v20, v22, 0, 0xD000000000000038);

    v38 = MEMORY[0x277D837D0];
    sub_24525528C();
    v58 = v39;
    sub_24525523C();
    v40 = [v12 bundle];
    sub_2452540EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24525CF70;
    *(v41 + 56) = v38;
    v42 = sub_24524DBE8();
    *(v41 + 64) = v42;
    *(v41 + 32) = v57;
    *(v41 + 40) = v17;

    result = [v8 localizedName];
    if (result)
    {
      v44 = result;

      v45 = sub_24525518C();
      v47 = v46;

      *(v41 + 96) = v38;
      *(v41 + 104) = v42;
      *(v41 + 72) = v45;
      *(v41 + 80) = v47;
LABEL_29:
      sub_24525519C();

      return v14;
    }

    __break(1u);
  }

  else
  {
    [v8 localSecretType];
    v32 = [v8 modelClass];
    if (v32)
    {
      v33 = v32;
      v34 = sub_24525518C();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    sub_24523A584(v34, v36, 1, 0xD000000000000038);
    v49 = v48;

    v50 = [v12 bundle];
    v56 = v49;
    sub_2452540EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24525DE30;
    result = [v8 localizedName];
    if (result)
    {
      v52 = result;
      v53 = sub_24525518C();
      v55 = v54;

      *(v51 + 56) = MEMORY[0x277D837D0];
      *(v51 + 64) = sub_24524DBE8();
      *(v51 + 32) = v53;
      *(v51 + 40) = v55;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24524C290()
{
  sub_245236314(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = *(v0 + 136);

  sub_24521D724();
  MEMORY[0x245D66B10](v0 + 216);
  MEMORY[0x245D66B10](v0 + 224);

  v2 = OBJC_IVAR____TtC9CoreCDPUI21RemoteSecretViewModel___observationRegistrar;
  v3 = sub_2452541BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_24524C384()
{
  sub_24524C290();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RemoteSecretViewModel()
{
  result = qword_27EE0F0E0;
  if (!qword_27EE0F0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24524C430()
{
  result = sub_2452541BC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24524C5F0()
{
  v1 = [*(v0 + 80) isAttemptingBackupRestore];
  v2 = *(v0 + 192);
  [v2 localSecretType];
  if (v1)
  {
    v3 = [v2 modelClass];
    if (v3)
    {
      v4 = v3;
      v5 = sub_24525518C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    sub_24523A584(v5, v7, 0, 0xD00000000000004BLL);

    v8 = [objc_opt_self() bundle];
  }

  else
  {
    v8 = [objc_opt_self() bundle];
  }

  sub_2452540EC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24525DE30;
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24524DBE8();
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;

  v12 = sub_24525519C();

  return v12;
}

uint64_t sub_24524C858()
{
  if ([*(v0 + 80) type] != 2 && ((v7 = *(v0 + 96), sub_24521FFAC(3u, v7)) || sub_24521FFAC(2u, v7)))
  {
    sub_245217E28(0, &qword_27EE0EC90);
    v8 = sub_2452552AC();
    [v8 prevailingLocalSecretType];

    v9 = [objc_opt_self() bundle];
    v10 = sub_2452540EC();

    return v10;
  }

  else
  {
    [*(v0 + 192) localSecretType];
    v1 = [objc_opt_self() bundle];
    sub_2452540EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24525DE30;
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_24524DBE8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;

    v5 = sub_24525519C();

    return v5;
  }
}

uint64_t sub_24524CB3C()
{
  v1 = v0;
  [*(v0 + 192) localSecretType];
  sub_245217E28(0, &qword_27EE0EC90);
  v2 = sub_2452552AC();
  v3 = [v2 prevailingLocalSecretType];

  if (v3 == 2)
  {
    v4 = 0x524F57535341505FLL;
    v5 = 0xE900000000000044;
  }

  else
  {
    v4 = 0x444F43535341505FLL;
    v5 = 0xE900000000000045;
  }

  MEMORY[0x245D65CD0](v4, v5);

  v6 = [objc_opt_self() bundle];
  sub_2452540EC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24525DE30;
  v9 = *(v1 + 144);
  v8 = *(v1 + 152);
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_24524DBE8();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;

  v10 = sub_24525519C();

  return v10;
}

id sub_24524CD50()
{
  result = [*(v0 + 192) model];
  if (result)
  {
    v2 = result;
    v3 = sub_24525518C();
    v5 = v4;

    sub_2452551BC();
    sub_24521E31C();
    if (sub_2452554BC())
    {

      if (sub_24525520C() > 6)
      {
LABEL_21:
        v7 = sub_24525522C();
        v8 = sub_24524D608(v7, v3, v5);
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v15 = MEMORY[0x245D65C60](v8, v10, v12, v14);

        return v15;
      }
    }

    else if (sub_2452554BC())
    {

      if (sub_24525520C() > 4)
      {
        goto LABEL_21;
      }
    }

    else if (sub_2452554BC())
    {

      if (sub_24525520C() > 10)
      {
        goto LABEL_21;
      }
    }

    else if (sub_2452554BC())
    {

      if (sub_24525520C() > 11)
      {
        goto LABEL_21;
      }
    }

    else if (sub_2452554BC())
    {

      if (sub_24525520C() > 8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v6 = sub_2452554BC();

      if ((v6 & 1) != 0 && sub_24525520C() > 16)
      {
        goto LABEL_21;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24524D0B8()
{
  v1 = [*(v0 + 120) deviceClass];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24525518C();
    v5 = v4;

    v6 = *(v0 + 192);
    v7 = [v6 modelClass];
    if (v7)
    {
      v8 = v7;
      v9 = sub_24525518C();
      v11 = v10;

      if (v9 == v3 && v11 == v5)
      {

LABEL_15:
        [v6 localSecretType];
        v23 = [v6 modelClass];
        if (v23)
        {
          v24 = v23;
          v25 = sub_24525518C();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v21 = v25;
        v22 = v27;
        v20 = 0xD00000000000004ELL;
        goto LABEL_19;
      }

      v13 = sub_2452555BC();

      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v14 = *(v0 + 192);
  [v14 localSecretType];
  v15 = [v14 modelClass];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24525518C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = 0xD000000000000053;
  v21 = v17;
  v22 = v19;
LABEL_19:
  sub_24523A584(v21, v22, 0, v20);

  v28 = [objc_opt_self() bundle];
  v29 = sub_2452540EC();

  return v29;
}

uint64_t sub_24524D360()
{
  v1 = [*(v0 + 120) deviceClass];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24525518C();
    v5 = v4;

    v6 = *(v0 + 192);
    v7 = [v6 modelClass];
    if (v7)
    {
      v8 = v7;
      v9 = sub_24525518C();
      v11 = v10;

      if (v9 == v3 && v11 == v5)
      {

LABEL_15:
        [v6 localSecretType];
        v23 = [v6 modelClass];
        if (v23)
        {
          v24 = v23;
          v25 = sub_24525518C();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v21 = v25;
        v22 = v27;
        v20 = 0xD000000000000049;
        goto LABEL_19;
      }

      v13 = sub_2452555BC();

      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v14 = *(v0 + 192);
  [v14 localSecretType];
  v15 = [v14 modelClass];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24525518C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = 0xD00000000000004ELL;
  v21 = v17;
  v22 = v19;
LABEL_19:
  sub_24523A584(v21, v22, 0, v20);

  v28 = [objc_opt_self() bundle];
  v29 = sub_2452540EC();

  return v29;
}

uint64_t sub_24524D608(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

char *sub_24524D654(char *a1, int64_t a2, char a3)
{
  result = sub_24524D694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24524D674(char *a1, int64_t a2, char a3)
{
  result = sub_24524D7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24524D694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24524D7A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD08);
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

void *sub_24524D8B0(unint64_t a1, void *a2)
{
  if (!a2)
  {
    if (a1 >> 62)
    {
LABEL_26:
      v7 = sub_24525556C();
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return 0;
      }
    }

    v8 = 0;
    v9 = &selRef__validateCustodianRecoveryInfo_;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D65FC0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v2 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = [v10 v9[385]];
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        v15 = sub_24525518C();
        v17 = v16;

        v9 = v13;

        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          break;
        }
      }

      ++v8;
      if (v11 == v7)
      {
        return 0;
      }
    }

    v20 = [v2 v13 + 3704];
    if (!v20 || (v20, (v4 = [v2 v13 + 3704]) == 0))
    {

      return 0;
    }

    goto LABEL_3;
  }

  v2 = a2;
  v3 = a2;
  v4 = [v3 localizedName];
  if (!v4)
  {

    return 0;
  }

LABEL_3:
  v5 = v4;
  sub_24525518C();

  return v2;
}

id sub_24524DA80(void *a1)
{
  if (a1)
  {
    v9 = a1;
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBD8);
    sub_245217E28(0, &qword_27EE0F108);
    if (swift_dynamicCast())
    {
      v2 = v10;
      result = [v10 userInfo];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v4 = result;
      v5 = [result allValues];

      v6 = sub_2452552BC();
      if (*(v6 + 16))
      {
        sub_24523A408(v6 + 32, &v9);

        if (swift_dynamicCast())
        {
          v7 = v10;
          v8 = [v10 cdp:-5205 isCDPErrorWithCode:?];

          return ((v8 & 1) != 0);
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

unint64_t sub_24524DBE8()
{
  result = qword_27EE0F100;
  if (!qword_27EE0F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F100);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_24524DC88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24524DCD0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 264) = v0[3];
  *(v1 + 272) = v2;
}

uint64_t sub_24524DD10@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24524DDCC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

uint64_t sub_24524DE54()
{
  v1 = v0;
  result = [v0 modelClass];
  if (result)
  {
    v3 = result;
    sub_24525518C();

    v4 = sub_2452551BC();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_24521E31C();
      if (sub_2452554BC())
      {

        return 0x447974696C616552;
      }

      else if (sub_2452554BC())
      {

        return 0x6863746157;
      }

      else
      {
        result = [v1 modelClass];
        if (result)
        {
          v8 = result;

          v9 = sub_24525518C();

          return v9;
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_24524E00C()
{
  result = [v0 modelClass];
  if (result)
  {
    v2 = result;
    sub_24525518C();

    v3 = sub_2452551BC();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = v3 == 0x656E6F687069 && v5 == 0xE600000000000000;
      if (v7 || (sub_2452555BC() & 1) != 0 || (v3 == 1684107369 ? (v8 = v5 == 0xE400000000000000) : (v8 = 0), v8 || (sub_2452555BC() & 1) != 0 || (sub_24521E31C(), (sub_2452554BC() & 1) != 0) || (sub_2452554BC() & 1) != 0 || (sub_2452554BC() & 1) != 0 || (sub_2452554BC() & 1) != 0))
      {

        return sub_245254EBC();
      }

      v9 = sub_2452554BC();

      if (v9)
      {
        return sub_245254EBC();
      }

      if (qword_27EE0D9E8 != -1)
      {
        swift_once();
      }

      v10 = sub_24525420C();
      __swift_project_value_buffer(v10, qword_27EE11750);
      v11 = sub_2452541EC();
      v12 = sub_24525537C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2451DB000, v11, v12, "Unable to display the placeholder image.", v13, 2u);
        MEMORY[0x245D66A70](v13, -1, -1);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_24524E418@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_24521E31C();

  v4 = sub_245254BFC();
  v6 = v5;
  v8 = v7;
  sub_245254AEC();
  v9 = sub_245254B9C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24521F95C(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v3;
  return result;
}

uint64_t _s9CoreCDPUI23NaturalizedViewModifierVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24524E5AC()
{
  result = qword_27EE0F130;
  if (!qword_27EE0F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F138);
    sub_24524E638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F130);
  }

  return result;
}

unint64_t sub_24524E638()
{
  result = qword_27EE0F140;
  if (!qword_27EE0F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F140);
  }

  return result;
}

uint64_t sub_24524E6A8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F148);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F150);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F158);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  KeyPath = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F160);
  v15 = *(*(v14 - 8) + 16);
  if (a2)
  {
    v15(v12, a1, v14);
    v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F168) + 36)];
    *v16 = KeyPath;
    v16[8] = 0;
    v17 = sub_245254B3C();
    v18 = swift_getKeyPath();
    v19 = &v12[*(v10 + 36)];
    *v19 = v18;
    v19[1] = v17;
    sub_24521F96C(v12, v9, &qword_27EE0F158);
    swift_storeEnumTagMultiPayload();
    sub_24524EA48();
    sub_24524EBE4();
    sub_24525489C();
    v20 = v12;
    v21 = &qword_27EE0F158;
  }

  else
  {
    v15(v6, a1, v14);
    v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F168) + 36)];
    *v22 = KeyPath;
    v22[8] = 1;
    v23 = sub_245254ABC();
    v24 = swift_getKeyPath();
    v25 = &v6[*(v10 + 36)];
    *v25 = v24;
    v25[1] = v23;
    LOBYTE(v23) = sub_245254A6C();
    v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F170) + 36)];
    *v26 = v23;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    v26[40] = 1;
    LOBYTE(v23) = sub_245254A4C();
    v27 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F178) + 36)];
    *v27 = v23;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    v27[40] = 1;
    *&v6[*(v4 + 36)] = 256;
    sub_24521F96C(v6, v9, &qword_27EE0F148);
    swift_storeEnumTagMultiPayload();
    sub_24524EA48();
    sub_24524EBE4();
    sub_24525489C();
    v20 = v6;
    v21 = &qword_27EE0F148;
  }

  return sub_24521E5B0(v20, v21);
}

unint64_t sub_24524EA48()
{
  result = qword_27EE0F180;
  if (!qword_27EE0F180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F158);
    sub_24524EB00();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F180);
  }

  return result;
}

unint64_t sub_24524EB00()
{
  result = qword_27EE0F188;
  if (!qword_27EE0F188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F168);
    sub_24521EA80(&qword_27EE0F190, &qword_27EE0F160);
    sub_24521EA80(&qword_27EE0E9E0, &qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F188);
  }

  return result;
}

unint64_t sub_24524EBE4()
{
  result = qword_27EE0F198;
  if (!qword_27EE0F198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F148);
    sub_24524ECCC(&qword_27EE0F1A0, &qword_27EE0F178, &unk_24525E420, sub_24524EC9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F198);
  }

  return result;
}

uint64_t sub_24524ECCC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24524ED50()
{
  result = qword_27EE0F1B0;
  if (!qword_27EE0F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F1B8);
    sub_24524EA48();
    sub_24524EBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F1B0);
  }

  return result;
}

id sub_24524EE04(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0F290);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9CoreCDPUI27AccountRecoveryRowViewModel__isRecoveryEnabled;
  v20 = 0;
  sub_24525422C();
  v11 = *(v7 + 32);
  v11(&v3[v10], v9, v6);
  v12 = OBJC_IVAR____TtC9CoreCDPUI27AccountRecoveryRowViewModel__isSpinnerActive;
  v20 = 1;
  sub_24525422C();
  v11(&v3[v12], v9, v6);
  *&v3[OBJC_IVAR____TtC9CoreCDPUI27AccountRecoveryRowViewModel_cdpContext] = a1;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC9CoreCDPUI27AccountRecoveryRowViewModel_accountRecoveryStatusFetcher] = a2;
  v13 = type metadata accessor for AccountRecoveryRowViewModel();
  v19.receiver = v3;
  v19.super_class = v13;
  v14 = a1;

  v15 = objc_msgSendSuper2(&v19, sel_init, v18);
  *(a2 + 56) = &off_285825FC8;
  swift_unknownObjectWeakAssign();
  v16 = v15;
  sub_245218084();

  swift_unknownObjectRelease();
  return v16;
}

id sub_24524F030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountRecoveryRowViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountRecoveryRowViewModel()
{
  result = qword_27EE0F1F0;
  if (!qword_27EE0F1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24524F1A0()
{
  sub_24524F258();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24524F258()
{
  if (!qword_27EE0F200)
  {
    v0 = sub_24525425C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0F200);
    }
  }
}

uint64_t sub_24524F2A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountRecoveryRowViewModel();
  result = sub_24525421C();
  *a1 = result;
  return result;
}

uint64_t sub_24524F2E8()
{
  v1 = v0;
  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24525420C();
  __swift_project_value_buffer(v2, qword_27EE11750);
  v3 = sub_2452541EC();
  v4 = sub_24525536C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2451DB000, v3, v4, "Updating recovery state", v5, 2u);
    MEMORY[0x245D66A70](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v1;
  sub_24525424C();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_24525424C();
}

unint64_t sub_24524F5E0(uint64_t a1)
{
  sub_24525518C();
  sub_2452555CC();
  sub_2452551FC();
  v2 = sub_2452555EC();

  return sub_24524F674(a1, v2);
}

unint64_t sub_24524F674(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24525518C();
      v8 = v7;
      if (v6 == sub_24525518C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2452555BC();

      if ((v11 & 1) == 0)
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

unint64_t sub_24524F778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F288);
    v3 = sub_24525557C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24524F5E0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_24524F870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24524F8D8()
{
  result = qword_27EE0F278;
  if (!qword_27EE0F278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0F278);
  }

  return result;
}

unint64_t sub_24524F924()
{
  result = qword_27EE0F280;
  if (!qword_27EE0F280)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F280);
  }

  return result;
}

CoreCDPUI::AdvancedDataProtectionState_optional __swiftcall AdvancedDataProtectionState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24524F9A8()
{
  result = qword_27EE0F2A0;
  if (!qword_27EE0F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F2A0);
  }

  return result;
}

unint64_t sub_24524FA14()
{
  result = qword_27EE0F2A8;
  if (!qword_27EE0F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F2A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvancedDataProtectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdvancedDataProtectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24524FBD8()
{

  sub_24522D850(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_24524FC5C()
{
  v0 = [objc_opt_self() bundle];
  v1 = sub_2452540EC();

  return v1;
}

uint64_t sub_24524FD38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  v6 = [objc_opt_self() sharedBag];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  if (![v6 respondsToSelector_])
  {

LABEL_10:
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v15 = sub_24525420C();
    __swift_project_value_buffer(v15, qword_27EE11750);
    v16 = sub_2452541EC();
    v17 = sub_24525537C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2451DB000, v16, v17, "walrusCountryAnchorKBURL is nil.", v18, 2u);
      MEMORY[0x245D66A70](v18, -1, -1);
    }

    return 0;
  }

  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v8 = sub_24525420C();
  __swift_project_value_buffer(v8, qword_27EE11750);
  v9 = sub_2452541EC();
  v10 = sub_24525537C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2451DB000, v9, v10, "Setting walrusCountryAnchorKBURL.", v11, 2u);
    MEMORY[0x245D66A70](v11, -1, -1);
  }

  v12 = [v7 walrusCountryAnchorKBURL];
  if (v12)
  {
    v13 = v12;
    sub_24525413C();

    v14 = sub_24525415C();
    (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  }

  else
  {
    v14 = sub_24525415C();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  }

  sub_2452459A0(v3, v5);
  sub_24525415C();
  v20 = *(v14 - 8);
  if ((*(v20 + 48))(v5, 1, v14) == 1)
  {

    sub_24522F120(v5);
    return 0;
  }

  v21 = sub_24525411C();

  (*(v20 + 8))(v5, v14);
  return v21;
}

uint64_t sub_2452500E0()
{
  v0 = [objc_opt_self() bundle];
  v1 = sub_2452540EC();

  return v1;
}

uint64_t sub_245250218()
{
  v0 = [objc_opt_self() bundle];
  v1 = sub_2452540EC();

  return v1;
}

uint64_t sub_245250324()
{
  v0 = [objc_opt_self() bundle];
  v1 = sub_2452540EC();

  return v1;
}

uint64_t sub_245250430()
{
  v0 = [objc_opt_self() bundle];
  v1 = sub_2452540EC();

  return v1;
}

char *sub_24525050C(unint64_t a1, char a2, int a3, char a4, int a5, char a6)
{
  if ((a6 & 2) == 0)
  {
    goto LABEL_7;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (a6 < 0)
    {
      result = sub_24525094C(0, 1, 1, MEMORY[0x277D84F90]);
      v10 = *(result + 2);
      v22 = *(result + 3);
      v11 = v10 + 1;
      if (v10 >= v22 >> 1)
      {
        result = sub_24525094C((v22 > 1), v10 + 1, 1, result);
      }

      v7 = 9;
      goto LABEL_44;
    }

    if ((a6 & 0x20) != 0)
    {
      result = sub_24525094C(0, 1, 1, MEMORY[0x277D84F90]);
      v10 = *(result + 2);
      v23 = *(result + 3);
      v11 = v10 + 1;
      if (v10 >= v23 >> 1)
      {
        result = sub_24525094C((v23 > 1), v10 + 1, 1, result);
      }

      v7 = 4;
      goto LABEL_44;
    }

    if ((a6 & 0x40) != 0)
    {
      result = sub_24525094C(0, 1, 1, MEMORY[0x277D84F90]);
      v10 = *(result + 2);
      v24 = *(result + 3);
      v11 = v10 + 1;
      if (v10 >= v24 >> 1)
      {
        result = sub_24525094C((v24 > 1), v10 + 1, 1, result);
      }

      v7 = 5;
      goto LABEL_44;
    }

    if ((a6 & 4) == 0 || (a2 & 1) == 0)
    {
      if ((a6 & 0x18) == 0)
      {
        result = MEMORY[0x277D84F90];
        goto LABEL_45;
      }

      v25 = a3;
      v26 = a6;
      v27 = a5;
      result = sub_24525094C(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(result + 2);
      v28 = *(result + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = sub_24525094C((v28 > 1), v29 + 1, 1, result);
      }

      *(result + 2) = v30;
      result[v29 + 32] = 3;
      if (v26 & 8) != 0 && ((v25 ^ 1 | v27))
      {
        v31 = *(result + 3);
        v10 = v29 + 2;
        if (v10 > (v31 >> 1))
        {
          result = sub_24525094C((v31 > 1), v10, 1, result);
        }

        *(result + 2) = v10;
        result[v30 + 32] = 2;
      }

      else
      {
        v10 = v29 + 1;
      }

      goto LABEL_41;
    }

    if (a1 >> 62)
    {
      if (sub_24525556C() == 1)
      {
        goto LABEL_14;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_14:
      v19 = sub_24525094C(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_24525094C((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v19[v21 + 32] = 7;
      goto LABEL_38;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_38:
    v32 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_24525094C(0, *(v32 + 2) + 1, 1, v32);
    }

    result = v32;
    v10 = *(v32 + 2);
LABEL_41:
    v33 = *(result + 3);
    v11 = v10 + 1;
    if (v10 >= v33 >> 1)
    {
      result = sub_24525094C((v33 > 1), v10 + 1, 1, result);
    }

    v7 = 6;
    goto LABEL_44;
  }

  v12 = a1;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = a2;
  v17 = sub_24525556C();
  a2 = v16;
  a3 = v15;
  a6 = v14;
  a5 = v13;
  v18 = v17;
  a1 = v12;
  if (v18 < 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 1;
  result = sub_24525094C(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(result + 2);
  v9 = *(result + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v7 = 1;
    result = sub_24525094C((v9 > 1), v10 + 1, 1, result);
  }

LABEL_44:
  *(result + 2) = v11;
  result[v10 + 32] = v7;
LABEL_45:
  if (a4)
  {
    v34 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v34;
    }

    else
    {
      result = sub_24525094C(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(result + 2);
    v35 = *(result + 3);
    if (v36 >= v35 >> 1)
    {
      result = sub_24525094C((v35 > 1), v36 + 1, 1, result);
    }

    *(result + 2) = v36 + 1;
    result[v36 + 32] = 8;
  }

  return result;
}

char *sub_24525094C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F2B8);
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

uint64_t _BYSetupAssistantNeedsToRun_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(CDPUIAccessCodeEntryTextField *)v0];
}