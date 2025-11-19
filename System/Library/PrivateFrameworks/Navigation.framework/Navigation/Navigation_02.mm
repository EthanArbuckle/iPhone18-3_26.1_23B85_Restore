uint64_t sub_1D3152728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D3152F1C;

  return sub_1D3150CF8(a1, v4, v5, v7);
}

uint64_t get_enum_tag_for_layout_string_So35MNFamiliarRouteAuthorizationCheckerC10NavigationE0C6StatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D3152814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3152868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D31528C4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D31528F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3152964(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3152F1C;

  return sub_1D3123588(a1, v5);
}

uint64_t sub_1D3152A1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D3152F1C;

  return sub_1D314EDC0();
}

uint64_t sub_1D3152AD0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D3152B9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D3152F1C;

  return sub_1D3150F4C(v2, v3);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D3152C90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3152F1C;

  return sub_1D3151B40(a1, v5);
}

uint64_t sub_1D3152D48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3125778;

  return sub_1D3151B40(a1, v5);
}

uint64_t sub_1D3152E00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3152F1C;

  return sub_1D3151938(a1, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

char *MNOfflineCoordinator.init(navigationSessionState:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = 0;
  *&v1[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState] = 0;
  v3 = &v1[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
  *v3 = 0;
  v3[4] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MNOfflineCoordinator();
  v4 = objc_msgSendSuper2(&v8, sel_init);
  [v4 setNavigationSessionState_];

  type metadata accessor for MNOfflineCoordinatorState.Online();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *&v4[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
  *&v4[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v5;

  swift_unknownObjectWeakAssign();

  return v4;
}

uint64_t sub_1D31531CC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D315322C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D3148B24;
}

void sub_1D31532C4()
{
  v1 = v0;
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760758);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Taking control over offline service state.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  v6 = [objc_opt_self() shared];
  [v6 setDelegate_];
  [v6 startServiceIfEnabled];
}

id MNOfflineCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MNOfflineCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MNOfflineCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MNOfflineCoordinator.navigationSessionState.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void sub_1D31535AC(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 navigationSessionState];
  v5 = [v4 navigationState];

  if (v5 == 5)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v6 = sub_1D3276F80();
    __swift_project_value_buffer(v6, qword_1EC760758);
    v7 = sub_1D3276F60();
    v8 = sub_1D32773B0();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_46;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D311E000, v7, v8, "NavigationSession is currently rerouting. Saving state as pending and will attempt later.", v9, 2u);
    v10 = v9;
    goto LABEL_45;
  }

  v11 = *&v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState];
  if (!v11)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v12 = [v11 currentRouteInfo];
  if (!v12 || (v13 = v12, v14 = [v12 route], v13, !v14))
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v29 = sub_1D3276F80();
    __swift_project_value_buffer(v29, qword_1EC760758);
    v2 = v2;
    v7 = sub_1D3276F60();
    v30 = sub_1D3277390();
    if (!os_log_type_enabled(v7, v30))
    {

LABEL_46:
      v50 = &v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
      *v50 = a1;
      v50[4] = 0;
      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v51 = v32;
    *v31 = 136315138;
    v33 = [v2 navigationSessionState];
    v34 = [v33 navigationState];

    if (v34 <= 3)
    {
      if (v34 <= 1)
      {
        if (!v34)
        {
          v35 = @"NOT_NAVIGATING";
          v40 = @"NOT_NAVIGATING";
          goto LABEL_43;
        }

        if (v34 == 1)
        {
          v35 = @"PROCEEDING_TO_ROUTE";
          v37 = @"PROCEEDING_TO_ROUTE";
          goto LABEL_43;
        }

LABEL_42:
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v34];
        goto LABEL_43;
      }

      if (v34 == 2)
      {
        v35 = @"ON_ROUTE";
        v41 = @"ON_ROUTE";
      }

      else
      {
        v35 = @"OFF_ROUTE_OFF_ROAD";
        v38 = @"OFF_ROUTE_OFF_ROAD";
      }
    }

    else
    {
      if (v34 > 5)
      {
        switch(v34)
        {
          case 6:
            v35 = @"END_OF_ROUTE";
            v42 = @"END_OF_ROUTE";
            goto LABEL_43;
          case 7:
            v35 = @"END_OF_SEGMENT";
            v44 = @"END_OF_SEGMENT";
            goto LABEL_43;
          case 8:
            v35 = @"OUTSIDE_NAVIGABLE_AREA";
            v36 = @"OUTSIDE_NAVIGABLE_AREA";
            goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (v34 == 4)
      {
        v35 = @"OFF_ROUTE_ON_ROAD";
        v43 = @"OFF_ROUTE_ON_ROAD";
      }

      else
      {
        v35 = @"RECALCULATING";
        v39 = @"RECALCULATING";
      }
    }

LABEL_43:
    v45 = v35;

    if (v45)
    {
      v46 = sub_1D32770C0();
      v48 = v47;

      v49 = sub_1D312BA30(v46, v48, &v51);

      *(v31 + 4) = v49;
      _os_log_impl(&dword_1D311E000, v7, v30, "We don't currently have a route for some reason. Navigation state: %s. Saving state as pending and will attempt later.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1D38B6000](v32, -1, -1);
      v10 = v31;
LABEL_45:
      MEMORY[0x1D38B6000](v10, -1, -1);
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  v15 = &v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
  if ((v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState + 4] & 1) == 0)
  {
    v16 = *v15;
    *v15 = 0;
    v15[4] = 1;
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v17 = sub_1D3276F80();
    __swift_project_value_buffer(v17, qword_1EC760758);
    v18 = sub_1D3276F60();
    v19 = sub_1D32773B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 136315138;
      v22 = GEOOfflineStateAsString();
      v23 = sub_1D32770C0();
      v25 = v24;

      v26 = sub_1D312BA30(v23, v25, &v51);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D311E000, v18, v19, "We got a new state suggestion while we already have a pending state. Dropping pending state: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38B6000](v21, -1, -1);
      MEMORY[0x1D38B6000](v20, -1, -1);
    }
  }

  v27 = *&v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
  if (!v27)
  {
    goto LABEL_48;
  }

  v28 = *(*v27 + 88);

  v28(a1);
}

void sub_1D3153D08(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_47;
  }

  v1 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v4)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v5 = [v4 currentRouteInfo];
  if (!v5)
  {
LABEL_48:

    goto LABEL_49;
  }

  v6 = v5;
  v61 = [v5 route];

  if (!v61)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      goto LABEL_15;
    }

    if (a1 == 2)
    {
      if (qword_1EC75BE58 != -1)
      {
        swift_once();
      }

      v7 = sub_1D3276F80();
      __swift_project_value_buffer(v7, qword_1EC760758);
      v8 = sub_1D3276F60();
      v9 = sub_1D3277390();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D311E000, v8, v9, "Got recommendation to switch to offline, but we're already offline. Switching anyway.", v10, 2u);
        MEMORY[0x1D38B6000](v10, -1, -1);
      }

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        type metadata accessor for MNOfflineCoordinatorState.Offline();
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState;
        v15 = *&v12[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
        *&v12[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v13;
        swift_retain_n();

        swift_unknownObjectWeakAssign();

        v16 = *&v12[v14];
        if (v16)
        {
LABEL_43:
          v59 = *(*v16 + 96);

          v59(v60);

          return;
        }

        __break(1u);
LABEL_15:
        if ([v61 isOfflineRoute])
        {
          if (qword_1EC75BE58 != -1)
          {
            swift_once();
          }

          v17 = sub_1D3276F80();
          __swift_project_value_buffer(v17, qword_1EC760758);
          v18 = sub_1D3276F60();
          v19 = sub_1D32773B0();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_1D311E000, v18, v19, "Attempting to upgrade route to online.", v20, 2u);
            MEMORY[0x1D38B6000](v20, -1, -1);
          }

          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            swift_beginAccess();
            v23 = swift_unknownObjectWeakLoadStrong();

            if (v23)
            {
              v24 = swift_unknownObjectWeakLoadStrong();
              if (v24)
              {
                v25 = v24;
                [v23 offlineCoordinatorDidDetectOnline_];

                swift_unknownObjectRelease();
                return;
              }

              goto LABEL_54;
            }

LABEL_33:

            return;
          }

          goto LABEL_51;
        }

        if (qword_1EC75BE58 != -1)
        {
          swift_once();
        }

        v45 = sub_1D3276F80();
        __swift_project_value_buffer(v45, qword_1EC760758);
        v46 = sub_1D3276F60();
        v47 = sub_1D32773B0();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v62[0] = v49;
          *v48 = 136315138;
          v50 = GEOOfflineModeAsString();
          v51 = sub_1D32770C0();
          v53 = v52;

          v54 = sub_1D312BA30(v51, v53, v62);

          *(v48 + 4) = v54;
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x1D38B6000](v49, -1, -1);
          MEMORY[0x1D38B6000](v48, -1, -1);
        }

        v55 = swift_unknownObjectWeakLoadStrong();
        if (!v55)
        {
          goto LABEL_52;
        }

        v12 = v55;
        type metadata accessor for MNOfflineCoordinatorState.Online();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v57 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState;
        v58 = *&v12[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
        *&v12[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v56;
        swift_retain_n();

        swift_unknownObjectWeakAssign();

        v16 = *&v12[v57];
        if (!v16)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          return;
        }

        goto LABEL_43;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v37 = sub_1D3276F80();
    __swift_project_value_buffer(v37, qword_1EC760758);
    v27 = sub_1D3276F60();
    v38 = sub_1D32773A0();
    if (os_log_type_enabled(v27, v38))
    {
      v29 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62[0] = v39;
      *v29 = 136315138;
      v40 = GEOOfflineModeAsString();
      v41 = sub_1D32770C0();
      v43 = v42;

      v44 = sub_1D312BA30(v41, v43, v62);

      *(v29 + 4) = v44;
      __swift_destroy_boxed_opaque_existential_0(v39);
      v36 = v39;
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v26 = sub_1D3276F80();
    __swift_project_value_buffer(v26, qword_1EC760758);
    v27 = sub_1D3276F60();
    v28 = sub_1D3277390();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62[0] = v30;
      *v29 = 136315138;
      v31 = GEOOfflineModeAsString();
      v32 = sub_1D32770C0();
      v34 = v33;

      v35 = sub_1D312BA30(v32, v34, v62);

      *(v29 + 4) = v35;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v36 = v30;
LABEL_32:
      MEMORY[0x1D38B6000](v36, -1, -1);
      MEMORY[0x1D38B6000](v29, -1, -1);

      goto LABEL_33;
    }
  }
}

void sub_1D31544F8(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_37;
  }

  v1 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v4)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v5 = [v4 currentRouteInfo];
  if (!v5)
  {
LABEL_38:

    goto LABEL_39;
  }

  v6 = v5;
  v39 = [v5 route];

  if (!v39)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!a1)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v16 = sub_1D3276F80();
    __swift_project_value_buffer(v16, qword_1EC760758);
    v17 = sub_1D3276F60();
    v18 = sub_1D3277390();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40[0] = v20;
      *v19 = 136315138;
      v21 = GEOOfflineModeAsString();
      v22 = sub_1D32770C0();
      v24 = v23;

      v25 = sub_1D312BA30(v22, v24, v40);

      *(v19 + 4) = v25;
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38B6000](v20, -1, -1);
      MEMORY[0x1D38B6000](v19, -1, -1);

      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (a1 == 1)
  {
    if ([v39 isOfflineRoute])
    {
      if (qword_1EC75BE58 != -1)
      {
        swift_once();
      }

      v7 = sub_1D3276F80();
      __swift_project_value_buffer(v7, qword_1EC760758);
      v8 = sub_1D3276F60();
      v9 = sub_1D3277390();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D311E000, v8, v9, "We are already online but somehow have an offline route. Attempting to upgrade route.", v10, 2u);
        MEMORY[0x1D38B6000](v10, -1, -1);
      }

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();

        if (!v13)
        {
          goto LABEL_26;
        }

        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          [v13 offlineCoordinatorDidDetectOnline_];

          swift_unknownObjectRelease();
          return;
        }

LABEL_41:
        __break(1u);
        return;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v36 = sub_1D3276F80();
    __swift_project_value_buffer(v36, qword_1EC760758);
    v17 = sub_1D3276F60();
    v37 = sub_1D32773B0();
    if (os_log_type_enabled(v17, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D311E000, v17, v37, "We are already online and have an online route. Ignoring update.", v38, 2u);
      MEMORY[0x1D38B6000](v38, -1, -1);
    }

LABEL_31:

    goto LABEL_33;
  }

  if (a1 != 2)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v26 = sub_1D3276F80();
    __swift_project_value_buffer(v26, qword_1EC760758);
    v27 = sub_1D3276F60();
    v28 = sub_1D32773A0();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_33;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40[0] = v30;
    *v29 = 136315138;
    v31 = GEOOfflineModeAsString();
    v32 = sub_1D32770C0();
    v34 = v33;

    v35 = sub_1D312BA30(v32, v34, v40);

    *(v29 + 4) = v35;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1D38B6000](v30, -1, -1);
    MEMORY[0x1D38B6000](v29, -1, -1);

LABEL_26:
    return;
  }

  sub_1D3154C94();
LABEL_33:
}

void sub_1D3154A6C(unsigned __int8 a1)
{
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760758);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315394;
    v7 = GEOOfflineModeAsString();
    v8 = sub_1D32770C0();
    v10 = v9;

    v11 = sub_1D312BA30(v8, v10, &v18);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2080;
    v12 = GEOOfflineDeviceAsString();
    v13 = sub_1D32770C0();
    v15 = v14;

    v16 = sub_1D312BA30(v13, v15, &v18);

    *(v5 + 14) = v16;
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v6, -1, -1);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  v17 = [objc_opt_self() shared];
  [v17 delegatePrefersMode:a1 device:1];
}

void sub_1D3154C94()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_25;
  }

  v0 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = [v2 currentRouteInfo];
  if (!v3)
  {
LABEL_26:

    goto LABEL_27;
  }

  v4 = v3;
  v42 = [v3 route];

  if (!v42)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  GEOConfigGetDouble();
  v6 = v5;
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v7;
  v9 = *(v7 + OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState);
  if (!v9)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = [v9 location];
  v11 = [v10 routeMatch];

  if (v11)
  {
    v12 = [v11 routeCoordinate];

    v8 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v42 coarseBoundsForRange_];
  GEOMapRectMakeWithMapBox(&v43);
  GEOCoordinateRegionForMapRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() shared];
  v22 = [v21 canUseOfflineForCoordinateRegion_];

  if (v22 == 2)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      type metadata accessor for MNOfflineCoordinatorState.Offline();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState;
      v27 = *&v24[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
      *&v24[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v25;
      swift_retain_n();

      swift_unknownObjectWeakAssign();

      v28 = *&v24[v26];
      if (v28)
      {
        v29 = *(*v28 + 96);

        v29(v30);

        return;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v31 = sub_1D3276F80();
  __swift_project_value_buffer(v31, qword_1EC760758);
  v32 = sub_1D3276F60();
  v33 = sub_1D32773B0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v43 = v35;
    *v34 = 136315138;
    v36 = GEOStringFromCoordinateRegionBounds();
    if (!v36)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v37 = v36;
    v38 = sub_1D32770C0();
    v40 = v39;

    v41 = sub_1D312BA30(v38, v40, &v43);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1D311E000, v32, v33, "Not switching to offline state because the route's bounds is outside of the downloaded region. Bounds: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1D38B6000](v35, -1, -1);
    MEMORY[0x1D38B6000](v34, -1, -1);
  }
}

void sub_1D3155224(uint64_t a1)
{
  if (a1 == 16)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v2 = sub_1D3276F80();
    __swift_project_value_buffer(v2, qword_1EC760758);
    v3 = v1;
    v4 = sub_1D3276F60();
    v5 = sub_1D32773B0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v36 = v7;
      *v6 = 136315394;
      v8 = *&v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
      if (v8)
      {
        v9 = (*(*v8 + 104))();
        v11 = v10;
      }

      else
      {
        v11 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
      }

      v12 = sub_1D312BA30(v9, v11, &v36);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      v13 = [objc_opt_self() shared];
      [v13 state];

      v14 = GEOOfflineStateAsString();
      v15 = sub_1D32770C0();
      v17 = v16;

      v18 = sub_1D312BA30(v15, v17, &v36);

      *(v6 + 14) = v18;
      swift_arrayDestroy();
      MEMORY[0x1D38B6000](v7, -1, -1);
      MEMORY[0x1D38B6000](v6, -1, -1);
    }

    type metadata accessor for MNOfflineCoordinatorState.Online();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState;
    v21 = *&v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
    *&v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState] = v19;
    swift_retain_n();

    swift_unknownObjectWeakAssign();

    v22 = *&v3[v20];
    if (v22)
    {
      v23 = *(*v22 + 96);

      v23(v24);

      v25 = &v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
      if ((v3[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState + 4] & 1) == 0)
      {
        v26 = *v25;
        v27 = sub_1D3276F60();
        v28 = sub_1D32773B0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v36 = v30;
          *v29 = 136315138;
          v31 = GEOOfflineStateAsString();
          v32 = sub_1D32770C0();
          v34 = v33;

          v35 = sub_1D312BA30(v32, v34, &v36);

          *(v29 + 4) = v35;
          _os_log_impl(&dword_1D311E000, v27, v28, "We had a pending state: %s, but we're dropping it because we just got an online route.", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          MEMORY[0x1D38B6000](v30, -1, -1);
          MEMORY[0x1D38B6000](v29, -1, -1);
        }

        *v25 = 0;
        v25[4] = 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D3155614(uint64_t a1)
{
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760758);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = GEOOfflineStateAsString();
    v8 = sub_1D32770C0();
    v10 = v9;

    v11 = sub_1D312BA30(v8, v10, &v12);

    *(v5 + 4) = v11;
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D38B6000](v6, -1, -1);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  sub_1D31535AC(a1);
}

double GEOMapRectMakeWithMapBox(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  return result;
}

uint64_t sub_1D3155928@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC75BE48 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  v3 = __swift_project_value_buffer(v2, qword_1EC760728);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D31559D0(uint64_t a1)
{
  v2[128] = v1;
  v2[127] = a1;
  v3 = sub_1D3276D30();
  v2[129] = v3;
  v4 = *(v3 - 8);
  v2[130] = v4;
  v5 = *(v4 + 64) + 15;
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3155AA0, 0, 0);
}

