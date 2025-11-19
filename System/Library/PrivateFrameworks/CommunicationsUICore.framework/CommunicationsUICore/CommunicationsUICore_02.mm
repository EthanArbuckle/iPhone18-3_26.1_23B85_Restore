id sub_1C2F23E60(void *a1, void *a2)
{
  if ([a1 isSpeaker] & 1) != 0 || (objc_msgSend(a1, sel_isReceiver))
  {
    v4 = 1;
  }

  else
  {
    v4 = [a1 isDefaultRoute];
  }

  if (([a2 isSpeaker] & 1) != 0 || objc_msgSend(a2, sel_isReceiver))
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4 != [a2 isDefaultRoute])
  {
    return v4;
  }

  if ([a1 isWiredHeadset] & 1) != 0 || (objc_msgSend(a1, sel_isWiredHeadphones))
  {
    v4 = 1;
  }

  else
  {
    v4 = [a1 isWirelessHeadset];
  }

  if (([a2 isWiredHeadset] & 1) != 0 || objc_msgSend(a2, sel_isWiredHeadphones))
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4 != [a2 isWirelessHeadset])
  {
    return v4;
  }

  v5 = [a1 isRecommended];
  if (v5 != [a2 isRecommended])
  {
    return [a1 isRecommended];
  }

  v7 = [a1 isGuest];
  if (v7 != [a2 isGuest])
  {
    return [a1 isGuest];
  }

  v9 = [a1 name];
  v10 = sub_1C2F766CC();
  v12 = v11;

  v13 = [a2 name];
  v14 = sub_1C2F766CC();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {

    return 0;
  }

  v17 = sub_1C2F76EFC();

  return (v17 & 1);
}

uint64_t sub_1C2F240B4()
{
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController);
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v2);
  (*(v3 + 8))(v2, v3);

  *&__dst = sub_1C2F3ED18(v4);
  sub_1C2F226F0(&__dst);

  v5 = __dst;
  v37 = v1;
  if ((__dst & 0x8000000000000000) != 0 || (__dst & 0x4000000000000000) != 0)
  {
    goto LABEL_20;
  }

  for (i = *(__dst + 16); i; i = sub_1C2F76BBC())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6929250](v7, v5);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v39 = v9;
      sub_1C2F217BC(&v39, v38, &__dst);

      if (v53)
      {
        v49 = v53;
        *v50 = v54[0];
        *&v50[10] = *(v54 + 10);
        v47 = __dst;
        v48 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C2F1C670(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1C2F1C670((v12 > 1), v13 + 1, 1, v8);
        }

        *(v46 + 10) = *&v50[10];
        v45 = v49;
        v46[0] = *v50;
        v14 = v47;
        v43 = v47;
        v44 = v48;
        *(v8 + 2) = v13 + 1;
        v15 = &v8[80 * v13];
        *(v15 + 2) = v14;
        v16 = v44;
        v17 = v45;
        v18 = v46[0];
        *(v15 + 90) = *(v46 + 10);
        *(v15 + 4) = v17;
        *(v15 + 5) = v18;
        *(v15 + 3) = v16;
      }

      else
      {
        v49 = v53;
        *v50 = v54[0];
        *&v50[10] = *(v54 + 10);
        v47 = __dst;
        v48 = v52;
        sub_1C2F0A8D8(&v47, &unk_1EC0766F0, &qword_1C2F7A198);
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v19 = *(v38 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routesSubject);
  *&__dst = v8;

  sub_1C2F7627C();

  v20 = *(v8 + 2);
  if (v20)
  {
    v21 = 32;
    while (1)
    {
      v47 = *&v8[v21];
      v22 = *&v8[v21 + 16];
      v23 = *&v8[v21 + 32];
      v24 = *&v8[v21 + 48];
      *&v50[10] = *&v8[v21 + 58];
      v49 = v23;
      *v50 = v24;
      v48 = v22;
      memmove(&__dst, &v8[v21], 0x4AuLL);
      if (v50[24])
      {
        break;
      }

      v21 += 80;
      if (!--v20)
      {
        goto LABEL_26;
      }
    }

    sub_1C2F245A8(&v47, &v43);

    v32 = *(v38 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_pickedRouteSubject);
    v41 = v53;
    v42[0] = v54[0];
    *(v42 + 10) = *(v54 + 10);
    v39 = __dst;
    v40 = v52;

    sub_1C2F7627C();

    v45 = v41;
    v46[0] = v42[0];
    *(v46 + 10) = *(v42 + 10);
    v43 = v39;
    v44 = v40;
    return sub_1C2F0A8D8(&v43, &unk_1EC0766F0, &qword_1C2F7A198);
  }

  else
  {
LABEL_26:

    v25 = v37[3];
    v26 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v25);
    v27 = (*(v26 + 16))(v25, v26);
    if (v27)
    {
      v28 = v27;

      v29 = *(v38 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_pickedRouteSubject);

      v30 = v28;
      sub_1C2F20C40(v30, 0, 0, &v47);
      sub_1C2F7627C();

      v53 = v49;
      v54[0] = *v50;
      *(v54 + 10) = *&v50[10];
      __dst = v47;
      v52 = v48;
      return sub_1C2F0A8D8(&__dst, &unk_1EC0766F0, &qword_1C2F7A198);
    }

    else
    {
      v33 = sub_1C2F761DC();
      v34 = sub_1C2F769DC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1C2EF2000, v33, v34, "TURouteController pickedRoute is nil", v35, 2u);
        MEMORY[0x1C6929E80](v35, -1, -1);
      }

      v36 = *(v38 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_pickedRouteSubject);
      v53 = 0u;
      memset(v54, 0, 26);
      __dst = 0u;
      v52 = 0u;

      sub_1C2F7627C();
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2F24628()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1C2F21E14(v0[2], v0[3], v0[4]);
}

unint64_t sub_1C2F24638()
{
  result = qword_1EC076700;
  if (!qword_1EC076700)
  {
    sub_1C2F764EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076700);
  }

  return result;
}

void sub_1C2F24690(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 24);
  v5 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController + 32);
  v26 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20CommunicationsUICore17AudioRouteService_routeController), v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_26:
    v8 = sub_1C2F76BBC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v28 = (v7 & 0xC000000000000001);
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v28)
        {
          v11 = MEMORY[0x1C6929250](v9, v7);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_25;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v14 = [v11 modelIdentifier];
        if (!v14)
        {
          break;
        }

        v15 = v7;
        v16 = a2;
        v17 = v14;
        v18 = sub_1C2F766CC();
        v20 = v19;

        a2 = v16;
        if (v18 == a1 && v20 == v16)
        {

          v7 = v15;
        }

        else
        {
          v22 = sub_1C2F76EFC();

          v7 = v15;
          if ((v22 & 1) == 0)
          {
            break;
          }
        }

        v23 = [v12 deviceType];

        if (!v23)
        {
          v24 = v26[3];
          v25 = v26[4];
          __swift_project_boxed_opaque_existential_1(v26, v24);
          v29 = (*(v25 + 16))(v24, v25);
          sub_1C2F240B4();

          return;
        }

LABEL_5:
        ++v9;
        if (v13 == v8)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_5;
    }
  }

LABEL_27:
}

void DeviceConditions.requestPasscodeUnlock(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  if (sub_1C2F25A48())
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C2F07C9C;
    v5[3] = &block_descriptor_2;
    v4 = _Block_copy(v5);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v4);
  }

  else
  {
    a1(1);
  }
}

uint64_t DeviceConditions.isSetupAssistantRunning.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = BYSetupAssistantNeedsToRun();
    LOBYTE(v1) = v2;
    if (v2)
    {
      sub_1C2F24A10();
    }

    *(v0 + 16) = v1;
  }

  return v1 & 1;
}

void sub_1C2F24A10()
{
  if (*MEMORY[0x1E69CA9C0])
  {
    v1 = sub_1C2F766CC();
    v3 = v2;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = type metadata accessor for DarwinNotificationWrapper();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token] = 0;
    v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] = 0;
    v7 = &v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
    *v7 = v1;
    v7[1] = v3;
    v8 = &v6[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
    *v8 = sub_1C2F266B4;
    v8[1] = v4;
    v13.receiver = v6;
    v13.super_class = v5;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + 24);
    *(v0 + 24) = v9;

    v11 = *(v0 + 24);
    if (v11)
    {
      v12 = v11;
      sub_1C2F2FFC0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t DeviceConditions.isInLostMode.getter()
{
  v1 = *(v0 + 17);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() sharedInstance];
    LOBYTE(v1) = [v2 lostModeIsActive];

    sub_1C2F24B8C();
    *(v0 + 17) = v1;
  }

  return v1 & 1;
}

void sub_1C2F24B8C()
{
  v1 = *MEMORY[0x1E699C860];
  v2 = sub_1C2F766CC();
  v4 = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for DarwinNotificationWrapper();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token] = 0;
  v7[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] = 0;
  v8 = &v7[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
  *v8 = v2;
  v8[1] = v4;
  v9 = &v7[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
  *v9 = sub_1C2F266AC;
  v9[1] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = *(v0 + 32);
  *(v0 + 32) = v10;

  v12 = *(v0 + 32);
  if (v12)
  {
    v13 = v12;
    sub_1C2F2FFC0();
  }
}

void sub_1C2F24C8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + 16) = BYSetupAssistantNeedsToRun();
    if (DeviceConditions.isSetupAssistantRunning.getter())
    {
    }

    else
    {
      v2 = *(v1 + 24);
      *(v1 + 24) = 0;
    }
  }
}

uint64_t sub_1C2F24D08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 lostModeIsActive];

    *(v1 + 17) = v3;
  }

  return result;
}

Swift::Bool __swiftcall DeviceConditions.canPerformFaceID()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  [v0 canEvaluatePolicy:1 error:0];
  v1 = [v0 biometryType];

  return v1 == 2;
}

void DeviceConditions.requestFaceIDAuth(_:)(void (*a1)(void), uint64_t a2)
{
  if (qword_1EC075C70 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC076720);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Request FaceID", v7, 2u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  [v13 canEvaluatePolicy:1 error:0];
  if ([v13 biometryType] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076738, &qword_1C2F7A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C2F7A1A0;
    v9 = MEMORY[0x1E69E6530];
    sub_1C2F76C1C();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    sub_1C2F76C1C();
    *(inited + 168) = v9;
    *(inited + 144) = 0;
    sub_1C2F263A4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076740, &qword_1C2F7A1B8);
    swift_arrayDestroy();
    v10 = sub_1C2F7659C();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    aBlock[4] = sub_1C2F264C0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2F257BC;
    aBlock[3] = &block_descriptor_3;
    v12 = _Block_copy(aBlock);

    [v13 evaluatePolicy:1 options:v10 reply:v12];
    _Block_release(v12);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1C2F25144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C2F764EC();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2F7651C();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (a1)
    {
      *&v56 = 1;
      sub_1C2F76C1C();
      if (*(a1 + 16))
      {
        v36 = sub_1C2F3D8D0(&aBlock);
        if (v37)
        {
          sub_1C2EFAD00(*(a1 + 56) + 32 * v36, &v56);
          sub_1C2F265AC(&aBlock);
          if (*(&v57 + 1))
          {
            sub_1C2EF5A14(0, &qword_1EC076748, 0x1E696AD98);
            if (swift_dynamicCast())
            {
              v38 = aBlock;
            }

            else
            {
              v38 = 0;
            }

            goto LABEL_17;
          }

LABEL_16:
          sub_1C2F26504(&v56);
          v38 = 0;
LABEL_17:
          sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
          v39 = sub_1C2F76A2C();
          v40 = swift_allocObject();
          v40[2] = a3;
          v40[3] = a4;
          v40[4] = v38;
          v54 = sub_1C2F2656C;
          v55 = v40;
          aBlock = MEMORY[0x1E69E9820];
          v51 = 1107296256;
          v52 = sub_1C2F40688;
          v53 = &block_descriptor_13;
          v41 = _Block_copy(&aBlock);
          v42 = v38;

          sub_1C2F764FC();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_1C2F24638();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
          sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
          sub_1C2F76B3C();
          MEMORY[0x1C6929010](0, v15, v11, v41);
          _Block_release(v41);

          goto LABEL_18;
        }
      }

      sub_1C2F265AC(&aBlock);
    }

    v56 = 0u;
    v57 = 0u;
    goto LABEL_16;
  }

  v16 = a2;
  if (qword_1EC075C70 != -1)
  {
    swift_once();
  }

  v17 = sub_1C2F761FC();
  __swift_project_value_buffer(v17, qword_1EC076720);
  v18 = a2;
  v19 = sub_1C2F761DC();
  v20 = sub_1C2F769DC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = a3;
    v22 = v21;
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v22 = 136315138;
    swift_getErrorValue();
    v23 = sub_1C2F76F3C();
    v25 = a2;
    v26 = v15;
    v27 = v11;
    v28 = v8;
    v29 = a4;
    v30 = sub_1C2EFAB28(v23, v24, &aBlock);

    *(v22 + 4) = v30;
    a4 = v29;
    v8 = v28;
    v11 = v27;
    v15 = v26;
    a2 = v25;
    _os_log_impl(&dword_1C2EF2000, v19, v20, "fail to evaluate policy %s", v22, 0xCu);
    v31 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1C6929E80](v31, -1, -1);
    v32 = v22;
    a3 = v46;
    MEMORY[0x1C6929E80](v32, -1, -1);
  }

  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v33 = sub_1C2F76A2C();
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  v54 = sub_1C2F26600;
  v55 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1C2F40688;
  v53 = &block_descriptor_19;
  v35 = _Block_copy(&aBlock);

  sub_1C2F764FC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C2F24638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v15, v11, v35);
  _Block_release(v35);

LABEL_18:
  (*(v49 + 8))(v11, v8);
  return (*(v47 + 8))(v15, v48);
}

uint64_t sub_1C2F257BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1C2F765AC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1C2F2586C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - v3;
  v7[1] = sub_1C2F25CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F7630C();

  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0);
  v5 = sub_1C2F762AC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t _s20CommunicationsUICore16DeviceConditionsC02isC6LockedSbvg_0()
{
  sub_1C2F25CF4();
  sub_1C2F7628C();

  return v1;
}

