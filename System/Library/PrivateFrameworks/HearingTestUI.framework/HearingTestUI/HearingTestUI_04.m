void sub_20CDD54D4()
{
  swift_getObjectType();
  sub_20CDD4C98();
  if (v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] == 1)
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for HTUIEvaluationViewController.View();
      v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

      if (v3 != 2)
      {
        v4 = [v0 view];
        if (!v4)
        {
LABEL_21:
          __break(1u);
          return;
        }

        v5 = v4;
        v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

        if ((v6 - 2) < 3)
        {
          if (qword_27C811D00 != -1)
          {
            swift_once();
          }

          v7 = sub_20CE12CB4();
          __swift_project_value_buffer(v7, qword_27C817768);
          oslog = sub_20CE12C94();
          v8 = sub_20CE13CD4();
          if (os_log_type_enabled(oslog, v8))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v17 = v10;
            *v9 = 136446210;
            v11 = sub_20CE14414();
            v13 = sub_20CD96DCC(v11, v12, &v17);

            *(v9 + 4) = v13;
            _os_log_impl(&dword_20CD70000, oslog, v8, "[%{public}s] Not calling HearingTestSessionManager.resume() because there is nothing to resume.", v9, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v10);
            MEMORY[0x20F314110](v10, -1, -1);
            MEMORY[0x20F314110](v9, -1, -1);
          }

          return;
        }
      }

      v15 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager];
      if (v15)
      {
        v14 = sel_resume;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v14 = sel_scheduleEvaluationStart;
  v15 = v0;
LABEL_16:

  [v15 v14];
}

void sub_20CDD5778(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_20CDD5844(uint64_t a1, uint64_t a2)
{
  sub_20CDD8C64(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_20CE13BB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20CE13B84();

  v8 = sub_20CE13B74();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_20CDDAF10(0, 0, v6, &unk_20CE18938, v9);
}

uint64_t sub_20CDD598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a1;
  v4[11] = a4;
  sub_20CE13B84();
  v4[12] = sub_20CE13B74();
  v6 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDD5A24, v6, v5);
}

uint64_t sub_20CDD5A24()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);

    sub_20CD7C388(v5 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager, v0 + 16);
    v6 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager);
    sub_20CDBE0C0();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  **(v0 + 80) = v4 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t HTUIEvaluationViewController.stepStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20CE124E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t HTUIEvaluationViewController.appendToHearingTestFlowAnalyticsMetric(_:for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration + 8);
  v3 = a1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration);
  *(v3 + 8) = v2;
}

uint64_t sub_20CDD5BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20CE124E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_20CDD5C74(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration + 8);
  v3 = a1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration);
  *(v3 + 8) = v2;
}