uint64_t sub_1D3155AA0()
{
  v94 = v1;
  v3 = *(v1 + 1024);
  v4 = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v5 = *(v4 + v3);
  if (v5 >> 62)
  {
    goto LABEL_59;
  }

  v6 = &qword_1EC75C000;
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_17:
  while (2)
  {
    v17 = [*(v1 + 1016) rawLocation];
    if (!v17)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      return MEMORY[0x1EEE6DEB8](v17, v18, v19, v20);
    }

    v39 = v17;
    v40 = *(v1 + 1024);
    v41 = _s14RecentLocationCMa();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v0 = sub_1D3144660(v39, 0, 0);
    *(v1 + 1064) = v0;
    v44 = sub_1D314725C(v0);
    v45 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    *(v1 + 1072) = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v46 = *(v0 + v45);
    *(v0 + v45) = v44;

    v5 = *(v4 + v3);
    if (v5 >> 62)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v79 = *(v4 + v3);
      }

      v47 = sub_1D3277660();
    }

    else
    {
      v47 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = &OBJC_IVAR___MNMapMatcher__locationHistoryDistance;
    if (v47)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_80;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v48 = *(v5 + 32);

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_82;
    }

    while (1)
    {
      swift_beginAccess();
      v51 = *(v4 + v3);
      if (!(v51 >> 62))
      {
        goto LABEL_26;
      }

      if (v51 < 0)
      {
        v80 = *(v4 + v3);
      }

      if (sub_1D3277660() < 0)
      {
        __break(1u);
      }

      else
      {
LABEL_26:
        v52 = *(v1 + 1024);

        sub_1D315E34C(0, 0, v0);
        swift_endAccess();
        v53 = OBJC_IVAR___MNMapMatcher__routeMatchedLocationHistory;
        swift_beginAccess();
        if (!(*(v52 + v53) >> 62))
        {
          goto LABEL_27;
        }
      }

      if ((sub_1D3277660() & 0x8000000000000000) == 0)
      {
LABEL_27:
        sub_1D315E34C(0, 0, v0);
        swift_endAccess();

        if (v6[1] == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_70;
      }

      __break(1u);
LABEL_70:
      swift_once();
LABEL_28:
      v54 = *(v1 + 1024);
      v55 = sub_1D3276F80();
      *(v1 + 1080) = __swift_project_value_buffer(v55, qword_1EC760888);
      LOBYTE(v40) = sub_1D3277370();
      v56 = v54;
      v5 = sub_1D3276F60();
      if (os_log_type_enabled(v5, v40))
      {
        v6 = swift_slowAlloc();
        *v6 = 134218240;
        v57 = *(v4 + v3);
        if (!(v57 >> 62))
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
          v59 = *(v1 + 1024);
          *(v6 + 4) = v58;

          *(v6 + 6) = 2048;
          *(v6 + 14) = *&v59[*v2];
          _os_log_impl(&dword_1D311E000, v5, v40, "Location history count %ld, length %fm", v6, 0x16u);
          MEMORY[0x1D38B6000](v6, -1, -1);
          goto LABEL_33;
        }

LABEL_82:
        v58 = sub_1D3277660();
        goto LABEL_31;
      }

LABEL_33:
      v60 = *(v1 + 1024);
      sub_1D31801A4();
      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      *(v61 + 24) = v0;
      v62 = swift_allocObject();
      *(v1 + 1088) = v62;
      *(v62 + 16) = &unk_1D328BC50;
      *(v62 + 24) = v61;

      v63 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C708, &qword_1D328BC68);
      swift_asyncLet_begin();
      v0 = *(v4 + v3);
      if (v0 >> 62)
      {
        if (v0 < 0)
        {
          v81 = *(v4 + v3);
        }

        v5 = sub_1D3277660();
        if (!v5)
        {
LABEL_74:
          v72 = 1;
LABEL_75:
          *(v1 + 1144) = v72;
          *(v1 + 1096) = v5;
          v82 = *(v1 + 1024);
          sub_1D315D460(1);
          *(v1 + 1145) = v83 & 1;
          v19 = sub_1D3156624;
          v17 = (v1 + 16);
          v18 = v1 + 968;
          v20 = v1 + 656;

          return MEMORY[0x1EEE6DEB8](v17, v18, v19, v20);
        }
      }

      else
      {
        v5 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_74;
        }
      }

      v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      v4 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road;
      while (!__OFSUB__(v5--, 1))
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x1D38B45D0](v5, v0);
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          if (v5 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v65 = *(v0 + 32 + 8 * v5);
        }

        v66 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v65 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
        {
          v66 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        v67 = *(v65 + *v66);
        if (v67)
        {
          v68 = *(v67 + 72);
          v69 = v68;
          if (v68)
          {
            v70 = v69;
            v71 = [v69 road];

            if (v71)
            {

LABEL_54:

              v72 = 0;
LABEL_55:

              goto LABEL_75;
            }
          }
        }

        v2 = *(v65 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
        v71 = v2;

        if (v2)
        {
          goto LABEL_54;
        }

        if (!v5)
        {
          v72 = 1;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v6 = &qword_1EC75C000;
      if (!sub_1D3277660())
      {
        goto LABEL_17;
      }

LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v5 + 32);

        goto LABEL_6;
      }

      __break(1u);
LABEL_80:

      v48 = MEMORY[0x1D38B45D0](0, v5);

LABEL_24:
      v49 = *(v1 + 1024);
      Distance = GEOCoordinateGetDistance(*(v0 + 16), *(v0 + 24), *(v48 + 16), *(v48 + 24));

      *(v49 + *v2) = Distance + *(v49 + *v2);
    }

    v7 = MEMORY[0x1D38B45D0](0, v5);

LABEL_6:
    if (v6[1] != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 1016);
    v9 = sub_1D3276F80();
    __swift_project_value_buffer(v9, qword_1EC760888);
    swift_retain_n();
    v10 = v8;
    v11 = sub_1D3276F60();
    v12 = sub_1D3277390();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 1016);
    if (!v13)
    {

      goto LABEL_15;
    }

    v89 = v12;
    log = v11;
    v91 = v4;
    v92 = v3;
    v15 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v93 = v88;
    *v15 = 136316162;
    v16 = [v14 rawLocation];

    v87 = v7;
    if (!v16)
    {
      goto LABEL_84;
    }

    v21 = *(v1 + 1056);
    v22 = *(v1 + 1040);
    v23 = *(v1 + 1032);
    v24 = *(v1 + 1016);
    v86 = *(v1 + 1048);
    [v16 _navigation_geoCoordinate3D];

    *(v1 + 952) = 0;
    *(v1 + 960) = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v25 = sub_1D312BA30(*(v1 + 952), *(v1 + 960), &v93);

    *(v15 + 4) = v25;
    *(v15 + 12) = 2080;
    v26 = [v24 timestamp];
    sub_1D3276D00();

    v84 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp;
    v85 = *(v22 + 16);
    v85(v86, v87 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v23);
    sub_1D315E588();
    LOBYTE(v26) = sub_1D3277090();
    v27 = *(v22 + 8);
    v27(v86, v23);
    v27(v21, v23);
    if (v26)
    {
      v28 = 0x7265646C6FLL;
    }

    else
    {
      v28 = 0x726577656ELL;
    }

    v29 = sub_1D312BA30(v28, 0xE500000000000000, &v93);

    *(v15 + 14) = v29;
    *(v15 + 22) = 2048;
    v85(v21, v87 + v84, v23);
    v30 = [v24 timestamp];
    sub_1D3276D00();

    sub_1D3276CC0();
    v32 = v31;
    v27(v86, v23);
    v27(v21, v23);
    *(v15 + 24) = v32;
    *(v15 + 32) = 2048;
    *(v15 + 34) = *(v87 + 16);
    *(v15 + 42) = 2048;
    v7 = v87;
    *(v15 + 44) = *(v87 + 24);
    _os_log_impl(&dword_1D311E000, log, v89, "%s Got CL location %s than the last CL location by %fs %f, %f.", v15, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v88, -1, -1);
    MEMORY[0x1D38B6000](v15, -1, -1);

    v4 = v91;
    v3 = v92;
LABEL_15:
    v33 = *(v1 + 1056);
    v34 = *(v1 + 1048);
    v35 = *(v1 + 1040);
    v36 = *(v1 + 1032);
    v37 = [*(v1 + 1016) timestamp];
    sub_1D3276D00();

    (*(v35 + 16))(v34, v7 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v36);
    LOBYTE(v37) = sub_1D3276CE0();
    v38 = *(v35 + 8);
    v38(v34, v36);
    v38(v33, v36);
    if (v37)
    {

      v6 = &qword_1EC75C000;
      continue;
    }

    break;
  }

  v73 = *(v1 + 1024);
  v74 = sub_1D3157A8C(2, v7, *(v1 + 1016));

  v75 = *(v1 + 1056);
  v76 = *(v1 + 1048);

  v77 = *(v1 + 8);

  return v77(v74);
}

uint64_t sub_1D3156640()
{
  v65 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 968);
  v4 = *(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
  *(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road) = v3;
  v5 = v3;

  if (v1)
  {
    v6 = *(v0 + 1080);
    v7 = *(v0 + 1064);

    v8 = sub_1D3276F60();
    v9 = sub_1D3277370();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 1064);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v64 = v12;
      *v11 = 136315138;
      v13 = v10[2];
      v14 = v10[3];
      v15 = v10[4];
      *(v0 + 936) = 0;
      *(v0 + 944) = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v16 = sub_1D312BA30(*(v0 + 936), *(v0 + 944), &v64);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D311E000, v8, v9, "%s - No Recent Locations in location history have a road to start a shape match from.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1D38B6000](v12, -1, -1);
      MEMORY[0x1D38B6000](v11, -1, -1);
    }

    v17 = *(v0 + 1080);
    v18 = *(v0 + 1064);
    if (*(v0 + 1145) == 1)
    {
      v19 = *(v0 + 1064);

      v20 = sub_1D3276F60();
      v21 = sub_1D3277370();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 1064);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v64 = v24;
        *v23 = 136315138;
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        *(v0 + 920) = 0;
        *(v0 + 928) = 0xE000000000000000;
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
        sub_1D3277310();
        v28 = sub_1D312BA30(*(v0 + 920), *(v0 + 928), &v64);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1D311E000, v20, v21, "%s - OffRoute, OnRoad. Backwards movement along route.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1D38B6000](v24, -1, -1);
        MEMORY[0x1D38B6000](v23, -1, -1);
      }

      v29 = (v0 + 1072);
      v30 = *(v0 + 1064);
      v31 = *(v0 + 1024);
      if (*(v30 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
      {
        v29 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      *(v0 + 1120) = sub_1D3157A8C(*(v30 + *v29) != 0, v30, *(v0 + 1016));
      v32 = sub_1D3157508;
      v33 = v0 + 16;
      v34 = v0 + 968;
      v35 = v0 + 848;
    }

    else
    {
      v41 = *(v0 + 1024);
      v42 = sub_1D315DA80(*(v0 + 1064));

      v43 = sub_1D3276F60();
      v44 = sub_1D3277370();

      v45 = os_log_type_enabled(v43, v44);
      if (v42)
      {
        if (v45)
        {
          v46 = *(v0 + 1064);
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v64 = v48;
          *v47 = 136315138;
          v49 = v46[2];
          v50 = v46[3];
          v51 = v46[4];
          *(v0 + 904) = 0;
          *(v0 + 912) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v52 = sub_1D312BA30(*(v0 + 904), *(v0 + 912), &v64);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_1D311E000, v43, v44, "%s - OnRoute. Inside route radius (speed based).", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x1D38B6000](v48, -1, -1);
          MEMORY[0x1D38B6000](v47, -1, -1);
        }

        v53 = *(v0 + 1024);
        *(v0 + 1128) = sub_1D3157A8C(2, *(v0 + 1064), *(v0 + 1016));
        v32 = sub_1D31575AC;
        v33 = v0 + 16;
        v34 = v0 + 968;
        v35 = v0 + 784;
      }

      else
      {
        if (v45)
        {
          v54 = *(v0 + 1064);
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v64 = v56;
          *v55 = 136315138;
          v57 = v54[2];
          v58 = v54[3];
          v59 = v54[4];
          *(v0 + 888) = 0;
          *(v0 + 896) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v60 = sub_1D312BA30(*(v0 + 888), *(v0 + 896), &v64);

          *(v55 + 4) = v60;
          _os_log_impl(&dword_1D311E000, v43, v44, "%s - OffRoute, OnRoad. Outside route radius (speed based).", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x1D38B6000](v56, -1, -1);
          MEMORY[0x1D38B6000](v55, -1, -1);
        }

        v61 = (v0 + 1072);
        v62 = *(v0 + 1064);
        v63 = *(v0 + 1024);
        if (*(v62 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
        {
          v61 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        *(v0 + 1136) = sub_1D3157A8C(*(v62 + *v61) != 0, v62, *(v0 + 1016));
        v32 = sub_1D3157650;
        v33 = v0 + 16;
        v34 = v0 + 968;
        v35 = v0 + 720;
      }
    }

    return MEMORY[0x1EEE6DEB0](v33, v34, v32, v35);
  }

  else
  {
    v36 = swift_task_alloc();
    *(v0 + 1104) = v36;
    *v36 = v0;
    v36[1] = sub_1D3156DB8;
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1064);
    v39 = *(v0 + 1024);

    return sub_1D3159DE4(v38, v37);
  }
}

uint64_t sub_1D3156DB8(char a1)
{
  v2 = *(*v1 + 1104);
  v4 = *v1;
  *(*v1 + 1146) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3156EB8, 0, 0);
}

