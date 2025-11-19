uint64_t sub_224A32080(void *a1)
{
  v2 = v1;
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E50);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_224A2F000, v6, v7, "[WidgetCenter] Incoming XPC Connection: %{public}@", v8, 0xCu);
    sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  sub_224DAE668();
  v11 = MEMORY[0x22AA5C9C0]();
  [v5 setExportedInterface_];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v13 = objc_opt_self();
  v14 = sub_224DAEDE8();
  v15 = [v13 serialQueueTargetingSharedWorkloop_];

  [v5 _setQueue_];
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__extensionManager, v41);
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__timelineService, v40);
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__descriptorService, v39);
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__pushService, v37);
  sub_224A3796C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__widgetRelevanceService, v35, &unk_27D6F4FB0, &unk_224DBADC8);
  v16 = v38;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = type metadata accessor for PushService();
  v34[4] = &off_283828B40;
  v34[3] = v23;
  v34[0] = v22;
  type metadata accessor for WidgetCenterServerClient();
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v34, v23);
  v26 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  *(v24 + 168) = v23;
  *(v24 + 176) = &off_283828B40;
  *(v24 + 144) = v30;
  *(v24 + 16) = v5;
  sub_224A36F98(v41, v24 + 24);
  sub_224A36F98(v40, v24 + 64);
  sub_224A36F98(v39, v24 + 104);
  v31 = v35[1];
  *(v24 + 184) = v35[0];
  *(v24 + 200) = v31;
  *(v24 + 216) = v36;
  v32 = v5;
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v37);
  [v32 setExportedObject_];

  [v32 resume];

  return 1;
}

void sub_224A32548(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v30 = a1;
  v5 = sub_224DACB98();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = a3[2];
  v19 = sub_224DAF2C8();
  if (v20)
  {
    sub_224A32920(v19, 1, v12);

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v17, v12, v13);
      v21 = a3[11];
      v29 = a3[12];
      __swift_project_boxed_opaque_existential_1(a3 + 8, v21);
      v22 = swift_allocObject();
      v22[2] = [objc_opt_self() processHandleForNSXPCConnection_];
      v22[3] = 0xD000000000000012;
      v22[4] = 0x8000000224DBC070;
      *v8 = v22;
      v23 = v31;
      (*(v31 + 104))(v8, *MEMORY[0x277CF9B90], v5);
      v24 = *(v29 + 32);
      sub_224DAC728();
      (*(v23 + 8))(v8, v5);
      (*(v33 + 16))(v33, 0);
      (*(v14 + 8))(v17, v13);
      return;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  v25 = swift_allocError();
  *v26 = 26;
  v27 = sub_224DA9518();
  (*(v33 + 16))(v33, v27);
}