uint64_t sub_20CDD5CA4(_BYTE *a1, unint64_t a2)
{
  v3 = a2;
  v4 = BYTE1(a2);
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v4 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  v7 = sub_20CE143B4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_106:
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v29;
    sub_20CDD71A8(v3, v9, isUniquelyReferenced_nonNull_native);
    *v29 = v32;
    result = 1;
    v27 = v4;
    goto LABEL_109;
  }

  v31 = ~v8;
  v10 = 0xEF64657472617453;
  while (2)
  {
    v11 = (*(v5 + 48) + 2 * v9);
    v12 = v11[1];
    v13 = v10;
    v14 = 0x20676E6974746547;
    switch(*v11)
    {
      case 1:
        v14 = 0xD00000000000001DLL;
        v13 = 0x800000020CE1A690;
        break;
      case 2:
        v14 = 0xD00000000000001ELL;
        v13 = 0x800000020CE1A6B0;
        break;
      case 3:
        break;
      case 4:
        v14 = 0xD000000000000013;
        v13 = 0x800000020CE1A6E0;
        break;
      case 5:
        v14 = 0xD000000000000011;
        v13 = 0x800000020CE1A700;
        break;
      case 6:
        v14 = 0xD000000000000026;
        v13 = 0x800000020CE1A720;
        break;
      case 7:
        v14 = 0xD000000000000026;
        v13 = 0x800000020CE1A750;
        break;
      case 8:
        v14 = 0xD000000000000026;
        v13 = 0x800000020CE1A780;
        break;
      case 9:
        v14 = 0xD000000000000026;
        v13 = 0x800000020CE1A7B0;
        break;
      case 0xA:
        v13 = 0xEA00000000006E6FLL;
        v14 = 0x697461756C617645;
        break;
      case 0xB:
        v14 = 0xD00000000000002FLL;
        v13 = 0x800000020CE1A7F0;
        break;
      case 0xC:
        v13 = 0xE700000000000000;
        v14 = 0x73746C75736552;
        break;
      case 0xD:
        v14 = 0xD000000000000010;
        v13 = 0x800000020CE1A830;
        break;
      case 0xE:
        v14 = 0x7075727265746E49;
        v13 = 0xEC0000006E6F6974;
        break;
      case 0xF:
        v14 = 0xD000000000000014;
        v13 = 0x800000020CE1A850;
        break;
      default:
        v14 = 0xD000000000000013;
        v13 = 0x800000020CE1A670;
        break;
    }

    v15 = 0x20676E6974746547;
    v16 = v10;
    switch(v3)
    {
      case 1:
        v10 = 0x800000020CE1A690;
        if (v14 != 0xD00000000000001DLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 2:
        v10 = 0x800000020CE1A6B0;
        if (v14 != 0xD00000000000001ELL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 3:
        goto LABEL_51;
      case 4:
        v10 = 0x800000020CE1A6E0;
        if (v14 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 5:
        v10 = 0x800000020CE1A700;
        if (v14 != 0xD000000000000011)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 6:
        v10 = 0x800000020CE1A720;
        if (v14 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 7:
        v10 = 0x800000020CE1A750;
        if (v14 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 8:
        v10 = 0x800000020CE1A780;
        if (v14 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 9:
        v10 = 0x800000020CE1A7B0;
        if (v14 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 10:
        v10 = 0xEA00000000006E6FLL;
        v15 = 0x697461756C617645;
LABEL_51:
        if (v14 == v15)
        {
          goto LABEL_52;
        }

        goto LABEL_55;
      case 11:
        v10 = 0x800000020CE1A7F0;
        if (v14 != 0xD00000000000002FLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 12:
        v10 = 0xE700000000000000;
        if (v14 != 0x73746C75736552)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 13:
        v10 = 0x800000020CE1A830;
        if (v14 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 14:
        v10 = 0xEC0000006E6F6974;
        if (v14 != 0x7075727265746E49)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 15:
        v10 = 0x800000020CE1A850;
        if (v14 != 0xD000000000000014)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      default:
        v10 = 0x800000020CE1A670;
        if (v14 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

LABEL_52:
        if (v13 == v10)
        {
        }

        else
        {
LABEL_55:
          v17 = sub_20CE14284();

          if ((v17 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v18 = v4;
        v19 = 0xEA00000000007265;
        v20 = 0x746E452070657453;
        v21 = 0x746E452070657453;
        switch(v12)
        {
          case 0:
            goto LABEL_72;
          case 1:
            v18 = 107;
            v19 = 0xE900000000000074;
            v21 = 0x78654E2065766F4DLL;
            goto LABEL_72;
          case 2:
            v19 = 0xE90000000000006BLL;
            v21 = 0x6361422065766F4DLL;
            goto LABEL_72;
          case 3:
            v19 = 0xE400000000000000;
            v21 = 1701736260;
            goto LABEL_72;
          case 4:
            v21 = 0x46206C65636E6143;
            v19 = 0xEB00000000776F6CLL;
            goto LABEL_72;
          case 5:
            v21 = 0x764F207472617453;
            goto LABEL_72;
          case 6:
            v18 = 38;
            v21 = 0xD000000000000010;
            v19 = 0x800000020CE1A8A0;
            goto LABEL_72;
          case 7:
            v18 = 38;
            v21 = 0xD000000000000014;
            v19 = 0x800000020CE1A8C0;
            goto LABEL_72;
          case 8:
            v19 = 0xE700000000000000;
            v21 = 0x73736563637553;
            goto LABEL_72;
          case 9:
            v19 = 0xE700000000000000;
            v21 = 0x6572756C696146;
            goto LABEL_72;
          case 10:
            v21 = 0x74654420776F6853;
            v19 = 0xEC000000736C6961;
            goto LABEL_72;
          case 11:
            v21 = 0x74724120776F6853;
            v19 = 0xEC000000656C6369;
            goto LABEL_72;
          case 12:
            v18 = 38;
            v21 = 0xD000000000000015;
            v19 = 0x800000020CE1A900;
            goto LABEL_72;
          case 13:
            v18 = 38;
            v21 = 0xD00000000000001CLL;
            v19 = 0x800000020CE1A920;
            goto LABEL_72;
          case 14:
            v18 = 38;
            v21 = 0xD000000000000010;
            v19 = 0x800000020CE1A940;
            goto LABEL_72;
          case 15:
            v18 = 38;
            v21 = 0xD000000000000012;
            v19 = 0x800000020CE1A960;
            break;
          default:
            if (v4 != 16)
            {
              goto LABEL_6;
            }

            goto LABEL_108;
        }

        break;
    }

LABEL_72:
    v22 = 0xEA00000000007265;
    switch(v18)
    {
      case 0:
        goto LABEL_100;
      case 1:
        v22 = 0xE900000000000074;
        if (v21 != 0x78654E2065766F4DLL)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 2:
        v22 = 0xE90000000000006BLL;
        if (v21 != 0x6361422065766F4DLL)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 3:
        v22 = 0xE400000000000000;
        if (v21 != 1701736260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 4:
        v22 = 0xEB00000000776F6CLL;
        if (v21 != 0x46206C65636E6143)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 5:
        if (v21 != 0x764F207472617453)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 6:
        v22 = 0x800000020CE1A8A0;
        if (v21 != 0xD000000000000010)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 7:
        v22 = 0x800000020CE1A8C0;
        if (v21 != 0xD000000000000014)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 8:
        v22 = 0xE700000000000000;
        if (v21 != 0x73736563637553)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 9:
        v22 = 0xE700000000000000;
        if (v21 != 0x6572756C696146)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 10:
        v20 = 0x74654420776F6853;
        v22 = 0xEC000000736C6961;
LABEL_100:
        if (v21 == v20)
        {
          goto LABEL_101;
        }

        goto LABEL_102;
      case 11:
        v22 = 0xEC000000656C6369;
        if (v21 != 0x74724120776F6853)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 12:
        v22 = 0x800000020CE1A900;
        if (v21 != 0xD000000000000015)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 13:
        v22 = 0x800000020CE1A920;
        if (v21 != 0xD00000000000001CLL)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 14:
        v22 = 0x800000020CE1A940;
        if (v21 != 0xD000000000000010)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 15:
        v22 = 0x800000020CE1A960;
        if (v21 != 0xD000000000000012)
        {
          goto LABEL_102;
        }

LABEL_101:
        if (v19 != v22)
        {
LABEL_102:
          v23 = sub_20CE14284();

          if (v23)
          {
            goto LABEL_108;
          }

LABEL_6:
          v9 = (v9 + 1) & v31;
          v10 = v16;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_106;
          }

          continue;
        }

LABEL_108:
        result = 0;
        v28 = (*(v5 + 48) + 2 * v9);
        LOBYTE(v3) = *v28;
        v27 = v28[1];
LABEL_109:
        *a1 = v3;
        a1[1] = v27;
        return result;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t sub_20CDD6734(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_20CE14384();
  MEMORY[0x20F3138A0](a2);
  v7 = sub_20CE143B4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_20CDD7C98(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20CDD682C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20CDD8FD8(0, &qword_27C8130D0, sub_20CDD8F20);
  result = sub_20CE14094();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 2 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20CE14384();
      sub_20CE139C4();

      sub_20CE143A4();
      if (v21 != 16)
      {
        sub_20CE139C4();
      }

      result = sub_20CE143B4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 2 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20CDD6F40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20CDD8FD8(0, &qword_27C8130E0, sub_20CDB9D40);
  result = sub_20CE14094();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_20CE14384();
      MEMORY[0x20F3138A0](v18);
      result = sub_20CE143B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_20CDD71A8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = BYTE1(result);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  v33 = BYTE1(result);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_20CDD682C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_20CDD7DE4();
        goto LABEL_113;
      }

      sub_20CDD8094(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_20CE14384();
    HearingTestFlowAnalyticsStep.rawValue.getter();
    sub_20CE139C4();

    sub_20CE143A4();
    if (v6 != 16)
    {
      HearingTestFlowActionType.rawValue.getter();
      sub_20CE139C4();
    }

    result = sub_20CE143B4();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v32 = ~v11;
      v12 = 0xEF64657472617453;
      v13 = 0x20676E6974746547;
      while (1)
      {
        v14 = (*(v9 + 48) + 2 * a2);
        v15 = v14[1];
        v16 = v12;
        v17 = v13;
        switch(*v14)
        {
          case 1:
            v17 = 0xD00000000000001DLL;
            v16 = 0x800000020CE1A690;
            break;
          case 2:
            v17 = 0xD00000000000001ELL;
            v16 = 0x800000020CE1A6B0;
            break;
          case 3:
            break;
          case 4:
            v17 = 0xD000000000000013;
            v16 = 0x800000020CE1A6E0;
            break;
          case 5:
            v17 = 0xD000000000000011;
            v16 = 0x800000020CE1A700;
            break;
          case 6:
            v17 = 0xD000000000000026;
            v16 = 0x800000020CE1A720;
            break;
          case 7:
            v17 = 0xD000000000000026;
            v16 = 0x800000020CE1A750;
            break;
          case 8:
            v17 = 0xD000000000000026;
            v16 = 0x800000020CE1A780;
            break;
          case 9:
            v17 = 0xD000000000000026;
            v16 = 0x800000020CE1A7B0;
            break;
          case 0xA:
            v16 = 0xEA00000000006E6FLL;
            v17 = 0x697461756C617645;
            break;
          case 0xB:
            v17 = 0xD00000000000002FLL;
            v16 = 0x800000020CE1A7F0;
            break;
          case 0xC:
            v16 = 0xE700000000000000;
            v17 = 0x73746C75736552;
            break;
          case 0xD:
            v17 = 0xD000000000000010;
            v16 = 0x800000020CE1A830;
            break;
          case 0xE:
            v17 = 0x7075727265746E49;
            v16 = 0xEC0000006E6F6974;
            break;
          case 0xF:
            v17 = 0xD000000000000014;
            v16 = 0x800000020CE1A850;
            break;
          default:
            v17 = 0xD000000000000013;
            v16 = 0x800000020CE1A670;
            break;
        }

        v18 = v13;
        v19 = v12;
        switch(v5)
        {
          case 1:
            v12 = 0x800000020CE1A690;
            if (v17 != 0xD00000000000001DLL)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 2:
            v12 = 0x800000020CE1A6B0;
            if (v17 != 0xD00000000000001ELL)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 3:
            goto LABEL_58;
          case 4:
            v12 = 0x800000020CE1A6E0;
            if (v17 != 0xD000000000000013)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 5:
            v12 = 0x800000020CE1A700;
            if (v17 != 0xD000000000000011)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 6:
            v12 = 0x800000020CE1A720;
            if (v17 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 7:
            v12 = 0x800000020CE1A750;
            if (v17 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 8:
            v12 = 0x800000020CE1A780;
            if (v17 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 9:
            v12 = 0x800000020CE1A7B0;
            if (v17 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 10:
            v12 = 0xEA00000000006E6FLL;
            v13 = 0x697461756C617645;
LABEL_58:
            if (v17 == v13)
            {
              goto LABEL_59;
            }

            goto LABEL_62;
          case 11:
            v12 = 0x800000020CE1A7F0;
            if (v17 != 0xD00000000000002FLL)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 12:
            v12 = 0xE700000000000000;
            if (v17 != 0x73746C75736552)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 13:
            v12 = 0x800000020CE1A830;
            if (v17 != 0xD000000000000010)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 14:
            v12 = 0xEC0000006E6F6974;
            if (v17 != 0x7075727265746E49)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 15:
            v12 = 0x800000020CE1A850;
            if (v17 != 0xD000000000000014)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          default:
            v12 = 0x800000020CE1A670;
            if (v17 != 0xD000000000000013)
            {
              goto LABEL_62;
            }

LABEL_59:
            if (v16 == v12)
            {

LABEL_63:
              v21 = v33;
              v22 = 0xEA00000000007265;
              result = 0x746E452070657453;
              switch(v15)
              {
                case 0:
                  goto LABEL_79;
                case 1:
                  v21 = 107;
                  v22 = 0xE900000000000074;
                  result = 0x78654E2065766F4DLL;
                  goto LABEL_79;
                case 2:
                  result = 0x6361422065766F4DLL;
                  v22 = 0xE90000000000006BLL;
                  goto LABEL_79;
                case 3:
                  v22 = 0xE400000000000000;
                  result = 1701736260;
                  goto LABEL_79;
                case 4:
                  result = 0x46206C65636E6143;
                  v22 = 0xEB00000000776F6CLL;
                  goto LABEL_79;
                case 5:
                  result = 0x764F207472617453;
                  goto LABEL_79;
                case 6:
                  v21 = 38;
                  result = 0xD000000000000010;
                  v22 = 0x800000020CE1A8A0;
                  goto LABEL_79;
                case 7:
                  v21 = 38;
                  result = 0xD000000000000014;
                  v22 = 0x800000020CE1A8C0;
                  goto LABEL_79;
                case 8:
                  v22 = 0xE700000000000000;
                  result = 0x73736563637553;
                  goto LABEL_79;
                case 9:
                  v22 = 0xE700000000000000;
                  result = 0x6572756C696146;
                  goto LABEL_79;
                case 10:
                  result = 0x74654420776F6853;
                  v22 = 0xEC000000736C6961;
                  goto LABEL_79;
                case 11:
                  result = 0x74724120776F6853;
                  v22 = 0xEC000000656C6369;
                  goto LABEL_79;
                case 12:
                  v21 = 38;
                  result = 0xD000000000000015;
                  v22 = 0x800000020CE1A900;
                  goto LABEL_79;
                case 13:
                  v21 = 38;
                  result = 0xD00000000000001CLL;
                  v22 = 0x800000020CE1A920;
                  goto LABEL_79;
                case 14:
                  v21 = 38;
                  result = 0xD000000000000010;
                  v22 = 0x800000020CE1A940;
                  goto LABEL_79;
                case 15:
                  v21 = 38;
                  result = 0xD000000000000012;
                  v22 = 0x800000020CE1A960;
LABEL_79:
                  v23 = 0x746E452070657453;
                  v24 = 0xEA00000000007265;
                  switch(v21)
                  {
                    case 0:
                      goto LABEL_107;
                    case 1:
                      v24 = 0xE900000000000074;
                      if (result != 0x78654E2065766F4DLL)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 2:
                      v24 = 0xE90000000000006BLL;
                      if (result != 0x6361422065766F4DLL)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 3:
                      v24 = 0xE400000000000000;
                      if (result != 1701736260)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 4:
                      v24 = 0xEB00000000776F6CLL;
                      if (result != 0x46206C65636E6143)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 5:
                      if (result != 0x764F207472617453)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 6:
                      v24 = 0x800000020CE1A8A0;
                      if (result != 0xD000000000000010)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 7:
                      v24 = 0x800000020CE1A8C0;
                      if (result != 0xD000000000000014)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 8:
                      v24 = 0xE700000000000000;
                      if (result != 0x73736563637553)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 9:
                      v24 = 0xE700000000000000;
                      if (result != 0x6572756C696146)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 10:
                      v23 = 0x74654420776F6853;
                      v24 = 0xEC000000736C6961;
LABEL_107:
                      if (result == v23)
                      {
                        goto LABEL_108;
                      }

                      goto LABEL_109;
                    case 11:
                      v24 = 0xEC000000656C6369;
                      if (result != 0x74724120776F6853)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 12:
                      v24 = 0x800000020CE1A900;
                      if (result != 0xD000000000000015)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 13:
                      v24 = 0x800000020CE1A920;
                      if (result != 0xD00000000000001CLL)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 14:
                      v24 = 0x800000020CE1A940;
                      if (result != 0xD000000000000010)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 15:
                      v24 = 0x800000020CE1A960;
                      if (result != 0xD000000000000012)
                      {
                        goto LABEL_109;
                      }

LABEL_108:
                      if (v22 == v24)
                      {
                        goto LABEL_116;
                      }

LABEL_109:
                      v25 = sub_20CE14284();

                      if (v25)
                      {
                        goto LABEL_117;
                      }

                      goto LABEL_13;
                    default:
                      goto LABEL_13;
                  }

                default:
                  if (v33 != 16)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_117;
              }
            }

LABEL_62:
            v20 = sub_20CE14284();

            if (v20)
            {
              goto LABEL_63;
            }

LABEL_13:
            a2 = (a2 + 1) & v32;
            v12 = v19;
            v13 = v18;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_113;
            }

            break;
        }
      }
    }
  }

LABEL_113:
  v26 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 2 * a2);
  *v27 = v5;
  v27[1] = v33;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_116:

LABEL_117:
    result = sub_20CE142D4();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

uint64_t sub_20CDD7C98(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20CDD6F40(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20CDD7F3C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20CDD8778(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_20CE14384();
  MEMORY[0x20F3138A0](v4);
  result = sub_20CE143B4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20CE142D4();
  __break(1u);
  return result;
}

void *sub_20CDD7DE4()
{
  v1 = v0;
  sub_20CDD8FD8(0, &qword_27C8130D0, sub_20CDD8F20);
  v2 = *v0;
  v3 = sub_20CE14084();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20CDD7F3C()
{
  v1 = v0;
  sub_20CDD8FD8(0, &qword_27C8130E0, sub_20CDB9D40);
  v2 = *v0;
  v3 = sub_20CE14084();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CDD8094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20CDD8FD8(0, &qword_27C8130D0, sub_20CDD8F20);
  result = sub_20CE14094();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20CE14384();
      sub_20CE139C4();

      sub_20CE143A4();
      if (v20 != 16)
      {
        sub_20CE139C4();
      }

      result = sub_20CE143B4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 2 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20CDD8778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20CDD8FD8(0, &qword_27C8130E0, sub_20CDB9D40);
  result = sub_20CE14094();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_20CE14384();
      MEMORY[0x20F3138A0](v17);
      result = sub_20CE143B4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20CDD89B0(uint64_t a1)
{
  v2 = type metadata accessor for SessionManager.EndReason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CDD8A14()
{
  sub_20CDD8C64(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CDD8B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD7C660;

  return sub_20CDD598C(a1, v4, v5, v6);
}

void sub_20CDD8C04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20CDD24B8();
}

unint64_t sub_20CDD8C0C()
{
  result = qword_27C812AB8;
  if (!qword_27C812AB8)
  {
    sub_20CE136C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812AB8);
  }

  return result;
}

void sub_20CDD8C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20CDD8CC8()
{
  result = qword_27C812AC8;
  if (!qword_27C812AC8)
  {
    sub_20CDD8C64(255, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812AC8);
  }

  return result;
}

void sub_20CDD8D50()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_20CE13914();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_userDefaults) = v3;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_maxPauseTime) = 0x405E000000000000;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager) = 0;
  v4 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
  v5 = sub_20CE124E4();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer) = 0;
  swift_unknownObjectWeakInit();
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDD8EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_20CDD8F20()
{
  result = qword_27C8130D8;
  if (!qword_27C8130D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130D8);
  }

  return result;
}

uint64_t sub_20CDD8F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionManager.EndReason(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CDD8FD8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_20CE140B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CDD9040(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CDD9098(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_20CE12644();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_20CE12694();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_20CE126A4();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_20CE13B84();
  v3[16] = sub_20CE13B74();
  v14 = sub_20CE13B24();
  v3[17] = v14;
  v3[18] = v13;

  return MEMORY[0x2822009F8](sub_20CDD927C, v14, v13);
}

uint64_t sub_20CDD927C()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_20CDD93B0;
  v7 = v0[15];
  v8 = v0[3];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_20CDD93B0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20CDD94D0, v4, v3);
}

uint64_t sub_20CDD94D0()
{
  v47 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  (*(v4 + 16))(v3, v2, v5);
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == *MEMORY[0x277D12C78])
  {
    v45 = v6;
    (*(v0[13] + 96))(v0[14], v0[12]);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v7 = sub_20CE12CB4();
    __swift_project_value_buffer(v7, qword_27C817768);
    v8 = sub_20CE12C94();
    v9 = sub_20CE13CD4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[5];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46 = v12;
      *v11 = 136446210;
      v13 = sub_20CE14414();
      v15 = sub_20CD96DCC(v13, v14, &v46);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20CD70000, v8, v9, "[%{public}s] Real results are being ignored. Using HTHearingTestThreshold defined in User Defaults.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x20F314110](v12, -1, -1);
      MEMORY[0x20F314110](v11, -1, -1);
    }

    v43 = v0[15];
    v44 = v0[14];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[10];
    v19 = v0[11];
    v20 = v0[9];
    v21 = v0[2];
    v22 = *(v0[4] + 56);
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277D12C48], v0[6]);

    sub_20CDD9AB0(0x20000000000001uLL);
    sub_20CD7C52C();
    v24 = v23;
    v42 = *(v23 + 48);
    sub_20CE12654();
    v25 = *(v24 + 48);
    (*(v18 + 16))(v21, v19, v20);
    sub_20CD7C2DC();
    swift_storeEnumTagMultiPayload();
    sub_20CE127D4();
    (*(v18 + 8))(v19, v20);
    (*(v16 + 8))(v43, v17);
    (*(v16 + 104))(v21, v45, v17);
    v26 = sub_20CE127E4();
    (*(*(v26 - 8) + 8))(v44 + v42, v26);
    sub_20CD96BB0(v44);
  }

  else
  {
    v27 = v0[14];
    v28 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[2];
    if (v6 == *MEMORY[0x277D12C70])
    {
      (*(v29 + 96))(v0[14], v0[12]);
      sub_20CD7C468();
      v33 = *(v32 + 64);
      (*(v29 + 32))(v31, v28, v30);
      v34 = sub_20CE12744();
      (*(*(v34 - 8) + 8))(v27 + v33, v34);
      v35 = sub_20CE12714();
      (*(*(v35 - 8) + 8))(v27, v35);
    }

    else
    {
      (*(v29 + 32))(v0[2], v0[15], v0[12]);
      (*(v29 + 8))(v27, v30);
    }
  }

  v37 = v0[14];
  v36 = v0[15];
  v38 = v0[11];
  v39 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t HTThresholdsFromDefaultsSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t HTThresholdsFromDefaultsSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_20CDD9A00(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CD7C660;

  return sub_20CDD9098(a1, a2);
}

unint64_t sub_20CDD9AB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F314120](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F314120](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of HTThresholdsFromDefaultsSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CD7C660;

  return v10(a1, a2);
}

uint64_t sub_20CDD9CC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  type metadata accessor for HTThresholdsFromDefaultsSession();
  v11 = swift_allocObject();
  sub_20CD7C388(v15, v11 + 16);
  v12 = NSUserDefaults.overridenHTThresholds(channel:)(a2);

  v13 = sub_20CE12924();
  (*(*(v13 - 8) + 8))(a2, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v12)
  {
    *(v11 + 56) = v12;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

uint64_t sub_20CDD9DF0()
{
  v1 = 1 << *v0;
  if ((v1 & 0x5B) != 0)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_9;
  }

  if ((v1 & 0x24) != 0)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_9;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDD9F8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (v3 > 3)
  {
    if (*v2 <= 5u)
    {
LABEL_12:
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_18;
    }

    if (v3 != 6)
    {
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

LABEL_18:
      swift_once();
      return sub_20CE12354();
    }

LABEL_10:
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_18;
  }

  if (v3 < 2)
  {
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_18;
  }

  v5 = qword_27C811DC8;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  sub_20CDDA6DC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16370;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_20CDCB52C();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_20CE13924();

  return v8;
}

unint64_t HearingTestInterruptionType.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0xD000000000000018;
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
    v2 = 0x6361654420707041;
    v3 = 0xD000000000000017;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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

uint64_t HearingTestInterruptionType.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

unint64_t sub_20CDDA47C()
{
  result = qword_27C8130E8;
  if (!qword_27C8130E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130E8);
  }

  return result;
}

unint64_t sub_20CDDA4D4()
{
  result = qword_27C8130F0;
  if (!qword_27C8130F0)
  {
    sub_20CDDA52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130F0);
  }

  return result;
}

void sub_20CDDA52C()
{
  if (!qword_27C8130F8)
  {
    v0 = sub_20CE13B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8130F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HearingTestInterruptionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestInterruptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20CDDA6DC()
{
  if (!qword_27C8135A0)
  {
    sub_20CDDA734();
    v0 = sub_20CE14264();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8135A0);
    }
  }
}

unint64_t sub_20CDDA734()
{
  result = qword_27C812240;
  if (!qword_27C812240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C812240);
  }

  return result;
}

uint64_t sub_20CDDA798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12;
  sub_20CDE3524(a3, v27 - v12, &qword_27C811EA0, v9);
  v14 = sub_20CE13BB4();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_20CDE32D0(v13, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  }

  else
  {
    sub_20CE13BA4();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CE13B24();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CE13994() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20CDDAB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12;
  sub_20CDE3524(a3, v27 - v12, &qword_27C811EA0, v9);
  v14 = sub_20CE13BB4();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_20CDE32D0(v13, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  }

  else
  {
    sub_20CE13BA4();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CE13B24();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CE13994() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20CDDAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12;
  sub_20CDE3524(a3, v27 - v12, &qword_27C811EA0, v9);
  v14 = sub_20CE13BB4();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_20CDE32D0(v13, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  }

  else
  {
    sub_20CE13BA4();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CE13B24();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_20CE13994() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_20CDE3B1C(0, &qword_27C8131E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20CDE32D0(v27[0], &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDE32D0(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDE3904);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_20CDE3B1C(0, &qword_27C8131E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20CDDB38C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultsProcessor;
  swift_beginAccess();
  type metadata accessor for ResultsProcessor();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = sub_20CE12644();
      (*(*(v5 - 8) + 8))(v3, v5);
      v6 = &qword_27C8131D8;
      v7 = &type metadata for ResultsProcessor.Partial;
    }

    else
    {
      v9 = sub_20CE12644();
      (*(*(v9 - 8) + 8))(v3, v9);
      v6 = &qword_27C8131D0;
      v7 = &type metadata for ResultsProcessor.Complete;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v8 = sub_20CE12644();
    (*(*(v8 - 8) + 8))(v3, v8);
    v6 = &qword_27C812EB8;
    v7 = &type metadata for ResultsProcessor.Empty;
LABEL_8:
    sub_20CDE3B1C(0, v6, v7, sub_20CDFCB50);
    v11 = v10;
    v12 = *(v3 + v10[7]);

    v13 = *(v3 + v11[8]);

    v14 = *(v3 + v11[9]);

    v15 = *(v3 + v11[10]);

    v16 = *(v3 + v11[11]);

    goto LABEL_9;
  }

  sub_20CDE3608(v3, type metadata accessor for ResultsProcessor);
LABEL_9:
  sub_20CDE39FC(a1, v3, type metadata accessor for ResultsProcessor);
  return swift_endAccess();
}

void sub_20CDDB588(_BYTE *a1@<X8>)
{
  sub_20CE13B84();
  v1 = 0;
  v2 = "SkipFitAndNoiseCheck";
  while (1)
  {
    v3 = byte_2823BAF48[v1 + 32];
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v3 < 6)
    {
      break;
    }

    if (v3 > 6)
    {
      goto LABEL_28;
    }

    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_20CE13914();
    v6 = [v14 initWithSuiteName_];

    if (!v6)
    {
      goto LABEL_36;
    }

    v16 = [objc_opt_self() sharedBehavior];
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = v16;
    v18 = [v16 isAppleInternalInstall];

    if (!v18 || (v19 = v2, v20 = sub_20CE13914(), v21 = [v6 hk:v20 keyExists:?], v20, (v21 & 1) == 0))
    {
LABEL_29:

      goto LABEL_30;
    }

    v22 = sub_20CE13914();
    v23 = [v6 BOOLForKey_];

    v2 = v19;
    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_2:
    if (++v1 == 10)
    {
      goto LABEL_37;
    }
  }

  if ((v3 - 2) >= 4)
  {
    if (v3 != 1)
    {
LABEL_28:

LABEL_30:
      *a1 = v3;
      return;
    }

    v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v25 = sub_20CE13914();
    v6 = [v24 initWithSuiteName_];

    if (!v6)
    {
      goto LABEL_34;
    }

    v26 = [objc_opt_self() sharedBehavior];
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = v26;
    v28 = [v26 isAppleInternalInstall];

    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = sub_20CE13914();
    v30 = [v6 hk:v29 keyExists:?];

    if ((v30 & 1) == 0)
    {
      goto LABEL_29;
    }

    v31 = sub_20CE13914();
    v32 = [v6 BOOLForKey_];

    if (!v32)
    {
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_20CE13914();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = [objc_opt_self() sharedBehavior];
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = v7;
    v9 = [v7 isAppleInternalInstall];

    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = sub_20CE13914();
    v11 = [v6 hk:v10 keyExists:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }

    v12 = sub_20CE13914();
    v13 = [v6 BOOLForKey_];

    if ((v13 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDDBA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v112 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_20CE124E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v106 - v12;
  sub_20CDE3904(0, &qword_27C8124A8, MEMORY[0x277D12D30], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v106 - v16;
  swift_beginAccess();
  sub_20CDFD7EC(a1);
  swift_endAccess();
  v18 = sub_20CDDB32C();
  v20 = v19;
  type metadata accessor for ResultsProcessor();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v111 = v2;
    if (EnumCaseMultiPayload == 2)
    {
      v31 = v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager;
      v32 = v20;
      v34 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v33 = *(v31 + 8);
      v35 = swift_getObjectType();
      v36 = (*(v33 + 8))(v35, v33);
      sub_20CE127C4();
      v37 = sub_20CE12984();
      (*(*(v37 - 8) + 56))(v17, 0, 1, v37);
      v38 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics;
      swift_beginAccess();
      sub_20CDE3968(v17, v36 + v38);
      swift_endAccess();

      sub_20CDE3B1C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
      v40 = *(v32 + *(v39 + 36));
      sub_20CE124C4();
      sub_20CE124C4();
      sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
      v41 = sub_20CE13AA4();
      v42 = v6;
      v43 = sub_20CE124A4();
      v44 = sub_20CE124A4();
      v45 = v7;
      v46 = [objc_opt_self() audiogramSampleWithSensitivityPoints:v41 startDate:v43 endDate:v44 device:0 metadata:0];

      v47 = *(v45 + 8);
      v47(v11, v42);
      v47(v13, v42);
      LODWORD(v41) = [v46 isAmbiguous];

      if (!v41)
      {
        if (qword_27C811D08 != -1)
        {
          swift_once();
        }

        v93 = sub_20CE12CB4();
        __swift_project_value_buffer(v93, qword_27C817780);
        v23 = sub_20CE12C94();
        v24 = sub_20CE13CD4();
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_28;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v113[0] = v26;
        *v25 = 136446210;
        v94 = sub_20CE14414();
        v96 = sub_20CD96DCC(v94, v95, v113);

        *(v25 + 4) = v96;
        v30 = "[%{public}s] Partial results are not ambiguous.";
        goto LABEL_27;
      }

      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v48 = sub_20CE12CB4();
      __swift_project_value_buffer(v48, qword_27C817780);
      v49 = sub_20CE12C94();
      v50 = sub_20CE13CD4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v113[0] = v52;
        *v51 = 136446210;
        v53 = sub_20CE14414();
        v55 = sub_20CD96DCC(v53, v54, v113);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_20CD70000, v49, v50, "[%{public}s] Partial results are ambiguous.", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x20F314110](v52, -1, -1);
        MEMORY[0x20F314110](v51, -1, -1);
      }

      sub_20CDDC6B4();
    }

    else
    {
      v109 = v18;
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v110 = v20;
      v107 = v7;
      v108 = v6;
      v56 = sub_20CE12CB4();
      v106[2] = __swift_project_value_buffer(v56, qword_27C817780);
      v57 = sub_20CE12C94();
      v58 = sub_20CE13CD4();
      v59 = os_log_type_enabled(v57, v58);
      v106[1] = ObjectType;
      if (v59)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v113[0] = v61;
        *v60 = 136446210;
        v62 = sub_20CE14414();
        v64 = sub_20CD96DCC(v62, v63, v113);

        *(v60 + 4) = v64;
        _os_log_impl(&dword_20CD70000, v57, v58, "[%{public}s] Results are now complete.", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x20F314110](v61, -1, -1);
        MEMORY[0x20F314110](v60, -1, -1);
      }

      v66 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v65 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      v67 = swift_getObjectType();
      v68 = (*(v65 + 8))(v67, v65);
      sub_20CE127C4();
      v69 = sub_20CE12984();
      (*(*(v69 - 8) + 56))(v17, 0, 1, v69);
      v70 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics;
      swift_beginAccess();
      sub_20CDE3968(v17, v68 + v70);
      swift_endAccess();

      sub_20CDE3B1C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      v112 = v71;
      v72 = *(v110 + *(v71 + 36));
      sub_20CE124C4();
      sub_20CE124C4();
      sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
      v73 = sub_20CE13AA4();
      v74 = sub_20CE124A4();
      v75 = sub_20CE124A4();
      v76 = objc_opt_self();
      v77 = [v76 audiogramSampleWithSensitivityPoints:v73 startDate:v74 endDate:v75 device:0 metadata:0];

      v78 = v108;
      v79 = *(v107 + 8);
      v79(v11, v108);
      v79(v13, v78);
      LOBYTE(v75) = [v77 isAmbiguous];

      if (v75)
      {
        goto LABEL_20;
      }

      v80 = *(v110 + *(v112 + 40));
      sub_20CE124C4();
      sub_20CE124C4();
      v81 = sub_20CE13AA4();
      v82 = sub_20CE124A4();
      v83 = sub_20CE124A4();
      v84 = [v76 audiogramSampleWithSensitivityPoints:v81 startDate:v82 endDate:v83 device:0 metadata:0];

      v79(v11, v78);
      v79(v13, v78);
      LODWORD(v83) = [v84 &_OBJC_LABEL_PROTOCOL___FitNoiseCheckDelegate];

      if (v83)
      {
LABEL_20:
        v85 = sub_20CE12C94();
        v86 = sub_20CE13CD4();
        v87 = os_log_type_enabled(v85, v86);
        v18 = v109;
        if (v87)
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v113[0] = v89;
          *v88 = 136446210;
          v90 = sub_20CE14414();
          v92 = sub_20CD96DCC(v90, v91, v113);

          *(v88 + 4) = v92;
          _os_log_impl(&dword_20CD70000, v85, v86, "[%{public}s] Partial results are ambiguous.", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v89);
          MEMORY[0x20F314110](v89, -1, -1);
          MEMORY[0x20F314110](v88, -1, -1);
        }

        sub_20CDDC6B4();
      }

      else
      {
        v98 = sub_20CE12C94();
        v99 = sub_20CE13CD4();
        v100 = os_log_type_enabled(v98, v99);
        v18 = v109;
        if (v100)
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v113[0] = v102;
          *v101 = 136446210;
          v103 = sub_20CE14414();
          v105 = sub_20CD96DCC(v103, v104, v113);

          *(v101 + 4) = v105;
          _os_log_impl(&dword_20CD70000, v98, v99, "[%{public}s] Partial results are not ambiguous.", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          MEMORY[0x20F314110](v102, -1, -1);
          MEMORY[0x20F314110](v101, -1, -1);
        }

        sub_20CDDCB70(v110);
      }
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v22 = sub_20CE12CB4();
    __swift_project_value_buffer(v22, qword_27C817780);
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CC4();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_28;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v113[0] = v26;
    *v25 = 136446210;
    v27 = sub_20CE14414();
    v29 = sub_20CD96DCC(v27, v28, v113);

    *(v25 + 4) = v29;
    v30 = "[%{public}s] An error at this point is unexpected and currently unhandled.";
LABEL_27:
    _os_log_impl(&dword_20CD70000, v23, v24, v30, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x20F314110](v26, -1, -1);
    MEMORY[0x20F314110](v25, -1, -1);
LABEL_28:
  }

  return (v18)(v114, 0);
}

void sub_20CDDC6B4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v35);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001FLL, 0x800000020CE1F530, &v35);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
  v11 = *v10;
  *(*v10 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager;
  *(*(v11 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v13 = *(v11 + v12);
  sub_20CDBDA1C();
  v14 = *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer];
  sub_20CE12864();
  v15 = *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager];
  sub_20CE12A14();
  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
  v17 = *&v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8];
  ObjectType = swift_getObjectType();
  (*(v17 + 8))(ObjectType, v17);
  LOBYTE(v35) = 3;
  sub_20CD8EDF0(&v35);

  v1[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous] = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v20 = Strong;
  v21 = [Strong viewControllers];

  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  v22 = sub_20CE13AB4();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v23 = sub_20CE141C4();
  if (!v23)
  {
LABEL_15:

LABEL_16:
    oslog = sub_20CE12C94();
    v28 = sub_20CE13CC4();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136446210;
      v31 = sub_20CE14414();
      v33 = sub_20CD96DCC(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_20CD70000, oslog, v28, "[%{public}s] We cannot get the last controller on the stack and this is unexpected.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x20F314110](v30, -1, -1);
      MEMORY[0x20F314110](v29, -1, -1);
    }

    else
    {
    }

    return;
  }

LABEL_8:
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v26 = MEMORY[0x20F313610](v25, v22);
    goto LABEL_13;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v22 + 8 * v25 + 32);
LABEL_13:
    v27 = v26;

    LOBYTE(v35) = 6;
    sub_20CDDDC94(v27, &v35, v1, &unk_2823BDED8, nullsub_1, &unk_20CE18BA0);

    return;
  }

  __break(1u);
}

void sub_20CDDCB70(uint64_t a1)
{
  v2 = v1;
  v161 = a1;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x277D83D88];
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v146 = v145 - v6;
  v157 = sub_20CE12644();
  v7 = *(v157 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v157);
  v10 = v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE3400();
  v149 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v148 = v145 - v16;
  sub_20CDE3904(0, &qword_281111770, MEMORY[0x277CC9578], v3);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v150 = (v145 - v19);
  v153 = sub_20CE124E4();
  v151 = *(v153 - 8);
  v20 = *(v151 + 64);
  v21 = MEMORY[0x28223BE20](v153);
  v152 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v145 - v23;
  sub_20CDE3468();
  v26 = v25;
  v27 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25);
  v158 = v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v159 = sub_20CE12CB4();
  v29 = __swift_project_value_buffer(v159, qword_27C817780);
  v30 = sub_20CE12C94();
  v31 = sub_20CE13CD4();
  v32 = os_log_type_enabled(v30, v31);
  v155 = v29;
  v156 = v7;
  v154 = v10;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v166[0] = v34;
    *v33 = 136446466;
    v35 = sub_20CE14414();
    v37 = sub_20CD96DCC(v35, v36, v166);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_20CD96DCC(0xD000000000000019, 0x800000020CE1F450, v166);
    _os_log_impl(&dword_20CD70000, v30, v31, "[%{public}s] %s called.", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v34, -1, -1);
    MEMORY[0x20F314110](v33, -1, -1);
  }

  v38 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
  v39 = *v38;
  *(*v38 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v40 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager;
  *(*(v39 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v41 = *(v39 + v40);
  sub_20CDBDA1C();
  v42 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer];
  sub_20CE12864();
  v43 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager];
  sub_20CE12A14();
  v44 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
  v45 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8];
  v46 = swift_getObjectType();
  (*(v45 + 8))(v46, v45);
  v47 = 2;
  LOBYTE(v166[0]) = 2;
  sub_20CD8EDF0(v166);

  v48 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore];
  v49 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager];
  v50 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails];
  if (v50)
  {
    v51 = *(v50 + 17);
    v47 = *(v50 + 18);
  }

  else
  {
    v51 = 2;
  }

  sub_20CDE3B1C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
  v147 = v52;
  v53 = (v161 + *(v52 + 48));
  v54 = *v53;
  v55 = (v161 + *(v52 + 52));
  v56 = *v55;
  LOBYTE(v55) = *(v55 + 8);
  v165 = *(v53 + 8);
  v164 = v55;
  v166[0] = v48;
  v166[1] = v49;
  v167 = v51;
  v168 = v47;
  v169 = v54;
  v170 = v165;
  v171 = v56;
  v172 = v55;
  v57 = v48;

  sub_20CD8D244();
  v59 = v58;

  v60 = 0;
  v61 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_defaults];
  v62 = *(v49 + 24);
  if (v62 <= 0x3F)
  {
    v63 = *(v49 + 16);
    swift_getObjectType();
    sub_20CD996F0(v63, v62);
    v60 = sub_20CD8E834();
    sub_20CD99704(v63, v62);
  }

  _sSo14NSUserDefaultsC13HearingTestUIE19overriddenAudiogram6device8metadataSo17HKAudiogramSampleCSgSo8HKDeviceCSg_SDySSypGSgtF_0();
  v65 = v64;

  if (v65)
  {

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v159, qword_27C817768);
    v66 = sub_20CE12C94();
    v67 = sub_20CE13CD4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v2;
      v70 = swift_slowAlloc();
      v163 = v70;
      *v68 = 136446210;
      v71 = sub_20CE14414();
      v73 = sub_20CD96DCC(v71, v72, &v163);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_20CD70000, v66, v67, "[%{public}s] Using mock audiogram as special UserDefaults have been set.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      v74 = v70;
      v2 = v69;
      MEMORY[0x20F314110](v74, -1, -1);
      MEMORY[0x20F314110](v68, -1, -1);
    }

    v75 = v65;
  }

  else
  {
    v145[0] = v49;
    v145[1] = v59;
    v76 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_hearingTestStartDate;
    swift_beginAccess();
    v77 = v150;
    sub_20CDE3524(&v2[v76], v150, &qword_281111770, MEMORY[0x277CC9578]);
    v78 = v151;
    v79 = *(v151 + 48);
    v80 = v153;
    if ((v79)(v77, 1, v153) == 1)
    {
      v81 = v24;
      sub_20CE124C4();
      v82 = (v79)(v77, 1, v80) == 1;
      v83 = v77;
      v84 = v152;
      if (!v82)
      {
        sub_20CDE32D0(v83, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDE3904);
      }
    }

    else
    {
      v81 = v24;
      (*(v78 + 32))(v24, v77, v80);
      v84 = v152;
    }

    sub_20CE124C4();
    sub_20CDE34CC();
    if ((sub_20CE138E4() & 1) == 0)
    {
      __break(1u);
LABEL_49:
      v116 = sub_20CE141C4();
      if (v116)
      {
LABEL_31:
        v117 = __OFSUB__(v116, 1);
        v118 = v116 - 1;
        if (v117)
        {
          __break(1u);
        }

        else if ((v79 & 0xC000000000000001) == 0)
        {
          if ((v118 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v118 < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v119 = *(v79 + 8 * v118 + 32);
LABEL_36:
            v120 = v119;

            LOBYTE(v162) = 6;
            sub_20CDDDC94(v120, &v162, v2, &unk_2823BDE60, nullsub_1, &unk_20CE18B80);

            goto LABEL_54;
          }

          __break(1u);
          goto LABEL_59;
        }

        v119 = MEMORY[0x20F313610](v118, v79);
        goto LABEL_36;
      }

      goto LABEL_50;
    }

    v152 = v2;
    v85 = *(v78 + 32);
    v86 = v148;
    v85(v148, v81, v80);
    v87 = v149;
    v85((v86 + *(v149 + 48)), v84, v80);
    sub_20CDE35A4(v86, v15);
    v88 = *(v87 + 48);
    v150 = v26;
    v89 = v158;
    v85(v158, v15, v80);
    v90 = *(v78 + 8);
    v90(&v15[v88], v80);
    sub_20CDE39FC(v86, v15, sub_20CDE3400);
    v85(&v89[v150[9]], &v15[*(v87 + 48)], v80);
    v90(v15, v80);
    v91 = *(v145[0] + 24);
    if (v91 > 0x3F)
    {
      v93 = 0;
    }

    else
    {
      v92 = *(v145[0] + 16);
      swift_getObjectType();
      sub_20CD996F0(v92, v91);
      v93 = sub_20CD8E834();
      sub_20CD99704(v92, v91);
    }

    v94 = *(v161 + *(v147 + 44));
    sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
    v95 = sub_20CE13AA4();
    v96 = v158;
    v97 = sub_20CE124A4();
    v98 = sub_20CE124A4();
    v99 = sub_20CE13874();
    v100 = [objc_opt_self() audiogramSampleWithSensitivityPoints:v95 startDate:v97 endDate:v98 device:v93 metadata:v99];

    sub_20CDE3608(v96, sub_20CDE3468);
    v75 = v100;
    v65 = 0;
    v2 = v152;
  }

  v101 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram];
  *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram] = v75;
  v102 = v65;
  v26 = v75;

  v103 = [v26 isAmbiguous];
  if ((v103 & 1) == 0)
  {
    v122 = v156;
    v121 = v157;
    v123 = v154;
    (*(v156 + 16))(v154, v161, v157);
    v124 = (*(v122 + 88))(v123, v121);
    if (v124 != *MEMORY[0x277D12C48] && v124 != *MEMORY[0x277D12C50])
    {
      if (v124 == *MEMORY[0x277D12C58])
      {
        goto LABEL_40;
      }

      if (v124 != *MEMORY[0x277D12C40])
      {
        if (v124 == *MEMORY[0x277D12C60])
        {
LABEL_40:
          if (qword_27C811D00 == -1)
          {
LABEL_41:
            __swift_project_value_buffer(v159, qword_27C817768);
            v125 = sub_20CE12C94();
            v126 = sub_20CE13CB4();
            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v162 = v128;
              *v127 = 136446210;
              v129 = sub_20CE14414();
              v131 = sub_20CD96DCC(v129, v130, &v162);

              *(v127 + 4) = v131;
              _os_log_impl(&dword_20CD70000, v125, v126, "[%{public}s] Evaluation results need special handling.", v127, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v128);
              MEMORY[0x20F314110](v128, -1, -1);
              MEMORY[0x20F314110](v127, -1, -1);
            }

            sub_20CDE2008();
            goto LABEL_54;
          }

LABEL_59:
          swift_once();
          goto LABEL_41;
        }

        (*(v122 + 8))(v123, v121);
      }
    }

    v132 = sub_20CE13BB4();
    v133 = v146;
    (*(*(v132 - 8) + 56))(v146, 1, 1, v132);
    sub_20CE13B84();
    v134 = v2;
    v135 = sub_20CE13B74();
    v136 = swift_allocObject();
    v137 = MEMORY[0x277D85700];
    v136[2] = v135;
    v136[3] = v137;
    v136[4] = v134;
    sub_20CDDAB58(0, 0, v133, &unk_20CE18B70, v136);

    goto LABEL_54;
  }

  v104 = sub_20CE12C94();
  v105 = sub_20CE13CD4();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = v2;
    v108 = swift_slowAlloc();
    v162 = v108;
    *v106 = 136446210;
    v109 = sub_20CE14414();
    v111 = sub_20CD96DCC(v109, v110, &v162);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_20CD70000, v104, v105, "[%{public}s] The session results have been processed and there is something wrong with the results. We will force the flow to continue.", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    v112 = v108;
    v2 = v107;
    MEMORY[0x20F314110](v112, -1, -1);
    MEMORY[0x20F314110](v106, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_51;
  }

  v114 = Strong;
  v115 = [Strong viewControllers];

  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  v79 = sub_20CE13AB4();

  if (v79 >> 62)
  {
    goto LABEL_49;
  }

  v116 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v116)
  {
    goto LABEL_31;
  }