BOOL sub_1C2F25A48()
{
  state64[1] = *MEMORY[0x1E69E9840];
  out_token = 0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = sub_1C2F7672C();
  v4 = notify_register_check((v3 + 32), &out_token);

  if (v4)
  {
    if (qword_1EC075C70 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EC076720);
    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769DC();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    state64[0] = v9;
    *v8 = 136315138;
    LODWORD(v21) = v4;
    v10 = sub_1C2F7670C();
    v12 = sub_1C2EFAB28(v10, v11, state64);

    *(v8 + 4) = v12;
    v13 = "Unable to get token to check if SpringBoard is passcode locked: result = %s";
    goto LABEL_11;
  }

  state64[0] = 0;
  if (!notify_get_state(out_token, state64))
  {
    result = state64[0] != 0;
    goto LABEL_13;
  }

  if (qword_1EC075C70 != -1)
  {
    swift_once();
  }

  v14 = sub_1C2F761FC();
  __swift_project_value_buffer(v14, qword_1EC076720);
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v15 = sub_1C2F7670C();
    v17 = sub_1C2EFAB28(v15, v16, &v21);

    *(v8 + 4) = v17;
    v13 = "Unable to get SpringBoard passcode lock state: result = %s";
LABEL_11:
    _os_log_impl(&dword_1C2EF2000, v6, v7, v13, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

LABEL_12:

  result = 0;
LABEL_13:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C2F25CF4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    sub_1C2F25A48();
    sub_1C2F25DB0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_1C2F7629C();
    v6 = *(v0 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2F25DB0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = type metadata accessor for DarwinNotificationWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token] = 0;
  v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] = 0;
  v6 = &v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
  *v6 = v2;
  v6[1] = v1;
  v7 = &v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
  *v7 = sub_1C2F267D0;
  v7[1] = v3;
  v12.receiver = v5;
  v12.super_class = v4;

  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = v0[8];
  v0[8] = v8;

  v10 = v0[8];
  if (v10)
  {
    v11 = v10;
    sub_1C2F2FFC0();
  }
}

uint64_t sub_1C2F25EA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1C2F25A48();
    if (qword_1EC075C70 != -1)
    {
      swift_once();
    }

    v2 = sub_1C2F761FC();
    __swift_project_value_buffer(v2, qword_1EC076720);
    v3 = sub_1C2F761DC();
    v4 = sub_1C2F769EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C2EF2000, v3, v4, "update lock state, send value: %{BOOL}d", v5, 8u);
      MEMORY[0x1C6929E80](v5, -1, -1);
    }

    sub_1C2F25CF4();
    sub_1C2F7627C();
  }

  return result;
}

uint64_t DeviceConditions.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t DeviceConditions.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F26098()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC076720);
  __swift_project_value_buffer(v0, qword_1EC076720);
  return sub_1C2F761EC();
}

void *sub_1C2F2611C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076768, &unk_1C2F7A270);
  v3 = sub_1C2F76D8C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 45);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v26 = a1;
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = sub_1C2F3D888(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v9;
  v16 = (v26 + 120);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + 4 * v14) = v4;
    v17 = v3[7] + 40 * v14;
    *v17 = v5;
    *(v17 + 4) = v6 & 1;
    *(v17 + 5) = v7 & 1;
    *(v17 + 8) = v8;
    *(v17 + 16) = result;
    *(v17 + 24) = v11;
    *(v17 + 32) = v10;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v25 = v16 + 6;
    v4 = *(v16 - 10);
    v21 = *(v16 - 8);
    v27 = *(v16 - 28);
    v7 = *(v16 - 27);
    v8 = *(v16 - 3);
    v22 = *(v16 - 2);
    v11 = *(v16 - 1);
    v23 = *v16;

    v14 = sub_1C2F3D888(v4);
    v16 = v25;
    v10 = v23;
    v5 = v21;
    result = v22;
    v6 = v27;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2F262B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076760, &qword_1C2F7A268);
    v3 = sub_1C2F76D8C();
    for (i = (a1 + 37); ; i += 8)
    {
      v5 = *(i - 5);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1C2F3D888(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v10 = (v3[7] + 2 * result);
      *v10 = v6;
      v10[1] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C2F263A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076750, &qword_1C2F7A258);
    v3 = sub_1C2F76D8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C2F2662C(v4, v13);
      result = sub_1C2F3D8D0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C2F2669C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C2F26504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D38, &qword_1C2F78BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F2656C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 32);
  if (v4)
  {
    v4 = [v4 BOOLValue];
  }

  return v2(v4);
}

uint64_t sub_1C2F26600()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1C2F2662C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076740, &qword_1C2F7A1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C2F2669C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C2F266BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076758, &qword_1C2F7A260);
    v3 = sub_1C2F76D8C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C2EFAEC0(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t CallStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

unint64_t sub_1C2F26884()
{
  result = qword_1EC076770;
  if (!qword_1EC076770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076770);
  }

  return result;
}

uint64_t PodcastRecordingError.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t PodcastRecordingService.__allocating_init(callCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1C2F269B4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  if ([a1 isPodcastRecordingAllowed])
  {
    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EC076778);
    v11 = sub_1C2F761DC();
    v12 = sub_1C2F769EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C2EF2000, v11, v12, "Requesting to start a podcast recording session.", v13, 2u);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    v14 = sub_1C2F768AC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    sub_1C2F7688C();

    v16 = a1;
    v17 = sub_1C2F7687C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v15;
    v18[5] = a2;
    v18[6] = a3;
    v18[7] = v16;

    sub_1C2F06978(0, 0, v9, &unk_1C2F7A340, v18);
  }

  else
  {
    v20 = [objc_opt_self() defaultCenter];
    if (qword_1EC075CC8 != -1)
    {
      swift_once();
    }

    [v20 postNotificationName:qword_1EC076FF8 object:0];

    sub_1C2F281B4();
    v21 = swift_allocError();
    *v22 = 0;
    a2();
  }
}

uint64_t sub_1C2F26CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  sub_1C2F7688C();
  v7[29] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F26D70, v9, v8);
}

uint64_t sub_1C2F26D70()
{
  v1 = v0[25];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v3 = v0[28];
    v4 = *(Strong + 16);
    v0[33] = v4;
    v5 = objc_allocWithZone(MEMORY[0x1E69D8AB0]);
    v6 = v4;
    v7 = [v5 initWithCall:v3 mode:1 isInitiatedLocally:1];
    v0[34] = v7;
    v0[2] = v0;
    v0[3] = sub_1C2F26FFC;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767A0, &qword_1C2F7A4B8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2F27504;
    v0[13] = &block_descriptor_18;
    v0[14] = v8;
    [v6 performRecordingRequest:v7 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v9 = v0[29];

    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EC076778);
    v11 = sub_1C2F761DC();
    v12 = sub_1C2F769EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C2EF2000, v11, v12, "self released, can't request start podcast recording", v13, 2u);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    v14 = v0[26];
    v15 = v0[27];

    v14(0);
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1C2F26FFC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = sub_1C2F27270;
  }

  else
  {
    v6 = sub_1C2F2712C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1C2F2712C()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[29];

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC076778);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Successfully started podcast recording", v7, 2u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v8 = v0[32];
  v10 = v0[26];
  v9 = v0[27];

  v10(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C2F27270()
{
  v29 = v0;
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];

  swift_willThrow();

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v6 = v0[35];
  v7 = sub_1C2F761FC();
  __swift_project_value_buffer(v7, qword_1EC076778);
  v8 = v6;
  v9 = sub_1C2F761DC();
  v10 = sub_1C2F769DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[35];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[23];
    v17 = sub_1C2F76F3C();
    v19 = sub_1C2EFAB28(v17, v18, &v28);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1C2EF2000, v9, v10, "Unable to start podcast recording: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1C6929E80](v13, -1, -1);
    MEMORY[0x1C6929E80](v12, -1, -1);
  }

  v20 = v0[25];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v21 = [objc_opt_self() defaultCenter];
    if (qword_1EC075CC8 != -1)
    {
      swift_once();
    }

    [v21 postNotificationName:qword_1EC076FF8 object:{0, v28}];
  }

  v22 = v0[35];
  v24 = v0[26];
  v23 = v0[27];
  v25 = v22;
  v24(v22);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1C2F27504(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

void sub_1C2F275B0(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  if ([a1 isPodcastRecordingAllowed])
  {
    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EC076778);
    v11 = sub_1C2F761DC();
    v12 = sub_1C2F769EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C2EF2000, v11, v12, "Requesting to stop a podcast recording session.", v13, 2u);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    v14 = sub_1C2F768AC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    sub_1C2F7688C();

    v16 = a1;
    v17 = sub_1C2F7687C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v15;
    v18[5] = a2;
    v18[6] = a3;
    v18[7] = v16;

    sub_1C2F06978(0, 0, v9, &unk_1C2F7A350, v18);
  }

  else
  {
    sub_1C2F281B4();
    v20 = swift_allocError();
    *v21 = 0;
    a2();
  }
}

uint64_t sub_1C2F2785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  sub_1C2F7688C();
  v7[29] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F278F8, v9, v8);
}

uint64_t sub_1C2F278F8()
{
  v1 = v0[25];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v3 = v0[28];
    v4 = *(Strong + 16);
    v0[33] = v4;
    v5 = objc_allocWithZone(MEMORY[0x1E69D8AB8]);
    v6 = v4;
    v7 = [v5 initWithCall_];
    v0[34] = v7;
    v0[2] = v0;
    v0[3] = sub_1C2F27B7C;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767A0, &qword_1C2F7A4B8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2F27504;
    v0[13] = &block_descriptor_3;
    v0[14] = v8;
    [v6 performRecordingRequest:v7 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v9 = v0[29];

    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EC076778);
    v11 = sub_1C2F761DC();
    v12 = sub_1C2F769EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C2EF2000, v11, v12, "self released, can't request stop podcast recording", v13, 2u);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    v14 = v0[26];
    v15 = v0[27];

    v14(0);
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1C2F27B7C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = sub_1C2F27DF0;
  }

  else
  {
    v6 = sub_1C2F27CAC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1C2F27CAC()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[29];

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC076778);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Successfully stopped podcast recording", v7, 2u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  v8 = v0[32];
  v10 = v0[26];
  v9 = v0[27];

  v10(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C2F27DF0()
{
  v27 = v0;
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];

  swift_willThrow();

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v6 = v0[35];
  v7 = sub_1C2F761FC();
  __swift_project_value_buffer(v7, qword_1EC076778);
  v8 = v6;
  v9 = sub_1C2F761DC();
  v10 = sub_1C2F769DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[35];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[23];
    v17 = sub_1C2F76F3C();
    v19 = sub_1C2EFAB28(v17, v18, &v26);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1C2EF2000, v9, v10, "Unable to stop podcast recording: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1C6929E80](v13, -1, -1);
    MEMORY[0x1C6929E80](v12, -1, -1);
  }

  v20 = v0[35];
  v22 = v0[26];
  v21 = v0[27];
  v23 = v20;
  v22(v20);

  v24 = v0[1];

  return v24();
}

void sub_1C2F27FE8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = v2;
    if (qword_1EC075CC8 != -1)
    {
      swift_once();
      v2 = v3;
    }

    [v2 postNotificationName:qword_1EC076FF8 object:0];
  }
}

uint64_t PodcastRecordingService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F28130()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC076778);
  __swift_project_value_buffer(v0, qword_1EC076778);
  return sub_1C2F761EC();
}

unint64_t sub_1C2F281B4()
{
  result = qword_1EC076790;
  if (!qword_1EC076790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076790);
  }

  return result;
}

uint64_t sub_1C2F28208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C2F0AC48;

  return sub_1C2F26CD4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2F2832C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C2F06348;

  return sub_1C2F2785C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1C2F28404()
{
  result = qword_1EC076798;
  if (!qword_1EC076798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsPersonHandle.HandleType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsPersonHandle.HandleType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SettingsPersonListViewModel.__allocating_init(entries:addEntryAction:deleteEntryAction:title:subEntryText:addEntryText:deleteText:footerText:wantsSubtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, char a13)
{
  v21 = *(v13 + 48);
  v22 = *(v13 + 52);
  v23 = swift_allocObject();
  *(v23 + 137) = 0;
  sub_1C2F75DDC();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = a7;
  *(v23 + 72) = a8;
  *(v23 + 80) = a9;
  *(v23 + 96) = a10;
  *(v23 + 112) = a11;
  *(v23 + 128) = a12;
  *(v23 + 136) = a13;
  return v23;
}

uint64_t SettingsPersonHandle.HandleType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t SettingsPersonHandle.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsPersonHandle.formattedValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static SettingsPersonHandle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1C2F76EFC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1C2F76EFC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SettingsPersonHandle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C2F7673C();
  sub_1C2F7673C();
  return MEMORY[0x1C6929580](v5);
}

uint64_t SettingsPersonHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v5);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F28A08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v5);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F28A88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C2F7673C();
  sub_1C2F7673C();
  return MEMORY[0x1C6929580](v5);
}