uint64_t sub_1D3156EB8()
{
  v47 = v0;
  v1 = *(v0 + 1146);
  if (v1 == 3)
  {
    v2 = *(v0 + 1080);
    v3 = *(v0 + 1064);
    if (*(v0 + 1145) == 1)
    {
      v4 = *(v0 + 1064);

      v5 = sub_1D3276F60();
      v6 = sub_1D3277370();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 1064);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v46 = v9;
        *v8 = 136315138;
        v10 = v7[2];
        v11 = v7[3];
        v12 = v7[4];
        *(v0 + 920) = 0;
        *(v0 + 928) = 0xE000000000000000;
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
        sub_1D3277310();
        v13 = sub_1D312BA30(*(v0 + 920), *(v0 + 928), &v46);

        *(v8 + 4) = v13;
        _os_log_impl(&dword_1D311E000, v5, v6, "%s - OffRoute, OnRoad. Backwards movement along route.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x1D38B6000](v9, -1, -1);
        MEMORY[0x1D38B6000](v8, -1, -1);
      }

      v14 = (v0 + 1072);
      v15 = *(v0 + 1064);
      v16 = *(v0 + 1024);
      if (*(v15 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
      {
        v14 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      *(v0 + 1120) = sub_1D3157A8C(*(v15 + *v14) != 0, v15, *(v0 + 1016));
      v17 = sub_1D3157508;
      v18 = v0 + 16;
      v19 = v0 + 968;
      v20 = v0 + 848;
    }

    else
    {
      v22 = *(v0 + 1024);
      v23 = sub_1D315DA80(*(v0 + 1064));

      v24 = sub_1D3276F60();
      v25 = sub_1D3277370();

      v26 = os_log_type_enabled(v24, v25);
      if (v23)
      {
        if (v26)
        {
          v27 = *(v0 + 1064);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v46 = v29;
          *v28 = 136315138;
          v30 = v27[2];
          v31 = v27[3];
          v32 = v27[4];
          *(v0 + 904) = 0;
          *(v0 + 912) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v33 = sub_1D312BA30(*(v0 + 904), *(v0 + 912), &v46);

          *(v28 + 4) = v33;
          _os_log_impl(&dword_1D311E000, v24, v25, "%s - OnRoute. Inside route radius (speed based).", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x1D38B6000](v29, -1, -1);
          MEMORY[0x1D38B6000](v28, -1, -1);
        }

        v34 = *(v0 + 1024);
        *(v0 + 1128) = sub_1D3157A8C(2, *(v0 + 1064), *(v0 + 1016));
        v17 = sub_1D31575AC;
        v18 = v0 + 16;
        v19 = v0 + 968;
        v20 = v0 + 784;
      }

      else
      {
        if (v26)
        {
          v35 = *(v0 + 1064);
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v46 = v37;
          *v36 = 136315138;
          v38 = v35[2];
          v39 = v35[3];
          v40 = v35[4];
          *(v0 + 888) = 0;
          *(v0 + 896) = 0xE000000000000000;
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
          sub_1D3277310();
          MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
          sub_1D3277310();
          v41 = sub_1D312BA30(*(v0 + 888), *(v0 + 896), &v46);

          *(v36 + 4) = v41;
          _os_log_impl(&dword_1D311E000, v24, v25, "%s - OffRoute, OnRoad. Outside route radius (speed based).", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x1D38B6000](v37, -1, -1);
          MEMORY[0x1D38B6000](v36, -1, -1);
        }

        v42 = (v0 + 1072);
        v43 = *(v0 + 1064);
        v44 = *(v0 + 1024);
        if (*(v43 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
        {
          v42 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        *(v0 + 1136) = sub_1D3157A8C(*(v43 + *v42) != 0, v43, *(v0 + 1016));
        v17 = sub_1D3157650;
        v18 = v0 + 16;
        v19 = v0 + 968;
        v20 = v0 + 720;
      }
    }
  }

  else
  {
    v21 = *(v0 + 1024);
    *(v0 + 1112) = sub_1D3157A8C(v1, *(v0 + 1064), *(v0 + 1016));
    v17 = sub_1D3157464;
    v18 = v0 + 16;
    v19 = v0 + 968;
    v20 = v0 + 976;
  }

  return MEMORY[0x1EEE6DEB0](v18, v19, v17, v20);
}

uint64_t sub_1D3157480()
{
  v1 = v0[136];
  v2 = v0[133];

  v3 = v0[139];
  v4 = v0[132];
  v5 = v0[131];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1D3157524()
{
  v1 = v0[136];
  v2 = v0[133];

  v3 = v0[140];
  v4 = v0[132];
  v5 = v0[131];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1D31575C8()
{
  v1 = v0[136];
  v2 = v0[133];

  v3 = v0[141];
  v4 = v0[132];
  v5 = v0[131];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1D315766C()
{
  v1 = v0[136];
  v2 = v0[133];

  v3 = v0[142];
  v4 = v0[132];
  v5 = v0[131];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1D31576F4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D3157790;

  return sub_1D3158814(a2);
}

uint64_t sub_1D3157790(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D315788C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D3157978;

  return v6();
}

uint64_t sub_1D3157978(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

id sub_1D3157A8C(char a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v123 = a3;
  v7 = sub_1D3276D70();
  v122 = *(v7 - 8);
  v8 = *(v122 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v117 = &v116 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v116 - v14;
  v15 = sub_1D3276D30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
  if (*(a2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v20 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v20 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v21 = *v20;
  v124 = a2;
  v22 = *(a2 + v21);
  if (!v22)
  {
    v29 = v123;
    if (a1 == 2)
    {
      goto LABEL_29;
    }

    v30 = 0;
    if (a1)
    {
      goto LABEL_22;
    }

LABEL_9:
    v31 = [v29 rawLocation];
    v32 = [objc_allocWithZone(MNLocation) initWithRawLocation:v31 locationFixType:0];

    [v32 setRouteMatch_];
    if (v32)
    {
      v33 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
    }

    else
    {
      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v88 = sub_1D3276F80();
      __swift_project_value_buffer(v88, qword_1EC760888);
      v89 = sub_1D3276F60();
      v90 = sub_1D3277390();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1D311E000, v89, v90, "offRoute offRoad did not have a roadMatchLocation", v91, 2u);
        MEMORY[0x1D38B6000](v91, -1, -1);
      }

      v33 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
      v32 = v29;
    }

    v92 = type metadata accessor for MapMatchingResult();
    v93 = objc_allocWithZone(v92);
    *&v93[OBJC_IVAR___MNMapMatchingResult_route] = v33;
    v94 = v33;
    result = [v94 uniqueRouteID];
    if (!result)
    {
      goto LABEL_71;
    }

    v95 = result;
    sub_1D3276D60();

    (*(v122 + 32))(&v93[OBJC_IVAR___MNMapMatchingResult_routeID], v11, v7);
    *&v93[OBJC_IVAR___MNMapMatchingResult_location] = v32;
    v93[OBJC_IVAR___MNMapMatchingResult_matchType] = 0;
    v127.receiver = v93;
    v127.super_class = v92;
    v96 = objc_msgSendSuper2(&v127, sel_init);
LABEL_67:

    return v96;
  }

  v116 = v11;
  v118 = v4;
  v119 = v7;
  v23 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
  v24 = v22[4];
  v25 = v22[5];
  v26 = v22[6];
  v27 = *(v22 + 2);
  v28 = *(v22 + 3);

  if (v28)
  {
    v28 = [v28 stepIndex];
  }

  v34 = v22[7];
  (*(v16 + 16))(v19, v124 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_timestamp, v15);
  v35 = objc_allocWithZone(MEMORY[0x1E69A2540]);
  v36 = sub_1D3276CD0();
  v30 = [v35 initWithRoute:v23 routeCoordinate:v27 locationCoordinate:v28 stepIndex:v36 matchedCourse:v24 timestamp:{v25, v26, v34}];

  (*(v16 + 8))(v19, v15);
  if (a1 == 2)
  {
    v4 = v118;
    v7 = v119;
    v29 = v123;
    if (v30)
    {
      v30 = v30;
      [v30 setIsGoodMatch:1];
      v37 = [objc_allocWithZone(MNLocation) initWithRouteMatch:v30 rawLocation:v29 locationFixType:2];
      if (v37)
      {
        v38 = v37;
        v39 = v121;
        v40 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v124 + v121))
        {
          v40 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        v41 = *(v124 + *v40);
        if (!v41 || (v42 = *(v41 + 72), v43 = v42, !v42) || (v44 = v43, v45 = [v43 road], v44, v46 = objc_msgSend(v45, sel_internalRoadName), v45, !v46))
        {
          v46 = 0;
        }

        [v38 setRoadName_];

LABEL_35:
        v77 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v124 + v39))
        {
          v77 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        v78 = *(v124 + *v77);
        if (v78 && (v79 = *(v78 + 72), v80 = v79, v79) && (v81 = v80, v82 = [v80 road], v81, v82))
        {
          if (v38)
          {
            v38 = v38;
            [v38 setSpeedLimit_];
            [v38 setSpeedLimitIsMPH_];
            v83 = [v82 feature];
            v84 = v4;
            v85 = [v83 speedLimitShieldId];

            [v38 setSpeedLimitShieldType_];
            v86 = *(v84 + OBJC_IVAR___MNMapMatcher__route);
LABEL_43:
            v87 = v38;
LABEL_65:
            v110 = type metadata accessor for MapMatchingResult();
            v111 = objc_allocWithZone(v110);
            *&v111[OBJC_IVAR___MNMapMatchingResult_route] = v86;
            v112 = v86;
            v113 = v38;
            v94 = v112;
            result = [v94 uniqueRouteID];
            if (result)
            {
              v114 = result;
              v115 = v120;
              sub_1D3276D60();

              (*(v122 + 32))(&v111[OBJC_IVAR___MNMapMatchingResult_routeID], v115, v7);
              *&v111[OBJC_IVAR___MNMapMatchingResult_location] = v87;
              v111[OBJC_IVAR___MNMapMatchingResult_matchType] = 2;
              v125.receiver = v111;
              v125.super_class = v110;
              v96 = objc_msgSendSuper2(&v125, sel_init);

              goto LABEL_67;
            }

            __break(1u);
            goto LABEL_70;
          }

          v86 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
        }

        else
        {
          v86 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
          if (v38)
          {
            goto LABEL_43;
          }
        }

        v87 = v29;
        goto LABEL_65;
      }

      v39 = v121;
      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v101 = sub_1D3276F80();
      __swift_project_value_buffer(v101, qword_1EC760888);
      v46 = sub_1D3276F60();
      v102 = sub_1D3277390();
      if (!os_log_type_enabled(v46, v102))
      {

        v38 = 0;
        v46 = v30;
        goto LABEL_35;
      }

      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_1D311E000, v46, v102, "onRoute did not have a routeMatchLocation", v103, 2u);
      MEMORY[0x1D38B6000](v103, -1, -1);

LABEL_34:
      v38 = 0;
      goto LABEL_35;
    }

LABEL_29:
    if (qword_1EC75C008 != -1)
    {
      swift_once();
    }

    v73 = sub_1D3276F80();
    __swift_project_value_buffer(v73, qword_1EC760888);
    v46 = sub_1D3276F60();
    v74 = sub_1D3277390();
    v75 = os_log_type_enabled(v46, v74);
    v39 = v121;
    if (v75)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D311E000, v46, v74, "onRoute did not have a MapMatcher.RouteMatch > GEORouteMatch", v76, 2u);
      MEMORY[0x1D38B6000](v76, -1, -1);
    }

    v30 = 0;
    goto LABEL_34;
  }

  v4 = v118;
  v7 = v119;
  v29 = v123;
  v11 = v116;
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_22:
  v47 = v7;
  [v29 coordinate];
  v49 = v48;
  [v29 coordinate];
  v51 = v50;
  v52 = [v29 altitude];
  v54 = MEMORY[0x1D38B4400](v52, v49, v51, v53);
  v56 = v55;
  v58 = v57;
  [v29 course];
  result = [objc_allocWithZone(MEMORY[0x1E69A24F0]) initWithCoordinateOnRoad:v54 courseOnRoad:{v56, v58, v59}];
  if (result)
  {
    v61 = result;
    v62 = [v29 rawLocation];
    v63 = [objc_allocWithZone(MNLocation) initWithRoadMatch:v61 rawLocation:v62 locationFixType:0];

    if (v63)
    {
      v64 = *(v124 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
      if (!v64 || (v65 = [v64 internalRoadName]) == 0)
      {
        v65 = 0;
      }

      [v63 setRoadName_];

      [v63 setRouteMatch_];
      v66 = *(v124 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
      if (v66)
      {
        v67 = v66;
        v68 = v4;
        v69 = v63;
        [v69 setSpeedLimit_];
        [v69 setSpeedLimitIsMPH_];
        v70 = [v67 feature];
        v71 = [v70 speedLimitShieldId];

        [v69 setSpeedLimitShieldType_];
        v72 = *(v68 + OBJC_IVAR___MNMapMatcher__route);
      }

      else
      {
        v72 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
        v69 = v63;
      }
    }

    else
    {
      [0 setRouteMatch_];
      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v97 = sub_1D3276F80();
      __swift_project_value_buffer(v97, qword_1EC760888);
      v98 = sub_1D3276F60();
      v99 = sub_1D3277390();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_1D311E000, v98, v99, "offRoute onRoad did not have a roadMatchLocation", v100, 2u);
        MEMORY[0x1D38B6000](v100, -1, -1);
      }

      v72 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
      v69 = v29;
    }

    v104 = type metadata accessor for MapMatchingResult();
    v105 = objc_allocWithZone(v104);
    *&v105[OBJC_IVAR___MNMapMatchingResult_route] = v72;
    v106 = v72;
    v107 = v63;
    v94 = v106;
    result = [v94 uniqueRouteID];
    if (!result)
    {
      goto LABEL_72;
    }

    v108 = result;
    v109 = v117;
    sub_1D3276D60();

    (*(v122 + 32))(&v105[OBJC_IVAR___MNMapMatchingResult_routeID], v109, v47);
    *&v105[OBJC_IVAR___MNMapMatchingResult_location] = v69;
    v105[OBJC_IVAR___MNMapMatchingResult_matchType] = 1;
    v126.receiver = v105;
    v126.super_class = v104;
    v96 = objc_msgSendSuper2(&v126, sel_init);

    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1D3158814(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D3158834, 0, 0);
}

uint64_t sub_1D3158834()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[8] = sub_1D3180018();
  v3 = MEMORY[0x1D38B43F0](v1[2], v1[3], v1[4]);
  v5 = v4;
  v6 = *(MEMORY[0x1E69A15C8] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1D31588FC;
  v8.n128_u64[0] = 20.0;
  v9.n128_f64[0] = v3;
  v10.n128_u64[0] = v5;

  return MEMORY[0x1EEE0B8F0](v9, v10, v8);
}

uint64_t sub_1D31588FC(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3158A18, 0, 0);
}

uint64_t sub_1D3158A18()
{
  v0[5] = 0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_67;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[10];
  while (v2)
  {
    v55 = v0[6];
    v4 = v1 & 0xC000000000000001;
    swift_beginAccess();
    v5 = 0;
    v6 = 0;
    v53 = v3 + 32;
    v54 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = -1.0;
    v8 = &selRef__stateTypeForState_;
    v1 = &selRef__stateTypeForState_;
    *&v9 = INFINITY;
    v10 = -1.0;
    v52 = INFINITY;
    while (1)
    {
      v56 = *&v9;
      if (v4)
      {
        v11 = MEMORY[0x1D38B45D0](v5, v0[10]);
      }

      else
      {
        if (v5 >= *(v54 + 16))
        {
          goto LABEL_66;
        }

        v11 = *(v53 + 8 * v5);
      }

      v12 = v11;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v57 = v10;
      v14 = v0[6];
      v60 = v14[3];
      v61 = v14[2];
      v59 = v14[4];
      v15 = [v11 v8[446]];
      if (v15)
      {
        v16 = v15;
        if ([v12 coordinateCount])
        {
          if ([v12 coordinateCount] == 1)
          {
            v17 = fmin(GEOCoordinateGet3DDistance(v61, v60, v59, *v16, v16[1], v16[2]), INFINITY);
          }

          else
          {
            v17 = INFINITY;
          }

          v18 = [v12 coordinateCount];
          v19 = v18 - 1;
          if (v18 != 1)
          {
            if (!v18)
            {
              goto LABEL_65;
            }

            v20 = v16 + 3;
            v58 = -1.0;
            v21 = 0x7FFFFFFFFFFFFFFFLL;
            while (v19)
            {
              if (!v21)
              {
                goto LABEL_63;
              }

              v22 = *(v20 - 3);
              v23 = *(v20 - 2);
              v24 = *(v20 - 1);
              v25 = v20[1];
              v50 = v60;
              v51 = v59;
              v49 = v61;
              v62 = v20[2];
              v63 = *v20;
              GEOClosestCoordinateOnLineSegmentFromCoordinate3D();
              v29 = GEOCoordinateGet3DDistance(v61, v60, v59, v26, v27, v28);
              if (v29 < v17)
              {
                v30 = v29;
                MEMORY[0x1D38B43F0](v22, v23, v24);
                MEMORY[0x1D38B43F0](v63, v25, v62);
                GEOBearingFromCoordinateToCoordinate();
                v58 = v31;
                v17 = v30;
              }

              --v21;
              v20 += 3;
              if (!--v19)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_63:
            __break(1u);
            break;
          }

          v58 = -1.0;
LABEL_25:
          if ([v12 isDrivable])
          {
            v32 = [v12 isValidTravelDirection];
            v33 = v32;
            v8 = &selRef__stateTypeForState_;
            v34 = v7;
            v10 = v57;
            if (v6)
            {
              if (*(v55 + 104) < 0.0)
              {
                if (v32)
                {
                  if (v17 >= v52)
                  {
                    v33 = 0;
                    v56 = v52;
                    goto LABEL_44;
                  }

LABEL_47:

                  v0[5] = v12;
                  *&v9 = v17;
                  v52 = v17;
                  v7 = v58;
                  v10 = v58;
                  v6 = v12;
                  goto LABEL_5;
                }

                v33 = 0;
LABEL_44:
                [v12 flip];
                GEOWrapAngleDegrees();
                if ([v12 isDrivable])
                {
                  v40 = [v12 isValidTravelDirection];
                  v41 = v40;
                  if (v33)
                  {
                    if ((v40 & 1) == 0)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_47;
                  }

                  if (*(v55 + 104) < 0.0)
                  {
                    if ((v40 & 1) == 0 || v17 >= v56)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_47;
                  }
                }

                else
                {
                  if ((v33 & 1) != 0 || *(v55 + 104) < 0.0)
                  {
LABEL_60:

                    *&v9 = v56;
                    v7 = v34;
                    goto LABEL_5;
                  }

                  v41 = 0;
                }

                GEOAngleDifferenceDegrees();
                v43 = v42;
                v44 = *(v55 + 104);
                GEOAngleDifferenceDegrees();
                if ((v41 & 1) == 0)
                {
                  goto LABEL_60;
                }

                if (fabs(v43) >= fabs(v45))
                {
                  v56 = v52;
                  if (v17 >= v52 + -7.4)
                  {
                    goto LABEL_60;
                  }
                }

                else if (v17 >= v52 + 7.4)
                {

                  *&v9 = v52;
                  v7 = v34;
                  goto LABEL_5;
                }

                goto LABEL_47;
              }

LABEL_33:
              GEOAngleDifferenceDegrees();
              v36 = v35;
              v37 = *(v55 + 104);
              GEOAngleDifferenceDegrees();
              if (v33)
              {
                if (fabs(v36) >= fabs(v38))
                {
                  v39 = -7.4;
                }

                else
                {
                  v39 = 7.4;
                }

                if (v17 < v52 + v39)
                {
                  goto LABEL_47;
                }

                v33 = 0;
                v56 = v52;
              }

              else
              {
                v33 = 0;
              }

              v34 = v10;
              goto LABEL_44;
            }

            if (v32)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v8 = &selRef__stateTypeForState_;
            v34 = v7;
            v10 = v57;
            if (v6)
            {
              v33 = 0;
              if (*(v55 + 104) < 0.0)
              {
                goto LABEL_44;
              }

              goto LABEL_33;
            }
          }

          v33 = 1;
          goto LABEL_44;
        }
      }

      *&v9 = v56;
LABEL_5:
      if (v5 == v2)
      {
        v46 = v0[10];
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v2 = sub_1D3277660();
    v3 = v0[10];
  }

  v6 = 0;
LABEL_69:

  v47 = v0[1];

  return v47(v6);
}

uint64_t sub_1D3158F7C(uint64_t a1)
{
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760888);
  swift_retain_n();
  v3 = sub_1D3276F60();
  v4 = sub_1D3277370();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_24;
  }

  v128 = v4;
  v5 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  *v5 = 136316162;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v130 = 0;
  v131 = 0xE000000000000000;
  v132 = v127;
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
  sub_1D3277310();
  MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
  sub_1D3277310();
  v9 = sub_1D312BA30(0, 0xE000000000000000, &v132);

  *(v5 + 4) = v9;
  v10 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  v11 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);
  *(v5 + 12) = 2080;
  v12 = (v11 + 20);
  v13 = MEMORY[0x1E69A1918];
  v14 = v11 == 0;
  if (v11)
  {
    v15 = (v11 + 16);
  }

  else
  {
    v15 = MEMORY[0x1E69A1918];
  }

  v16 = (MEMORY[0x1E69A1918] + 4);
  if (!v14)
  {
    v16 = v12;
  }

  v17 = *v15;
  v18 = *v16;
  v19 = GEOPolylineCoordinateAsFullString();

  if (v19)
  {
    v20 = 4271950;
    v21 = sub_1D32770C0();
    v23 = v22;

    v24 = sub_1D312BA30(v21, v23, &v132);

    *(v5 + 14) = v24;
    *(v5 + 22) = 2080;
    v25 = *(a1 + v10);
    if (v25)
    {
      v26 = v25[4];
      v27 = v25[5];
      v28 = v25[6];
      v130 = 0;
      v131 = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    else
    {
      v30 = 0xE300000000000000;
      v29 = 4271950;
    }

    v31 = sub_1D312BA30(v29, v30, &v132);

    *(v5 + 24) = v31;
    *(v5 + 32) = 2080;
    v32 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v33 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);
    v34 = (v33 + 20);
    v35 = v33 == 0;
    if (v33)
    {
      v36 = (v33 + 16);
    }

    else
    {
      v36 = v13;
    }

    v37 = v13 + 1;
    if (!v35)
    {
      v37 = v34;
    }

    v38 = *v36;
    v39 = *v37;
    v40 = GEOPolylineCoordinateAsFullString();

    if (v40)
    {
      v42 = sub_1D32770C0();
      v44 = v43;

      v45 = sub_1D312BA30(v42, v44, &v132);

      *(v5 + 34) = v45;
      *(v5 + 42) = 2080;
      v46 = *(a1 + v32);
      if (v46)
      {
        v47 = v46[4];
        v48 = v46[5];
        v49 = v46[6];
        v130 = 0;
        v131 = 0xE000000000000000;
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
        sub_1D3277310();
        MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
        sub_1D3277310();
        v20 = 0;
        v50 = 0xE000000000000000;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v51 = sub_1D312BA30(v20, v50, &v132);

      *(v5 + 44) = v51;
      _os_log_impl(&dword_1D311E000, v3, v128, "%s - Classic RM  [%s] %s - Connected RM [%s] %s", v5, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1D38B6000](v127, -1, -1);
      MEMORY[0x1D38B6000](v5, -1, -1);

LABEL_24:
      v52 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);
      if (v52)
      {
        v53 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);
        if (v53)
        {
          if (*(a1 + 104) < 0.0)
          {
            v54 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);

            v55 = sub_1D3276F60();
            v56 = sub_1D3277390();
            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&dword_1D311E000, v55, v56, "Using Classic Route Match. User has no course.", v57, 2u);
              MEMORY[0x1D38B6000](v57, -1, -1);

LABEL_49:

              return 0;
            }

LABEL_94:

            return 0;
          }

          v64 = *(v52 + 56);
          v65 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);

          GEOAngleDifferenceDegrees();
          v67 = fabs(v66);
          v68 = *(v53 + 56);
          v69 = *(a1 + 104);
          GEOAngleDifferenceDegrees();
          v71 = fabs(v70);

          v72 = sub_1D3276F60();
          v73 = sub_1D3277390();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *v74 = 136315650;
            v76 = *(a1 + 16);
            v77 = *(a1 + 24);
            v78 = *(a1 + 32);
            v130 = 0;
            v131 = 0xE000000000000000;
            v132 = v75;
            sub_1D3277310();
            MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
            sub_1D3277310();
            MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
            sub_1D3277310();
            v79 = sub_1D312BA30(0, 0xE000000000000000, &v132);

            *(v74 + 4) = v79;
            *(v74 + 12) = 2048;
            *(v74 + 14) = v67;
            *(v74 + 22) = 2048;
            *(v74 + 24) = v71;
            _os_log_impl(&dword_1D311E000, v72, v73, "%s - Classic RM CD %f Connected RM CD %f", v74, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x1D38B6000](v75, -1, -1);
            MEMORY[0x1D38B6000](v74, -1, -1);
          }

          v80 = *(a1 + 112);

          v81 = sub_1D3276F60();
          v82 = sub_1D3277370();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v130 = v84;
            *v83 = 136315138;
            v85 = *(a1 + 112);
            if (v85 >= v67)
            {
              v86 = 0x656469736E69;
            }

            else
            {
              v86 = 0x6564697374756FLL;
            }

            if (v85 >= v67)
            {
              v87 = 0xE600000000000000;
            }

            else
            {
              v87 = 0xE700000000000000;
            }

            v88 = sub_1D312BA30(v86, v87, &v130);

            *(v83 + 4) = v88;
            _os_log_impl(&dword_1D311E000, v81, v82, "Classic RM %s course accuracy", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v84);
            MEMORY[0x1D38B6000](v84, -1, -1);
            MEMORY[0x1D38B6000](v83, -1, -1);
          }

          v89 = v80 < v67 && v71 <= *(a1 + 112);

          v90 = sub_1D3276F60();
          v91 = sub_1D3277370();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v130 = v93;
            *v92 = 136315138;
            v94 = *(a1 + 112);
            if (v94 >= v71)
            {
              v95 = 0x656469736E69;
            }

            else
            {
              v95 = 0x6564697374756FLL;
            }

            if (v94 >= v71)
            {
              v96 = 0xE600000000000000;
            }

            else
            {
              v96 = 0xE700000000000000;
            }

            v97 = sub_1D312BA30(v95, v96, &v130);

            *(v92 + 4) = v97;
            _os_log_impl(&dword_1D311E000, v90, v91, "Connected RM %s course accuracy", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x1D38B6000](v93, -1, -1);
            MEMORY[0x1D38B6000](v92, -1, -1);
          }

          v98 = *(a1 + 88);
          v99 = v98 + sub_1D315E5E0(a1) + 1.85 + 20.0;
          BOOL = GEOConfigGetBOOL();
          v101 = BOOL & v89;
          if ((BOOL & 1) == 0 && v89)
          {
            v101 = *(v53 + 64) <= v99;
          }

          v102 = sub_1D3276F60();
          v103 = sub_1D3277370();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v130 = v105;
            *v104 = 136315906;
            if (BOOL)
            {
              v106 = 0xD00000000000001ELL;
            }

            else
            {
              v106 = 0;
            }

            if (BOOL)
            {
              v107 = 0x80000001D328F2F0;
            }

            else
            {
              v107 = 0xE000000000000000;
            }

            v108 = v101;
            v109 = sub_1D312BA30(v106, v107, &v130);

            *(v104 + 4) = v109;
            *(v104 + 12) = 2048;
            v110 = *(v53 + 64);
            *(v104 + 14) = v110;
            *(v104 + 22) = 2080;
            if (v110 <= v99)
            {
              v111 = 0x656469736E69;
            }

            else
            {
              v111 = 0x6564697374756FLL;
            }

            if (v110 <= v99)
            {
              v112 = 0xE600000000000000;
            }

            else
            {
              v112 = 0xE700000000000000;
            }

            v113 = sub_1D312BA30(v111, v112, &v130);

            *(v104 + 24) = v113;
            v101 = v108;
            *(v104 + 32) = 2048;
            *(v104 + 34) = v99;
            _os_log_impl(&dword_1D311E000, v102, v103, "%sConnected RM distance %fm %s buffer %fm", v104, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1D38B6000](v105, -1, -1);
            MEMORY[0x1D38B6000](v104, -1, -1);
          }

          [*(v129 + OBJC_IVAR___MNMapMatcher__route) distanceBetweenRouteCoordinate:*(v52 + 16) andRouteCoordinate:*(v53 + 16)];
          v115 = v114;
          v116 = fabs(v114);
          if (v116 >= 5.0)
          {
            v117 = v101;
          }

          else
          {
            v117 = 0;
          }

          v118 = sub_1D3276F60();
          v119 = sub_1D3277370();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v130 = v121;
            *v120 = 136315394;
            if (v115 >= 0.0)
            {
              v122 = 0x6461656861;
            }

            else
            {
              v122 = 0x646E69686562;
            }

            if (v115 >= 0.0)
            {
              v123 = 0xE500000000000000;
            }

            else
            {
              v123 = 0xE600000000000000;
            }

            v124 = sub_1D312BA30(v122, v123, &v130);

            *(v120 + 4) = v124;
            *(v120 + 12) = 2048;
            *(v120 + 14) = v116;
            _os_log_impl(&dword_1D311E000, v118, v119, "Connected RM %s Classic RM along route by %fm", v120, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v121);
            MEMORY[0x1D38B6000](v121, -1, -1);
            MEMORY[0x1D38B6000](v120, -1, -1);
          }

          if (!v117)
          {

            goto LABEL_94;
          }

          v55 = sub_1D3276F60();
          v125 = sub_1D3277370();
          if (!os_log_type_enabled(v55, v125))
          {

            return 1;
          }

          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_1D311E000, v55, v125, "Using Connected Route Match. Connected RM has closer bearing to user course", v126, 2u);
          MEMORY[0x1D38B6000](v126, -1, -1);