uint64_t sub_224A328E0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A32920@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a1;
  v29 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = &v23 - v6;
  v8 = v3[6];
  v26 = v3[7];
  v25 = __swift_project_boxed_opaque_existential_1(v3 + 3, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAA208();
  sub_224DAC6C8();
  (*(v4 + 8))(v7, v28);
  if (v31)
  {
    sub_224A36F98(&v30, v32);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_224DAE328();
    v9 = v29;
    sub_224DA9FF8();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v12 = v24;
  v13 = v29;
  sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
  v14 = objc_allocWithZone(MEMORY[0x277CC1E50]);

  v15 = sub_224A33224();
  if (v15)
  {
    v18 = v15;
    v19 = [v15 containingBundleRecord];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 bundleIdentifier];
      if (v21)
      {
        v22 = v21;
        sub_224DAEE18();

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  if (v12)
  {

LABEL_6:
    sub_224DA9FF8();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    return (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  return (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
}

uint64_t sub_224A32D68(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_224A33088(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_224A3311C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_224A3317C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_224A33224()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_224DAEDE8();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_224DA9528();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_224A332F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

void sub_224A33390(void *a1, void *a2)
{
  v32 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = [a2 bundle];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 identifier];

    if (v16)
    {
      v31 = v5;
      sub_224DAEE18();

      v30 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
      os_unfair_lock_lock(*(v30 + 16));

      sub_224DA9FF8();
      sub_224DA9FF8();
      v17 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownExtensionBundleIdentifiers;
      swift_beginAccess();
      v18 = *(v2 + v17);

      v19 = sub_224A336F4(v13, v18);

      if (v19)
      {
        v20 = sub_224DA9FE8();
        v21 = v32;
        sub_224A33948(v32, a2, v20, v22);

        v23 = sub_224DA9FE8();
        sub_224A8EBB8(v21, v23, v24);

        v25 = v31;
      }

      else
      {
        v26 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownApplicationBundleIdentifiers;
        swift_beginAccess();
        v27 = *(v2 + v26);

        v28 = sub_224A33924(v8, v27);

        v25 = v31;
        if (v28)
        {
          sub_224A34040(v32, a2, v8);
        }
      }

      (*(v25 + 8))(v8, v4);
      (*(v10 + 8))(v13, v9);
      os_unfair_lock_unlock(*(v30 + 16));
    }
  }
}

uint64_t sub_224A33718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  if (*(a2 + 16) && (v16 = *(a2 + 40), sub_224A33088(a5, a3, a4), v17 = sub_224DAED88(), v18 = -1 << *(a2 + 32), v19 = v17 & ~v18, v32 = a2 + 56, ((*(a2 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
  {
    v30 = a1;
    v31 = a3;
    v20 = a2;
    v29 = ~v18;
    v23 = *(v12 + 16);
    v22 = v12 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    v25 = (v22 - 8);
    do
    {
      v21(v15, *(v20 + 48) + v24 * v19, v11);
      sub_224A33088(v33, v31, a4);
      v26 = sub_224DAEDD8();
      (*v25)(v15, v11);
      if (v26)
      {
        break;
      }

      v19 = (v19 + 1) & v29;
    }

    while (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

void sub_224A33948(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = [a1 state];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isRunning];
    v12 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs;
    if (!v11)
    {
      swift_beginAccess();
      v23 = sub_224B0D3F4(a3, a4);
      swift_endAccess();
      if ((v23 & 0x100000000) == 0)
      {
        if (qword_281351610 != -1)
        {
          swift_once();
        }

        v24 = sub_224DAB258();
        __swift_project_value_buffer(v24, qword_281364FD0);

        v25 = sub_224DAB228();
        v26 = sub_224DAF2A8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v38 = v28;
          *v27 = 136446210;
          *(v27 + 4) = sub_224A33F74(a3, a4, &v38);
          _os_log_impl(&dword_224A2F000, v25, v26, "Observed %{public}s ceased running", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x22AA5EED0](v28, -1, -1);
          MEMORY[0x22AA5EED0](v27, -1, -1);
        }
      }

      goto LABEL_23;
    }

    swift_beginAccess();
    v13 = *(v4 + v12);
    if (*(v13 + 16))
    {
      v14 = *(v5 + v12);

      v15 = sub_224A3A40C(a3, a4);
      if (v16)
      {
        v17 = *(*(v13 + 56) + 4 * v15);

        if ([a2 pid] == v17)
        {
LABEL_23:

          return;
        }

        if (qword_281351610 != -1)
        {
          swift_once();
        }

        v18 = sub_224DAB258();
        __swift_project_value_buffer(v18, qword_281364FD0);

        v19 = sub_224DAB228();
        v20 = sub_224DAF2A8();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v37[0] = v22;
          *v21 = 136446210;
          *(v21 + 4) = sub_224A33F74(a3, a4, v37);
          _os_log_impl(&dword_224A2F000, v19, v20, "Observed %{public}s changed running pid", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          MEMORY[0x22AA5EED0](v22, -1, -1);
          MEMORY[0x22AA5EED0](v21, -1, -1);
        }

LABEL_22:

        v33 = [a2 pid];
        swift_beginAccess();
        v34 = *(v5 + v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v5 + v12);
        *(v5 + v12) = 0x8000000000000000;
        sub_224A3587C(v33, a3, a4, isUniquelyReferenced_nonNull_native);
        *(v5 + v12) = v36;
        swift_endAccess();
        goto LABEL_23;
      }
    }

    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281364FD0);

    v19 = sub_224DAB228();
    v30 = sub_224DAF2A8();

    if (os_log_type_enabled(v19, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_224A33F74(a3, a4, v37);
      _os_log_impl(&dword_224A2F000, v19, v30, "Observed %{public}s began running", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    goto LABEL_22;
  }
}

uint64_t sub_224A33E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_224A33E68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_224A3CAC0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_224DAF998();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_224A33F74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_224A33E68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_224A33E0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_224A34040(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v206 = sub_224DAC378();
  v205 = *(v206 - 8);
  v8 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  v203 = &v197[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v209 = &v197[-v12];
  v13 = sub_224DAB7B8();
  v214 = *(v13 - 8);
  v14 = *(v214 + 64);
  MEMORY[0x28223BE20](v13);
  v211 = &v197[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v213 = sub_224DAB848();
  v212 = *(v213 - 8);
  v16 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v210 = &v197[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v204 = &v197[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v218 = *(v21 - 8);
  v22 = *(v218 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = &v197[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v197[-v26];
  v28 = MEMORY[0x28223BE20](v25);
  v217 = &v197[-v29];
  MEMORY[0x28223BE20](v28);
  v31 = &v197[-v30];
  v32 = [a1 state];
  if (!v32)
  {
    return;
  }

  v202 = v13;
  v216 = v32;
  v215 = a3;
  v33 = sub_224DA9FE8();
  sub_224A33948(a1, a2, v33, v34);

  v208 = a1;
  v35 = [a1 previousState];
  v207 = v4;
  if (!v35)
  {
    goto LABEL_7;
  }

  v36 = v35;
  if ([v35 taskState] != 4 || (v37 = objc_msgSend(v36, sel_endowmentNamespaces)) == 0)
  {

LABEL_7:
    v43 = 0;
    goto LABEL_8;
  }

  v38 = v37;
  v39 = sub_224DAF1B8();

  v40 = *MEMORY[0x277D0AC90];
  v41 = sub_224DAEE18();
  v43 = sub_224A3A53C(v41, v42, v39);

LABEL_8:
  v44 = v216;
  if ([v216 taskState] != 4 || (v45 = objc_msgSend(v44, sel_endowmentNamespaces)) == 0)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (qword_281351610 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_136;
  }

  v46 = v45;
  v47 = sub_224DAF1B8();

  v48 = *MEMORY[0x277D0AC90];
  v49 = sub_224DAEE18();
  v51 = sub_224A3A53C(v49, v50, v47);

  if (((v43 ^ v51) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((v51 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v52 = sub_224DAB258();
  __swift_project_value_buffer(v52, qword_281364FD0);
  v53 = v218;
  v54 = v218 + 16;
  v55 = v215;
  v203 = *(v218 + 16);
  (v203)(v31, v215, v21);
  v56 = sub_224DAB228();
  v57 = sub_224DAF2A8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v199 = v58;
    v59 = swift_slowAlloc();
    aBlock = v59;
    *v58 = 136446210;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
    v198 = v57;
    v60 = sub_224DAFD28();
    v62 = v61;
    v63 = *(v53 + 8);
    v201 = ((v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v209 = v63;
    v63(v31, v21);
    v64 = sub_224A33F74(v60, v62, &aBlock);
    v55 = v215;

    v65 = v199;
    *(v199 + 1) = v64;
    v66 = v65;
    _os_log_impl(&dword_224A2F000, v56, v198, "Observed %{public}s began running visibly", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x22AA5EED0](v59, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  else
  {

    v185 = *(v53 + 8);
    v201 = ((v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v209 = v185;
    v185(v31, v21);
  }

  v186 = v203;
  (v203)(v27, v55, v21);
  v200 = v54;
  v24 = v207;
  swift_beginAccess();
  v187 = v217;
  sub_224A3A634(v217, v27);
  v209(v187, v21);
  swift_endAccess();
  v186(v187, v55, v21);
  v188 = v186;
  v189 = v204;
  (*(v205 + 56))(v204, 1, 1, v206);
  swift_beginAccess();
  sub_224A3A918(v189, v187);
  swift_endAccess();
  v190 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  swift_beginAccess();
  v191 = *(v24 + v190);
  v192 = *(v24 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__calloutQueue);
  v188(v187, v55, v21);
  v193 = v218;
  v194 = (*(v218 + 80) + 32) & ~*(v218 + 80);
  v195 = swift_allocObject();
  *(v195 + 16) = v191;
  *(v195 + 24) = v24;
  (*(v193 + 32))(v195 + v194, v187, v21);
  v223 = sub_224A3B870;
  v224 = v195;
  aBlock = MEMORY[0x277D85DD0];
  v220 = 1107296256;
  v221 = sub_224A39F40;
  v222 = &block_descriptor_125;
  v95 = _Block_copy(&aBlock);

  v196 = v24;
  while (1)
  {
    v97 = v210;
    sub_224DAB7E8();
    v229 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v98 = v211;
    v99 = v202;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v97, v98, v95);
    _Block_release(v95);
    (*(v214 + 8))(v98, v99);
    (*(v212 + 8))(v97, v213);

    sub_224A3AFF0();
    v44 = v216;
LABEL_25:
    v100 = MEMORY[0x277D84F90];
    v101 = sub_224A3B690(MEMORY[0x277D84F90]);
    v102 = sub_224A3B690(v100);
    v103 = [v208 previousState];
    if (!v103)
    {
      break;
    }

    v104 = v103;
    v105 = [v103 assertions];
    if (!v105)
    {
      goto LABEL_69;
    }

    v106 = v105;
    v107 = sub_224A3B79C(0, &qword_281350940, 0x277D46F10);
    sub_224A3B758(&qword_281350938, &qword_281350940, 0x277D46F10);
    v108 = sub_224DAF1B8();

    v213 = v104;
    v214 = v107;
    if ((v108 & 0xC000000000000001) != 0)
    {
      sub_224DAF7E8();
      sub_224DAF1F8();
      v108 = v229;
      v109 = v230;
      v110 = v231;
      v111 = v232;
      v112 = v233;
    }

    else
    {
      v111 = 0;
      v113 = -1 << *(v108 + 32);
      v109 = v108 + 56;
      v110 = ~v113;
      v114 = -v113;
      if (v114 < 64)
      {
        v115 = ~(-1 << v114);
      }

      else
      {
        v115 = -1;
      }

      v112 = v115 & *(v108 + 56);
    }

    v212 = v110;
    v116 = (v110 + 64) >> 6;
    v211 = 0x8000000224DC69F0;
    v217 = v108;
    if (v108 < 0)
    {
LABEL_34:
      v117 = sub_224DAF878();
      if (v117)
      {
        v227 = v117;
        swift_dynamicCast();
        v21 = aBlock;
        v24 = v111;
        v218 = v112;
        if (aBlock)
        {
          goto LABEL_42;
        }
      }

LABEL_68:
      sub_224A3B7E4();
      v44 = v216;
      v104 = v213;
LABEL_69:

      break;
    }

    while (1)
    {
      v118 = v111;
      v119 = v112;
      v24 = v111;
      if (!v112)
      {
        break;
      }

LABEL_41:
      v218 = (v119 - 1) & v119;
      v21 = *(*(v108 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v119)))));
      if (!v21)
      {
        goto LABEL_68;
      }

LABEL_42:
      if ([v21 type] == 3 && objc_msgSend(v21, sel_reason) == 2)
      {
        v120 = 1;
        if (*(v102 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      v121 = [v21 explanation];
      if (v121)
      {
        v122 = v121;
        v123 = sub_224DAEE18();
        v125 = v124;

        if ([v21 type] == 3 && objc_msgSend(v21, sel_reason) == 7)
        {
          aBlock = v123;
          v220 = v125;
          v227 = 0xD000000000000024;
          v228 = v211;
          sub_224AFC154();
          v120 = sub_224DAF748();

          if (*(v102 + 16))
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }
      }

      v120 = 0;
      if (*(v102 + 16))
      {
LABEL_53:
        v126 = (sub_224AA3CDC)();
        if (v127)
        {
          v120 |= *(*(v102 + 56) + v126);
        }
      }

LABEL_55:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v102;
      v130 = (sub_224AA3CDC)();
      v131 = v102;
      v132 = *(v102 + 16);
      v133 = (v129 & 1) == 0;
      v134 = v132 + v133;
      if (__OFADD__(v132, v133))
      {
        goto LABEL_133;
      }

      v135 = v129;
      if (*(v131 + 24) >= v134)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v139 = aBlock;
          if ((v129 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_224B2655C();
          v139 = aBlock;
          if ((v135 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

LABEL_64:
        *(*(v139 + 56) + v130) = v120 & 1;

        v111 = v24;
        v108 = v217;
        v112 = v218;
        v102 = v139;
        if (v217 < 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v136 = sub_224AA3D14(v134, isUniquelyReferenced_nonNull_native);
        v137 = sub_224AA3CDC(v136);
        if ((v135 & 1) != (v138 & 1))
        {
LABEL_137:
          sub_224DAFDD8();
          __break(1u);
          return;
        }

        v130 = v137;
        v139 = aBlock;
        if (v135)
        {
          goto LABEL_64;
        }

LABEL_59:
        *(v139 + 8 * (v130 >> 6) + 64) |= 1 << v130;
        *(*(v139 + 56) + v130) = v120 & 1;

        v140 = *(v139 + 16);
        v141 = __OFADD__(v140, 1);
        v142 = v140 + 1;
        if (v141)
        {
          goto LABEL_135;
        }

        v102 = v139;
        *(v139 + 16) = v142;
        v111 = v24;
        v108 = v217;
        v112 = v218;
        if (v217 < 0)
        {
          goto LABEL_34;
        }
      }
    }

    while (1)
    {
      v24 = (v118 + 1);
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if (v24 >= v116)
      {
        goto LABEL_68;
      }

      v119 = *(v109 + 8 * v24);
      ++v118;
      if (v119)
      {
        goto LABEL_41;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    swift_once();
LABEL_18:
    v67 = sub_224DAB258();
    __swift_project_value_buffer(v67, qword_281364FD0);
    v68 = v218;
    v69 = *(v218 + 16);
    v69(v24, v215, v21);
    v70 = sub_224DAB228();
    v71 = sub_224DAF2A8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      aBlock = v201;
      *v72 = 136446210;
      sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
      v73 = sub_224DAFD28();
      v74 = v69;
      v76 = v75;
      (*(v218 + 8))(v24, v21);
      v77 = sub_224A33F74(v73, v76, &aBlock);
      v69 = v74;

      *(v72 + 4) = v77;
      _os_log_impl(&dword_224A2F000, v70, v71, "Observed %{public}s ceased running visibly", v72, 0xCu);
      v78 = v201;
      __swift_destroy_boxed_opaque_existential_1(v201);
      MEMORY[0x22AA5EED0](v78, -1, -1);
      MEMORY[0x22AA5EED0](v72, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v24, v21);
    }

    v24 = v207;
    swift_beginAccess();
    v79 = v209;
    v80 = v215;
    sub_224A9DCC8(v215, v209);
    sub_224A3311C(v79, &unk_27D6F5060, &qword_224DB5620);
    swift_endAccess();
    sub_224DA9FE8();
    v81 = sub_224A9E29C();

    if (v81)
    {
      v82 = v217;
      v69(v217, v80, v21);
      v83 = v203;
      sub_224DAC338();
      v84 = v204;
      sub_224DAC358();
      v85 = v205;
      v86 = v83;
      v87 = v206;
      (*(v205 + 8))(v86, v206);
      (*(v85 + 56))(v84, 0, 1, v87);
      swift_beginAccess();
      sub_224A3A918(v84, v82);
      swift_endAccess();
    }

    v88 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
    swift_beginAccess();
    v89 = *(v24 + v88);
    v90 = *(v24 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__calloutQueue);
    v91 = v217;
    v69(v217, v80, v21);
    v92 = v218;
    v93 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v89;
    *(v94 + 24) = v24;
    (*(v92 + 32))(v94 + v93, v91, v21);
    v223 = sub_224AA2ED0;
    v224 = v94;
    aBlock = MEMORY[0x277D85DD0];
    v220 = 1107296256;
    v221 = sub_224A39F40;
    v222 = &block_descriptor_119;
    v95 = _Block_copy(&aBlock);
    v96 = v24;
  }

  v143 = [v44 assertions];
  if (!v143)
  {
    v151 = v215;
    if (v101[2])
    {
      goto LABEL_116;
    }

    goto LABEL_119;
  }

  v144 = v143;
  v145 = sub_224A3B79C(0, &qword_281350940, 0x277D46F10);
  sub_224A3B758(&qword_281350938, &qword_281350940, 0x277D46F10);
  v146 = sub_224DAF1B8();

  v213 = v102;
  v214 = v145;
  if ((v146 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v146 = aBlock;
    v147 = v220;
    v148 = v221;
    v149 = v222;
    v150 = v223;
  }

  else
  {
    v149 = 0;
    v152 = -1 << *(v146 + 32);
    v147 = v146 + 56;
    v148 = ~v152;
    v153 = -v152;
    if (v153 < 64)
    {
      v154 = ~(-1 << v153);
    }

    else
    {
      v154 = -1;
    }

    v150 = v154 & *(v146 + 56);
  }

  v212 = v148;
  v155 = (v148 + 64) >> 6;
  v211 = 0x8000000224DC69F0;
  v217 = v146;
  while (2)
  {
    if (v146 < 0)
    {
      v158 = sub_224DAF878();
      if (!v158)
      {
        goto LABEL_115;
      }

      v225 = v158;
      swift_dynamicCast();
      v24 = v227;
      v21 = v149;
      v218 = v150;
      if (!v227)
      {
        goto LABEL_115;
      }

LABEL_91:
      if ([v24 type] == 3 && (v159 = objc_msgSend(v24, sel_reason), v159 == 2))
      {
        v160 = 1;
        if (!v101[2])
        {
          goto LABEL_104;
        }
      }

      else
      {
        v159 = [v24 explanation];
        if (v159)
        {
          v161 = v159;
          v162 = sub_224DAEE18();
          v164 = v163;

          if ([v24 type] == 3 && objc_msgSend(v24, sel_reason) == 7)
          {
            v227 = v162;
            v228 = v164;
            v225 = 0xD000000000000024;
            v226 = v211;
            sub_224AFC154();
            v160 = sub_224DAF748();

            if (!v101[2])
            {
              goto LABEL_104;
            }

            goto LABEL_102;
          }
        }

        v160 = 0;
        if (!v101[2])
        {
          goto LABEL_104;
        }
      }

LABEL_102:
      v165 = sub_224AA3CDC(v159);
      if (v166)
      {
        v160 |= *(v101[7] + v165);
      }

LABEL_104:
      v167 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v167;
      v227 = v101;
      v170 = sub_224AA3CDC(v167);
      v171 = v101[2];
      v172 = (v169 & 1) == 0;
      v173 = v171 + v172;
      if (__OFADD__(v171, v172))
      {
        goto LABEL_132;
      }

      v174 = v169;
      if (v101[3] < v173)
      {
        v175 = sub_224AA3D14(v173, v168);
        v176 = sub_224AA3CDC(v175);
        if ((v174 & 1) != (v177 & 1))
        {
          goto LABEL_137;
        }

        v170 = v176;
        v101 = v227;
        if ((v174 & 1) == 0)
        {
          goto LABEL_111;
        }

LABEL_80:
        *(v101[7] + v170) = v160 & 1;

LABEL_81:
        v149 = v21;
        v146 = v217;
        v150 = v218;
        continue;
      }

      if (v168)
      {
        v101 = v227;
        if (v169)
        {
          goto LABEL_80;
        }
      }

      else
      {
        sub_224B2655C();
        v101 = v227;
        if (v174)
        {
          goto LABEL_80;
        }
      }

LABEL_111:
      v101[(v170 >> 6) + 8] |= 1 << v170;
      *(v101[7] + v170) = v160 & 1;

      v178 = v101[2];
      v141 = __OFADD__(v178, 1);
      v179 = v178 + 1;
      if (v141)
      {
        goto LABEL_134;
      }

      v101[2] = v179;
      goto LABEL_81;
    }

    break;
  }

  v156 = v149;
  v157 = v150;
  v21 = v149;
  if (!v150)
  {
    while (1)
    {
      v21 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      if (v21 >= v155)
      {
        goto LABEL_115;
      }

      v157 = *(v147 + 8 * v21);
      ++v156;
      if (v157)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

LABEL_87:
  v218 = (v157 - 1) & v157;
  v24 = *(*(v146 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v157)))));
  if (v24)
  {
    goto LABEL_91;
  }

LABEL_115:
  v143 = sub_224A3B7E4();
  v151 = v215;
  v44 = v216;
  v102 = v213;
  if (!v101[2])
  {
    goto LABEL_119;
  }

LABEL_116:
  v143 = sub_224AA3CDC(v143);
  if ((v180 & 1) == 0)
  {
LABEL_119:
    v181 = 0;
    if (!*(v102 + 16))
    {
      goto LABEL_124;
    }

    goto LABEL_120;
  }

  v181 = v143[v101[7]];
  if (!*(v102 + 16))
  {
LABEL_124:

    if (v181)
    {
LABEL_125:
      sub_224B46028(v151, 1);
    }

    goto LABEL_126;
  }

LABEL_120:
  v182 = sub_224AA3CDC(v143);
  if ((v183 & 1) == 0)
  {
    goto LABEL_124;
  }

  v184 = *(*(v102 + 56) + v182);

  if (v181 != v184)
  {
    if (v181)
    {
      goto LABEL_125;
    }

    sub_224B46934(v151, 1);
  }

LABEL_126:
}

unint64_t sub_224A3587C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_224A3A40C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_224B112DC(v16, a4 & 1);
      v20 = *v5;
      result = sub_224A3A40C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_224B263F4();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_224A35A14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A35A50(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_224DAEE18();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

uint64_t sub_224A35B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  v12 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  sub_224A3317C(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);

  sub_224DA9FF8();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_224DACA78();

  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_224A35CCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A35D2C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v62 = a5;
  v70 = a3;
  v60 = a2;
  v69 = sub_224DAB7B8();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v69);
  v65 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_224DAB848();
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v59 - v17;
  v71 = v6;
  v19 = *&v6[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32];
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], *&v6[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24]);
  v20 = sub_224DAC668();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281365168);
  (*(v15 + 16))(v18, a1, v14);

  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  v24 = os_log_type_enabled(v22, v23);
  v25 = a4;
  v67 = v9;
  if (v24)
  {
    v26 = v20;
    v27 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v27 = 134349570;
    *(v27 + 4) = *(v26 + 16);

    *(v27 + 12) = 2082;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
    v28 = sub_224DAFD28();
    v30 = v29;
    (*(v15 + 8))(v18, v14);
    v31 = sub_224A33F74(v28, v30, aBlock);
    v25 = a4;

    *(v27 + 14) = v31;
    *(v27 + 22) = 2082;
    v32 = v70;
    *(v27 + 24) = sub_224A33F74(v70, v25, aBlock);
    _os_log_impl(&dword_224A2F000, v22, v23, "Reloading descriptors for %{public}ld extensions in container %{public}s with reason: %{public}s", v27, 0x20u);
    v33 = v61;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v33, -1, -1);
    v34 = v27;
    v20 = v26;
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v32 = v70;
  }

  v35 = v71;
  v36 = v69;
  v37 = dispatch_group_create();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D84F98];
  *(v38 + 16) = MEMORY[0x277D84F98];
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = v40;
  v42 = *(v20 + 16);
  v43 = v68;
  if (v42)
  {
    v59[1] = v20;
    v44 = v20 + 32;
    v70 = v25;
    v45 = v32;
    v46 = v60;
    v47 = v40;
    do
    {
      sub_224A3317C(v44, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v74);
      v48 = sub_224DAE338();
      dispatch_group_enter(v37);
      v49 = swift_allocObject();
      v49[2] = v37;
      v49[3] = v38;
      v49[4] = v48;
      v49[5] = v47;
      v50 = v37;

      v51 = v48;

      sub_224A365A0(aBlock, v46 & 1, v45, v70, sub_224A59188, v49);

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v44 += 40;
      --v42;
    }

    while (v42);

    v43 = v68;
    v36 = v69;
    v35 = v71;
    v41 = v47;
  }

  else
  {
  }

  v70 = *&v35[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  v52 = swift_allocObject();
  v52[2] = v35;
  v52[3] = v41;
  v61 = v41;
  v53 = v62;
  v52[4] = v38;
  v52[5] = v53;
  v52[6] = v43;
  v75 = sub_224A59580;
  v76 = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v74 = &block_descriptor_193;
  v54 = _Block_copy(aBlock);

  v55 = v35;
  sub_224A364AC(v53);
  v56 = v63;
  sub_224DAB7E8();
  v72 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v57 = v65;
  sub_224DAF788();
  sub_224DAF308();
  _Block_release(v54);

  (*(v67 + 8))(v57, v36);
  (*(v64 + 8))(v56, v66);
}

uint64_t sub_224A364AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_224A364BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A364F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A36544()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_224A365A0(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void, id), uint64_t a6)
{
  v7 = v6;
  v68 = a6;
  v69 = a5;
  v67 = a4;
  v66 = a3;
  v10 = sub_224DAB7B8();
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_224DAB848();
  v62 = *(v64 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAD448();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = (&v56 - v20);
  v22 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(&v7[v22], &aBlock, &qword_27D6F6C28, &qword_224DC1A38);
  if (v73)
  {
    sub_224A36F98(&aBlock, &v78);
    if (a2)
    {
      v60 = v10;
      (*(v16 + 104))(v21, *MEMORY[0x277CF9CD0], v15);
LABEL_10:
      v59 = v21;
      sub_224A3317C(a1, v77);
      (*(v16 + 16))(v19, v21, v15);
      v30 = *(v16 + 80);
      v58 = v15;
      v31 = (v30 + 64) & ~v30;
      v32 = (v17 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      *(v33 + 16) = v7;
      sub_224A36F98(v77, v33 + 24);
      (*(v16 + 32))(v33 + v31, v19, v15);
      v34 = (v33 + v32);
      v35 = v69;
      v36 = v68;
      *v34 = v69;
      v34[1] = v36;
      v57 = (v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries] & 1) == 0;
      v37 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v38 = v7;
      sub_224A364AC(v35);
      v39 = sub_224DAE338();
      v69 = *&v38[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
      sub_224A3317C(a1, v76);
      v40 = swift_allocObject();
      *(v40 + 16) = v38;
      *(v40 + 24) = v39;
      *(v40 + 32) = sub_224D5C33C;
      *(v40 + 40) = v33;
      v41 = v67;
      *(v40 + 48) = v66;
      *(v40 + 56) = v41;
      sub_224A36F98(v76, v40 + 64);
      *(v40 + 104) = v57;
      *(v40 + 112) = 0;
      v74 = sub_224D5C2B4;
      v75 = v40;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v72 = sub_224A39F40;
      v73 = &block_descriptor_182;
      v42 = _Block_copy(&aBlock);

      v43 = v38;
      v44 = v39;

      v45 = v61;
      sub_224DAB7E8();
      v70 = MEMORY[0x277D84F90];
      sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v46 = v63;
      v47 = v60;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v45, v46, v42);
      _Block_release(v42);

      (*(v65 + 8))(v46, v47);
      (*(v62 + 8))(v45, v64);
      (*(v16 + 8))(v59, v58);
      __swift_destroy_boxed_opaque_existential_1(&v78);

      return;
    }

    if (sub_224D4E3B4(a1, &v78))
    {
      v60 = v10;
      v29 = v67;
      *v21 = v66;
      v21[1] = v29;
      (*(v16 + 104))(v21, *MEMORY[0x277CF9CE0], v15);

      goto LABEL_10;
    }

    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v49 = sub_224DAB258();
    __swift_project_value_buffer(v49, qword_281365168);
    sub_224A3317C(a1, &aBlock);
    v50 = sub_224DAB228();
    v51 = sub_224DAF2A8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      __swift_project_boxed_opaque_existential_1(&aBlock, v73);
      v54 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&dword_224A2F000, v50, v51, "Ignoring descriptor discovery for %{public}@ because it's restricted before first launch.", v52, 0xCu);
      sub_224A3311C(v53, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v53, -1, -1);
      MEMORY[0x22AA5EED0](v52, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    if (v69)
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v55 = sub_224CBC42C(0xBu, 0, 0);
      v69(0, v55);
    }

    __swift_destroy_boxed_opaque_existential_1(&v78);
  }

  else
  {
    sub_224A3311C(&aBlock, &qword_27D6F6C28, &qword_224DC1A38);
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281365168);
    sub_224A3317C(a1, &aBlock);
    v24 = sub_224DAB228();
    v25 = sub_224DAF288();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      __swift_project_boxed_opaque_existential_1(&aBlock, v73);
      v28 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_224A2F000, v24, v25, "Ignoring descriptor discovery for %{public}@: waiting for descriptor cache", v26, 0xCu);
      sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    if (v69)
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v48 = sub_224CBC42C(0xBu, 0, 0);
      v69(0, v48);
    }
  }
}

uint64_t sub_224A36F98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_224A37578(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_224DAF858();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_224DAF838();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_224ADD400(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_224A5B698(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_224AE1A40(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_224DAF698();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_224DAF6A8();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_224A377DC(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

void sub_224A377DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_224A5B698(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_224A4A5EC(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_224A3DCC0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_224DAF698();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_224DAF6A8();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224A3796C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_224A37A68(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__services];
  v5 = *&v2[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue];
  v6 = [a1 remoteProcess];
  v7 = type metadata accessor for ControlCenterClient();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions] = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue] = v5;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection] = a1;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services] = v4;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__processHandle] = v6;
  v9 = v5;
  v10 = a1;

  v11 = v6;
  sub_224DAF938();

  LODWORD(v22) = [v11 pid];
  v12 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v12);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v13 = &v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__logIdentifier];
  *v13 = 0xD000000000000014;
  *(v13 + 1) = 0x8000000224DCECA0;
  v24.receiver = v8;
  v24.super_class = v7;
  v14 = objc_msgSendSuper2(&v24, sel_init);

  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_224A37E8C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_224A37E94;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  v19 = v14;

  [v10 configureConnection_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v20 = *&v18[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock];
    os_unfair_lock_lock(*(v20 + 16));
    swift_beginAccess();
    v21 = v19;
    sub_224A38340(&v22, v21);
    swift_endAccess();

    os_unfair_lock_unlock(*(v20 + 16));
    [v10 activate];
  }
}

uint64_t sub_224A37DC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A37E38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_224A37E94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_224A37EBC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAEBB8();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAEBC8();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAEBD8();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAEBE8();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224A383E4;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_45_1;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224D2422C;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_53_1;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224D24234;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_61_1;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

uint64_t sub_224A382E0()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224A3837C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_224A383E4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224A383EC(a1);
}

void sub_224A383EC(void *a1)
{
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364F28);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v21);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono ControlCenter connection from %{public}s activated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue];
      BSDispatchQueueAssert();
      v20 = *&v18[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue];
      BSDispatchQueueAssert();

      v16 = v18;
    }
  }
}

uint64_t sub_224A3869C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = sub_224DACB98();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue);
  BSDispatchQueueAssert();
  BSDispatchQueueAssert();
  v18 = [*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection) remoteProcess];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  }

  v29 = a2;
  v20 = sub_224DAEE18();

  sub_224A38AB0(v20, 1, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  }

  (*(v13 + 32))(v16, v11, v12);
  sub_224A3317C(*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services) + 16, v32);
  v21 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v22 = swift_allocObject();
  v23 = [objc_opt_self() currentContext];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 remoteProcess];
  }

  else
  {
    v25 = 0;
  }

  v22[2] = v25;
  v22[3] = 0xD00000000000001DLL;
  v22[4] = 0x8000000224DCEC60;
  *v7 = v22;
  v27 = v30;
  (*(v30 + 104))(v7, *MEMORY[0x277CF9B90], v4);
  v28 = *v21;
  sub_224C7F6A4(v16, v31, v29, v7);
  (*(v27 + 8))(v7, v4);
  (*(v13 + 8))(v16, v12);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_224A38A70()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A38AB0@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  HIDWORD(v23) = a2;
  v27 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v23 - v7;
  sub_224A3317C(*(v3 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services) + 56, v30);
  v25 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224D24194(&qword_281351920);
  sub_224D24194(&qword_2813518E0);
  sub_224D24194(&unk_281351910);
  sub_224D24194(&unk_281351900);
  v24 = a1;
  sub_224DAA208();
  sub_224DAC6C8();
  (*(v5 + 8))(v8, v26);
  if (v29)
  {
    sub_224A36F98(&v28, v31);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_224DAE328();
    v9 = v27;
    sub_224DA9FF8();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v12 = BYTE4(v23);
  v13 = v27;
  sub_224A3311C(&v28, &unk_27D6F4700, &unk_224DB3A10);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v14 = objc_allocWithZone(MEMORY[0x277CC1E50]);

  v15 = sub_224A33224();
  if (v15)
  {
    v18 = v15;
    v19 = [v15 containingBundleRecord];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 bundleIdentifier];
      if (v21)
      {
        v22 = v21;
        sub_224DAEE18();

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  if (v12)
  {

LABEL_6:
    sub_224DA9FF8();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    return (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  return (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
}

uint64_t sub_224A38FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v38 = a4;
  v6 = sub_224DACB98();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB08();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DACB28();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v30);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DACC88();
  v16 = *(v34 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v34);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v21 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  v22 = v32;
  v23 = v33;
  sub_224D84200(v32, v21);

  v24 = *(v23 + 232);
  v25 = sub_224DAC108();
  v40 = v22;
  v41 = a1;
  v42 = a2;
  v26 = sub_224A392FC(sub_224D8E708, v39, v25);
  (*(v12 + 104))(v15, *MEMORY[0x277CF9B50], v30);
  v27 = v38;
  sub_224DACB68();
  (*(v36 + 16))(v35, v27, v37);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v26, v19);

  return (*(v16 + 8))(v19, v34);
}

uint64_t sub_224A3933C(uint64_t a1, uint64_t a2)
{
  v91 = sub_224DACC88();
  v99 = *(v91 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v91);
  v94 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_224DACB98();
  v6 = *(v84 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v84);
  v83 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = v74 - v10;
  v105 = sub_224DAC268();
  v97 = *(v105 - 8);
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = v74 - v18;
  v19 = sub_224DABE18();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = MEMORY[0x28223BE20](v19);
  v24 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 + 16);
  if (!v86)
  {
    return result;
  }

  v25 = 0;
  v80 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadFilters;
  v27 = *(v20 + 16);
  v26 = v20 + 16;
  v89 = v27;
  v88 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v95 = v97 + 16;
  v103 = (v97 + 32);
  v28 = v102[29];
  v100 = (v97 + 8);
  v79 = *MEMORY[0x277CF9BE8];
  v78 = (v6 + 104);
  v77 = (v6 + 8);
  v76 = (v99 + 16);
  v74[0] = v99 + 8;
  v85 = (v26 - 8);
  v87 = *(v26 + 56);
  v96 = v17;
  v81 = a2;
  v75 = v19;
  v74[2] = v26;
  v93 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[1] = v28;
  v27(v24, v88, v19);
  while (1)
  {
    v29 = sub_224DAC168();
    if (!v29)
    {
      result = (*v85)(v24, v19);
      goto LABEL_4;
    }

    v90 = v25;
    v30 = 0;
    v99 = v29;
    v32 = *(v29 + 64);
    result = v29 + 64;
    v31 = v32;
    v92 = result;
    v33 = 1 << *(result - 32);
    v34 = v33 < 64 ? ~(-1 << v33) : -1;
    v35 = v34 & v31;
    v36 = (v33 + 63) >> 6;
    v98 = v36;
    if ((v34 & v31) == 0)
    {
      break;
    }

    while (1)
    {
      v37 = v30;
LABEL_19:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v99;
      v43 = v97;
      v44 = v104;
      v45 = v105;
      (*(v97 + 16))(v104, *(v99 + 48) + *(v97 + 72) * v41, v105);
      v46 = *(*(v42 + 56) + 8 * v41);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v48 = *(v47 + 48);
      v49 = *(v43 + 32);
      v17 = v96;
      v49(v96, v44, v45);
      *&v17[v48] = v46;
      (*(*(v47 - 8) + 56))(v17, 0, 1, v47);
      v50 = v46;
      v39 = v37;
      v36 = v98;
LABEL_20:
      v51 = v101;
      sub_224A44E4C(v17, v101, &qword_27D6F47F0, &unk_224DB7850);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
      {
        break;
      }

      v53 = v104;
      v54 = v105;
      (*v103)(v104, v51, v105);
      v55 = v102[2];
      v56 = v102[3];
      swift_getObjectType();
      v57 = *(v56 + 16);
      sub_224DAC468();
      result = (*v100)(v53, v54);
      v30 = v39;
      if (!v35)
      {
        goto LABEL_12;
      }
    }

    v59 = v82;
    v60 = v84;
    (*v78)(v82, v79, v84);
    v61 = v83;
    v62 = v81;
    sub_224DACC68();
    v63 = sub_224DACB88();
    v64 = *v77;
    (*v77)(v61, v60);
    v64(v59, v60);
    if (v63)
    {
      v65 = v102[8];
      sub_224DAB348();
    }

    (*v76)(v94, v62, v91);
    v66 = *(v102 + v80);
    result = v66 + 32;
    v67 = -*(v66 + 16);
    v68 = -1;
    while (v67 + v68 != -1)
    {
      if (++v68 >= *(v66 + 16))
      {
        goto LABEL_34;
      }

      v69 = result + 40;
      sub_224A3317C(result, &v106);
      v71 = v107;
      v70 = v108;
      __swift_project_boxed_opaque_existential_1(&v106, v107);
      v72 = (*(v70 + 8))(v93, v94, v71, v70);
      __swift_destroy_boxed_opaque_existential_1(&v106);
      result = v69;
      if ((v72 & 1) == 0)
      {
        (*v74[0])(v94, v91);
        v24 = v93;
        v19 = v75;
        result = (*v85)(v93, v75);
        v25 = v90;
        goto LABEL_4;
      }
    }

    v24 = v93;
    v73 = v94;
    sub_224DAC138();
    (*v74[0])(v73, v91);
    v19 = v75;
    result = (*v85)(v24, v75);
    v25 = v90;
LABEL_4:
    if (++v25 == v86)
    {
      return result;
    }

    v89(v24, v88 + v87 * v25, v19);
  }

LABEL_12:
  if (v36 <= v30 + 1)
  {
    v38 = v30 + 1;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 - 1;
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v36)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      (*(*(v58 - 8) + 56))(v17, 1, 1, v58);
      v35 = 0;
      goto LABEL_20;
    }

    v35 = *(v92 + 8 * v37);
    ++v30;
    if (v35)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_224A39C6C(uint64_t a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_224DAEE18();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_224A39EA8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A39EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A39F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_224A39FC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  swift_beginAccess();
  if (*(*(a1 + v17) + 16) && (, sub_224A3E7EC(a2), v19 = v18, , (v19 & 1) != 0))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281365168);
    v21 = a2;

    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = a6;
      v25 = swift_slowAlloc();
      v26 = a1;
      v27 = a5;
      v28 = swift_slowAlloc();
      v43 = v28;
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2082;
      v29 = v21;
      v30 = v27;
      a1 = v26;
      *(v24 + 14) = sub_224A33F74(v30, v42, &v43);
      _os_log_impl(&dword_224A2F000, v22, v23, "[%{public}@] ignoring request to fetch descriptor for already pending descriptor query (saving completion) - reason: %{public}s", v24, 0x16u);
      sub_224A3311C(v25, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x22AA5EED0](v28, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    return sub_224A3E210(a1, v21, a3, a4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = a2;
    v33 = a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences;
    swift_beginAccess();
    v40 = a8;
    v41 = a5;
    v34 = *(v33 + 24);
    v35 = *(v33 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v39 = a7;
    v36 = *(v35 + 32);
    v37 = a2;
    v36(inited, v34, v35);
    swift_setDeallocating();
    v38 = *(inited + 16);
    swift_arrayDestroy();
    swift_endAccess();
    sub_224A3E210(a1, v37, a3, a4);
    return sub_224A3E908(v39, v40, v41, a6, a9 & 1);
  }
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

void sub_224A3A38C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  a2(v2, a1);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

unint64_t sub_224A3A40C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_224DAFE68();
  sub_224DAEE78();
  v6 = sub_224DAFEA8();

  return sub_224A3A484(a1, a2, v6);
}

unint64_t sub_224A3A484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_224DAFD88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_224A3A53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_224DAFE68();
  sub_224DAEE78();
  v7 = sub_224DAFEA8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_224DAFD88() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_224A3A634(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
  v34 = a2;
  v13 = sub_224DAED88();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v21 = sub_224DAEDD8();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE21D4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224A3A918(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3AB5C(a2, v8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_224A9E3F8(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_224A3AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_224A3AD28(a1, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B2669C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_224DAC378();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_224B1C614(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_224DAC378();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_224A3AD28(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = v5;
  v12 = *(v10 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_224A33088(a4, a2, a3);
  v13 = sub_224DAED88();
  return sub_224A3ADF0(a1, v13, a2, a3, a5, MEMORY[0x277CF9FB0]);
}

unint64_t sub_224A3ADF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v24 = a1;
  v26 = a3;
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v25 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v23 = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v16 = v9 + 16;
    v17 = v18;
    v19 = *(v16 + 56);
    do
    {
      v17(v12, *(v25 + 48) + v19 * v14, v8);
      sub_224A33088(v28, v26, v27);
      v20 = sub_224DAEDD8();
      (*(v16 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v23 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_224A3AF98()
{
  result = qword_281350ED0;
  if (!qword_281350ED0)
  {
    sub_224DAB7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350ED0);
  }

  return result;
}

uint64_t sub_224A3AFF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_224DAC378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationsGraceExpirationTimer;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationsGraceExpirationTimer))
  {

    sub_224DAC5F8();

    v15 = *(v0 + v14);
    *(v0 + v14) = 0;
  }

  v16 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationBundleIdentifiers;
  swift_beginAccess();
  v17 = *(v1 + v16);

  sub_224A3B2AC(v18, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_224A3311C(v5, &qword_27D6F3948, &qword_224DB5C10);
  }

  (*(v7 + 32))(v13, v5, v6);
  sub_224DAC648();
  (*(v7 + 16))(v11, v13, v6);
  sub_224DAC618();
  v20 = sub_224DAC608();
  v21 = *(v1 + v14);
  *(v1 + v14) = v20;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_224DAC638();

  (*(v7 + 8))(v13, v6);
}

uint64_t sub_224A3B2AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_224DAC378();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v47 = &v40 - v15;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  if (v19)
  {
    v40 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v14[9];
    v27 = *(a1 + 56) + v26 * v21;
    v28 = v14[2];
    v41 = v14;
    v42 = v28;
    v43 = v14 + 2;
    v44 = v26;
    v28(v13, v27, v4);
    v30 = v41 + 4;
    v29 = v41[4];
    v29(v47, v13, v4);
    v46 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v32 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v32 >= v23)
      {

        v38 = v40;
        v29(v40, v47, v4);
        return (v41[7])(v38, 0, 1, v4);
      }

      v22 = *(v16 + 8 * v32);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v34 = v45;
          v42(v45, *(v46 + 56) + (v33 | (v32 << 6)) * v44, v4);
          v29(v10, v34, v4);
          sub_224CE3D8C(&qword_281350DF0, MEMORY[0x277CF9A10]);
          v35 = v47;
          v36 = sub_224DAEDB8();
          v37 = *(v30 - 3);
          if (v36)
          {
            v37(v35, v4);
            result = (v29)(v35, v10, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v37)(v10, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v32 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 72 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v40 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v39 = v14[7];

    return v39(a2, 1, 1, v4);
  }

  return result;
}

unint64_t sub_224A3B690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7110, &qword_224DB4998);
    v3 = sub_224DAFBB8();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_224AA3CDC();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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

uint64_t sub_224A3B758(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_224A3B79C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224A3B79C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_224A3B7EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

unint64_t sub_224A3B888(unint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v12[3] = type metadata accessor for ProcessMonitor();
        v12[4] = &off_28382AA58;
        v10 = a2;

        v12[0] = v10;
        (*(v8 + 24))(v12, a3, ObjectType, v8);
        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for ProcessMonitor()
{
  result = qword_28135B6F8;
  if (!qword_28135B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A3BB44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_224ACFF60;

  return sub_224A3BBFC(a1, v5);
}

uint64_t sub_224A3BBFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224C51C58;

  return v7(a1);
}

uint64_t sub_224A3BCF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACFF60;

  return sub_224A48A18(a1, v4, v5, v7);
}

uint64_t sub_224A3BDC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_224ACFF60;

  return sub_224A3BE74(v2, v3, v4);
}

uint64_t sub_224A3BE74(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_224DAEE18();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_224C4FCE0;

  return sub_224A3BF48(v4, v6);
}

uint64_t sub_224A3BF48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224A3C8D0, 0, 0);
}

uint64_t sub_224A3C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = sub_224DADE98();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224A3C180, 0, 0);
}

uint64_t sub_224A3C180()
{
  v69 = v0;
  sub_224A3796C(*(v0 + 136) + 184, v0 + 56, &unk_27D6F4FB0, &unk_224DBADC8);
  if (!*(v0 + 80))
  {
    sub_224A3311C(v0 + 56, &unk_27D6F4FB0, &unk_224DBADC8);
    v24 = *(v0 + 184);
    v25 = *(v0 + 160);

    v26 = *(v0 + 8);
LABEL_28:

    return v26();
  }

  v1 = (v0 + 16);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_224A36F98((v0 + 56), v0 + 16);
  v5 = sub_224A47CD8(v4, v3);
  v6 = v5;
  *(v0 + 192) = v5;
  if (v7)
  {
    v8 = v5;
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 128);
    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281364E50);

    v11 = sub_224DAB228();
    v12 = sub_224DAF288();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v6;
      v15 = *(v0 + 120);
      v14 = *(v0 + 128);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v68[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_224A33F74(v15, v14, v68);
      *(v16 + 12) = 2082;
      v18 = [objc_opt_self() currentConnection];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 description];

        v21 = sub_224DAEE18();
        v23 = v22;
      }

      else
      {
        v21 = 0x6E776F6E6B6E75;
        v23 = 0xE700000000000000;
      }

      v41 = sub_224A33F74(v21, v23, v68);

      *(v16 + 14) = v41;
      _os_log_impl(&dword_224A2F000, v11, v12, "[WidgetCenter] %{public}s invalidate widget relevances from %{public}s - not authorized", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v17, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);

      v6 = v13;
      v1 = (v0 + 16);
    }

    else
    {
    }

LABEL_27:
    swift_willThrow();
    sub_224C54434(v6);
    v61 = *(v0 + 184);
    v62 = *(v0 + 160);
    __swift_destroy_boxed_opaque_existential_1(v1);

    v26 = *(v0 + 8);
    goto LABEL_28;
  }

  v67 = v5;
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 128);
  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281364E50);

  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();

  if (os_log_type_enabled(v29, v30))
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v68[0] = v34;
    *v33 = 136446466;
    *(v33 + 4) = sub_224A33F74(v32, v31, v68);
    *(v33 + 12) = 2082;
    v35 = [objc_opt_self() currentConnection];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 description];

      v38 = sub_224DAEE18();
      v40 = v39;
    }

    else
    {
      v38 = 0x6E776F6E6B6E75;
      v40 = 0xE700000000000000;
    }

    v42 = sub_224A33F74(v38, v40, v68);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_224A2F000, v29, v30, "[WidgetCenter] %{public}s invalidate widget relevances from %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v34, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  v43 = *(v0 + 136);
  v44 = v43[17];
  __swift_project_boxed_opaque_existential_1(v43 + 13, v43[16]);
  v45 = *(v44 + 24);
  if (!sub_224DADA38())
  {
    goto LABEL_24;
  }

  v47 = *(v0 + 176);
  v46 = *(v0 + 184);
  v48 = *(v0 + 160);
  v49 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 168);
  v51 = *(v0 + 120);
  v50 = *(v0 + 128);
  v64 = *(v0 + 112);
  v52 = *(v0 + 104);

  sub_224DA9FF8();
  sub_224DACA08();
  (*(v49 + 8))(v48, v65);
  sub_224DACF08();

  (*(v47 + 8))(v46, v66);
  v53 = *(v0 + 96);
  *(v0 + 200) = v53;
  if (!v53)
  {
LABEL_24:
    v57 = sub_224DAB228();
    v58 = sub_224DAF288();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_224A2F000, v57, v58, "No matching descriptors found", v59, 2u);
      MEMORY[0x22AA5EED0](v59, -1, -1);
    }

    sub_224BFD554();
    swift_allocError();
    *v60 = 1;
    v6 = v67;
    v1 = (v0 + 16);
    goto LABEL_27;
  }

  v54 = swift_task_alloc();
  *(v0 + 208) = v54;
  *(v54 + 16) = v0 + 16;
  *(v54 + 24) = v53;
  v55 = *(MEMORY[0x277D85A40] + 4);
  v56 = swift_task_alloc();
  *(v0 + 216) = v56;
  *v56 = v0;
  v56[1] = sub_224C4FA98;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_224A3C8D0()
{
  v1 = *(v0[4] + 16);
  v2 = sub_224DAF2C8();
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  if (v6)
  {
    v7 = v0[4];
    sub_224A32920(v2, 1, v0[5]);

    if ((*(v4 + 48))(v5, 1, v3) != 1)
    {
      (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
      v8 = sub_224DA9FE8();
      v10 = v9;
      v0[9] = v9;
      v11 = swift_task_alloc();
      v0[10] = v11;
      *v11 = v0;
      v11[1] = sub_224C4F858;
      v12 = v0[3];
      v13 = v0[4];
      v14 = v0[2];

      return sub_224A3C050(v14, v12, v8, v10);
    }
  }

  else
  {
    (*(v4 + 56))(v0[5], 1, 1, v0[6]);
  }

  sub_224A3311C(v0[5], &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  swift_allocError();
  *v16 = 9;
  swift_willThrow();
  v17 = v0[8];
  v18 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t sub_224A3CAC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_224A3CB80(a1, a2);
  sub_224A3CCB0(&unk_283827CC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_224A3CB0C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3450, &unk_224DB38A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_224A3CB80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_224A3CB0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_224DAF998();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_224DAEED8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_224A3CB0C(v10, 0);
        result = sub_224DAF928();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_224A3CCB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_224AD5E84(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_224A3CD9C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_224ACFF60;

  return v7();
}

uint64_t sub_224A3CE84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A3CECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A3CF14(uint64_t a1, unint64_t a2)
{
  result = sub_224A3D04C();
  v14 = result;
  if (!(a2 >> 62))
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_224CB93B4(v14);
    v11 = v10;

    v12 = *(a1 + 16);
    v13 = v11;

    sub_224DA9E98();
  }

  result = sub_224DAF838();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = MEMORY[0x22AA5DCC0](i, a2);
        sub_224A3DC84(&v13, v7);
      }
    }

    else
    {
      v8 = (a2 + 32);
      do
      {
        v9 = *v8++;
        sub_224A3DC84(&v13, v9);

        --v5;
      }

      while (v5);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A3D04C()
{
  v1 = *(v0 + 16);

  sub_224DA9E88();

  v3 = 0;
  v4 = v13;
  v5 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v6 = *(v4 + 16);
LABEL_2:
  v7 = (v4 + 40 + 16 * v3);
  while (1)
  {
    if (v6 == v3)
    {

      v12 = sub_224A3DADC(v5);

      return v12;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    ++v3;
    v8 = v7 + 2;
    v10 = *(v7 - 1);
    v9 = *v7;
    sub_224DAF538();

    result = sub_224DAF4F8();
    v7 = v8;
    if (result)
    {
      MEMORY[0x22AA5D350]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      result = sub_224DAF078();
      v5 = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A3D19C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_224DAEE98();

    return sub_224DAEF28();
  }

  return result;
}

uint64_t sub_224A3D238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D3B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D418(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_224A3D428(uint64_t a1)
{
  v46 = a1;
  v45 = type metadata accessor for ExtensionTask.Identifier(0);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88)) + 16));
  v6 = *((*v5 & *v1) + 0xB8);
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v44 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(v7 + 56);
    v18 = (*(v7 + 48) + 2 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    if (v19)
    {
      sub_224A414C4(v46 + v44, v4, type metadata accessor for ExtensionTask.Identifier);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
        v42 = *&v4[*(v23 + 48)];
        v43 = v23;

        v24 = *&v4[*(v43 + 64)];

        v25 = sub_224DABE18();
        (*(*(v25 - 8) + 8))(v4, v25);
        goto LABEL_15;
      }

      sub_224A48F3C(v4);
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_11:
      v20 = 1;
LABEL_15:
      LODWORD(v43) = swift_isUniquelyReferenced_nonNull_native();
      v47 = v13;
      LODWORD(v42) = v20 & 1;
      if (v20)
      {
        v26 = 256;
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_224A48FA0(v26 | v19);
      v29 = v13[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_30;
      }

      if (v13[3] >= v32)
      {
        if (v43)
        {
          goto LABEL_23;
        }

        v43 = v27;
        v36 = v28;
        sub_224B2625C();
        v27 = v43;
        v13 = v47;
        if ((v36 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        v34 = v13[7];
        v35 = *(v34 + 8 * v27);
        *(v34 + 8 * v27) = v21;
      }

      else
      {
        HIDWORD(v41) = v28;
        sub_224A3D7F0(v32, v43);
        v27 = sub_224A48FA0(v26 | v19);
        v33 = v28 & 1;
        LOBYTE(v28) = BYTE4(v41);
        if ((BYTE4(v41) & 1) != v33)
        {
          goto LABEL_32;
        }

LABEL_23:
        v13 = v47;
        if (v28)
        {
          goto LABEL_24;
        }

LABEL_26:
        v13[(v27 >> 6) + 8] |= 1 << v27;
        v37 = (v13[6] + 2 * v27);
        *v37 = v19;
        v37[1] = v42;
        *(v13[7] + 8 * v27) = v21;
        v38 = v13[2];
        v31 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v31)
        {
          goto LABEL_31;
        }

        v13[2] = v39;
      }
    }

    else
    {
      v22 = *(v17 + 8 * v16);

      if (v20)
      {
        goto LABEL_11;
      }

LABEL_13:
    }
  }

  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v13;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224A3D7F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38D0, &qword_224DB4708);
  v37 = a2;
  result = sub_224DAFB98();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = (*(v5 + 48) + 2 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_224DAFE68();
      sub_224DAFE88();
      sub_224DAFE88();
      result = sub_224DAFEA8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 2 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_224A3DAA0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_224A3DADC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224DAF538();
    v5 = sub_224A3CE84(&unk_2813509A0, MEMORY[0x277CFA140]);
    result = MEMORY[0x22AA5D540](i, v4, v5);
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
        v9 = MEMORY[0x22AA5DCC0](j, a1);
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

      sub_224A37578(&v11, v9, MEMORY[0x277CFA140], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);

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
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224A3DCC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_224DAF8F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_224DAF698();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

char *sub_224A3DECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
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

char *sub_224A3DFD8(char *a1, int64_t a2, char a3)
{
  result = sub_224A3DECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_224A3DFF8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA5DBD0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_224DAF818() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_224DAF828();
    swift_dynamicCast();
    v5 = v18;
    v10 = *(a4 + 40);
    v11 = sub_224DAF698();
    v12 = -1 << *(a4 + 32);
    v8 = v11 & ~v12;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * v8);
        v15 = sub_224DAF6A8();

        if (v15)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v13;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
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

  v16 = *(*(a4 + 48) + 8 * v8);

  v17 = v16;
}

uint64_t sub_224A3E204(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_224A3E210(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
LABEL_6:
    v13 = MEMORY[0x277D84F90];
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v10 = *(a1 + v8);

  v11 = sub_224A3E7EC(a2);
  if ((v12 & 1) == 0)
  {

    goto LABEL_6;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_224A3E50C(0, v13[2] + 1, 1, v13);
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_224A3E50C((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_224A58DCC;
  v17[5] = v14;
LABEL_12:
  swift_beginAccess();

  sub_224A3E520(v13, a2);
  swift_endAccess();
}

uint64_t sub_224A3E3A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_224A3E3E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3578, &unk_224DB3B30);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void sub_224A3E534(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v9 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_224A3E65C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v4 = v20;
  }

  else
  {
    v11 = *v4;
    v12 = sub_224A3E7EC(a2);
    if (v13)
    {
      v14 = v12;
      v15 = *v7;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v7;
      v21 = *v7;
      if (!v16)
      {
        sub_224B2AC58(a3, a4);
        v17 = v21;
      }

      v18 = *(*(v17 + 56) + 8 * v14);

      sub_224A58C3C(v14, v17);

      *v7 = v17;
    }

    else
    {
    }
  }
}

id sub_224A3E65C(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_224A3E7EC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_224A6FB90(v17, a3 & 1, a4, a5);
      v21 = *v8;
      v12 = sub_224A3E7EC(a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_224DAF538();
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_224B2AC58(a4, a5);
      v12 = v20;
    }
  }

  v23 = *v8;
  if (v18)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v12);
    *(v24 + 8 * v12) = a1;
  }

  v23[(v12 >> 6) + 8] |= 1 << v12;
  *(v23[6] + 8 * v12) = a2;
  *(v23[7] + 8 * v12) = a1;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  return a2;
}

unint64_t sub_224A3E7EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_224DAF698();
  return sub_224A3E840(a1, v5, MEMORY[0x277CFA140]);
}

unint64_t sub_224A3E840(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_224DAF6A8();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_224A3E908(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v116) = a5;
  v111 = a3;
  v112 = a4;
  v113 = a2;
  v120 = *MEMORY[0x277D85DE8];
  v8 = sub_224DAE918();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_224DA9908();
  v105 = *(v106 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v115 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_224DA9878();
  v102 = *(v103 - 1);
  v13 = v102[8];
  MEMORY[0x28223BE20](v103);
  v101 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v114 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ExtensionTask.Identifier(0);
  v18 = *(*(v100 - 1) + 64);
  MEMORY[0x28223BE20](v100);
  v20 = (&v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_224DAE338();
  v28 = *(v6 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v29 = *(v22 + 72);
  v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v31 = v30 + v29;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_224DB3100;
  v33 = sub_224DAE8B8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v32 + v30, 3, 5, v33);
  v36 = MEMORY[0x277CE3D30];
  if ((v116 & 1) == 0)
  {
    v36 = MEMORY[0x277CE3D18];
  }

  (*(v34 + 104))(v25, *v36, v33);
  v35(v25, 0, 5, v33);
  v37 = sub_224AD946C(1uLL, 2, 1, v32);
  *(v37 + 16) = 2;
  sub_224B442EC(v25, v31 + v37);
  v38 = v20;
  *v20 = v27;
  v99 = v20;
  swift_storeEnumTagMultiPayload();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v40 = v114;
  (*(*(v39 - 8) + 56))(v114, 1, 1, v39);
  v100 = type metadata accessor for ExtensionTask(0);
  v41 = objc_allocWithZone(v100);
  v42 = v27;
  sub_224DAE908();
  v43 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v44 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v45 = sub_224DAC938();
  (*(*(v45 - 8) + 56))(&v41[v44], 1, 1, v45);
  v46 = &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v47 = 0;
  v47[1] = 0;
  v48 = &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v48 = 0;
  v48[1] = 0;
  v49 = &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v49 = 0;
  v49[1] = 0;
  v50 = v101;
  sub_224DA9868();
  (v102[4])(&v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v50, v103);
  *&v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v27;
  v103 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
  sub_224A3F63C(v40, &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v51 = *&v41[v43];
  *&v41[v43] = v37;
  v102 = v42;

  v52 = &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v52 = 0;
  v52[8] = 1;
  sub_224A3F63C(v38, &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v53 = v115;
  sub_224DA98F8();
  v54 = v105;
  v55 = v106;
  (*(v105 + 16))(&v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v53, v106);
  *&v118 = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v56 = sub_224A3D19C(8);
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = MEMORY[0x22AA5D1C0](v56, v58, v60, v62);
  v65 = v64;
  v66 = v104;

  v67 = &v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v67 = v63;
  v67[1] = v65;
  v41[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v117.receiver = v41;
  v117.super_class = v100;
  v68 = objc_msgSendSuper2(&v117, sel_init);
  v69 = v102;

  (*(v54 + 8))(v115, v55);
  sub_224A3D238(v114, v103);
  sub_224A3D238(v99, type metadata accessor for ExtensionTask.Identifier);
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  v72 = v108;
  v71 = v109;
  v73 = v110;
  (*(v109 + 104))(v108, *MEMORY[0x277CE3D68], v110);
  v74 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_requiredDataProtectionLevel;
  swift_beginAccess();
  (*(v71 + 40))(&v68[v74], v72, v73);
  swift_endAccess();
  sub_224A3317C(v66, &v118);
  v75 = swift_allocObject();
  v76 = v111;
  v77 = v112;
  *(v75 + 2) = v69;
  *(v75 + 3) = v76;
  *(v75 + 4) = v77;
  *(v75 + 5) = v70;
  v78 = v107;
  *(v75 + 6) = v107;
  sub_224A36F98(&v118, v75 + 56);
  v79 = &v68[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v80 = *&v68[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v81 = *&v68[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
  *v79 = sub_224A4E848;
  v79[1] = v75;
  v82 = v69;

  v83 = v78;
  sub_224A3D418(v80);
  sub_224A3317C(v66, &v118);
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v82;
  sub_224A36F98(&v118, v84 + 32);
  *(v84 + 72) = v76;
  *(v84 + 80) = v77;
  *(v84 + 88) = v113;
  *(v84 + 96) = v116;
  *(v84 + 104) = v70;
  v85 = &v68[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v86 = *&v68[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v87 = *&v68[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
  *v85 = sub_224A50220;
  v85[1] = v84;
  v116 = v82;

  v88 = v83;
  sub_224A3D418(v86);
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v89 = sub_224DAB258();
  __swift_project_value_buffer(v89, qword_281365168);
  sub_224A3317C(v66, &v118);
  v90 = sub_224DAB228();
  v91 = sub_224DAF2A8();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138543362;
    __swift_project_boxed_opaque_existential_1(&v118, v119);
    v94 = sub_224DAE338();
    __swift_destroy_boxed_opaque_existential_1(&v118);
    *(v92 + 4) = v94;
    *v93 = v94;
    _os_log_impl(&dword_224A2F000, v90, v91, "[%{public}@] scheduling query", v92, 0xCu);
    sub_224A3311C(v93, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v93, -1, -1);
    MEMORY[0x22AA5EED0](v92, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v118);
  }

  v95 = *&v88[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService + 24];
  v96 = *&v88[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService + 32];
  __swift_project_boxed_opaque_existential_1(&v88[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService], v95);
  (*(v96 + 16))(v68, v95, v96);

  v98 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224A3F4BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A3F4F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224A3F54C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_224A3F5C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A3F63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_224A3F6A4()
{
  result = qword_281350BE0;
  if (!qword_281350BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BE0);
  }

  return result;
}

uint64_t sub_224A3F71C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v137 = a7;
  v155 = a6;
  v156 = a5;
  v154 = a4;
  v153 = a3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v136 = *(v138 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v135 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v145 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v148 = &v133 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v133 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v141 = &v133 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v142 = &v133 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v152 = &v133 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v151 = &v133 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v133 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v133 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v139 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v146 = &v133 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v143 = &v133 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v140 = &v133 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v147 = &v133 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v144 = &v133 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v150 = &v133 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v133 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v133 - v52;
  v54 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationBundleIdentifiers;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = v32;

  v157 = sub_224A42C84(v57);
  v158 = a2;
  sub_224A3796C(a2, v31, &unk_27D6F5060, &qword_224DB5620);
  v58 = *(v33 + 48);
  v160 = v33 + 48;
  v159 = v58;
  if (v58(v31, 1, v32) == 1)
  {
    v59 = a1;
    sub_224A3311C(v31, &unk_27D6F5060, &qword_224DB5620);
    v60 = v154;
  }

  else
  {
    (*(v33 + 32))(v53, v31, v32);
    v61 = v33;
    v62 = v32;
    v63 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v59 = a1;
    v64 = *(a1 + v63);

    LOBYTE(v63) = sub_224A33924(v53, v64);

    if (v63)
    {

      result = (*(v61 + 8))(v53, v62);
      v66 = 1;
      v60 = v154;
      v67 = v153;
      v68 = v155;
      v56 = v62;
      v33 = v61;
LABEL_45:
      *v67 = v66;
      *(v67 + 8) = 0;
      *v60 = 1;
LABEL_46:
      if ((*(v67 + 8) & 1) != 0 || *v67 != 1)
      {
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    (*(v61 + 8))(v53, v62);
    v60 = v154;
    v56 = v62;
    v33 = v61;
  }

  sub_224A3796C(v158, v29, &unk_27D6F5060, &qword_224DB5620);
  v69 = v159(v29, 1, v56);
  v67 = v153;
  v70 = v152;
  if (v69 == 1)
  {
    sub_224A3311C(v29, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v33 + 32))(v51, v29, v56);
    if (sub_224A33924(v51, v157))
    {

      result = (*(v33 + 8))(v51, v56);
      v66 = 1;
      a1 = v59;
LABEL_44:
      v68 = v155;
      goto LABEL_45;
    }

    (*(v33 + 8))(v51, v56);
  }

  a1 = v59;
  v71 = v151;
  sub_224A3796C(v156, v151, &unk_27D6F5060, &qword_224DB5620);
  v72 = v159(v71, 1, v56);
  v68 = v155;
  v73 = v150;
  if (v72 == 1)
  {
    sub_224A3311C(v71, &unk_27D6F5060, &qword_224DB5620);
    v74 = v147;
  }

  else
  {
    (*(v33 + 32))(v150, v71, v56);
    v75 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v76 = *(a1 + v75);

    v77 = sub_224A33924(v73, v76);

    if (v77)
    {
      goto LABEL_20;
    }

    (*(v33 + 8))(v73, v56);
    v74 = v147;
    v70 = v152;
  }

  sub_224A3796C(v156, v70, &unk_27D6F5060, &qword_224DB5620);
  if (v159(v70, 1, v56) != 1)
  {
    v73 = v144;
    (*(v33 + 32))(v144, v70, v56);
    if ((sub_224A33924(v73, v157) & 1) == 0)
    {
      (*(v33 + 8))(v73, v56);
      if (v68)
      {
        goto LABEL_17;
      }

LABEL_22:

      goto LABEL_23;
    }

LABEL_20:

    result = (*(v33 + 8))(v73, v56);
    v66 = 1;
    goto LABEL_45;
  }

  sub_224A3311C(v70, &unk_27D6F5060, &qword_224DB5620);
  if (!v68)
  {
    goto LABEL_22;
  }

LABEL_17:
  v78 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v79 = *(a1 + v78);

  v80 = *(sub_224A42EF0(v68, v79) + 2);

  if (v80)
  {

    v66 = 1;
    goto LABEL_45;
  }

  v82 = *(sub_224A42EF0(v68, v157) + 2);

  if (v82)
  {
    v66 = 1;
    goto LABEL_45;
  }

  v99 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
  swift_beginAccess();
  v100 = *(a1 + v99);

  v102 = sub_224A44EB4(v101, v68);

  v103 = *(v102 + 16);
  v74 = v147;

  if (v103)
  {
    v66 = 2;
    goto LABEL_45;
  }

LABEL_23:
  v81 = v142;
  sub_224A3796C(v158, v142, &unk_27D6F5060, &qword_224DB5620);
  if (v159(v81, 1, v56) == 1)
  {
    sub_224A3311C(v81, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v33 + 32))(v74, v81, v56);
    v83 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
    swift_beginAccess();
    if (*(*(a1 + v83) + 16))
    {
      v84 = *(a1 + v83);

      sub_224A89A08(v74);
      v86 = v85;

      if (v86)
      {
        result = (*(v33 + 8))(v74, v56);
        v66 = 2;
        goto LABEL_45;
      }
    }

    (*(v33 + 8))(v74, v56);
  }

  v87 = v141;
  sub_224A3796C(v158, v141, &unk_27D6F5060, &qword_224DB5620);
  v88 = v159(v87, 1, v56);
  v134 = v56;
  v133 = v33;
  if (v88 == 1)
  {
    sub_224A3311C(v87, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_42;
  }

  (*(v33 + 32))(v140, v87, v56);
  v89 = sub_224DA9FE8();
  v91 = v90;
  v92 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs;
  swift_beginAccess();
  v93 = *(a1 + v92);
  if (*(v93 + 16))
  {
    v94 = v33;

    v95 = sub_224A3A40C(v89, v91);
    v97 = v96;

    if (v97)
    {
      v98 = *(*(v93 + 56) + 4 * v95);

      v33 = v94;
      if (BSPIDIsBeingDebugged())
      {
        v56 = v134;
        result = (*(v94 + 8))(v140, v134);
        v66 = 4;
        goto LABEL_44;
      }
    }

    else
    {

      v33 = v94;
    }
  }

  else
  {
  }

  (*(v33 + 8))(v140, v134);
LABEL_42:
  sub_224A3317C(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__keepAliveAssertionProvider, &v161);
  v104 = v162;
  v105 = v163;
  __swift_project_boxed_opaque_existential_1(&v161, v162);
  v106 = v135;
  sub_224DAF528();
  LOBYTE(v104) = (*(v105 + 16))(v106, v104, v105);
  (*(v136 + 8))(v106, v138);
  result = __swift_destroy_boxed_opaque_existential_1(&v161);
  if (v104)
  {
    v66 = 8;
    v56 = v134;
    v33 = v133;
    goto LABEL_44;
  }

  v56 = v134;
  v33 = v133;
  v68 = v155;
  if (*v60)
  {
    goto LABEL_46;
  }

LABEL_48:
  v107 = v149;
  sub_224A3796C(v158, v149, &unk_27D6F5060, &qword_224DB5620);
  if (v159(v107, 1, v56) == 1)
  {
    result = sub_224A3311C(v149, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v108 = v143;
    (*(v33 + 32))(v143, v149, v56);
    v109 = [objc_allocWithZone(MEMORY[0x277D23B10]) init];
    sub_224DA9FE8();
    v110 = sub_224DAEDE8();
    v157 = a1;
    v111 = v60;
    v112 = v68;
    v113 = v33;
    v114 = v56;
    v115 = v110;

    sub_224DA9E78();
    sub_224DA9E68();
    sub_224DA9DA8();
    v117 = v116;

    v118 = [v109 queryAppIntentActivityForBundleIdentifier:v115 sinceSeconds:v117];

    v56 = v114;
    v33 = v113;
    v68 = v112;
    v60 = v111;
    a1 = v157;
    result = (*(v33 + 8))(v108, v56);
    if (v118)
    {
      v119 = 32;
LABEL_62:
      *v67 = v119;
      *(v67 + 8) = 0;
      *v60 = 1;
      return result;
    }
  }

LABEL_52:
  if (*v60)
  {
    return result;
  }

  v120 = v148;
  sub_224A3796C(v158, v148, &unk_27D6F5060, &qword_224DB5620);
  if (v159(v120, 1, v56) == 1)
  {
    sub_224A3311C(v120, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v121 = v60;
    v122 = v68;
    v123 = v146;
    (*(v33 + 32))(v146, v120, v56);
    v124 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    v125 = sub_224A33924(v123, v124);

    v126 = v123;
    v68 = v122;
    v60 = v121;
    result = (*(v33 + 8))(v126, v56);
    if (v125)
    {
LABEL_61:
      v119 = 16;
      goto LABEL_62;
    }
  }

  if (v68)
  {
    v127 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    v128 = *(sub_224A42EF0(v68, v127) + 2);

    if (v128)
    {
      goto LABEL_61;
    }
  }

  v129 = v145;
  sub_224A3796C(v156, v145, &unk_27D6F5060, &qword_224DB5620);
  if (v159(v129, 1, v56) == 1)
  {
    return sub_224A3311C(v129, &unk_27D6F5060, &qword_224DB5620);
  }

  v130 = v139;
  (*(v33 + 32))(v139, v129, v56);
  v131 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

  v132 = sub_224A33924(v130, v131);

  result = (*(v33 + 8))(v130, v56);
  if (v132)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_224A40890(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v22 = a3;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAB848();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x88)) + 16));
  v16 = sub_224A3D428(a1);
  v23 = *(v4 + *((*v15 & *v4) + 0xC0));
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = v24;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  sub_224DAB7E8();
  v26 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v14, v10, v18);
  _Block_release(v18);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v25);
}

uint64_t sub_224A40BAC(char *a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224A431A0(v1, a1, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

uint64_t sub_224A40C80()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v73 - v9;
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v76 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v73 - v16;
  v18 = type metadata accessor for ExtensionTask.Identifier(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224A415FC(v0, v21, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v26 = *v21;
      if (EnumCaseMultiPayload)
      {
        v39 = v21[1];
      }

      v82 = sub_224CF8254();
      v83 = v36;
      MEMORY[0x22AA5D210](60, 0xE100000000000000);
      v28 = [v26 description];
      goto LABEL_16;
    }

LABEL_7:
    v26 = *v21;
    v82 = sub_224CF8254();
    v83 = v27;
    MEMORY[0x22AA5D210](60, 0xE100000000000000);
    v28 = [v26 description];
LABEL_16:
    v40 = v28;
    v41 = sub_224DAEE18();
    v43 = v42;

    MEMORY[0x22AA5D210](v41, v43);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        (*(v12 + 32))(v17, v21, v11);
        v82 = sub_224CF8254();
        v83 = v23;
        MEMORY[0x22AA5D210](60, 0xE100000000000000);
        v24 = sub_224DABD98();
        MEMORY[0x22AA5D210](v24);

        MEMORY[0x22AA5D210](62, 0xE100000000000000);
        v25 = v82;
        (*(v12 + 8))(v17, v11);
      }

      else
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
        v46 = *(v21 + *(v45 + 48));

        v47 = *(v21 + *(v45 + 64));
        v75 = v12;
        (*(v12 + 32))(v76, v21, v11);
        v82 = sub_224CF8254();
        v83 = v48;
        MEMORY[0x22AA5D210](60, 0xE100000000000000);
        v49 = *(v47 + 16);
        if (v49)
        {
          v74 = v11;
          v81 = MEMORY[0x277D84F90];
          sub_224A3DFD8(0, v49, 0);
          v50 = v81;
          v51 = *(v80 + 16);
          v52 = *(v80 + 80);
          v73[1] = v47;
          v53 = v47 + ((v52 + 32) & ~v52);
          v77 = *(v80 + 72);
          v78 = v51;
          v80 += 16;
          v54 = (v80 - 8);
          do
          {
            v55 = v79;
            v78(v10, v53, v79);
            v56 = sub_224DAA1C8();
            v58 = v57;
            (*v54)(v10, v55);
            v81 = v50;
            v60 = *(v50 + 16);
            v59 = *(v50 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_224A3DFD8((v59 > 1), v60 + 1, 1);
              v50 = v81;
            }

            *(v50 + 16) = v60 + 1;
            v61 = v50 + 16 * v60;
            *(v61 + 32) = v56;
            *(v61 + 40) = v58;
            v53 += v77;
            --v49;
          }

          while (v49);

          v11 = v74;
        }

        else
        {

          v50 = MEMORY[0x277D84F90];
        }

        v81 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
        sub_224A6B84C();
        v68 = sub_224DAEDA8();
        v70 = v69;

        MEMORY[0x22AA5D210](v68, v70);

        MEMORY[0x22AA5D210](14906, 0xE200000000000000);
        v71 = v76;
        v72 = sub_224DABD98();
        MEMORY[0x22AA5D210](v72);

        MEMORY[0x22AA5D210](62, 0xE100000000000000);
        v25 = v82;
        (*(v75 + 8))(v71, v11);
      }

      return v25;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9)
    {
      v62 = *v21;
      v82 = sub_224CF8254();
      v83 = v63;
      MEMORY[0x22AA5D210](60, 0xE100000000000000);
      v64 = [v62 description];
      v65 = sub_224DAEE18();
      v67 = v66;

      MEMORY[0x22AA5D210](v65, v67);

      return v82;
    }

    v26 = *v21;
    v29 = v21[1];
    v30 = v21[2];
    v82 = sub_224CF8254();
    v83 = v31;
    MEMORY[0x22AA5D210](60, 0xE100000000000000);
    v32 = [v26 description];
    v33 = sub_224DAEE18();
    v35 = v34;

    MEMORY[0x22AA5D210](v33, v35);

    MEMORY[0x22AA5D210](14906, 0xE200000000000000);
    MEMORY[0x22AA5D210](v29, v30);
LABEL_17:

    MEMORY[0x22AA5D210](62, 0xE100000000000000);

    return v82;
  }

  (*(v2 + 32))(v5, v21, v1);
  v82 = sub_224CF8254();
  v83 = v37;
  MEMORY[0x22AA5D210](60, 0xE100000000000000);
  v38 = sub_224DABC88();
  MEMORY[0x22AA5D210](v38);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  v25 = v82;
  (*(v2 + 8))(v5, v1);
  return v25;
}

uint64_t sub_224A414C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A4152C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A41594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A415FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A41664(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = (v64 - v15);
  result = MEMORY[0x28223BE20](v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_224A41D48(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
          v58 = sub_224DAED88();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
              v62 = sub_224DAEDD8();
              v63 = *v79;
              (*v79)(v13, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
          v36 = sub_224DAED88();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
              v42 = sub_224DAEDD8();
              v43 = *v78;
              (*v78)(v13, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_224A41D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3708, &qword_224DB3CE0);
  result = sub_224DAF918();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
    result = sub_224DAED88();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A42074(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - v13;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v56 = v12 + 16;
  v57 = a4;
  v48 = v12 + 32;
  v53 = a4 + 56;
  v50 = v12;
  v58 = (v12 + 8);

  v42 = 0;
  v20 = 0;
  v46 = v18;
  v47 = a3 + 64;
  v44 = a3;
  while (v17)
  {
LABEL_12:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v49;
    v24 = v50;
    v26 = *(v50 + 72);
    v27 = *(a3 + 48) + v26 * (v23 | (v20 << 6));
    v54 = *(v50 + 16);
    v55 = v26;
    v54(v49, v27, v6);
    (*(v24 + 32))(v59, v25, v6);
    v28 = v57;
    v29 = *(v57 + 40);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
    v30 = sub_224DAED88();
    v31 = -1 << *(v28 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    v34 = 1 << v32;
    if (((1 << v32) & *(v53 + 8 * (v32 >> 6))) != 0)
    {
      v45 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52 = ~v31;
      while (1)
      {
        v35 = v51;
        v54(v51, *(v57 + 48) + v32 * v55, v6);
        sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
        v36 = sub_224DAEDD8();
        v21 = *v58;
        (*v58)(v35, v6);
        if (v36)
        {
          break;
        }

        v32 = (v32 + 1) & v52;
        v33 = v32 >> 6;
        v34 = 1 << v32;
        if (((1 << v32) & *(v53 + 8 * (v32 >> 6))) == 0)
        {
          a3 = v44;
          goto LABEL_6;
        }
      }

      result = (v21)(v59, v6);
      a3 = v44;
      v37 = v43[v33];
      v43[v33] = v37 | v34;
      v18 = v46;
      v14 = v47;
      if ((v37 & v34) == 0 && __OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_21:

        v39 = v57;

        return sub_224A41D48(v43, v41, v42, v39);
      }
    }

    else
    {
      v21 = *v58;
LABEL_6:
      v18 = v46;
      result = (v21)(v59, v6);
      v14 = v47;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      goto LABEL_21;
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A42478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A424D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A42538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224A42660(void *a1, uint64_t a2)
{
  v5 = sub_224DACE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  if (([a1 isRemote] & 1) == 0)
  {
    v40 = v6;
    v41 = v14;
    v42 = v17;
    v43 = v2;
    v44 = a2;
    v23 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager), *(v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager + 24));
    sub_224DAC6D8();
    v24 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v45 = a1;
    sub_224A3796C(a1 + v24, v20, &unk_27D6F5060, &qword_224DB5620);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if ((v27)(v20, 1, v25) == 1)
    {
      sub_224A3796C(v49, v47, &unk_27D6F4700, &unk_224DB3A10);
      if (v48)
      {
        v39 = v5;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v5 = v39;
        v28 = sub_224DAE338();
        v29 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(v28 + v29, v22, &unk_27D6F5060, &qword_224DB5620);

        __swift_destroy_boxed_opaque_existential_1(v47);
      }

      else
      {
        sub_224A3311C(v47, &unk_27D6F4700, &unk_224DB3A10);
        (*(v26 + 56))(v22, 1, 1, v25);
      }

      if ((v27)(v20, 1, v25) != 1)
      {
        sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
      }
    }

    else
    {
      (*(v26 + 32))(v22, v20, v25);
      (*(v26 + 56))(v22, 0, 1, v25);
    }

    if (!v50)
    {
      v31 = 0;
LABEL_13:
      v46 = 0;
      sub_224A3796C(v49, v47, &unk_27D6F4700, &unk_224DB3A10);
      if (v48)
      {
        __swift_project_boxed_opaque_existential_1(v47, v48);
        sub_224DAE228();
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_1(v47);
        if (v33)
        {
          v34 = v41;
          sub_224DA9FF8();
          v35 = 0;
LABEL_18:
          (*(v26 + 56))(v34, v35, 1, v25);
          v36 = v42;
          sub_224A44E4C(v34, v42, &unk_27D6F5060, &qword_224DB5620);
          v37 = v43;
          v38 = *(v43 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
          os_unfair_lock_lock(*(v38 + 16));
          sub_224A3F71C(v37, v22, v44, &v46, v36, v31, v45);

          os_unfair_lock_unlock(*(v38 + 16));
          sub_224A3311C(v36, &unk_27D6F5060, &qword_224DB5620);
          sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
          sub_224A3311C(v49, &unk_27D6F4700, &unk_224DB3A10);
          return;
        }
      }

      else
      {
        sub_224A3311C(v47, &unk_27D6F4700, &unk_224DB3A10);
      }

      v35 = 1;
      v34 = v41;
      goto LABEL_18;
    }

    sub_224A3796C(v49, v47, &unk_27D6F4700, &unk_224DB3A10);
    if (v48)
    {
      __swift_project_boxed_opaque_existential_1(v47, v48);
      sub_224DAE388();
      v30 = sub_224DACDE8();
      (*(v40 + 8))(v9, v5);
      v31 = sub_224A40C50(v30);

      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_13;
    }

    __break(1u);

    os_unfair_lock_unlock(*(v27 + 16));
    __break(1u);
  }
}

uint64_t sub_224A42C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = *(a1 + 16);
  v14 = sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
  result = MEMORY[0x22AA5D540](v13, v2, v14);
  v16 = 0;
  v25 = a1;
  v26 = result;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v24[2] = v3 + 32;
  v24[3] = v3 + 16;
  for (v24[1] = v3 + 8; v20; result = (*(v3 + 8))(v10, v2))
  {
    v22 = v16;
LABEL_9:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    (*(v3 + 16))(v12, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
    (*(v3 + 32))(v7, v12, v2);
    sub_224A3A634(v10, v7);
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return v26;
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_224A42EF0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_224CF71F8(a1, a2, sub_224A41664, sub_224A41664);
}

id sub_224A42F60(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = sub_224B0B830(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = [v6 isValid];

      return v7;
    }
  }

  return 0;
}

unint64_t sub_224A43000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_224A439BC(v24, v25);
      v20 = sub_224DAEDD8();
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

uint64_t sub_224A431A0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v5 = MEMORY[0x277D85000];
  v6 = *a1;
  v7 = *MEMORY[0x277D85000];
  v47 = *MEMORY[0x277D85000] & *a1;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = v11;
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier;
  v13 = *((v7 & v6) + 0x90);
  swift_beginAccess();
  v14 = a2;
  v15 = *(a1 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_224A436D0(v14, &a2[v12], isUniquelyReferenced_nonNull_native);
  *(a1 + v13) = v50;
  swift_endAccess();
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_281365108);
  v18 = v14;
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v44 = a2;
    v25 = v24;
    v49[0] = v24;
    *v22 = 136446466;
    *(v22 + 4) = sub_224A33F74(*&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], v49);
    *(v22 + 12) = 2114;
    *(v22 + 14) = v18;
    *v23 = v18;
    v26 = v18;
    _os_log_impl(&dword_224A2F000, v19, v20, "[%{public}s]: task submitted %{public}@", v22, 0x16u);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    v27 = v23;
    v5 = MEMORY[0x277D85000];
    MEMORY[0x22AA5EED0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v28 = v25;
    a2 = v44;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v29 = v22;
    v12 = v43;
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  v30 = sub_224A43B94(v18);
  v44 = v30;
  v31 = (a1 + *((*v5 & *a1) + 0xA8));
  v32 = *__swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_224A45384(v30);
  v33 = *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];
  v43 = *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = &a2[v12];
  v36 = v46;
  (*(v9 + 16))(v46, v35, v8);
  v37 = v8;
  v38 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v39 = swift_allocObject();
  v40 = v47;
  *(v39 + 2) = *(v47 + 80);
  *(v39 + 3) = *(v40 + 88);
  *(v39 + 4) = v34;
  (*(v9 + 32))(&v39[v38], v36, v37);

  sub_224A47CA8(v18);

  v42 = v48;
  *v48 = v43;
  v42[1] = v33;
  v42[2] = sub_224A8A868;
  v42[3] = v39;
  return result;
}

uint64_t sub_224A435D4()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A4360C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_224A436E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v6 = v5;
  v10 = sub_224DA9908();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_224A438E8(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_224B2832C(MEMORY[0x277CC95F0], v29, v30);
      goto LABEL_7;
    }

    sub_224B14750(v20, a3 & 1, v29, v30);
    v26 = *v6;
    v27 = sub_224A438E8(a2);
    if ((v21 & 1) == (v28 & 1))
    {
      v17 = v27;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      sub_224A43AD8(v17, v14, a1, v23, MEMORY[0x277CC95F0]);
      return;
    }

LABEL_15:
    sub_224DAFDD8();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

unint64_t sub_224A438E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_224DA9908();
  v5 = MEMORY[0x277CC95F0];
  sub_224A439BC(&qword_281351A18, MEMORY[0x277CC95F0]);
  v6 = sub_224DAED88();
  return sub_224A43000(a1, v6, MEMORY[0x277CC95F0], &qword_281351A10, v5, MEMORY[0x277CC9610]);
}

uint64_t sub_224A439BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A43A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A43A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A43A94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_224DA9908();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224A43AD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_224A43B94(unsigned __int8 *a1)
{
  v2 = v1;
  v138 = 1701147238;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = sub_224DAE918();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v145 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4020, &qword_224DB5618);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v148 = &v129 - v11;
  v12 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v140 = *(v12 - 8);
  v13 = v140[8];
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v139 = (&v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v136 = &v129 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v144 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v129 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4028, &qword_224DB5628);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v143 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v129 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v142 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v129 - v33;
  os_unfair_lock_assert_owner(*(*(v1 + *((v5 & v4) + 0x88)) + 16));
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v36[2] = *((v5 & v4) + 0x50);
  v36[3] = *((v5 & v4) + 0x58);
  v36[4] = v35;
  v141 = v36;
  v36[5] = a1;
  v37 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  v146 = v34;
  sub_224A3796C(&a1[v37], v34, &qword_27D6F4030, &unk_224DB5630);
  v38 = a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost + 8];
  v39 = sub_224DAC928();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  v42 = MEMORY[0x277CF9AC0];
  if (v38)
  {
    v42 = MEMORY[0x277CF9AB8];
  }

  v41(v28, *v42, v39);
  v43 = *(v40 + 56);
  v147 = v28;
  v137 = v43;
  v43(v28, 0, 1, v39);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v45 = *(*(v44 - 8) + 56);
  v149 = v22;
  v45(v22, 1, 1, v44);
  v46 = *&a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target];
  if (!v46 || (a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] & 1) == 0)
  {
    v58 = a1;
    v59 = v148;
    v60 = v149;
    if ((v38 & 1) == 0)
    {
LABEL_49:
      v79 = v144;
      sub_224A3796C(v60, v144, &unk_27D6F5060, &qword_224DB5620);
      v117 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
      (*(*(v117 - 8) + 56))(v59, 1, 1, v117);
      v81 = 0;
      v82 = v59;
      goto LABEL_50;
    }

    v61 = 0xE400000000000000;
    v62 = v140;
    v63 = v139;
LABEL_11:
    v64 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    swift_beginAccess();
    v65 = *&a1[v64];
    goto LABEL_12;
  }

  v134 = v41;
  v152 = 0;
  v153 = 1;
  sub_224B44674(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68), v150);
  v47 = *__swift_project_boxed_opaque_existential_1(v150, v151);
  v131 = a1;
  v48 = v46;
  sub_224A42660(v48, &v152);
  LOBYTE(v47) = v49;
  __swift_destroy_boxed_opaque_existential_1(v150);
  if (v47)
  {
    v50 = v147;
    sub_224A3311C(v147, &qword_27D6F4028, &qword_224DB5628);
    v134(v50, *MEMORY[0x277CF9AB8], v39);
    v38 = 1;
    v137(v50, 0, 1, v39);
    v135 = 0x8000000224DC6500;
    if ((v153 & 1) == 0)
    {
      v51 = v152;
      v52 = v48;
      v53 = v146;
      sub_224A3311C(v146, &qword_27D6F4030, &unk_224DB5630);
      sub_224B401D4(v51, v53);
      v54 = sub_224DAC938();
      v55 = v53;
      v48 = v52;
      (*(*(v54 - 8) + 56))(v55, 0, 1, v54);
    }

    v56 = 0xD000000000000019;
    v57 = &v155;
  }

  else
  {
    v56 = 0xE400000000000000;
    v57 = &v154;
  }

  *(v57 - 32) = v56;
  sub_224B44674(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68), v150);
  v83 = *__swift_project_boxed_opaque_existential_1(v150, v151);
  LODWORD(v83) = sub_224A4507C();
  __swift_destroy_boxed_opaque_existential_1(v150);
  v132 = v83;
  if (v83)
  {

    v135 = 0x8000000224DC64E0;
    v130 = v48;
    v84 = v147;
    sub_224A3311C(v147, &qword_27D6F4028, &qword_224DB5628);
    v85 = v146;
    sub_224A3311C(v146, &qword_27D6F4030, &unk_224DB5630);
    v86 = *MEMORY[0x277CF9AF8];
    v87 = sub_224DAC938();
    v88 = *(v87 - 8);
    (*(v88 + 104))(v85, v86, v87);
    v89 = *(v88 + 56);
    v133 = 1;
    v89(v85, 0, 1, v87);
    v134(v84, *MEMORY[0x277CF9AB8], v39);
    v90 = v84;
    v48 = v130;
    v137(v90, 0, 1, v39);
    v138 = 0xD000000000000013;
  }

  else
  {
    v133 = v38;
  }

  v62 = v140;
  sub_224DA9E78();
  sub_224DA9E68();
  v91 = sub_224DA9E08();

  if ((v91 & 1) == 0)
  {

LABEL_35:
    v61 = v135;
    goto LABEL_36;
  }

  v92 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x70));
  v93 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  sub_224DAC6D8();
  if (!v151)
  {

    sub_224A3311C(v150, &unk_27D6F4700, &unk_224DB3A10);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(v150, v151);
  v94 = sub_224DAE218();
  __swift_destroy_boxed_opaque_existential_1(v150);

  v61 = v135;
  if (v94)
  {

    v135 = 0x8000000224DC64A0;
    v95 = v147;
    sub_224A3311C(v147, &qword_27D6F4028, &qword_224DB5628);
    v96 = v146;
    sub_224A3311C(v146, &qword_27D6F4030, &unk_224DB5630);
    v97 = *MEMORY[0x277CF9AD8];
    v98 = sub_224DAC938();
    v99 = *(v98 - 8);
    (*(v99 + 104))(v96, v97, v98);
    v100 = *(v99 + 56);
    v133 = 1;
    v100(v96, 0, 1, v98);
    v134(v95, *MEMORY[0x277CF9AB8], v39);
    v137(v95, 0, 1, v39);
    v101 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    v102 = v131;
    swift_beginAccess();
    v65 = *&v102[v101];
    v138 = 0xD000000000000034;
    if (v132)
    {
      v60 = v149;
      v63 = v139;
      v61 = v135;
      v103 = v136;
      goto LABEL_38;
    }

    v60 = v149;
    v63 = v139;
    v61 = v135;
LABEL_12:

LABEL_13:
    v66 = sub_224DAE8B8();
    (*(*(v66 - 8) + 56))(v63, 4, 5, v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_224AD946C(0, v65[2] + 1, 1, v65);
    }

    v68 = v65[2];
    v67 = v65[3];
    if (v68 >= v67 >> 1)
    {
      v65 = sub_224AD946C(v67 > 1, v68 + 1, 1, v65);
    }

    v65[2] = v68 + 1;
    sub_224B442EC(v63, v65 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + v62[9] * v68);
    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v140 = v65;
    v69 = sub_224DAB258();
    __swift_project_value_buffer(v69, qword_281365108);
    v70 = a1;

    v71 = sub_224DAB228();
    v72 = sub_224DAF2A8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v152 = v75;
      *v73 = 136446722;
      *(v73 + 4) = sub_224A33F74(*&v70[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v70[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], &v152);
      *(v73 + 12) = 2114;
      *(v73 + 14) = v70;
      *v74 = v70;
      *(v73 + 22) = 2082;
      v76 = v70;
      v77 = sub_224A33F74(v138, v61, &v152);

      *(v73 + 24) = v77;
      _os_log_impl(&dword_224A2F000, v71, v72, "[%{public}s]: %{public}@ overridden for budget exempt reason: %{public}s", v73, 0x20u);
      sub_224A3311C(v74, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v74, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v75, -1, -1);
      MEMORY[0x22AA5EED0](v73, -1, -1);
    }

    else
    {
    }

    v78 = v148;
    goto LABEL_23;
  }

LABEL_36:
  v103 = v136;
  if ((v132 & 1) == 0)
  {
    v59 = v148;
    v60 = v149;
    v63 = v139;
    if ((v133 & 1) == 0)
    {

      goto LABEL_49;
    }

    goto LABEL_11;
  }

  v104 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  v102 = v131;
  swift_beginAccess();
  v65 = *&v102[v104];
  v60 = v149;
  v63 = v139;
LABEL_38:
  v105 = sub_224DAE8B8();
  (*(*(v105 - 8) + 56))(v103, 5, 5, v105);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_224AD946C(0, v65[2] + 1, 1, v65);
  }

  v107 = v65[2];
  v106 = v65[3];
  if (v107 >= v106 >> 1)
  {
    v65 = sub_224AD946C(v106 > 1, v107 + 1, 1, v65);
  }

  v65[2] = v107 + 1;
  v108 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v140 = v65;
  sub_224B442EC(v103, v65 + v108 + v62[9] * v107);
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v109 = sub_224DAB258();
  __swift_project_value_buffer(v109, qword_281365108);
  v110 = v102;
  v111 = sub_224DAB228();
  v112 = sub_224DAF2A8();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v152 = v139;
    *v113 = 136446466;
    *(v113 + 4) = sub_224A33F74(*&v110[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v110[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], &v152);
    *(v113 + 12) = 2114;
    *(v113 + 14) = v110;
    *v114 = v110;
    v115 = v110;
    _os_log_impl(&dword_224A2F000, v111, v112, "[%{public}s]: %{public}@ debugging; overridden for immediate execution", v113, 0x16u);
    sub_224A3311C(v114, &unk_27D6F69F0, &unk_224DB3900);
    v78 = v148;
    MEMORY[0x22AA5EED0](v114, -1, -1);
    v116 = v139;
    __swift_destroy_boxed_opaque_existential_1(v139);
    MEMORY[0x22AA5EED0](v116, -1, -1);
    MEMORY[0x22AA5EED0](v113, -1, -1);

    if (v133)
    {
LABEL_46:
      v65 = v140;
      goto LABEL_13;
    }
  }

  else
  {

    v78 = v148;
    if (v133)
    {
      goto LABEL_46;
    }
  }

LABEL_23:
  v79 = v144;
  sub_224A3796C(v60, v144, &unk_27D6F5060, &qword_224DB5620);
  v80 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  (*(*(v80 - 8) + 56))(v78, 1, 1, v80);
  v81 = v140;
  v82 = v78;
LABEL_50:
  v118 = v146;
  v119 = v142;
  sub_224A3796C(v146, v142, &qword_27D6F4030, &unk_224DB5630);
  v120 = v147;
  v121 = v143;
  sub_224A3796C(v147, v143, &qword_27D6F4028, &qword_224DB5628);
  v122 = v145;
  sub_224DAE908();
  v123 = type metadata accessor for TaskActivity();
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v126 = a1;
  v127 = sub_224B6C374(v126, v79, v82, v81, sub_224A49BA0, v141, v119, v121, v122);

  sub_224A3311C(v149, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v120, &qword_27D6F4028, &qword_224DB5628);
  sub_224A3311C(v118, &qword_27D6F4030, &unk_224DB5630);
  return v127;
}

uint64_t sub_224A44E0C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A44E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_224A44EB4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_224A42074(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_224B4871C(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_224A4507C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = sub_224DA9FE8();
  v6 = v5;
  swift_endAccess();
  v7 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16) && (, v9 = sub_224A3A40C(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 4 * v9);

    v13 = BSPIDIsBeingDebugged();
  }

  else
  {

    v13 = 0;
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v13;
}

uint64_t sub_224A451BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for TaskActivity()
{
  result = qword_28135C130;
  if (!qword_28135C130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A452A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224A45320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A45384(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24);
  v4 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider), v3);
  v5 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProviderQueue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v4 + 8);

  v7(v11, a1, v5, sub_224AD3A68, v6, v3, v4);

  sub_224A3317C(v11, v10);
  type metadata accessor for TaskActivityMetadata();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = a1;
  sub_224A36F98(v10, v8 + 32);
  *(v8 + 16) = 1;

  sub_224A46028(v8);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_224A454D4()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_224A4550C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a3;
  v47 = a1;
  v46 = a5;
  sub_224A3317C(v5 + 56, v59);
  sub_224A3796C(v5 + 16, v53, &qword_27D6F4900, &unk_224DB8640);
  v8 = v54;
  if (v54)
  {
    v9 = v55;
    v10 = __swift_project_boxed_opaque_existential_1(v53, v54);
    *(&v57 + 1) = v8;
    v58 = v9[2];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    sub_224A3311C(v53, &qword_27D6F4900, &unk_224DB8640);
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
  }

  v12 = v60;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v45 = &v45;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = type metadata accessor for DuetWidgetConfigurationManager();
  v54 = v19;
  v55 = &off_2838320A0;
  v53[0] = v18;
  sub_224A3317C(v53, v51);
  sub_224A3796C(&v56, v50, &qword_27D6F5590, &qword_224DBEC00);
  result = [objc_opt_self() sharedScheduler];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() sharedScheduler];
    v23 = v52;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v25 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v24);
    v27 = (&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = *v27;
    v49[4] = &off_2838320A0;
    v49[3] = v19;
    v49[0] = v29;
    v30 = type metadata accessor for DuetTaskActivityContext();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v49, v19);
    v35 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v34);
    v37 = (&v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v37;
    v40 = a4;

    v41 = a2;
    v42 = v47;

    v43 = sub_224BCAAA4(v39, v42, v41, v50, v48, v40, v21, v22, v33);
    sub_224A3311C(&v56, &qword_27D6F5590, &qword_224DBEC00);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v51);
    result = __swift_destroy_boxed_opaque_existential_1(v59);
    v44 = v46;
    v46[3] = v30;
    v44[4] = &off_283830D68;
    *v44 = v43;
  }

  else
  {
    __break(1u);
  }

  return result;
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

