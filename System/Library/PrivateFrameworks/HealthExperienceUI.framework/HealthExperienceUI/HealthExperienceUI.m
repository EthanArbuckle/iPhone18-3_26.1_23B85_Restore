id PluginNotificationRouter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B9F0A388(uint64_t a1)
{
  v2 = type metadata accessor for PlatformNotificationHandlerPluginProvider();
  v14[3] = v2;
  v14[4] = &off_1F3817510;
  v14[0] = a1;
  v3 = type metadata accessor for PluginNotificationRouter();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_1F3817510;
  v13[0] = v9;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v13, &v4[OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_pluginProviding]);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
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

uint64_t sub_1B9F0A534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1B9F0A630(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t static ProfileGradientView.preloadRenderPipelineStateIfNeeded()()
{
  if (qword_1EDC62BC8 != -1)
  {
    swift_once();
  }

  return sub_1B9F0B14C();
}

uint64_t sub_1B9F0A714()
{
  type metadata accessor for GradientLayerPipelineStateLoader();
  v0 = swift_allocObject();
  sub_1B9F0AB98();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  sub_1B9F0AC30();
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_1EDC84B38 = v0;
  return result;
}

void sub_1B9F0A7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A8DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AA08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AB98()
{
  if (!qword_1EDC5E040)
  {
    sub_1B9F0AA08(255, &qword_1EDC5E378, sub_1B9F0B088, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1BA4A7EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E040);
    }
  }
}

void sub_1B9F0AC30()
{
  if (!qword_1EDC5E048)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1BA4A7EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E048);
    }
  }
}

unint64_t sub_1B9F0AC90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B9F2D100(a5, a6);
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
    result = sub_1BA4A7EB8();
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

uint64_t sub_1B9F0AD9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B9F0ADF8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F0AE40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0AE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0AED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0AF18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0AF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0AFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0AFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F0B040(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1B9F0B088()
{
  result = qword_1EDC5E380;
  if (!qword_1EDC5E380)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5E380);
  }

  return result;
}

void sub_1B9F0B100(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B9F0B14C()
{
  v1 = v0;
  v39 = *v0;
  v2 = sub_1BA4A6478();
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A72F8();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v7);
  v41 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BA4A3EA8();
  v13 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[3];

  os_unfair_lock_lock((v16 + 20));
  if (*(v16 + 16))
  {
    os_unfair_lock_unlock((v16 + 20));
  }

  else
  {
    v33[1] = v7;
    v34 = v12;
    v35 = v10;
    v36 = v1;
    v37 = v9;
    v38 = v4;
    *(v16 + 16) = 1;
    os_unfair_lock_unlock((v16 + 20));

    sub_1BA4A3DD8();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      v22 = sub_1BA4A85D8();
      v24 = v2;
      v25 = sub_1B9F0B82C(v22, v23, aBlock);

      *(v20 + 4) = v25;
      v2 = v24;
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%{public}s] Dispatching render pipeline state creation", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v13 + 8))(v15, v40);
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v26 = v34;
    sub_1BA4A64B8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F0AFA8(&unk_1EDC5E480, MEMORY[0x1E69E8030]);
    v27 = MEMORY[0x1E69E8030];
    v28 = MEMORY[0x1E69E62F8];
    sub_1B9F0AA08(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1B9F0B95C(&qword_1EDC5E660, &qword_1EDC5E670, v27);
    sub_1BA4A7C38();
    (*(v44 + 104))(v43, *MEMORY[0x1E69E8090], v45);
    v29 = sub_1BA4A7328();
    aBlock[4] = sub_1B9F0B084;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_64_0;
    v30 = _Block_copy(aBlock);

    sub_1BA4A64A8();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AFA8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    v31 = MEMORY[0x1E69E7F60];
    sub_1B9F0AA08(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], v28);
    sub_1B9F0B95C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v31);
    v32 = v38;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v26, v32, v30);
    _Block_release(v30);

    (*(v42 + 8))(v32, v2);
    (*(v35 + 8))(v26, v37);
  }
}