LABEL_91:

          return 1;
        }

        v55 = sub_1D3276F60();
        v59 = sub_1D3277390();
        if (!os_log_type_enabled(v55, v59))
        {
          goto LABEL_49;
        }

        v62 = swift_slowAlloc();
        *v62 = 0;
        v63 = "Using Classic Route Match. No Connected Route Match.";
      }

      else
      {
        v58 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);
        v55 = sub_1D3276F60();
        v59 = sub_1D3277390();
        v60 = os_log_type_enabled(v55, v59);
        if (v58)
        {
          if (v60)
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_1D311E000, v55, v59, "Using Connected Route Match. No Classic Route Match.", v61, 2u);
            MEMORY[0x1D38B6000](v61, -1, -1);
          }

          goto LABEL_91;
        }

        if (!v60)
        {
          goto LABEL_49;
        }

        v62 = swift_slowAlloc();
        *v62 = 0;
        v63 = "No Classic/Connected Route Match.";
      }

      _os_log_impl(&dword_1D311E000, v55, v59, v63, v62, 2u);
      MEMORY[0x1D38B6000](v62, -1, -1);
      goto LABEL_49;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3159DE4(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3159E08, 0, 0);
}

uint64_t sub_1D3159E08()
{
  v76 = v0;
  v9 = v0[14];
  v8 = v0[15];
  v10 = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v12 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v8 = *&v10[v8];
  v11 = v8 & 0xFFFFFFFFFFFFFF8;
  v1 = v8 >> 62;
  if (!(v8 >> 62))
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v12)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v13 >= v15)
    {
      goto LABEL_11;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_36;
  }

LABEL_64:
  if (v8 < 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v11;
  }

  v9 = sub_1D3277660();
  result = sub_1D3277660();
  if (result < 0)
  {
    goto LABEL_84;
  }

  if (v9 >= v12)
  {
    v72 = v12;
  }

  else
  {
    v72 = v9;
  }

  if (v9 < 0)
  {
    v72 = v12;
  }

  if (v12)
  {
    v15 = v72;
  }

  else
  {
    v15 = 0;
  }

  if (sub_1D3277660() < v15)
  {
    goto LABEL_77;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    if (v15)
    {
      _s14RecentLocationCMa();
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        sub_1D3277700();
        v16 = v17;
      }

      while (v15 != v17);
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  if (v1)
  {
    v19 = sub_1D32777E0();
    v20 = v22;
    v18 = v23;
    v21 = v24;

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_1D3187B84(v19, v20, v18, v21);
    v26 = v25;
    goto LABEL_28;
  }

  v18 = 0;
  v19 = v8 & 0xFFFFFFFFFFFFFF8;
  v20 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = (2 * v15) | 1;
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  sub_1D32778E0();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v21 >> 1, v18))
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v28 != (v21 >> 1) - v18)
  {
LABEL_80:
    swift_unknownObjectRelease_n();
    goto LABEL_21;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v26)
  {
    goto LABEL_29;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_28:
  swift_unknownObjectRelease();
LABEL_29:
  v10 = sub_1D314E6E8(v26, *(v0[15] + OBJC_IVAR___MNMapMatcher__route));
  v0[16] = v10;

  v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  if (v10)
  {
    v29 = v0[15];
    v30 = v0[13];
    v31 = v30[5];
    v32 = v30[6];
    v33 = v30[7];

    sub_1D315AA7C(v34, v31, v32, v33);
    v35 = *(v30 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch);
    *(v30 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch) = v36;

    LOBYTE(v29) = sub_1D3158F7C(v30);

    *(v30 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) = v29 & 1;
  }

  v9 = v0[13];
  v2 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
  v15 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  if (*(v9 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v37 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v37 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  if (!*(v9 + *v37))
  {
    goto LABEL_56;
  }

  v7 = *(v9 + 88);
  v4 = sub_1D315E5E0(v0[13]);
  v5 = v7 + v4;
  v6 = -1.85;
  if (qword_1EC75C008 != -1)
  {
    goto LABEL_78;
  }

LABEL_36:
  v38 = v5 + v6;
  v39 = v0[13];
  v40 = sub_1D3276F80();
  __swift_project_value_buffer(v40, qword_1EC760888);
  swift_retain_n();
  v41 = sub_1D3276F60();
  v42 = sub_1D3277370();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[13];
  if (v43)
  {
    v74 = v42;
    v45 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75 = v73;
    *v45 = 136316674;
    v46 = v44[2];
    v47 = v44[3];
    v48 = v44[4];
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v49 = sub_1D312BA30(v0[9], v0[10], &v75);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    if (*(v9 + v2))
    {
      v50 = 0x657463656E6E6F43;
    }

    else
    {
      v50 = 0x63697373616C43;
    }

    if (*(v9 + v2))
    {
      v51 = 0xE900000000000064;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    v52 = sub_1D312BA30(v50, v51, &v75);

    *(v45 + 14) = v52;
    *(v45 + 22) = 2080;
    v53 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    if (*(v9 + v2))
    {
      v53 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    }

    v54 = *(v44 + *v53);
    v55 = v0[13];
    if (!v54)
    {
      goto LABEL_82;
    }

    v56 = v54[4];
    v57 = v54[5];
    v58 = v54[6];

    v0[11] = 0;
    v0[12] = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v59 = sub_1D312BA30(v0[11], v0[12], &v75);

    *(v45 + 24) = v59;
    *(v45 + 32) = 2048;
    v60 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    if (*(v9 + v2))
    {
      v60 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    }

    v61 = *(v55 + *v60);
    v62 = v0[13];
    if (!v61)
    {
      goto LABEL_83;
    }

    v63 = *(v61 + 64);

    *(v45 + 34) = v63;
    *(v45 + 42) = 2048;
    *(v45 + 44) = v38;
    *(v45 + 52) = 2048;
    *(v45 + 54) = v7;
    *(v45 + 62) = 2048;
    *(v45 + 64) = v4;
    _os_log_impl(&dword_1D311E000, v41, v74, "        %s - Distance from user to %s (active) RM (%s) is %f | Route Match Road's Route Radius (non speed based) = %f = Accuracy (non speed based) %f + Road width %f - MapMatcher._roadMinWidth / 2", v45, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v73, -1, -1);
    MEMORY[0x1D38B6000](v45, -1, -1);

    v15 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  else
  {
    v64 = v0[13];
  }

  if (*(v9 + v2))
  {
    v65 = v3;
  }

  else
  {
    v65 = v15;
  }

  v66 = *(v0[13] + *v65);
  if (!v66)
  {
    __break(1u);
LABEL_82:

    __break(1u);
LABEL_83:

    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  if (v38 < *(v66 + 64))
  {
LABEL_56:
    v67 = swift_task_alloc();
    v0[17] = v67;
    *v67 = v0;
    v67[1] = sub_1D315A5E4;
    v68 = v0[14];
    v69 = v0[15];

    return sub_1D315AD68(v68, v10);
  }

  v71 = v0[1];

  return v71(3);
}

uint64_t sub_1D315A5E4(__int16 a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D315A6E4, 0, 0);
}

uint64_t sub_1D315A6E4()
{
  v29 = v0;
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760888);

  v3 = sub_1D3276F60();
  v4 = sub_1D3277370();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    v8 = v5[2];
    v9 = v5[3];
    v10 = v5[4];
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
    sub_1D3277310();
    MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
    sub_1D3277310();
    v11 = sub_1D312BA30(*(v0 + 56), *(v0 + 64), &v28);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D311E000, v3, v4, "%s - Finished running shape match", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1D38B6000](v7, -1, -1);
    MEMORY[0x1D38B6000](v6, -1, -1);
  }

  if (*(v0 + 144))
  {
    v12 = *(v0 + 104);

    v13 = sub_1D3276F60();
    v14 = sub_1D3277370();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 128);
    if (v15)
    {
      v17 = *(v0 + 104);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      v20 = v17[2];
      v21 = v17[3];
      v22 = v17[4];
      *(v0 + 40) = 0;
      *(v0 + 48) = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v23 = sub_1D312BA30(*(v0 + 40), *(v0 + 48), &v28);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D311E000, v13, v14, "%s - Strong recommendation from shape match", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1D38B6000](v19, -1, -1);
      MEMORY[0x1D38B6000](v18, -1, -1);
    }

    v24 = *(v0 + 145);
  }

  else
  {
    v25 = *(v0 + 128);

    v24 = 3;
  }

  v26 = *(v0 + 8);

  return v26(v24);
}

double sub_1D315AA7C(uint64_t a1, double a2, double a3, double a4)
{
  v9 = *(a1 + 120);
  v10 = *(a1 + 124);
  v11 = *(v4 + OBJC_IVAR___MNMapMatcher__route);
  v12 = [v11 routeCoordinateForDistance:v9 | (v10 << 32) beforeRouteCoordinate:100.0];
  v13 = [v11 routeCoordinateForDistance:v12 afterRouteCoordinate:200.0];
  v14 = sub_1D318011C();
  v15 = [v14 matchedSegmentsFromStart:v12 toEnd:v13];

  if (v15)
  {
    sub_1D315E9C4();
    v16 = sub_1D32771A0();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute;
  v18 = *(v4 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute);
  *(v4 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute) = v16;

  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v40 = *(a1 + 88);
  v22 = MEMORY[0x1D38B43F0](v19);
  v24 = v23;
  v25 = MEMORY[0x1D38B43F0](a2, a3, a4);
  Distance = GEOCoordinateGetDistance(v22, v24, v25, v26);
  v28 = [v11 stepAtIndex_];
  v29 = *(a1 + 112);
  GEOWrapAngleDegrees();
  v31 = v30;
  v32 = *(v4 + v17);
  if (v32 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D3277660())
  {

    if (!i)
    {
      break;
    }

    v34 = 0;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1D38B45D0](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v35 range];
      if (sub_1D3277590())
      {

        goto LABEL_18;
      }

      ++v34;
      if (v37 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  v36 = 0;
LABEL_18:
  _s10RouteMatchCMa();
  v38 = swift_allocObject();
  *(v38 + 16) = v9;
  *(v38 + 20) = v10;
  result = v40;
  *(v38 + 32) = v40;
  *(v38 + 40) = v20;
  *(v38 + 48) = v21;
  *(v38 + 56) = v31;
  *(v38 + 64) = Distance;
  *(v38 + 24) = v28;
  *(v38 + 72) = v36;
  return result;
}

uint64_t sub_1D315AD68(uint64_t a1, uint64_t a2)
{
  v3[89] = v2;
  v3[88] = a2;
  v3[87] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D315AD90, 0, 0);
}

uint64_t sub_1D315AD90()
{
  v5 = v0[89];
  v6 = OBJC_IVAR___MNMapMatcher__locationHistory;
  v0[90] = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = v0[87];
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v8)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v9 = *(v7 + 8 * v8 + 32);

  while (1)
  {
    v0[91] = v9;
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v10 = *(v9 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) ? &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch : &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v11 = *(v9 + *v10);
    v67 = v6;
    if (!v11)
    {
      break;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);

    v16 = MEMORY[0x1D38B43E0](v15, v12, v13, v14);
    v18 = v17;
    v19 = MEMORY[0x1D38B43E0](v11[4], v11[5], v11[6]);
    if (*(v9 + 88) >= GEOCoordinateGetDistance(v16, v18, v19, v20))
    {
LABEL_31:

      break;
    }

    v65 = v0;
    v66 = v5;
    v8 = *(v5 + v6);
    v0 = (v8 & 0xFFFFFFFFFFFFFF8);
    if (v8 >> 62)
    {
      v6 = sub_1D3277660();
    }

    else
    {
      v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v8 & 0xC000000000000001;

    v1 = 0;
    v5 = 0;
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    while (1)
    {
      if (v6 == v1)
      {

        v48 = *(v66 + v67);
        if (v48 >> 62)
        {
          if (v48 < 0)
          {
            v63 = *(v66 + v67);
          }

          v49 = sub_1D3277660();
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        v0 = v65;
        v50 = v49;
        if (qword_1EC75C008 != -1)
        {
          swift_once();
        }

        v51 = v65[89];
        v52 = v5 / v50;
        v53 = sub_1D3276F80();
        __swift_project_value_buffer(v53, qword_1EC760888);
        v54 = v51;
        v55 = sub_1D3276F60();
        v1 = sub_1D3277370();
        if (os_log_type_enabled(v55, v1))
        {
          v56 = swift_slowAlloc();
          *v56 = 134218496;
          *(v56 + 4) = v52 * 100.0;
          *(v56 + 12) = 2048;
          *(v56 + 14) = v5;
          *(v56 + 22) = 2048;
          v5 = v66;
          v57 = *(v66 + v67);
          if (v57 >> 62)
          {
            v64 = v56;
            v58 = sub_1D3277660();
            v56 = v64;
          }

          else
          {
            v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v59 = v65[89];
          *(v56 + 24) = v58;
          v2 = v56;

          _os_log_impl(&dword_1D311E000, v55, v1, "%f%% (%ld/%ld) recent locations are out of route match road range", v2, 0x20u);
          MEMORY[0x1D38B6000](v2, -1, -1);
        }

        else
        {

          v5 = v66;
        }

        if (v52 >= 0.5)
        {
          v60 = sub_1D3276F60();
          v61 = sub_1D3277370();
          if (os_log_type_enabled(v60, v61))
          {
            v1 = swift_slowAlloc();
            *v1 = 0;
            _os_log_impl(&dword_1D311E000, v60, v61, "Preferring road match as start point of connected road similarity search", v1, 2u);
            MEMORY[0x1D38B6000](v1, -1, -1);
          }

          else
          {
          }

          LOBYTE(v8) = 1;
          v6 = v67;
        }

        else
        {

          LOBYTE(v8) = 0;
          v6 = v67;
        }

        goto LABEL_33;
      }

      if (!v7)
      {
        break;
      }

      v2 = MEMORY[0x1D38B45D0](v1, v8);
      if (__OFADD__(v1, 1))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_19:
      v4 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
      if (*(v2 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
      {
        v26 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      }

      else
      {
        v26 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
      }

      if (*(v2 + *v26))
      {
        result = MEMORY[0x1D38B43E0](*(v2 + 16), *(v2 + 24), *(v2 + 32));
        if (*(v2 + v4))
        {
          v30 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        else
        {
          v30 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        }

        v31 = *(v2 + *v30);
        if (!v31)
        {
          __break(1u);
          return result;
        }

        v32 = v28;
        v33 = v29;
        v34 = MEMORY[0x1D38B43E0](result, v31[4], v31[5], v31[6]);
        Distance = GEOCoordinateGetDistance(v32, v33, v34, v35);
      }

      else
      {
        Distance = INFINITY;
      }

      v22 = *(v2 + 88);
      v23 = sub_1D315E5E0(v2);

      v24 = v22 + v23 + -1.85 < Distance;
      ++v1;
      v25 = __OFADD__(v5, v24);
      v5 += v24;
      if (v25)
      {
        goto LABEL_67;
      }
    }

    if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v8 + 8 * v1 + 32);

      if (__OFADD__(v1, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:

    v9 = MEMORY[0x1D38B45D0](v8, v7);
  }

  LOBYTE(v8) = 0;
LABEL_33:
  v36 = v0[87];
  v7 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v4 = v5;
  v37 = *(v5 + v6);

  v6 = sub_1D315E880(v7, v37, v38);
  v7 = v39;
  v1 = v40;
  v2 = v41;

  if (v2)
  {
    sub_1D32778E0();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v43 + 16);

    if (__OFSUB__(v2 >> 1, v1))
    {
      goto LABEL_79;
    }

    if (v44 != (v2 >> 1) - v1)
    {
      goto LABEL_80;
    }

    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    if (v7)
    {
      goto LABEL_43;
    }

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  while (1)
  {
    sub_1D3187B84(v6, v7, v1, v2);
    v7 = v42;
LABEL_42:
    swift_unknownObjectRelease();
LABEL_43:
    v0[92] = v7;
    v6 = *(v4 + v67);
    if (v6 >> 62)
    {
LABEL_72:
      if (!sub_1D3277660())
      {
LABEL_73:
        v47 = 0;
        goto LABEL_74;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v6 + 32);

      goto LABEL_48;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_unknownObjectRelease();
    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  v45 = MEMORY[0x1D38B45D0](0, v6);

LABEL_48:
  v46 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  if (*(v45 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v46 = v3;
  }

  v47 = *(v45 + *v46);

LABEL_74:
  v0[93] = v47;
  v62 = swift_task_alloc();
  v0[94] = v62;
  *v62 = v0;
  v62[1] = sub_1D315B500;

  return sub_1D3176AA0(v7, v47, v8);
}

uint64_t sub_1D315B500(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 752);
  v5 = *(*v2 + 744);
  v6 = *(*v2 + 736);
  v8 = *v2;
  *(v3 + 760) = a1;
  *(v3 + 768) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D315B640, 0, 0);
}

uint64_t sub_1D315B640()
{
  v219 = v0;
  v4 = v0;
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 712);
  v6 = sub_1D3276F80();
  v7 = __swift_project_value_buffer(v6, qword_1EC760888);
  v8 = v5;
  v9 = sub_1D3276F60();
  v10 = sub_1D3277370();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v218 = v14;
    *v13 = 136315138;
    v15 = *(v12 + v11);
    if (v15 >> 62)
    {
      if (sub_1D3277660())
      {
        goto LABEL_6;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = MEMORY[0x1D38B45D0](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v16 = *(v15 + 32);
      }

      v2 = *(v16 + 16);
      v17 = *(v16 + 24);
      v3 = *(v16 + 32);

      *(v4 + 680) = 0;
      *(v4 + 688) = 0xE000000000000000;
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](8236, 0xE200000000000000);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](32, 0xE100000000000000);
      sub_1D3277310();
      v18 = *(v4 + 680);
      v19 = *(v4 + 688);
      goto LABEL_12;
    }

    v19 = 0xE300000000000000;
    v18 = 4271950;
LABEL_12:
    v20 = sub_1D312BA30(v18, v19, &v218);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1D311E000, v9, v10, "%s - Similarity results", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D38B6000](v14, -1, -1);
    MEMORY[0x1D38B6000](v13, -1, -1);
  }

  v13 = *(v4 + 704);

  v21 = sub_1D3276F60();
  v22 = sub_1D3277370();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v4 + 704);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v23)
    {
      v24 = *(v13 + 64);
      v25 = *(v13 + 80);
      v26 = *(v13 + 112);
      *(v4 + 48) = *(v13 + 96);
      *(v4 + 64) = v26;
      *(v4 + 16) = v24;
      *(v4 + 32) = v25;
      sub_1D314B39C(v4 + 16, v4 + 592);
      sub_1D314A9DC();
      v2 = v27;
      sub_1D314B3D4(v4 + 16);
    }

    else
    {
      v2 = -1.0;
    }

    *(v10 + 4) = v2;
    _os_log_impl(&dword_1D311E000, v21, v22, "Route similarity %f", v10, 0xCu);
    MEMORY[0x1D38B6000](v10, -1, -1);
  }

  v28 = sub_1D3276F60();
  v29 = sub_1D3277370();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D311E000, v28, v29, "Connected Similarity results", v30, 2u);
    MEMORY[0x1D38B6000](v30, -1, -1);
  }

  v31 = *(v4 + 768);
  v32 = *(v4 + 760);

  v14 = sub_1D3276F60();
  v1 = sub_1D3277370();
  v216 = v32;

  v214 = v31;
  v215 = v4;
  if (!os_log_type_enabled(v14, v1))
  {

    goto LABEL_47;
  }

  v212 = v7;
  v15 = 0x656D616E206F6ELL;
  v33 = *(v4 + 760);
  v29 = v4;
  v4 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v218 = v7;
  *v4 = 136315394;
  if (!v33)
  {
    v40 = sub_1D312BA30(0x656D616E206F6ELL, 0xE700000000000000, &v218);

    *(v4 + 4) = v40;
    *(v4 + 12) = 2048;
    goto LABEL_45;
  }

  v34 = *(v29 + 760);
  v12 = v34 >> 62;
  if (v34 >> 62)
  {
    if (!sub_1D3277660())
    {
      goto LABEL_37;
    }
  }

  else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v35 = *(v215 + 760);
  if ((v35 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v37 = *(MEMORY[0x1D38B45D0](0, v216) + 16);
    if (v37)
    {
      goto LABEL_27;
    }

LABEL_36:

    goto LABEL_37;
  }

  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_230;
  }

  v36 = *(v216 + 32);

  v37 = *(v36 + 16);
  if (!v37)
  {
    goto LABEL_36;
  }

LABEL_27:
  v10 = v37;

  v38 = [v10 internalRoadName];

  if (v38)
  {
    v15 = sub_1D32770C0();
    v29 = v39;

    goto LABEL_38;
  }

LABEL_37:
  v29 = 0xE700000000000000;