uint64_t sub_1C2F28ADC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v5);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F28B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1C2F76EFC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1C2F76EFC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SettingsPersonEntry.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void *SettingsPersonEntry.contact.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SettingsPersonEntry.displayName.getter()
{
  if (v0[2])
  {
    v1 = v0[1];
    v2 = v0[2];
  }

  else
  {
    v3 = v0[4];
    if (v3[2])
    {
      v1 = v3[6];
      v4 = v3[7];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void SettingsPersonEntry.init(contact:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v4 setStyle_];
  v77 = a1;
  v5 = [v4 stringFromContact_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C2F766CC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v77 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
  v11 = sub_1C2F767EC();

  if (v11 >> 62)
  {
    v12 = sub_1C2F76BBC();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v4;
  v76 = a2;
  v73 = v9;
  v74 = v7;
  if (v12)
  {
    v78 = v12;
    if (v12 >= 1)
    {
      v13 = 0;
      v79 = v11 & 0xC000000000000001;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = v12;
      while (1)
      {
        if (v79)
        {
          v16 = MEMORY[0x1C6929250](v13, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = [v16 value];
        v19 = [v18 stringValue];

        v20 = sub_1C2F766CC();
        v80 = v21;
        v82 = v20;

        v22 = [v17 value];
        v23 = [v22 stringValue];

        v24 = sub_1C2F766CC();
        v26 = v25;

        v27 = sub_1C2F766AC();
        v28 = PNCopyBestGuessCountryCodeForNumber();

        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = v11;
        v30 = sub_1C2F766AC();
        v31 = CFPhoneNumberCreate();

        if (!v31)
        {
          goto LABEL_17;
        }

        String = CFPhoneNumberCreateString();
        if (!String)
        {
          break;
        }

        v33 = String;
        v24 = sub_1C2F766CC();
        v35 = v34;

        v26 = v35;
LABEL_18:
        v11 = v29;
        v15 = v78;
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1C2F1C554(0, *(v14 + 2) + 1, 1, v14);
        }

        v37 = *(v14 + 2);
        v36 = *(v14 + 3);
        if (v37 >= v36 >> 1)
        {
          v14 = sub_1C2F1C554((v36 > 1), v37 + 1, 1, v14);
        }

        ++v13;

        *(v14 + 2) = v37 + 1;
        v38 = &v14[40 * v37];
        *(v38 + 4) = v82;
        *(v38 + 5) = v80;
        *(v38 + 6) = v24;
        *(v38 + 7) = v26;
        v38[64] = 0;
        if (v15 == v13)
        {
          goto LABEL_26;
        }
      }

LABEL_17:
      goto LABEL_18;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v39 = [v77 emailAddresses];
  v40 = sub_1C2F767EC();

  v41 = v40;
  if (!(v40 >> 62))
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_28;
    }

LABEL_41:

    sub_1C2F76FEC();

    v58 = [v77 identifier];
    v59 = sub_1C2F766CC();
    v61 = v60;

    v62 = MEMORY[0x1C6928D80](v59, v61);

    MEMORY[0x1C6929580](v62);
    v63 = *(v14 + 2);
    if (!v63)
    {
LABEL_45:

      v72 = sub_1C2F76FCC();

      *v76 = v72;
      v76[1] = v74;
      v76[2] = v73;
      v76[3] = v77;
      v76[4] = v14;
      return;
    }

    v64 = 0;
    v65 = (v14 + 64);
    while (v64 < *(v14 + 2))
    {
      ++v64;
      v66 = *v65;
      v67 = *(v65 - 2);
      v68 = *(v65 - 1);
      v70 = *(v65 - 4);
      v69 = *(v65 - 3);
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v66);
      v71 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v71);

      v65 += 40;
      if (v63 == v64)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v57 = sub_1C2F76BBC();
  v41 = v40;
  v42 = v57;
  if (!v57)
  {
    goto LABEL_41;
  }

LABEL_28:
  if (v42 >= 1)
  {
    v43 = 0;
    v81 = v41 & 0xC000000000000001;
    v83 = v41;
    do
    {
      if (v81)
      {
        v44 = MEMORY[0x1C6929250](v43);
      }

      else
      {
        v44 = *(v41 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = [v44 value];
      v47 = sub_1C2F766CC();
      v49 = v48;

      v50 = [v45 value];
      v51 = sub_1C2F766CC();
      v53 = v52;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1C2F1C554(0, *(v14 + 2) + 1, 1, v14);
      }

      v55 = *(v14 + 2);
      v54 = *(v14 + 3);
      if (v55 >= v54 >> 1)
      {
        v14 = sub_1C2F1C554((v54 > 1), v55 + 1, 1, v14);
      }

      ++v43;

      *(v14 + 2) = v55 + 1;
      v56 = &v14[40 * v55];
      *(v56 + 4) = v47;
      *(v56 + 5) = v49;
      *(v56 + 6) = v51;
      *(v56 + 7) = v53;
      v56[64] = 1;
      v41 = v83;
    }

    while (v42 != v43);
    goto LABEL_41;
  }

LABEL_48:
  __break(1u);
}

uint64_t SettingsPersonEntry.init(name:contact:handles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1C2F76FEC();
  v25 = a3;

  if (a3)
  {
    v8 = [a3 identifier];
    v9 = sub_1C2F766CC();
    v11 = v10;

    v12 = MEMORY[0x1C6928D80](v9, v11);
  }

  else
  {
    v12 = 0;
  }

  result = MEMORY[0x1C6929580](v12);
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 64);
    while (v15 < *(a4 + 16))
    {
      ++v15;
      v17 = *v16;
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v21 = *(v16 - 4);
      v20 = *(v16 - 3);
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v17);
      v22 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v22);

      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    result = sub_1C2F76FCC();
    *a5 = result;
    a5[1] = a1;
    a5[2] = a2;
    a5[3] = v25;
    a5[4] = a4;
  }

  return result;
}

uint64_t sub_1C2F29504()
{
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1C2F2958C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  sub_1C2F1F490(v4, a1);
  v6 = v5;

  if (v6)
  {
    v7 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F2A480();
    sub_1C2F75D9C();
  }
}

void (*sub_1C2F296A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F2A480();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F294B0();
  return sub_1C2F297AC;
}

uint64_t SettingsPersonListViewModel.addEntryAction.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SettingsPersonListViewModel.deleteEntryAction.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SettingsPersonListViewModel.title.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_1C2F29898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1C2F29928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1C2F299FC(v2, v3);
}

uint64_t sub_1C2F29968()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v1 = *(v4 + 80);

  return v2;
}

uint64_t sub_1C2F299FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (v6 = *(v2 + 80), (sub_1C2F76EFC() & 1) != 0))
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F2A480();
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F29B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 80);
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

void (*sub_1C2F29B8C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F2A480();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F29848();
  return sub_1C2F29C94;
}

uint64_t SettingsPersonListViewModel.addEntryText.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t SettingsPersonListViewModel.deleteText.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t SettingsPersonListViewModel.footerText.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_1C2F29D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 137);
  return result;
}

uint64_t sub_1C2F29E3C()
{
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 137);
}

uint64_t sub_1C2F29EC0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 137) == v2)
  {
    *(v1 + 137) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F2A480();
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F29FB4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 137) = a2;
  return result;
}

void (*sub_1C2F2A008(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F2A480();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F29D38();
  return sub_1C2F2A110;
}

void sub_1C2F2A11C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v1);
}

uint64_t SettingsPersonListViewModel.init(entries:addEntryAction:deleteEntryAction:title:subEntryText:addEntryText:deleteText:footerText:wantsSubtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, char a13)
{
  *(v13 + 137) = 0;
  sub_1C2F75DDC();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  *(v13 + 64) = a7;
  *(v13 + 72) = a8;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 112) = a11;
  *(v13 + 128) = a12;
  *(v13 + 136) = a13;
  return v13;
}

char *SettingsPersonListViewModel.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);

  v4 = *(v0 + 8);

  v5 = *(v0 + 10);

  v6 = *(v0 + 12);

  v7 = *(v0 + 14);

  v8 = *(v0 + 16);

  v9 = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  v10 = sub_1C2F75DEC();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t SettingsPersonListViewModel.__deallocating_deinit()
{
  SettingsPersonListViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s20CommunicationsUICore19SettingsPersonEntryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1C2F208DC();
    v10 = v9;
    v11 = v5;
    v12 = sub_1C2F76AAC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((sub_1C2F1F38C(v4, v8) & 1) == 0)
  {
    return 0;
  }

  result = (v3 | v7) == 0;
  if (v3 && v7)
  {
    if (v2 == v6 && v3 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1C2F76EFC();
    }
  }

  return result;
}

unint64_t sub_1C2F2A480()
{
  result = qword_1EC0764F0;
  if (!qword_1EC0764F0)
  {
    type metadata accessor for SettingsPersonListViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764F0);
  }

  return result;
}

uint64_t type metadata accessor for SettingsPersonListViewModel()
{
  result = qword_1EC0767B8;
  if (!qword_1EC0767B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F2A544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 137) = v2;
  return result;
}

unint64_t sub_1C2F2A59C()
{
  result = qword_1EC0767B0;
  if (!qword_1EC0767B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767B0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2F2A614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C2F2A65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2F2A6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F2A71C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2F2A77C()
{
  result = sub_1C2F75DEC();
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

unint64_t ActivitySymbol.BundleType.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6D6574737973;
  }

  *v0;
  return result;
}

uint64_t sub_1C2F2AA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C2F76EFC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C2F7EFB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2F76EFC();

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

uint64_t sub_1C2F2AB48(uint64_t a1)
{
  v2 = sub_1C2F2AF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2AB84(uint64_t a1)
{
  v2 = sub_1C2F2AF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2ABCC(uint64_t a1)
{
  v2 = sub_1C2F2AFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2AC08(uint64_t a1)
{
  v2 = sub_1C2F2AFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2AC44(uint64_t a1)
{
  v2 = sub_1C2F2B014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2AC80(uint64_t a1)
{
  v2 = sub_1C2F2B014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySymbol.BundleType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767C8, &qword_1C2F7A850);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767D0, &qword_1C2F7A858);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767D8, &qword_1C2F7A860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2AF6C();
  sub_1C2F7702C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1C2F2AFC0();
    v18 = v22;
    sub_1C2F76E3C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1C2F2B014();
    sub_1C2F76E3C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1C2F2AF6C()
{
  result = qword_1EC0767E0;
  if (!qword_1EC0767E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767E0);
  }

  return result;
}

unint64_t sub_1C2F2AFC0()
{
  result = qword_1EC0767E8;
  if (!qword_1EC0767E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767E8);
  }

  return result;
}

unint64_t sub_1C2F2B014()
{
  result = qword_1EC0767F0;
  if (!qword_1EC0767F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767F0);
  }

  return result;
}

uint64_t ActivitySymbol.BundleType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.BundleType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767F8, &qword_1C2F7A868);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076800, &qword_1C2F7A870);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076808, &qword_1C2F7A878);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2AF6C();
  v17 = v37;
  sub_1C2F7701C();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1C2F76E2C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1C2F76CAC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076810, &qword_1C2F7A880) + 48);
    *v25 = &type metadata for ActivitySymbol.BundleType;
    sub_1C2F76DAC();
    sub_1C2F76C9C();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1C2F2AFC0();
    sub_1C2F76D9C();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1C2F2B014();
    sub_1C2F76D9C();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_1C2F2B530()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySymbol.Animation.description.getter()
{
  v1 = 0x74496C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1C2F2B60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F2D96C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F2B634(uint64_t a1)
{
  v2 = sub_1C2F2BB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B670(uint64_t a1)
{
  v2 = sub_1C2F2BB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2B6AC(uint64_t a1)
{
  v2 = sub_1C2F2BC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B6E8(uint64_t a1)
{
  v2 = sub_1C2F2BC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2B724(uint64_t a1)
{
  v2 = sub_1C2F2BBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B760(uint64_t a1)
{
  v2 = sub_1C2F2BBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2B79C(uint64_t a1)
{
  v2 = sub_1C2F2BC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B7D8(uint64_t a1)
{
  v2 = sub_1C2F2BC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySymbol.Animation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076818, &qword_1C2F7A888);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076820, &qword_1C2F7A890);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076828, &qword_1C2F7A898);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076830, &qword_1C2F7A8A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2BB80();
  sub_1C2F7702C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1C2F2BC28();
      v12 = v26;
      sub_1C2F76E3C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1C2F2BBD4();
      v12 = v29;
      sub_1C2F76E3C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1C2F2BC7C();
    sub_1C2F76E3C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1C2F2BB80()
{
  result = qword_1EC076838;
  if (!qword_1EC076838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076838);
  }

  return result;
}

unint64_t sub_1C2F2BBD4()
{
  result = qword_1EC076840;
  if (!qword_1EC076840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076840);
  }

  return result;
}

unint64_t sub_1C2F2BC28()
{
  result = qword_1EC076848;
  if (!qword_1EC076848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076848);
  }

  return result;
}

unint64_t sub_1C2F2BC7C()
{
  result = qword_1EC076850;
  if (!qword_1EC076850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076850);
  }

  return result;
}

uint64_t ActivitySymbol.Animation.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.Animation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076858, &qword_1C2F7A8A8);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076860, &qword_1C2F7A8B0);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076868, &qword_1C2F7A8B8);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076870, &qword_1C2F7A8C0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2BB80();
  v18 = v49;
  sub_1C2F7701C();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_1C2F76E2C();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_1C2F2BC28();
          v33 = v40;
          sub_1C2F76D9C();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_1C2F2BBD4();
          v37 = v40;
          sub_1C2F76D9C();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_1C2F2BC7C();
        v35 = v40;
        sub_1C2F76D9C();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }
  }

  v26 = sub_1C2F76CAC();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076810, &qword_1C2F7A880) + 48);
  *v28 = &type metadata for ActivitySymbol.Animation;
  sub_1C2F76DAC();
  sub_1C2F76C9C();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t static ActivitySymbol.system(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

uint64_t ActivitySymbol.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

CommunicationsUICore::ActivitySymbol __swiftcall ActivitySymbol.init(stringLiteral:)(CommunicationsUICore::ActivitySymbol stringLiteral)
{
  *v1 = stringLiteral.name;
  *(v1 + 16) = 0;
  return stringLiteral;
}

uint64_t sub_1C2F2C3B4()
{
  v1 = 0x656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x6F6974616D696E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C2F2C408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F2DA94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F2C430(uint64_t a1)
{
  v2 = sub_1C2F2CCD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2C46C(uint64_t a1)
{
  v2 = sub_1C2F2CCD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySymbol.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076878, &qword_1C2F7A8C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v20 = *(v1 + 17);
  v21 = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1C2F2CCD8();
  sub_1C2F7702C();
  v26 = 0;
  sub_1C2F76E6C();
  if (!v2)
  {
    v17 = v20;
    v25 = v21;
    v24 = 1;
    sub_1C2F2CD2C();
    sub_1C2F76E9C();
    v23 = v17;
    v22 = 2;
    sub_1C2F2CD80();
    sub_1C2F76E9C();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t ActivitySymbol.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v3);
  return MEMORY[0x1C6929580](v4);
}

uint64_t ActivitySymbol.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v3);
  MEMORY[0x1C6929580](v4);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076898, &qword_1C2F7A8D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2CCD8();
  sub_1C2F7701C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = 0;
  v11 = sub_1C2F76DDC();
  v13 = v12;
  v14 = v11;
  v21 = 1;
  sub_1C2F2CDD4();
  sub_1C2F76E0C();
  v18 = v22;
  v19 = 2;
  sub_1C2F2CE28();
  sub_1C2F76E0C();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 17) = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C2F2C9D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v3);
  MEMORY[0x1C6929580](v4);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F2CA54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v3);
  return MEMORY[0x1C6929580](v4);
}