unint64_t sub_1B9F0B82C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B9F0AC90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B9F0AD9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1B9F0B8F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F22538(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F0B95C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0AA08(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B9F0C200()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  sub_1B9F0E9CC();
  v20 = v7;
  sub_1BA4A3DD8();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v2;
    v12 = v11;
    v21 = v11;
    *v10 = 136446210;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s] Created render pipeline state", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);

    v16 = (*(v3 + 8))(v6, v19);
  }

  else
  {

    v16 = (*(v3 + 8))(v6, v2);
  }

  v17 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v16);
  *(&v19 - 2) = v20;

  os_unfair_lock_lock((v17 + 24));
  sub_1B9F0E574((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightOperation()
{
  result = qword_1EDC6DE08;
  if (!qword_1EDC6DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthExperienceStoreIncrementalCoreSpotlightOperation.init(store:)(uint64_t a1)
{
  sub_1B9F0A534(a1, v4);
  v2 = sub_1BA4A3AB8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1B9F0C670()
{
  type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate();
  sub_1BA4A3AA8();
  return sub_1BA4A3A78();
}

uint64_t type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate()
{
  result = qword_1EDC6DE18;
  if (!qword_1EDC6DE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *CloudSyncStateObserver.init(healthStore:store:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver__cachedFirstRestoreState;
  v10 = sub_1BA4A2D28();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1B9F0CD84(0, &unk_1EDC6E210, sub_1B9F0C700, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v3[v9] = sub_1BA4A24F8();
  v11 = &v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_firstRestoreStateChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_stateChangeHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver] = 0;
  v13 = &v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_store];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  swift_beginAccess();
  sub_1B9F0D8D4(a2, v13);
  swift_endAccess();
  v14 = type metadata accessor for CloudSyncStateObserver();
  v23.receiver = v3;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v16 = objc_allocWithZone(MEMORY[0x1E696BFE8]);
  v17 = v15;
  v18 = [v16 initWithHealthStore:a1 delegate:v17];
  v19 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver];
  *&v17[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver] = v18;

  v22 = a2;

  sub_1BA4A24E8();

  sub_1B9F0E17C(a2);
  return v17;
}

void sub_1B9F0C974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0C9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CC30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CC94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1B9F0CD28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate();
  return objc_msgSendSuper2(&v7, sel_initForStoreWithDescription_coordinator_, a3, a4);
}

void sub_1B9F0CD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CDE8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0D950(255, a3);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0CE40(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0CE9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0CF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CF6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0CFD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D0F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D144(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0D1B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D20C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D260(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0D2C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D31C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D370(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D3C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0D430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D484(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D4D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D5FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D6BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D718(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D7C8(uint64_t a1)
{
  sub_1BA4A3A88();
  v3 = sub_1BA4A3A98();
  v3(a1);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:v1 selector:sel_appDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  v6 = [v4 defaultCenter];
  [v6 addObserver:v1 selector:sel_appWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

uint64_t sub_1B9F0D8D4(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6D4C0, qword_1EDC6D4C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F0D950(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F0D9AC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F0DA08(uint64_t a1, uint64_t a2)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0DF80(a1, sub_1B9F0C700);
  sub_1B9F0E100(a2, v12);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1B9F0E17C(v12);
    v9 = sub_1BA4A2D28();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  return sub_1B9F0E1F0(v6, a1);
}

uint64_t sub_1B9F0DB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DBB4(uint64_t a1, unint64_t *a2)
{
  sub_1B9F23398(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DC10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1B9F233E4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F0DC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DF80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F0E100(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6D4C0, qword_1EDC6D4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F0E17C(uint64_t a1)
{
  sub_1B9F0CDE8(0, &qword_1EDC6D4C0, qword_1EDC6D4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F0E1F0(uint64_t a1, uint64_t a2)
{
  sub_1B9F0C700(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F0E2A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1B9F0E310(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1B9F0E320()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E68();
  v5 = v0;
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v8 = 136446466;
    v9 = v5;
    v10 = [v9 description];
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v1;
    v13 = v12;

    v14 = sub_1B9F0B82C(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1B9F0B82C(0xD00000000000001BLL, 0x80000001BA504EF0, &v20);
    _os_log_impl(&dword_1B9F07000, v6, v7, "%{public}s - %{public}s", v8, 0x16u);
    v15 = v19;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);

    (*(v2 + 8))(v4, v18);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  result = *&v5[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver];
  if (result)
  {
    return [result startSyncIfRestoreNotCompleted];
  }

  __break(1u);
  return result;
}

void *sub_1B9F0E574(void *result)
{
  if (!*result)
  {
    *result = *(v1 + 16);
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_1B9F0E9CC()
{
  v33[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MTLCreateSystemDefaultDevice();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ProfileGradientView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v33[0] = 0;
    v9 = [v6 newDefaultLibraryWithBundle:v8 error:v33];

    v10 = v33[0];
    if (v9)
    {
      v11 = objc_allocWithZone(MEMORY[0x1E6974148]);
      v12 = v10;
      v13 = [v11 init];
      v14 = sub_1BA4A6758();
      v15 = [v9 newFunctionWithName_];

      [v13 setVertexFunction_];
      swift_unknownObjectRelease();
      v16 = sub_1BA4A6758();
      v17 = [v9 newFunctionWithName_];

      [v13 setFragmentFunction_];
      swift_unknownObjectRelease();
      v18 = [v13 colorAttachments];
      v19 = [v18 objectAtIndexedSubscript_];

      if (v19)
      {
        [v19 setPixelFormat_];

        v33[0] = 0;
        v20 = [v6 newRenderPipelineStateWithDescriptor:v13 error:v33];
        v21 = v33[0];
        if (!v20)
        {
          v31 = v21;
          sub_1BA4A1488();

          swift_willThrow();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v30 = v33[0];
      sub_1BA4A1488();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32[1] = v0;
      v25 = v24;
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136446210;
      v27 = sub_1BA4A85D8();
      v29 = sub_1B9F0B82C(v27, v28, v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s] Failed to create Metal device", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_1B9F0EE90(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate;
  *&v4[v9] = CACurrentMediaTime();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_angle] = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
  *v10 = 0;
  v10[4] = 1;
  v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ProfileGradientView();
  v11 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = type metadata accessor for WeakProxy();
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v22.receiver = v13;
  v22.super_class = v12;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  v16 = [objc_opt_self() displayLinkWithTarget:v15 selector:{sel_updateGradient, v22.receiver, v22.super_class}];

  v17 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink];
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink] = v16;
  v18 = v16;

  if (v18)
  {
    [v18 setPaused_];

    v19 = v14;
    [v19 setOpaque_];
    v20 = [objc_opt_self() effectWithStyle_];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];
    [v21 hk:v19 alignConstraintsWithView:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F0F14C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1B9F0F1B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9F0F208()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1B9F0F1EC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

void sub_1B9F0F2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F0F360()
{
  result = qword_1EDC6E380;
  if (!qword_1EDC6E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E380);
  }

  return result;
}

id sub_1B9F0F3F4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor] = 0;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCollectionViewLayout_, v4);

  return v6;
}

uint64_t sub_1B9F0F4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0DF80(a1, sub_1B9F0C700);
  v9 = sub_1B9F104B4();
  if (*(v8 + 24))
  {
    v10 = v8;
    v11 = sub_1BA4A2D28();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, a3, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v10, v13);
    (*(v14 + 16))(v7, v13, v14);
  }

  (v9)(v18, 0);
  v15 = sub_1BA4A2D28();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a1, a3, v15);
  return (*(v16 + 56))(a1, 0, 1, v15);
}

id sub_1B9F0F724()
{
  v1 = v0;
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TapToRadarVisibilityManager();
  __swift_project_value_buffer(v2, qword_1EDC648D8);
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return 0;
  }

  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  sub_1BA4A1CA8();
  if (v7)
  {
    return 0;
  }

  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:0 target:v1 action:sel_ttrButtonTapped];
  return v6;
}

uint64_t sub_1B9F0F880()
{
  v0 = type metadata accessor for TapToRadarVisibilityManager();
  __swift_allocate_value_buffer(v0, qword_1EDC648D8);
  __swift_project_value_buffer(v0, qword_1EDC648D8);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1BA4A1CC8();
}

uint64_t CloudSyncStateObserver.cloudSyncObserver(_:syncFailedWithError:)(void *a1, void *a2)
{
  v59 = a1;
  v4 = sub_1BA4A2D28();
  v60 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E68();
  v14 = v2;
  v15 = a2;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  v58 = a2;
  v57 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v56 = v4;
    v19 = v18;
    v54 = swift_slowAlloc();
    v62 = v54;
    *v19 = 136446722;
    v20 = v14;
    v52 = v16;
    v21 = v20;
    v22 = [v20 description];
    v55 = v10;
    v23 = v22;
    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v53 = v11;
    v25 = v7;
    v26 = v24;
    v28 = v27;

    v29 = v26;
    v7 = v25;
    v30 = sub_1B9F0B82C(v29, v28, &v62);

    *(v19 + 4) = v30;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1B9F0B82C(0xD000000000000029, 0x80000001BA504F40, &v62);
    *(v19 + 22) = 2082;
    v61 = v58;
    v31 = v58;
    sub_1B9F0CDE8(0, &qword_1EDC6B3E0, &qword_1EDC6E310);
    v32 = sub_1BA4A6808();
    v34 = sub_1B9F0B82C(v32, v33, &v62);

    *(v19 + 24) = v34;
    v35 = v52;
    _os_log_impl(&dword_1B9F07000, v52, v57, "%{public}s - %{public}s, error: %{public}s", v19, 0x20u);
    v36 = v54;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    v37 = v19;
    v4 = v56;
    MEMORY[0x1BFAF43A0](v37, -1, -1);

    (*(v53 + 8))(v13, v55);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v38 = [v59 status];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 errorRequiringUserAction];
    if (!v40)
    {
      v47 = (*(v60 + 104))(v9, *MEMORY[0x1E69A32D0], v4);
      MEMORY[0x1EEE9AC00](v47);
      *(&v51 - 2) = v14;
      *(&v51 - 1) = v9;

      sub_1BA4A24E8();

      v49 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x98))(v48);
      if (v49)
      {
        v50 = v49;
        v49(v9);

        sub_1B9F0E310(v50);
      }

      else
      {
      }

      return (*(v60 + 8))(v9, v4);
    }

    v41 = v40;
  }

  v42 = (*(v60 + 104))(v7, *MEMORY[0x1E69A32E0], v4);
  MEMORY[0x1EEE9AC00](v42);
  *(&v51 - 2) = v14;
  *(&v51 - 1) = v7;

  sub_1BA4A24E8();

  v44 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x98))(v43);
  if (v44)
  {
    v45 = v44;
    v44(v7);
    sub_1B9F0E310(v45);
  }

  v9 = v7;
  return (*(v60 + 8))(v9, v4);
}

char *ProfileGradientWithFadeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  type metadata accessor for ProfileGradientView();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_gradientView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for FadeView();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42.receiver = v4;
  v42.super_class = type metadata accessor for ProfileGradientWithFadeView();
  v9 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  v13 = OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_gradientView;
  [*&v11[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_gradientView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView;
  [*&v11[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v41 = objc_opt_self();
  sub_1B9F109F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4BBC90;
  v16 = [*&v11[v13] leadingAnchor];
  v17 = [v11 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [*&v11[v13] topAnchor];
  v20 = [v11 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v15 + 40) = v21;
  v22 = [*&v11[v13] trailingAnchor];
  v23 = [v11 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [*&v11[v13] bottomAnchor];
  v26 = [v11 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v15 + 56) = v27;
  v28 = [*&v11[v14] leadingAnchor];
  v29 = [v11 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v15 + 64) = v30;
  v31 = [*&v11[v14] bottomAnchor];
  v32 = [v11 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v15 + 72) = v33;
  v34 = [*&v11[v14] trailingAnchor];
  v35 = [v11 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v15 + 80) = v36;
  v37 = [*&v11[v14] heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v15 + 88) = v38;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v39 = sub_1BA4A6AE8();

  [v41 activateConstraints_];

  return v11;
}

char *sub_1B9F10538()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState] = 0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for GradientLayer();
  v2 = objc_msgSendSuper2(&v16, sel_init);
  v3 = [v2 device];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 newCommandQueue];
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v5)
    {
      swift_unknownObjectRelease();
      __asm { FMOV            V1.2S, #1.0 }

      v15[0] = 0x3F80000000000000;
      v15[1] = _D1;
      v15[2] = 0;
      v15[3] = 1065353216;
      v11 = [v4 newBufferWithBytes:v15 length:32 options:0];
      *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer] = v11;
      swift_unknownObjectRelease();
      v12 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms;
      swift_beginAccess();
      v13 = [v4 newBufferWithBytes:&v2[v12] length:80 options:0];
      swift_endAccess();
      *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer] = v13;
      swift_unknownObjectRelease();
      if (qword_1EDC62BC8 != -1)
      {
        swift_once();
      }

      *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState] = sub_1B9F0F208();
      swift_unknownObjectRelease();
      [v2 setOpaque_];
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_1B9F1073C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a2;
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *a3 = *a1;
  }

  else
  {
    sub_1BA4A3DD8();
    v9 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v9, v27))
    {
      v10 = swift_slowAlloc();
      v24 = v10;
      v26 = swift_slowAlloc();
      v30 = v26;
      *v10 = 136446210;
      v11 = sub_1BA4A85D8();
      v13 = sub_1B9F0B82C(v11, v12, &v30);
      v25 = a1;
      v14 = a3;
      v15 = v13;

      v16 = v24;
      *(v24 + 1) = v15;
      a3 = v14;
      v17 = v9;
      v18 = v9;
      v19 = v16;
      _os_log_impl(&dword_1B9F07000, v17, v27, "[%{public}s] No created render pipeline state yet, creating one synchronously", v16, 0xCu);
      v20 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);

      a1 = v25;
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    v21 = v29;
    sub_1B9F0E9CC();
    if (v21)
    {

      v22 = 0;
    }

    *a1 = v22;
    *a3 = v22;
    swift_unknownObjectRetain();
  }

  return swift_unknownObjectRetain();
}

void sub_1B9F109F8()
{
  if (!qword_1EDC6B400)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B400);
    }
  }
}

uint64_t sub_1B9F10A90(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmptyGradientColorProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  sub_1B9F10B50();
  swift_allocObject();
  result = sub_1BA4A4DF8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void sub_1B9F10B50()
{
  if (!qword_1EDC5F460)
  {
    sub_1B9F0F2FC(255, &unk_1EDC5E650, sub_1B9F0F360, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F460);
    }
  }
}

uint64_t sub_1B9F10BE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1B9F10C48(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B9F10C48(uint64_t a1, uint64_t a2)
{
  sub_1B9F10CD8(0, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F10CD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1B9F10D68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController____lazy_storage___store) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver) = 0;
  v9 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_sidebarSelectionIdentifier);
  *v9 = 0xD000000000000019;
  v9[1] = 0x80000001BA4E3770;
  sub_1B9F0A534(a1, v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore) = a2;
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_pinnedContentManager);
  sub_1B9F0ADF8(0, &unk_1EDC5E3E0);
  v10 = a2;
  *&v34[0] = sub_1BA4A7438();
  sub_1B9F1146C();
  sub_1B9F114D4(&qword_1EDC5F478, sub_1B9F1146C);
  v11 = sub_1BA4A4F98();

  swift_beginAccess();
  *(v4 + v8) = v11;

  sub_1B9F0A534(a1, v34);
  sub_1B9F0A534(a3, v33);
  v12 = swift_allocObject();
  sub_1B9F1134C(v34, v12 + 16);
  *(v12 + 56) = v10;
  sub_1B9F1134C(v33, v12 + 64);
  v13 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  *v13 = sub_1BA00CD78;
  v13[1] = v12;
  type metadata accessor for CompoundSectionedDataSource();
  v14 = v10;

  v15 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v16 = CompoundDataSourceCollectionViewController.init(dataSource:)(v15);

  v17 = v16;
  v18 = [v17 navigationItem];
  [v18 setLargeTitleDisplayMode_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v19 = sub_1BA4A6758();

  [v17 setTitle_];

  v20 = [v17 navigationItem];
  sub_1BA4A1318();
  v21 = sub_1BA4A6758();

  [v20 setTitle_];

  sub_1BA4A1318();
  v22 = sub_1BA4A6758();
  v23 = [objc_opt_self() systemImageNamed_];

  v24 = objc_allocWithZone(MEMORY[0x1E69DD008]);
  v25 = sub_1BA4A6758();

  v26 = [v24 initWithTitle:v25 image:v23 selectedImage:0];

  [v17 setTabBarItem_];
  v27 = sub_1B9F11914();
  v32 = v27;
  *&v34[0] = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v28 = v27;
    MEMORY[0x1BFAF1510]();
    if (*((*&v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  sub_1BA00A89C(&v32, &qword_1EDC5E510, &qword_1EDC6B600, 0x1E69DC708, sub_1B9F6A804);
  v29 = [v17 navigationItem];

  sub_1B9F0ADF8(0, &qword_1EDC6B600);
  v30 = sub_1BA4A6AE8();

  [v29 setRightBarButtonItems_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_1B9F1134C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B9F11364()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

char *SharingOverviewViewController.init(healthExperienceStore:healthStore:pinnedContentManager:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1B9F10D68(a1, a2, a3);

  return v4;
}

void sub_1B9F113DC()
{
  if (!qword_1EDC5DB50)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E2F8);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A8508();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DB50);
    }
  }
}

void sub_1B9F1146C()
{
  if (!qword_1EDC5F470)
  {
    sub_1B9F113DC();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F470);
    }
  }
}

uint64_t sub_1B9F114D4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B9F1153C()
{
  type metadata accessor for DiffableCollectionViewAdaptor(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC84A30 = result;
  return result;
}

uint64_t sub_1B9F11594(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F115CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F11630()
{
  sub_1B9F115CC(319, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DiffableCollectionViewAdaptor.DebugState(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9F1174C()
{
  if (!qword_1EDC6B650)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B650);
    }
  }
}

void sub_1B9F117BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void *))
{
  if (!*a2)
  {
    v9[6] = v4;
    v9[7] = v5;
    v9[0] = MEMORY[0x1E69E6158];
    v9[1] = MEMORY[0x1E69E6158];
    v9[2] = a3;
    v9[3] = a3;
    v7 = a4(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F11824(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void *))
{
  if (!*a2)
  {
    v9[6] = v4;
    v9[7] = v5;
    v9[0] = MEMORY[0x1E69E6158];
    v9[1] = MEMORY[0x1E69E6158];
    v9[2] = a3;
    v9[3] = a3;
    v7 = a4(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F1188C()
{
  sub_1B9F11824(319, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1B9F11954()
{
  result = sub_1BA4A3D08();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9F119F8()
{
  v0 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1BA4A3C48();
  sub_1BA4A3C38();
  v1 = sub_1BA4A3B58();

  v2 = NSBundle.getPluginAppDelegateClass()();

  return v2;
}

uint64_t NSBundle.getPluginAppDelegateClass()()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v37 - v7;
  v9 = sub_1BA4A6758();
  v10 = [v1 objectForInfoDictionaryKey_];

  if (v10)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_1B9F23224(v40);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1BA4A3E08();
    v19 = v1;
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v20, v21))
    {
      v41 = v2;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v40[0] = v23;
      *v22 = 136446210;
      v24 = [v19 bundleIdentifier];
      if (!v24)
      {
        v24 = [v19 bundlePath];
      }

      v25 = v24;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v28 = v27;

      v29 = sub_1B9F0B82C(v26, v28, v40);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1B9F07000, v20, v21, "Unable to locate PluginAppDelegateClass for %{public}s\n", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);

      (*(v3 + 8))(v6, v41);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v30 = 0;
    goto LABEL_21;
  }

  v12 = v37[0];
  v11 = v37[1];
  v13 = sub_1BA4A6758();
  v14 = NSClassFromString(v13);

  if (v14)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      if (ObjCClassMetadata)
      {
        v17 = v16;

        return (*(v17 + 8))(ObjCClassMetadata, v17);
      }
    }
  }

  sub_1BA4A3E08();

  v31 = sub_1BA4A3E88();
  v32 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v40[0] = v34;
    *v33 = 136315138;
    v35 = sub_1B9F0B82C(v12, v11, v40);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_1B9F07000, v31, v32, "Class does not conform to PluginAppDelegateProtocol %s\n", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v33, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v8, v2);
  v30 = 1;
LABEL_21:
  sub_1BA0714F4();
  swift_allocError();
  *v36 = v30;
  return swift_willThrow();
}

uint64_t sub_1B9F12138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F121A0()
{
  result = type metadata accessor for SearchDataSource.State(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B9F12264()
{
  sub_1B9F117BC(319, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B9F12358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
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

void sub_1B9F12480()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1B9F12538()
{
  if (!qword_1EDC5F8A0)
  {
    v0 = sub_1BA4A45E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F8A0);
    }
  }
}

uint64_t sub_1B9F125E4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MutableArrayDataSource()
{
  result = qword_1EDC67218;
  if (!qword_1EDC67218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F126E0()
{
  if (!qword_1EDC61B00[0])
  {
    sub_1BA4A27B8();
    sub_1B9F15730();
    v0 = type metadata accessor for FetchedResultsControllerDataSource();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC61B00);
    }
  }
}

unint64_t sub_1B9F12744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &qword_1EDC5E000);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
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

uint64_t sub_1B9F12868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1B9F128B4()
{

  return sub_1B9F1290C();
}

id sub_1B9F1290C()
{

  return sub_1B9F12964();
}

id sub_1B9F12964()
{
  v1 = v0;
  v26[4] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1EDC84AD8;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v26[0] = 0;
  v8 = [v7 performFetch_];
  v9 = v26[0];
  if (v8)
  {

    return v9;
  }

  else
  {
    v25[0] = v26[0];
    v11 = v26[0];
    v12 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3D88();
    v13 = v12;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136446466;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v25[1] = v12;
      v21 = v12;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v26);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] Failed to perform CoreData fetch: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1B9F12C70()
{
  sub_1B9F12538();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F15B84();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E4A0);
  sub_1B9F15C34(&qword_1EDC5E490, &qword_1EDC5E4A0);
  sub_1BA4A45C8();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))(v8);
  sub_1B9F17734(v3);
  sub_1B9F13370();
  return (*(v6 + 8))(v8, v5);
}

void sub_1B9F12E40(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1B9F12C70();
}

uint64_t sub_1B9F12EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFAF17D0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BA0E1C3C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B9F12F50(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BA4A6E18();
  if (!v19)
  {
    return sub_1BA4A6B88();
  }

  v41 = v19;
  v45 = sub_1BA4A7F48();
  v32 = sub_1BA4A7F58();
  sub_1BA4A7EF8();
  result = sub_1BA4A6DF8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BA4A6E88();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BA4A7F38();
      result = sub_1BA4A6E48();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F13370()
{
  sub_1B9F12538();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  type metadata accessor for FetchedResultsControllerDataSource();
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
  sub_1B9F13694(v5);
  sub_1B9F177C4(v7);
  (*(v2 + 8))(v5, v1);
  return sub_1B9F17734(v7);
}

Swift::Void __swiftcall SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(Swift::Bool animated)
{
  v4 = v2;
  v5 = v1;
  v7 = (*(v2 + 40))();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = animated;
  v10[4] = sub_1B9F8A2D4;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B9F8A254;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();

  [v7 notifyObservers_];
  _Block_release(v9);
}

uint64_t sub_1B9F135EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

id sub_1B9F13624()
{
  v0 = sub_1B9F13650();

  return v0;
}

uint64_t sub_1B9F13650()
{
  v1 = qword_1EBBEA528;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B9F13694@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84AC8;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F1374C(uint64_t a1)
{
  v13 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v11, v14);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v2 = sub_1BA4A2D58();
    v4 = v3;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v5 = sub_1BA4A2E58();
    v7 = v6;
    v8 = qword_1EDC61B88;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + v8);
    *(v1 + v8) = 0x8000000000000000;
    sub_1B9F248E4(v5, v7, v2, v4, isUniquelyReferenced_nonNull_native);

    *(v1 + v8) = v13;
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return sub_1B9F7B644(v11);
  }
}