LABEL_50:

LABEL_51:
  v138 = sub_20CE12C94();
  v139 = sub_20CE13CC4();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v162 = v141;
    *v140 = 136446210;
    v142 = sub_20CE14414();
    v144 = sub_20CD96DCC(v142, v143, &v162);

    *(v140 + 4) = v144;
    _os_log_impl(&dword_20CD70000, v138, v139, "[%{public}s] We cannot get the last controller on the stack and this is unexpected.", v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    MEMORY[0x20F314110](v141, -1, -1);
    MEMORY[0x20F314110](v140, -1, -1);
  }

LABEL_54:
}

void sub_20CDDDC94(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = *a2;
  v35 = *a2;
  sub_20CDDF904(&v35, &v36);
  if (v36 == 10 || (v29 = v36, v16 = sub_20CDDFE8C(&v29), v16 == 4))
  {
    v33 = v15;
    sub_20CDDF3E4(&v33, &v34);
    if (v34 == 10 || (v32 = v34, sub_20CDDEAC4(&v32), !v17))
    {
      sub_20CDDE960();
    }

    else
    {
      v18 = v17;
      v28 = [a1 navigationController];
      if (v28)
      {
        v30 = v15;
        sub_20CDDF904(&v30, &v31);
        if (v31 <= 0xAu && ((1 << v31) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
        {
          [v28 pushViewController:v18 animated:{1, v28}];

          v19 = v28;
        }

        else
        {
          v21 = sub_20CE13BB4();
          (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
          sub_20CE13B84();
          v22 = a3;
          v23 = v28;
          v24 = v18;
          v25 = sub_20CE13B74();
          v26 = swift_allocObject();
          v27 = MEMORY[0x277D85700];
          *(v26 + 16) = v25;
          *(v26 + 24) = v27;
          *(v26 + 32) = a5;
          *(v26 + 40) = 0;
          *(v26 + 48) = v22;
          *(v26 + 56) = v15;
          *(v26 + 64) = v23;
          *(v26 + 72) = v24;
          sub_20CDDA798(0, 0, v14, a6, v26);
        }
      }

      else
      {
        sub_20CE141B4();
        __break(1u);
      }
    }
  }

  else
  {
    v20 = v16;
    sub_20CDA3584(v16);
    sub_20CDA3760(v20);
  }
}

uint64_t sub_20CDDDFEC(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_20CDE3B6C(a1, a2, a3, a4, a5);
}

uint64_t sub_20CDDE024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v13;
  *(v8 + 137) = a7;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  sub_20CE13B84();
  *(v8 + 96) = sub_20CE13B74();
  v10 = sub_20CE13B24();
  *(v8 + 104) = v10;
  *(v8 + 112) = v9;

  return MEMORY[0x2822009F8](sub_20CDDE0D0, v10, v9);
}

uint64_t sub_20CDDE0D0()
{
  v1 = *(v0 + 137);
  v2 = *(v0 + 64);
  (*(v0 + 56))(0, 0, 0, 1);
  *(v0 + 136) = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_20CDDE194;
  v4 = *(v0 + 72);

  return sub_20CDDFF64((v0 + 136));
}

uint64_t sub_20CDDE194()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  v4 = *(v2 + 104);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_20CDDE340;
  }

  else
  {
    v6 = sub_20CDDE2A8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20CDDE2A8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  [v3 pushViewController:v2 animated:1];
  v4 = *(v0 + 64);
  (*(v0 + 56))(0, 0, 0, 2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CDDE340()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  *(v0 + 40) = v1;
  v3 = v1;
  sub_20CD7B62C();
  if (swift_dynamicCast())
  {

    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = sub_20CE12354();
    v8 = v7;
    v9 = sub_20CE12354();
    v5(v6, v8, v9, v10);

    v11 = *(v0 + 40);
  }

  else
  {
    v12 = *(v0 + 128);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);

    swift_getErrorValue();
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = sub_20CE14324();
    v14(0, 0, v18, v19);

    v11 = v12;
  }

  v20 = *(v0 + 64);
  (*(v0 + 56))(0, 0, 0, 2);
  v21 = *(v0 + 8);

  return v21();
}

void sub_20CDDE578(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for ResultsProcessor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v8 = sub_20CE12CB4();
  __swift_project_value_buffer(v8, qword_27C817780);
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136446466;
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, &v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20CD96DCC(0xD000000000000012, 0x800000020CE1F430, &v34);
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] %s called.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v12, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  v16 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  v17 = *v16;
  *(*v16 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v18 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager;
  *(*(v17 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v19 = *(v17 + v18);
  sub_20CDBDA1C();
  v20 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
  sub_20CE12864();
  v21 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager);
  sub_20CE12A14();
  *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous) = 0;
  *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) = 0;
  sub_20CDE3B1C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  v23 = v22;
  v24 = MEMORY[0x277D84F90];
  *&v7[v22[7]] = MEMORY[0x277D84F90];
  *&v7[v22[8]] = v24;
  *&v7[v22[9]] = v24;
  *&v7[v22[10]] = v24;
  *&v7[v22[11]] = v24;
  v25 = *MEMORY[0x277D12C48];
  v26 = sub_20CE12644();
  (*(*(v26 - 8) + 104))(v7, v25, v26);
  v27 = &v7[v23[12]];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v7[v23[13]];
  *v28 = 0;
  v28[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_20CDDB38C(v7);
  v29 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v30 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  (*(v30 + 8))(ObjectType, v30);
  sub_20CD90B28();

  Strong = swift_unknownObjectWeakLoadStrong();
}

void sub_20CDDE960()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v0 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  v3 = *v2;
  *(*v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager;
  *(*(v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v5 = *(v3 + v4);
  sub_20CDBDA1C();
  v6 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
  sub_20CE12864();
  v7 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager);
  sub_20CE12A14();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong presentingViewController];

    if (v10)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_20CDDEAC4(_BYTE *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *a1;
  if (v4 <= 5)
  {
    if (v4 - 2 < 4)
    {
      LOBYTE(v65[0]) = *a1;
      v5 = objc_allocWithZone(type metadata accessor for HearingTestPreEvaluationCoachingViewController());
      sub_20CDB9EC0(v2, v65);
      return;
    }

    if (!*a1)
    {
      LOBYTE(v65[0]) = 0;
      v7 = objc_allocWithZone(type metadata accessor for HearingTestSetUpViewController());
      sub_20CD7E908(v2, v65);
      return;
    }

    v8 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager];
    if (*(v8 + 24) <= 0x3Fu)
    {
      v9 = [*(v8 + 16) identifier];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_allocWithZone(MEMORY[0x277D12C08]) initWithDeviceAddress_];

        [v11 setFitNoiseCheckDelegate_];
        return;
      }
    }

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v21 = sub_20CE12CB4();
    __swift_project_value_buffer(v21, qword_27C817780);
    v22 = sub_20CE12C94();
    v23 = sub_20CE13CB4();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_28;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v65[0] = v25;
    *v24 = 136446210;
    v26 = sub_20CE14414();
    v28 = sub_20CD96DCC(v26, v27, v65);

    *(v24 + 4) = v28;
    v29 = "[%{public}s] Compatible AirPods are not connected. Cannot continue with Fit & Noise Check.";
    goto LABEL_27;
  }

  if (*a1 <= 7u)
  {
    if (v4 == 6)
    {
      v6 = objc_allocWithZone(type metadata accessor for HTUIEvaluationViewController());
      sub_20CDD11B4(v2);
      return;
    }

    LOBYTE(v65[0]) = 0;
    goto LABEL_15;
  }

  if (v4 == 8)
  {
    LOBYTE(v65[0]) = 1;
LABEL_15:
    v12 = objc_allocWithZone(type metadata accessor for NoResultsViewController());
    sub_20CD93E20(v2, v65);
    return;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_20CE13914();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    _sSo14NSUserDefaultsC13HearingTestUIE19overriddenAudiogram6device8metadataSo17HKAudiogramSampleCSgSo8HKDeviceCSg_SDySSypGSgtF_0();
    v17 = v16;

    if (!v17)
    {
      v18 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram];
      if (!v18)
      {
        if (qword_27C811D08 != -1)
        {
          swift_once();
        }

        v56 = sub_20CE12CB4();
        __swift_project_value_buffer(v56, qword_27C817780);
        v22 = sub_20CE12C94();
        v23 = sub_20CE13CC4();
        if (!os_log_type_enabled(v22, v23))
        {
          goto LABEL_28;
        }

        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v65[0] = v25;
        *v24 = 136446210;
        v57 = sub_20CE14414();
        v59 = sub_20CD96DCC(v57, v58, v65);

        *(v24 + 4) = v59;
        v29 = "[%{public}s] Attempting to show the results scene without an audiogram.";
LABEL_27:
        _os_log_impl(&dword_20CD70000, v22, v23, v29, v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x20F314110](v25, -1, -1);
        MEMORY[0x20F314110](v24, -1, -1);
LABEL_28:

        return;
      }

      v17 = v18;
    }

    v19 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore];
    v20 = *(*&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_featureStatus] + 32);

    sub_20CE12DF4();

    v62 = v19;
    if (LOBYTE(v65[0]) && LOBYTE(v65[0]) == 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = sub_20CE14284();
    }

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20CD7C388(&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_articlePresenter], v65);
    v31 = &v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
    v32 = *&v2[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
    v60 = *(v31 + 1);
    v33 = type metadata accessor for HTUIResultsViewController();
    v34 = objc_allocWithZone(v33);
    v35 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
    v36 = sub_20CE124E4();
    (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
    v37 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
    type metadata accessor for HMServiceClientWrapper();
    v38 = swift_allocObject();

    swift_unknownObjectRetain();
    v39 = MEMORY[0x277D84F90];
    v64 = sub_20CDF54B4(MEMORY[0x277D84F90]);
    sub_20CDE3338();
    v41 = v40;
    v42 = *(v40 + 48);
    v43 = *(v40 + 52);
    swift_allocObject();
    v38[2] = sub_20CE12E14();
    v64 = sub_20CDF54B4(v39);
    v44 = *(v41 + 48);
    v45 = *(v41 + 52);
    swift_allocObject();
    v38[3] = sub_20CE12E14();
    v38[4] = 0;
    sub_20CDB17AC();
    *&v34[v37] = v38;
    *&v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
    *&v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
    *&v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
    v46 = &v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
    *v46 = 0;
    v46[1] = 0;
    *&v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
    *&v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = v17;
    v47 = v17;
    sub_20CD86178(v47, &v64);
    v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v64;
    *&v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = v62;
    v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = v61 & 1;
    v48 = &v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
    *v48 = sub_20CDE3330;
    v48[1] = v30;
    sub_20CD7C388(v65, &v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
    v49 = &v34[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
    *v49 = v32;
    v49[1] = v60;
    v50 = qword_27C811DC8;
    swift_unknownObjectRetain();
    v51 = v62;

    if (v50 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    v52 = sub_20CE13914();

    v53 = sub_20CE13914();
    v63.receiver = v34;
    v63.super_class = v33;
    v54 = objc_msgSendSuper2(&v63, sel_initWithTitle_detailText_icon_contentLayout_, v52, v53, 0, 3, 0xE000000000000000);

    v55 = v54;
    sub_20CDF1F0C(0, 0);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDDF2F4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
    v2 = result;

    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    sub_20CD996F0(v3, *(v1 + 24));

    if (v4 > 0x3F)
    {
      sub_20CD99704(v3, v4);
    }

    else
    {
      v5 = [v3 identifier];
      sub_20CD99704(v3, v4);
      if (v5)
      {
        v6 = sub_20CE13954();

        return v6;
      }
    }

    return 0;
  }

  return result;
}

void sub_20CDDF3E4(char *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v44 = *a1;
  sub_20CDDF904(&v44, &v45);
  v3 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_stepsToSkip;
  v4 = v45;
  v42 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram;
  v41 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous;
  v5 = &unk_277DAD000;
  while (1)
  {
    while (1)
    {
      while (v4 > 5u)
      {
        if (v4 - 7 < 3)
        {
          goto LABEL_26;
        }

        if (v4 != 6)
        {
          goto LABEL_55;
        }

        v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v17 = sub_20CE13914();
        v8 = [v16 initWithSuiteName_];

        if (!v8)
        {
          goto LABEL_59;
        }

        v18 = [objc_opt_self() sharedBehavior];
        if (!v18)
        {
          goto LABEL_58;
        }

        v19 = v18;
        v20 = [v18 isAppleInternalInstall];

        if (!v20)
        {
          goto LABEL_25;
        }

        v21 = sub_20CE13914();
        v22 = [v8 hk:v21 keyExists:?];

        if (!v22)
        {
          v5 = &unk_277DAD000;
LABEL_25:

LABEL_26:
          v34 = *(v2 + v3);
          v35 = *(v34 + 16);
          v36 = (v34 + 32);
          while (v35)
          {
            v37 = *v36++;
            --v35;
            if (v37 == v4)
            {
              goto LABEL_29;
            }
          }

LABEL_55:
          *a2 = v4;
          return;
        }

        v23 = sub_20CE13914();
        v5 = &unk_277DAD000;
        v24 = [v8 BOOLForKey_];

        if ((v24 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_44:
        v40 = *(v2 + v42);
        if (v40)
        {
          if ([v40 isAmbiguous])
          {
            v4 = 8;
          }

          else
          {
            v4 = 9;
          }
        }

        else if (*(v2 + v41))
        {
          v4 = 8;
        }

        else
        {
          v4 = 7;
        }
      }

      if (v4 - 2 < 4)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_26;
      }

      v25 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v26 = sub_20CE13914();
      v8 = [v25 initWithSuiteName_];

      if (!v8)
      {
        goto LABEL_61;
      }

      v27 = [objc_opt_self() sharedBehavior];
      if (!v27)
      {
        goto LABEL_60;
      }

      v28 = v27;
      v29 = [v27 isAppleInternalInstall];

      if (!v29)
      {
        goto LABEL_25;
      }

      v30 = sub_20CE13914();
      v31 = [v8 hk:v30 keyExists:?];

      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = sub_20CE13914();
      v33 = [v8 *(v5 + 410)];

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_43:
      v4 = 2;
    }

    v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v7 = sub_20CE13914();
    v8 = [v6 initWithSuiteName_];

    if (!v8)
    {
      break;
    }

    v9 = [objc_opt_self() sharedBehavior];
    if (!v9)
    {
      goto LABEL_57;
    }

    v10 = v9;
    v11 = [v9 isAppleInternalInstall];

    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = sub_20CE13914();
    v13 = [v8 hk:v12 keyExists:?];

    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = sub_20CE13914();
    v15 = [v8 v5 + 3704];

    if ((v15 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v38 = v4;
    if (v4 <= 4u)
    {
      if (v4 <= 1u)
      {
        v4 = 1;
        if (v38)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v4 == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 5;
        }

        if (v4 == 2)
        {
          v4 = 3;
        }

        else
        {
          v4 = v39;
        }
      }
    }

    else if (v4 <= 6u)
    {
      if (v4 != 5)
      {
        goto LABEL_44;
      }

      v4 = 6;
    }

    else if (v4 - 7 >= 2)
    {
      if (v4 != 9)
      {
        goto LABEL_62;
      }

      v4 = 10;
    }

    else
    {
      v4 = 10;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

_BYTE *sub_20CDDF904@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = *result;
  if (v3 > 4)
  {
    if (*result <= 6u)
    {
      if (v3 == 5)
      {
        v7 = 6;
      }

      else
      {
        result = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram);
        if (result)
        {
          v8 = a2;
          result = [result isAmbiguous];
          a2 = v8;
          if (result)
          {
            v7 = 8;
          }

          else
          {
            v7 = 9;
          }
        }

        else if (*(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous))
        {
          v7 = 8;
        }

        else
        {
          v7 = 7;
        }
      }
    }

    else
    {
      v7 = 10;
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    if (v3 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    if (*result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (*result <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  *a2 = v7;
  return result;
}

uint64_t sub_20CDDF9E4()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_defaults);
  v2 = sub_20CE10080();
  if (v2 != 2)
  {
    return v2 & 1;
  }

  v3 = [objc_opt_self() sharedAVSystemController];
  if (!v3)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v5 = sub_20CE12CB4();
    __swift_project_value_buffer(v5, qword_27C817780);
    v6 = sub_20CE12C94();
    v7 = sub_20CE13CC4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v33[0] = v9;
      *v8 = 136446210;
      v10 = sub_20CE14414();
      v12 = sub_20CD96DCC(v10, v11, v33);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Failed to grab shared system controller", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x20F314110](v9, -1, -1);
      MEMORY[0x20F314110](v8, -1, -1);
    }

    goto LABEL_24;
  }

  v4 = v3;
  if ([v3 attributeForKey_])
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (!*(&v32 + 1))
  {
    sub_20CDE32D0(v33, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDE3B1C);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v21 = sub_20CE12CB4();
    __swift_project_value_buffer(v21, qword_27C817780);
    v22 = sub_20CE12C94();
    v23 = sub_20CE13CC4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v33[0] = v25;
      *v24 = 136446210;
      v26 = sub_20CE14414();
      v28 = sub_20CD96DCC(v26, v27, v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_20CD70000, v22, v23, "[%{public}s] Failed to grab call status from shared system controller", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x20F314110](v25, -1, -1);
      MEMORY[0x20F314110](v24, -1, -1);
    }

LABEL_24:
    v2 = 0;
    return v2 & 1;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE12CB4();
  __swift_project_value_buffer(v13, qword_27C817780);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CD4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v33[0] = v17;
    *v16 = 136446466;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, v33);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v30;
    _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] Call is active: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);
  }

  v2 = v30;
  return v2 & 1;
}

uint64_t sub_20CDDFE8C(_BYTE *a1)
{
  v2 = *a1;
  if (v2 == 6)
  {
    v5 = *(*(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
    if (v5 <= 0x3F && (v5 & 1) != 0)
    {
      if (sub_20CDDF9E4())
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 2;
    }
  }

  else if (v2 == 1)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
    if (v4 > 0x3F)
    {
      return 0;
    }

    else if (v4)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  else if (*a1)
  {
    return 4;
  }

  else
  {
    return 0x10004u >> ((*(*(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24) >> 3) & 0x18);
  }
}

uint64_t sub_20CDDFF64(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = *a1;
  *(v2 + 24) = sub_20CE13B84();
  *(v2 + 32) = sub_20CE13B74();
  v4 = sub_20CE13B24();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_20CDE0008, v4, v3);
}

uint64_t sub_20CDE0008()
{
  v11 = v0;
  v1 = *(v0 + 16);
  v10 = *(v0 + 80);
  sub_20CDDF904(&v10, &v9);
  if (v9 == 10 || (v9 ? (v2 = v9 == 9) : (v2 = 1), v2 || (*(*(v0 + 16) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0))
  {
    v3 = *(v0 + 32);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 24);
    *(v0 + 56) = sub_20CE13B74();
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_20CDE0124;
    v8 = *(v0 + 16);

    return sub_20CDE0424();
  }
}

uint64_t sub_20CDE0124()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_20CE13B24();
  if (v2)
  {
    v8 = sub_20CDE035C;
  }

  else
  {
    v8 = sub_20CDE0280;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20CDE0280()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager);
  sub_20CE12A24();
  v4 = v0[5];
  v5 = v0[6];

  return MEMORY[0x2822009F8](sub_20CDE02F8, v4, v5);
}

uint64_t sub_20CDE02F8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CDE035C()
{
  v1 = v0[7];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_20CDE03C0, v2, v3);
}

uint64_t sub_20CDE03C0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_20CDE0424()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_20CE124E4();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_20CE13B84();
  v1[8] = sub_20CE13B74();
  v6 = sub_20CE13B24();
  v1[9] = v6;
  v1[10] = v5;

  return MEMORY[0x2822009F8](sub_20CDE0530, v6, v5);
}

uint64_t sub_20CDE0530()
{
  v18 = v0;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  v0[11] = __swift_project_value_buffer(v1, qword_27C817780);
  v2 = sub_20CE12C94();
  v3 = sub_20CE13CD4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v2, v3, "[%{public}s] Will call HTTonePlayer.enableANCHearingTestMode.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = v0[7];
  v11 = v0[2];
  sub_20CE124D4();
  v12 = *(v11 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
  v13 = *(MEMORY[0x277D12CB0] + 4);
  v16 = (*MEMORY[0x277D12CB0] + MEMORY[0x277D12CB0]);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_20CDE071C;

  return v16(5);
}

uint64_t sub_20CDE071C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_20CDE0844, v5, v4);
}

uint64_t sub_20CDE0844()
{
  v39 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  sub_20CE124D4();
  sub_20CE12494();
  v10 = v9;
  v11 = *(v6 + 8);
  v11(v5, v7);
  *(v8 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) = v1;
  v12 = sub_20CE12C94();
  if (v1)
  {
    v13 = sub_20CE13CD4();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 56);
    v16 = *(v0 + 32);
    if (v14)
    {
      v17 = *(v0 + 24);
      v18 = swift_slowAlloc();
      v37 = v11;
      v38[0] = swift_slowAlloc();
      v19 = v38[0];
      *v18 = 136446466;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, v38);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v10;
      _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] HTTonePlayer.enableANCHearingTestMode succeeded after %fs.", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);

      v37(v15, v16);
    }

    else
    {

      v11(v15, v16);
    }

    v35 = *(v0 + 48);
    v34 = *(v0 + 56);

    v33 = *(v0 + 8);
  }

  else
  {
    v23 = sub_20CE13CB4();
    if (os_log_type_enabled(v12, v23))
    {
      v24 = *(v0 + 24);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136446466;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, v38);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v10;
      _os_log_impl(&dword_20CD70000, v12, v23, "[%{public}s] HTTonePlayer.enableANCHearingTestMode failed after %fs.", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    v32 = *(v0 + 32);
    sub_20CDE327C();
    swift_allocError();
    swift_willThrow();
    v11(v31, v32);

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_20CDE0B80@<X0>(uint64_t a1@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = sub_20CE12274();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore);
  v19[0] = 0;
  v9 = [v8 dateOfBirthComponentsWithError_];
  v10 = v19[0];
  if (v9)
  {
    v11 = v9;
    sub_20CE12244();
    v12 = v10;

    sub_20CE12254();
    result = (*(v4 + 8))(v7, v3);
  }

  else
  {
    v14 = v19[0];
    v15 = sub_20CE12394();

    swift_willThrow();
    v16 = sub_20CE124E4();
    result = (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20CDE0D30()
{
  v1[24] = v0;
  v1[25] = swift_getObjectType();
  v2 = sub_20CE124E4();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  sub_20CDA4968();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  sub_20CDE3904(0, &qword_27C813190, _s13FeatureStatusCMa, MEMORY[0x277D11BF0]);
  v1[32] = v8;
  v9 = *(v8 - 8);
  v1[33] = v9;
  v10 = *(v9 + 64) + 15;
  v1[34] = swift_task_alloc();
  sub_20CE13B84();
  v1[35] = sub_20CE13B74();
  v12 = sub_20CE13B24();
  v1[36] = v12;
  v1[37] = v11;

  return MEMORY[0x2822009F8](sub_20CDE0F18, v12, v11);
}

uint64_t sub_20CDE0F18()
{
  v37 = v0;
  v1 = *(v0[24] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram);
  v0[38] = v1;
  if (!v1)
  {
    v13 = v0[35];

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v14 = sub_20CE12CB4();
    __swift_project_value_buffer(v14, qword_27C817780);
    v15 = sub_20CE12C94();
    v16 = sub_20CE13CB4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[25];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, &v36);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20CD70000, v15, v16, "[%{public}s] Request to save audiogram with no hearing test result audiogram.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = v1;
  if ([v2 isAmbiguous])
  {
    v3 = v0[35];

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v4 = sub_20CE12CB4();
    __swift_project_value_buffer(v4, qword_27C817780);
    v5 = sub_20CE12C94();
    v6 = sub_20CE13CB4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[25];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136446210;
      v10 = sub_20CE14414();
      v12 = sub_20CD96DCC(v10, v11, &v36);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Aborting saving audiogram as it is ambiguous.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x20F314110](v9, -1, -1);
      MEMORY[0x20F314110](v8, -1, -1);
    }

LABEL_13:
    v23 = v0[34];
    v24 = v0[31];
    v25 = v0[28];

    v26 = v0[1];

    return v26(0);
  }

  v35 = v2;
  v28 = v0[34];
  v29 = v0[30];
  v30 = v0[31];
  v31 = v0[29];
  v32 = v0[24];
  v0[21] = *(v32 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_featureStatus);
  _s13FeatureStatusCMa();

  sub_20CE12C74();
  v33 = *(v32 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore);
  v0[2] = v0;
  v0[3] = sub_20CDE13D8;
  swift_continuation_init();
  v0[17] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_20CD7B62C();
  sub_20CE13B34();
  (*(v29 + 32))(boxed_opaque_existential_1, v30, v31);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20CDE1D18;
  v0[13] = &block_descriptor_69;
  [v33 saveObject:v35 withCompletion:?];
  (*(v29 + 8))(boxed_opaque_existential_1, v31);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20CDE13D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  v4 = *(v1 + 296);
  v5 = *(v1 + 288);
  if (v3)
  {
    v6 = sub_20CDE1A28;
  }

  else
  {
    v6 = sub_20CDE1508;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20CDE1508()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  sub_20CE12C64();
  v0[40] = v0[23];
  v5 = [v1 endDate];
  sub_20CE124B4();

  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_20CDE15EC;
  v7 = v0[28];

  return sub_20CDA2768(v7);
}

uint64_t sub_20CDE15EC()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 224);
  v5 = *(*v0 + 216);
  v6 = *(*v0 + 208);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 296);
  v8 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_20CDE178C, v8, v7);
}