LABEL_38:
  v41 = *(v215 + 760);
  v15 = sub_1D312BA30(v15, v29, &v218);

  *(v4 + 4) = v15;
  *(v4 + 12) = 2048;
  if (!v12)
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v214;
    if (v42)
    {
      goto LABEL_40;
    }

LABEL_45:
    v2 = -1.0;
    goto LABEL_46;
  }

  *(v215 + 760);
  v31 = v214;
  if (!sub_1D3277660())
  {
    goto LABEL_45;
  }

LABEL_40:
  v43 = *(v215 + 760);
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1D38B45D0](0, v216);
    goto LABEL_43;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v44 = *(v216 + 32);

LABEL_43:
  v45 = v44[4];
  v46 = v44[5];
  v47 = v44[7];
  *(v215 + 112) = v44[6];
  *(v215 + 128) = v47;
  *(v215 + 80) = v45;
  *(v215 + 96) = v46;
  sub_1D314B39C(v215 + 80, v215 + 528);

  sub_1D314A9DC();
  v2 = v48;
  sub_1D314B3D4(v215 + 80);
LABEL_46:
  *(v4 + 14) = v2;
  _os_log_impl(&dword_1D311E000, v14, v1, "- Best Match: %s %f", v4, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v7);
  MEMORY[0x1D38B6000](v7, -1, -1);
  MEMORY[0x1D38B6000](v4, -1, -1);

  v4 = v215;
  v7 = v212;
LABEL_47:

  v49 = sub_1D3276F60();
  v50 = sub_1D3277370();

  if (os_log_type_enabled(v49, v50))
  {
    v10 = v7;
    v51 = *(v4 + 768);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v218 = v53;
    *v52 = 136315394;
    if (v51)
    {
      v54 = 0x656D616E206F6ELL;
      v55 = *(v31 + 16);
      if (v55 && (v56 = [v55 internalRoadName]) != 0)
      {
        v57 = v56;
        v54 = sub_1D32770C0();
        v29 = v58;

        v31 = v214;
      }

      else
      {
        v29 = 0xE700000000000000;
      }

      v67 = sub_1D312BA30(v54, v29, &v218);

      *(v52 + 4) = v67;
      *(v52 + 12) = 2048;
      v68 = *(v31 + 64);
      v69 = *(v31 + 80);
      v70 = *(v31 + 112);
      *(v215 + 176) = *(v31 + 96);
      *(v215 + 192) = v70;
      *(v215 + 144) = v68;
      *(v215 + 160) = v69;
      sub_1D314B39C(v215 + 144, v215 + 464);
      sub_1D314A9DC();
      v2 = v71;
      sub_1D314B3D4(v215 + 144);
    }

    else
    {
      v72 = sub_1D312BA30(0x656D616E206F6ELL, 0xE700000000000000, &v218);

      *(v52 + 4) = v72;
      *(v52 + 12) = 2048;
      v2 = -1.0;
    }

    *(v52 + 14) = v2;
    _os_log_impl(&dword_1D311E000, v49, v50, "- Route: %s %f", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1D38B6000](v53, -1, -1);
    MEMORY[0x1D38B6000](v52, -1, -1);

    v4 = v215;
    v7 = v10;
    v14 = *(v215 + 760);
    if (!v14)
    {
      goto LABEL_62;
    }
  }

  else
  {

    v14 = *(v4 + 760);
    if (!v14)
    {
LABEL_62:
      v73 = *(v4 + 728);
LABEL_63:

      goto LABEL_64;
    }
  }

  v59 = v14 >> 62;
  if (v14 >> 62)
  {
    v60 = sub_1D3277660();
    if (v60 < 1)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v60 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60 < 1)
    {
LABEL_102:
      v13 = v216;

      goto LABEL_103;
    }
  }

  if (!*(v4 + 704))
  {
    goto LABEL_102;
  }

  v61 = *(v13 + 64);
  v62 = *(v13 + 80);
  v63 = *(v13 + 112);
  *(v4 + 240) = *(v13 + 96);
  *(v4 + 256) = v63;
  *(v4 + 208) = v61;
  *(v4 + 224) = v62;
  v13 = v216;

  sub_1D314B39C(v4 + 208, v4 + 336);
  v15 = v4 + 208;
  sub_1D314A9DC();
  v2 = v64;
  sub_1D314B3D4(v4 + 208);
  v65 = *(v4 + 760) & 0xFFFFFFFFFFFFFF8;
  if (v59)
  {
    if (v14 >= 0)
    {
      v76 = *(v4 + 760) & 0xFFFFFFFFFFFFFF8;
    }

    v66 = sub_1D3277660();
  }

  else
  {
    v66 = *((*(v4 + 760) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v66)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v77 = *(v4 + 760);
  if ((v77 & 0xC000000000000001) != 0)
  {
LABEL_218:
    v78 = MEMORY[0x1D38B45D0](0, v13);
    goto LABEL_72;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_220;
  }

  v78 = *(v216 + 32);

LABEL_72:
  v79 = v78[4];
  v80 = v78[5];
  v81 = v78[7];
  *(v4 + 304) = v78[6];
  *(v4 + 320) = v81;
  *(v4 + 272) = v79;
  *(v4 + 288) = v80;
  sub_1D314B39C(v4 + 272, v4 + 400);

  sub_1D314A9DC();
  v83 = v82;
  sub_1D314B3D4(v4 + 272);
  if (v2 <= v83)
  {
    v15 = *(*(v4 + 712) + *(v4 + 720));
    if (!(v15 >> 62))
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      goto LABEL_233;
    }

LABEL_232:
    if (sub_1D3277660())
    {
LABEL_75:
      if ((v15 & 0xC000000000000001) == 0)
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_237;
        }

        v84 = *(v15 + 32);

LABEL_78:
        v85 = *(v4 + 720);
        v86 = *(v4 + 712);
        v2 = *(v84 + 88);

        v15 = *(v86 + v85);
        if (v15 >> 62)
        {
          if (sub_1D3277660())
          {
LABEL_80:
            if ((v15 & 0xC000000000000001) == 0)
            {
              if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_241;
              }

              v29 = *(v15 + 32);

LABEL_83:
              v87 = *(v4 + 720);
              v88 = *(v4 + 712);
              v89 = v2 + v2;
              v90 = sub_1D315E5E0(v29);

              if (v89 + v90 + -1.85 <= 20.0)
              {
                v2 = v89 + v90 + -1.85;
              }

              else
              {
                v2 = 20.0;
              }

              v15 = *(v88 + v87);
              if (v15 >> 62)
              {
                if (sub_1D3277660())
                {
LABEL_88:
                  if ((v15 & 0xC000000000000001) == 0)
                  {
                    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v91 = *(v15 + 32);

                      goto LABEL_91;
                    }

                    __break(1u);
                    goto LABEL_244;
                  }

LABEL_242:

                  v91 = MEMORY[0x1D38B45D0](0, v15);

LABEL_91:
                  if (*(v91 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
                  {
                    v92 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
                  }

                  else
                  {
                    v92 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
                  }

                  v93 = *(v91 + *v92);

                  if (v93)
                  {

                    v95 = *(v93 + 64);

                    if (v95 <= v2)
                    {
                      v97 = sub_1D3276F60();
                      v98 = sub_1D3277370();
                      v99 = os_log_type_enabled(v97, v98);
                      v100 = *(v4 + 728);
                      if (v99)
                      {
                        v101 = swift_slowAlloc();
                        *v101 = 134217984;
                        *(v101 + 4) = v2;
                        _os_log_impl(&dword_1D311E000, v97, v98, "Strong OnRoute due to route similarity better than all the candidate roads and user is within %fm of active route match", v101, 0xCu);
                        MEMORY[0x1D38B6000](v101, -1, -1);
                      }

                      else
                      {
                      }

                      v75 = 2;
                      v74 = 1;
                      goto LABEL_225;
                    }

                    v96 = *(v4 + 728);

                    goto LABEL_63;
                  }

                  goto LABEL_361;
                }
              }

              else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_88;
              }

              __break(1u);
LABEL_241:
              __break(1u);
              goto LABEL_242;
            }

LABEL_238:

            v29 = MEMORY[0x1D38B45D0](0, v15);

            goto LABEL_83;
          }
        }

        else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        __break(1u);
LABEL_237:
        __break(1u);
        goto LABEL_238;
      }

LABEL_234:

      v84 = MEMORY[0x1D38B45D0](0, v15);

      goto LABEL_78;
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

LABEL_103:
  v211 = v60;
  v15 = *(*(v4 + 712) + *(v4 + 720));
  if (v15 >> 62)
  {
    goto LABEL_214;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_164:
    if (v211 >= 1)
    {
      v131 = *(*(v4 + 712) + *(v4 + 720));
      if (v131 >> 62)
      {
        goto LABEL_222;
      }

      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_167;
      }
    }

LABEL_223:
    v156 = *(v4 + 728);

    v75 = 2;
    swift_bridgeObjectRelease_n();
    goto LABEL_224;
  }

  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
LABEL_220:

      v29 = MEMORY[0x1D38B45D0](0, v15);

      goto LABEL_108;
    }

    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_222:
      if (sub_1D3277660() <= 0)
      {
        goto LABEL_223;
      }

LABEL_167:
      v132 = *(v4 + 760) & 0xFFFFFFFFFFFFFF8;
      if (v59)
      {
        if (v14 >= 0)
        {
          v134 = *(v4 + 760) & 0xFFFFFFFFFFFFFF8;
        }

        v133 = sub_1D3277660();
      }

      else
      {
        v133 = *((*(v4 + 760) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v133)
      {
        v135 = *(v4 + 760);
        v10 = v135 & 0xC000000000000001;
        if ((v135 & 0xC000000000000001) == 0)
        {
          if (!*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_248;
          }

          v136 = *(v13 + 32);

LABEL_176:
          v138 = *(v4 + 720);
          v60 = *(v4 + 712);
          v2 = *(v137 + 112);

          v15 = *(v60 + v138);
          if (v15 >> 62)
          {
            if (sub_1D3277660())
            {
LABEL_178:
              if ((v15 & 0xC000000000000001) == 0)
              {
                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_251;
                }

                v29 = *(v15 + 32);

                goto LABEL_181;
              }

LABEL_249:

              v29 = MEMORY[0x1D38B45D0](0, v15);

LABEL_181:
              v139 = *(v4 + 712);
              v140 = *(v29 + 104);

              GEOAngleDifferenceDegrees();
              v3 = fabs(v141);
              v142 = v139;
              v15 = sub_1D3276F60();
              v31 = sub_1D3277370();
              if (!os_log_type_enabled(v15, v31))
              {

                goto LABEL_189;
              }

              v60 = *(v4 + 720);
              v29 = *(v4 + 712);
              v13 = swift_slowAlloc();
              *v13 = 134218240;
              *(v13 + 4) = v3;
              *(v13 + 12) = 2048;
              v14 = *(v29 + v60);
              if (v14 >> 62)
              {
                goto LABEL_265;
              }

              if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_266;
              }

              goto LABEL_184;
            }
          }

          else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_178;
          }

          __break(1u);
LABEL_248:
          __break(1u);
          goto LABEL_249;
        }

LABEL_245:
        v137 = MEMORY[0x1D38B45D0](0, v13);
        goto LABEL_176;
      }

LABEL_244:
      __break(1u);
      goto LABEL_245;
    }

    v29 = *(v15 + 32);

LABEL_108:
    if (*(v29 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
    {
      v102 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    }

    else
    {
      v102 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    }

    v60 = *(v29 + *v102);

    if (!v60)
    {
      goto LABEL_164;
    }

    v103 = *(*(v4 + 712) + OBJC_IVAR___MNMapMatcher__route);
    v104 = [v103 routeCoordinateForDistance:*(v60 + 16) beforeRouteCoordinate:100.0];
    v105 = [v103 routeCoordinateForDistance:v104 afterRouteCoordinate:200.0];
    v10 = sub_1D318011C();
    v15 = [v10 matchedSegmentsFromStart:v104 toEnd:v105];

    if (v15)
    {
      sub_1D315E9C4();
      v29 = sub_1D32771A0();
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v106 = *(v4 + 712);
    v107 = *(v106 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute);
    v208 = OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute;
    v209 = v106;
    *(v106 + OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute) = v29;

    v31 = v214;
    v108 = *(v4 + 760) & 0xFFFFFFFFFFFFFF8;
    if (v59)
    {
      if (v14 >= 0)
      {
        v110 = *(v4 + 760) & 0xFFFFFFFFFFFFFF8;
      }

      v109 = sub_1D3277660();
      if (!v109)
      {
LABEL_163:

        goto LABEL_164;
      }
    }

    else
    {
      v109 = *((*(v4 + 760) & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v109)
      {
        goto LABEL_163;
      }
    }

    v111 = 0;
    v112 = *(v4 + 760);
    v206 = v60;
    v207 = v112 & 0xC000000000000001;
    v201 = v13 + 32;
    v202 = v112 & 0xFFFFFFFFFFFFFF8;
    v203 = v109;
    v204 = v59;
    v213 = v7;
    v205 = v14;
    while (1)
    {
      if (v207)
      {
        v113 = v111;
        v217 = MEMORY[0x1D38B45D0](v111, v13);
        v114 = __OFADD__(v113, 1);
        v115 = v113 + 1;
        if (v114)
        {
          goto LABEL_216;
        }
      }

      else
      {
        if (v111 >= *(v202 + 16))
        {
          goto LABEL_231;
        }

        v217 = *(v201 + 8 * v111);
        v116 = v111;

        v114 = __OFADD__(v116, 1);
        v115 = v116 + 1;
        if (v114)
        {
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }
      }

      v210 = v115;
      v7 = *(v209 + v208);
      if (v7 >> 62)
      {
        if (v7 < 0)
        {
          v121 = *(v209 + v208);
        }

        v31 = sub_1D3277660();
      }

      else
      {
        v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = &off_1E8431000;

      if (v31)
      {
        break;
      }

LABEL_122:

      v59 = v204;
      v111 = v210;
      v31 = v214;
      v4 = v215;
      v7 = v213;
      v13 = v216;
      v14 = v205;
      v60 = v206;
      if (v210 == v203)
      {
        goto LABEL_163;
      }
    }

    v13 = 0;
    v59 = v7 & 0xC000000000000001;
    v4 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_135:
    if (v59)
    {
      v117 = MEMORY[0x1D38B45D0](v13, v7);
    }

    else
    {
      if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_213;
      }

      v117 = *(v7 + 8 * v13 + 32);
    }

    v29 = v117;
    v60 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    if (!sub_1D3277660())
    {
      goto LABEL_164;
    }
  }

  v14 = [v117 road];
  v10 = [v14 *(v15 + 3232)];

  v118 = *(v217 + 16);
  if (!v118)
  {

LABEL_134:
    ++v13;
    if (v60 == v31)
    {
      goto LABEL_122;
    }

    goto LABEL_135;
  }

  v14 = v118;
  v119 = [v14 *(v15 + 3232)];

  v120 = v10 == v119;
  v15 = 0x1E8431000;
  if (!v120)
  {
    goto LABEL_134;
  }

  v4 = v215;
  v122 = *(v215 + 720);
  v123 = *(v215 + 712);

  sub_1D315D460(0);
  v10 = v124;
  v29 = *(v123 + v122);
  if (v29 >> 62)
  {
    goto LABEL_255;
  }

  v125 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v13 = v216;
    if (!v125)
    {
      __break(1u);
      goto LABEL_257;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
LABEL_257:

      v126 = MEMORY[0x1D38B45D0](0, v29);

      goto LABEL_153;
    }

    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_262;
    }

    v126 = *(v29 + 32);

LABEL_153:
    v15 = *(v4 + 720);
    v60 = *(v4 + 712);
    v2 = *(v126 + 88);

    v31 = *(v60 + v15);
    if (!(v31 >> 62))
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_261;
      }

LABEL_155:

      if ((v31 & 0xC000000000000001) != 0)
      {
        goto LABEL_263;
      }

      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v127 = *(v31 + 32);

        goto LABEL_158;
      }

      __break(1u);
LABEL_265:
      if (sub_1D3277660())
      {
LABEL_184:
        v60 = *(v4 + 712);

        if ((v14 & 0xC000000000000001) != 0)
        {
          goto LABEL_267;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v14 + 32);

          goto LABEL_187;
        }

        __break(1u);
      }

      else
      {
LABEL_266:
        __break(1u);
LABEL_267:
        v29 = MEMORY[0x1D38B45D0](0, v14);
LABEL_187:

        v2 = *(v29 + 112);

        *(v13 + 14) = v2;
        _os_log_impl(&dword_1D311E000, v15, v31, "Best candidate connected similar road CD  %f compared to location course accuracy %f", v13, 0x16u);
        MEMORY[0x1D38B6000](v13, -1, -1);
        v13 = v216;
LABEL_189:

        v15 = *(*(v4 + 712) + *(v4 + 720));
        v31 = v214;
        if (!(v15 >> 62))
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_252;
          }

          goto LABEL_191;
        }

LABEL_251:
        if (sub_1D3277660())
        {
LABEL_191:
          if ((v15 & 0xC000000000000001) != 0)
          {
            goto LABEL_253;
          }

          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v143 = *(v15 + 32);

            goto LABEL_194;
          }

          __break(1u);
LABEL_255:
          v125 = sub_1D3277660();
          continue;
        }

LABEL_252:
        __break(1u);
LABEL_253:

        v143 = MEMORY[0x1D38B45D0](0, v15);

LABEL_194:
        v2 = *(v143 + 112);

        if (v3 > v2)
        {
          v144 = *(v4 + 728);
          v75 = 2;
          swift_bridgeObjectRelease_n();

LABEL_224:

          v74 = 0;
          goto LABEL_225;
        }

        v29 = *(*(v4 + 712) + *(v4 + 720));
        if (!(v29 >> 62))
        {
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_198;
          }

LABEL_274:
          v160 = *(v4 + 712);
          v15 = sub_1D3276F60();
          v161 = sub_1D3277370();
          if (!os_log_type_enabled(v15, v161))
          {

            goto LABEL_286;
          }

          v60 = *(v4 + 720);
          v162 = *(v4 + 712);
          v31 = swift_slowAlloc();
          *v31 = 134217984;
          v29 = *(v162 + v60);
          if (v29 >> 62)
          {
            goto LABEL_345;
          }

          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_346;
          }

          while (2)
          {
            if ((v29 & 0xC000000000000001) == 0)
            {
              if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v163 = *(v29 + 32);

                goto LABEL_280;
              }

              __break(1u);
LABEL_349:
              if (sub_1D3277660())
              {
LABEL_310:
                if ((v15 & 0xC000000000000001) != 0)
                {
                  goto LABEL_351;
                }

                if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v183 = *(v15 + 32);

                  goto LABEL_313;
                }

                __break(1u);
              }

              else
              {
LABEL_350:
                __break(1u);
LABEL_351:

                v183 = MEMORY[0x1D38B45D0](0, v15);

LABEL_313:
                if (*(v183 + *v60))
                {
                  v184 = v31;
                }

                else
                {
                  v184 = v10;
                }

                v185 = *(v183 + *v184);

                if (!v185)
                {
LABEL_364:
                  __break(1u);
                  return result;
                }

                v186 = *(v4 + 720);
                v187 = *(v4 + 712);
                v2 = *(v185 + 56);

                v15 = *(v187 + v186);
                if (!(v15 >> 62))
                {
                  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_319;
                  }

LABEL_354:
                  __break(1u);
                  goto LABEL_355;
                }
              }

              if (!sub_1D3277660())
              {
                goto LABEL_354;
              }

LABEL_319:
              if ((v15 & 0xC000000000000001) == 0)
              {
                if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v188 = *(v15 + 32);

                  goto LABEL_322;
                }

LABEL_358:
                __break(1u);
LABEL_359:
                v193 = MEMORY[0x1D38B45D0](0, v15);
                goto LABEL_327;
              }

LABEL_355:

              v188 = MEMORY[0x1D38B45D0](0, v15);

LABEL_322:
              v189 = *(v4 + 720);
              v190 = *(v4 + 712);
              v191 = *(v188 + 104);

              GEOAngleDifferenceDegrees();
              v2 = v192;
              v15 = *(v190 + v189);
              if (v15 >> 62)
              {
                if (sub_1D3277660())
                {
                  goto LABEL_324;
                }
              }

              else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_324:

                if ((v15 & 0xC000000000000001) != 0)
                {
                  goto LABEL_359;
                }

                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_361:
                  __break(1u);
LABEL_362:
                  __break(1u);
LABEL_363:
                  __break(1u);
                  goto LABEL_364;
                }

                v193 = *(v15 + 32);