uint64_t sub_1C2F2CAA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v3);
  MEMORY[0x1C6929580](v4);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  if (*(v0 + 16))
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6D6574737973;
  }

  if (*(v0 + 16))
  {
    v5 = 0x80000001C2F7EFB0;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x1C6928D30](v4, v5);

  MEMORY[0x1C6928D30](95, 0xE100000000000000);
  MEMORY[0x1C6928D30](v1, v2);
  MEMORY[0x1C6928D30](95, 0xE100000000000000);
  v6 = 0xEF65766974617265;
  v7 = 0x74496C6F626D7973;
  if (v3 != 1)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001C2F7F000;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1701736302;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1C6928D30](v8, v9);

  return 0;
}

BOOL _s20CommunicationsUICore14ActivitySymbolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_1C2F76EFC();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

unint64_t sub_1C2F2CCD8()
{
  result = qword_1EC076880;
  if (!qword_1EC076880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076880);
  }

  return result;
}

unint64_t sub_1C2F2CD2C()
{
  result = qword_1EC076888;
  if (!qword_1EC076888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076888);
  }

  return result;
}

unint64_t sub_1C2F2CD80()
{
  result = qword_1EC076890;
  if (!qword_1EC076890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076890);
  }

  return result;
}

unint64_t sub_1C2F2CDD4()
{
  result = qword_1EC0768A0;
  if (!qword_1EC0768A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768A0);
  }

  return result;
}

unint64_t sub_1C2F2CE28()
{
  result = qword_1EC0768A8;
  if (!qword_1EC0768A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768A8);
  }

  return result;
}

unint64_t sub_1C2F2CE80()
{
  result = qword_1EC0768B0;
  if (!qword_1EC0768B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768B0);
  }

  return result;
}

unint64_t sub_1C2F2CED8()
{
  result = qword_1EC0768B8;
  if (!qword_1EC0768B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768B8);
  }

  return result;
}

unint64_t sub_1C2F2CF30()
{
  result = qword_1EC0768C0;
  if (!qword_1EC0768C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768C0);
  }

  return result;
}

unint64_t sub_1C2F2CF94()
{
  result = qword_1EC0768C8;
  if (!qword_1EC0768C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768C8);
  }

  return result;
}

unint64_t sub_1C2F2CFEC()
{
  result = qword_1EC0768D0;
  if (!qword_1EC0768D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768D0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C2F2D06C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1C2F2D0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTMenuItem.SecondaryViewPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMenuItem.SecondaryViewPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2F2D2E8()
{
  result = qword_1EC0768D8;
  if (!qword_1EC0768D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768D8);
  }

  return result;
}

unint64_t sub_1C2F2D340()
{
  result = qword_1EC0768E0;
  if (!qword_1EC0768E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768E0);
  }

  return result;
}

unint64_t sub_1C2F2D398()
{
  result = qword_1EC0768E8;
  if (!qword_1EC0768E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768E8);
  }

  return result;
}

unint64_t sub_1C2F2D3F0()
{
  result = qword_1EC0768F0;
  if (!qword_1EC0768F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768F0);
  }

  return result;
}

unint64_t sub_1C2F2D448()
{
  result = qword_1EC0768F8;
  if (!qword_1EC0768F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768F8);
  }

  return result;
}

unint64_t sub_1C2F2D4A0()
{
  result = qword_1EC076900;
  if (!qword_1EC076900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076900);
  }

  return result;
}

unint64_t sub_1C2F2D4F8()
{
  result = qword_1EC076908;
  if (!qword_1EC076908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076908);
  }

  return result;
}

unint64_t sub_1C2F2D550()
{
  result = qword_1EC076910;
  if (!qword_1EC076910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076910);
  }

  return result;
}

unint64_t sub_1C2F2D5A8()
{
  result = qword_1EC076918;
  if (!qword_1EC076918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076918);
  }

  return result;
}

unint64_t sub_1C2F2D600()
{
  result = qword_1EC076920;
  if (!qword_1EC076920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076920);
  }

  return result;
}

unint64_t sub_1C2F2D658()
{
  result = qword_1EC076928;
  if (!qword_1EC076928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076928);
  }

  return result;
}

unint64_t sub_1C2F2D6B0()
{
  result = qword_1EC076930;
  if (!qword_1EC076930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076930);
  }

  return result;
}

unint64_t sub_1C2F2D708()
{
  result = qword_1EC076938;
  if (!qword_1EC076938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076938);
  }

  return result;
}

unint64_t sub_1C2F2D760()
{
  result = qword_1EC076940;
  if (!qword_1EC076940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076940);
  }

  return result;
}

unint64_t sub_1C2F2D7B8()
{
  result = qword_1EC076948;
  if (!qword_1EC076948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076948);
  }

  return result;
}

unint64_t sub_1C2F2D810()
{
  result = qword_1EC076950;
  if (!qword_1EC076950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076950);
  }

  return result;
}

unint64_t sub_1C2F2D868()
{
  result = qword_1EC076958;
  if (!qword_1EC076958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076958);
  }

  return result;
}

unint64_t sub_1C2F2D8C0()
{
  result = qword_1EC076960;
  if (!qword_1EC076960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076960);
  }

  return result;
}

unint64_t sub_1C2F2D918()
{
  result = qword_1EC076968;
  if (!qword_1EC076968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076968);
  }

  return result;
}

uint64_t sub_1C2F2D96C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74496C6F626D7973 && a2 == 0xEF65766974617265 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C2F7F000 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C2F2DA94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static CallCenterFacade.shared.getter()
{
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C2F2DC3C()
{
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallCenterFacade();
  result = swift_allocObject();
  *(result + 16) = v0;
  off_1EDEBDA58 = result;
  return result;
}

uint64_t CallCenterFacade.call(with:)()
{
  v1 = *(v0 + 16);
  v2 = sub_1C2F766AC();
  v3 = [v1 callWithUniqueProxyIdentifier_];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for CallFacade();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = v3;
  v6 = [v5 uniqueProxyIdentifier];
  v7 = sub_1C2F766CC();
  v9 = v8;

  result = v4;
  *(v4 + 24) = v7;
  *(v4 + 32) = v9;
  return result;
}

uint64_t CallCenterFacade.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CallFacade.uniqueProxyIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CallFacade.deinit()
{
  MEMORY[0x1C6929F80](v0 + 16);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t CallFacade.__deallocating_deinit()
{
  MEMORY[0x1C6929F80](v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F2DEFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1C2F76B6C();
    v9 = v8;
    v10 = sub_1C2F76BEC();
    v12 = v11;
    v13 = MEMORY[0x1C6929160](v7, v9, v10, v11);
    sub_1C2F2FFB4(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1C2F2FFB4(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_1C2F76B4C();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C2F2FCDC(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_1C2F2FFB4(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_1C2F2E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1C2F76B4C();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1C2F2FEF4(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_1C2F75FCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void *FTMenuItemStateProvider.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = 0;
  return v4;
}

void *FTMenuItemStateProvider.init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = 0;
  return v2;
}

uint64_t FTMenuItemStateProvider.uniqueProxyIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t FTMenuItemStateProvider.addPeopleAllowed.getter()
{
  v1 = v0;
  v2 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v4 = Strong;
  if ([Strong callStatus]!= 1 && [v4 callStatus]!= 2)
  {

LABEL_16:
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C2F761FC();
    __swift_project_value_buffer(v18, qword_1EDEBDA78);

    v4 = sub_1C2F761DC();
    v19 = sub_1C2F769EC();

    if (os_log_type_enabled(v4, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v68 = v21;
      *v20 = 136315138;
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        [v22 callStatus];

        type metadata accessor for TUCallStatus(0);
        v24 = sub_1C2F7670C();
        v26 = v25;
      }

      else
      {
        v24 = 7104878;
        v26 = 0xE300000000000000;
      }

      v39 = sub_1C2EFAB28(v24, v26, &v68);

      *(v20 + 4) = v39;
      _os_log_impl(&dword_1C2EF2000, v4, v19, "addPeopleAllowed is false because call is nil or call status is %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1C6929E80](v21, -1, -1);
      MEMORY[0x1C6929E80](v20, -1, -1);
    }

    goto LABEL_63;
  }

  v5 = [v4 provider];
  v6 = [v5 isFaceTimeProvider];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 provider];
    v8 = [v7 isTelephonyProvider];

    if (!v8)
    {
      if (qword_1EDEBC5B8 != -1)
      {
        swift_once();
      }

      v30 = sub_1C2F761FC();
      __swift_project_value_buffer(v30, qword_1EDEBDA78);
      v4 = v4;
      v31 = sub_1C2F761DC();
      v32 = sub_1C2F769EC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 67109376;
        v34 = [v4 provider];
        v35 = [v34 isFaceTimeProvider];

        *(v33 + 4) = v35;
        *(v33 + 8) = 1024;
        v36 = [v4 provider];
        v37 = [v36 isTelephonyProvider];

        *(v33 + 10) = v37;
        _os_log_impl(&dword_1C2EF2000, v31, v32, "addPeopleAllowed is false because it is a third party call. (isFTProvider=%{BOOL}d, isTelephonyProvider=%{BOOL}d", v33, 0xEu);
        v38 = v33;
LABEL_62:
        MEMORY[0x1C6929E80](v38, -1, -1);

        goto LABEL_63;
      }

      goto LABEL_54;
    }
  }

  if (([v4 isVideo]& 1) == 0)
  {
    v9 = *(v1 + 32);
    if (([*(v9 + 16) isAddCallAllowed] & 1) == 0)
    {
      if (qword_1EDEBC5B8 != -1)
      {
        swift_once();
      }

      v40 = sub_1C2F761FC();
      __swift_project_value_buffer(v40, qword_1EDEBDA78);
      v4 = v4;

      v31 = sub_1C2F761DC();
      v41 = sub_1C2F769EC();
      if (!os_log_type_enabled(v31, v41))
      {

LABEL_64:
        v17 = 0;
        return v17 & 1;
      }

      v42 = swift_slowAlloc();
      *v42 = 67109376;
      *(v42 + 4) = [v4 isVideo];

      *(v42 + 8) = 1024;
      *(v42 + 10) = [*(v9 + 16) &selRef_isRecommended + 2];

      _os_log_impl(&dword_1C2EF2000, v31, v41, "addPeopleAllowed is false because call is either video %{BOOL}d or call is not allowed to add people %{BOOL}d.", v42, 0xEu);
      goto LABEL_61;
    }
  }

  v10 = [v4 provider];
  v11 = [v10 isTelephonyProvider];

  if (!v11)
  {
    if ([v4 isConversation])
    {
      v27 = [v4 remoteParticipantHandles];
      sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
      sub_1C2F2FA98();
      v28 = sub_1C2F7697C();

      v29 = (v28 & 0xC000000000000001) != 0 ? sub_1C2F76BBC() : *(v28 + 16);

      if (v29 == 1)
      {
        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          v45 = [*(*(v1 + 32) + 16) activeConversationForCall_];

          if (v45)
          {
            if ([v45 state] == 3)
            {
              v46 = objc_opt_self();
              if ([v46 supportsConversations])
              {
                if ([*(v1 + 16) oneToOneFaceTimeMyselfEnabled] && objc_msgSend(v45, sel_state) == 3 && objc_msgSend(v45, sel_isOneToOneFaceTimeMyself))
                {
                  if (qword_1EDEBC5B8 != -1)
                  {
                    swift_once();
                  }

                  v47 = sub_1C2F761FC();
                  __swift_project_value_buffer(v47, qword_1EDEBDA78);
                  v48 = sub_1C2F761DC();
                  v49 = sub_1C2F769EC();
                  if (!os_log_type_enabled(v48, v49))
                  {
                    goto LABEL_71;
                  }

                  v50 = swift_slowAlloc();
                  *v50 = 0;
                  v51 = "addPeopleAllowed is false because it's isOneToOneFaceTimeMyself";
                }

                else
                {
                  if ([v45 avMode] != 1 || (objc_msgSend(v45, sel_isBackedByGroupSession) & 1) != 0)
                  {
                    v17 = [v46 isAddPersonEnabled];

                    return v17 & 1;
                  }

                  if (qword_1EDEBC5B8 != -1)
                  {
                    swift_once();
                  }

                  v67 = sub_1C2F761FC();
                  __swift_project_value_buffer(v67, qword_1EDEBDA78);
                  v48 = sub_1C2F761DC();
                  v49 = sub_1C2F769EC();
                  if (!os_log_type_enabled(v48, v49))
                  {
                    goto LABEL_71;
                  }

                  v50 = swift_slowAlloc();
                  *v50 = 0;
                  v51 = "addPeopleAllowed is false because this is legacy audio call";
                }
              }

              else
              {
                if (qword_1EDEBC5B8 != -1)
                {
                  swift_once();
                }

                v66 = sub_1C2F761FC();
                __swift_project_value_buffer(v66, qword_1EDEBDA78);
                v48 = sub_1C2F761DC();
                v49 = sub_1C2F769EC();
                if (!os_log_type_enabled(v48, v49))
                {
                  goto LABEL_71;
                }

                v50 = swift_slowAlloc();
                *v50 = 0;
                v51 = "addPeopleAllowed is false because conversations aren't supported";
              }

              _os_log_impl(&dword_1C2EF2000, v48, v49, v51, v50, 2u);
              MEMORY[0x1C6929E80](v50, -1, -1);
LABEL_71:

              goto LABEL_63;
            }
          }
        }
      }
    }

    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v52 = sub_1C2F761FC();
    __swift_project_value_buffer(v52, qword_1EDEBDA78);
    v4 = v4;

    v31 = sub_1C2F761DC();
    v53 = sub_1C2F769EC();

    if (os_log_type_enabled(v31, v53))
    {
      v42 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v68 = v54;
      *v42 = 67109634;
      *(v42 + 4) = [v4 isConversation];
      *(v42 + 8) = 2048;
      v55 = [v4 remoteParticipantHandles];
      sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
      sub_1C2F2FA98();
      v56 = sub_1C2F7697C();

      if ((v56 & 0xC000000000000001) != 0)
      {
        v57 = sub_1C2F76BBC();
      }

      else
      {
        v57 = *(v56 + 16);
      }

      v58 = 7104878;

      *(v42 + 10) = v57;

      *(v42 + 18) = 2080;
      v59 = swift_unknownObjectWeakLoadStrong();
      if (v59 && (v60 = v59, v61 = [*(*(v1 + 32) + 16) activeConversationForCall_], v60, v61))
      {
        [v61 state];

        type metadata accessor for TUConversationState(0);
        v58 = sub_1C2F7670C();
        v63 = v62;
      }

      else
      {
        v63 = 0xE300000000000000;
      }

      v64 = sub_1C2EFAB28(v58, v63, &v68);

      *(v42 + 20) = v64;
      _os_log_impl(&dword_1C2EF2000, v31, v53, "addPeopleAllowed is false. isConversation=%{BOOL}d, remoteParticipantHandlesCount=%ld, conversationState=%s", v42, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1C6929E80](v54, -1, -1);
LABEL_61:
      v38 = v42;
      goto LABEL_62;
    }

LABEL_54:

LABEL_63:
    goto LABEL_64;
  }

  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C2F761FC();
  __swift_project_value_buffer(v12, qword_1EDEBDA78);
  v13 = sub_1C2F761DC();
  v14 = sub_1C2F769EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C2EF2000, v13, v14, "addPeople is telephony call. Checking if in lost mode or runnining setup assistant", v15, 2u);
    MEMORY[0x1C6929E80](v15, -1, -1);
  }

  type metadata accessor for DeviceConditions();
  swift_initStaticObject();
  if (DeviceConditions.isInLostMode.getter())
  {
    goto LABEL_63;
  }

  v16 = DeviceConditions.isSetupAssistantRunning.getter();

  v17 = v16 ^ 1;
  return v17 & 1;
}

uint64_t FTMenuItemStateProvider.viewContactCardAllowed.getter()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = [Strong remoteParticipantHandles];

  sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
  sub_1C2F2FA98();
  v5 = sub_1C2F7697C();

  v6 = (v5 & 0xC000000000000001) != 0 ? sub_1C2F76BBC() : *(v5 + 16);

  if (v6 == 1 && (v7 = swift_unknownObjectWeakLoadStrong()) != 0 && (v8 = v7, v9 = [v7 provider], v8, LODWORD(v8) = objc_msgSend(v9, sel_isSystemProvider), v9, v8))
  {
    v10 = FTMenuItemStateProvider.isGroupOrConferenceCall.getter() ^ 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t FTMenuItemStateProvider.isGroupOrConferenceCall.getter()
{
  v1 = *(v0 + 32);
  v2 = [*(v1 + 16) frontmostCall];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v2 isConversation];

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [*(v1 + 16) frontmostCall];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v5 remoteParticipantHandles];

  sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
  sub_1C2F2FA98();
  v8 = sub_1C2F7697C();

  v9 = (v8 & 0xC000000000000001) != 0 ? sub_1C2F76BBC() : *(v8 + 16);

  if (v9 > 1 && (v10 = [*(v1 + 16) frontmostCall]) != 0)
  {
    v11 = v10;
    v12 = [v10 provider];

    v13 = [v12 isTelephonyProvider];
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  if ([*(v1 + 16) currentCallCount] < 1)
  {
    return v13 != 0;
  }

  v14 = [*(v1 + 16) currentAudioAndVideoCallGroups];
  sub_1C2EF5A14(0, &qword_1EC076970, 0x1E69D8A70);
  v15 = sub_1C2F767EC();

  if (v15 >> 62)
  {
    result = sub_1C2F76BBC();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_23:

    return v13 != 0;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1C6929250](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = [v18 calls];

  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  v20 = sub_1C2F767EC();

  if (v20 >> 62)
  {
    v21 = sub_1C2F76BBC();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 >= 2)
  {
    v22 = [*(v1 + 16) isAmbiguous];
    if ((v13 & 1) == 0)
    {
      return v22 ^ 1;
    }

    return 1;
  }

  return v13 != 0;
}

uint64_t FTMenuItemStateProvider.viewContactCardIcon.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = sub_1C2F75A5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong imageURL];

    if (v18)
    {
      sub_1C2F75A3C();

      (*(v11 + 56))(v7, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v7, 1, 1, v10);
    }

    sub_1C2F2FB68(v7, v9);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v34 = *(v11 + 32);
      v34(v14, v9, v10);
      v34(a1, v14, v10);
      v31 = type metadata accessor for FTMenuItem.IconType(0);
      goto LABEL_12;
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_1C2F2FB00(v9);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v19;
  v21 = [v19 remoteParticipantHandles];

  sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
  sub_1C2F2FA98();
  v22 = sub_1C2F7697C();

  v23 = sub_1C2F2DEFC(v22, &qword_1EC076000, 0x1E69D8C00);

  if (!v23)
  {
LABEL_10:
    v32 = type metadata accessor for FTMenuItem.IconType(0);
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C2F78B90;
  v25 = [v23 value];
  v26 = sub_1C2F766CC();
  v28 = v27;

  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  v29 = sub_1C2F767DC();

  v30 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v29];

  *a1 = v30;
  v31 = type metadata accessor for FTMenuItem.IconType(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  return (*(*(v31 - 8) + 56))(a1, 0, 1, v31);
}

void *FTMenuItemStateProvider.shouldViewCallDetails.getter()
{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result isVideo];

    if (v4)
    {
      return 0;
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v5 = result;
        v6 = [result provider];

        LODWORD(v5) = [v6 isTelephonyProvider];
        return (v5 ^ 1);
      }
    }
  }

  return result;
}