uint64_t sub_1B9F13924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FeedItem.reuseIdentifier.getter()
{
  v1 = v0;
  v2 = sub_1BA4A1DD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - v7;
  v9 = sub_1BA4A2718();
  v11 = v10;
  v13 = v12;
  v14 = sub_1BA4A1D88();
  v16 = v15;
  sub_1B9F244F4(v9, v11, v13);
  v51 = v14;
  v52 = v16;
  v48 = &v51;
  if ((sub_1B9F13ED8(sub_1B9F13F84, v47, &unk_1F37FBC38) & 1) == 0)
  {
    v29 = sub_1BA4A2718();
    HostingCellReusePolicy.init(viewControllerIdentifier:userInterface:)(v14, v16, v29, v30, v31, &v51);
    ObjCClassMetadata = v51;
    v27 = v52;
    v28 = v53;
    LODWORD(v46) = v54;
    goto LABEL_5;
  }

  v44 = v6;
  v45 = v8;
  v17 = [v1 uniqueIdentifier];
  v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v46 = v18;

  v19 = sub_1BA4A2718();
  v21 = v20;
  v23 = v22;
  UserInterface.hostCellClassName.getter(v19, v20, v22);
  v24 = sub_1BA4A6758();

  v25 = NSClassFromString(v24);

  if (v25)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    sub_1B9F244F4(v19, v21, v23);
    v51 = v14;
    v52 = v16;

    MEMORY[0x1BFAF1350](v43, v46);

    LODWORD(v46) = 0;
    v27 = v51;
    v28 = v52;
    v6 = v44;
    v8 = v45;
LABEL_5:
    sub_1BA4A26F8();
    (*(v3 + 104))(v6, *MEMORY[0x1E69A3C68], v2);
    sub_1B9F13924(&qword_1EDC6ADD8, MEMORY[0x1E69A3C70]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v51 == v49 && v52 == v50)
    {
      v32 = *(v3 + 8);
      v32(v6, v2);
      v32(v8, v2);
    }

    else
    {
      v33 = sub_1BA4A8338();
      v34 = *(v3 + 8);
      v34(v6, v2);
      v34(v8, v2);

      if ((v33 & 1) == 0)
      {
        if (v46)
        {
          return ObjCClassMetadata;
        }

        goto LABEL_13;
      }
    }

    v35 = type metadata accessor for HostViewCell(0);
    if (v46)
    {
      sub_1B9F248D8();
      v51 = v35;
      sub_1BA011AF0();
      return sub_1BA4A6808();
    }

LABEL_13:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9F248CC();
    v37 = NSStringFromClass(ObjCClassFromMetadata);
    v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v40 = v39;

    v51 = v38;
    v52 = v40;

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);

    MEMORY[0x1BFAF1350](v27, v28);
    sub_1B9F248D8();

    sub_1B9F248D8();
    return v51;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v51 = UserInterface.hostCellClassName.getter(v19, v21, v23);
  v52 = v42;
  MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4E3A90);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1B9F13ED8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B9F13F84(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BA4A8338() & 1;
  }
}

uint64_t type metadata accessor for TapToRadarVisibilityManager()
{
  result = qword_1EDC64898;
  if (!qword_1EDC64898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F14048()
{
  sub_1B9F140B4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B9F140B4()
{
  if (!qword_1EDC6ADF0)
  {
    v0 = sub_1BA4A1CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6ADF0);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *SearchViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:enhancedSearchResultProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchCoordinator();
  sub_1B9F0A534(a1, v20);
  if (*(a4 + 24))
  {
    sub_1B9F0A534(a4, v18);
  }

  else
  {
    v8 = *(a4 + 16);
    v18[0] = *a4;
    v18[1] = v8;
    v19 = *(a4 + 32);
  }

  v9 = sub_1B9F146F0(v20, a2, v18);
  sub_1B9F0A534(a1, v20);
  sub_1B9F0A534(a3, v18);
  v10 = objc_allocWithZone(type metadata accessor for SearchViewController());
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController] = 0;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore] = a2;
  sub_1B9F0A534(v20, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore]);
  sub_1B9F0A534(v18, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager]);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_searchCoordinator] = v9;
  sub_1B9F0A534(v20, v17);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1B9F1134C(v17, v11 + 24);
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource];
  *v12 = sub_1BA3D2124;
  v12[1] = v11;
  type metadata accessor for CompoundSectionedDataSource();
  v13 = a2;

  v14 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v15 = CompoundDataSourceCollectionViewController.init(dataSource:)(v14);

  if (*(a4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v15;
}

void sub_1B9F143D4()
{
  sub_1B9F14450();
  if (v0 <= 0x3F)
  {
    sub_1BA2717C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B9F14450()
{
  if (!qword_1EDC5E728)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E728);
    }
  }
}

uint64_t sub_1B9F144D4()
{
  result = sub_1B9F0ADF8(319, &qword_1EDC6B630);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DirectSearchResult(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9F14588()
{
  sub_1BA4A1798();
  if (v0 <= 0x3F)
  {
    sub_1B9F14678(319, &qword_1EDC5E6D0, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9F14628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F14678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ArrayDataSourceSection);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F146F0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1B9F0A534(a1, v18);
  if (*(a3 + 24))
  {
    sub_1B9F0A534(a3, &v15);
  }

  else
  {
    v6 = *(a3 + 16);
    v15 = *a3;
    v16 = v6;
    v17 = *(a3 + 32);
  }

  sub_1B9F14834(a1, a2, v14);
  v7 = type metadata accessor for PluginSearchResultProvider(0);
  swift_allocObject();
  v12 = v7;
  v13 = &off_1EE902140;
  *&v11 = sub_1B9F14B90(0x655268746C616548, 0xED00007364726F63);
  if (*(a3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v8 = swift_allocObject();
  *(v8 + 176) = 0;
  sub_1B9F1134C(v18, v8 + 16);
  v9 = v16;
  *(v8 + 56) = v15;
  *(v8 + 72) = v9;
  *(v8 + 88) = v17;
  sub_1B9F1134C(v14, v8 + 96);
  sub_1B9F1134C(&v11, v8 + 136);
  return v8;
}

uint64_t sub_1B9F14834@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1C88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B9F149E4(a2))
  {
    sub_1B9F0A534(a1, v15);
    v10 = type metadata accessor for SpotlightSearchResultProvider();
    v11 = swift_allocObject();
    (*(v7 + 104))(v9, *MEMORY[0x1E69A3C28], v6);
    sub_1BA4A1C78();
    (*(v7 + 8))(v9, v6);
    sub_1BA4A3CE8();
    result = sub_1B9F1134C(v15, v11 + OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore);
    v13 = &protocol witness table for SpotlightSearchResultProvider;
  }

  else
  {
    sub_1B9F0A534(a1, v15);
    v10 = type metadata accessor for CoreDataFeedItemSearchResultProvider();
    v11 = swift_allocObject();
    result = sub_1B9F1134C(v15, v11 + 16);
    v13 = &protocol witness table for CoreDataFeedItemSearchResultProvider;
  }

  a3[3] = v10;
  a3[4] = v13;
  *a3 = v11;
  return result;
}

uint64_t sub_1B9F149E4(void *a1)
{
  v1 = [a1 profileIdentifier];
  v2 = [v1 type];

  v3 = v2 == 1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1BA4A1B08();
  sub_1BA4A1AE8();
  v5 = sub_1BA4A6758();

  LODWORD(v2) = [v4 BOOLForKey_];

  return v3 & (v2 ^ 1);
}

uint64_t type metadata accessor for SpotlightSearchResultProvider()
{
  result = qword_1EDC63B28;
  if (!qword_1EDC63B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F14AF8()
{
  result = sub_1BA4A3D08();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9F14B90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1C88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x1E69A3C28], v9);
  sub_1BA4A1C78();
  (*(v10 + 8))(v12, v9);
  sub_1BA4A3CE8();
  v13 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_pluginBundleName);
  *v13 = a1;
  v13[1] = a2;

  v14 = sub_1B9F119F8();
  if (!v14 || (v29 = v14, v30 = v15, sub_1B9F0D9AC(0, qword_1EDC681A8), sub_1B9F0D9AC(0, qword_1EDC64E28), (swift_dynamicCast() & 1) == 0))
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  v16 = v3 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_searchResultProvider;
  v17 = v32;
  *v16 = v31;
  *(v16 + 16) = v17;
  *(v16 + 32) = v33;
  sub_1B9F12138(v16, &v31, sub_1B9F14FAC);
  if (*(&v32 + 1))
  {

    sub_1B9F15018(&v31, sub_1B9F14FAC);
  }

  else
  {
    sub_1B9F15018(&v31, sub_1B9F14FAC);
    sub_1BA4A3E18();

    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v31 = v21;
      *v20 = 136315394;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_1B9F0B82C(a1, a2, &v31);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] Could not load plugin with bundle name %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v8, v28);
  }

  return v3;
}

void sub_1B9F14FAC()
{
  if (!qword_1EDC64E20)
  {
    sub_1B9F0D9AC(255, qword_1EDC64E28);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC64E20);
    }
  }
}

uint64_t sub_1B9F15018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for CompoundSectionedDataSource()
{
  result = qword_1EDC65118;
  if (!qword_1EDC65118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B9F15168(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1B9F12358(a1, v3 + qword_1EDC84C78, type metadata accessor for SearchDataSource.State);
  v8 = sub_1B9F153AC(a3);
  v9 = qword_1EDC68C00;
  *(v3 + qword_1EDC68C00) = v8;
  type metadata accessor for PluginSearchDataSource();
  swift_allocObject();
  v10 = sub_1B9F1A844(0x655268746C616548, 0xED00007364726F63);
  v11 = qword_1EDC68760;
  *(v3 + qword_1EDC68760) = v10;
  v12 = sub_1B9F153AC(a3);
  v13 = qword_1EDC68C08;
  *(v3 + qword_1EDC68C08) = v12;
  sub_1B9F0A534(a3, v21);
  type metadata accessor for SearchDataSource.EmptyStateDataSource();
  swift_allocObject();
  v14 = a2;
  v15 = sub_1B9F1AA20(v14, v21);

  sub_1B9F1DEA0();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B9FD0;
  *(v16 + 32) = *(v4 + v9);
  *(v16 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v16 + 48) = *(v4 + v11);
  *(v16 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v16 + 64) = *(v4 + v13);
  *(v16 + 72) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  v17 = CompoundSectionedDataSource.init(_:)(v16);
  v18 = sub_1B9F299CC(v15, v17);

  v19 = *(*v18 + 184);
  swift_retain_n();
  v19(sub_1B9F29C50, v18);

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1B9F299EC(a1, type metadata accessor for SearchDataSource.State);
  return v18;
}

uint64_t sub_1B9F153AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_1BA4A1B68();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B8B60;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1BA4A6758();
  v5 = [v3 initWithKey:v4 ascending:1];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1BA4A6758();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v2 + 40) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithKey:v10 ascending:1 selector:sel_localizedStandardCompare_];

  *(v2 + 48) = v11;
  sub_1BA4A27B8();
  v12 = sub_1BA4A25B8();
  v13 = sub_1BA4A7558();

  type metadata accessor for SearchSectionDataSource(0);
  *(swift_allocObject() + qword_1EDC84BF8) = 1;
  sub_1B9F126E0();
  v15 = objc_allocWithZone(v14);
  v16 = v13;
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
  v18 = sub_1B9F17A68(v17, sub_1B9F2860C, 0, 0);

  return v18;
}