uint64_t sub_20CDE178C()
{
  v32 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[24];

  sub_20CD83128(0, &qword_27C813198, 0x277CBEBD0);
  v4 = sub_20CE13CE4();
  [v4 setBool:1 forKey:*MEMORY[0x277CCC150]];

  v6 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v5 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(v5 + 8))(ObjectType, v5);
  v9 = *(v8 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram);
  *(v8 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram) = v1;
  v10 = v1;

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v11 = sub_20CE12CB4();
  __swift_project_value_buffer(v11, qword_27C817780);
  v12 = sub_20CE12C94();
  v13 = sub_20CE13CD4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  v17 = v0[33];
  v16 = v0[34];
  v18 = v0[32];
  if (v14)
  {
    v19 = v0[25];
    v30 = v0[34];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136446210;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v31);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] Saving audiogram succeeded.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x20F314110](v21, -1, -1);
    MEMORY[0x20F314110](v20, -1, -1);

    (*(v17 + 8))(v30, v18);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[28];

  v28 = v0[1];

  return v28(1);
}

uint64_t sub_20CDE1A28()
{
  v34 = v0;
  v1 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v5 = v0[33];

  swift_willThrow();
  (*(v5 + 8))(v3, v4);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v6 = v0[39];
  v7 = sub_20CE12CB4();
  __swift_project_value_buffer(v7, qword_27C817780);
  v8 = v6;
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CB4();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[38];
  v12 = v0[39];
  if (v11)
  {
    v14 = v0[25];
    v32 = v0[38];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33[0] = v16;
    *v15 = 136446466;
    v17 = sub_20CE14414();
    v19 = sub_20CD96DCC(v17, v18, v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v20 = v0[18];
    v21 = *(v0[19] - 8);
    v22 = *(v21 + 64) + 15;
    swift_task_alloc();
    (*(v21 + 16))();
    v23 = sub_20CE13984();
    v25 = v24;

    v26 = sub_20CD96DCC(v23, v25, v33);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Failed to save audiogram from hearing test: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  else
  {
  }

  v27 = v0[34];
  v28 = v0[31];
  v29 = v0[28];

  v30 = v0[1];

  return v30(0);
}

void sub_20CDE1D18(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_20CDA4968();
    sub_20CE13B54();
  }

  else if (a3)
  {
    sub_20CDA4968();
    v5 = a3;
    sub_20CE13B44();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDE1DA8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_20CE13B84();
  v1[4] = sub_20CE13B74();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_20CDE1E58;

  return sub_20CDE0D30();
}

uint64_t sub_20CDE1E58(char a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 48) = a1;

  v6 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDE1F9C, v6, v5);
}