id FTMenuItemStateProvider.callRecordingAllowed.getter()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong isVideo])
    {
      if (![*(v0 + 16) enhancedCallRecordingEnabled])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v4 = &selRef_isPodcastRecordingAllowed;
    }

    else
    {
      v4 = &selRef_isRecordingAllowed;
    }

    v5 = [v3 *v4];
LABEL_9:

    return v5;
  }

  return 0;
}

id FTMenuItemStateProvider.isCallRecordingActive.getter()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong isVideo])
    {
      if (![*(v0 + 16) enhancedCallRecordingEnabled])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v4 = &selRef_isRecordingPodcast;
    }

    else
    {
      v4 = &selRef_isRecording;
    }

    v5 = [v3 *v4];
LABEL_9:

    return v5;
  }

  return 0;
}

id FTMenuItemStateProvider.waitOnHoldAllowed.getter()
{
  result = [*(v0 + 16) waitOnHoldEnabled];
  if (result)
  {
    sub_1C2F2F804();
    v2 = sub_1C2F7600C();

    if ((v2 & 1) != 0 && [*(*(v0 + 32) + 16) currentAudioAndVideoCallCount] == 1)
    {
      v3 = *(v0 + 24);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v4 = result;
        v5 = [result smartHoldingAvailability];

        return (v5 == 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2F2F804()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    sub_1C2F7602C();
    v1 = sub_1C2F7601C();
    v3 = *(v0 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t FTMenuItemStateProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t FTMenuItemStateProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F2F8F4()
{
  v1 = *(*v0 + 24);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t sub_1C2F2FA68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1C2F2FA98()
{
  result = qword_1EC076008;
  if (!qword_1EC076008)
  {
    sub_1C2EF5A14(255, &qword_1EC076000, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076008);
  }

  return result;
}

uint64_t sub_1C2F2FB00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F2FB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C2F2FCDC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69291A0](a1, a2, v11);
      sub_1C2EF5A14(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C2EF5A14(0, a5, a6);
    if (sub_1C2F76B9C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C2F76BAC();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1C2F76A9C();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1C2F76AAC();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_1C2F2FEF4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1C2F75FCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1C2F2FFB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1C2F2FFC0()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed;
  if ((v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] & 1) == 0)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
    v4 = *&v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName + 8];
    sub_1C2F0CA5C();
    v5 = sub_1C2F76A2C();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = sub_1C2F305C0;
    v16[5] = v6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1C2F44230;
    v16[3] = &block_descriptor_4;
    v7 = _Block_copy(v16);

    v8 = sub_1C2F7672C();
    v9 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token;
    swift_beginAccess();
    LODWORD(v9) = notify_register_dispatch((v8 + 32), &v2[v9], v5, v7);
    swift_endAccess();

    _Block_release(v7);

    if (v9)
    {
      if (qword_1EC075C88 != -1)
      {
        swift_once();
      }

      v10 = sub_1C2F761FC();
      __swift_project_value_buffer(v10, qword_1EC076978);
      v11 = v2;
      v12 = sub_1C2F761DC();
      v13 = sub_1C2F769DC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1C2EFAB28(v3, v4, v16);
        _os_log_impl(&dword_1C2EF2000, v12, v13, "Failed to observe %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1C6929E80](v15, -1, -1);
        MEMORY[0x1C6929E80](v14, -1, -1);
      }
    }

    else
    {
      v2[v1] = 1;
    }
  }
}

id sub_1C2F3023C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed;
  if (v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] == 1)
  {
    v3 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token;
    swift_beginAccess();
    notify_cancel(*&v0[v3]);
    v0[v2] = 0;
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C2F303B0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EC075C88 != -1)
    {
      swift_once();
    }

    v2 = sub_1C2F761FC();
    __swift_project_value_buffer(v2, qword_1EC076978);
    v3 = v1;
    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769CC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = *&v3[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
      v9 = *&v3[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName + 8];

      v10 = sub_1C2EFAB28(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "%s has notified", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1C6929E80](v7, -1, -1);
      MEMORY[0x1C6929E80](v6, -1, -1);
    }

    v12 = *&v3[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];
    v11 = *&v3[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler + 8];

    v12(v13);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F305E0()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC076978);
  __swift_project_value_buffer(v0, qword_1EC076978);
  return sub_1C2F761EC();
}

BOOL sub_1C2F30670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a3);
  v6 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a3);
  if (v7)
  {
    MEMORY[0x1C6928D30](v6);

    MEMORY[0x1C6928D30](32, 0xE100000000000000);
  }

  _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(a2, a3);
  v8 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(a2, a3);
  if (v9)
  {
    MEMORY[0x1C6928D30](v8);

    MEMORY[0x1C6928D30](32, 0xE100000000000000);
  }

  sub_1C2EF66C8();
  v10 = sub_1C2F76B0C();

  return v10 == -1;
}

uint64_t AudioMuteService.isMuted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);

  sub_1C2F7628C();

  return v3;
}

uint64_t AudioMuteService.mutePublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t AudioMuteService.__allocating_init(call:)(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = type metadata accessor for CallFacade();
  v16[3] = v4;
  v16[4] = &off_1F42B4598;
  v16[0] = a1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v4);
  v9 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1C2F3136C(v3, *v11, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

Swift::Void __swiftcall AudioMuteService.setMute(to:)(Swift::Bool to)
{
  v2 = v1;

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call);
    swift_beginAccess();
    v9 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v10 = *(*v9 + 24);
    v11 = *(*v9 + 32);

    v12 = sub_1C2EFAB28(v10, v11, &v18);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = to;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "tell TUCalI: %s to update isUplinkMuted to %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);
  v14 = to;
  LOBYTE(v18) = v14;

  sub_1C2F7627C();

  v15 = v2 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call;
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  (*(v17 + 24))(v14, v16, v17);
  swift_endAccess();
}

void sub_1C2F30CD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  sub_1C2F7599C();
  if (!v20)
  {
    sub_1C2F26504(v19);
    goto LABEL_11;
  }

  sub_1C2F317E8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = sub_1C2F761DC();
    v11 = sub_1C2F769EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C2EF2000, v10, v11, "recived mute state did change notification for a different call", v12, 2u);
      MEMORY[0x1C6929E80](v12, -1, -1);
    }

    return;
  }

  v2 = [v18 uniqueProxyIdentifier];
  v3 = sub_1C2F766CC();
  v5 = v4;

  v6 = (v1 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call);
  swift_beginAccess();
  v7 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3 == *(*v7 + 24) && v5 == *(*v7 + 32))
  {
  }

  else
  {
    v9 = sub_1C2F76EFC();

    if ((v9 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v13 = v18;
  v14 = sub_1C2F761DC();
  v15 = sub_1C2F769EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = [v13 isUplinkMuted];

    _os_log_impl(&dword_1C2EF2000, v14, v15, "notificationCall.isUplinkMuted:%{BOOL}d", v16, 8u);
    MEMORY[0x1C6929E80](v16, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  v17 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);

  [v13 isUplinkMuted];
  sub_1C2F7627C();
}

uint64_t AudioMuteService.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);

  v4 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_cancellables);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call));
  return v0;
}

uint64_t AudioMuteService.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);

  v4 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_cancellables);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F31108()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);

  sub_1C2F7628C();

  return v3;
}

uint64_t sub_1C2F31158()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_1C2F31310(char a1)
{
  v3 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setUplinkMuted_];
}

uint64_t sub_1C2F3136C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F76A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[3] = type metadata accessor for CallFacade();
  v19[4] = &off_1F42B4598;
  v19[0] = a2;
  sub_1C2F761EC();
  v11 = OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject;
  v18[0] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(a3 + v11) = sub_1C2F7629C();
  *(a3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_cancellables) = MEMORY[0x1E69E7CD0];
  *(a3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_notificationCenter) = a1;
  sub_1C2F09348(v19, a3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call);
  v15 = *MEMORY[0x1E69D8EB0];
  v16 = a1;
  sub_1C2F76A8C();
  swift_allocObject();
  swift_weakInit();
  sub_1C2F31790();
  sub_1C2F7631C();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_1C2F7620C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return a3;
}

uint64_t type metadata accessor for AudioMuteService()
{
  result = qword_1EC0769D8;
  if (!qword_1EC0769D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F3165C()
{
  result = sub_1C2F761FC();
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

unint64_t sub_1C2F31790()
{
  result = qword_1EDEBC500;
  if (!qword_1EDEBC500)
  {
    sub_1C2F76A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBC500);
  }

  return result;
}

unint64_t sub_1C2F317E8()
{
  result = qword_1EC0760C0;
  if (!qword_1EC0760C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0760C0);
  }

  return result;
}

id sub_1C2F31854(const char *a1, char a2)
{
  v5 = v2;
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C2EF2000, v6, v7, a1, v8, 2u);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  v9 = *(v5 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate);
  v10 = *(v9 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient);
  if (v10)
  {
    [v10 enableCaptions_];
  }

  result = *(v9 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient);
  if (result)
  {

    return [result enableCaptions_];
  }

  return result;
}

uint64_t sub_1C2F31968(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v24 = a1;
  v9 = sub_1C2F75C8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_1C2F768AC();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
    v19 = *(v10 + 80);
    v23 = a5;
    v20 = (v19 + 44) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v17;
    *(v21 + 40) = v24;
    (*(v10 + 32))(v21 + v20, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v22 = v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v22 = a3;
    *(v22 + 8) = a4;
    *(v22 + 16) = v23 & 1;

    sub_1C2F06978(0, 0, v15, &unk_1C2F7B738, v21);
  }

  return result;
}