void sub_1B9F15648()
{
  sub_1B9F117BC(319, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B9F15730()
{
  result = qword_1EDC6ADA0;
  if (!qword_1EDC6ADA0)
  {
    sub_1BA4A27B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6ADA0);
  }

  return result;
}

char *_s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(void *a1)
{
  v2 = v1;
  v31 = a1;
  sub_1B9F12538();
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EBBEA528;
  sub_1B9F15B38();
  v12 = sub_1BA4A7A78();
  v13 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithName:v14 loggingCategory:v12];

  *&v2[v11] = v15;
  v16 = qword_1EDC61B88;
  *&v2[v16] = sub_1B9F12744(MEMORY[0x1E69E7CC0]);
  v17 = &v2[qword_1EDC84AD0];
  v33 = 675500614;
  v34 = 0xE400000000000000;
  v36 = sub_1BA4A27B8();
  sub_1B9F12868(0, &qword_1EDC6AD88, MEMORY[0x1E69A3DD0]);
  v18 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v18);

  MEMORY[0x1BFAF1350](15401, 0xE200000000000000);
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1BFAF1350](v19, v21);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v22 = v34;
  *v17 = v33;
  v17[1] = v22;
  v23 = v31;
  *&v2[qword_1EDC84AD8] = v31;
  v24 = v23;
  sub_1BA4A45D8();
  (*(v4 + 32))(&v2[qword_1EDC84AC8], v6, v32);
  sub_1B9F126E0();
  v35.receiver = v2;
  v35.super_class = v25;
  v26 = objc_msgSendSuper2(&v35, sel_init);
  v27 = [v24 fetchRequest];
  [v27 setIncludesPendingChanges_];

  v28 = qword_1EDC84AD8;
  swift_beginAccess();
  v29 = *&v26[v28];
  [v29 setDelegate_];

  sub_1B9F128B4();
  return v26;
}

unint64_t sub_1B9F15B38()
{
  result = qword_1EDC5E090;
  if (!qword_1EDC5E090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E090);
  }

  return result;
}

void sub_1B9F15B84()
{
  if (!qword_1EDC5F890)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4A0);
    sub_1B9F15C34(&qword_1EDC5E490, &qword_1EDC5E4A0);
    v0 = sub_1BA4A45E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F890);
    }
  }
}

uint64_t sub_1B9F15C34(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0ADF8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F15C84@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v224 = a2;
  v250 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v234 = v2;
  v231 = v4;
  v229 = sub_1BA4A3EA8();
  v225 = *(v229 - 8);
  v5 = MEMORY[0x1EEE9AC00](v229);
  v7 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v227 = &v219 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v228 = &v219 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v220 = &v219 - v12;
  v244 = sub_1BA4A15D8();
  isa = v244[-1].isa;
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v16 = v15;
  v222 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  sub_1B9F15B84();
  v20 = v19;
  sub_1BA4A4578();
  v235 = v16;
  sub_1BA4A44C8();

  v239 = v20;
  v240 = a1;
  v21 = sub_1BA4A4578();
  v22 = v21;
  v23 = *(v21 + 16);
  v241 = v18;
  v233 = v23;
  v223 = v7;
  v226 = isa;
  if (v23)
  {
    v24 = 0;
    v232 = v21 + 32;
    v25 = (isa + 8);
    v230 = v21;
    do
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v63 = v21;
        v46 = sub_1BA4A7CC8();
        v21 = v63;
        if (!v46)
        {
          goto LABEL_32;
        }

LABEL_20:
        v47 = v21;
        v247 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v46 & ~(v46 >> 63), 0);
        if ((v46 & 0x8000000000000000) == 0)
        {
          v48 = 0;
          v49 = v247;
          v50 = v47;
          v242 = v47 & 0xC000000000000001;
          v51 = (v226 + 8);
          v52 = v50;
          do
          {
            if (v242)
            {
              v53 = MEMORY[0x1BFAF2860](v48);
            }

            else
            {
              v53 = *(v50 + 8 * v48 + 32);
            }

            v54 = v53;
            v55 = [v53 URIRepresentation];
            v56 = v243;
            sub_1BA4A1588();

            v57 = sub_1BA4A1518();
            v59 = v58;

            (*v51)(v56, v244);
            v247 = v49;
            v61 = v49[2].isa;
            v60 = v49[3].isa;
            if (v61 >= v60 >> 1)
            {
              sub_1B9F1C360((v60 > 1), v61 + 1, 1);
              v49 = v247;
            }

            ++v48;
            v49[2].isa = (v61 + 1);
            v62 = &v49[2 * v61];
            v62[4].isa = v57;
            v62[5].isa = v59;
            v50 = v52;
          }

          while (v46 != v48);

          goto LABEL_33;
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
      }

      v26 = v232 + 16 * v24;
      v28 = *v26;
      v27 = *(v26 + 8);
      v247 = *v26;
      v248 = v27;

      v29 = sub_1BA4A4528();
      if (v29 >> 62)
      {
        v45 = v29;
        v30 = sub_1BA4A7CC8();
        v29 = v45;
        if (!v30)
        {
LABEL_17:

          goto LABEL_3;
        }
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      v242 = v29;
      v247 = MEMORY[0x1E69E7CC0];
      v21 = sub_1B9F1C360(0, v30 & ~(v30 >> 63), 0);
      if (v30 < 0)
      {
        goto LABEL_30;
      }

      v236 = v28;
      *&v237 = v27;
      v238 = v24;
      v31 = 0;
      v32 = v247;
      v33 = v242;
      v34 = v242 & 0xC000000000000001;
      do
      {
        if (v34)
        {
          v35 = MEMORY[0x1BFAF2860](v31);
        }

        else
        {
          v35 = *(v33 + 8 * v31 + 32);
        }

        v36 = v35;
        v37 = [v35 URIRepresentation];
        v38 = v243;
        sub_1BA4A1588();

        v39 = sub_1BA4A1518();
        v41 = v40;

        (*v25)(v38, v244);
        v247 = v32;
        v43 = v32[2].isa;
        v42 = v32[3].isa;
        if (v43 >= v42 >> 1)
        {
          sub_1B9F1C360((v42 > 1), v43 + 1, 1);
          v32 = v247;
        }

        ++v31;
        v32[2].isa = (v43 + 1);
        v44 = &v32[2 * v43];
        v44[4].isa = v39;
        v44[5].isa = v41;
        v33 = v242;
      }

      while (v30 != v31);

      v22 = v230;
      v24 = v238;
      v27 = v237;
      v28 = v236;
LABEL_3:
      ++v24;
      v247 = v28;
      v248 = v27;
      sub_1BA4A4448();
    }

    while (v24 != v233);
  }

  v21 = sub_1BA4A4598();
  if (v21 >> 62)
  {
    goto LABEL_31;
  }

  v46 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
    goto LABEL_20;
  }

LABEL_32:

  v49 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v64 = sub_1BA4A45B8();
  if (v64 >> 62)
  {
    v84 = v64;
    v65 = sub_1BA4A7CC8();
    v64 = v84;
    if (v65)
    {
      goto LABEL_35;
    }

LABEL_45:

    v83 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_45;
  }

LABEL_35:
  v66 = v64;
  v247 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v65 & ~(v65 >> 63), 0);
  if (v65 < 0)
  {
    goto LABEL_102;
  }

  v67 = 0;
  v68 = v247;
  v69 = v66;
  v238 = v66 & 0xC000000000000001;
  v70 = (v226 + 8);
  v242 = v66;
  do
  {
    v71 = v65;
    v72 = v68;
    if (v238)
    {
      v73 = MEMORY[0x1BFAF2860](v67, v69);
    }

    else
    {
      v73 = *(v69 + 8 * v67 + 32);
    }

    v74 = v73;
    v75 = [v73 URIRepresentation];
    v76 = v243;
    sub_1BA4A1588();

    v77 = sub_1BA4A1518();
    v79 = v78;

    (*v70)(v76, v244);
    v68 = v72;
    v247 = v72;
    v80 = v72[2].isa;
    v81 = v68[3].isa;
    if (v80 >= v81 >> 1)
    {
      sub_1B9F1C360((v81 > 1), v80 + 1, 1);
      v68 = v247;
    }

    ++v67;
    v68[2].isa = (v80 + 1);
    v82 = &v68[2 * v80];
    v82[4].isa = v77;
    v82[5].isa = v79;
    v65 = v71;
    v69 = v242;
  }

  while (v71 != v67);
  v83 = v68;