uint64_t sub_20CDE1F9C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

void sub_20CDE2008()
{
  sub_20CD7D364();
  sub_20CD7D5BC();
  v0 = sub_20CE13914();

  v1 = sub_20CE13914();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_20CE13914();

  v18 = sub_20CDE2C0C;
  v19 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20CD95834;
  v17 = &block_descriptor_7;
  v5 = _Block_copy(&aBlock);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:{v5, 0xE000000000000000}];
  _Block_release(v5);

  sub_20CE12354();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_20CE13914();

  v18 = sub_20CDE2C2C;
  v19 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20CD95834;
  v17 = &block_descriptor_51;
  v10 = _Block_copy(&aBlock);

  v11 = [v6 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  [v2 addAction_];
  [v2 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v2 animated:1 completion:0];
  }
}

void sub_20CDE23FC()
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_20CE13BB4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_20CE13B84();
    v7 = v5;
    v8 = sub_20CE13B74();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_20CDDAB58(0, 0, v3, &unk_20CE18B50, v9);
  }
}

void sub_20CDE2574()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20CDDE578(1);
  }
}

uint64_t sub_20CDE25CC()
{
  sub_20CE14384();
  MEMORY[0x20F3138A0](0);
  return sub_20CE143B4();
}

uint64_t sub_20CDE2638()
{
  sub_20CE14384();
  MEMORY[0x20F3138A0](0);
  return sub_20CE143B4();
}

id sub_20CDE2724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HearingTestFlowManager()
{
  result = qword_27C813180;
  if (!qword_27C813180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDE2AA8()
{
  sub_20CDE3904(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ResultsProcessor();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CDE2C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD7D35C;

  return sub_20CDE1DA8(a1);
}

uint64_t sub_20CDE2CE8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CDE2DE0;

  return v7(a1);
}

uint64_t sub_20CDE2DE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CDE2ED8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20CDE2FCC;

  return v6(v2 + 32);
}

uint64_t sub_20CDE2FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20CDE30E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CD7D35C;

  return sub_20CDE2ED8(a1, v5);
}

uint64_t sub_20CDE3198(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CD7C660;

  return sub_20CDE2ED8(a1, v5);
}

unint64_t sub_20CDE327C()
{
  result = qword_27C8131A0;
  if (!qword_27C8131A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8131A0);
  }

  return result;
}

uint64_t sub_20CDE32D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDE3338()
{
  if (!qword_27C8131A8)
  {
    sub_20CDE33A0();
    v0 = sub_20CE12E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8131A8);
    }
  }
}

void sub_20CDE33A0()
{
  if (!qword_27C8131B0)
  {
    v0 = sub_20CE138A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8131B0);
    }
  }
}

void sub_20CDE3400()
{
  if (!qword_27C8131B8)
  {
    sub_20CE124E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8131B8);
    }
  }
}

void sub_20CDE3468()
{
  if (!qword_27C8131C0)
  {
    sub_20CE124E4();
    sub_20CDE34CC();
    v0 = sub_20CE138F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8131C0);
    }
  }
}

unint64_t sub_20CDE34CC()
{
  result = qword_27C8131C8;
  if (!qword_27C8131C8)
  {
    sub_20CE124E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8131C8);
  }

  return result;
}

uint64_t sub_20CDE3524(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CDE3904(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CDE35A4(uint64_t a1, uint64_t a2)
{
  sub_20CDE3400();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDE3608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CDE36A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD7C660;

  return sub_20CDE1DA8(a1);
}

uint64_t sub_20CDE375C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20CD7D35C;

  return sub_20CDDE024(a1, v4, v5, v6, v7, v8, v11, v9);
}

uint64_t sub_20CDE384C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CD7D35C;

  return sub_20CDE2CE8(a1, v5);
}