LABEL_327:
                v194 = fabs(v2);

                v195 = *(v193 + 112);

                if (v195 < v194 && v3 < v194)
                {
                  v173 = sub_1D3276F60();
                  v196 = sub_1D3277370();
                  v197 = os_log_type_enabled(v173, v196);
                  v198 = *(v4 + 728);
                  if (v197)
                  {
                    v177 = swift_slowAlloc();
                    *v177 = 134218240;
                    *(v177 + 4) = v3;
                    *(v177 + 12) = 2048;
                    *(v177 + 14) = v194;
                    v178 = "Reroute due to best candidate road CD %f < than route match CD %f";
                    v179 = v196;
                    v180 = v173;
                    v181 = v177;
                    v182 = 22;
LABEL_307:
                    _os_log_impl(&dword_1D311E000, v180, v179, v178, v181, v182);
                    MEMORY[0x1D38B6000](v177, -1, -1);
                  }

                  else
                  {
LABEL_331:
                  }

                  v74 = 1;
                  v75 = 1;
                  goto LABEL_225;
                }

                v199 = *(v4 + 728);

LABEL_64:

                v74 = 0;
                v75 = 2;
                goto LABEL_225;
              }

              __break(1u);
              goto LABEL_358;
            }

LABEL_347:

            v163 = MEMORY[0x1D38B45D0](0, v29);

LABEL_280:
            v60 = *(v4 + 712);
            if (*(v163 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
            {
              v164 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
            }

            else
            {
              v164 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
            }

            v29 = *(v163 + *v164);

            if (!v29)
            {
              goto LABEL_363;
            }

            v2 = *(v29 + 56);

            *(v31 + 4) = v2;
            _os_log_impl(&dword_1D311E000, v15, v161, "Active RM course %f", v31, 0xCu);
            MEMORY[0x1D38B6000](v31, -1, -1);
LABEL_286:

            v165 = *(v4 + 712);
            v15 = *(v165 + *(v4 + 720));
            if (!(v15 >> 62))
            {
              if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_288;
              }

LABEL_337:
              __break(1u);
              goto LABEL_338;
            }

            if ((v15 & 0x8000000000000000) != 0)
            {
              v200 = *(v165 + *(v4 + 720));
            }

            if (!sub_1D3277660())
            {
              goto LABEL_337;
            }

LABEL_288:
            if ((v15 & 0xC000000000000001) != 0)
            {
LABEL_338:

              v166 = MEMORY[0x1D38B45D0](0, v15);

LABEL_291:
              v60 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
              v31 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
              v10 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
              if (*(v166 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
              {
                v167 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
              }

              else
              {
                v167 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
              }

              v168 = *(v166 + *v167);

              if (!v168)
              {
                goto LABEL_305;
              }

              v29 = *(v4 + 720);
              v169 = *(v4 + 712);

              v15 = *(v169 + v29);
              if (v15 >> 62)
              {
                goto LABEL_341;
              }

              v161 = v216;
              if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_342;
              }
            }

            else
            {
              if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v166 = *(v15 + 32);

                goto LABEL_291;
              }

              __break(1u);
LABEL_340:
              __break(1u);
LABEL_341:
              v161 = v216;
              if (!sub_1D3277660())
              {
LABEL_342:
                __break(1u);
LABEL_343:

                v170 = MEMORY[0x1D38B45D0](0, v15);

LABEL_300:
                if (*(v170 + *v60))
                {
                  v171 = v31;
                }

                else
                {
                  v171 = v10;
                }

                v172 = *(v170 + *v171);

                if (!v172)
                {
                  goto LABEL_362;
                }

                v2 = *(v172 + 56);

                if (v2 < 0.0)
                {
LABEL_305:

                  v173 = sub_1D3276F60();
                  v174 = sub_1D3277370();
                  v175 = os_log_type_enabled(v173, v174);
                  v176 = *(v4 + 728);
                  if (!v175)
                  {
                    goto LABEL_331;
                  }

                  v177 = swift_slowAlloc();
                  *v177 = 0;
                  v178 = "Reroute due to best candidate road having close enough course to user and no route match";
                  v179 = v174;
                  v180 = v173;
                  v181 = v177;
                  v182 = 2;
                  goto LABEL_307;
                }

                v15 = *(*(v4 + 712) + *(v4 + 720));
                if (v15 >> 62)
                {
                  goto LABEL_349;
                }

                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_350;
                }

                goto LABEL_310;
              }
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              goto LABEL_343;
            }

            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v170 = *(v15 + 32);

              goto LABEL_300;
            }

            __break(1u);
LABEL_345:
            if (sub_1D3277660())
            {
              continue;
            }

            break;
          }

LABEL_346:
          __break(1u);
          goto LABEL_347;
        }
      }

      if (!sub_1D3277660())
      {
        goto LABEL_274;
      }

LABEL_198:
      if ((v29 & 0xC000000000000001) != 0)
      {

        v145 = MEMORY[0x1D38B45D0](0, v29);

        if (v10)
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_340;
        }

        v145 = *(v29 + 32);

        if (v10)
        {
LABEL_201:
          v146 = MEMORY[0x1D38B45D0](0, v13);
LABEL_273:
          v60 = *(v146 + 16);
          v159 = v60;

          v29 = *(v145 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
          *(v145 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road) = v60;

          goto LABEL_274;
        }
      }

      v146 = *(v13 + 32);

      goto LABEL_273;
    }

    break;
  }

  if (v31 < 0)
  {
    v158 = *(v60 + v15);
  }

  if (sub_1D3277660())
  {
    goto LABEL_155;
  }

LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  v127 = MEMORY[0x1D38B45D0](0, v31);
LABEL_158:

  v128 = v2 + v2;
  v129 = sub_1D315E5E0(v127);

  if (v128 + v129 <= 20.0)
  {
    v130 = v128 + v129;
  }

  else
  {
    v130 = 20.0;
  }

  v74 = (v10 & 1) == 0 && *(v206 + 64) <= v130;

  v147 = sub_1D3276F60();
  v148 = sub_1D3277370();

  v149 = os_log_type_enabled(v147, v148);
  v150 = *(v4 + 728);
  if (v149)
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v218 = v152;
    *v151 = 136315650;
    if (v74)
    {
      v153 = 0x676E6F727453;
    }

    else
    {
      v153 = 1801545047;
    }

    if (v74)
    {
      v154 = 0xE600000000000000;
    }

    else
    {
      v154 = 0xE400000000000000;
    }

    v155 = sub_1D312BA30(v153, v154, &v218);

    *(v151 + 4) = v155;
    v4 = v215;
    *(v151 + 12) = 2048;
    *(v151 + 14) = *(v206 + 64);
    *(v151 + 22) = 2048;
    *(v151 + 24) = v130;
    _os_log_impl(&dword_1D311E000, v147, v148, "%s On Route due to one of the candidate roads being along the active Route Match and distance from active route match %f versus expanded uncertainty radius %f", v151, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v152);
    MEMORY[0x1D38B6000](v152, -1, -1);
    MEMORY[0x1D38B6000](v151, -1, -1);

    v75 = 2;
  }

  else
  {

    v75 = 2;
  }

LABEL_225:
  v157 = *(v4 + 8);

  return v157(v74 | (v75 << 8));
}

void sub_1D315D460(char a1)
{
  v9 = OBJC_IVAR___MNMapMatcher__locationHistory;
  swift_beginAccess();
  v10 = *&v1[v9];
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      return;
    }

LABEL_3:
    v11 = *&v1[v9];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v59 = *&v1[v9];

      v12 = MEMORY[0x1D38B45D0](0, v11);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v12 = *(v11 + 32);
    }

    v3 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch;
    v2 = *(v12 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch);

    v11 = *&v1[v9];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v60 = *&v1[v9];

      v13 = MEMORY[0x1D38B45D0](1, v11);

LABEL_9:
      v14 = *(v13 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch);

      if (v2 != v14)
      {
        return;
      }

      v11 = *&v1[v9];
      if ((v11 & 0xC000000000000001) == 0)
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_56;
        }

        v15 = *(v11 + 32);

LABEL_14:
        v4 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        v5 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        if (*(v15 + *v3))
        {
          v16 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
        }

        else
        {
          v16 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
        }

        v11 = *(v15 + *v16);

        if (!v11)
        {
LABEL_38:
          if (a1)
          {
            *&v1[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = 0;
          }

          return;
        }

        v13 = *&v1[v9];
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
            goto LABEL_58;
          }

          v17 = *(v13 + 40);

          goto LABEL_21;
        }

LABEL_56:

        v17 = MEMORY[0x1D38B45D0](1, v13);

LABEL_21:
        if (*(v17 + *v3))
        {
          v18 = v4;
        }

        else
        {
          v18 = v5;
        }

        v13 = *(v17 + *v18);

        if (v13)
        {
          v2 = *&v1[v9];
          if ((v2 & 0xC000000000000001) == 0)
          {
            if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_61:
              swift_once();
LABEL_32:
              v36 = sub_1D3276F80();
              __swift_project_value_buffer(v36, qword_1EC760888);
              v37 = sub_1D32773B0();
              v38 = v1;
              v39 = sub_1D3276F60();

              if (os_log_type_enabled(v39, v37))
              {
                v40 = swift_slowAlloc();
                *v40 = 134218496;
                *(v40 + 4) = Distance;
                *(v40 + 12) = 2048;
                *(v40 + 14) = v7;
                *(v40 + 22) = 2048;
                *(v40 + 24) = *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance];
                _os_log_impl(&dword_1D311E000, v39, v37, "Movement distance since last fix: %fm GPS location displacement, %fm along route. Previous consecutive backwards distance along route: %fm", v40, 0x20u);
                MEMORY[0x1D38B6000](v40, -1, -1);
              }

              v41 = *(v11 + 16);
              v42 = *(v11 + 20);
              v43 = *(v13 + 16);
              v44 = *(v13 + 20);
              if (sub_1D3277490())
              {
                v45 = OBJC_IVAR___MNMapMatcher__backwardsMovementDistance;
                *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = v7 + *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance];
                v46 = sub_1D32773B0();
                v47 = v38;
                v48 = sub_1D3276F60();

                if (os_log_type_enabled(v48, v46))
                {
                  v49 = swift_slowAlloc();
                  *v49 = 134217984;
                  *(v49 + 4) = *&v38[v45];
                  _os_log_impl(&dword_1D311E000, v48, v46, "Backwards movement along route detected. New consecutive backwards distance along route: %fm", v49, 0xCu);
                  MEMORY[0x1D38B6000](v49, -1, -1);
                }

                else
                {
                }

                v57 = *&v38[v45] > 5.0;
              }

              else
              {
                v50 = *(v11 + 16);
                v51 = *(v11 + 20);
                v52 = *(v13 + 16);
                v53 = *(v13 + 20);
                v54 = sub_1D3277480();

                if (v54 & 1) != 0 && (a1)
                {
                  v55 = OBJC_IVAR___MNMapMatcher__backwardsMovementDistance;
                  v56 = *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] - Distance;
                  *&v38[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = v56;
                  if (v56 < 0.0)
                  {
                    *&v38[v55] = 0;
                  }
                }
              }

              return;
            }

            v19 = *(v2 + 32);

LABEL_28:
            v20 = v19[2];
            v21 = v19[3];
            v22 = v19[4];

            v24 = MEMORY[0x1D38B43F0](v23, v20, v21, v22);
            v26 = v25;
            v27 = *&v1[v9];
            if ((v27 & 0xC000000000000001) != 0)
            {
              v61 = *&v1[v9];

              v28 = MEMORY[0x1D38B45D0](1, v27);
            }

            else
            {
              if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                __break(1u);
                return;
              }

              v28 = *(v27 + 40);
            }

            v29 = v28[2];
            v30 = v28[3];
            v31 = v28[4];

            v33 = MEMORY[0x1D38B43F0](v32, v29, v30, v31);
            Distance = GEOCoordinateGetDistance(v24, v26, v33, v34);
            [*&v1[OBJC_IVAR___MNMapMatcher__route] distanceBetweenRouteCoordinate:*(v11 + 16) andRouteCoordinate:*(v13 + 16)];
            v7 = v35;
            if (qword_1EC75C008 == -1)
            {
              goto LABEL_32;
            }

            goto LABEL_61;
          }

LABEL_58:

          v19 = MEMORY[0x1D38B45D0](0, v2);

          goto LABEL_28;
        }

        goto LABEL_38;
      }

LABEL_54:

      v15 = MEMORY[0x1D38B45D0](0, v11);

      goto LABEL_14;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v13 = *(v11 + 40);

      goto LABEL_9;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v10 < 0)
  {
    v58 = *&v1[v9];
  }

  if (sub_1D3277660() >= 2)
  {
    goto LABEL_3;
  }
}

uint64_t sub_1D315DA80(double *a1)
{
  if (sub_1D315DB10(a1))
  {
LABEL_4:
    if (!*(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter) && a1[15] + a1[16] < 1.0)
    {
      *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter) = a1;
    }

    return 1;
  }

  else
  {
    while (1)
    {
      result = *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter);
      if (!result)
      {
        break;
      }

      *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter) = 0;

      if (sub_1D315DB10(a1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D315DB10(double *a1)
{
  v3 = OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter;
  v4 = *(v1 + OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter);
  if (*(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) != 1)
  {
    v6 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    if (!v4)
    {
      LODWORD(v10) = 1;
      v19 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);
      if (v19)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    v5 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v8 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
LABEL_10:
    if (*(v4 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    v10 = *(v4 + v9);
    if (v10)
    {
      v12 = v10[5];
      v11 = v10[6];
      v13 = 5.0;
      v14 = v10[4];
LABEL_32:
      v26 = v13 + sub_1D315E5E0(a1) + -1.85;
      v27 = *(v1 + v3);
      if (v27 && (!*(v27 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) ? (v28 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch) : (v28 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch), *(v27 + *v28)))
      {
        v29 = 0xE600000000000000;
        v30 = 0x64656E6E6950;
      }

      else
      {
        v29 = 0xE500000000000000;
        v30 = 0x6574756F52;
      }

      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      sub_1D32776F0();
      MEMORY[0x1D38B3FE0](v30, v29);

      MEMORY[0x1D38B3FE0](0xD000000000000018, 0x80000001D328F2D0);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](0x75636341203D206DLL, 0xED00002079636172);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](0x2064616F52202B20, 0xEE00206874646957);
      sub_1D3277310();
      MEMORY[0x1D38B3FE0](0x322F362E33202D20, 0xE800000000000000);
      v31 = MEMORY[0x1D38B43E0](a1[2], a1[3], a1[4]);
      v33 = v32;
      v34 = MEMORY[0x1D38B43E0](v14, v12, v11);
      if (GEOCoordinateGetDistance(v31, v33, v34, v35) > v26)
      {
        if (qword_1EC75C008 != -1)
        {
          swift_once();
        }

        v36 = sub_1D3276F80();
        __swift_project_value_buffer(v36, qword_1EC760888);
        v37 = sub_1D32773B0();

        v24 = sub_1D3276F60();

        if (!os_log_type_enabled(v24, v37))
        {

          return 0;
        }

        v25 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v45[0] = v38;
        *v25 = 136315138;
        v39 = sub_1D312BA30(0, 0xE000000000000000, v45);

        *(v25 + 4) = v39;
        _os_log_impl(&dword_1D311E000, v24, v37, "Current Location not inside %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x1D38B6000](v38, -1, -1);
        goto LABEL_44;
      }

      if (qword_1EC75C008 != -1)
      {
        swift_once();
      }

      v40 = sub_1D3276F80();
      __swift_project_value_buffer(v40, qword_1EC760888);
      v41 = sub_1D32773B0();

      v17 = sub_1D3276F60();

      if (!os_log_type_enabled(v17, v41))
      {

        return 1;
      }

      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v18 = 136315138;
      v43 = sub_1D312BA30(0, 0xE000000000000000, v45);

      *(v18 + 4) = v43;
      _os_log_impl(&dword_1D311E000, v17, v41, "Current Location is inside %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1D38B6000](v42, -1, -1);
      goto LABEL_50;
    }

    v19 = *(a1 + v8);
    if (v19)
    {
LABEL_20:
      v12 = v19[5];
      v11 = v19[6];
      v13 = 5.0;
      v14 = v19[4];
      if (v10)
      {
        v20 = a1[15];
        if (v20 >= 6.0)
        {
          v21 = 0.0;
        }

        else if (v20 <= 1.0)
        {
          v21 = 5.0;
        }

        else
        {
          v21 = (v20 + -1.0) / 5.0 * 5.0 + 0.0;
        }

        v13 = a1[11] + v21;
      }

      goto LABEL_32;
    }

LABEL_25:
    if (qword_1EC75C008 != -1)
    {
      swift_once();
    }

    v22 = sub_1D3276F80();
    __swift_project_value_buffer(v22, qword_1EC760888);
    v23 = sub_1D3277390();
    v24 = sub_1D3276F60();
    if (!os_log_type_enabled(v24, v23))
    {
      goto LABEL_45;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D311E000, v24, v23, "No Pinned Radius center or Current Location Active Route Match location coordinate for Route Radius (speed based) center", v25, 2u);
LABEL_44:
    MEMORY[0x1D38B6000](v25, -1, -1);
LABEL_45:

    return 0;
  }

  if (v4)
  {
    v5 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
    v6 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    v7 = *(v4 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) ? OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch : OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
    if (*(v4 + v7))
    {
      v8 = OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
      goto LABEL_10;
    }
  }

  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v15 = sub_1D3276F80();
  __swift_project_value_buffer(v15, qword_1EC760888);
  v16 = sub_1D32773B0();
  v17 = sub_1D3276F60();
  if (!os_log_type_enabled(v17, v16))
  {
    goto LABEL_51;
  }

  v18 = swift_slowAlloc();
  *v18 = 0;
  _os_log_impl(&dword_1D311E000, v17, v16, "Do not check normal route radius because Connected RM is active RM and no pinned route radius is set.", v18, 2u);
LABEL_50:
  MEMORY[0x1D38B6000](v18, -1, -1);
LABEL_51:

  return 1;
}

id sub_1D315E1D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapMatcher_Driving();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D315E22C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  _s14RecentLocationCMa();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1D3277660();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1D3277660();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1D315E34C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D3277660();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1D3277660();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1D3141D18(result);

  return sub_1D315E22C(v6, v5, 1, v3);
}

uint64_t sub_1D315E438()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D3157790;

  return sub_1D31576F4(v2, v3);
}

uint64_t sub_1D315E4D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3125778;

  return sub_1D315788C(a1, v5);
}

unint64_t sub_1D315E588()
{
  result = qword_1EC75C710;
  if (!qword_1EC75C710)
  {
    sub_1D3276D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C710);
  }

  return result;
}

double sub_1D315E5E0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch))
  {
    v2 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_connectedRouteMatch;
  }

  else
  {
    v2 = &OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch;
  }

  v3 = *(a1 + *v2);
  if (v3 && (v4 = *(v3 + 72)) != 0 && (v5 = [v4 road]) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_road);
    v5 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = v5;
  [v7 roadWidth];
  v9 = v8;

  if (v9 > 0.0)
  {

    return v9;
  }

LABEL_11:
  if (qword_1EC75C008 != -1)
  {
    swift_once();
  }

  v10 = sub_1D3276F80();
  __swift_project_value_buffer(v10, qword_1EC760888);
  v11 = sub_1D3277380();
  v12 = v6;
  v13 = sub_1D3276F60();

  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    if (v6)
    {
      v16 = [v12 internalRoadName];
      if (v16)
      {
        v17 = v16;
        sub_1D32770C0();
      }
    }

    v18 = sub_1D3277160();
    v20 = sub_1D312BA30(v18, v19, &v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1D311E000, v13, v11, "Road %s has 0 or no road width", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38B6000](v15, -1, -1);
    MEMORY[0x1D38B6000](v14, -1, -1);
  }

  if (v6 && (v21 = [v12 travelDirection], v12, !v21))
  {
    return 7.4;
  }

  else
  {
    return 3.7;
  }
}

uint64_t sub_1D315E880@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = a2;
  a3 = a1;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_19:
    v10 = a3;
    v11 = sub_1D3277660();
    result = sub_1D3277660();
    if (result < 0)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0)
    {
      v12 = v10;
    }

    if (v10)
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    result = sub_1D3277660();
    if (result >= v7)
    {
      goto LABEL_10;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (result < v7)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0 && v7)
  {
    _s14RecentLocationCMa();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1D3277700();
      v8 = v9;
    }

    while (v7 != v9);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_1D32777E0();
}

unint64_t sub_1D315E9C4()
{
  result = qword_1EC75C4A0;
  if (!qword_1EC75C4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75C4A0);
  }

  return result;
}

uint64_t sub_1D315EA10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    v6 = sub_1D32771A0();
  }

  v9 = a3;
  v10 = a4;
  v8(v6, a3, a4);
}

uint64_t sub_1D315EAD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

Navigation::CommuteRouteRequestPurpose_optional __swiftcall CommuteRouteRequestPurpose.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1D315EB4C@<X0>(void *result@<X0>, char *a2@<X8>)
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