LABEL_46:
  v85 = sub_1B9F12EB8(v49);

  v245 = v85;
  v86 = sub_1BA4A4598();
  v87 = v86;
  if (v86 >> 62)
  {
    goto LABEL_100;
  }

  for (i = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    if (i)
    {
      if (i < 1)
      {
        goto LABEL_103;
      }

      v89 = 0;
      v238 = 0;
      v242 = v87 & 0xC000000000000001;
      v236 = (v226 + 8);
      *&v237 = v87;
      do
      {
        v92 = v83;
        if (v242)
        {
          v93 = MEMORY[0x1BFAF2860](v89, v87);
        }

        else
        {
          v93 = *(v87 + 8 * v89 + 32);
        }

        v94 = v93;
        v95 = v234;
        v96 = qword_1EDC84AD8;
        swift_beginAccess();
        v97 = [*(v95 + v96) managedObjectContext];
        v247 = 0;
        v98 = [v97 existingObjectWithID:v94 error:&v247];

        v99 = v247;
        if (v98)
        {
          v100 = i;
          v247 = v98;
          sub_1B9F0ADF8(0, &qword_1EDC5E518);
          v101 = v99;
          if (swift_dynamicCast())
          {
            v102 = v249;
            v103 = [v94 URIRepresentation];
            v104 = v243;
            sub_1BA4A1588();

            v105 = sub_1BA4A1518();
            v107 = v106;
            (v236->isa)(v104, v244);
            if (sub_1BA021158(v102))
            {
              sub_1BA021E7C(v105, v107);

              v108 = v92;
              v109 = v105;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v108 = sub_1BA27EE34(0, *(v108 + 2) + 1, 1, v108);
              }

              v111 = *(v108 + 2);
              v110 = *(v108 + 3);
              v83 = v108;
              if (v111 >= v110 >> 1)
              {
                v83 = sub_1BA27EE34((v110 > 1), v111 + 1, 1, v108);
              }

              swift_unknownObjectRelease();

              *(v83 + 2) = v111 + 1;
              v112 = &v83[16 * v111];
              *(v112 + 4) = v109;
              *(v112 + 5) = v107;
            }

            else
            {
              swift_unknownObjectRelease();

              v83 = v92;
            }

            v87 = v237;
          }

          else
          {

            v83 = v92;
          }

          i = v100;
        }

        else
        {
          v90 = v247;
          v91 = sub_1BA4A1488();

          swift_willThrow();
          v238 = 0;
          v83 = v92;
        }

        ++v89;
      }

      while (i != v89);
    }

    else
    {
      v238 = 0;
    }

    v233 = v83;
    sub_1BA4A4558();
    v113 = v245;
    v114 = *(v245 + 16);
    v232 = v245;
    if (v114)
    {
      v115 = sub_1BA021A48(v114, 0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90], sub_1B9F1C094);
      v116 = sub_1BA0238B0(&v247, v115 + 4, v114, v113);

      sub_1B9F52E48();
      if (v116 != v114)
      {
        goto LABEL_104;
      }
    }

    sub_1BA4A4498();

    sub_1BA4A45A8();
    sub_1BA4A4518();

    v117 = qword_1EDC84AD8;
    v118 = v234;
    swift_beginAccess();
    v119 = [*(v118 + v117) fetchedObjects];
    v120 = v238;
    if (v119)
    {
      v121 = v231;
      v122 = *(v231 + 80);
      v123 = v119;
      v124 = sub_1BA4A6B08();

      v247 = v124;
      MEMORY[0x1EEE9AC00](v125);
      v126 = *(v121 + 88);
      *(&v219 - 2) = v122;
      *(&v219 - 1) = v126;
      v127 = sub_1BA4A6BF8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v131 = sub_1B9F12F50(sub_1B9F1C380, (&v219 - 4), v127, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v130);
    }

    else
    {
      v133 = v231;
      v122 = *(v231 + 80);
      swift_getTupleTypeMetadata2();
      v132 = sub_1BA4A6B88();
      v131 = v132;
      v126 = *(v133 + 88);
    }

    v134 = v228;
    v247 = v131;
    MEMORY[0x1EEE9AC00](v132);
    *(&v219 - 2) = v122;
    *(&v219 - 1) = v126;

    v135 = MEMORY[0x1E69E6158];
    v238 = swift_getTupleTypeMetadata2();
    v136 = sub_1BA4A6BF8();
    v137 = swift_getWitnessTable();
    v138 = MEMORY[0x1E69E6168];
    v244 = v137;
    v139 = sub_1BA4A6678();
    v140 = MEMORY[0x1EEE9AC00](v139);
    *(&v219 - 2) = v122;
    *(&v219 - 1) = v126;
    MEMORY[0x1EEE9AC00](v140);
    *(&v219 - 4) = v122;
    *(&v219 - 3) = v126;
    v231 = v126;
    *(&v219 - 2) = sub_1B9F1C49C;
    *(&v219 - 1) = v141;
    v142 = sub_1BA4A6658();
    v236 = v120;
    v230 = v136;
    if (MEMORY[0x1BFAF10A0](v142, v135, v136, v138))
    {

      goto LABEL_92;
    }

    v143 = v220;
    sub_1BA4A3D88();
    v144 = sub_1BA4A3E88();
    v145 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_1B9F07000, v144, v145, "Managed objects with duplicate keys:", v146, 2u);
      MEMORY[0x1BFAF43A0](v146, -1, -1);
    }

    v147 = *(v225 + 8);
    v242 = v225 + 8;
    v240 = v147;
    v148 = (v147)(v143, v229);
    v247 = v142;
    v149 = MEMORY[0x1EEE9AC00](v148);
    v150 = v231;
    *(&v219 - 2) = v122;
    *(&v219 - 1) = v150;
    MEMORY[0x1EEE9AC00](v149);
    *(&v219 - 4) = v122;
    *(&v219 - 3) = v151;
    *(&v219 - 2) = sub_1BA024CAC;
    *(&v219 - 1) = v152;
    sub_1BA4A6688();
    swift_getWitnessTable();
    v153 = v236;
    v87 = sub_1BA4A6A28();
    v236 = v153;

    v83 = v238;
    if (!sub_1BA4A6BC8())
    {
      break;
    }

    v226 = v131;
    v155 = 0;
    v156 = (v87 + 48);
    *&v154 = 136315138;
    v237 = v154;
    v157 = v227;
    v239 = v87;
    while (1)
    {
      v158 = sub_1BA4A6BA8();
      sub_1BA4A6B48();
      if ((v158 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v155, 1))
      {
        goto LABEL_99;
      }

      v243 = (v155 + 1);
      v159 = *v156;

      swift_unknownObjectRetain();
      sub_1BA4A3D88();

      swift_unknownObjectRetain();
      v160 = sub_1BA4A3E88();
      v161 = sub_1BA4A6FA8();
      swift_unknownObjectRelease();

      v244 = v160;
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v247 = v163;
        *v162 = v237;
        v249 = v159;
        swift_unknownObjectRetain();
        v164 = sub_1BA4A6808();
        v166 = sub_1B9F0B82C(v164, v165, &v247);

        *(v162 + 4) = v166;
        v157 = v227;
        v167 = v244;
        _os_log_impl(&dword_1B9F07000, v244, v161, "%s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v163);
        v168 = v163;
        v134 = v228;
        MEMORY[0x1BFAF43A0](v168, -1, -1);
        v169 = v162;
        v83 = v238;
        MEMORY[0x1BFAF43A0](v169, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v240(v134, v229);
      v87 = v239;
      ++v155;
      v156 += 3;
      if (v243 == sub_1BA4A6BC8())
      {

        v131 = v226;
        goto LABEL_88;
      }
    }

    sub_1BA4A7E18();
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    ;
  }

  v157 = v227;
LABEL_88:
  sub_1BA4A3D88();

  v170 = sub_1BA4A3E88();
  v171 = sub_1BA4A6FA8();
  v172 = os_log_type_enabled(v170, v171);
  v173 = v231;
  if (v172)
  {
    v174 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v247 = v244;
    *v174 = 136315650;
    v175 = sub_1BA4A85D8();
    v177 = sub_1B9F0B82C(v175, v176, &v247);

    *(v174 + 4) = v177;
    *(v174 + 12) = 2080;
    v249 = v131;
    MEMORY[0x1EEE9AC00](v178);
    *(&v219 - 2) = v122;
    *(&v219 - 1) = v173;
    v179 = v230;
    v180 = swift_getWitnessTable();
    v181 = MEMORY[0x1E69E6158];
    v182 = v179;
    v183 = v236;
    v185 = sub_1B9F12F50(sub_1B9F1C438, (&v219 - 4), v182, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v180, MEMORY[0x1E69E7410], v184);
    v236 = v183;

    v186 = MEMORY[0x1BFAF1560](v185, v181);
    v188 = v187;

    v189 = sub_1B9F0B82C(v186, v188, &v247);

    *(v174 + 14) = v189;
    *(v174 + 22) = 2080;
    swift_beginAccess();
    v190 = NSDiffableDataSourceSnapshot<>.description.getter();
    v192 = sub_1B9F0B82C(v190, v191, &v247);

    *(v174 + 24) = v192;
    _os_log_impl(&dword_1B9F07000, v170, v171, "[%s] There is a duplicate feed item in the fetchedObjects array with keys: %s. The snapshot is: %s", v174, 0x20u);
    v193 = v244;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v193, -1, -1);
    MEMORY[0x1BFAF43A0](v174, -1, -1);

    v194 = v227;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v194 = v157;
  }

  v240(v194, v229);
LABEL_92:
  v195 = v234;
  v196 = qword_1EDC61B88;
  swift_beginAccess();
  *(v195 + v196) = MEMORY[0x1E69E7CC8];

  v197 = qword_1EDC84AD8;
  swift_beginAccess();
  v198 = [*(v195 + v197) fetchedObjects];
  if (v198)
  {
    v199 = v198;
    v200 = sub_1BA4A6B08();

    v246 = v200;
    MEMORY[0x1EEE9AC00](v201);
    *(&v219 - 2) = v195;
    sub_1BA4A6BF8();
    swift_getWitnessTable();
    sub_1BA4A6A38();
  }

  v202 = v223;
  sub_1BA4A3D88();
  v203 = sub_1BA4A3E88();
  v204 = sub_1BA4A6F88();
  if (os_log_type_enabled(v203, v204))
  {
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v246 = v206;
    *v205 = 136315394;
    v207 = sub_1BA4A85D8();
    v209 = sub_1B9F0B82C(v207, v208, &v246);

    *(v205 + 4) = v209;
    *(v205 + 12) = 2080;
    v210 = v241;
    swift_beginAccess();
    v211 = NSDiffableDataSourceSnapshot<>.description.getter();
    v213 = sub_1B9F0B82C(v211, v212, &v246);

    *(v205 + 14) = v213;
    _os_log_impl(&dword_1B9F07000, v203, v204, "[%s] Snapshot built: %s", v205, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v206, -1, -1);
    MEMORY[0x1BFAF43A0](v205, -1, -1);

    (*(v225 + 8))(v202, v229);
    v214 = v224;
    v215 = v222;
  }

  else
  {

    (*(v225 + 8))(v202, v229);
    v214 = v224;
    v215 = v222;
    v210 = v241;
  }

  swift_beginAccess();
  v216 = v214;
  v217 = v235;
  (*(v215 + 16))(v216, v210, v235);
  return (*(v215 + 8))(v210, v217);
}

uint64_t sub_1B9F17734(uint64_t a1)
{
  v3 = qword_1EDC84AC8;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B9F177C4@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(sub_1BA4A4598() + 16);

  if (v7 || (v8 = *(sub_1BA4A45B8() + 16), , v8) || (v9 = *(sub_1BA4A45A8() + 16), , v9))
  {
    v18 = a1;
    sub_1BA4A45D8();
    v10 = sub_1BA4A4578();
    v11 = *(v10 + 16);
    if (v11)
    {
      sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v12 = (v10 + 40);
      v20 = xmmword_1BA4B5480;
      do
      {
        v14 = *v12;
        v23 = *(v12 - 1);
        v13 = v23;
        v24 = v14;
        v15 = swift_allocObject();
        *(v15 + 16) = v20;
        *(v15 + 32) = v13;
        *(v15 + 40) = v14;
        swift_bridgeObjectRetain_n();
        sub_1BA4A44C8();

        sub_1BA4A4528();

        v21 = 0;
        v22 = 0;
        sub_1BA4A4448();

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    return (*(v19 + 32))(v18, v6, v4);
  }

  else
  {
    v17 = *(v19 + 16);

    return v17(a1, v1, v4);
  }
}

uint64_t sub_1B9F17A68(void *a1, uint64_t (*a2)(void), uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v5 + qword_1EDC64EB0;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v5 + qword_1EDC84BB8) = a1;
  *(v5 + *(*v5 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);
  v11 = a1;
  v12 = sub_1B9F17C00(v11, 0, a2, a3, a4);
  sub_1B9F18460(a2, a3, a4);
  v13 = *&v11[qword_1EDC84AD0];
  v14 = *&v11[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v13, v14);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v15 = MutableArrayDataSource.init(arrangedSections:identifier:)(v12, 0x534464657070614DLL, 0xE90000000000003CLL);
  v16 = *(v15 + qword_1EDC84BB8);
  v17 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v16 + v17) registerObserver_];
  return v15;
}

uint64_t sub_1B9F17BE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B9F17C00(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  result = sub_1B9F18214();
  v67 = result;
  if (a5)
  {
    if (a5 != 1)
    {
      v44 = a3();

      return v44;
    }

    v66 = *(result + 16);
    if (v66)
    {
      v8 = 0;
      v9 = (result + 72);
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(result + 16))
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        v14 = *(v9 - 3);
        v13 = *(v9 - 2);
        v15 = *(v9 - 4);
        v73[0] = *(v9 - 5);
        v73[1] = v15;
        v73[2] = v14;
        v73[3] = v13;
        v73[4] = v11;
        v73[5] = v12;

        (a3)(v74, v73);

        v16 = v74[0];
        v17 = v74[1];
        v69 = v75;
        v18 = v76;
        v19 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B9F21540(0, *(v10 + 2) + 1, 1, v10);
        }

        v21 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v21 >= v20 >> 1)
        {
          v10 = sub_1B9F21540((v20 > 1), v21 + 1, 1, v10);
        }

        ++v8;
        *(v10 + 2) = v21 + 1;
        v22 = &v10[48 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v17;
        *(v22 + 3) = v69;
        *(v22 + 8) = v18;
        *(v22 + 9) = v19;
        v9 += 6;
        result = v67;
        if (v66 == v8)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_65;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v45 = 0;
    v46 = *(v10 + 2);
    v47 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v48 = &v10[48 * v45 + 16];
    while (v46 != v45)
    {
      if (v45 >= *(v10 + 2))
      {
        goto LABEL_64;
      }

      ++v45;
      v49 = (v48 + 48);
      v50 = *(v48 + 32);
      v48 += 48;
      if (*(v50 + 16))
      {
        v51 = *(v49 - 3);
        v68 = *(v49 - 4);
        v52 = *(v49 - 1);
        v53 = *v49;
        v54 = v49[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v47;
        v72 = v52;
        if ((result & 1) == 0)
        {
          result = sub_1B9F277B0(0, *(v47 + 16) + 1, 1);
          v47 = v74[0];
        }

        v56 = *(v47 + 16);
        v55 = *(v47 + 24);
        if (v56 >= v55 >> 1)
        {
          result = sub_1B9F277B0((v55 > 1), v56 + 1, 1);
          v47 = v74[0];
        }

        *(v47 + 16) = v56 + 1;
        v57 = (v47 + 48 * v56);
        v57[4] = v68;
        v57[5] = v51;
        v57[6] = v50;
        v57[7] = v72;
        v57[8] = v53;
        v57[9] = v54;
        goto LABEL_47;
      }
    }

    v58 = v47;
    goto LABEL_58;
  }

  v63 = *(result + 16);
  if (!v63)
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_58:

    return v58;
  }

  v23 = 0;
  v62 = result + 32;
  v58 = MEMORY[0x1E69E7CC0];
  v61 = a2;
  while (1)
  {
    if (v23 >= *(result + 16))
    {
      goto LABEL_66;
    }

    v70 = v23;
    v24 = (v62 + 48 * v23);
    v25 = v24[2];
    v26 = v24[5];
    v59 = v24[4];
    v60 = *v24;
    v27 = *(v25 + 16);
    v65 = v24[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v64 = v26;
    result = swift_bridgeObjectRetain_n();
    if (v27)
    {
      break;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v23 = v70 + 1;

    v39 = Array<A>.identifierToIndexDict()(v30);

    if (v30[2] || (v61 & 1) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1B9F21540(0, *(v58 + 2) + 1, 1, v58);
      }

      v40 = v58;
      v42 = *(v58 + 2);
      v41 = *(v58 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1B9F21540((v41 > 1), v42 + 1, 1, v58);
      }

      *(v40 + 2) = v42 + 1;
      v58 = v40;
      v43 = &v40[48 * v42];
      *(v43 + 4) = v60;
      *(v43 + 5) = v65;
      *(v43 + 6) = v30;
      *(v43 + 7) = v39;
      *(v43 + 8) = v59;
      *(v43 + 9) = v64;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    result = v67;
    if (v23 == v63)
    {
      goto LABEL_58;
    }
  }

  v28 = 0;
  v29 = v25 + 32;
  v30 = MEMORY[0x1E69E7CC0];
  while (v28 < *(v25 + 16))
  {
    sub_1B9F0A534(v29, v74);
    v31 = (a3)(v74);
    result = __swift_destroy_boxed_opaque_existential_1(v74);
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_60;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v34 <= v30[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = sub_1B9F281E8(result, v35, 1, v30);
      v30 = result;
      if (*(v31 + 16))
      {
LABEL_29:
        if ((v30[3] >> 1) - v30[2] < v32)
        {
          goto LABEL_62;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = v30[2];
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_63;
          }

          v30[2] = v38;
        }

        goto LABEL_18;
      }
    }

    if (v32)
    {
      goto LABEL_61;
    }

LABEL_18:
    ++v28;
    v29 += 40;
    if (v27 == v28)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B9F18234(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v29 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v2;
  v10(v8, v2 + v9, v5);
  v11 = sub_1BA4A4578();
  (*(v6 + 8))(v8, v5);
  v12 = *(v11 + 16);
  if (v12)
  {
    v35 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v12, 0);
    v14 = 0;
    v15 = v35;
    v16 = (v11 + 40);
    while (v14 < *(v11 + 16))
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v29(&v31, v17, v18, v28, v30);

      v19 = v31;
      v20 = v32;
      v22 = v33;
      v21 = v34;
      v35 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v32;
        v27 = v31;
        result = sub_1B9F277B0((v23 > 1), v24 + 1, 1);
        v20 = v26;
        v19 = v27;
        v15 = v35;
      }

      ++v14;
      *(v15 + 16) = v24 + 1;
      v25 = v15 + 48 * v24;
      *(v25 + 32) = v19;
      *(v25 + 48) = v20;
      *(v25 + 64) = v22;
      *(v25 + 72) = v21;
      v16 += 2;
      if (v12 == v14)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B9F18460(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t MutableArrayDataSource.init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  *(v4 + 16) = v11;
  sub_1BA4A45D8();
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + v12) = sub_1B9F18974(MEMORY[0x1E69E7CC0]);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  *(v4 + v14) = sub_1B9F12744(v13);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges) = 1;
  v15 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  *v15 = a2;
  v15[1] = a3;
  sub_1B9F185CC(a1);

  sub_1B9F18D28();
  return v4;
}