uint64_t sub_1C2F31BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 52) = v10;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 48) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C2F31BE8, a4, 0);
}

uint64_t sub_1C2F31BE8()
{
  v1 = *(v0 + 16);
  sub_1C2F31C54(*(v0 + 48), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 52));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C2F31C54(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v69 = a5;
  v65 = a2;
  v66 = a3;
  v9 = sub_1C2F75C8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcripts;
  swift_beginAccess();
  v15 = *(v5 + v14);
  v16 = *(v15 + 16);
  v67 = a4;
  if (v16 && (v17 = sub_1C2F3D888(a1), (v18 & 1) != 0))
  {
    v19 = (*(v15 + 56) + 40 * v17);
    v20 = *v19;
    v21 = *(v19 + 4);
    v22 = *(v19 + 5);
    v23 = *(v19 + 2);
    v64 = *(v19 + 1);
    v24 = *(v19 + 4);
    v63 = *(v19 + 3);
    v25 = 0x100000000;
    if (!v21)
    {
      v25 = 0;
    }

    v26 = v25 | v20;
    v27 = 0x10000000000;
    if (!v22)
    {
      v27 = 0;
    }

    v28 = v26 | v27;
    v62 = v24;
  }

  else
  {
    v28 = 0;
    v64 = 0;
    v23 = 0;
    v63 = 0;
    v62 = 0;
  }

  v29 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_completions;
  swift_beginAccess();
  v30 = *(v6 + v29);
  v31 = *(v30 + 16);
  v68 = a1;
  if (v31 && (v32 = sub_1C2F3D888(a1), (v33 & 1) != 0))
  {
    v34 = (*(v30 + 56) + 2 * v32);
    v35 = *v34;
    if (v34[1])
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36 | v35;
  }

  else
  {
    v37 = 2;
  }

  (*(v10 + 16))(v13, *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate) + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_source, v9);
  v38 = MEMORY[0x1C6928160](v65, v13);
  (*(v10 + 8))(v13, v9);
  if (v38)
  {
    v39 = v37 >> 8;
    if (v37 == 2)
    {
      LOBYTE(v39) = 0;
    }

    if (v23)
    {
      v40 = v28;
      v41 = v28 >> 40;
      v42 = v39;
      v43 = v69 & v39 ^ 1;
      v44 = v62;

      v45 = v28;
      v46 = v63;
      sub_1C2F0A6B4(v45, v64, v23);
      v47 = v40;
      v48 = v46;
      v49 = v66;
      v23 = v67;
      v50 = v68;
    }

    else
    {
      v48 = 0;
      v44 = 0;
      v42 = v39;
      LOBYTE(v41) = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_isDownlink) ^ 1;
      v43 = 1;
      v50 = v68;
      v47 = v68;
      v49 = v66;
      v23 = v67;
    }
  }

  else
  {
    v51 = (v37 != 2) & v37;
    v42 = v69;
    if (v23)
    {
      v41 = v28 >> 40;
      v43 = v51 & v69 ^ 1;

      v52 = v64;
      sub_1C2F0A6B4(v28, v64, v23);
      v47 = v28;
      v49 = v52;
      v69 = v51;
      v48 = v66;
      v44 = v67;
      v50 = v68;
    }

    else
    {
      v49 = 0;
      LOBYTE(v41) = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_isDownlink) ^ 1;
      v23 = 0xE000000000000000;
      v43 = 1;
      v69 = v51;
      v50 = v68;
      v47 = v68;
      v48 = v66;
      v44 = v67;
    }
  }

  LODWORD(v73) = v47;
  BYTE4(v73) = v43 & 1;
  BYTE5(v73) = v41 & 1;
  *(&v73 + 1) = v49;
  *&v74 = v23;
  *(&v74 + 1) = v48;
  v75 = v44;
  swift_beginAccess();

  v53 = *(v6 + v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v6 + v29);
  *(v6 + v29) = 0x8000000000000000;
  if (v42)
  {
    v55 = 256;
  }

  else
  {
    v55 = 0;
  }

  sub_1C2F6A2E0(v55 & 0xFFFE | v69 & 1, v50, isUniquelyReferenced_nonNull_native);
  *(v6 + v29) = v72;
  swift_endAccess();
  swift_beginAccess();

  v56 = *(v6 + v14);

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v6 + v14);
  *(v6 + v14) = 0x8000000000000000;
  sub_1C2F6A180(&v73, v50, v57);
  *(v6 + v14) = v72;
  swift_endAccess();
  v58 = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate);
  if (v58)
  {
    v59 = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate + 8);
    v70[0] = v73;
    v70[1] = v74;
    v71 = v75;
    v58(v70);
  }
}

uint64_t sub_1C2F32128()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier;
  v2 = sub_1C2F75AEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcripts);

  v4 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_completions);

  v5 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_logger;
  v6 = sub_1C2F761FC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate + 8);
  sub_1C2EFDE10(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2F3224C()
{
  result = sub_1C2F75AEC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C2F761FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C2F3235C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient) == a1)
    {
      v4 = OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_source;
LABEL_6:
      v5 = sub_1C2F75C8C();
      v19 = *(v5 - 8);
      (*(v19 + 16))(a2, v2 + v4, v5);
      v6 = *(v19 + 56);
      v7 = a2;
      v8 = 0;
      v9 = v5;
      goto LABEL_11;
    }

    if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient) == a1)
    {
      v4 = OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_target;
      goto LABEL_6;
    }

    v11 = a1;
    v12 = sub_1C2F761DC();
    v13 = sub_1C2F769DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a1;
      v16 = v11;
      _os_log_impl(&dword_1C2EF2000, v12, v13, "unexpected client %@", v14, 0xCu);
      sub_1C2F0A8D8(v15, &unk_1EC076070, &qword_1C2F7A190);
      MEMORY[0x1C6929E80](v15, -1, -1);
      MEMORY[0x1C6929E80](v14, -1, -1);
      v11 = v12;
      v12 = v16;
    }
  }

  v17 = sub_1C2F75C8C();
  v6 = *(*(v17 - 8) + 56);
  v9 = v17;
  v7 = a2;
  v8 = 1;
LABEL_11:

  return v6(v7, v8, 1, v9);
}

void sub_1C2F32630(void *a1, char a2, void *a3, const char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C2F3235C(a1, &v24 - v10);
  v11 = sub_1C2F7670C();
  v13 = v12;
  v14 = a3;
  v15 = sub_1C2F761DC();
  v16 = sub_1C2F769EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v17 = 136315650;
    v20 = sub_1C2EFAB28(v11, v13, &v25);

    *(v17 + 4) = v20;
    *(v17 + 12) = 1024;
    *(v17 + 14) = a2 & 1;
    *(v17 + 18) = 2112;
    if (a3)
    {
      v21 = a3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v17 + 20) = v22;
    *v18 = v23;
    _os_log_impl(&dword_1C2EF2000, v15, v16, a4, v17, 0x1Cu);
    sub_1C2F0A8D8(v18, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1C6929E80](v19, -1, -1);
    MEMORY[0x1C6929E80](v17, -1, -1);
  }

  else
  {
  }
}

void sub_1C2F329AC(void *a1, char a2, uint64_t (*a3)(void), const char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C2F3235C(a1, &v22[-v10]);
  v11 = sub_1C2F7670C();
  v13 = v12;
  v14 = sub_1C2F761DC();
  v15 = a3();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315394;
    v18 = sub_1C2EFAB28(v11, v13, &v23);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    v22[7] = a2;
    type metadata accessor for AVCCaptionsReason(0);
    v19 = sub_1C2F7670C();
    v21 = sub_1C2EFAB28(v19, v20, &v23);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1C2EF2000, v14, v15, a4, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v17, -1, -1);
    MEMORY[0x1C6929E80](v16, -1, -1);
  }

  else
  {
  }
}

void sub_1C2F32C98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C2F3235C(a1, &v13 - v4);
  v5 = sub_1C2F7670C();
  v7 = v6;
  v8 = sub_1C2F761DC();
  v9 = sub_1C2F769DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    v12 = sub_1C2EFAB28(v5, v7, &v14);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1C2EF2000, v8, v9, "Captions server die %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1C6929E80](v11, -1, -1);
    MEMORY[0x1C6929E80](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C2F32FEC()
{
  result = sub_1C2F75C8C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C2F761FC();
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

uint64_t sub_1C2F330CC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  LODWORD(v113) = a3;
  v117 = a2;
  v121 = a1;
  v11 = sub_1C2F75AEC();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1C2F761FC();
  v123 = *(v119 - 8);
  v14 = v123[8];
  v15 = MEMORY[0x1EEE9AC00](v119);
  v114 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v98 - v17;
  v19 = sub_1C2F75C8C();
  v122 = *(v19 - 8);
  v20 = v122;
  v21 = *(v122 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v115 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v101 = &v98 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v98 - v29;
  v31 = *(v20 + 16);
  v110 = a4;
  v32 = (a4 & 1) == 0;
  if (a4)
  {
    v33 = a6;
  }

  else
  {
    v33 = a5;
  }

  v107 = a5;
  v106 = a6;
  if (a4)
  {
    v34 = a5;
  }

  else
  {
    v34 = a6;
  }

  if (v32)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  LODWORD(v100) = v35;
  if (v32)
  {
    v36 = 0x6B6E694C7055;
  }

  else
  {
    v36 = 0x6B6E694C6E776F44;
  }

  if (v32)
  {
    v37 = 0xE600000000000000;
  }

  else
  {
    v37 = 0xE800000000000000;
  }

  v31(&v98 - v29, v33, v19);
  v31(v28, v34, v19);
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_1C2F76C6C();

  v124 = v36;
  v125 = v37;
  v116 = v28;
  MEMORY[0x1C6928D30](0xD000000000000016, 0x80000001C2F7F3F0);
  sub_1C2F761EC();
  v38 = v101;
  v120 = v30;
  v31(v101, v30, v19);
  v31(v115, v28, v19);
  v39 = v123 + 2;
  v40 = v123[2];
  v41 = v114;
  v105 = v18;
  v42 = v18;
  v43 = v119;
  v40(v114, v42, v119);
  v44 = type metadata accessor for CaptionsClientDelegate(0);
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient] = 0;
  *&v45[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient] = 0;
  v46 = &v45[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_updateTranscript];
  *v46 = 0;
  *(v46 + 1) = 0;
  v104 = v39;
  v103 = v40;
  v40(&v45[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_logger], v41, v43);
  v31(&v45[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_source], v38, v19);
  v47 = v115;
  v31(&v45[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_target], v115, v19);
  v126.receiver = v45;
  v126.super_class = v44;
  v48 = objc_msgSendSuper2(&v126, sel_init);
  v49 = v123[1];
  ++v123;
  v102 = v49;
  v49(v114, v43);
  v51 = v122 + 8;
  v50 = *(v122 + 8);
  v50(v47, v19);
  v101 = v19;
  v122 = v51;
  v114 = v50;
  v50(v38, v19);
  v52 = objc_allocWithZone(MEMORY[0x1E6986570]);
  v53 = sub_1C2F75AAC();
  v54 = sub_1C2F75AAC();
  v55 = v100;
  v56 = [v52 initWithDelegate:v48 translatorIdentifier:v53 direction:? reportingSamplingUUID:?];

  v57 = 0x1FC23A000;
  if (v56)
  {
    v58 = sub_1C2F75B6C();
    [v56 setSourceLocale_];

    v59 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
    [v59 setUsage_];
    v60 = sub_1C2F75B6C();
    [v59 setLocale_];

    [v59 setExplicitLanguageFilterEnabled_];
    [v59 setCallType_];
    [v56 configureCaptions_];

    v57 = 0x1FC23A000uLL;
  }

  v61 = v57;
  v115 = v56;
  v62 = objc_allocWithZone(MEMORY[0x1E6986570]);
  v63 = v48;
  v64 = sub_1C2F75AAC();
  v65 = sub_1C2F75AAC();
  v66 = [v62 initWithDelegate:v63 translatorIdentifier:v64 direction:v55 reportingSamplingUUID:v65];

  v67 = v63;
  if (v66)
  {
    v68 = sub_1C2F75B6C();
    [v66 (v61 + 3976)];

    v67 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
    [v67 setUsage_];
    v69 = sub_1C2F75B6C();
    [v67 setLocale_];

    [v67 setExplicitLanguageFilterEnabled_];
    [v67 setCallType_];
    [v66 configureCaptions_];
  }

  v70 = v108;
  v71 = v109;
  v72 = v121;
  (*(v108 + 16))(v118, v121, v109);
  v73 = type metadata accessor for CallTranslationCaptionsClients(0);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  v76 = swift_allocObject();
  swift_defaultActor_initialize();
  v113 = v66;
  v77 = v72;
  v78 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcripts;
  v79 = MEMORY[0x1E69E7CC0];
  *(v76 + v78) = sub_1C2F2611C(MEMORY[0x1E69E7CC0]);
  v100 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_completions;
  v99 = sub_1C2F262B8(v79);
  v80 = v101;
  v81 = v114;
  (v114)(v106, v101);
  v81(v107, v80);
  v82 = v63;
  v83 = *(v70 + 8);
  v83(v117, v71);
  v83(v77, v71);
  v84 = v119;
  v102(v105, v119);
  v81(v116, v80);
  v81(v120, v80);
  *(v76 + v100) = v99;
  (*(v70 + 32))(v76 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier, v118, v71);
  *(v76 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_isDownlink) = v110 & 1;
  v85 = (v76 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate);
  v86 = v112;
  *v85 = v111;
  v85[1] = v86;
  *(v76 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate) = v82;
  v103(v76 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_logger, &v82[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_logger], v84);
  v87 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate;
  v88 = *&v82[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient];
  *&v82[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient] = v113;

  v89 = *(v76 + v87);
  v90 = *(v89 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient);
  *(v89 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient) = v115;

  v91 = *(v76 + v87);
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = &v91[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_updateTranscript];
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  *v93 = sub_1C2F342C4;
  v93[1] = v92;
  v96 = v91;

  sub_1C2EFDE10(v94);

  return v76;
}

void sub_1C2F33AC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v68[-v8];
  v10 = sub_1C2F75C8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v68[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68[-v19];
  sub_1C2F3235C(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C2F0A8D8(v9, &unk_1EC076A90, &qword_1C2F78FF0);
    v21 = sub_1C2F761DC();
    v22 = sub_1C2F769DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C2EF2000, v21, v22, "Not able to find locale for captions client", v23, 2u);
      MEMORY[0x1C6929E80](v23, -1, -1);
    }

    return;
  }

  (*(v11 + 32))(v20, v9, v10);
  v24 = [a2 text];
  if (!v24)
  {
LABEL_12:
    (*(v11 + 16))(v15, v20, v10);
    v49 = a2;
    v50 = sub_1C2F761DC();
    v51 = sub_1C2F769EC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v20;
      v76[0] = v74;
      *v52 = 136315394;
      sub_1C2F34220();
      v53 = sub_1C2F76EEC();
      v55 = v54;
      v56 = *(v11 + 8);
      v56(v15, v10);
      v57 = sub_1C2EFAB28(v53, v55, v76);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v76[3] = v49;
      sub_1C2F34278();
      v58 = v49;
      v59 = sub_1C2F7670C();
      v61 = sub_1C2EFAB28(v59, v60, v76);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_1C2EF2000, v50, v51, "Skipping empty captions %s %s", v52, 0x16u);
      v62 = v74;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v62, -1, -1);
      MEMORY[0x1C6929E80](v52, -1, -1);

      v56(v75, v10);
    }

    else
    {

      v63 = *(v11 + 8);
      v63(v15, v10);
      v63(v20, v10);
    }

    return;
  }

  v25 = v24;
  v26 = sub_1C2F766CC();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_12;
  }

  LODWORD(v74) = [a2 utteranceNumber];
  v73 = [a2 utteranceComplete];
  (*(v11 + 16))(v18, v20, v10);

  v30 = a2;
  v31 = sub_1C2F761DC();
  v32 = sub_1C2F769EC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v75 = v20;
    v34 = v33;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76[0] = v72;
    *v34 = 136315907;
    sub_1C2F34220();
    v70 = v31;
    v35 = sub_1C2F76EEC();
    v69 = v32;
    v36 = v26;
    v38 = v37;
    v39 = v18;
    v40 = *(v11 + 8);
    v40(v39, v10);
    v41 = sub_1C2EFAB28(v35, v38, v76);
    v26 = v36;

    *(v34 + 4) = v41;
    *(v34 + 12) = 1024;
    v42 = v74;
    *(v34 + 14) = v74;
    *(v34 + 18) = 2081;
    *(v34 + 20) = sub_1C2EFAB28(v36, v28, v76);
    *(v34 + 28) = 2112;
    *(v34 + 30) = v30;
    v43 = v71;
    *v71 = v30;
    v44 = v30;
    v45 = v70;
    _os_log_impl(&dword_1C2EF2000, v70, v69, "Captions %s identifier: %u text: %{private}s updates: %@", v34, 0x26u);
    sub_1C2F0A8D8(v43, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v43, -1, -1);
    v46 = v72;
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v46, -1, -1);
    v47 = v34;
    v20 = v75;
    MEMORY[0x1C6929E80](v47, -1, -1);

    v48 = v42;
  }

  else
  {

    v64 = v18;
    v40 = *(v11 + 8);
    v40(v64, v10);
    v48 = v74;
  }

  v65 = v3 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_updateTranscript;
  swift_beginAccess();
  v66 = *v65;
  if (*v65)
  {
    v67 = *(v65 + 8);
    swift_endAccess();

    v66(v48, v20, v26, v28, v73);
    sub_1C2EFDE10(v66);

    v40(v20, v10);
  }

  else
  {
    v40(v20, v10);
    swift_endAccess();
  }
}