id CommuteRouteRequestParameters.__allocating_init(purpose:waypoints:isEnroute:predictedEntryDate:predictedExitDate:requireFamiliarRoute:cacheOptions:internalInfo:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  v19 = *a7;
  v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose] = *a1;
  *&v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints] = a2;
  v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute] = a3;
  sub_1D315EDF4(a4, &v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate]);
  sub_1D315EDF4(a5, &v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate]);
  v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute] = a6;
  *&v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions] = v19;
  *&v18[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo] = a8;
  v22.receiver = v18;
  v22.super_class = v9;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_1D3125FBC(a5, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(a4, &qword_1EC75C4F0, &qword_1D328B580);
  return v20;
}

id CommuteRouteRequestParameters.init(purpose:waypoints:isEnroute:predictedEntryDate:predictedExitDate:requireFamiliarRoute:cacheOptions:internalInfo:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v19 = *a7;
  v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose] = *a1;
  *&v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints] = a2;
  v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute] = a3;
  sub_1D315EDF4(a4, &v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate]);
  sub_1D315EDF4(a5, &v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate]);
  v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute] = a6;
  *&v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions] = v19;
  *&v9[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo] = a8;
  v22.receiver = v9;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_1D3125FBC(a5, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(a4, &qword_1EC75C4F0, &qword_1D328B580);
  return v20;
}

uint64_t sub_1D315EDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CommuteRouteRequestParameters.CacheOptions.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1D3141080(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D3141080((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, "networkRoutes");
  *(v5 + 23) = -4864;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D3141080(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1D3141080((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "cachedRoutes");
    v8[45] = 0;
    *(v8 + 23) = -5120;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C340, &qword_1D328ACC8);
  sub_1D315F1D8();
  v9 = sub_1D3277080();
  v11 = v10;

  MEMORY[0x1D38B3FE0](v9, v11);

  MEMORY[0x1D38B3FE0](93, 0xE100000000000000);
  return 91;
}

BOOL sub_1D315F0A4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D315F0D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D315F100@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_1D315F1D8()
{
  result = qword_1EC75C780;
  if (!qword_1EC75C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75C340, &qword_1D328ACC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C780);
  }

  return result;
}

void *CommuteRouteRequestParameters.internalInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
  v2 = v1;
  return v1;
}

id CommuteRouteRequestParameters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall CommuteRouteRequestParameters.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose);
  v12 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints);
  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v14 = sub_1D3277190();
  v15 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute);
  v17 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeBool:v16 forKey:v17];

  sub_1D315EDF4(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate, v10);
  v18 = sub_1D3276D30();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v10, 1, v18) != 1)
  {
    v21 = sub_1D3276CD0();
    (*(v19 + 8))(v10, v18);
  }

  v22 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  sub_1D315EDF4(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate, v8);
  if (v20(v8, 1, v18) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_1D3276CD0();
    (*(v19 + 8))(v8, v18);
  }

  v24 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute);
  v26 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeBool:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions);
  v28 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeInteger:v27 forKey:v28];

  v29 = *(v2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
  v30 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
}

id CommuteRouteRequestParameters.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CommuteRouteRequestParameters.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v55[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v55[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v55[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55[-v21];
  v23 = sub_1D32770B0();
  v24 = [a1 decodeIntegerForKey_];

  if (v24)
  {
    if (v24 != 1)
    {

      swift_getObjectType();
      v31 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
      v32 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v58 = 1;
  }

  else
  {
    v58 = 0;
  }

  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v25 = sub_1D32775D0();
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v26 = v25;
  }

  v57 = v26;
  v27 = sub_1D32770B0();
  v56 = [a1 decodeBoolForKey_];

  sub_1D3126084(0, &qword_1EC75C790, 0x1E695DF00);
  v28 = sub_1D32775C0();
  if (v28)
  {
    v29 = v28;
    sub_1D3276D00();

    v30 = sub_1D3276D30();
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
  }

  else
  {
    v34 = sub_1D3276D30();
    (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
  }

  sub_1D31632E8(v20, v22);
  v35 = sub_1D32775C0();
  v59 = v2;
  if (v35)
  {
    v36 = v35;
    sub_1D3276D00();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = sub_1D3276D30();
  (*(*(v38 - 8) + 56))(v14, v37, 1, v38);
  sub_1D31632E8(v14, v17);
  v39 = sub_1D32770B0();
  v40 = [a1 decodeBoolForKey_];

  v41 = sub_1D32770B0();
  v42 = [a1 decodeIntegerForKey_];

  type metadata accessor for MNCommuteRouteSet.InternalInfo();
  v43 = sub_1D32775C0();
  sub_1D315EDF4(v22, v11);
  sub_1D315EDF4(v17, v8);
  v44 = v22;
  v45 = v17;
  v46 = v11;
  v47 = v8;
  v48 = ObjectType;
  v49 = objc_allocWithZone(ObjectType);
  v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose] = v58;
  *&v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints] = v57;
  v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_isEnroute] = v56;
  sub_1D315EDF4(v46, &v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate]);
  sub_1D315EDF4(v47, &v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate]);
  v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_requireFamiliarRoute] = v40;
  *&v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions] = v42;
  *&v49[OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo] = v43;
  v61.receiver = v49;
  v61.super_class = v48;
  v50 = v43;
  v33 = objc_msgSendSuper2(&v61, sel_init);

  sub_1D3125FBC(v47, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(v46, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(v45, &qword_1EC75C4F0, &qword_1D328B580);
  sub_1D3125FBC(v44, &qword_1EC75C4F0, &qword_1D328B580);
  v51 = v59;
  swift_getObjectType();
  v52 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x30);
  v53 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x34);
  swift_deallocPartialClassInstance();
  return v33;
}

Swift::Void __swiftcall MNCommuteRouteSet.encode(with:)(NSCoder with)
{
  v3 = [v1 routes];
  if (!v3)
  {
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    sub_1D32771A0();
    v3 = sub_1D3277190();
  }

  v4 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *&v1[OBJC_IVAR___MNCommuteRouteSet__fetchDate];
  v6 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *&v1[OBJC_IVAR___MNCommuteRouteSet__internalInfo];
  v8 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id MNCommuteRouteSet.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v4 = sub_1D32775D0();
  if (v4)
  {
    v5 = v4;
    sub_1D3126084(0, &qword_1EC75C790, 0x1E695DF00);
    v6 = sub_1D32775C0();
    if (v6)
    {
      *&v2[OBJC_IVAR___MNCommuteRouteSet_routes] = v5;
      *&v2[OBJC_IVAR___MNCommuteRouteSet__fetchDate] = v6;
      v7 = v6;
      type metadata accessor for MNCommuteRouteSet.InternalInfo();
      v8 = v7;
      v9 = sub_1D32775C0();

      *&v2[OBJC_IVAR___MNCommuteRouteSet__internalInfo] = v9;
      v13.receiver = v2;
      v13.super_class = MNCommuteRouteSet;
      v10 = objc_msgSendSuper2(&v13, sel_init);

      return v10;
    }
  }

  type metadata accessor for MNCommuteRouteSet(v12);
  swift_deallocPartialClassInstance();
  return 0;
}

id static MNCommuteRouteManager.shared.getter()
{
  if (qword_1EC75BFD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC75C720;

  return v1;
}

id sub_1D3160754()
{
  result = [objc_allocWithZone(MNCommuteRouteManager) init];
  qword_1EC75C720 = result;
  return result;
}

uint64_t MNCommuteRouteManager.CommuteRouteManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

uint64_t sub_1D3160898()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

uint64_t sub_1D31608E0()
{
  v1 = *v0;
  sub_1D3277980();
  MEMORY[0x1D38B4850](v1);
  return sub_1D32779B0();
}

uint64_t MNCommuteRouteManager.requestCommuteRoutes(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D31609CC;

  return sub_1D3165B64(a1);
}

uint64_t sub_1D31609CC(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

char *sub_1D3160AD0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
  if (v4)
  {
    v5 = OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo;
    v6 = *&v4[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo];
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v19 = *&v4[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo];
      }

      v7 = sub_1D3277660();
      v43 = v3;
      v44 = v4;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = a3;
      v44 = *(a2 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
      if (v7)
      {
LABEL_4:
        v46 = MEMORY[0x1E69E7CC0];
        v8 = v4;
        result = sub_1D314B484(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          __break(1u);
          goto LABEL_38;
        }

        v41 = v5;
        v10 = 0;
        v11 = v46;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1D38B45D0](v10, v6);
          }

          else
          {
            v12 = *(v6 + 8 * v10 + 32);
          }

          v13 = v12;
          v15 = *&v12[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID];
          v14 = *&v12[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID + 8];

          v17 = *(v46 + 16);
          v16 = *(v46 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1D314B484((v16 > 1), v17 + 1, 1);
          }

          ++v10;
          *(v46 + 16) = v17 + 1;
          v18 = v46 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
        }

        while (v7 != v10);
        v4 = v44;
        v5 = v41;
LABEL_17:
        sub_1D3177B3C(v11);
        v21 = objc_allocWithZone(MEMORY[0x1E695DF70]);
        v22 = sub_1D3277190();

        v23 = [v21 initWithArray_];

        [a1 setDisplayedBannerIds_];
        result = [objc_allocWithZone(MEMORY[0x1E69A1BF0]) init];
        if (!result)
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v24 = result;

        v25 = *&v4[v5];
        if (v25 >> 62)
        {
          if (v25 < 0)
          {
            v40 = *&v4[v5];
          }

          v26 = sub_1D3277660();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v27 = MEMORY[0x1E69E7CC0];
        if (!v26)
        {
          goto LABEL_30;
        }

        v47 = MEMORY[0x1E69E7CC0];
        result = sub_1D314B464(0, v26 & ~(v26 >> 63), 0);
        if ((v26 & 0x8000000000000000) == 0)
        {
          v42 = v24;
          v28 = 0;
          v27 = v47;
          do
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x1D38B45D0](v28, v25);
            }

            else
            {
              v29 = *(v25 + 8 * v28 + 32);
            }

            v30 = v29;
            v31 = *&v29[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo];
            v32 = *&v29[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo + 8];
            sub_1D3166AC0(v31, v32);

            v34 = *(v47 + 16);
            v33 = *(v47 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_1D314B464((v33 > 1), v34 + 1, 1);
            }

            ++v28;
            *(v47 + 16) = v34 + 1;
            v35 = v47 + 16 * v34;
            *(v35 + 32) = v31;
            *(v35 + 40) = v32;
          }

          while (v26 != v28);
          v4 = v44;
          v24 = v42;
LABEL_30:
          sub_1D3177C3C(v27);

          v36 = objc_allocWithZone(MEMORY[0x1E695DF70]);
          v37 = sub_1D3277190();

          v38 = [v36 initWithArray_];

          [v24 setDisplayedBannerEventInfos_];
          [a1 setClientFeedbackInfo_];

          v3 = v43;
          goto LABEL_31;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    v20 = v4;
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

LABEL_31:
  swift_beginAccess();
  v39 = *(v3 + 16);
  *(v3 + 16) = a1;

  return a1;
}

uint64_t sub_1D3160EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v7[22] = a2;
  v7[23] = a3;
  v7[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3160EF0, 0, 0);
}

uint64_t sub_1D3160EF0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 19;
  v6 = v0[26];
  v7 = v0[27];
  v10 = v0 + 24;
  v8 = v0[24];
  v9 = v10[1];
  v11 = v1[22];
  v12 = v1[23];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D31610D8;
  v13 = swift_continuation_init();
  swift_beginAccess();
  *(v11 + 16) = v13;
  v14 = [objc_opt_self() sharedService];
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = v6;
  v15[4] = v11;
  v15[5] = v7;
  v1[14] = sub_1D3166E08;
  v1[15] = v15;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D315EA10;
  v1[13] = &block_descriptor_72;
  v16 = _Block_copy(v4);
  v17 = v1[15];

  v18 = v7;

  v19 = [v14 requestRoutes:v8 handler:v16];
  _Block_release(v16);

  v20 = *v12;
  *v12 = v19;

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D31610D8()
{
  v1 = *v0;
  v3 = *v0;
  *(v1 + 224) = *(*v0 + 152);
  *(v1 + 161) = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D31611DC, 0, 0);
}

uint64_t sub_1D31611DC()
{
  v1 = *(v0 + 161);
  v2 = *(v0 + 168);
  *v2 = *(v0 + 224);
  *(v2 + 8) = v1;
  return (*(v0 + 8))();
}

void sub_1D3161208(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1D3276D30();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a1 >> 62)
  {
    if (sub_1D3277660())
    {
      goto LABEL_4;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D38B45D0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v17 = *(a1 + 32);
  }

  v18 = v17;
  v19 = [v17 routeInitializerData];

  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = [v19 directionsResponse];

LABEL_11:
  swift_beginAccess();
  v21 = *(a4 + 16);
  *(a4 + 16) = v20;

  swift_beginAccess();
  v22 = *(a5 + 16);
  *(a5 + 16) = a2;
  v23 = a2;

  if (a2)
  {
    swift_beginAccess();
    v24 = *(a6 + 16);
    if (v24)
    {
      v48 = 1;
      v25 = a2;
      v26 = *(*(v24 + 64) + 40);
      *v26 = a2;
      *(v26 + 8) = v48;
LABEL_33:
      swift_continuation_resume();
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (!a1)
  {
    goto LABEL_31;
  }

  a2 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_30:
    if (sub_1D3277660())
    {
      goto LABEL_17;
    }

LABEL_31:
    swift_beginAccess();
    v42 = *(a6 + 16);
    if (v42)
    {
      sub_1D3166B68();
      v43 = swift_allocError();
      *v44 = 0;
      v48 = 1;
      v45 = *(*(v42 + 64) + 40);
      *v45 = v43;
      *(v45 + 8) = 1;
      goto LABEL_33;
    }

LABEL_34:
    swift_beginAccess();
    *(a6 + 16) = 0;
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1D38B45D0](0, a1);
LABEL_20:
    v28 = v27;
    v29 = [v27 routeInitializerData];

    if (v29 && (v30 = [v29 directionsResponse], v29, v30))
    {
      v31 = *(a7 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_internalInfo);
      objc_allocWithZone(type metadata accessor for MNCommuteRouteSet.InternalInfo());
      v32 = v31;
      sub_1D3166E14(v30, v31);
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    sub_1D3276D10();
    v35 = objc_allocWithZone(MNCommuteRouteSet);
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    v36 = v34;
    v37 = sub_1D3277190();
    v38 = sub_1D3276CD0();
    v39 = [v35 initWith:v37 fetchDate:v38 internalInfo:v36];

    (*(v47 + 8))(v16, v13);
    swift_beginAccess();
    v40 = *(a6 + 16);
    if (v40)
    {
      v48 = 0;
      v41 = *(*(v40 + 64) + 40);
      *v41 = v39;
      *(v41 + 8) = 0;
      swift_continuation_resume();
    }

    else
    {
    }

    goto LABEL_34;
  }

  if (a2[2])
  {
    v27 = *(a1 + 32);
    goto LABEL_20;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D3161680(id *a1, uint64_t *a2)
{
  if (qword_1EC75BFE8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D3276F80();
  __swift_project_value_buffer(v4, qword_1EC75C750);
  v5 = sub_1D3276F60();
  v6 = sub_1D32773B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v5, v6, "Cancelling request.", v7, 2u);
    MEMORY[0x1D38B6000](v7, -1, -1);
  }

  [*a1 cancel];
  swift_beginAccess();
  v8 = *a2;
  if (*a2)
  {
    sub_1D3166B68();
    v9 = swift_allocError();
    *v10 = 1;
    v11 = *(*(v8 + 64) + 40);
    *v11 = v9;
    *(v11 + 8) = 1;
    swift_continuation_resume();
  }

  result = swift_beginAccess();
  *a2 = 0;
  return result;
}

uint64_t sub_1D3161804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  v8[29] = v9;
  v10 = *(v9 - 8);
  v8[30] = v10;
  v11 = *(v10 + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D31618D8, 0, 0);
}

uint64_t sub_1D31618D8()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = sub_1D3276BE0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[30];
  v9 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[24];
  v13 = v0[25];
  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v14 = sub_1D3277190();
  [v12 timeSinceRecordingBegan];
  [v12 recordDirectionsRequest:v13 response:v5 error:v7 waypoints:v14 selectedRouteIndex:0 requestTimestamp:0.0 responseTimestamp:v15];

  v0[2] = v0;
  v0[3] = sub_1D3161B54;
  swift_continuation_init();
  v0[17] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1D3277210();
  (*(v8 + 32))(boxed_opaque_existential_1, v9, v10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D3161C94;
  v0[13] = &block_descriptor_66;
  [v12 saveTraceWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v10);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D3161B54()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D3161C34, 0, 0);
}

uint64_t sub_1D3161C34()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D3161C94(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  return sub_1D3277230();
}

char *MNCommuteRouteManagerCancellableRequest.init(task:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v2[OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task];
  *&v2[OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task] = a1;

  return v2;
}

Swift::Void __swiftcall MNCommuteRouteManagerCancellableRequest.cancel()()
{
  v1 = OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task;
  if (*(v0 + OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task))
  {
    v2 = v0;
    v3 = qword_1EC75BFE8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1D3276F80();
    __swift_project_value_buffer(v4, qword_1EC75C750);
    v5 = sub_1D3276F60();
    v6 = sub_1D32773B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D311E000, v5, v6, "Cancelling commute route request.", v7, 2u);
      MEMORY[0x1D38B6000](v7, -1, -1);
    }

    sub_1D32772E0();

    v8 = *(v2 + v1);
    *(v2 + v1) = 0;
  }
}