uint64_t sub_1B9F185CC(uint64_t a1)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  sub_1BA4A45D8();
  v32 = a1;
  v38 = *(a1 + 16);
  if (v38)
  {
    v37 = v32 + 32;
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v36 = v6;
    v7 = 0;
    v35 = xmmword_1BA4B5480;
    v33 = v5;
    v34 = v3;
    do
    {
      v8 = (v37 + 48 * v7);
      v9 = v8[4];
      v10 = v8[5];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[1];
      v14 = swift_allocObject();
      *(v14 + 16) = v35;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;

      swift_bridgeObjectRetain_n();
      sub_1BA4A44C8();

      v15 = *(v12 + 16);
      if (v15)
      {
        v39 = v10;
        v40 = v11;
        v41 = v13;
        v43 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v15, 0);
        v16 = v43;
        v17 = v12 + 32;
        do
        {
          sub_1B9F0A534(v17, v42);
          __swift_project_boxed_opaque_existential_1(v42, v42[3]);
          v18 = sub_1BA4A2D58();
          v20 = v19;
          __swift_destroy_boxed_opaque_existential_1(v42);
          v43 = v16;
          v22 = *(v16 + 16);
          v21 = *(v16 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1B9F1C360((v21 > 1), v22 + 1, 1);
            v16 = v43;
          }

          *(v16 + 16) = v22 + 1;
          v23 = v16 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          v17 += 40;
          --v15;
        }

        while (v15);

        v5 = v33;
        v3 = v34;
      }

      else
      {
      }

      ++v7;
      v42[0] = 0;
      v42[1] = 0;
      sub_1BA4A4448();
    }

    while (v7 != v38);
  }

  v43 = sub_1B9F18974(MEMORY[0x1E69E7CC0]);
  sub_1B9F18ADC(v32, &v43);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  v25 = v31;
  swift_beginAccess();
  (*(v30 + 40))(v25 + v24, v5, v3);
  swift_endAccess();
  v26 = v43;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  *(v25 + v27) = v26;
}

unint64_t sub_1B9F18974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &unk_1EDC5DFF0);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_1B9F24A34(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

uint64_t sub_1B9F18ADC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  for (i = (result + 72); ; i += 6)
  {
    v28 = v2;
    v6 = *(i - 4);
    v29 = *(i - 5);
    v7 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 1);
    v9 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v30 = *v3;
    *v3 = 0x8000000000000000;
    v13 = sub_1B9F24A34(v10, v9);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1B9F1CB18(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1B9F24A34(v10, v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v21 = v30;
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v13;
    sub_1BA0F1778();
    v13 = v26;
    v21 = v30;
    if (v19)
    {
LABEL_3:
      v5 = (v21[7] + 48 * v13);
      *v5 = v29;
      v5[1] = v6;
      v5[2] = v7;
      v5[3] = v8;
      v5[4] = v10;
      v5[5] = v9;

      goto LABEL_4;
    }

LABEL_11:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v10;
    v22[1] = v9;
    v23 = (v21[7] + 48 * v13);
    *v23 = v29;
    v23[1] = v6;
    v23[2] = v7;
    v23[3] = v8;
    v23[4] = v10;
    v23[5] = v9;
    v24 = v21[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_4:
    v3 = a2;
    *a2 = v21;

    v2 = v28 - 1;
    if (v28 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1B9F18D28()
{
  v1 = v0;
  v145 = *v0;
  v148 = sub_1BA4A3EA8();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v155 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v152 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v146 = &v140 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v140 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v151 = v12;
  v150 = v5 + 16;
  v154 = v13;
  v13(v11, &v1[v12], v4);
  v14 = sub_1BA4A4578();
  v15 = *(v5 + 8);
  v157 = v4;
  v156 = v5 + 8;
  v153 = v15;
  v15(v11, v4);
  v16 = *(v14 + 16);
  v159 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  v158 = v1;
  if (!v16)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v17 = 0;
  v18 = v14 + 40;
  v149 = v16 - 1;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = (v18 + 16 * v17);
    v21 = v17;
    while (1)
    {
      if (v21 >= *(v14 + 16))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v22 = *&v1[v159];
      if (*(v22 + 16))
      {
        break;
      }

LABEL_4:
      ++v21;
      v20 += 2;
      if (v16 == v21)
      {
        goto LABEL_16;
      }
    }

    v24 = *(v20 - 1);
    v23 = *v20;

    v25 = sub_1B9F24A34(v24, v23);
    if ((v26 & 1) == 0)
    {

      goto LABEL_4;
    }

    v144 = v18;
    v27 = (*(v22 + 56) + 48 * v25);
    v28 = v27[1];
    v142 = *v27;
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[5];
    v141 = v27[4];

    v143 = v29;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1B9F21540(0, *(v19 + 2) + 1, 1, v19);
    }

    v33 = *(v19 + 2);
    v32 = *(v19 + 3);
    if (v33 >= v32 >> 1)
    {
      v19 = sub_1B9F21540((v32 > 1), v33 + 1, 1, v19);
    }

    v17 = v21 + 1;
    *(v19 + 2) = v33 + 1;
    v34 = &v19[48 * v33];
    *(v34 + 4) = v142;
    *(v34 + 5) = v28;
    *(v34 + 6) = v143;
    *(v34 + 7) = v30;
    *(v34 + 8) = v141;
    *(v34 + 9) = v31;
    v1 = v158;
    v18 = v144;
  }

  while (v149 != v21);
LABEL_16:

  v35 = *(v19 + 2);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = 0;
    v38 = v19 + 48;
    do
    {
      if (v37 >= *(v19 + 2))
      {
        goto LABEL_100;
      }

      v39 = *v38;
      v40 = *(*v38 + 16);
      v41 = v36[2];
      v42 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        goto LABEL_101;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v42 <= v36[3] >> 1)
      {
        if (!*(v39 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v41 <= v42)
        {
          v44 = v41 + v40;
        }

        else
        {
          v44 = v41;
        }

        v36 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v44, 1, v36);
        if (!*(v39 + 16))
        {
LABEL_18:

          if (v40)
          {
            goto LABEL_102;
          }

          goto LABEL_19;
        }
      }

      if ((v36[3] >> 1) - v36[2] < v40)
      {
        goto LABEL_106;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50);
      swift_arrayInitWithCopy();

      if (v40)
      {
        v45 = v36[2];
        v46 = __OFADD__(v45, v40);
        v47 = v45 + v40;
        if (v46)
        {
          goto LABEL_108;
        }

        v36[2] = v47;
      }

LABEL_19:
      ++v37;
      v38 += 48;
    }

    while (v35 != v37);
  }

  v48 = v36[2];
  if (v48)
  {
    v163[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v48, 0);
    v49 = v163[0];
    v50 = (v36 + 4);
    v51 = v155;
    do
    {
      sub_1B9F0A534(v50, v165);
      __swift_project_boxed_opaque_existential_1(v165, v165[3]);
      v52 = sub_1BA4A2D58();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_1(v165);
      v163[0] = v49;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1B9F1C360((v55 > 1), v56 + 1, 1);
        v49 = v163[0];
      }

      *(v49 + 16) = v56 + 1;
      v57 = v49 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      v50 += 40;
      --v48;
    }

    while (v48);
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
    v51 = v155;
  }

  v59 = sub_1B9F19D30(v58);

  v60 = sub_1B9F19F78(v59);
  v149 = 0;

  v61 = v158;
  if (v60[2])
  {
    sub_1BA4A3D88();

    v62 = sub_1BA4A3E88();
    v63 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v165[0] = v65;
      *v64 = 136315906;
      v66 = sub_1BA4A85D8();
      v68 = sub_1B9F0B82C(v66, v67, v165);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = MEMORY[0x1E69E6158];
      sub_1B9F2176C(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v70 = sub_1BA4A6638();
      v72 = v71;

      v73 = sub_1B9F0B82C(v70, v72, v165);

      *(v64 + 14) = v73;
      *(v64 + 22) = 2080;
      v74 = MEMORY[0x1BFAF1560](v49, v69);
      v76 = v75;

      v77 = sub_1B9F0B82C(v74, v76, v165);

      *(v64 + 24) = v77;
      *(v64 + 32) = 2080;
      v78 = v151;
      v79 = v146;
      v80 = v157;
      v154(v146, v158 + v151, v157);
      v81 = NSDiffableDataSourceSnapshot<>.description.getter();
      v83 = v82;
      v153(v79, v80);
      v84 = sub_1B9F0B82C(v81, v83, v165);

      *(v64 + 34) = v84;
      _os_log_impl(&dword_1B9F07000, v62, v63, "[%s] Duplicate uniqueIdentifiers: %s.\n\nThere is one or more sets of duplicate item in the data source with keys: %s. The snapshot is: %s", v64, 0x2Au);
      swift_arrayDestroy();
      v61 = v158;
      MEMORY[0x1BFAF43A0](v65, -1, -1);
      MEMORY[0x1BFAF43A0](v64, -1, -1);

      (*(v147 + 8))(v155, v148);
      goto LABEL_47;
    }

    (*(v147 + 8))(v51, v148);
  }

  else
  {
  }

  v78 = v151;
LABEL_47:
  v85 = v152;
  v86 = v157;
  v154(v152, &v61[v78], v157);
  v87 = sub_1BA4A4578();
  v153(v85, v86);
  v88 = *(v87 + 16);
  swift_beginAccess();
  if (!v88)
  {
    v92 = MEMORY[0x1E69E7CC0];
    goto LABEL_62;
  }

  v89 = 0;
  v90 = v87 + 40;
  v91 = v88 - 1;
  v92 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v93 = (v90 + 16 * v89);
    v94 = v89;
    while (2)
    {
      if (v94 >= *(v87 + 16))
      {
        goto LABEL_99;
      }

      v95 = *&v61[v159];
      if (!*(v95 + 16))
      {
LABEL_51:
        ++v94;
        v93 += 2;
        v61 = v158;
        if (v88 == v94)
        {
          goto LABEL_62;
        }

        continue;
      }

      break;
    }

    v97 = *(v93 - 1);
    v96 = *v93;

    v98 = sub_1B9F24A34(v97, v96);
    if ((v99 & 1) == 0)
    {

      goto LABEL_51;
    }

    v156 = v91;
    v157 = v90;
    v100 = *(v95 + 56) + 48 * v98;
    v101 = *(v100 + 8);
    v154 = *v100;
    v102 = *(v100 + 16);
    v103 = *(v100 + 24);
    v104 = *(v100 + 40);
    v153 = *(v100 + 32);

    v155 = v102;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1B9F21540(0, *(v92 + 2) + 1, 1, v92);
    }

    v106 = *(v92 + 2);
    v105 = *(v92 + 3);
    if (v106 >= v105 >> 1)
    {
      v92 = sub_1B9F21540((v105 > 1), v106 + 1, 1, v92);
    }

    v89 = v94 + 1;
    *(v92 + 2) = v106 + 1;
    v107 = &v92[48 * v106];
    *(v107 + 4) = v154;
    *(v107 + 5) = v101;
    *(v107 + 6) = v155;
    *(v107 + 7) = v103;
    *(v107 + 8) = v153;
    *(v107 + 9) = v104;
    v91 = v156;
    v61 = v158;
    v90 = v157;
    if (v156 != v94)
    {
      continue;
    }

    break;
  }