void sub_20CDE3904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDE3968(uint64_t a1, uint64_t a2)
{
  sub_20CDE3904(0, &qword_27C8124A8, MEMORY[0x277D12D30], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDE39FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDE3A64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CD7D35C;

  return sub_20CDE2ED8(a1, v5);
}

void sub_20CDE3B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20CDE3B6C(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *a2;
  v40 = *a2;

  sub_20CDDF904(&v40, &v41);
  if (v41 == 10 || (v34 = v41, v16 = sub_20CDDFE8C(&v34), v16 == 4))
  {
    v38 = v15;
    sub_20CDDF3E4(&v38, &v39);
    if (v39 == 10 || (v37 = v39, sub_20CDDEAC4(&v37), !v17))
    {
      sub_20CDD2B48(0, 0, 0, 3);
      sub_20CDDE960();
    }

    else
    {
      v18 = v17;
      v33 = [a1 navigationController];
      if (v33)
      {
        sub_20CDD2B48(0, 0, 0, 0);
        v35 = v15;
        sub_20CDDF904(&v35, &v36);
        if (v36 <= 0xAu && ((1 << v36) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
        {
          [v33 pushViewController:v18 animated:{1, v33}];

          v19 = v33;
        }

        else
        {
          v26 = sub_20CE13BB4();
          (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
          sub_20CE13B84();

          v27 = a3;
          v28 = v33;
          v29 = v18;
          v30 = sub_20CE13B74();
          v31 = swift_allocObject();
          v32 = MEMORY[0x277D85700];
          *(v31 + 16) = v30;
          *(v31 + 24) = v32;
          *(v31 + 32) = sub_20CDE3FC8;
          *(v31 + 40) = v14;
          *(v31 + 48) = v27;
          *(v31 + 56) = v15;
          *(v31 + 64) = v28;
          *(v31 + 72) = v29;
          sub_20CDDA798(0, 0, v13, &unk_20CE18BC0, v31);
        }
      }

      else
      {

        sub_20CE141B4();
        __break(1u);
      }
    }
  }

  else
  {
    v20 = v16;
    v21 = sub_20CDA3584(v16);
    v23 = v22;
    v24 = sub_20CDA3760(v20);
    sub_20CDD2B48(v21, v23, v24, v25);
  }
}

void sub_20CDE3FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_20CDD2B48(a1, a2, a3, a4);
}

void sub_20CDE3FD0(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = *a2;
  v53 = *a2;

  sub_20CDDF904(&v53, v52);
  if (v52[0] != 10)
  {
    v13 = sub_20CDDFE8C(v52);
    if (v13 != 4)
    {
      v32 = v13;
      v33 = sub_20CDA3584(v13);
      v35 = v34;
      v36 = sub_20CDA3760(v32);
      v38 = v37;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = Strong;
        sub_20CD7FA6C(v33, v35, v36, v38);
      }

      else
      {
      }

LABEL_17:

      return;
    }
  }

  v53 = v12;
  sub_20CDDF3E4(&v53, v52);
  if (v52[0] == 10 || (sub_20CDDEAC4(v52), !v14))
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = (*(v25 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v27 = *v26;
      v28 = v26[1];
      v29 = v25;
      ObjectType = swift_getObjectType();
      v53 = 3;
      v31 = *(v28 + 48);
      swift_unknownObjectRetain();
      v31(&v53, v29, &off_2823BBD50, ObjectType, v28);

      swift_unknownObjectRelease();
    }

    sub_20CDDE960();
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [a1 navigationController];
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = (*(v18 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v50 = v17;
      v20 = *v19;
      v21 = v19[1];
      v22 = v18;
      v49 = swift_getObjectType();
      v53 = 1;
      v23 = *(v21 + 48);
      swift_unknownObjectRetain();
      v24 = v21;
      v17 = v50;
      v23(&v53, v22, &off_2823BBD50, v49, v24);

      swift_unknownObjectRelease();
    }

    v51 = v12;
    sub_20CDDF904(&v51, &v53);
    if (v53 <= 0xAu && ((1 << v53) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
    {
      [v17 pushViewController:v15 animated:1];
    }

    else
    {
      v41 = sub_20CE13BB4();
      (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
      sub_20CE13B84();

      v42 = a3;
      v43 = v17;
      v44 = v15;
      v45 = sub_20CE13B74();
      v46 = swift_allocObject();
      v47 = MEMORY[0x277D85700];
      *(v46 + 16) = v45;
      *(v46 + 24) = v47;
      *(v46 + 32) = sub_20CDE4E7C;
      *(v46 + 40) = a4;
      *(v46 + 48) = v42;
      *(v46 + 56) = v12;
      *(v46 + 64) = v43;
      *(v46 + 72) = v44;
      sub_20CDDA798(0, 0, v11, &unk_20CE18BD8, v46);
    }
  }

  else
  {

    sub_20CE141B4();
    __break(1u);
  }
}

void sub_20CDE44CC(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = *a2;
  v53 = *a2;

  sub_20CDDF904(&v53, v52);
  if (v52[0] != 10)
  {
    v13 = sub_20CDDFE8C(v52);
    if (v13 != 4)
    {
      v32 = v13;
      v33 = sub_20CDA3584(v13);
      v35 = v34;
      v36 = sub_20CDA3760(v32);
      v38 = v37;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = Strong;
        sub_20CD95C28(v33, v35, v36, v38, 0);
      }

      else
      {
      }

LABEL_17:

      return;
    }
  }

  v53 = v12;
  sub_20CDDF3E4(&v53, v52);
  if (v52[0] == 10 || (sub_20CDDEAC4(v52), !v14))
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = (*(v25 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v27 = *v26;
      v28 = v26[1];
      v29 = v25;
      ObjectType = swift_getObjectType();
      v53 = 3;
      v31 = *(v28 + 48);
      swift_unknownObjectRetain();
      v31(&v53, v29, &protocol witness table for HearingTestStepViewController, ObjectType, v28);

      swift_unknownObjectRelease();
    }

    sub_20CDDE960();
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [a1 navigationController];
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = (*(v18 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v50 = v17;
      v20 = *v19;
      v21 = v19[1];
      v22 = v18;
      v49 = swift_getObjectType();
      v53 = 1;
      v23 = *(v21 + 48);
      swift_unknownObjectRetain();
      v24 = v21;
      v17 = v50;
      v23(&v53, v22, &protocol witness table for HearingTestStepViewController, v49, v24);

      swift_unknownObjectRelease();
    }

    v51 = v12;
    sub_20CDDF904(&v51, &v53);
    if (v53 <= 0xAu && ((1 << v53) & 0x601) != 0 || (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) != 0)
    {
      [v17 pushViewController:v15 animated:1];
    }

    else
    {
      v41 = sub_20CE13BB4();
      (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
      sub_20CE13B84();

      v42 = a3;
      v43 = v17;
      v44 = v15;
      v45 = sub_20CE13B74();
      v46 = swift_allocObject();
      v47 = MEMORY[0x277D85700];
      *(v46 + 16) = v45;
      *(v46 + 24) = v47;
      *(v46 + 32) = sub_20CDE4E74;
      *(v46 + 40) = a4;
      *(v46 + 48) = v42;
      *(v46 + 56) = v12;
      *(v46 + 64) = v43;
      *(v46 + 72) = v44;
      sub_20CDDA798(0, 0, v11, &unk_20CE18BD0, v46);
    }
  }

  else
  {

    sub_20CE141B4();
    __break(1u);
  }
}

void sub_20CDE49CC(void *a1, char *a2, void *a3, void *a4)
{
  sub_20CDE3904(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *a2;
  v37 = *a2;
  v14 = a4;
  sub_20CDDF904(&v37, &v38);
  if (v38 == 10 || (v31 = v38, v15 = sub_20CDDFE8C(&v31), v15 == 4))
  {
    v35 = v13;
    sub_20CDDF3E4(&v35, &v36);
    if (v36 != 10)
    {
      v34 = v36;
      sub_20CDDEAC4(&v34);
      if (v16)
      {
        v17 = v16;
        v30 = [a1 navigationController];
        if (!v30)
        {

          sub_20CE141B4();
          __break(1u);
          return;
        }

        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
        }

        v32 = v13;
        sub_20CDDF904(&v32, &v33);
        if ((v33 > 0xAu || ((1 << v33) & 0x601) == 0) && (*(a3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled) & 1) == 0)
        {
          v23 = sub_20CE13BB4();
          (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
          sub_20CE13B84();

          v24 = a3;
          v25 = v30;
          v26 = v17;
          v27 = sub_20CE13B74();
          v28 = swift_allocObject();
          v29 = MEMORY[0x277D85700];
          *(v28 + 16) = v27;
          *(v28 + 24) = v29;
          *(v28 + 32) = sub_20CDE4E6C;
          *(v28 + 40) = v12;
          *(v28 + 48) = v24;
          *(v28 + 56) = v13;
          *(v28 + 64) = v25;
          *(v28 + 72) = v26;
          sub_20CDDA798(0, 0, v11, &unk_20CE18BC8, v28);

          return;
        }

        [v30 pushViewController:v17 animated:{1, v30}];

        goto LABEL_18;
      }
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
    }

    sub_20CDDE960();
  }

  else
  {
    v20 = v15;
    sub_20CDA3584(v15);
    sub_20CDA3760(v20);
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v30 = [v21 buttonTray];

LABEL_18:
      v22 = v30;

      return;
    }
  }
}

uint64_t objectdestroy_82Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_20CDE4EF4()
{
  result = qword_27C8131E8;
  if (!qword_27C8131E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8131E8);
  }

  return result;
}

void sub_20CDE4F50(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 viewControllers];
  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  v7 = sub_20CE13AB4();

  sub_20CDE5BC0(1, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_20CD98B04();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CE183B0;
  *(inited + 32) = a1;
  v21 = MEMORY[0x277D84F90];
  v15 = (v13 >> 1) - v11;
  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
  }

  else
  {
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      v17 = inited;
      v18 = a1;
      sub_20CDE5B24(v16);
      v19 = swift_unknownObjectRetain();
      sub_20CDE5D1C(v19, v9, v11, v13);
      swift_unknownObjectRelease();
      sub_20CDE52BC(v17, sub_20CDE5970);
      swift_unknownObjectRelease();
      v20 = sub_20CE13AA4();

      [v3 setViewControllers:v20 animated:{a2 & 1, v21}];

      return;
    }
  }

  __break(1u);
}

uint64_t sub_20CDE5148(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20CDE52BC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_20CE141C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_20CE141C4();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_20CDE53B4(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_20CDE53B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_20CE141C4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_20CE14114();
  *v1 = result;
  return result;
}

uint64_t sub_20CDE5454(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C813200, &qword_27C812330, 0x277CCD040);
          sub_20CDE5E88(&qword_27C813208, &qword_27C813200, &qword_27C812330, 0x277CCD040);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA0440(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
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

uint64_t sub_20CDE5608(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C813220, &qword_27C812F10, 0x277CCAAD0);
          sub_20CDE5E88(&qword_27C813228, &qword_27C813220, &qword_27C812F10, 0x277CCAAD0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA0440(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812F10, 0x277CCAAD0);
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

uint64_t sub_20CDE57BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C813210, &qword_27C812220, 0x277D751E0);
          sub_20CDE5E88(&qword_27C813218, &qword_27C813210, &qword_27C812220, 0x277D751E0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA04C0(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
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

uint64_t sub_20CDE5970(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20CE141C4();
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
      result = sub_20CE141C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CDE5E30(0, &qword_27C8131F0, &qword_27C812440, 0x277D75D28);
          sub_20CDE5E88(&qword_27C8131F8, &qword_27C8131F0, &qword_27C812440, 0x277D75D28);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_20CDA0440(v13, i, a3);
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
        sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
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

uint64_t sub_20CDE5B24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_20CE14114();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_20CE141C4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_20CDE5BC0(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = sub_20CE141C4();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = sub_20CE141C4();
    result = sub_20CE141C4();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = sub_20CE141C4();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    sub_20CD83128(0, &qword_27C812440, 0x277D75D28);

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      sub_20CE140F4();
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_20CE141D4();
}

uint64_t sub_20CDE5D1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_20CE141C4();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_20CDE53B4(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_20CD83128(0, &qword_27C812440, 0x277D75D28);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_20CDE5E30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_20CD83128(255, a3, a4);
    v5 = sub_20CE13B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CDE5E88(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDE5E30(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HearingTestFlowMetric.__allocating_init(step:entryPoint:algorithmVersion:action:stepDetail:endReason:pairedHeadphoneProductType:airPodsFirmware:firstTimeActionCompleted:hasCongestionSelected:hasLoudEnvironmentSelected:flowStartTime:previousTestCompleteDate:stepDuration:evaluationDuration:totalDuration:interruptionCount:totalInterruptionDuration:leftEarClassification:rightEarClassification:instantaneousNoiseCount:stationaryNoiseCount:totalNoiseCount:leftInstNoise:rightInstNoise:leftStatNoise:rightStatNoise:fitScoreLeft:fitScoreRight:fitConfidenceScoreLeft:fitConfidenceScoreRight:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45)
{
  v46 = v45;
  v50 = *(v46 + 48);
  v51 = *(v46 + 52);
  v52 = swift_allocObject();
  v72 = *a1;
  v73 = *a4;
  v74 = *a7;
  *(v52 + 40) = 16;
  *(v52 + 48) = 0;
  *(v52 + 56) = 0;
  *(v52 + 64) = 5;
  *(v52 + 72) = 0;
  *(v52 + 80) = 0;
  *(v52 + 104) = 514;
  *(v52 + 106) = 2;
  v53 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  v54 = sub_20CE124E4();
  v55 = *(*(v54 - 8) + 56);
  v55(v52 + v53, 1, 1, v54);
  v56 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  v55(v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, 1, 1, v54);
  v57 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v57 = 0;
  *(v57 + 8) = 1;
  v58 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v58 = 0;
  *(v58 + 8) = 1;
  v59 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration;
  *v59 = 0;
  *(v59 + 8) = 1;
  v60 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration;
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification;
  *v61 = 0;
  *(v61 + 8) = 1;
  v62 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification;
  *v62 = 0;
  *(v62 + 8) = 1;
  *(v52 + 16) = v72;
  *(v52 + 24) = a2;
  *(v52 + 32) = a3;
  *(v52 + 40) = v73;
  *(v52 + 48) = a5;
  *(v52 + 56) = a6;
  *(v52 + 64) = v74;
  *(v52 + 72) = a8;
  *(v52 + 80) = a9;
  *(v52 + 96) = a10;
  *(v52 + 104) = a11;
  *(v52 + 105) = *(&a11 + 1);
  swift_beginAccess();
  sub_20CD83094(a12, v52 + v53);
  swift_endAccess();
  swift_beginAccess();
  sub_20CD83094(a13, v52 + v56);
  swift_endAccess();
  *v57 = a14;
  *(v57 + 8) = a15 & 1;
  *v58 = a16;
  *(v58 + 8) = a17 & 1;
  *v59 = a18;
  *(v59 + 8) = a19 & 1;
  *(v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount) = a20;
  *v60 = a21;
  *(v60 + 8) = a22 & 1;
  *v61 = a23;
  *(v61 + 8) = a24 & 1;
  *v62 = a25;
  *(v62 + 8) = a26 & 1;
  *(v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount) = a27;
  *(v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount) = a28;
  *(v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount) = a29;
  v63 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise;
  *v63 = a30;
  *(v63 + 8) = a31 & 1;
  v64 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise;
  *v64 = a32;
  *(v64 + 8) = a33 & 1;
  v65 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise;
  *v65 = a34;
  *(v65 + 8) = a35 & 1;
  v66 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise;
  *v66 = a36;
  *(v66 + 8) = a37 & 1;
  v67 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft;
  *v67 = a38;
  *(v67 + 8) = a39 & 1;
  v68 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight;
  *v68 = a40;
  *(v68 + 8) = a41 & 1;
  v69 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft;
  *v69 = a42;
  *(v69 + 8) = a43 & 1;
  v70 = v52 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight;
  *v70 = a44;
  *(v70 + 8) = a45 & 1;
  return v52;
}

uint64_t HearingTestFlowMetric.init(step:entryPoint:algorithmVersion:action:stepDetail:endReason:pairedHeadphoneProductType:airPodsFirmware:firstTimeActionCompleted:hasCongestionSelected:hasLoudEnvironmentSelected:flowStartTime:previousTestCompleteDate:stepDuration:evaluationDuration:totalDuration:interruptionCount:totalInterruptionDuration:leftEarClassification:rightEarClassification:instantaneousNoiseCount:stationaryNoiseCount:totalNoiseCount:leftInstNoise:rightInstNoise:leftStatNoise:rightStatNoise:fitScoreLeft:fitScoreRight:fitConfidenceScoreLeft:fitConfidenceScoreRight:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45)
{
  v65 = *a1;
  v66 = *a4;
  v67 = *a7;
  *(v45 + 40) = 16;
  *(v45 + 48) = 0;
  *(v45 + 56) = 0;
  *(v45 + 64) = 5;
  *(v45 + 72) = 0;
  *(v45 + 80) = 0;
  *(v45 + 104) = 514;
  *(v45 + 106) = 2;
  v46 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  v47 = sub_20CE124E4();
  v48 = *(*(v47 - 8) + 56);
  v48(v45 + v46, 1, 1, v47);
  v49 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  v48(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, 1, 1, v47);
  v50 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration;
  *v52 = 0;
  *(v52 + 8) = 1;
  v53 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration;
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification;
  *v54 = 0;
  *(v54 + 8) = 1;
  v55 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification;
  *v55 = 0;
  *(v55 + 8) = 1;
  *(v45 + 16) = v65;
  *(v45 + 24) = a2;
  *(v45 + 32) = a3;
  *(v45 + 40) = v66;
  *(v45 + 48) = a5;
  *(v45 + 56) = a6;
  *(v45 + 64) = v67;
  *(v45 + 72) = a8;
  *(v45 + 80) = a9;
  *(v45 + 96) = a10;
  *(v45 + 104) = a11;
  *(v45 + 105) = *(&a11 + 1);
  swift_beginAccess();
  sub_20CD83094(a12, v45 + v46);
  swift_endAccess();
  swift_beginAccess();
  sub_20CD83094(a13, v45 + v49);
  swift_endAccess();
  *v50 = a14;
  *(v50 + 8) = a15 & 1;
  *v51 = a16;
  *(v51 + 8) = a17 & 1;
  *v52 = a18;
  *(v52 + 8) = a19 & 1;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount) = a20;
  *v53 = a21;
  *(v53 + 8) = a22 & 1;
  *v54 = a23;
  *(v54 + 8) = a24 & 1;
  *v55 = a25;
  *(v55 + 8) = a26 & 1;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount) = a27;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount) = a28;
  *(v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount) = a29;
  v56 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise;
  *v56 = a30;
  *(v56 + 8) = a31 & 1;
  v57 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise;
  *v57 = a32;
  *(v57 + 8) = a33 & 1;
  v58 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise;
  *v58 = a34;
  *(v58 + 8) = a35 & 1;
  v59 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise;
  *v59 = a36;
  *(v59 + 8) = a37 & 1;
  v60 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft;
  *v60 = a38;
  *(v60 + 8) = a39 & 1;
  v61 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight;
  *v61 = a40;
  *(v61 + 8) = a41 & 1;
  v62 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft;
  *v62 = a42;
  *(v62 + 8) = a43 & 1;
  v63 = v45 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight;
  *v63 = a44;
  *(v63 + 8) = a45 & 1;
  return v45;
}

id sub_20CDE6908()
{
  v1 = sub_20CE125B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE12274();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE9304(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_20CE124E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  swift_beginAccess();
  sub_20CD7DC78(v0 + v18, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20CDE9294(v12, &qword_281111770, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v19 = [objc_opt_self() currentCalendar];
    sub_20CE12574();

    sub_20CDE9304(0, &unk_27C812250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v20 = sub_20CE125A4();
    v21 = *(v20 - 8);
    v35 = v1;
    v22 = v21;
    v23 = *(v21 + 72);
    v24 = *(v22 + 80);
    v36 = v6;
    v25 = v2;
    v26 = (v24 + 32) & ~v24;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20CE16370;
    (*(v22 + 104))(v27 + v26, *MEMORY[0x277CC9980], v20);
    sub_20CDE8A00(v27);
    swift_setDeallocating();
    (*(v22 + 8))(v27 + v26, v20);
    swift_deallocClassInstance();
    v28 = v37;
    sub_20CE12564();

    (*(v25 + 8))(v5, v35);
    v29 = sub_20CE12264();
    LOBYTE(v27) = v30;
    (*(v38 + 8))(v28, v36);
    if ((v27 & 1) == 0)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(v14 + 8))(v17, v13);
      return v33;
    }

    (*(v14 + 8))(v17, v13);
  }

  v31 = *MEMORY[0x277CCB7A0];

  return v31;
}

id sub_20CDE6E14()
{
  v1 = sub_20CE125B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE12274();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE9304(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_20CE124E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v19;
  v20 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  swift_beginAccess();
  sub_20CD7DC78(v0 + v20, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20CDE9294(v12, &qword_281111770, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v14 + 32))(v41, v12, v13);
    v21 = [objc_opt_self() currentCalendar];
    sub_20CE12574();

    sub_20CDE9304(0, &unk_27C812250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v22 = sub_20CE125A4();
    v23 = *(v22 - 8);
    v37 = v1;
    v24 = v23;
    v25 = *(v23 + 72);
    v26 = *(v24 + 80);
    v38 = v6;
    v27 = v2;
    v28 = (v26 + 32) & ~v26;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20CE16370;
    (*(v24 + 104))(v29 + v28, *MEMORY[0x277CC9940], v22);
    sub_20CDE8A00(v29);
    swift_setDeallocating();
    (*(v24 + 8))(v29 + v28, v22);
    swift_deallocClassInstance();
    sub_20CE124C4();
    v30 = v39;
    sub_20CE12554();

    v31 = *(v14 + 8);
    v31(v18, v13);
    (*(v27 + 8))(v5, v37);
    v32 = sub_20CE12224();
    LOBYTE(v29) = v33;
    (*(v40 + 8))(v30, v38);
    if ((v29 & 1) == 0)
    {
      v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v31(v41, v13);
      return v36;
    }

    v31(v41, v13);
  }

  v34 = *MEMORY[0x277CCB7A0];

  return v34;
}

unint64_t sub_20CDE7360()
{
  v1 = v0;
  v2 = sub_20CDF57C4(MEMORY[0x277D84F90]);
  v3 = sub_20CDE6908();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v3, 0x72617453776F6C66, 0xED0000656D695474, isUniquelyReferenced_nonNull_native);
  v5 = sub_20CDE6E14();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v5, 0xD00000000000001BLL, 0x800000020CE1AB20, v6);
  v7 = v2;
  v8 = *(v1 + 105);
  v9 = MEMORY[0x277CCB798];
  if (v8 == 2)
  {
    v10 = *MEMORY[0x277CCB798];
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v11, 0xD000000000000015, 0x800000020CE1AB40, v12);
  v13 = *(v1 + 106);
  if (v13 == 2)
  {
    v14 = *v9;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v15, 0xD00000000000001ALL, 0x800000020CE1AB60, v16);
  v17 = MEMORY[0x277CCB7A0];
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration + 8))
  {
    v18 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v19, 0x7275446C61746F74, 0xED00006E6F697461, v20);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration + 8))
  {
    v21 = *v17;
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v22, 0xD000000000000012, 0x800000020CE1AB90, v23);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration + 8))
  {
    v24 = *v17;
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v25, 0x6172754470657473, 0xEC0000006E6F6974, v26);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration + 8))
  {
    v27 = *v17;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v28, 0xD000000000000019, 0x800000020CE1ABB0, v29);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification + 8))
  {
    v30 = *v17;
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v31, 0xD000000000000015, 0x800000020CE1AC00, v32);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification + 8))
  {
    v33 = *v17;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v34 = v33;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v34, 0xD000000000000016, 0x800000020CE1AC20, v35);
  sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
  v36 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount);
  v37 = sub_20CE13E34();
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v37, 0xD000000000000017, 0x800000020CE1AC40, v38);
  v39 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount);
  v40 = sub_20CE13E34();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v40, 0xD000000000000017, 0x800000020CE1AC60, v41);
  v42 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount);
  v43 = sub_20CE13E34();
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v43, 0xD000000000000018, 0x800000020CE1AC80, v44);
  v45 = 0;
  if ((*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft + 8) & 1) == 0)
  {
    v46 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft);
    v45 = sub_20CE13E24();
  }

  sub_20CE07F50(v45, 0xD000000000000010, 0x800000020CE1ACA0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight + 8))
  {
    v47 = 0;
  }

  else
  {
    v48 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight);
    v47 = sub_20CE13E24();
  }

  sub_20CE07F50(v47, 0xD000000000000011, 0x800000020CE1ACC0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft + 8))
  {
    v49 = 0;
  }

  else
  {
    v50 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft);
    v49 = sub_20CE13E24();
  }

  sub_20CE07F50(v49, 0xD000000000000016, 0x800000020CE1ACE0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight + 8))
  {
    v51 = 0;
  }

  else
  {
    v52 = *(v1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight);
    v51 = sub_20CE13E24();
  }

  sub_20CE07F50(v51, 0xD000000000000017, 0x800000020CE1AD00);
  return v7;
}