id _sSo17MNCommuteRouteSetC10NavigationEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id MNCommuteRouteManagerCancellableRequest.init()()
{
  *(v0 + OBJC_IVAR___MNCommuteRouteManagerCancellableRequest__task) = 0;
  v2.super_class = MNCommuteRouteManagerCancellableRequest;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D3161F9C()
{
  v22 = sub_1D3276C00();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9F0, &unk_1D328C1C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1D3276C40();
  v20 = *(v8 - 8);
  v9 = v20;
  v10 = *(v20 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v11, qword_1EC75C728);
  v21 = __swift_project_value_buffer(v8, qword_1EC75C728);
  v14 = [objc_opt_self() navTempDirectoryPath];
  v19 = sub_1D32770C0();

  (*(v9 + 56))(v7, 1, 1, v8);
  v15 = *MEMORY[0x1E6968F70];
  v16 = *(v0 + 104);
  v17 = v22;
  v16(v3, v15, v22);
  sub_1D3276C20();
  v23 = 0xD000000000000011;
  v24 = 0x80000001D328F6E0;
  v16(v3, v15, v17);
  sub_1D3166D88();
  sub_1D3276C30();
  (*(v0 + 8))(v3, v17);
  return (*(v20 + 8))(v13, v8);
}

uint64_t sub_1D3162270()
{
  GEOConfigGetDouble();
  result = sub_1D3277AC0();
  qword_1EC75C740 = result;
  *algn_1EC75C748 = v1;
  return result;
}

uint64_t sub_1D31622A8()
{
  if (*v0)
  {
    result = 0x7465536574756F72;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1D31622E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D32778B0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465536574756F72 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D32778B0();

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

uint64_t sub_1D31623DC(uint64_t a1)
{
  v2 = sub_1D31669D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3162418(uint64_t a1)
{
  v2 = sub_1D31669D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3162454()
{
  v1 = OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date;
  v2 = sub_1D3276D30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D31422C8(*(v0 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData), *(v0 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3162504(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C980, &unk_1D328C170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D31669D0();
  sub_1D32779D0();
  LOBYTE(v14) = 0;
  sub_1D3276D30();
  sub_1D3166A78(&qword_1EC75C988, MEMORY[0x1E6969530]);
  sub_1D3277860();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData + 8);
    v14 = *(v3 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData);
    v15 = v11;
    v13[15] = 1;
    sub_1D3166AC0(v14, v11);
    sub_1D3166B14();
    sub_1D3277860();
    sub_1D31422C8(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D31626E8(uint64_t *a1)
{
  v23 = sub_1D3276D30();
  v21 = *(v23 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C950, &qword_1D328C168);
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D31669D0();
  sub_1D32779C0();
  if (v2)
  {
    _s14CachedRouteSetCMa(0);
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v7;
    v12 = v21;
    LOBYTE(v24) = 0;
    sub_1D3166A78(&qword_1EC75C960, MEMORY[0x1E6969530]);
    v13 = v22;
    v14 = v23;
    sub_1D3277850();
    v15 = *(v12 + 32);
    v19[1] = OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date;
    v15(v1 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date, v6, v14);
    v25 = 1;
    sub_1D3166A24();
    sub_1D3277850();
    (*(v20 + 8))(v10, v13);
    *(v1 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData) = v24;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_1D3162A24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s14CachedRouteSetCMa(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1D31626E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *MNCommuteRouteSet.internalInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___MNCommuteRouteSet__internalInfo);
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall MNCommuteRouteSet.InternalInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo);
  _s16NotificationInfoCMa();
  v4 = sub_1D3277190();
  v5 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id MNCommuteRouteSet.InternalInfo.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  _s16NotificationInfoCMa();
  v5 = sub_1D32775D0();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v6 = v5;
  }

  *&v4[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo] = v6;
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id MNCommuteRouteSet.InternalInfo.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  _s16NotificationInfoCMa();
  v5 = sub_1D32775D0();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v6 = v5;
  }

  *&v2[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo] = v6;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

void sub_1D3162EC4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID);
  v4 = *(v1 + OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID + 8);
  v5 = sub_1D32770B0();
  v6 = sub_1D32770B0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo);
  v8 = *(v1 + OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo + 8);
  v9 = sub_1D3276C70();
  v10 = sub_1D32770B0();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_1D316301C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
  v5 = sub_1D32775C0();
  sub_1D3126084(0, &qword_1EC75C978, 0x1E695DEF0);
  v6 = sub_1D32775C0();
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = sub_1D32770C0();
      v9 = &v2[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID];
      *v9 = v8;
      v9[1] = v10;
      v11 = v7;
      v12 = sub_1D3276C80();
      v14 = v13;

      v15 = &v2[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo];
      *v15 = v12;
      v15[1] = v14;
      v18.receiver = v2;
      v18.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v18, sel_init);

      return v16;
    }
  }

  else
  {

    a1 = v7;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id _s10Navigation29CommuteRouteRequestParametersCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3163268()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC75C750);
  __swift_project_value_buffer(v0, qword_1EC75C750);
  return sub_1D3276F70();
}

uint64_t sub_1D31632E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3163390(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_31:
    v5 = sub_1D3277660();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(a2 >> 62))
  {
    if (v5 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v5 != sub_1D3277660())
  {
    return 0;
  }

LABEL_5:
  v26 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    v6 = sub_1D3277660();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v3;
  v27 = v3 & 0xC000000000000001;
  v28 = -v6;
  v7 = 4;
  do
  {
    v4 = v28 + v7 == 4;
    if (v28 + v7 == 4)
    {
      break;
    }

    v8 = v7 - 4;
    if (v27)
    {
      v9 = MEMORY[0x1D38B45D0](v7 - 4, v3);
    }

    else
    {
      if (v8 >= *(v26 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v3 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (a2 >> 62)
    {
      if (v8 == sub_1D3277660())
      {
LABEL_27:

        return 1;
      }
    }

    else if (v8 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B45D0](v7 - 4, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v11 = *(a2 + 8 * v7);
    }

    v12 = v11;
    result = [v10 location];
    if (!result)
    {
      goto LABEL_36;
    }

    v14 = result;
    [result coordinate];
    v16 = v15;
    v18 = v17;

    result = [v12 location];
    if (!result)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v19 = result;
    [result coordinate];
    v21 = v20;
    v23 = v22;

    Distance = GEOCoordinateGetDistance(v16, v18, v21, v23);
    ++v7;
    v3 = v25;
  }

  while (Distance < 400.0);
  return v4;
}

uint64_t sub_1D3163610(uint64_t a1)
{
  v2 = sub_1D3277A50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9D8, &qword_1D328C1B8);
    v10 = sub_1D32776D0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_1D3166A78(&qword_1EC75C9E0, MEMORY[0x1E696A1C0]);
      v17 = sub_1D3277060();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v19 * v14, v2);
          sub_1D3166A78(&qword_1EC75C9E8, MEMORY[0x1E696A1C0]);
          v25 = sub_1D32770A0();
          v26 = *v15;
          (*v15)(v7, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

id sub_1D3163934(unint64_t a1)
{
  v95 = a1;
  v1 = sub_1D3277A10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v99 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D32779F0();
  v100 = *(v5 - 8);
  v101 = v5;
  v6 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D3277A70();
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D3277A80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D3276D30();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC75BFD8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D3276C40();
  __swift_project_value_buffer(v22, qword_1EC75C728);
  v23 = sub_1D3276C50();
  v89 = v2;
  v90 = v1;
  v91 = v13;
  v92 = v12;
  v26 = v23;
  v28 = v27;
  v29 = sub_1D3276B90();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1D3276B80();
  _s14CachedRouteSetCMa(0);
  sub_1D3166A78(&unk_1EC75C9B0, _s14CachedRouteSetCMa);
  v93 = v26;
  v94 = v28;
  sub_1D3276B70();

  v32 = v102;
  (*(v18 + 16))(v21, v102 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date, v17);
  sub_1D3276CF0();
  (*(v18 + 8))(v21, v17);
  sub_1D3277AC0();
  if (qword_1EC75BFE0 != -1)
  {
    swift_once();
  }

  if ((sub_1D3277AB0() & 1) == 0)
  {
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D3276F80();
    __swift_project_value_buffer(v36, qword_1EC75C750);
    v37 = sub_1D3276F60();
    v38 = sub_1D3277380();
    v39 = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v87 = v40;
      v88 = swift_slowAlloc();
      v104[0] = v88;
      *v40 = 136315138;
      sub_1D3277A60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9C0, &qword_1D328C1B0);
      v41 = *(sub_1D3277A50() - 8);
      v95 = v32;
      v42 = *(v41 + 72);
      v43 = *(v41 + 80);
      LODWORD(v86) = v39;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D328BC80;
      sub_1D3277A20();
      sub_1D3277A30();
      sub_1D3277A40();
      sub_1D3163610(v44);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v45 = v96;
      sub_1D32779E0();
      v46 = v16;
      v47 = v99;
      sub_1D3277A00();
      sub_1D32769D0();

      (*(v89 + 8))(v47, v90);
      (*(v100 + 8))(v45, v101);
      (*(v97 + 8))(v11, v98);
      sub_1D3166A78(&qword_1EC75C9C8, MEMORY[0x1E696A218]);
      v48 = v92;
      sub_1D3277A90();
      (*(v91 + 8))(v46, v48);
      v49 = sub_1D312BA30(v102, v103, v104);

      v50 = v87;
      *(v87 + 4) = v49;
      _os_log_impl(&dword_1D311E000, v37, v86, "Found a cached route set but it is too old. Age: %s", v50, 0xCu);
      v51 = v88;
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x1D38B6000](v51, -1, -1);
      MEMORY[0x1D38B6000](v50, -1, -1);
    }

    sub_1D31422C8(v93, v94);

    return 0;
  }

  v33 = sub_1D3126084(0, &qword_1EC75C9D0, 0x1E696ACD0);
  type metadata accessor for MNCommuteRouteSet(v33);
  v34 = *(v32 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData);
  v35 = *(v32 + OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData + 8);
  sub_1D3166AC0(v34, v35);
  v24 = sub_1D32773C0();
  result = sub_1D31422C8(v34, v35);
  if (!v24)
  {
    __break(1u);
    goto LABEL_42;
  }

  v52 = [v24 routes];
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v53 = sub_1D32771A0();

  if (!(v53 >> 62))
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_34:

    if (qword_1EC75BFE8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

  if (!sub_1D3277660())
  {
    goto LABEL_34;
  }

LABEL_18:
  if ((v53 & 0xC000000000000001) == 0)
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v54 = *(v53 + 32);
      goto LABEL_21;
    }

    __break(1u);
LABEL_40:
    swift_once();
LABEL_35:
    v80 = sub_1D3276F80();
    __swift_project_value_buffer(v80, qword_1EC75C750);
    v77 = sub_1D3276F60();
    v81 = sub_1D3277390();
    if (os_log_type_enabled(v77, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1D311E000, v77, v81, "Found a cached route set but it has no route.", v82, 2u);
      MEMORY[0x1D38B6000](v82, -1, -1);
    }

LABEL_37:

    sub_1D31422C8(v93, v94);

    return 0;
  }

  v54 = MEMORY[0x1D38B45D0](0, v53);
LABEL_21:
  v55 = v54;

  result = [v55 waypoints];
  if (result)
  {
    v56 = result;
    sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
    v57 = sub_1D32771A0();

    LOBYTE(v56) = sub_1D3163390(v95, v57);

    if (v56)
    {
      if (qword_1EC75BFE8 != -1)
      {
        swift_once();
      }

      v58 = sub_1D3276F80();
      __swift_project_value_buffer(v58, qword_1EC75C750);
      v59 = sub_1D3276F60();
      v60 = sub_1D32773B0();
      v61 = v60;
      if (os_log_type_enabled(v59, v60))
      {
        v62 = swift_slowAlloc();
        v86 = v62;
        v88 = swift_slowAlloc();
        v104[0] = v88;
        *v62 = 136315138;
        sub_1D3277A60();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9C0, &qword_1D328C1B0);
        v63 = sub_1D3277A50();
        v87 = v55;
        v64 = *(v63 - 8);
        v85 = v61;
        v65 = *(v64 + 72);
        v66 = *(v64 + 80);
        v84 = v59;
        v95 = v32;
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1D328BC80;
        sub_1D3277A20();
        sub_1D3277A30();
        sub_1D3277A40();
        sub_1D3163610(v67);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v68 = v96;
        sub_1D32779E0();
        v69 = v16;
        v70 = v99;
        sub_1D3277A00();
        sub_1D32769D0();

        (*(v89 + 8))(v70, v90);
        (*(v100 + 8))(v68, v101);
        (*(v97 + 8))(v11, v98);
        sub_1D3166A78(&qword_1EC75C9C8, MEMORY[0x1E696A218]);
        v71 = v92;
        sub_1D3277A90();
        (*(v91 + 8))(v69, v71);
        v72 = sub_1D312BA30(v102, v103, v104);

        v73 = v86;
        *(v86 + 1) = v72;
        v74 = v84;
        _os_log_impl(&dword_1D311E000, v84, v85, "Returning cached route set with age of %s.", v73, 0xCu);
        v75 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1D38B6000](v75, -1, -1);
        MEMORY[0x1D38B6000](v73, -1, -1);

        sub_1D31422C8(v93, v94);
      }

      else
      {

        sub_1D31422C8(v93, v94);
      }

      return v24;
    }

    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v76 = sub_1D3276F80();
    __swift_project_value_buffer(v76, qword_1EC75C750);
    v77 = sub_1D3276F60();
    v78 = sub_1D3277380();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1D311E000, v77, v78, "Found a cached route set but waypoints don't match.", v79, 2u);
      MEMORY[0x1D38B6000](v79, -1, -1);
    }

    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_1D31649C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  if (*(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose))
  {
    v11 = 14;
  }

  else
  {
    v11 = 13;
  }

  v12 = 1;
  if (!*(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_purpose))
  {
    v12 = 2;
  }

  v35 = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E69A1D30]) init];
  v14 = *(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints);
  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v15 = sub_1D3277190();
  [v13 setWaypoints_];

  [v13 setRequestType_];
  [v13 setTransportType_];
  [v13 setMaxRouteCount_];
  v16 = [objc_opt_self() defaultRouteAttributesForTransportType_];
  if (!v16)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  [v13 setRouteAttributes_];

  sub_1D3276D10();
  v18 = sub_1D3276D30();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v10, 0, 1, v18);
  v20 = sub_1D32770B0();
  v21 = *(v19 + 48);
  v22 = 0;
  if (v21(v10, 1, v18) != 1)
  {
    v22 = sub_1D3276CD0();
    (*(v19 + 8))(v10, v18);
  }

  v23 = objc_allocWithZone(MNFamiliarRouteProvider);
  v24 = [v23 initWithPurpose:v35 reason:v20 date:v22];

  [v13 setFamiliarRouteProvider_];
  [v13 setRequireFamiliarRoute_];
  [v13 setIsDodgeballOutsideOfMapsEnroute_];
  sub_1D315EDF4(a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedEntryDate, v8);
  if (v21(v8, 1, v18) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1D3276CD0();
    (*(v19 + 8))(v8, v18);
  }

  [v13 setDodgeballOutsideOfMapsPredictedEntryDate_];

  v26 = a1 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_predictedExitDate;
  v27 = v36;
  sub_1D315EDF4(v26, v36);
  if (v21(v27, 1, v18) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1D3276CD0();
    (*(v19 + 8))(v27, v18);
  }

  [v13 setDodgeballOutsideOfMapsPredictedExitDate_];

  v29 = objc_allocWithZone(MEMORY[0x1E69A1B68]);
  v30 = sub_1D32770B0();
  v31 = [v29 initWithProxiedApplicationBundleId_];

  [v13 setAuditToken_];
  v32 = [objc_opt_self() sharedService];
  if (!v32)
  {
    goto LABEL_19;
  }

  v33 = v32;
  v34 = [v32 defaultTraits];

  if (v34)
  {
    [v34 setRequestMode_];
    [v13 setTraits_];

    return;
  }

LABEL_20:
  __break(1u);
}

id sub_1D3164EF4()
{
  v0 = sub_1D3276D30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D3276E00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if (GEOConfigGetBOOL())
  {
    v10 = [objc_allocWithZone(MNTraceRecorder) init];
    v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v12 = sub_1D32770B0();
    [v11 setDateFormat_];

    sub_1D3276DF0();
    v13 = sub_1D3276DD0();
    (*(v6 + 8))(v9, v5);
    [v11 setTimeZone_];

    sub_1D3276D10();
    v14 = sub_1D3276CD0();
    (*(v1 + 8))(v4, v0);
    v15 = [v11 stringFromDate_];

    v16 = sub_1D32770C0();
    v18 = v17;

    v25[0] = 0x5F6574756D6D6F43;
    v25[1] = 0xE800000000000000;
    MEMORY[0x1D38B3FE0](v16, v18);

    v19 = objc_opt_self();
    v20 = sub_1D32770B0();

    v21 = [v19 commuteTraceExtension];
    if (!v21)
    {
      sub_1D32770C0();
      v21 = sub_1D32770B0();
    }

    v22 = [v19 commuteTracesDirectoryPath];
    if (!v22)
    {
      sub_1D32770C0();
      v22 = sub_1D32770B0();
    }

    v23 = [v19 tracePathForTraceName:v20 extension:v21 directoryPath:v22];

    if (!v23)
    {
      sub_1D32770C0();
      v23 = sub_1D32770B0();
    }

    [v10 startWritingTraceToPath:v23 traceType:3 withErrorHandler:0];
  }

  return v10;
}

void sub_1D316529C(uint64_t a1)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D3276B60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D3276C40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D3276D30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v80[0] = 0;
  v18 = [v17 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v80];
  v19 = v80[0];
  if (v18)
  {
    v74 = v8;
    v75 = v11;
    v76 = v3;
    v77 = v6;
    v78 = v2;
    v79 = v7;
    v20 = sub_1D3276C80();
    v22 = v21;

    sub_1D3276D10();
    v23 = _s14CachedRouteSetCMa(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    (*(v13 + 32))(&v26[OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date], v16, v12);
    v27 = &v26[OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_routeSetData];
    *v27 = v20;
    v27[1] = v22;
    v28 = sub_1D3276BD0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_1D3166AC0(v20, v22);
    sub_1D3276BC0();
    sub_1D3276BA0();
    v80[0] = v26;
    sub_1D3166A78(&qword_1EC75CA00, _s14CachedRouteSetCMa);
    v31 = sub_1D3276BB0();
    v69 = v13;
    v72 = v31;
    v73 = v32;
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D3276F80();
    v44 = __swift_project_value_buffer(v43, qword_1EC75C750);

    v71 = v44;
    v45 = sub_1D3276F60();
    LODWORD(v44) = sub_1D32773B0();

    v70 = v44;
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v67 = v46;
      v68 = swift_slowAlloc();
      v80[0] = v68;
      *v46 = 136315138;
      v47 = v69;
      (*(v69 + 16))(v16, &v26[OBJC_IVAR____TtCE10NavigationCSo21MNCommuteRouteManagerP33_99F1AC21CCCBC7D75393AC0CA2EE644A14CachedRouteSet_date], v12);
      sub_1D3166A78(&qword_1EC75CA08, MEMORY[0x1E6969530]);
      v66 = v45;
      v48 = sub_1D3277890();
      v50 = v49;
      (*(v47 + 8))(v16, v12);
      v51 = sub_1D312BA30(v48, v50, v80);

      v53 = v66;
      v52 = v67;
      *(v67 + 1) = v51;
      v54 = v52;
      _os_log_impl(&dword_1D311E000, v53, v70, "Caching commute route with date: %s", v52, 0xCu);
      v55 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1D38B6000](v55, -1, -1);
      MEMORY[0x1D38B6000](v54, -1, -1);
      sub_1D31422C8(v20, v22);
    }

    else
    {
      sub_1D31422C8(v20, v22);
    }

    v56 = v79;
    v58 = v72;
    v57 = v73;
    if (qword_1EC75BFD8 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v56, qword_1EC75C728);
    sub_1D3276C90();
    v60 = v75;
    v61 = v74 + 16;
    (*(v74 + 16))(v75, v59, v56);
    v62 = v77;
    sub_1D3276B50();
    sub_1D3276B40();
    sub_1D3276C10();
    v63 = (v76 + 8);
    sub_1D31422C8(v58, v57);
    (*v63)(v62, v78);
    (*(v61 - 8))(v60, v56);
  }

  else
  {
    v33 = v19;
    v34 = sub_1D3276BF0();

    swift_willThrow();
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v35 = sub_1D3276F80();
    __swift_project_value_buffer(v35, qword_1EC75C750);
    v36 = v34;
    v37 = sub_1D3276F60();
    v38 = sub_1D3277390();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = v34;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1D311E000, v37, v38, "Error encoding route for caching. Error: %@", v39, 0xCu);
      sub_1D3125FBC(v40, &qword_1EC75C5B0, &unk_1D328C300);
      MEMORY[0x1D38B6000](v40, -1, -1);
      MEMORY[0x1D38B6000](v39, -1, -1);
    }

    else
    {
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D3165B64(uint64_t a1)
{
  *(v1 + 112) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3165C00, 0, 0);
}

uint64_t sub_1D3165C00()
{
  v40 = v0;
  if (qword_1EC75BFE8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75C750);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D32773B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v9 = *(v6 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions);
    v39[0] = v8;
    v39[1] = v9;
    v10 = CommuteRouteRequestParameters.CacheOptions.description.getter();
    v12 = sub_1D312BA30(v10, v11, v39);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D311E000, v4, v5, "Requesting commute routes with cache options: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38B6000](v8, -1, -1);
    MEMORY[0x1D38B6000](v7, -1, -1);
  }

  v13 = v0[14];
  v14 = *(v13 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_cacheOptions);
  if (!v14)
  {
    v18 = 2;
    goto LABEL_12;
  }

  if ((v14 & 2) != 0)
  {
    v15 = sub_1D3163934(*(v13 + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints));
    if (v15)
    {
      v16 = v15;
      v17 = 0;
LABEL_13:
      v20 = v0[15];

      v21 = v0[1];

      return v21(v16, v17);
    }
  }

  if ((v14 & 1) == 0)
  {
    v18 = 3;
LABEL_12:
    sub_1D3166B68();
    v16 = swift_allocError();
    *v19 = v18;
    v17 = 1;
    goto LABEL_13;
  }

  v23 = v0[14];
  sub_1D31649C0(v23);
  v25 = v24;
  v0[16] = v24;
  v0[17] = sub_1D3164EF4();
  v26 = swift_allocObject();
  v0[18] = v26;
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  v0[19] = v27;
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  v0[20] = v28;
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v26;
  v0[6] = sub_1D3166BBC;
  v0[7] = v29;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D3127B00;
  v0[5] = &block_descriptor_4;
  v30 = _Block_copy(v0 + 2);
  v31 = v0[7];
  v32 = v23;

  [v25 setRequestCallback_];
  _Block_release(v30);
  v0[13] = 0;
  v33 = swift_allocObject();
  v0[21] = v33;
  *(v33 + 16) = 0;
  v34 = swift_task_alloc();
  v0[22] = v34;
  v34[2] = v33;
  v34[3] = v0 + 13;
  v34[4] = v25;
  v34[5] = v27;
  v34[6] = v28;
  v34[7] = v32;
  v35 = swift_task_alloc();
  v0[23] = v35;
  *(v35 + 16) = v0 + 13;
  *(v35 + 24) = v33 + 16;
  v36 = *(MEMORY[0x1E69E88F0] + 4);
  v37 = swift_task_alloc();
  v0[24] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C9A8, &qword_1D328C190);
  *v37 = v0;
  v37[1] = sub_1D316607C;

  return MEMORY[0x1EEE6DE18](v0 + 11, &unk_1D328C188, v34, sub_1D3166C98, v35, 0, 0, v38);
}