LABEL_62:

  v108 = *(v92 + 2);
  if (v108)
  {
    v109 = 0;
    v110 = MEMORY[0x1E69E7CC0];
    v111 = v92 + 48;
    while (1)
    {
      if (v109 >= *(v92 + 2))
      {
        goto LABEL_103;
      }

      v112 = *v111;
      v113 = *(*v111 + 16);
      v114 = v110[2];
      v115 = v114 + v113;
      if (__OFADD__(v114, v113))
      {
        goto LABEL_104;
      }

      v116 = swift_isUniquelyReferenced_nonNull_native();
      if (v116 && v115 <= v110[3] >> 1)
      {
        if (!*(v112 + 16))
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v114 <= v115)
        {
          v117 = v114 + v113;
        }

        else
        {
          v117 = v114;
        }

        v110 = sub_1B9F281E8(v116, v117, 1, v110);
        if (!*(v112 + 16))
        {
LABEL_64:

          if (v113)
          {
            goto LABEL_105;
          }

          goto LABEL_65;
        }
      }

      if ((v110[3] >> 1) - v110[2] < v113)
      {
        goto LABEL_107;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50);
      swift_arrayInitWithCopy();

      if (v113)
      {
        v118 = v110[2];
        v46 = __OFADD__(v118, v113);
        v119 = v118 + v113;
        if (v46)
        {
          goto LABEL_109;
        }

        v110[2] = v119;
      }

LABEL_65:
      ++v109;
      v111 += 48;
      if (v108 == v109)
      {
        goto LABEL_81;
      }
    }
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_81:

  v120 = v110[2];
  if (v120)
  {
    v121 = MEMORY[0x1E69E7CC0];
    v122 = (v110 + 4);
    v123 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v122, v165);
      sub_1B9F0A534(v165, v162);
      sub_1B9F0D950(0, &qword_1EDC6AD50);
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v160, v163);
        __swift_project_boxed_opaque_existential_1(v163, v164);
        v124 = sub_1BA4A2D58();
        v126 = v125;
        __swift_project_boxed_opaque_existential_1(v163, v164);
        v127 = sub_1BA4A2E58();
        v129 = v128;
        __swift_destroy_boxed_opaque_existential_1(v165);
        __swift_destroy_boxed_opaque_existential_1(v163);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1B9F28B98(0, v121[2] + 1, 1, v121);
        }

        v131 = v121[2];
        v130 = v121[3];
        if (v131 >= v130 >> 1)
        {
          v121 = sub_1B9F28B98((v130 > 1), v131 + 1, 1, v121);
        }

        v121[2] = v131 + 1;
        v132 = &v121[4 * v131];
        v132[4] = v124;
        v132[5] = v126;
        v132[6] = v127;
        v132[7] = v129;
        v123 = MEMORY[0x1E69A3348];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v165);
        v161 = 0;
        memset(v160, 0, sizeof(v160));
        sub_1BA0FA9CC(v160, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v123);
      }

      v122 += 40;
      --v120;
    }

    while (v120);
  }

  else
  {

    v121 = MEMORY[0x1E69E7CC0];
  }

  v133 = v158;
  if (v121[2])
  {
    sub_1B9F24D7C(0, &qword_1EDC5E000);
    v134 = sub_1BA4A8098();
  }

  else
  {
    v134 = MEMORY[0x1E69E7CC8];
  }

  v165[0] = v134;

  v136 = v149;
  sub_1B9F1A400(v135, 1, v165);
  if (!v136)
  {

    v137 = v165[0];
    v138 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    *(v133 + v138) = v137;
  }

LABEL_110:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B9F19D30(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = MEMORY[0x1E69E6158];
  for (i = (a1 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;
    swift_bridgeObjectRetain_n();
    v9 = sub_1B9F24A34(v7, v6);
    v10 = v1[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v1[3] < v12)
    {
      sub_1B9F1CE4C(v12, 1, &qword_1EDC5DFE8, &qword_1EDC6B670, v3);
      v1 = v27;
      v14 = sub_1B9F24A34(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v9 = v14;
    }

    if (v13)
    {

      v16 = v1[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1BA27EE34(0, *(v17 + 2) + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1BA27EE34((v19 > 1), v20 + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      *(v17 + 2) = v20 + 1;
      v5 = &v17[16 * v20];
      *(v5 + 4) = v7;
      *(v5 + 5) = v6;
      v3 = MEMORY[0x1E69E6158];
    }

    else
    {
      sub_1B9F2176C(0, &qword_1EDC6E330, v3, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BA4B5480;
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      v1[(v9 >> 6) + 8] |= 1 << v9;
      v22 = (v1[6] + 16 * v9);
      *v22 = v7;
      v22[1] = v6;
      *(v1[7] + 8 * v9) = v21;
      v23 = v1[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v1[2] = v25;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

unint64_t *sub_1B9F19F78(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1B9F1A0D8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1BA0F81E8(v8, v4, v2);
  result = MEMORY[0x1BFAF43A0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1B9F1A0D8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1B9F1A1C8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1B9F1A1C8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F1A1C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1BA205764();
  result = sub_1BA4A8098();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

void sub_1B9F1A400(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1B9F24A34(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B9F24AAC(v15, v4 & 1);
    v10 = sub_1B9F24A34(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1BA4A83B8();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1BA0F1474();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4E68E0);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](39, 0xE100000000000000);
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_1B9F24A34(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1B9F24AAC(v32, 1);
        v28 = sub_1B9F24A34(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t type metadata accessor for PluginSearchDataSource()
{
  result = qword_1EDC66FE8;
  if (!qword_1EDC66FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F1A844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI22PluginSearchDataSource_pluginBundleName);
  *v10 = a1;
  v10[1] = a2;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v15, "MutableArray<");
  HIWORD(v15[1]) = -4864;
  sub_1BA4A1788();
  v11 = sub_1BA4A1748();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x1BFAF1350](v11, v13);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(MEMORY[0x1E69E7CC0], v15[0], v15[1]);
}

void sub_1B9F1A9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F1AA20(void *a1, uint64_t a2)
{
  sub_1B9F1A9BC(0, &qword_1EDC5DB98, sub_1B9F1ABA4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = 2;
  sub_1B9F0A534(a2, v8);
  type metadata accessor for SearchDataSource.RegularEmptyStateDataSource(0);
  swift_allocObject();
  *(inited + 40) = sub_1B9F1ACE8(a1, v8);
  *(inited + 48) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 56) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 64) = 1;
  sub_1B9F0A534(a2, v8);
  type metadata accessor for SearchDataSource.CompactEmptyStateDataSource(0);
  swift_allocObject();
  *(inited + 72) = sub_1B9F271FC(a1, v8);
  *(inited + 80) = &protocol witness table for SearchSectionDataSource;
  *(inited + 88) = &protocol witness table for MutableArrayDataSource;
  v5 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4();
  swift_arrayDestroy();
  v6 = sub_1B9F1D348(v5, 0, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

void sub_1B9F1ABA4()
{
  if (!qword_1EDC5E300)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_1B9F1AC28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E300);
    }
  }
}

unint64_t sub_1B9F1AC28()
{
  result = qword_1EDC60EF8[0];
  if (!qword_1EDC60EF8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC60EF8);
  }

  return result;
}

uint64_t sub_1B9F1ACE8(uint64_t a1, void *a2)
{
  v60 = a2;
  v4 = sub_1BA4A4428();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - v9;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B9FD0;
  v12 = sub_1B9F1B828(a1, a2, &unk_1F37FC7E0);
  sub_1B9F126E0();
  v66 = v13;
  v14 = objc_allocWithZone(v13);
  v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v12);
  v16 = sub_1BA4A1D18();
  v18 = v17;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v19 = *(v5 + 16);
  v64 = v5 + 16;
  v65 = v19;
  v19(v8, v10, v4);
  v20 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v16, v18, 0, 0, 0, 0, v8, 0, 0);
  v22 = v21;
  v59 = *(v5 + 8);
  v63 = v5 + 8;
  v59(v10, v4);
  v69 = v20;
  v62 = sub_1B9F25430(&qword_1EDC69800, type metadata accessor for HeaderItem);
  v70 = v62;
  v68[0] = v22;
  sub_1B9F0A534(v68, v67);
  v23 = swift_allocObject();
  sub_1B9F25598(v67, v23 + 16);
  sub_1B9F255B4();
  v61 = v24;
  v25 = swift_allocObject();
  v25[4] = v15;
  v25[5] = sub_1B9F79BC8;
  v25[6] = v23;
  v26 = *&v15[qword_1EDC84AD0 + 8];
  v25[2] = *&v15[qword_1EDC84AD0];
  v25[3] = v26;

  __swift_destroy_boxed_opaque_existential_1(v68);
  *(v11 + 32) = v25;
  *(v11 + 40) = &protocol witness table for Supplementary<A>;
  v27 = v60;
  v28 = sub_1B9F1B828(a1, v60, &unk_1F37FC808);
  v29 = objc_allocWithZone(v66);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v28);
  v31 = sub_1BA4A1D18();
  v33 = v32;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v58 = v4;
  v65(v8, v10, v4);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v31, v33, 0, 0, 0, 0, v8, 0, 0);
  v35 = v34;
  v36 = v4;
  v37 = v59;
  v59(v10, v36);
  v69 = v20;
  v70 = v62;
  v68[0] = v35;
  sub_1B9F0A534(v68, v67);
  v38 = swift_allocObject();
  sub_1B9F25598(v67, v38 + 16);
  v39 = swift_allocObject();
  v39[4] = v30;
  v39[5] = sub_1BA0590DC;
  v39[6] = v38;
  v40 = *&v30[qword_1EDC84AD0 + 8];
  v39[2] = *&v30[qword_1EDC84AD0];
  v39[3] = v40;

  __swift_destroy_boxed_opaque_existential_1(v68);
  *(v11 + 48) = v39;
  *(v11 + 56) = &protocol witness table for Supplementary<A>;
  v41 = a1;
  v42 = v27;
  v43 = sub_1B9F1B828(v41, v27, &unk_1F37FC830);
  v44 = objc_allocWithZone(v66);
  v45 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v43);
  v46 = sub_1BA4A1D18();
  v48 = v47;
  sub_1BA4A43F8();
  v49 = v58;
  v65(v8, v10, v58);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v46, v48, 0, 0, 0, 0, v8, 0, 0);
  v51 = v50;
  v37(v10, v49);
  v69 = v20;
  v70 = v62;
  v68[0] = v51;
  sub_1B9F0A534(v68, v67);
  v52 = swift_allocObject();
  sub_1B9F25598(v67, v52 + 16);
  v53 = swift_allocObject();
  v53[4] = v45;
  v53[5] = sub_1BA0590DC;
  v53[6] = v52;
  v54 = *&v45[qword_1EDC84AD0 + 8];
  v53[2] = *&v45[qword_1EDC84AD0];
  v53[3] = v54;

  __swift_destroy_boxed_opaque_existential_1(v68);
  *(v11 + 64) = v53;
  *(v11 + 72) = &protocol witness table for Supplementary<A>;
  v55 = CompoundSectionedDataSource.init(_:)(v11);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v55;
}

uint64_t sub_1B9F1B2D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1B9F1B310(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B378(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B3E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1B4AC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1B50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1B560(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0D950(255, a3);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1B5B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1B684(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B6F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B758(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F1B828(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a1;
  sub_1B9F1A9BC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B9F1BE20();
  *(v8 + 32) = 0xD000000000000015;
  *(v8 + 40) = 0x80000001BA4EC680;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B9F1BE74(0, v9, 0);
    v10 = v46;
    v11 = a3 + 32;
    do
    {
      ++v11;
      v12 = sub_1BA4A1D28();
      v46 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        LODWORD(v44) = v12;
        sub_1B9F1BE74((v13 > 1), v14 + 1, 1);
        LOWORD(v12) = v44;
        v10 = v46;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 2 * v14 + 32) = v12;
      --v9;
    }

    while (v9);
  }

  v44 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F1C094(0, &unk_1EDC5E600, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
  *(v8 + 96) = v15;
  *(v8 + 104) = sub_1B9F1C134();
  *(v8 + 72) = v10;
  v16 = sub_1BA4A6EE8();
  sub_1BA4A27B8();
  sub_1B9F1A9BC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v43 = xmmword_1BA4B5480;
  *(v20 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BE8], v17);
  v21 = sub_1BA4A0FA8();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = MEMORY[0x1E69E6F90];
  sub_1B9F1C094(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = v43;
  *(v23 + 32) = sub_1BA4A6F38();
  v24 = MEMORY[0x1BFAED020](v20, 0, v7, v23);

  sub_1B9F1C1B0(v7);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = sub_1BA4A1B68();
  sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v22);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B8B60;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v28 = sub_1BA4A6758();
  v29 = [v27 initWithKey:v28 ascending:1];

  *(v26 + 32) = v29;
  v30 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v31 = sub_1BA4A6758();
  v32 = [v30 initWithKey:v31 ascending:0];

  *(v26 + 40) = v32;
  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v34 = sub_1BA4A6758();
  v35 = [v33 initWithKey:v34 ascending:1 selector:sel_localizedStandardCompare_];

  *(v26 + 48) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B7510;
  *(v36 + 32) = v16;
  *(v36 + 40) = v24;
  v37 = v16;
  v38 = v24;
  v39 = sub_1BA4A6AE8();

  v40 = [objc_opt_self() andPredicateWithSubpredicates_];

  v41 = sub_1BA4A7558();

  return v41;
}

unint64_t sub_1B9F1BE20()
{
  result = qword_1EDC6B6B0;
  if (!qword_1EDC6B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B6B0);
  }

  return result;
}

char *sub_1B9F1BE74(char *a1, int64_t a2, char a3)
{
  result = sub_1B9F1BE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B9F1BE94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DB68, MEMORY[0x1E69E7290], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void sub_1B9F1BFA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F1BFFC()
{
  result = qword_1EDC6B630;
  if (!qword_1EDC6B630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B630);
  }

  return result;
}

void sub_1B9F1C048(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A82E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B9F1C094(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F1C0E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F1C134()
{
  result = qword_1EDC5E5F8;
  if (!qword_1EDC5E5F8)
  {
    sub_1B9F1C094(255, &unk_1EDC5E600, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E5F8);
  }

  return result;
}

uint64_t sub_1B9F1C1B0(uint64_t a1)
{
  sub_1B9F0C974(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1B9F1C23C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B9F1C360(char *a1, int64_t a2, char a3)
{
  result = sub_1B9F1C23C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B9F1C380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_1BA4A2D58();
  a2[1] = v4;
  a2[2] = v3;
  return swift_unknownObjectRetain();
}

uint64_t sub_1B9F1C3E0()
{
  v1 = [*v0 uniqueIdentifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

uint64_t sub_1B9F1C438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1B9F1C4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B9F1134C(&v12, v10 + 40 * a1 + 32);
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

unint64_t sub_1B9F1C5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &qword_1EDC5DFE0);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

void sub_1B9F1C700()
{
  if (!qword_1EDC5E5D0)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6AD50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E5D0);
    }
  }
}

uint64_t sub_1B9F1C780(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C700();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F1C7E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, id *, uint64_t *, uint64_t))
{
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_16:

    return;
  }

  v7 = 0;
  v8 = (a1 + 48);
  while (1)
  {
    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:

      sub_1BA4A83B8();
      __break(1u);
      goto LABEL_24;
    }

    v9 = *(v8 - 1);
    v11 = *v8;
    v36 = *(v8 - 2);
    v10 = v36;
    v37 = v9;
    v38 = v11;
    v12 = *a3;

    v13 = sub_1B9F24A34(v10, v9);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v12[3] >= v18)
    {
      break;
    }

    sub_1BA0F36C0(v18, a2 & 1);
    v13 = sub_1B9F24A34(v10, v9);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_14:
    v24 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v25 = (v24[6] + 16 * v13);
    *v25 = v10;
    v25[1] = v9;
    *(v24[7] + 8 * v13) = v11;
    v26 = v24[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v17)
    {
      goto LABEL_22;
    }

    v24[2] = v27;
LABEL_3:
    ++v7;
    v8 += 3;
    a2 = 1;
    if (v31 == v7)
    {
      goto LABEL_16;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v23 = v13;
  sub_1BA0F15FC();
  v13 = v23;
  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = *a3;
  v22 = v13;
  v35 = *(*(*a3 + 56) + 8 * v13);
  a5(v34, &v35, &v38, a4);
  if (!v32)
  {
    v32 = 0;

    *(v21[7] + 8 * v22) = v34[0];
    goto LABEL_3;
  }

  v35 = v32;
  v28 = v32;
  sub_1B9F0D9AC(0, &qword_1EDC6E310);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4E68E0);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](39, 0xE100000000000000);

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1B9F1CB18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &unk_1EDC5DFF0);
  v44 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = (*(v5 + 56) + 48 * v23);
      v27 = v26[1];
      v47 = *v26;
      v29 = v26[2];
      v28 = v26[3];
      v30 = v26[5];
      v45 = v26[4];
      if ((v44 & 1) == 0)
      {
      }

      v48 = v28;
      v31 = v29;
      v32 = v27;
      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = (*(v43 + 56) + 48 * v15);
      v12 = v46;
      *v19 = v47;
      v19[1] = v32;
      v19[2] = v31;
      v19[3] = v16;
      v19[4] = v45;
      v19[5] = v17;
      ++*(v43 + 16);
      v5 = v42;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B9F1CE4C(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  sub_1B9F28B1C(0, a3, a4, a5);
  v37 = a2;
  result = sub_1BA4A8078();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

void sub_1B9F1D0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D284()
{
  if (!qword_1EDC5E730)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E730);
    }
  }
}

unint64_t sub_1B9F1D2E0(uint64_t a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1);
  v2 = sub_1BA4A84D8();
  return sub_1B9F28FD8(a1, v2);
}

uint64_t sub_1B9F1D348(uint64_t a1, uint64_t a2, _UNKNOWN **a3, _UNKNOWN **a4)
{
  v5 = v4;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  *(v5 + 16) = v13;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  sub_1BA4A7DF8();

  *&v25[0] = 0xD000000000000016;
  *(&v25[0] + 1) = 0x80000001BA508550;

  v15 = sub_1B9F29044(v14);

  *&v24[0] = v15;
  sub_1B9F1D718();
  sub_1B9F1D768();
  v16 = sub_1BA4A66D8();
  v18 = v17;

  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  *(v5 + 24) = 0xD000000000000016;
  *(v5 + 32) = 0x80000001BA508550;
  *(v5 + 64) = a1;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    if (qword_1EDC6D268 != -1)
    {
      swift_once();
    }

    v25[4] = xmmword_1EDC6D2B0;
    v25[5] = unk_1EDC6D2C0;
    v25[6] = xmmword_1EDC6D2D0;
    v25[7] = unk_1EDC6D2E0;
    v25[0] = xmmword_1EDC6D270;
    v25[1] = *&qword_1EDC6D280;
    v25[2] = xmmword_1EDC6D290;
    v25[3] = *&qword_1EDC6D2A0;
    sub_1B9F0ADF8(0, &qword_1EDC6B530);
    v24[4] = xmmword_1EDC6D2B0;
    v24[5] = unk_1EDC6D2C0;
    v24[6] = xmmword_1EDC6D2D0;
    v24[7] = unk_1EDC6D2E0;
    v24[0] = xmmword_1EDC6D270;
    v24[1] = *&qword_1EDC6D280;
    v24[2] = xmmword_1EDC6D290;
    v24[3] = *&qword_1EDC6D2A0;
    sub_1B9F1D9A4(v25, &v23);
    v20 = sub_1B9F293A8(v24);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    type metadata accessor for MutableArrayDataSourceWithLayout();
    swift_allocObject();
    v19 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA104830, v21);

    a4 = &protocol witness table for MutableArrayDataSource;
    a3 = &protocol witness table for MutableArrayDataSourceWithLayout;
  }

  *(v5 + 40) = v19;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 88) = v19;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1B9F1DCEC();
  return v5;
}