unint64_t sub_1C2F34220()
{
  result = qword_1EC076AA0;
  if (!qword_1EC076AA0)
  {
    sub_1C2F75C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076AA0);
  }

  return result;
}

unint64_t sub_1C2F34278()
{
  result = qword_1EC076AA8;
  if (!qword_1EC076AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076AA8);
  }

  return result;
}

uint64_t sub_1C2F342CC(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1C2F75C8C() - 8);
  v5 = (*(v4 + 80) + 44) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1C2F06348;

  return sub_1C2F31BB4(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

uint64_t sub_1C2F34428(unint64_t a1, void *a2)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2F76BBC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6929250](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      if (!v9)
      {
        sub_1C2F766CC();
        v9 = sub_1C2F766AC();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C2F7B740;
      *(v10 + 32) = [objc_opt_self() descriptorForRequiredKeys];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076B00, &unk_1C2F7B958);
      v11 = sub_1C2F767DC();

      v12 = [a2 contactForIdentifier:v9 keysToFetch:v11];

      if (v12)
      {
      }

      else
      {
        sub_1C2F76CEC();
        v5 = *(v15 + 16);
        sub_1C2F76D1C();
        sub_1C2F76D2C();
        sub_1C2F76CFC();
      }

      if (v8 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t BlockUnblockController.UnknownInitiator.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BlockUnblockController.UnknownInitiator.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BlockUnblockController.unknownInitiator.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t BlockUnblockController.hasReportedSpam.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t sub_1C2F34760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

unint64_t sub_1C2F34814()
{
  result = qword_1EC076AC8;
  if (!qword_1EC076AC8)
  {
    type metadata accessor for BlockUnblockController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076AC8);
  }

  return result;
}

uint64_t type metadata accessor for BlockUnblockController()
{
  result = qword_1EC076AE0;
  if (!qword_1EC076AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlockUnblockController.hasReportedSpam.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 64) == v2)
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }

  return result;
}

void (*BlockUnblockController.hasReportedSpam.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F34814();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F34AD4;
}

BOOL BlockUnblockController.canReportSpam.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_getKeyPath();
  sub_1C2F75DAC();

  swift_getKeyPath();
  sub_1C2F75DAC();

  swift_beginAccess();
  return (*(v0 + 64) & 1) == 0 && *(v0 + 16) && *(v0 + 56) != 0;
}

uint64_t BlockUnblockController.isSafetyCheckActive.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1C2F34C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

uint64_t BlockUnblockController.isSafetyCheckActive.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 65) == v2)
  {
    *(v1 + 65) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }

  return result;
}

void (*BlockUnblockController.isSafetyCheckActive.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F34814();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F34F44;
}

uint64_t BlockUnblockController.unknownContacts.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_1C2F34FE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1C2F35070(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return BlockUnblockController.unknownContacts.setter(v4);
}

uint64_t BlockUnblockController.unknownContacts.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);

  v5 = sub_1C2F1F868(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 80);
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F351B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
}

void (*BlockUnblockController.unknownContacts.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F34814();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F35348;
}

void *BlockUnblockController.areAllUnknownParticipantsBlocked.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_getKeyPath();
  v50 = v0;
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
LABEL_71:
    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 & 0xC000000000000001;
  v5 = v1 + 32;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_objectForKey_;
  v43 = v1;
  v44 = v3;
  v39 = v1 & 0xC000000000000001;
  v40 = v2;
  v38 = v1 + 32;
  while (v6 != v3)
  {
    if (v4)
    {
      v9 = MEMORY[0x1C6929250](v6, v1);
      v10 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v6 >= v2[2])
      {
        goto LABEL_70;
      }

      v9 = *(v5 + 8 * v6);
      v10 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v42 = v10;
    v45 = v9;
    v3 = [v9 v8[72]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
    v11 = sub_1C2F767EC();

    v49 = v7;
    v41 = v6;
    v47 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v48 = sub_1C2F76BBC();
    }

    else
    {
      v48 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v13 = v11 & 0xC000000000000001;
    v46 = v7;
    while (v48 != v12)
    {
      if (v13)
      {
        v15 = MEMORY[0x1C6929250](v12, v11);
      }

      else
      {
        if (v12 >= *(v47 + 16))
        {
          goto LABEL_63;
        }

        v15 = *(v11 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:

LABEL_59:
        v6 = v41;
        return (v6 == v3);
      }

      v1 = v11;
      v18 = [v15 value];
      v19 = [v18 digits];

      sub_1C2F766CC();
      v20 = TUHomeCountryCode();
      if (v20)
      {
        v21 = v20;
        sub_1C2F766CC();
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v2 = sub_1C2F766AC();

      v11 = v1;
      if (v23)
      {
        v14 = sub_1C2F766AC();
      }

      else
      {
        v14 = 0;
      }

      v3 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v2 countryCode:v14];

      ++v12;
      if (v3)
      {
        MEMORY[0x1C6928DA0]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v2 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C2F7680C();
        }

        v1 = &v49;
        sub_1C2F7682C();
        v46 = v49;
        v12 = v17;
      }
    }

    if (v46 >> 62)
    {
      v24 = sub_1C2F76BBC();
    }

    else
    {
      v24 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    do
    {
      v26 = v25;
      if (v24 == v25)
      {
        break;
      }

      if ((v46 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C6929250](v25, v46);
      }

      else
      {
        if (v25 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v27 = *(v46 + 8 * v25 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
LABEL_73:
        __break(1u);
        return result;
      }

      v2 = result;
      v30 = [result isIncomingCommunicationBlockedForPhoneNumber_];

      v25 = v26 + 1;
    }

    while ((v30 & 1) != 0);

    v31 = [v45 emailAddresses];
    v1 = sub_1C2F767EC();

    if (v1 >> 62)
    {
      v32 = sub_1C2F76BBC();
    }

    else
    {
      v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = 0;
    while (v32 != v33)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1C6929250](v33, v1);
      }

      else
      {
        if (v33 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v34 = *(v1 + 8 * v33 + 32);
      }

      v35 = v34;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_67;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        goto LABEL_73;
      }

      v36 = result;
      v2 = [v35 value];
      v37 = [v36 isIncomingCommunicationBlockedForEmailAddress_];

      ++v33;
      if ((v37 & 1) == 0)
      {

        v3 = v44;
        goto LABEL_59;
      }
    }

    v1 = v43;
    v3 = v44;
    v4 = v39;
    v2 = v40;
    v5 = v38;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = &selRef_objectForKey_;
    v6 = v42;
    if (v24 != v26)
    {
      goto LABEL_64;
    }
  }

  return (v6 == v3);
}

BOOL BlockUnblockController.areAllParticipantsUnknown.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 80);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v7 = *(v0 + 80);
    }

    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v1 + 72);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = *(v1 + 72);
    }

    v5 = sub_1C2F76BBC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == v5;
}

uint64_t BlockUnblockController.__allocating_init(contacts:initiatorHandleValue:initiatorName:reportSpam:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  BlockUnblockController.init(contacts:initiatorHandleValue:initiatorName:reportSpam:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t BlockUnblockController.init(contacts:initiatorHandleValue:initiatorName:reportSpam:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 64) = 0;
  sub_1C2F75DDC();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  v15 = objc_allocWithZone(MEMORY[0x1E695CE28]);
  sub_1C2EFDE20(a6);
  v16 = [v15 init];
  [v16 setIncludeLocalContacts_];
  [v16 setIncludeAcceptedIntroductions_];
  v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  v18 = sub_1C2F34428(a1, v17);
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 72) = a1;
  *(v8 + 80) = v18;
  if (!a3)
  {
    goto LABEL_12;
  }

  if (!a5)
  {

LABEL_12:
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v32 = sub_1C2F761FC();
    __swift_project_value_buffer(v32, qword_1EDEBDA78);
    v27 = sub_1C2F761DC();
    v33 = sub_1C2F769EC();
    if (os_log_type_enabled(v27, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v43);
      _os_log_impl(&dword_1C2EF2000, v27, v33, "[%s]: no initiator", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1C6929E80](v35, -1, -1);
      MEMORY[0x1C6929E80](v34, -1, -1);
    }

    v31 = a6;
    goto LABEL_17;
  }

  v42 = a6;
  v19 = qword_1EDEBC5B8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1C2F761FC();
  __swift_project_value_buffer(v20, qword_1EDEBDA78);
  v21 = sub_1C2F761DC();
  v22 = sub_1C2F769EC();
  v41 = a4;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v43);
    _os_log_impl(&dword_1C2EF2000, v21, v22, "[%s]: has initiator, checking if contact", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1C6929E80](v24, -1, -1);
    MEMORY[0x1C6929E80](v23, -1, -1);
  }

  v25 = sub_1C2F766AC();

  v26 = [v17 contactForDestinationId_];

  if (v26)
  {

    v27 = sub_1C2F761DC();
    v28 = sub_1C2F769EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v43);
      _os_log_impl(&dword_1C2EF2000, v27, v28, "[%s]: known initiator", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1C6929E80](v30, -1, -1);
      MEMORY[0x1C6929E80](v29, -1, -1);
    }

    v31 = v42;
LABEL_17:
    sub_1C2EFDE10(v31);

    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    return v8;
  }

  v37 = sub_1C2F761DC();
  v38 = sub_1C2F769EC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v43);
    _os_log_impl(&dword_1C2EF2000, v37, v38, "[%s]: unknown initiator", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1C6929E80](v40, -1, -1);
    MEMORY[0x1C6929E80](v39, -1, -1);
  }

  sub_1C2EFDE10(v42);
  *(v8 + 48) = v41;
  *(v8 + 56) = a5;
  return v8;
}

Swift::Void __swiftcall BlockUnblockController.reportSpam()()
{
  v1 = v0;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v17);
    _os_log_impl(&dword_1C2EF2000, v3, v4, "[%s]: Report spam", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = *(v1 + 24);

    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v17);
      _os_log_impl(&dword_1C2EF2000, v9, v10, "[%s]: calling report spam handler", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1C6929E80](v12, -1, -1);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    v7();
    swift_getKeyPath();
    v17 = v1;
    sub_1C2F34814();
    sub_1C2F75D9C();

    v13 = sub_1C2F761DC();
    v14 = sub_1C2F769EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v17);
      *(v15 + 12) = 1024;
      *(v15 + 14) = BlockUnblockController.canReportSpam.getter();

      _os_log_impl(&dword_1C2EF2000, v13, v14, "[%s]: new canReportSpam=%{BOOL}d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1C6929E80](v16, -1, -1);
      MEMORY[0x1C6929E80](v15, -1, -1);
    }

    else
    {
    }

    sub_1C2EFDE10(v7);
  }
}

uint64_t sub_1C2F363F0(uint64_t a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v9);
    _os_log_impl(&dword_1C2EF2000, v3, v4, "[%s]: updating hasReportedSpam", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }

  return result;
}