uint64_t sub_20CDE7A24(void *a1)
{
  v2 = v1;
  v4 = sub_20CDF57C4(MEMORY[0x277D84F90]);
  v64 = *(v1 + 16);
  HearingTestFlowAnalyticsStep.rawValue.getter();
  v5 = sub_20CE13914();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v5, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v7 = v4;
  v8 = *(v2 + 24);
  if (v8 > 2)
  {
    if (v8 == 3 || v8 == 4 || v8 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (v8 <= 1 || v8 == 2)
  {
LABEL_11:
    v9 = sub_20CE13914();

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v9, 0x696F507972746E65, 0xEA0000000000746ELL, v10);
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v11, 0xD000000000000010, 0x800000020CE1AA50, v12);
    if (*(v2 + 40) == 16)
    {
      v13 = *MEMORY[0x277CCB800];
      sub_20CE13954();
    }

    else
    {
      v61 = *(v2 + 40);
      HearingTestFlowActionType.rawValue.getter();
    }

    v14 = sub_20CE13914();

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v14, 0x6E6F69746361, 0xE600000000000000, v15);
    if (*(v2 + 56))
    {
      v16 = *(v2 + 48);
      v17 = *(v2 + 56);
    }

    else
    {
      v18 = *MEMORY[0x277CCB800];
      sub_20CE13954();
    }

    v19 = sub_20CE13914();

    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v19, 0x6174654470657473, 0xEA00000000006C69, v20);
    v21 = *(v2 + 64);
    if (v21 > 4)
    {
      v22 = *MEMORY[0x277CCB800];
      sub_20CE13954();
    }

    v23 = sub_20CE13914();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v23, 0x6F73616552646E65, 0xE90000000000006ELL, v24);
    if (*(v2 + 80))
    {
      v25 = *(v2 + 72);
      v26 = *(v2 + 80);
    }

    else
    {
      v27 = *MEMORY[0x277CCB800];
      sub_20CE13954();
    }

    v28 = sub_20CE13914();

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v28, 0xD00000000000001ALL, 0x800000020CE1AA00, v29);
    if (*(v2 + 96))
    {
      v30 = *(v2 + 88);
      v31 = *(v2 + 96);
    }

    else
    {
      v32 = *MEMORY[0x277CCB800];
      sub_20CE13954();
    }

    v33 = sub_20CE13914();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v33, 0x4673646F50726961, 0xEF657261776D7269, v34);
    v35 = *(v2 + 104);
    if (v35 == 2)
    {
      v36 = *MEMORY[0x277CCB798];
    }

    else
    {
      v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    v37 = v36;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v37, 0xD000000000000018, 0x800000020CE1AA30, v38);
    sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
    v39 = *(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount);
    v40 = sub_20CE13E34();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE0940C(v40, 0xD000000000000016, 0x800000020CE1AAA0, v41);
    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise + 8) & 1) == 0)
    {
      v42 = *(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise);
      v43 = sub_20CE13E24();
      v44 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v43, 0x73696F4E74736E69, 0xED00007466654C65, v44);
    }

    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise + 8) & 1) == 0)
    {
      v45 = *(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise);
      v46 = sub_20CE13E24();
      v47 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v46, 0x73696F4E74736E69, 0xEE00746867695265, v47);
    }

    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise + 8) & 1) == 0)
    {
      v48 = *(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise);
      v49 = sub_20CE13E24();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v49, 0x73696F4E74617473, 0xED00007466654C65, v50);
    }

    if ((*(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise + 8) & 1) == 0)
    {
      v51 = *(v2 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise);
      v52 = sub_20CE13E24();
      v53 = swift_isUniquelyReferenced_nonNull_native();
      sub_20CE0940C(v52, 0x73696F4E74617473, 0xEE00746867695265, v53);
    }

    if (a1)
    {
      v54 = a1;
      sub_20CDE8E04(v54);
      if (v55)
      {
        v56 = sub_20CE13914();

        v57 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v7;
        sub_20CE0940C(v56, 0xD000000000000015, 0x800000020CE1AB00, v57);

        return v62;
      }
    }

    v58 = *MEMORY[0x277CCB800];
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v7;
    sub_20CE0940C(v58, 0xD000000000000015, 0x800000020CE1AB00, v59);
    return v62;
  }

  v63 = *(v2 + 24);
  result = sub_20CE142B4();
  __break(1u);
  return result;
}

uint64_t sub_20CDE8290()
{
  sub_20CE140E4();
  v0 = MEMORY[0x20F312EF0](0xD000000000000018, 0x800000020CE1F580);
  v1 = sub_20CDE8290(v0);
  MEMORY[0x20F312EF0](v1);

  MEMORY[0x20F312EF0](0x6C79615061686920, 0xED0000203A64616FLL);
  sub_20CDE7360();
  sub_20CD83128(0, &qword_27C813590, 0x277D82BB8);
  v2 = sub_20CE13894();
  v4 = v3;

  MEMORY[0x20F312EF0](v2, v4);

  MEMORY[0x20F312EF0](0x6F6C796150756420, 0xEC000000203A6461);
  sub_20CDE7A24(0);
  v5 = sub_20CE13894();
  v7 = v6;

  MEMORY[0x20F312EF0](v5, v7);

  return 0;
}

uint64_t sub_20CDE8434(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_20CE14054();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_20CDE8DB0(v3, *(a1 + 36), 0, a1);

  return v5;
}

void *HearingTestFlowMetric.deinit()
{
  v1 = v0[7];

  v2 = v0[10];

  v3 = v0[12];

  v4 = MEMORY[0x277CC9578];
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime, &qword_281111770, MEMORY[0x277CC9578]);
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, &qword_281111770, v4);
  return v0;
}