uint64_t type metadata accessor for DuetTaskActivityContext()
{
  result = qword_281356A60;
  if (!qword_281356A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A45A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_224A45AC4(uint64_t a1)
{
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  LODWORD(result) = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x277CE3D50])
  {
    result = [objc_opt_self() complete];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277CE3D58])
  {
    result = [objc_opt_self() completeUnlessOpen];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x277CE3D60])
  {
    if (result == *MEMORY[0x277CE3D68])
    {
      result = [objc_opt_self() none];
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = [objc_opt_self() completeUntilFirstUserAuthentication];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_224A45CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63A8, &qword_224DBFEA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v27 - v16;
  v18 = &v27 + *(v15 + 56) - v16;
  sub_224A415FC(a1, &v27 - v16, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A415FC(a2, v18, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) == 1)
  {
    if (v20(v18, 1, v19) == 1)
    {
      sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      return 1;
    }

    goto LABEL_6;
  }

  sub_224A415FC(v17, v12, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v22 = *(v19 + 48);
  v23 = *&v12[v22];
  if (v20(v18, 1, v19) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_224A3311C(v17, &qword_27D6F63A8, &qword_224DBFEA0);
    return 0;
  }

  v24 = *&v18[v22];
  (*(v5 + 32))(v8, v18, v4);
  v25 = sub_224DA97E8();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  if ((v25 & 1) == 0)
  {
    sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    return 0;
  }

  sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  return v23 == v24;
}

uint64_t sub_224A46028(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, *(a1 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v4);
  *(a1 + 16) = 2;
  v9 = *&v2[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock];
  os_unfair_lock_lock(*(v9 + 16));
  sub_224A46174(v2, v8, a1);
  os_unfair_lock_unlock(*(v9 + 16));
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224A46174(char *a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_224DA9908();
  v90 = *(v6 - 8);
  v7 = *(v90 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v75 - v11;
  v84 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - v13;
  v15 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();

  v16 = *&a1[v15];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *&a1[v15];
  *&a1[v15] = 0x8000000000000000;
  v87 = a3;
  sub_224A46934(a3, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v15] = v92;
  swift_endAccess();
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  v19 = __swift_project_value_buffer(v18, qword_281364F88);
  v20 = (v90 + 16);
  v21 = *(v90 + 16);
  (v21)(v14, a2, v6);
  v83 = v19;
  v22 = sub_224DAB228();
  LODWORD(v82) = sub_224DAF2A8();
  v23 = os_log_type_enabled(v22, v82);
  v89 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v77 = v24;
    v79 = swift_slowAlloc();
    v91[0] = v79;
    *v24 = 136446210;
    v76 = v14;
    v78 = v22;
    v92 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v25 = sub_224A3D19C(8);
    v80 = v21;
    v81 = v20;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v86 = v6;
    v32 = v31;

    v21 = v80;
    a1 = v89;
    v33 = MEMORY[0x22AA5D1C0](v26, v28, v30, v32);
    v35 = v34;
    v6 = v86;

    v36 = *(v90 + 8);
    (v36)(v76, v6);
    v37 = sub_224A33F74(v33, v35, v91);

    v38 = v77;
    v39 = v78;
    *(v77 + 1) = v37;
    _os_log_impl(&dword_224A2F000, v39, v82, "[%{public}s]: activity added", v38, 0xCu);
    v40 = v79;
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  else
  {

    v41 = v14;
    v36 = *(v90 + 8);
    (v36)(v41, v6);
  }

  if (a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_completedMigration] == 1)
  {
    return sub_224A46B4C(v87, a1, a2);
  }

  (v21)(v88, a2, v6);
  v43 = sub_224DAB228();
  LODWORD(v83) = sub_224DAF2A8();
  if (os_log_type_enabled(v43, v83))
  {
    v44 = swift_slowAlloc();
    v79 = v44;
    v81 = swift_slowAlloc();
    v91[0] = v81;
    *v44 = 136446210;
    v80 = v43;
    v92 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v45 = sub_224A3D19C(8);
    v82 = a2;
    v86 = v6;
    v46 = v45;
    v48 = v47;
    v78 = v36;
    v50 = v49;
    v51 = v21;
    v53 = v52;

    v54 = MEMORY[0x22AA5D1C0](v46, v48, v50, v53);
    v56 = v55;
    v21 = v51;

    (v78)(v88, v86);
    v57 = sub_224A33F74(v54, v56, v91);
    v6 = v86;
    a2 = v82;

    v58 = v79;
    v59 = v80;
    *(v79 + 4) = v57;
    v60 = v58;
    _os_log_impl(&dword_224A2F000, v59, v83, "[%{public}s]: queued waiting for migration", v58, 0xCu);
    v61 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x22AA5EED0](v61, -1, -1);
    a1 = v89;
    MEMORY[0x22AA5EED0](v60, -1, -1);
  }

  else
  {

    (v36)(v88, v6);
  }

  v62 = v85;
  (v21)(v85, a2, v6);
  v63 = v90;
  v64 = (*(v90 + 80) + 24) & ~*(v90 + 80);
  v65 = v6;
  v66 = (v84 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  *(v67 + 16) = a1;
  (*(v63 + 32))(v67 + v64, v62, v65);
  *(v67 + v66) = v87;
  v68 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
  swift_beginAccess();
  v69 = *&a1[v68];

  v70 = a1;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v68] = v69;
  if ((v71 & 1) == 0)
  {
    v69 = sub_224AD940C(0, v69[2] + 1, 1, v69);
    *&a1[v68] = v69;
  }

  v73 = v69[2];
  v72 = v69[3];
  if (v73 >= v72 >> 1)
  {
    v69 = sub_224AD940C((v72 > 1), v73 + 1, 1, v69);
  }

  v69[2] = v73 + 1;
  v74 = &v69[2 * v73];
  v74[4] = sub_224AD39C8;
  v74[5] = v67;
  *&v89[v68] = v69;
  return swift_endAccess();
}

uint64_t sub_224A4685C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224A46948(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_224DA9908();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_224A438E8(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_224B2ADD4(MEMORY[0x277CC95F0], v30, v31);
      goto LABEL_7;
    }

    sub_224B134A8(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_224A438E8(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_224A43AD8(v17, v14, a1, v23, MEMORY[0x277CC95F0]);
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_224A46B4C(uint64_t a1, char *a2, NSObject *a3)
{
  v165 = a3;
  v168 = a2;
  v151 = sub_224DA9878();
  v150 = *(v151 - 8);
  v4 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB7B8();
  v163 = *(v6 - 8);
  v164 = v6;
  v7 = *(v163 + 64);
  MEMORY[0x28223BE20](v6);
  v161 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_224DAB848();
  v160 = *(v162 - 8);
  v9 = *(v160 + 64);
  MEMORY[0x28223BE20](v162);
  v159 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9908();
  v166 = *(v11 - 8);
  v167 = v11;
  v12 = *(v166 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v153 = (&v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v154 = &v148 - v15;
  v16 = sub_224DAE918();
  v171 = *(v16 - 8);
  v17 = *(v171 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v170 = &v148 - v21;
  v22 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v148 - v31;
  v169 = a1;
  v33 = *(a1 + 24);
  sub_224A45A60(v33 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, &v148 - v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v35 = 1;
  (*(*(v34 - 8) + 56))(v30, 1, 1, v34);
  LOBYTE(a1) = sub_224A45CAC(v32, v30);
  sub_224A3D298(v30, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D298(v32, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  if (a1)
  {
    v36 = *(v33 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions);
    v37 = sub_224DAE8B8();
    (*(*(v37 - 8) + 56))(v25, 3, 5, v37);

    v38 = sub_224D41D20(v25, v36);

    sub_224A3D298(v25, type metadata accessor for ExtensionTask.SchedulingOption);
    v35 = v38 ^ 1;
  }

  v39 = v168;
  v40 = &v168[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor];
  v41 = *&v168[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor + 32];
  __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor], *&v168[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor + 24]);
  v42 = v170;
  sub_224DAD6E8();
  v43 = v171;
  v44 = *(v171 + 16);
  v155 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel;
  v157 = v171 + 16;
  v156 = v44;
  v44(v20, v33 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel, v16);
  sub_224A47C10(&qword_281350C30, MEMORY[0x277CE3D70]);
  v45 = sub_224DAEDB8();
  v47 = *(v43 + 8);
  v46 = v43 + 8;
  v47(v20, v16);
  v158 = v47;
  v47(v42, v16);
  v48 = v33;
  if (v35 & 1) != 0 || (v45)
  {
    v85 = v169;
    v87 = v166;
    v86 = v167;
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v88 = sub_224DAB258();
    __swift_project_value_buffer(v88, qword_281364F88);
    v89 = v153;
    (*(v87 + 16))(v153, v165, v86);

    v90 = sub_224DAB228();
    v91 = sub_224DAF2A8();

    if (os_log_type_enabled(v90, v91))
    {
      LODWORD(v164) = v91;
      v165 = v90;
      v152 = v48;
      v171 = v46;
      v92 = v87;
      v93 = swift_slowAlloc();
      v162 = v93;
      v163 = swift_slowAlloc();
      aBlock[0] = v163;
      *v93 = 136446978;
      v173 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v94 = sub_224A3D19C(8);
      v95 = v85;
      v97 = v96;
      v99 = v98;
      v100 = v89;
      v102 = v101;

      v103 = MEMORY[0x22AA5D1C0](v94, v97, v99, v102);
      v105 = v104;

      v106 = v100;
      v107 = v95;
      v108 = v162;
      (*(v92 + 8))(v106, v86);
      v109 = sub_224A33F74(v103, v105, aBlock);

      *(v108 + 4) = v109;
      *(v108 + 12) = 2082;
      v110 = v107[7];
      v111 = v107[8];
      __swift_project_boxed_opaque_existential_1(v107 + 4, v110);
      v112 = v149;
      (*(v111 + 8))(v110, v111);
      if (qword_281351A50 != -1)
      {
        swift_once();
      }

      v113 = qword_281351A58;
      v114 = sub_224DA9778();
      v115 = [v113 stringFromDate_];

      v116 = sub_224DAEE18();
      v118 = v117;

      v119 = *(v150 + 8);
      v120 = v151;
      v119(v112, v151);
      v121 = sub_224A33F74(v116, v118, aBlock);

      *(v108 + 14) = v121;
      *(v108 + 22) = 2082;
      v122 = v107[7];
      v123 = v107[8];
      __swift_project_boxed_opaque_existential_1(v107 + 4, v122);
      (*(v123 + 16))(v122, v123);
      v124 = qword_281351A58;
      v125 = sub_224DA9778();
      v126 = [v124 stringFromDate_];

      v127 = sub_224DAEE18();
      v129 = v128;

      v119(v112, v120);
      v130 = sub_224A33F74(v127, v129, aBlock);

      *(v108 + 24) = v130;
      *(v108 + 32) = 2080;
      v131 = v170;
      v156(v170, v152 + v155, v16);
      sub_224A47C10(&qword_281350C28, MEMORY[0x277CE3D70]);
      v132 = sub_224DAFD28();
      v134 = v133;
      v158(v131, v16);
      v135 = sub_224A33F74(v132, v134, aBlock);

      *(v108 + 34) = v135;
      v136 = v165;
      _os_log_impl(&dword_224A2F000, v165, v164, "[%{public}s]: scheduled activity enqueued after: %{public}s before: %{public}s with data class (%s)", v108, 0x2Au);
      v137 = v163;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v137, -1, -1);
      MEMORY[0x22AA5EED0](v108, -1, -1);

      v85 = v107;
      v39 = v168;
    }

    else
    {

      (*(v87 + 8))(v89, v86);
    }

    v138 = *&v39[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24];
    v139 = *&v39[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v39[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider], v138);
    return (*(v139 + 24))(v85, v138, v139);
  }

  else
  {
    v152 = v33;
    v49 = v169;
    v51 = v166;
    v50 = v167;
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281364F88);
    v53 = v154;
    (*(v51 + 16))(v154, v165, v50);
    v54 = v39;

    v55 = sub_224DAB228();
    v56 = sub_224DAF2A8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v168 = v54;
      v58 = v57;
      v165 = swift_slowAlloc();
      aBlock[0] = v165;
      *v58 = 136446722;
      v153 = v55;
      v173 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v171 = v46;
      v59 = sub_224A3D19C(8);
      v61 = v60;
      LODWORD(v151) = v56;
      v63 = v62;
      v64 = v53;
      v66 = v65;

      v67 = MEMORY[0x22AA5D1C0](v59, v61, v63, v66);
      v69 = v68;

      (*(v51 + 8))(v64, v167);
      v70 = sub_224A33F74(v67, v69, aBlock);

      *(v58 + 4) = v70;
      *(v58 + 12) = 2082;
      v71 = *(v40 + 4);
      __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
      v72 = v170;
      sub_224DAD6E8();
      sub_224A47C10(&qword_281350C28, MEMORY[0x277CE3D70]);
      v73 = sub_224DAFD28();
      v75 = v74;
      v76 = v158;
      v158(v72, v16);
      v77 = sub_224A33F74(v73, v75, aBlock);
      v49 = v169;

      *(v58 + 14) = v77;
      *(v58 + 22) = 2082;
      v156(v72, v152 + v155, v16);
      v78 = sub_224DAFD28();
      v80 = v79;
      v76(v72, v16);
      v81 = sub_224A33F74(v78, v80, aBlock);

      *(v58 + 24) = v81;
      v82 = v153;
      _os_log_impl(&dword_224A2F000, v153, v151, "[%{public}s]: immediate activity enqueued (%{public}s >= %{public}s)", v58, 0x20u);
      v83 = v165;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v83, -1, -1);
      v84 = v58;
      v54 = v168;
      MEMORY[0x22AA5EED0](v84, -1, -1);
    }

    else
    {

      (*(v51 + 8))(v53, v50);
    }

    v141 = *&v54[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProviderQueue];
    v142 = swift_allocObject();
    *(v142 + 16) = v54;
    *(v142 + 24) = v49;
    aBlock[4] = sub_224A48F98;
    aBlock[5] = v142;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_44;
    v143 = _Block_copy(aBlock);
    v144 = v54;

    v145 = v159;
    sub_224DAB7E8();
    v173 = MEMORY[0x277D84F90];
    sub_224A47C10(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v146 = v161;
    v147 = v164;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v145, v146, v143);
    _Block_release(v143);
    (*(v163 + 8))(v146, v147);
    (*(v160 + 8))(v145, v162);
  }
}

uint64_t sub_224A47BD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A47C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A47C58(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_224A47CD8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  sub_224A32920(a1, 1, &v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v12 = sub_224DA9FE8();
    v14 = v13;
    (*(v11 + 8))(v9, v10);
    v15 = *(v3 + 16);
    LOBYTE(v12) = sub_224A47FAC(v15, v12, v14);

    if (v12)
    {
      return v15;
    }
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  v16 = sub_224CBC42C(3u, 0, 0);
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_281364E50);

  v18 = sub_224DAB228();
  v19 = sub_224DAF288();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_224A33F74(a1, a2, &v24);
    _os_log_impl(&dword_224A2F000, v18, v19, "[WidgetCenter] Connection error for %{public}s: Not authorized", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA5EED0](v21, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  return v16;
}

uint64_t sub_224A47FAC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v50[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49[-v10];
  [a1 auditToken];
  v12 = sub_224DAEDE8();
  HasEntitlement = BSAuditTokenTaskHasEntitlement();

  if (HasEntitlement)
  {
    if (qword_281351460 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364DC0);
    v15 = sub_224DAB228();
    v16 = sub_224DAF278();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224A2F000, v15, v16, "isRequestorAuthorized - ENTITLED", v17, 2u);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    goto LABEL_43;
  }

  v18 = sub_224DAF2C8();
  v20 = v18;
  v21 = v19;
  if (v19 && (v18 == a2 && v19 == a3 || (sub_224DAFD88() & 1) != 0))
  {

    if (qword_281351460 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281364DC0);

    v23 = sub_224DAB228();
    v24 = sub_224DAF278();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_42;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_224A33F74(a2, a3, v50);
    v27 = "isRequestorAuthorized - SOURCE IS THE CONTAINER: %{public}s";
LABEL_41:
    _os_log_impl(&dword_224A2F000, v23, v24, v27, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
LABEL_42:

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  v28 = *(v4 + 16);
  v29 = sub_224DAF2C8();
  if (!v30)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    goto LABEL_24;
  }

  sub_224A32920(v29, 0, v11);

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
LABEL_24:
    sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_25;
  }

  v33 = sub_224DA9FE8();
  v35 = v34;
  (*(v32 + 8))(v11, v31);
  if (v33 == a2 && v35 == a3)
  {

LABEL_37:

    if (qword_281351460 != -1)
    {
      swift_once();
    }

    v47 = sub_224DAB258();
    __swift_project_value_buffer(v47, qword_281364DC0);

    v23 = sub_224DAB228();
    v24 = sub_224DAF278();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_42;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_224A33F74(a2, a3, v50);
    v27 = "isRequestorAuthorized - SOURCE IS IN THE CONTAINER BUNDLE: %{public}s";
    goto LABEL_41;
  }

  v37 = sub_224DAFD88();

  if (v37)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (qword_281351460 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281364DC0);

  v40 = sub_224DAB228();
  v41 = sub_224DAF278();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v42 = 136446210;
    if (v21)
    {
      v44 = v20;
    }

    else
    {
      v44 = 7104878;
    }

    if (!v21)
    {
      v21 = 0xE300000000000000;
    }

    v45 = sub_224A33F74(v44, v21, v50);

    *(v42 + 4) = v45;
    _os_log_impl(&dword_224A2F000, v40, v41, "isRequestorAuthorized - NOT AUTHORIZED: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {
  }

  result = 0;
LABEL_44:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}