Swift::Void __swiftcall BlockUnblockController.blockUnknownParticipants()()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75D9C();

  swift_beginAccess();
  if (*(v0 + 65) == 1)
  {
    *(v0 + 65) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F36750(uint64_t a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBDA78);

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22[4] = v1;
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1C2EFAB28(0xD00000000000001ALL, 0x80000001C2F7F540, v22);
    *(v6 + 12) = 2080;
    swift_getKeyPath();
    sub_1C2F34814();
    sub_1C2F75DAC();

    swift_beginAccess();
    v8 = *(a1 + 80);
    v9 = sub_1C2F208DC();

    v11 = MEMORY[0x1C6928DD0](v10, v9);
    v13 = v12;

    v14 = sub_1C2EFAB28(v11, v13, v22);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "[%s]: Block unknown participants %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_getKeyPath();
  v22[0] = a1;
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  v16 = *(a1 + 80);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v16 < 0)
  {
    v21 = *(a1 + 80);
  }

  result = sub_1C2F76BBC();
  v17 = result;
  if (result)
  {
LABEL_7:
    if (v17 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C6929250](i, v16);
        }

        else
        {
          v19 = *(v16 + 8 * i + 32);
        }

        v20 = v19;
        sub_1C2F37144(v19);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall BlockUnblockController.unblockUnknownParticipants()()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75D9C();
}

uint64_t sub_1C2F36AF0(uint64_t a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBDA78);

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v22[4] = v1;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    swift_getKeyPath();
    sub_1C2F34814();
    sub_1C2F75DAC();

    swift_beginAccess();
    v8 = *(a1 + 80);
    v9 = sub_1C2F208DC();

    v11 = MEMORY[0x1C6928DD0](v10, v9);
    v13 = v12;

    v14 = sub_1C2EFAB28(v11, v13, v22);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Unblock unknown participants %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_getKeyPath();
  v22[0] = a1;
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  v16 = *(a1 + 80);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v16 < 0)
  {
    v21 = *(a1 + 80);
  }

  result = sub_1C2F76BBC();
  v17 = result;
  if (result)
  {
LABEL_7:
    if (v17 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C6929250](i, v16);
        }

        else
        {
          v19 = *(v16 + 8 * i + 32);
        }

        v20 = v19;
        sub_1C2F377E8(v19);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall BlockUnblockController.refresh()()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75D9C();
}

uint64_t *BlockUnblockController.deinit()
{
  v1 = v0[3];
  sub_1C2EFDE10(v0[2]);
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  v7 = sub_1C2F75DEC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t BlockUnblockController.__deallocating_deinit()
{
  v1 = v0[3];
  sub_1C2EFDE10(v0[2]);
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  v7 = sub_1C2F75DEC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F36FD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t sub_1C2F3704C()
{
  result = sub_1C2F75DEC();
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

id sub_1C2F37144(void *a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = a1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  v52 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_1C2EFAB28(0xD00000000000001BLL, 0x80000001C2F7F560, &v54);
    *(v6 + 12) = 2080;
    v8 = [v52 phoneNumbers];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
    v10 = sub_1C2F767EC();

    v11 = MEMORY[0x1C6928DD0](v10, v9);
    v13 = v12;

    v14 = sub_1C2EFAB28(v11, v13, &v54);

    *(v6 + 14) = v14;
    *(v6 + 22) = 2080;
    v15 = [v52 emailAddresses];
    v16 = sub_1C2F767EC();

    v17 = MEMORY[0x1C6928DD0](v16, v9);
    v19 = v18;

    v20 = sub_1C2EFAB28(v17, v19, &v54);

    *(v6 + 24) = v20;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "[%s]: blocking phoneNumbers %s \n\n emailAddreses: %s", v6, 0x20u);
    swift_arrayDestroy();
    v21 = v7;
    v3 = v52;
    MEMORY[0x1C6929E80](v21, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v22 = [v3 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
  v23 = sub_1C2F767EC();

  v54 = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
    v53 = sub_1C2F76BBC();
  }

  else
  {
    v53 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  a1 = (v23 & 0xC000000000000001);
  v25 = MEMORY[0x1E69E7CC0];
  while (v53 != v24)
  {
    if (a1)
    {
      v29 = MEMORY[0x1C6929250](v24, v23);
    }

    else
    {
      if (v24 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v29 = *(v23 + 8 * v24 + 32);
    }

    v30 = v29;
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v32 = [v29 value];
    v33 = [v32 digits];

    if (!v33)
    {
      sub_1C2F766CC();
      v33 = sub_1C2F766AC();
    }

    v34 = TUHomeCountryCode();
    if (v34)
    {
      v26 = v34;
      sub_1C2F766CC();

      v27 = sub_1C2F766AC();
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v33 countryCode:v27];

    ++v24;
    if (v28)
    {
      MEMORY[0x1C6928DA0]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C2F7680C();
      }

      sub_1C2F7682C();
      v25 = v54;
      v24 = v31;
    }
  }

  if (v25 >> 62)
  {
    v36 = sub_1C2F76BBC();
    if (v36)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v36 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
LABEL_24:
      v37 = 0;
      a1 = (v25 & 0xC000000000000001);
      do
      {
        if (a1)
        {
          v38 = MEMORY[0x1C6929250](v37, v25);
        }

        else
        {
          if (v37 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v38 = *(v25 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_35;
        }

        result = [objc_opt_self() sharedPrivacyManager];
        if (!result)
        {
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        v42 = result;
        [result setBlockIncomingCommunication:1 forPhoneNumber:v39];

        ++v37;
      }

      while (v40 != v36);
    }
  }

  v43 = [v52 emailAddresses];
  v44 = sub_1C2F767EC();

  if (v44 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2F76BBC())
  {
    v46 = 0;
    while (1)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x1C6929250](v46, v44);
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v47 = *(v44 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        goto LABEL_58;
      }

      v50 = result;
      v51 = [v48 value];
      [v50 setBlockIncomingCommunication:1 forEmailAddress:v51];

      ++v46;
      if (v49 == i)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_54:
}

id sub_1C2F377E8(void *a1)
{
  v1 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
  v2 = sub_1C2F767EC();

  v40 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_49:
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = sub_1C2F76BBC();
  }

  else
  {
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  v37 = MEMORY[0x1E69E7CC0];
  while (v39 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x1C6929250](v3, v2);
    }

    else
    {
      if (v3 >= *(v38 + 16))
      {
        goto LABEL_44;
      }

      v7 = *(v2 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v10 = v2;
    v11 = [v7 value];
    v12 = [v11 digits];

    sub_1C2F766CC();
    v13 = TUHomeCountryCode();
    if (v13)
    {
      v14 = v13;
      sub_1C2F766CC();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_1C2F766AC();

    v2 = v10;
    if (v16)
    {
      v5 = sub_1C2F766AC();
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v17 countryCode:v5];

    ++v3;
    if (v6)
    {
      MEMORY[0x1C6928DA0]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C2F7680C();
      }

      sub_1C2F7682C();
      v37 = v40;
      v3 = v9;
    }
  }

  v19 = v37;
  if (v37 >> 62)
  {
    v20 = sub_1C2F76BBC();
    v19 = v37;
  }

  else
  {
    v20 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20)
  {
    v21 = 0;
    v2 = v19 & 0xC000000000000001;
    v22 = v19 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v2)
      {
        v23 = MEMORY[0x1C6929250](v21, v19);
      }

      else
      {
        if (v21 >= *(v22 + 16))
        {
          goto LABEL_46;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_45;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v27 = result;
      [result setBlockIncomingCommunication:0 forPhoneNumber:v24];

      ++v21;
      v19 = v37;
    }

    while (v25 != v20);
  }

  v28 = [a1 emailAddresses];
  v29 = sub_1C2F767EC();

  if (v29 >> 62)
  {
    v30 = sub_1C2F76BBC();
    if (v30)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_34:
      v2 = 0;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1C6929250](v2, v29);
        }

        else
        {
          if (v2 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v31 = *(v29 + 8 * v2 + 32);
        }

        v32 = v31;
        v33 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_47;
        }

        result = [objc_opt_self() sharedPrivacyManager];
        if (!result)
        {
          goto LABEL_56;
        }

        v34 = result;
        v35 = [v32 value];
        [v34 setBlockIncomingCommunication:0 forEmailAddress:v35];

        ++v2;
      }

      while (v33 != v30);
    }
  }
}

uint64_t sub_1C2F37C94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1C2F37D18(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1C2F76BBC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6929250](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1C2F37E3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v10;
    v20 = v9;
    v21 = a3;
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_1C2EF6A3C(v14, v12, &unk_1EC075E20, &unk_1C2F78C00);
      v16 = a1(v12);
      if (v3)
      {
        return sub_1C2F0A8D8(v12, &unk_1EC075E20, &unk_1C2F78C00);
      }

      if (v16)
      {
        break;
      }

      sub_1C2F0A8D8(v12, &unk_1EC075E20, &unk_1C2F78C00);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_1C2F09460(v12, v21, &unk_1EC075E20, &unk_1C2F78C00);
    v17 = 0;
LABEL_10:
    v10 = v19;
    v9 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v10 + 56))(a3, v17, 1, v9);
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  sub_1C2EF6A3C(a2, &v22 - v15, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2EF6A3C(a3, v14, &unk_1EC076A90, &qword_1C2F78FF0);
  v17 = sub_1C2F75B5C();
  v18 = *(v5 + 48);
  v19 = *(v5 + 52);
  v20 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, v16, v14, a4, v17, 0);
  sub_1C2F0A8D8(a3, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(a2, &unk_1EC076A90, &qword_1C2F78FF0);
  return v20;
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t sub_1C2F381DC(uint64_t a1)
{
  v3 = *(v1 + 16);

  v5 = sub_1C2F1FAA8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F38330(uint64_t a1)
{
  v3 = *(v1 + 24);

  v5 = sub_1C2F1FAA8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F38484(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t LanguageSelectionViewModel.prepare()()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B10, &qword_1C2F7B970);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v1[14] = *(v6 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B20, &qword_1C2F7B980);
  v1[17] = v7;
  v8 = *(v7 - 8);
  v1[18] = v8;
  v9 = *(v8 + 64) + 15;
  v1[19] = swift_task_alloc();
  sub_1C2F7688C();
  v1[20] = sub_1C2F7687C();
  v11 = sub_1C2F7684C();
  v1[21] = v11;
  v1[22] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C2F38778, v11, v10);
}

uint64_t sub_1C2F38778()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observer;
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observer))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask);
    v0[25] = v3;
    if (v3)
    {
      v4 = *(MEMORY[0x1E69E86C0] + 4);

      v5 = swift_task_alloc();
      v0[26] = v5;
      *v5 = v0;
      v5[1] = sub_1C2F38D8C;

      return MEMORY[0x1EEE6DA40]();
    }

    else
    {
      v26 = v0[20];

      v27 = v0[19];
      v28 = v0[15];
      v29 = v0[16];
      v30 = v0[11];

      v31 = v0[1];

      return v31();
    }
  }

  else
  {
    v6 = v0[19];
    v7 = v0[16];
    v8 = v0[13];
    v34 = v0[15];
    v35 = v0[14];
    v9 = v0[11];
    v33 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B28, &qword_1C2F7B988);
    (*(v10 + 104))(v9, *MEMORY[0x1E69E8650], v11);
    sub_1C2F768BC();
    (*(v10 + 8))(v9, v11);
    v12 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_taskHint);
    v13 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_useDedicatedMachPort);
    (*(v8 + 16))(v34, v7, v33);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    (*(v8 + 32))(v15 + v14, v34, v33);
    v16 = objc_allocWithZone(MEMORY[0x1E6982C00]);
    v0[6] = sub_1C2F3D7E4;
    v0[7] = v15;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1C2F3D6D4;
    v0[5] = &block_descriptor_5;
    v17 = _Block_copy(v0 + 2);
    v18 = [v16 initWithTaskHint:v12 useDedicatedMachPort:v13 observations:v17];
    v0[23] = v18;
    _Block_release(v17);
    v19 = v0[7];

    *(swift_allocObject() + 16) = v18;
    v20 = v18;
    sub_1C2F768DC();
    v21 = *(v1 + v2);
    *(v1 + v2) = v20;
    v22 = v20;

    v23 = swift_task_alloc();
    v0[24] = v23;
    *v23 = v0;
    v23[1] = sub_1C2F38B88;
    v24 = v0[19];
    v25 = v0[8];

    return sub_1C2F3F124(v24, v25);
  }
}

uint64_t sub_1C2F38B88()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C2F38CA8, v4, v3);
}

uint64_t sub_1C2F38CA8()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[13];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C2F38D8C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C2F38ED0, v5, v4);
}

uint64_t sub_1C2F38ED0()
{
  v1 = v0[20];

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C2F38F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B50, &qword_1C2F7BCD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  v8[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);
  sub_1C2F768FC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t LanguageSelectionViewModel.availableLanguages.getter()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  v1 = *(v0 + 16);
}

uint64_t sub_1C2F39108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + 16);
}

uint64_t sub_1C2F391B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F381DC(v4);
}

uint64_t LanguageSelectionViewModel.suggestedLanguages.getter()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  v1 = *(v0 + 24);
}

uint64_t sub_1C2F39284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + 24);
}

uint64_t sub_1C2F39330(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F38330(v4);
}

uint64_t sub_1C2F39378()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  return *(v0 + 32);
}

uint64_t sub_1C2F39418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1C2F394C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_1C2F7688C();
  v5[12] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F39558, v7, v6);
}

uint64_t sub_1C2F39558()
{
  v1 = *(v0 + 80);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x1E69E8740] + 4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1C2F39630;

  return MEMORY[0x1EEE6DB20](v0 + 64, &unk_1C2F7BCA8, 0, v3, v2);
}

void sub_1C2F39630()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);

    MEMORY[0x1EEE6DFA0](sub_1C2F39764, v5, v6);
  }
}

uint64_t sub_1C2F39764()
{
  v1 = v0[12];

  v2 = v0[8];
  if (v2 != 1)
  {
    v3 = v0[11];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C2F39A28(v2);
      sub_1C2F401C4(v2);
    }

    else
    {
      sub_1C2F401C4(v2);
    }

    v4 = v0[11];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 32) == 1)
      {
        *(Strong + 32) = 1;
      }

      else
      {
        v6 = v0[16];
        v7 = Strong;
        swift_getKeyPath();
        v8 = swift_task_alloc();
        *(v8 + 16) = v7;
        *(v8 + 24) = 1;
        v0[9] = v7;
        sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
        sub_1C2F75D9C();
      }
    }
  }

  v9 = v0[1];

  return v9();
}