uint64_t sub_1B9F1D668()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F1D6A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);

  return v1;
}

uint64_t sub_1B9F1D6DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);

  return v1;
}

void sub_1B9F1D718()
{
  if (!qword_1EDC6B670)
  {
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B670);
    }
  }
}

unint64_t sub_1B9F1D768()
{
  result = qword_1EDC6B660;
  if (!qword_1EDC6B660)
  {
    sub_1B9F1D7DC(255, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B660);
  }

  return result;
}

void sub_1B9F1D7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1D830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F1D880(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F1D8D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1B9F1D92C()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  result = [v0 estimatedDimension_];
  qword_1EDC6D4A8 = v1;
  qword_1EDC6D4B0 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI19LayoutConfigurationV25BoundarySupplementaryItemVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1B9F1DA18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
  }
}

uint64_t sub_1B9F1DAFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v10;
  v16 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  *v16 = sub_1B9F57054;
  v16[1] = v15;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections) = a2;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;

  sub_1BA4A7DF8();

  strcpy(v21, "MutableArray<");
  HIWORD(v21[1]) = -4864;
  sub_1BA4A1788();
  v17 = sub_1BA4A1748();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  MEMORY[0x1BFAF1350](v17, v19);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(a1, v21[0], v21[1]);
}

void sub_1B9F1DCEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 40);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  [v5 unregisterObserver_];

  swift_beginAccess();
  if (*(v0 + 80) & 1) == 0 && (v6 = *(v0 + 64), *(v6 + 16)) && (v7 = sub_1B9F82C68(v1[9]), (v8))
  {
    v9 = (*(v6 + 56) + 24 * v7);
    v10 = v9 + 1;
    v11 = v9 + 2;
  }

  else
  {
    v9 = v1 + 5;
    v10 = v1 + 6;
    v11 = v1 + 7;
  }

  v12 = *v9;
  v13 = *v10;
  v14 = *v11;
  v1[11] = v12;
  v1[12] = v13;
  v1[13] = v14;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  v16 = (*(v14 + 40))(v15, v14);
  swift_unknownObjectRelease();
  [v16 registerObserver_];
}

id sub_1B9F1DE5C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_1B9F1DEA0()
{
  if (!qword_1EDC5DC70)
  {
    sub_1B9F0D9AC(255, &qword_1EDC67F10);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC70);
    }
  }
}

uint64_t sub_1B9F1DF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F1DFB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *sub_1B9F1E038(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t CompoundSectionedDataSource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CompoundSectionedDataSource.init(_:)(a1);
  return v2;
}

uint64_t sub_1B9F1E1F0()
{
  v1 = (*(*v0 + 176))();
  swift_beginAccess();
  v2 = v0[7];
  swift_beginAccess();
  v3 = v0[8];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v1) = (v1)(v2, v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_1B9F1E2C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = sub_1B9F1E1F0();
  v44 = v2;
  if (v10)
  {
    sub_1BA4A3D88();

    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6F88();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v43 = v3;
      v14 = v13;
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v14 = 136315394;
      v41 = v2[10];
      v15 = v2[12];
      v16 = sub_1BA4A85D8();
      v18 = sub_1B9F0B82C(v16, v17, v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      swift_beginAccess();
      v19 = *(v15 + 8);
      swift_unknownObjectRetain();
      v20 = v19(v41, v15);
      v22 = v21;
      swift_unknownObjectRelease();
      v23 = sub_1B9F0B82C(v20, v22, v45);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v11, v12, "%s using primary data source: %s", v14, 0x16u);
      v24 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);

      (*(v4 + 8))(v9, v43);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    v39 = v1 + 7;
    swift_beginAccess();
  }

  else
  {
    sub_1BA4A3D88();

    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6F88();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = v3;
      v28 = v27;
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v28 = 136315394;
      v41 = v2[11];
      v29 = v2[13];
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, v45);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      swift_beginAccess();
      v33 = *(v29 + 8);
      swift_unknownObjectRetain();
      v34 = v33(v41, v29);
      v36 = v35;
      swift_unknownObjectRelease();
      v37 = sub_1B9F0B82C(v34, v36, v45);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v25, v26, "%s using secondary data source: %s", v28, 0x16u);
      v38 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v4 + 8))(v7, v43);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v39 = v1 + 8;
    swift_beginAccess();
  }

  return *v39;
}

uint64_t sub_1B9F1E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SearchDataSource.State(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1B9F12358(a3 + v10, v9, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a3) = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v9, v7);
  sub_1B9F299EC(v7, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v9, type metadata accessor for SearchDataSource.State);
  return a3 & 1;
}

void sub_1B9F1E8AC()
{
  if (!qword_1EDC68620[0])
  {
    type metadata accessor for SearchDataSource.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC68620);
    }
  }
}

id sub_1B9F1E91C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  v3 = [v2 searchBar];
  v4 = [v3 searchTextField];

  sub_1BA4A7DF8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA506020);
  v5 = sub_1BA4A6758();

  [v4 setAccessibilityIdentifier_];

  v6 = [v2 searchBar];
  if (qword_1EDC5E818 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A6758();
  [v6 setPlaceholder_];

  v8 = [v2 searchBar];
  [v8 setDelegate_];

  [v2 setDelegate_];
  v9 = [v2 searchBar];
  v10 = [v9 searchTextField];

  [v10 setDelegate_];
  return v2;
}