uint64_t HearingTestFlowMetric.__deallocating_deinit()
{
  v1 = v0[7];

  v2 = v0[10];

  v3 = v0[12];

  v4 = MEMORY[0x277CC9578];
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime, &qword_281111770, MEMORY[0x277CC9578]);
  sub_20CDE9294(v0 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, &qword_281111770, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HearingTestFlowMetric()
{
  result = qword_27C813298;
  if (!qword_27C813298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDE867C()
{
  sub_20CDE9304(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of HearingTestFlowMetric.__allocating_init(step:entryPoint:algorithmVersion:action:stepDetail:endReason:pairedHeadphoneProductType:airPodsFirmware:firstTimeActionCompleted:hasCongestionSelected:hasLoudEnvironmentSelected:flowStartTime:previousTestCompleteDate:stepDuration:evaluationDuration:totalDuration:interruptionCount:totalInterruptionDuration:leftEarClassification:rightEarClassification:instantaneousNoiseCount:stationaryNoiseCount:totalNoiseCount:leftInstNoise:rightInstNoise:leftStatNoise:rightStatNoise:fitScoreLeft:fitScoreRight:fitConfidenceScoreLeft:fitConfidenceScoreRight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LOBYTE(a36) = a36 & 1;
  LOBYTE(a34) = a34 & 1;
  LOBYTE(a32) = a32 & 1;
  LOBYTE(a27) = a27 & 1;
  LOBYTE(a23) = a23 & 1;
  LOBYTE(a20) = a20 & 1;
  LOBYTE(a18) = a18 & 1;
  LOBYTE(a16) = a16 & 1;
  LOBYTE(a25) = a25 & 1;
  v38 = *(v37 + 712);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_20CDE8A00(uint64_t a1)
{
  v2 = sub_20CE125A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_20CDE8CEC();
    v10 = sub_20CE140A4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_20CDE8D6C(&qword_27C8132B0);
      v18 = sub_20CE138B4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_20CDE8D6C(&qword_27C8132B8);
          v25 = sub_20CE13904();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_20CDE8CEC()
{
  if (!qword_27C8132A8)
  {
    sub_20CE125A4();
    sub_20CDE8D6C(&qword_27C8132B0);
    v0 = sub_20CE140B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8132A8);
    }
  }
}

uint64_t sub_20CDE8D6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20CE125A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CDE8DB0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20CDE8E04(void *a1)
{
  v2 = sub_20CE12C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDE9304(0, &qword_27C8132C0, MEMORY[0x277D11290], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_20CE12C24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = [a1 healthDataSource];
  if (!v19 || (v20 = [v19 featureStatusProviderForIdentifier_], swift_unknownObjectRelease(), !v20) || (v33[0] = v20, sub_20CDE93CC(), sub_20CDE9368(), (swift_dynamicCast() & 1) == 0))
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_7;
  }

  if (!*(&v31 + 1))
  {
LABEL_7:
    sub_20CDE9294(&v30, &qword_27C8132C8, sub_20CDE9368);
    return 0;
  }

  v28 = v3;
  v29 = v12;
  sub_20CD75924(&v30, v33);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_20CE12C44();
  v22 = v29;
  (*(v29 + 56))(v10, 0, 1, v11);
  (*(v22 + 32))(v18, v10, v11);
  (*(v22 + 16))(v16, v18, v11);
  if ((*(v22 + 88))(v16, v11) == *MEMORY[0x277D11288])
  {
    (*(v22 + 96))(v16, v11);
    v23 = v28;
    (*(v28 + 32))(v6, v16, v2);
    v24 = sub_20CE12C04();
    v25 = sub_20CDE8434(v24);

    (*(v23 + 8))(v6, v2);
    (*(v22 + 8))(v18, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return v25;
  }

  v26 = *(v22 + 8);
  v26(v18, v11);
  v26(v16, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return 0;
}

uint64_t sub_20CDE9294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CDE9304(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CDE9304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20CDE9368()
{
  result = qword_27C8132D0;
  if (!qword_27C8132D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C8132D0);
  }

  return result;
}

unint64_t sub_20CDE93CC()
{
  result = qword_27C8132D8;
  if (!qword_27C8132D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C8132D8);
  }

  return result;
}

uint64_t sub_20CDE9430()
{
  v0 = sub_20CE12924();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_20CE140E4();

  v15 = 0x203C20656E6F54;
  v16 = 0xE700000000000000;
  sub_20CE12704();
  v6 = sub_20CDE9670(v5);
  MEMORY[0x20F312EF0](v6);

  MEMORY[0x20F312EF0](0x207C207A48, 0xE500000000000000);
  sub_20CE126B4();
  v8 = sub_20CDE9670(v7);
  MEMORY[0x20F312EF0](v8);

  MEMORY[0x20F312EF0](0x207C204264, 0xE500000000000000);
  sub_20CE126C4();
  v10 = sub_20CDE9670(v9);
  MEMORY[0x20F312EF0](v10);

  v11 = 0xE400000000000000;
  MEMORY[0x20F312EF0](545005683, 0xE400000000000000);
  sub_20CE126E4();
  v12 = (*(v1 + 88))(v4, v0);
  if (v12 == *MEMORY[0x277D12CD8])
  {
    v13 = 1952867692;
  }

  else if (v12 == *MEMORY[0x277D12CE0])
  {
    v11 = 0xE500000000000000;
    v13 = 0x7468676972;
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    v11 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x20F312EF0](v13, v11);

  MEMORY[0x20F312EF0](15904, 0xE200000000000000);
  return v15;
}

uint64_t sub_20CDE9670(double a1)
{
  v25 = sub_20CE12434();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20CE12544();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD0FC0();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - v20;
  v27 = a1;
  sub_20CE12534();
  sub_20CDA1354();
  sub_20CE123A4();
  sub_20CE12424();
  MEMORY[0x20F311900](v5, v11);
  (*(v2 + 8))(v5, v25);
  v22 = *(v12 + 8);
  v22(v16, v11);
  sub_20CE12524();
  MEMORY[0x20F3118C0](v9, v11);
  (*(v6 + 8))(v9, v26);
  v22(v19, v11);
  sub_20CDD1028();
  sub_20CE13864();
  v22(v21, v11);
  return v28;
}

uint64_t sub_20CDE997C(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  if (v3 > 2)
  {
    if ((v3 - 5) < 2)
    {
      return result;
    }

    if (v3 == 3)
    {
LABEL_7:
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    if (v3 == 1)
    {
      goto LABEL_7;
    }
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t _s13HearingTestUI29ClassificationDescriptionViewV5ModelV8headline9audiogram14recommendationSSSo17HKAudiogramSampleC_AA14RecommendationOtFZ_0(void *a1, char *a2)
{
  v3 = *a2;
  v4 = [a1 hearingLevelSummary];
  v5 = [v4 leftEarMetrics];

  v6 = [v5 averageSensitivity];
  v7 = HKHearingLevelClassificationForSensitivity();

  v8 = [a1 hearingLevelSummary];
  v9 = [v8 rightEarMetrics];

  v10 = [v9 averageSensitivity];
  v11 = HKHearingLevelClassificationForSensitivity();

  if (!v7 || !v11)
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v12 = sub_20CE12CB4();
    __swift_project_value_buffer(v12, qword_27C817768);
    v13 = sub_20CE12C94();
    v14 = sub_20CE13CB4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, &v38);
    v17 = "[%{public}s] Left and/or right HKHearingLevelClassification unavailable.";
LABEL_13:
    _os_log_impl(&dword_20CD70000, v13, v14, v17, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x20F314110](v16, -1, -1);
    v18 = v15;
LABEL_14:
    MEMORY[0x20F314110](v18, -1, -1);
LABEL_15:

    return 0;
  }

  if (v7 != v11)
  {
    if (v7 == 1)
    {
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_20CE12354();
      v22 = v21;
      if (v11 > 2)
      {
LABEL_20:
        switch(v11)
        {
          case 3:
            goto LABEL_50;
          case 4:
            if (qword_27C811DC8 == -1)
            {
LABEL_53:
              sub_20CE12354();
              sub_20CDDA6DC();
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_20CE16370;
              *(v25 + 56) = MEMORY[0x277D837D0];
              *(v25 + 64) = sub_20CDCB52C();
              *(v25 + 32) = v20;
              *(v25 + 40) = v22;
              v26 = sub_20CE13924();

              return v26;
            }

LABEL_96:
            swift_once();
            goto LABEL_53;
          case 5:
LABEL_50:
            if (qword_27C811DC8 == -1)
            {
              goto LABEL_53;
            }

            goto LABEL_96;
        }

LABEL_62:

LABEL_63:
        if (qword_27C811D00 != -1)
        {
          swift_once();
        }

        v27 = sub_20CE12CB4();
        __swift_project_value_buffer(v27, qword_27C817768);
        v13 = sub_20CE12C94();
        v14 = sub_20CE13CB4();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_15;
        }

        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v38 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, &v38);
        v17 = "[%{public}s] Unhandled HKHearingLevelClassification case.";
        goto LABEL_13;
      }

LABEL_28:
      if (v11 == 1)
      {

        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_93;
      }

      if (v11 == 2)
      {
        if (qword_27C811DC8 == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_96;
      }

      goto LABEL_62;
    }

    if (v11 == 1)
    {
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      v20 = sub_20CE12354();
      v22 = v23;
      v11 = v7;
      if (v7 > 2)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

    if (v7 > 3)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_74;
        }

        if (v11 == 4)
        {
          goto LABEL_88;
        }

        if (v11 == 3)
        {
LABEL_83:
          if (qword_27C811DC8 == -1)
          {
            return sub_20CE12354();
          }

          goto LABEL_93;
        }

        if (v11 != 2)
        {
          goto LABEL_74;
        }

LABEL_86:
        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_93;
      }

      if (v11 == 5 || v11 == 3)
      {
        goto LABEL_88;
      }

      if (v11 != 2)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 != 3)
        {
          goto LABEL_74;
        }

        if (v11 != 5)
        {
          if (v11 != 4)
          {
            if (v11 == 2)
            {
              goto LABEL_86;
            }

LABEL_74:
            if (qword_27C811D00 != -1)
            {
              swift_once();
            }

            v28 = sub_20CE12CB4();
            __swift_project_value_buffer(v28, qword_27C817768);
            v13 = sub_20CE12C94();
            v29 = sub_20CE13CB4();
            if (!os_log_type_enabled(v13, v29))
            {
              goto LABEL_15;
            }

            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v38 = v31;
            *v30 = 136446722;
            *(v30 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, &v38);
            *(v30 + 12) = 2080;
            type metadata accessor for HKHearingLevelClassification(0);
            v32 = sub_20CE13974();
            v34 = sub_20CD96DCC(v32, v33, &v38);

            *(v30 + 14) = v34;
            *(v30 + 22) = 2080;
            v35 = sub_20CE13974();
            v37 = sub_20CD96DCC(v35, v36, &v38);

            *(v30 + 24) = v37;
            _os_log_impl(&dword_20CD70000, v13, v29, "[%{public}s] Unexpeceted combination of HKHearingLevelClassifications: %s / %s.", v30, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x20F314110](v31, -1, -1);
            v18 = v30;
            goto LABEL_14;
          }

LABEL_88:
          if (qword_27C811DC8 != -1)
          {
            goto LABEL_93;
          }

          return sub_20CE12354();
        }

        goto LABEL_83;
      }

      if (v11 == 5)
      {
        goto LABEL_86;
      }

      if (v11 != 4)
      {
        if (v11 != 3)
        {
          goto LABEL_74;
        }

        goto LABEL_86;
      }
    }

    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_93;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      goto LABEL_43;
    }

    if (v7 != 4)
    {
      if (v7 == 5)
      {
LABEL_43:
        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_93;
      }

      goto LABEL_63;
    }

    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

LABEL_93:
    swift_once();
    return sub_20CE12354();
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_93;
    }

    goto LABEL_63;
  }

  LOBYTE(v38) = v3;
  result = sub_20CDE997C(&v38);
  if (v24)
  {
    return result;
  }

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  return sub_20CE12354();
}

id sub_20CDEA770(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CE13914();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_20CD8CF38(a1, v15);
  v6 = v16;
  if (v16)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_20CE14274();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v12 action:a2];

  swift_unknownObjectRelease();
  return v13;
}

void sub_20CDEA9B4(char a1, void *a2)
{
  if (a1)
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v2 = sub_20CE12CB4();
    __swift_project_value_buffer(v2, qword_27C817798);
    oslog = sub_20CE12C94();
    v3 = sub_20CE13CD4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CD70000, oslog, v3, "[HearingTestFlowAnalytics] Successfully submitted analytics", v4, 2u);
LABEL_13:
      MEMORY[0x20F314110](v4, -1, -1);
    }
  }

  else
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v6 = sub_20CE12CB4();
    __swift_project_value_buffer(v6, qword_27C817798);
    v7 = a2;
    oslog = sub_20CE12C94();
    v8 = sub_20CE13CB4();

    if (os_log_type_enabled(oslog, v8))
    {
      v4 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v4 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v4 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_20CD70000, oslog, v8, "[HearingTestFlowAnalytics] Failed to submit analytics error: %@", v4, 0xCu);
      sub_20CDEBF68(v9, &qword_27C812CA0, sub_20CDEBEC8);
      MEMORY[0x20F314110](v9, -1, -1);
      goto LABEL_13;
    }
  }
}

void sub_20CDEABD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_20CDEAC48()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_20CDEACB4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_20CDEACEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_20CDEAD84(uint64_t a1)
{
  type metadata accessor for HearingTestFlowEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(v1 + 24);
  v7[4] = sub_20CDEA9B4;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20CDEABD0;
  v7[3] = &block_descriptor_10;
  v5 = _Block_copy(v7);

  [v4 submitEvent:v3 completion:v5];
  _Block_release(v5);
}

void sub_20CDEAE7C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = *a2;
  LOBYTE(aBlock[0]) = *a1;
  v30 = v7;
  v8 = sub_20CDEBCA0(aBlock, &v30, a3, a4 & 1);
  if (v8)
  {
    v9 = v8;
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v10 = sub_20CE12CB4();
    __swift_project_value_buffer(v10, qword_27C817798);
    v11 = sub_20CE12C94();
    v12 = sub_20CE13CD4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      v15 = sub_20CE14414();
      v17 = sub_20CD96DCC(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] submitting analytics for interrupt metrics", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x20F314110](v14, -1, -1);
      MEMORY[0x20F314110](v13, -1, -1);
    }

    type metadata accessor for HearingTestFlowEvent();
    v18 = swift_allocObject();
    *(v18 + 16) = v9;
    v19 = v5[3];
    aBlock[4] = sub_20CDEA9B4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDEABD0;
    aBlock[3] = &block_descriptor_7;
    v20 = _Block_copy(aBlock);

    [v19 submitEvent:v18 completion:v20];
    _Block_release(v20);
  }

  else
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v21 = sub_20CE12CB4();
    __swift_project_value_buffer(v21, qword_27C817798);
    oslog = sub_20CE12C94();
    v22 = sub_20CE13CB4();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      v25 = sub_20CE14414();
      v27 = sub_20CD96DCC(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20CD70000, oslog, v22, "[%{public}s] No metric could be created for interrupt analytics. Omitting submission", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x20F314110](v24, -1, -1);
      MEMORY[0x20F314110](v23, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20CDEB230(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = *a1;
  LOBYTE(aBlock[0]) = *a1;
  v8 = sub_20CDEB8B4(aBlock, a2, a3);
  if (v8)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    LOBYTE(aBlock[0]) = v7;
    v11 = (*(a3 + 24))(v9, aBlock, ObjectType, a3);
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v12 = sub_20CE12CB4();
    __swift_project_value_buffer(v12, qword_27C817798);
    v13 = sub_20CE12C94();
    v14 = sub_20CE13CD4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v17 = sub_20CE14414();
      v19 = sub_20CD96DCC(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_20CD70000, v13, v14, "[%{public}s] submitting analytics for flow metrics", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x20F314110](v16, -1, -1);
      MEMORY[0x20F314110](v15, -1, -1);
    }

    type metadata accessor for HearingTestFlowEvent();
    v20 = swift_allocObject();
    *(v20 + 16) = v11;
    v21 = v4[3];
    aBlock[4] = sub_20CDEA9B4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDEABD0;
    aBlock[3] = &block_descriptor_4;
    v22 = _Block_copy(aBlock);

    [v21 submitEvent:v20 completion:v22];
    _Block_release(v22);
  }

  else
  {
    if (qword_27C811D10 != -1)
    {
      swift_once();
    }

    v23 = sub_20CE12CB4();
    __swift_project_value_buffer(v23, qword_27C817798);
    oslog = sub_20CE12C94();
    v24 = sub_20CE13CB4();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CD70000, oslog, v24, "[%{public}s] No metric could be created for flow analytics. Omitting submission", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_20CDEB628(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  if (qword_27C811D10 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817798);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446210;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Submitting analytics for Fit&Noise Check.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  swift_beginAccess();
  v13 = v2[4];
  LOBYTE(v19[0]) = 5;
  v20 = v4;

  v14 = sub_20CD8F120(v19, &v20);

  type metadata accessor for HearingTestFlowEvent();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v2[3];
  v19[4] = sub_20CDEA9B4;
  v19[5] = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_20CDEABD0;
  v19[3] = &block_descriptor_8;
  v17 = _Block_copy(v19);

  [v16 submitEvent:v15 completion:v17];
  _Block_release(v17);
}

uint64_t sub_20CDEB8B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_20CDEBF14(0, &qword_281111770, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  v36 = sub_20CE124E4();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v36);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v15;
  v16 = *a1;
  BYTE1(v38[0]) = *a1;
  if (HearingTestFlowActionType.rawValue.getter() == 0x46206C65636E6143 && v17 == 0xEB00000000776F6CLL)
  {
  }

  else
  {
    v18 = sub_20CE14284();

    if ((v18 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  v19 = *(v4 + 32);
  BYTE1(v38[0]) = 1;

  sub_20CD8EDF0(v38 + 1);

LABEL_6:
  swift_beginAccess();
  v20 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  v22 = *(a3 + 16);

  v22(v38, ObjectType, a3);
  v37 = v16;
  v23 = sub_20CD8F120(v38, &v37);

  (*(a3 + 8))(ObjectType, a3);
  v24 = v36;
  if ((*(v11 + 48))(v10, 1, v36) == 1)
  {
    sub_20CDEBF68(v10, &qword_281111770, MEMORY[0x277CC9578]);
  }

  else
  {
    v25 = v35;
    (*(v11 + 32))(v35, v10, v24);
    LOBYTE(v38[0]) = v16;
    if (HearingTestFlowActionType.rawValue.getter() == 0x78654E2065766F4DLL && v26 == 0xE900000000000074)
    {
    }

    else
    {
      v27 = sub_20CE14284();

      if ((v27 & 1) == 0)
      {
        (*(v11 + 8))(v25, v24);
        return v23;
      }
    }

    v28 = v34;
    sub_20CE124D4();
    sub_20CE12494();
    v30 = v29;
    v31 = *(v11 + 8);
    v31(v28, v24);
    v31(v25, v24);
    v32 = v23 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
    *v32 = v30;
    *(v32 + 8) = 0;
  }

  return v23;
}

uint64_t sub_20CDEBCA0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = *a1;
  v9 = *a2;
  if (v9 == 5 || v9 == 2)
  {
    swift_beginAccess();
    v11 = *(v4 + 32);
    v25[0] = 0;

    sub_20CD8EDF0(v25);
  }

  swift_beginAccess();
  v12 = *(v5 + 32);
  v24 = 14;
  v23 = v8;

  v13 = sub_20CD8F120(&v24, &v23);

  if (v9 > 3)
  {
    if (v9 > 5)
    {
      v19 = 0x800000020CE1E140;
      v18 = 0xD000000000000015;
      if (v9 == 6)
      {
        v18 = 0xD000000000000013;
      }

      else
      {
        v19 = 0x800000020CE1E100;
      }
    }

    else
    {
      v18 = 0xD000000000000012;
      v19 = 0x800000020CE1E180;
      if (v9 != 4)
      {
        v18 = 0xD000000000000018;
        v19 = 0x800000020CE1E160;
      }
    }
  }

  else
  {
    v14 = 0x6361654420707041;
    v15 = 0x800000020CE1E1C0;
    v16 = 0xD000000000000017;
    if (v9 != 2)
    {
      v16 = 0xD000000000000012;
      v15 = 0x800000020CE1E1A0;
    }

    if (v9)
    {
      v17 = 0xEF64657461766974;
    }

    else
    {
      v14 = 0xD000000000000010;
      v17 = 0x800000020CE1E1E0;
    }

    if (v9 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v16;
    }

    if (v9 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }
  }

  v20 = *(v13 + 56);
  *(v13 + 48) = v18;
  *(v13 + 56) = v19;

  v21 = v13 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  return v13;
}