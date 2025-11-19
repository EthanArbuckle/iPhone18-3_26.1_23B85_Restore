id sub_1DF4C4FE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CF8, &qword_1DF568BA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v40 - v17);
  v19 = *(v4 + 56);
  os_unfair_lock_lock(*(v19 + 16));
  sub_1DF4C559C(a1, a2, v10);
  v20 = v18;
  v21 = v41;
  v22 = v42;
  v40 = a1;
  os_unfair_lock_unlock(*(v19 + 16));
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DF47E5B4(v10, &qword_1ECE37CF8, &qword_1DF568BA0);
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED956088);
    v24 = a2;

    v25 = sub_1DF564794();
    v26 = sub_1DF564C44();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v40;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1DF47EF6C(v28, v24, v43);
      _os_log_impl(&dword_1DF47C000, v25, v26, "No ticket cache for featureID: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1E12D75F0](v30, -1, -1);
      MEMORY[0x1E12D75F0](v29, -1, -1);
    }
  }

  else
  {
    sub_1DF4C61B0(v10, v16);
    v31 = v20;
    sub_1DF4C61B0(v16, v20);
    if (sub_1DF4FBB18(0, 0, v21, v22, 0))
    {
      v32 = *v20;
      sub_1DF47E5B4(v20, &qword_1ECE37CE8, &unk_1DF568D10);
      return v32;
    }

    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v34 = sub_1DF5647B4();
    __swift_project_value_buffer(v34, qword_1ED956088);
    v35 = a2;

    v36 = sub_1DF564794();
    v37 = sub_1DF564C44();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1DF47EF6C(v40, v35, v43);
      _os_log_impl(&dword_1DF47C000, v36, v37, "Ticket CacheBox is not valid for feature: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1E12D75F0](v39, -1, -1);
      MEMORY[0x1E12D75F0](v38, -1, -1);
    }

    sub_1DF47E5B4(v31, &qword_1ECE37CE8, &unk_1DF568D10);
  }

  return 0;
}

uint64_t sub_1DF4C559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DF4C4D14(v3 + 16, v19);
  v8 = v20;
  if (!v20)
  {
    sub_1DF47E5B4(v19, &qword_1ECE37CE0, &qword_1DF568B40);
    goto LABEL_6;
  }

  v9 = v21;
  __swift_project_boxed_opaque_existential_0(v19, v20);
  v10 = (*(v9 + 32))(a1, a2, v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v12 >> 60 == 15)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }

  v13 = sub_1DF5642A4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DF564294();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4C6220(&qword_1ECE374C8);
  sub_1DF564284();
  if (v4)
  {

    return sub_1DF48C2F4(v10, v12);
  }

  else
  {
    sub_1DF48C2F4(v10, v12);

    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

void sub_1DF4C5794(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4C6220(&qword_1ECE37CF0);
  v5 = sub_1DF5642B4();
  v7 = v6;
  v8 = *(v2 + 56);
  os_unfair_lock_lock(*(v8 + 16));
  sub_1DF4C4D14(v2 + 16, v18);
  v9 = v19;
  if (v19)
  {
    v10 = v20;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v17[3] = MEMORY[0x1E6969080];
    v17[0] = v5;
    v17[1] = v7;
    v11 = *(v10 + 8);
    sub_1DF4AD474(v5, v7);
    v11(v17, a1, a2, v9, v10);
    sub_1DF47E5B4(v17, &qword_1ECE378F0, &qword_1DF5686F0);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_1DF47E5B4(v18, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  os_unfair_lock_unlock(*(v8 + 16));
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956088);

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1DF47EF6C(a1, a2, v18);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Updating cache for ticket: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  sub_1DF48C308(v5, v7);
}

void sub_1DF4C5BD4()
{
  v1 = v0;
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956088);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    sub_1DF4C4D14(v0 + 16, v15);
    v7 = v16;
    if (v16)
    {
      v8 = v17;
      __swift_project_boxed_opaque_existential_0(v15, v16);
      if ((*(v8 + 80))(0xD000000000000030, 0x80000001DF5709B0, v7, v8))
      {
        v9 = sub_1DF564884();
        v11 = v10;

        __swift_destroy_boxed_opaque_existential_0(v15);
        v12 = v9;
LABEL_10:
        v13 = sub_1DF47EF6C(v12, v11, &v18);

        *(v5 + 4) = v13;
        _os_log_impl(&dword_1DF47C000, v3, v4, "Resetting ticket cache. Current domain is: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x1E12D75F0](v6, -1, -1);
        MEMORY[0x1E12D75F0](v5, -1, -1);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_1DF47E5B4(v15, &qword_1ECE37CE0, &qword_1DF568B40);
    }

    v11 = 0xE500000000000000;
    v12 = 0x3E6C696E3CLL;
    goto LABEL_10;
  }

LABEL_11:

  v14 = *(v1 + 56);
  os_unfair_lock_lock(*(v14 + 16));
  sub_1DF4C5EE4(v1);
  os_unfair_lock_unlock(*(v14 + 16));
}

uint64_t TicketCache.deinit()
{
  sub_1DF47E5B4(v0 + 16, &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t TicketCache.__deallocating_deinit()
{
  sub_1DF47E5B4(v0 + 16, &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1DF4C5EE4(uint64_t a1)
{
  sub_1DF4C4D14(a1 + 16, v16);
  if (v17)
  {
    v2 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    sub_1DF49A758(MEMORY[0x1E69E7CC0]);
    (*(v2 + 72))();

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(v16, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956088);

  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    sub_1DF4C4D14(a1 + 16, v16);
    v8 = v17;
    if (v17)
    {
      v9 = v18;
      __swift_project_boxed_opaque_existential_0(v16, v17);
      if ((*(v9 + 80))(0xD000000000000030, 0x80000001DF5709B0, v8, v9))
      {
        v10 = sub_1DF564884();
        v12 = v11;

        __swift_destroy_boxed_opaque_existential_0(v16);
        v13 = v10;
LABEL_13:
        v14 = sub_1DF47EF6C(v13, v12, &v15);

        *(v6 + 4) = v14;
        _os_log_impl(&dword_1DF47C000, v4, v5, "Reset ticket cache. New domain is: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1E12D75F0](v7, -1, -1);
        MEMORY[0x1E12D75F0](v6, -1, -1);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      sub_1DF47E5B4(v16, &qword_1ECE37CE0, &qword_1DF568B40);
    }

    v12 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_1DF4C61B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4C6220(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37CE8, &unk_1DF568D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4C6274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4C631C, 0, 0);
}

uint64_t sub_1DF4C631C()
{
  v26 = v0;
  if (qword_1ED955FF0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v1 = v0[14];
    v2 = v0[15];
    v0[22] = off_1ED955FF8;
    v3 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v1, v2, 1, 1);
    v4 = v3;
    v0[23] = v3;
    if (v3 >> 62)
    {
      break;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E12D66D0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = &v7[OBJC_IVAR___CloudFeature_featureID];
      v11 = *&v7[OBJC_IVAR___CloudFeature_featureID];
      v12 = *v10 == 0x6C6C2E64756F6C63 && *(v10 + 1) == 0xE90000000000006DLL;
      if (v12 || (sub_1DF5650D4() & 1) != 0)
      {
        goto LABEL_22;
      }

      ++v6;
      if (v9 == v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v5 = sub_1DF564F04();
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_21:
  v8 = 0;
LABEL_22:
  v0[24] = v8;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v13 = v0[17];
  v14 = sub_1DF5647B4();
  v0[25] = __swift_project_value_buffer(v14, qword_1ED9556D8);

  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[16];
    v17 = v0[17];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1DF47EF6C(v18, v17, &v25);
    _os_log_impl(&dword_1DF47C000, v15, v16, "[%{public}s]starting network fetch for all features", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  v21 = swift_task_alloc();
  v0[26] = v21;
  *v21 = v0;
  v21[1] = sub_1DF4C6634;
  v23 = v0[18];
  v22 = v0[19];

  return sub_1DF4B8748(v23, v22);
}

uint64_t sub_1DF4C6634(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_1DF4C6E50;
  }

  else
  {
    v5 = sub_1DF4C6748;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1DF4C6748()
{
  v86 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  type metadata accessor for SystemProperties();
  inited = swift_initStackObject();
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = 0;
  inited[5] = 1;
  v83 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_telemetryProvider);
  v82 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_telemetryProvider + 8);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities), *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities + 24));
  v81 = *(*__swift_project_boxed_opaque_existential_0(v4, v4[3]) + 16);
  if (v1 >> 62)
  {
LABEL_63:
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    if (*(v0 + 216) < 0)
    {
      v75 = *(v0 + 216);
    }

    v6 = sub_1DF564F04();
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v84 = v0;
  v8 = v1 & 0xC000000000000001;
  v1 = *(v0 + 216) + 32;
  v0 = 256;
  while (1)
  {
    if (v6 == v7)
    {
      v0 = 0;
      goto LABEL_18;
    }

    if (v8)
    {
      v9 = MEMORY[0x1E12D66D0](v7, v84[27]);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_60;
      }

      v9 = *(v1 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v11 = &v9[OBJC_IVAR___CloudFeature_featureID];
    v12 = *&v9[OBJC_IVAR___CloudFeature_featureID];
    if (*v11 == 0x6C6C2E64756F6C63 && *(v11 + 1) == 0xE90000000000006DLL)
    {
      break;
    }

    v14 = sub_1DF5650D4();

    ++v7;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  v0 = 256;
LABEL_18:
  if (v6)
  {
    v15 = 0;
    while (1)
    {
      if (v8)
      {
        v16 = MEMORY[0x1E12D66D0](v15, v84[27]);
      }

      else
      {
        if (v15 >= *(v5 + 16))
        {
          goto LABEL_62;
        }

        v16 = *(v1 + 8 * v15);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_61;
      }

      v19 = &v16[OBJC_IVAR___CloudFeature_featureID];
      v20 = *&v16[OBJC_IVAR___CloudFeature_featureID];
      v21 = *v19 == 0x6C6C2E64756F6C63 && *(v19 + 1) == 0xE90000000000006DLL;
      if (v21 || (sub_1DF5650D4() & 1) != 0)
      {
        v22 = OBJC_IVAR___CloudFeature_canUse;
        v24 = v84;
        swift_beginAccess();
        LODWORD(v22) = v17[v22];

        if (v22)
        {
          v23 = 0x10000;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_36;
      }

      ++v15;
      if (v18 == v6)
      {
        v23 = 0;
        v24 = v84;
        goto LABEL_36;
      }
    }
  }

  v23 = 0;
  v24 = v84;
LABEL_36:
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;
    v27 = MobileGestalt_copy_regionCode_obj();

    v79 = v23;
    if (v27)
    {
      v28 = sub_1DF564944();
      v30 = v29;

      if (v28 == 18499 && v30 == 0xE200000000000000)
      {

        v31 = 0x1000000;
      }

      else
      {
        v32 = sub_1DF5650D4();

        v31 = 0x1000000;
        if ((v32 & 1) == 0)
        {
          v31 = 0;
        }
      }

      v76 = v31;
    }

    else
    {
      v76 = 0;
    }

    v80 = v0;
    v33 = v24[24];
    if (v33)
    {
      v34 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      if (*(v33 + v34))
      {
        v35 = 0x1000000000000;
      }

      else
      {
        v35 = 0;
      }

      v36 = 0x10000000000;
    }

    else
    {
      v36 = 0;
      v35 = 0;
    }

    v37 = v24[27];
    v38 = v24[22];
    v39 = v24[23];
    v40 = v24[19];
    v77 = v24[20];
    v41 = v24[17];
    v42 = v24[18];
    v78 = v24[25];
    v45 = v24 + 14;
    v43 = v24[14];
    v44 = v45[1];
    sub_1DF4B9704(v42, v40);
    sub_1DF4E2378(v80 | v81 | v79 | v76 | v36 | v35 | ((v44 != 0) << 32), v42, v40, v83);
    sub_1DF4B9718(v42, v40);
    sub_1DF4FC604(v37, v43, v44);
    sub_1DF4FB970();
    v46 = *(v77 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
    v47 = *(v77 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32);
    __swift_project_boxed_opaque_existential_0((v77 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore), v46);
    v48 = (*(v47 + 32))(v46, v47);
    sub_1DF4FEF1C(v48, v39, v37);

    v49 = sub_1DF564794();
    v50 = sub_1DF564C44();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = v84;
      v53 = v84[16];
      v52 = v84[17];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v85 = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_1DF47EF6C(v53, v52, &v85);
      _os_log_impl(&dword_1DF47C000, v49, v50, "[%{public}s]network fetch finished for all features", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1E12D75F0](v55, -1, -1);
      MEMORY[0x1E12D75F0](v54, -1, -1);
    }

    else
    {

      v51 = v84;
    }

    v56 = v51[27];
    v57 = v51[25];
    v59 = v51[20];
    v58 = v51[21];
    v60 = v51[17];
    v61 = sub_1DF564B44();
    (*(*(v61 - 8) + 56))(v58, 1, 1, v61);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v59;
    v62[5] = v56;
    v63 = v59;

    sub_1DF4BF520(0, 0, v58, &unk_1DF568CA0, v62);

    v64 = sub_1DF564794();
    v65 = sub_1DF564C44();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v51[24];
    if (v66)
    {
      v69 = v51[16];
      v68 = v51[17];
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85 = v71;
      *v70 = 136446210;
      *(v70 + 4) = sub_1DF47EF6C(v69, v68, &v85);
      _os_log_impl(&dword_1DF47C000, v64, v65, "[%{public}s] CFU code deprecated, skipping CFU checks", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x1E12D75F0](v71, -1, -1);
      MEMORY[0x1E12D75F0](v70, -1, -1);
    }

    v72 = v51[21];

    v73 = v51[1];
    v74 = v51[27];

    return v73(v74);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4C6E50()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];

  v4 = v0[1];
  v5 = v0[28];

  return v4();
}

uint64_t sub_1DF4C6EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF4C6F60(a5);
}

uint64_t sub_1DF4C6F60(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4C6FFC, 0, 0);
}

uint64_t sub_1DF4C6FFC()
{
  super_class = v0[16].super_class;
  if (super_class >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    v3 = 0;
    v4 = super_class & 0xC000000000000001;
    v5 = super_class & 0xFFFFFFFFFFFFFF8;
    v6 = v0[16].super_class + 32;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1E12D66D0](v3, v0[16].super_class);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v6 + 8 * v3);
      }

      super_class = v7;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = &v7[OBJC_IVAR___CloudFeature_featureID];
      v10 = *&v7[OBJC_IVAR___CloudFeature_featureID];
      v11 = *v9 == 0x6C6C2E64756F6C63 && *(v9 + 1) == 0xE90000000000006DLL;
      if (v11 || (sub_1DF5650D4() & 1) != 0)
      {
        goto LABEL_18;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:
  v12 = v0[17].super_class;
  v25 = v12;
  v13 = sub_1DF564494();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v24 = type metadata accessor for CloudFeature();
  v15 = objc_allocWithZone(v24);
  v16 = &v15[OBJC_IVAR___CloudFeature_limit];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v15[OBJC_IVAR___CloudFeature_accessToken];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR___CloudFeature_ttl;
  v14(&v15[OBJC_IVAR___CloudFeature_ttl], 1, 1, v13);
  v15[OBJC_IVAR___CloudFeature_canUse] = 0;
  v19 = &v15[OBJC_IVAR___CloudFeature_featureID];
  *v19 = 0x6C6C2E64756F6C63;
  v19[1] = 0xE90000000000006DLL;
  swift_beginAccess();
  *v16 = 0;
  v16[8] = 1;
  swift_beginAccess();
  *v17 = 0;
  v17[1] = 0;
  swift_beginAccess();
  sub_1DF4BEC40(v25, &v15[v18]);
  swift_endAccess();
  v0[15].receiver = v15;
  v0[15].super_class = v24;
  super_class = objc_msgSendSuper2(v0 + 15, sel_init);
  sub_1DF47E5B4(v25, &qword_1ECE37A10, &qword_1DF567C00);
LABEL_18:
  v0[18].receiver = super_class;
  v20 = objc_opt_self();
  v21 = CloudFeature.cloudFeatureObject.getter();
  v0[18].super_class = v21;
  v0[1].receiver = v0;
  v0[3].super_class = &v0[16];
  v0[1].super_class = sub_1DF4C73A8;
  v22 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
  v0[5].receiver = MEMORY[0x1E69E9820];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_1DF4E5758;
  v0[6].super_class = &block_descriptor_0;
  v0[7].receiver = v22;
  [v20 _currentAvailabilityWithFeatureObject_completionHandler_];

  return MEMORY[0x1EEE6DEC8](&v0[1]);
}

uint64_t sub_1DF4C73A8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF4C7488, 0, 0);
}

uint64_t sub_1DF4C7488()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[32];
  v0[38] = v3;

  v4 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_availabilityClient;
  v0[39] = OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_availabilityClient;
  v5 = *__swift_project_boxed_opaque_existential_0((v2 + v4), *(v2 + v4 + 24));
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_1DF4C7548;

  return sub_1DF4F31A0(v3);
}

uint64_t sub_1DF4C7548()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF4C7644, 0, 0);
}

uint64_t sub_1DF4C7644()
{
  v1 = v0[36];
  v2 = (v0[34] + v0[39]);
  v3 = __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v4 = OBJC_IVAR___CloudFeature_canUse;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *v3;
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_1DF4C7720;

  return sub_1DF4F4A28(v5);
}

uint64_t sub_1DF4C7720()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF4C781C, 0, 0);
}

uint64_t sub_1DF4C781C()
{
  v1 = v0[33];
  v2 = (v0[34] + v0[39]);
  v3 = __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v4 = sub_1DF5490B0(v1);
  v5 = sub_1DF4EA06C(v4);

  v6 = sub_1DF4E99A0(v5);
  v0[42] = v6;

  v7 = *v3;
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4C7910;

  return sub_1DF4F3A8C(v6);
}

uint64_t sub_1DF4C7910()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF4C7A28, 0, 0);
}

uint64_t sub_1DF4C7A28()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF4C7A98(int a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v70 = a4;
  v68 = a3;
  v69 = a5;
  v67 = a2;
  LODWORD(v77) = a1;
  v6 = sub_1DF564704();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v64 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - v17;
  v72 = v5;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v64 = v11;
  v19 = sub_1DF5647B4();
  v20 = __swift_project_value_buffer(v19, qword_1ED956020);
  v65 = v7[2];
  v65(v16, v18, v6);
  v66 = v20;
  v21 = sub_1DF564794();
  v22 = sub_1DF564C04();
  v23 = os_log_type_enabled(v21, v22);
  v76 = v18;
  v74 = v7;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v78 = v25;
    *v24 = 134349314;
    v26 = sub_1DF5646F4();
    v75 = v7[1];
    v75(v16, v6);
    *(v24 + 4) = v26;
    *(v24 + 12) = 2082;
    v27 = v77;
    sub_1DF48818C(v77);
    v28 = sub_1DF564E04();
    v30 = sub_1DF47EF6C(v28, v29, &v78);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_1DF47C000, v21, v22, "%{public}llu [Start] [Sync] %{public}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    v31 = v24;
    v18 = v76;
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  else
  {
    v75 = v7[1];
    v75(v16, v6);

    v27 = v77;
  }

  v77 = sub_1DF487DC4(v27, v18, v67, v68);
  v32 = v71;
  v33 = v70();
  v35 = v73;
  if (v32)
  {
    sub_1DF48AD44(v27, v77, 0, 0);
    v36 = v64;
    v65(v64, v18, v6);
    v37 = sub_1DF564794();
    v38 = sub_1DF564C04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v72 = v32;
      v40 = v39;
      v41 = swift_slowAlloc();
      v78 = v41;
      *v40 = 134349314;
      v42 = sub_1DF5646F4();
      v43 = v36;
      v44 = v42;
      v45 = v27;
      v46 = v75;
      v75(v43, v6);
      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      sub_1DF48818C(v45);
      v47 = sub_1DF564E04();
      v49 = sub_1DF47EF6C(v47, v48, &v78);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_1DF47C000, v37, v38, "%{public}llu [Finish] [Sync] FAILURE %{public}s", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1E12D75F0](v41, -1, -1);
      MEMORY[0x1E12D75F0](v40, -1, -1);
    }

    else
    {
      v46 = v75;
      v75(v36, v6);
    }

    swift_willThrow();

    return v46(v76, v6);
  }

  else
  {
    sub_1DF48AD44(v27, v77, v33, v34);

    v65(v35, v18, v6);
    v50 = v35;
    v51 = sub_1DF564794();
    v52 = v18;
    v53 = sub_1DF564C04();
    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v72 = 0;
      v55 = v54;
      v56 = swift_slowAlloc();
      v78 = v56;
      *v55 = 134349314;
      v57 = sub_1DF5646F4();
      v75(v50, v6);
      *(v55 + 4) = v57;
      *(v55 + 12) = 2082;
      sub_1DF48818C(v27);
      v58 = sub_1DF564E04();
      v60 = sub_1DF47EF6C(v58, v59, &v78);

      *(v55 + 14) = v60;
      _os_log_impl(&dword_1DF47C000, v51, v53, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1E12D75F0](v56, -1, -1);
      MEMORY[0x1E12D75F0](v55, -1, -1);

      return (v75)(v76, v6);
    }

    else
    {
      v62 = v50;
      v63 = v75;
      v75(v62, v6);

      return v63(v52, v6);
    }
  }
}

void sub_1DF4C8108(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 600);
  v5 = *v2;
  *(*v2 + 608) = a1;

  if (v1)
  {
  }

  else
  {
    v6 = *(v3 + 592);

    MEMORY[0x1EEE6DFA0](sub_1DF4C8248, 0, 0);
  }
}

void sub_1DF4C8248()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 552);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_0(&v4[*(v0 + 536)], *&v4[*(v0 + 536) + 24]);

  v6 = v4;

  v7 = swift_task_alloc();
  *(v0 + 616) = v7;
  *v7 = v0;
  v7[1] = sub_1DF4C8388;
  v8 = *(v0 + 608);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 320);
  v16 = *(v0 + 344);
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v13 = *(v0 + 272);

  JUMPOUT(0x1DF561DC0);
}

uint64_t sub_1DF4C8388(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 616);
  v7 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v5 = sub_1DF4C8CF0;
  }

  else
  {
    v5 = sub_1DF4C84A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4C84A0()
{
  v115 = v0;
  v1 = v0[78];
  v2 = v0[76];
  v101 = v0[71];
  v105 = v0[72];
  v110 = v0[70];
  v3 = v0[69];
  v4 = v0[67];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[51];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[37];

  __swift_project_boxed_opaque_existential_0((v8 + v4), *(v8 + v4 + 24));

  sub_1DF564724();
  sub_1DF5646E4();
  v101(v6, v5, v7);
  v11 = sub_1DF564794();
  v12 = sub_1DF564C04();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[73];
  v15 = v0[61];
  v16 = v0[51];
  v17 = v0[52];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v113 = v19;
    *v18 = 134349314;
    v20 = sub_1DF5646F4();
    v14(v15, v16);
    *(v18 + 4) = v20;
    *(v18 + 12) = 2082;
    v21 = sub_1DF564E04();
    v23 = sub_1DF47EF6C(v21, v22, &v113);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1DF47C000, v11, v12, "%{public}llu [Start] [Sync] %{public}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1E12D75F0](v19, -1, -1);
    MEMORY[0x1E12D75F0](v18, -1, -1);
  }

  else
  {
    v14(v0[61], v0[51]);
  }

  v102 = v0[78];
  v106 = v0[79];
  v24 = v0[69];
  v25 = v0[68];
  v27 = v0[38];
  v26 = v0[39];
  v29 = v0[36];
  v28 = v0[37];
  v31 = v0[34];
  v30 = v0[35];
  v32 = sub_1DF487DC4(9u, v0[62], 0, 0);
  v33 = sub_1DF4CB370(&v113, v102, v27, v26, v31, v30, v29, v28, v25, v24);
  v35 = v0[72];
  v36 = v0[71];
  v37 = v0[70];
  v38 = v0[62];
  v39 = v0[51];
  if (v106)
  {
    v40 = v0[59];
    sub_1DF48AD44(9u, v32, 0, 0);
    v36(v40, v38, v39);
    v41 = sub_1DF564794();
    v42 = sub_1DF564C04();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[73];
    v45 = v0[59];
    v47 = v0[51];
    v46 = v0[52];
    if (v43)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v113 = v49;
      *v48 = 134349314;
      v50 = sub_1DF5646F4();
      v44(v45, v47);
      *(v48 + 4) = v50;
      *(v48 + 12) = 2082;
      v51 = sub_1DF564E04();
      v53 = sub_1DF47EF6C(v51, v52, &v113);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_1DF47C000, v41, v42, "%{public}llu [Finish] [Sync] FAILURE %{public}s", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1E12D75F0](v49, -1, -1);
      MEMORY[0x1E12D75F0](v48, -1, -1);
    }

    else
    {
      v44(v45, v47);
    }

    v108 = v0[73];
    v70 = v0[62];
    v71 = v0[51];
    swift_willThrow();

    return v108(v70, v71);
  }

  else
  {
    v54 = v0[60];
    v107 = v113;
    v103 = v114;
    sub_1DF48AD44(9u, v32, v33, v34);

    v36(v54, v38, v39);
    v55 = sub_1DF564794();
    v56 = sub_1DF564C04();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[73];
    v59 = v0[69];
    v99 = v0[62];
    v60 = v0[60];
    v62 = v0[51];
    v61 = v0[52];
    v63 = v0[37];
    if (v57)
    {
      v97 = v0[39];
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v113 = v65;
      *v64 = 134349314;
      v66 = sub_1DF5646F4();
      v58(v60, v62);
      *(v64 + 4) = v66;
      *(v64 + 12) = 2082;
      v67 = sub_1DF564E04();
      v69 = sub_1DF47EF6C(v67, v68, &v113);

      *(v64 + 14) = v69;
      _os_log_impl(&dword_1DF47C000, v55, v56, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1E12D75F0](v65, -1, -1);
      MEMORY[0x1E12D75F0](v64, -1, -1);
    }

    else
    {
      v58(v60, v62);
    }

    v58(v99, v62);

    v73 = v0[78];
    v74 = v0[69];
    swift_bridgeObjectRelease_n();

    if (v103)
    {
      v76 = v0[41];
      v75 = v0[42];
      swift_getErrorValue();
      v77 = v0[23];
      v78 = v0[24];
      v79 = v0[25];
      v80 = v107;
      v81 = sub_1DF49A0C0(v78);
      v76(0, v81);
      sub_1DF4D8314(v107);
    }

    else
    {
      if (*(v107 + OBJC_IVAR___CloudFeature_featureID) == 0x6C6C2E64756F6C63 && *(v107 + OBJC_IVAR___CloudFeature_featureID + 8) == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
      {
        sub_1DF4CAE20(v107, v0[40]);
        sub_1DF4D8314(v107);
      }

      v82 = v0[41];
      v83 = v0[42];
      v84 = v107;
      v82(v107, 0);
      sub_1DF4D8314(v107);
    }

    sub_1DF4D8314(v107);
    v85 = v0[65];
    v87 = v0[63];
    v86 = v0[64];
    v89 = v0[61];
    v88 = v0[62];
    v91 = v0[59];
    v90 = v0[60];
    v92 = v0[57];
    v93 = v0[58];
    v94 = v0[56];
    v96 = v0[55];
    v98 = v0[54];
    v100 = v0[53];
    v104 = v0[50];
    v109 = v0[48];
    v111 = v0[47];
    v112 = v0[46];

    v95 = v0[1];

    return v95();
  }
}

uint64_t sub_1DF4C8CF0()
{
  v267 = v0;
  v1 = *(v0 + 608);

  v2 = *(v0 + 632);
  *(v0 + 224) = v2;
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 392);
    v7 = *(v0 + 400);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v8 = *(v0 + 552);
      v9 = *(v0 + 528);
      v10 = *(v0 + 312);
      v11 = *(v0 + 296);

      v12 = sub_1DF564794();
      v13 = sub_1DF564C44();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 304);
        v262 = *(v0 + 312);
        v15 = *(v0 + 288);
        v16 = *(v0 + 296);
        v18 = *(v0 + 272);
        v17 = *(v0 + 280);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v266 = v20;
        *v19 = 136446466;
        v21 = MEMORY[0x1E12D6280](v18, v17, v15, v16);
        v23 = sub_1DF47EF6C(v21, v22, &v266);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_1DF47EF6C(v14, v262, &v266);
        _os_log_impl(&dword_1DF47C000, v12, v13, "[%{public}s] Feature %{public}s received 204 network response", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v20, -1, -1);
        MEMORY[0x1E12D75F0](v19, -1, -1);
      }

      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = *(v0 + 360);
      v27 = *(v0 + 368);
      v28 = *(v0 + 352);
      v263 = *(v0 + 336);
      v230 = v24;
      v234 = *(v0 + 328);
      v228 = *(v0 + 304);
      v229 = *(v0 + 312);
      sub_1DF564484();
      sub_1DF5643D4();
      (*(v26 + 8))(v27, v28);
      v29 = *(v26 + 56);
      v29(v25, 0, 1, v28);
      sub_1DF4952D8(v25, v24);
      v30 = type metadata accessor for CloudFeature();
      v31 = objc_allocWithZone(v30);
      v32 = &v31[OBJC_IVAR___CloudFeature_limit];
      *v32 = 0;
      v32[8] = 1;
      v33 = &v31[OBJC_IVAR___CloudFeature_accessToken];
      *v33 = 0;
      v33[1] = 0;
      v34 = OBJC_IVAR___CloudFeature_ttl;
      v29(&v31[OBJC_IVAR___CloudFeature_ttl], 1, 1, v28);
      v31[OBJC_IVAR___CloudFeature_canUse] = 0;
      v35 = &v31[OBJC_IVAR___CloudFeature_featureID];
      *v35 = v228;
      v35[1] = v229;
      swift_beginAccess();
      *v32 = 0;
      v32[8] = 1;
      swift_beginAccess();
      *v33 = 0;
      v33[1] = 0;
      swift_beginAccess();

      sub_1DF4BEC40(v230, &v31[v34]);
      swift_endAccess();
      *(v0 + 208) = v31;
      *(v0 + 216) = v30;
      v36 = objc_msgSendSuper2((v0 + 208), sel_init);
      sub_1DF47E5B4(v230, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF47E5B4(v25, &qword_1ECE37A10, &qword_1DF567C00);
      v234(v36, 0);

      goto LABEL_50;
    }

    sub_1DF4D7CC4(v7);
  }

  sub_1DF4BECB0(0, &qword_1ED9560A8, 0x1E69E58C0);
  swift_getErrorValue();
  v37 = *(v0 + 16);
  v38 = *(v0 + 24);
  v39 = *(v0 + 32);
  v40 = v2;
  v41 = sub_1DF49A0C0(v38);
  v42 = sub_1DF4B3AA0(13);
  LOBYTE(v37) = sub_1DF564CD4();

  v264 = v2;
  if (v37)
  {
    v239 = *(v0 + 568);
    v246 = *(v0 + 576);
    v254 = *(v0 + 560);
    v43 = *(v0 + 552);
    v45 = *(v0 + 456);
    v44 = *(v0 + 464);
    v46 = v2;
    v235 = *(v0 + 408);
    v48 = *(v0 + 312);
    v47 = *(v0 + 320);
    v49 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_0(&v47[*(v0 + 536)], *&v47[*(v0 + 536) + 24]);

    v50 = v47;
    v51 = v46;
    sub_1DF564724();
    sub_1DF5646E4();
    v239(v45, v44, v235);
    v52 = sub_1DF564794();
    v53 = sub_1DF564C04();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 584);
    v56 = *(v0 + 456);
    v58 = *(v0 + 408);
    v57 = *(v0 + 416);
    if (v54)
    {
      v59 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v266 = v255;
      *v59 = 134349314;
      v60 = sub_1DF5646F4();
      v55(v56, v58);
      *(v59 + 4) = v60;
      *(v59 + 12) = 2082;
      v61 = sub_1DF564E04();
      v63 = sub_1DF47EF6C(v61, v62, &v266);

      *(v59 + 14) = v63;
      _os_log_impl(&dword_1DF47C000, v52, v53, "%{public}llu [Start] [Sync] %{public}s", v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v255);
      MEMORY[0x1E12D75F0](v255, -1, -1);
      MEMORY[0x1E12D75F0](v59, -1, -1);
    }

    else
    {
      v55(*(v0 + 456), *(v0 + 408));
    }

    v105 = *(v0 + 641);
    v106 = sub_1DF487DC4(9u, *(v0 + 464), 0, 0);
    v259 = v106;
    if (v105 != 1)
    {
      goto LABEL_22;
    }

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v107 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(*(v0 + 304), *(v0 + 312), *(v0 + 544), *(v0 + 552), 1, 1);
    if (v107)
    {
      v108 = v107;
      v109 = *(v0 + 528);
      v110 = *(v0 + 296);
      sub_1DF4CAE20(v107, *(v0 + 320));

      v111 = v108;
      v112 = sub_1DF564794();
      v113 = sub_1DF564C24();

      v248 = v108;
      if (os_log_type_enabled(v112, v113))
      {
        v236 = *(v0 + 288);
        v241 = *(v0 + 296);
        v114 = v108;
        v116 = *(v0 + 272);
        v115 = *(v0 + 280);
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v266 = v119;
        *v117 = 136446466;
        v120 = MEMORY[0x1E12D6280](v116, v115, v236, v241);
        v122 = sub_1DF47EF6C(v120, v121, &v266);

        *(v117 + 4) = v122;
        *(v117 + 12) = 2114;
        *(v117 + 14) = v111;
        *v118 = v114;
        v123 = v111;
        _os_log_impl(&dword_1DF47C000, v112, v113, "[%{public}s] FeatureRequest failed because we're missing auth header, falling back to cached feature %{public}@", v117, 0x16u);
        sub_1DF47E5B4(v118, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v118, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v119);
        MEMORY[0x1E12D75F0](v119, -1, -1);
        MEMORY[0x1E12D75F0](v117, -1, -1);
      }

      v242 = 0;
      v106 = v259;
    }

    else
    {
LABEL_22:
      swift_getErrorValue();
      v124 = *(v0 + 88);
      v125 = *(v0 + 104);
      v248 = sub_1DF49A0C0(*(v0 + 96));
      v242 = 1;
    }

    v126 = *(v0 + 576);
    v127 = *(v0 + 568);
    v128 = *(v0 + 560);
    v129 = *(v0 + 464);
    v130 = *(v0 + 448);
    v131 = *(v0 + 408);
    sub_1DF48AD44(9u, v106, 0, 0xE000000000000000);

    v127(v130, v129, v131);
    v132 = sub_1DF564794();
    v133 = sub_1DF564C04();
    v134 = os_log_type_enabled(v132, v133);
    v135 = *(v0 + 584);
    v251 = *(v0 + 464);
    v136 = *(v0 + 448);
    v138 = *(v0 + 408);
    v137 = *(v0 + 416);
    v139 = *(v0 + 320);
    v140 = *(v0 + 296);
    if (v134)
    {
      v141 = swift_slowAlloc();
      v231 = v139;
      v142 = swift_slowAlloc();
      v266 = v142;
      *v141 = 134349314;
      v143 = sub_1DF5646F4();
      v135(v136, v138);
      *(v141 + 4) = v143;
      *(v141 + 12) = 2082;
      v144 = sub_1DF564E04();
      v146 = sub_1DF47EF6C(v144, v145, &v266);

      *(v141 + 14) = v146;
      _os_log_impl(&dword_1DF47C000, v132, v133, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v141, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v142);
      MEMORY[0x1E12D75F0](v142, -1, -1);
      MEMORY[0x1E12D75F0](v141, -1, -1);

      v135(v251, v138);
      v147 = v264;
    }

    else
    {
      v135(*(v0 + 448), *(v0 + 408));

      v135(v251, v138);
      v147 = v264;
    }

    v191 = *(v0 + 552);
    v192 = *(v0 + 312);

    swift_bridgeObjectRelease_n();
    v193 = v248;
    v194 = *(v0 + 336);
    if (v242)
    {
      v195 = 0;
      v196 = v248;
    }

    else
    {
      v195 = v248;
      v196 = 0;
    }

    (*(v0 + 328))(v195, v196);
    v215 = v147;
  }

  else
  {
    v64 = *(v0 + 528);
    v65 = *(v0 + 296);

    v66 = v2;
    v67 = sub_1DF564794();
    v68 = sub_1DF564C24();

    if (os_log_type_enabled(v67, v68))
    {
      v70 = *(v0 + 288);
      v69 = *(v0 + 296);
      v71 = *(v0 + 272);
      v72 = *(v0 + 280);
      v73 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v266 = v256;
      *v73 = 136446466;
      v74 = MEMORY[0x1E12D6280](v71, v72, v70, v69);
      v76 = sub_1DF47EF6C(v74, v75, &v266);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2082;
      swift_getErrorValue();
      v78 = *(v0 + 64);
      v77 = *(v0 + 72);
      v79 = *(v0 + 80);
      v80 = sub_1DF5651B4();
      v82 = sub_1DF47EF6C(v80, v81, &v266);

      *(v73 + 14) = v82;
      _os_log_impl(&dword_1DF47C000, v67, v68, "[%{public}s] FeatureRequest failed with error: %{public}s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v256, -1, -1);
      MEMORY[0x1E12D75F0](v73, -1, -1);
    }

    v240 = *(v0 + 568);
    v247 = *(v0 + 576);
    v257 = *(v0 + 560);
    v83 = *(v0 + 552);
    v85 = *(v0 + 432);
    v84 = *(v0 + 440);
    v86 = *(v0 + 408);
    v88 = *(v0 + 312);
    v87 = *(v0 + 320);
    v89 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_0(&v87[*(v0 + 536)], *&v87[*(v0 + 536) + 24]);

    v90 = v87;
    v91 = v264;
    sub_1DF564724();
    sub_1DF5646E4();
    v240(v85, v84, v86);
    v92 = sub_1DF564794();
    v93 = sub_1DF564C04();
    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v0 + 584);
    v96 = *(v0 + 432);
    v98 = *(v0 + 408);
    v97 = *(v0 + 416);
    if (v94)
    {
      v258 = v93;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v266 = v100;
      *v99 = 134349314;
      v101 = sub_1DF5646F4();
      v95(v96, v98);
      *(v99 + 4) = v101;
      *(v99 + 12) = 2082;
      v102 = sub_1DF564E04();
      v104 = sub_1DF47EF6C(v102, v103, &v266);

      *(v99 + 14) = v104;
      _os_log_impl(&dword_1DF47C000, v92, v258, "%{public}llu [Start] [Sync] %{public}s", v99, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x1E12D75F0](v100, -1, -1);
      MEMORY[0x1E12D75F0](v99, -1, -1);
    }

    else
    {
      v95(*(v0 + 432), *(v0 + 408));
    }

    v148 = *(v0 + 641);
    v149 = *(v0 + 640);
    v260 = sub_1DF487DC4(9u, *(v0 + 440), 0, 0);
    if ((v149 & 1) != 0 || !v148)
    {
      goto LABEL_34;
    }

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v150 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(*(v0 + 304), *(v0 + 312), *(v0 + 544), *(v0 + 552), 1, 1);
    if (v150)
    {
      v151 = v150;
      v152 = *(v0 + 528);
      v153 = *(v0 + 296);
      sub_1DF4CAE20(v150, *(v0 + 320));

      v154 = v151;
      v155 = sub_1DF564794();
      v156 = sub_1DF564C44();

      v249 = v151;
      if (os_log_type_enabled(v155, v156))
      {
        v237 = *(v0 + 288);
        v243 = *(v0 + 296);
        v157 = v151;
        v159 = *(v0 + 272);
        v158 = *(v0 + 280);
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v266 = v162;
        *v160 = 136446466;
        v163 = MEMORY[0x1E12D6280](v159, v158, v237, v243);
        v165 = sub_1DF47EF6C(v163, v164, &v266);

        *(v160 + 4) = v165;
        *(v160 + 12) = 2114;
        *(v160 + 14) = v154;
        *v161 = v157;
        v166 = v154;
        _os_log_impl(&dword_1DF47C000, v155, v156, "[%{public}s] Falling back to cached feature: %{public}@", v160, 0x16u);
        sub_1DF47E5B4(v161, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v161, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v162);
        MEMORY[0x1E12D75F0](v162, -1, -1);
        MEMORY[0x1E12D75F0](v160, -1, -1);
      }

      v244 = 0;
    }

    else
    {
LABEL_34:
      swift_getErrorValue();
      v167 = *(v0 + 40);
      v168 = *(v0 + 56);
      v249 = sub_1DF49A0C0(*(v0 + 48));
      v244 = 1;
    }

    v169 = *(v0 + 576);
    v170 = *(v0 + 568);
    v171 = *(v0 + 560);
    v172 = *(v0 + 440);
    v173 = *(v0 + 424);
    v174 = *(v0 + 408);
    sub_1DF48AD44(9u, v260, 0, 0xE000000000000000);

    v170(v173, v172, v174);
    v175 = sub_1DF564794();
    v176 = sub_1DF564C04();
    v177 = os_log_type_enabled(v175, v176);
    v178 = *(v0 + 584);
    v252 = *(v0 + 440);
    v180 = *(v0 + 416);
    v179 = *(v0 + 424);
    v181 = *(v0 + 408);
    v182 = *(v0 + 320);
    v183 = *(v0 + 296);
    if (v177)
    {
      v184 = swift_slowAlloc();
      v232 = v182;
      v185 = swift_slowAlloc();
      v266 = v185;
      *v184 = 134349314;
      v186 = sub_1DF5646F4();
      v178(v179, v181);
      *(v184 + 4) = v186;
      *(v184 + 12) = 2082;
      v187 = sub_1DF564E04();
      v189 = sub_1DF47EF6C(v187, v188, &v266);

      *(v184 + 14) = v189;
      _os_log_impl(&dword_1DF47C000, v175, v176, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v184, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v185);
      MEMORY[0x1E12D75F0](v185, -1, -1);
      MEMORY[0x1E12D75F0](v184, -1, -1);

      v178(v252, v181);
      v190 = v264;
    }

    else
    {
      v178(*(v0 + 424), *(v0 + 408));

      v178(v252, v181);
      v190 = v264;
    }

    v197 = *(v0 + 552);
    v198 = *(v0 + 528);
    v199 = *(v0 + 312);
    v200 = *(v0 + 296);

    swift_bridgeObjectRelease_n();

    v201 = sub_1DF564794();
    v202 = sub_1DF564C14();

    if (os_log_type_enabled(v201, v202))
    {
      v204 = *(v0 + 288);
      v203 = *(v0 + 296);
      v206 = *(v0 + 272);
      v205 = *(v0 + 280);
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v266 = v208;
      *v207 = 136446210;
      v209 = MEMORY[0x1E12D6280](v206, v205, v204, v203);
      v211 = sub_1DF47EF6C(v209, v210, &v266);

      *(v207 + 4) = v211;
      _os_log_impl(&dword_1DF47C000, v201, v202, "[%{public}s] FeatureRequest returning result via completion handling error.", v207, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v208);
      v190 = v264;
      MEMORY[0x1E12D75F0](v208, -1, -1);
      MEMORY[0x1E12D75F0](v207, -1, -1);
    }

    v193 = v249;
    v212 = *(v0 + 336);
    if (v244)
    {
      v213 = 0;
      v214 = v249;
    }

    else
    {
      v213 = v249;
      v214 = 0;
    }

    (*(v0 + 328))(v213, v214);
    v215 = v190;
  }

LABEL_50:
  v216 = *(v0 + 520);
  v218 = *(v0 + 504);
  v217 = *(v0 + 512);
  v220 = *(v0 + 488);
  v219 = *(v0 + 496);
  v222 = *(v0 + 472);
  v221 = *(v0 + 480);
  v223 = *(v0 + 456);
  v224 = *(v0 + 464);
  v225 = *(v0 + 448);
  v233 = *(v0 + 440);
  v238 = *(v0 + 432);
  v245 = *(v0 + 424);
  v250 = *(v0 + 400);
  v253 = *(v0 + 384);
  v261 = *(v0 + 376);
  v265 = *(v0 + 368);

  v226 = *(v0 + 8);

  return v226();
}

uint64_t sub_1DF4CA134()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CA160, v1, 0);
}

uint64_t sub_1DF4CA160()
{
  v1 = *(v0 + 24);
  v2 = sub_1DF4929F8(0x75746165466C6C61, 0xEB00000000736572, 300);
  v3 = *(v0 + 8);

  return v3(v2, 0, 0);
}

uint64_t sub_1DF4CA1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CA228, 0, 0);
}

uint64_t sub_1DF4CA228()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v5 + 16) = v4;
  v6 = *(v0 + 40);
  *(v5 + 40) = *(v0 + 56);
  *(v5 + 24) = v6;
  *(v5 + 56) = v3;
  *(v5 + 64) = v1;
  *(v5 + 72) = v2;
  *(v5 + 80) = *(v0 + 96);
  v7 = v4;

  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1DF4CA390;
  v9 = *(v0 + 24);

  return sub_1DF531410(0x75746165466C6C61, 0xEB00000000736572, &unk_1DF568DB8, v5);
}

uint64_t sub_1DF4CA390(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1DF4CA4EC;
  }

  else
  {
    v8 = *(v4 + 112);

    *(v4 + 136) = a1;
    v7 = sub_1DF4CA4C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4CA4EC()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1DF4CA550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CA60C, 0, 0);
}

uint64_t sub_1DF4CA60C()
{
  v1 = v0[11];
  v2 = MEMORY[0x1E12D6280](v0[6], v0[7], v0[8], v0[9]);
  v4 = v3;
  v0[14] = v3;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1DF4CA6D8;
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  return sub_1DF4C6274(v8, v7, v2, v4, v6, v1);
}

uint64_t sub_1DF4CA6D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1DF4CA938;
  }

  else
  {
    v8 = *(v4 + 112);

    *(v4 + 136) = a1;
    v7 = sub_1DF4CA808;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4CA808()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = sub_1DF564B44();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v3;

  sub_1DF4BF520(0, 0, v2, &unk_1DF568DC8, v8);

  *v6 = v1;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DF4CA938()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1DF4CA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[47] = a5;
  v6[48] = a6;
  v6[46] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CA9C8, 0, 0);
}

uint64_t sub_1DF4CA9C8()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9556D8);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Determining if device has feature access.", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v5 = *(v0 + 368);

  if (sub_1DF4BF050(v5))
  {
    v6 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
    *(v0 + 392) = v6;
    if (v6)
    {
      sub_1DF4D516C(*(v0 + 376), *(v0 + 384));
      v7 = sub_1DF481988();
      *(v0 + 152) = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
      *(v0 + 160) = &off_1F5A86EE8;
      *(v0 + 128) = v7;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0;
      v8 = sub_1DF531308();
      v10 = v9;
      type metadata accessor for Config();
      inited = swift_initStackObject();
      *(v0 + 400) = inited;
      *(inited + 32) = 0u;
      *(inited + 80) = 0u;
      *(inited + 96) = 0u;
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 16) = v8;
      *(inited + 24) = v10;
      if (*(v0 + 248))
      {
        sub_1DF47E390((v0 + 224), v0 + 264);
        sub_1DF47E390((v0 + 264), v0 + 304);
        swift_beginAccess();
        sub_1DF4D78FC(v0 + 304, inited + 32);
        swift_endAccess();
      }

      else
      {
        sub_1DF47E5B4(v0 + 224, &qword_1ECE38370, &qword_1DF569E50);
      }

      v17 = type metadata accessor for SystemProperties();
      v18 = swift_initStaticObject();
      *(v0 + 208) = v17;
      *(v0 + 216) = &off_1F5A88E50;
      *(v0 + 184) = v18;
      *(v0 + 168) = inited;
      *(v0 + 176) = &off_1F5A86FD0;
      v19 = swift_task_alloc();
      *(v0 + 408) = v19;
      *v19 = v0;
      v19[1] = sub_1DF4CAD08;

      return (sub_1DF4D53FC)(v0 + 128);
    }
  }

  else
  {
    v12 = sub_1DF564794();
    v13 = sub_1DF564C14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Device does not have access. Do not post the CFU.", v14, 2u);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DF4CAD08()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 392);
  v6 = *v0;

  sub_1DF4D78A8(v1 + 128);
  v4 = *(v6 + 8);

  return v4();
}

void sub_1DF4CAE20(void *a1, uint64_t a2)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED9556D8);
  v5 = a1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1DF47EF6C(*&v5[OBJC_IVAR___CloudFeature_featureID], *&v5[OBJC_IVAR___CloudFeature_featureID + 8], &v17);
    _os_log_impl(&dword_1DF47C000, v6, v7, "Validating feature %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v11 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable);
  v10 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable + 8);

  sub_1DF4EC964(v5, v11, v10);
  v12 = v5;
  oslog = sub_1DF564794();
  v13 = sub_1DF564C04();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1DF47EF6C(*&v12[OBJC_IVAR___CloudFeature_featureID], *&v12[OBJC_IVAR___CloudFeature_featureID + 8], &v17);
    _os_log_impl(&dword_1DF47C000, oslog, v13, "Feature appears valid: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1DF4CB370(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(Class, uint64_t), uint64_t a9, uint64_t a10)
{
  v94 = a8;
  v85 = a7;
  v84 = a6;
  v83 = a5;
  v98 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v83 - v19;
  v21 = sub_1DF564494();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v91 = (&v83 - v25);
  v92 = a1;
  v93 = v10;
  v89 = v18;
  v90 = v24;
  v87 = v26;
  v88 = v20;
  v86 = v27;
  if (!(a2 >> 62))
  {
    v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v49 = sub_1DF5647B4();
    __swift_project_value_buffer(v49, qword_1ED9556D8);
    v50 = v94;

    v51 = sub_1DF564794();
    v52 = sub_1DF564C44();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v97[0] = v54;
      *v53 = 136446466;
      v55 = MEMORY[0x1E12D6280](v83, v84, v85, v50);
      v57 = sub_1DF47EF6C(v55, v56, v97);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2082;
      *(v53 + 14) = sub_1DF47EF6C(v98, a4, v97);
      _os_log_impl(&dword_1DF47C000, v51, v52, "[%{public}s] No value returned for feature %{public}s assuming unavailable and stubbing in cache to prevent excessive requests.", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v54, -1, -1);
      MEMORY[0x1E12D75F0](v53, -1, -1);
    }

    v59 = v90;
    v58 = v91;
    v60 = v86;
    v61 = v87;
    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v62 = off_1ED955FF8;
    sub_1DF564484();
    sub_1DF5643D4();
    v63 = v61[1];
    v63(v60, v59);
    if (sub_1DF564A24())
    {
      v64 = v62[8];
      sub_1DF5154B4();
    }

    else
    {
      v85 = a10;
      v84 = a9;
      sub_1DF564484();
      v65 = v88;
      sub_1DF5643D4();
      v63(v60, v59);
      v66 = v61[7];
      v66(v65, 0, 1, v59);
      sub_1DF4952D8(v65, v89);
      v86 = type metadata accessor for CloudFeature();
      v67 = objc_allocWithZone(v86);
      v94 = v63;
      v68 = v67;
      v87 = v62;
      v69 = v59;
      v70 = &v67[OBJC_IVAR___CloudFeature_limit];
      *v70 = 0;
      v70[8] = 1;
      v71 = &v67[OBJC_IVAR___CloudFeature_accessToken];
      *v71 = 0;
      *(v71 + 1) = 0;
      v72 = OBJC_IVAR___CloudFeature_ttl;
      v66(&v67[OBJC_IVAR___CloudFeature_ttl], 1, 1, v69);
      v68[OBJC_IVAR___CloudFeature_canUse] = 0;
      v73 = &v68[OBJC_IVAR___CloudFeature_featureID];
      *v73 = v98;
      v73[1] = a4;
      swift_beginAccess();
      *v70 = 0;
      v70[8] = 1;
      v59 = v69;
      v58 = v91;
      swift_beginAccess();
      *v71 = 0;
      *(v71 + 1) = 0;
      swift_beginAccess();

      v74 = &v68[v72];
      v75 = v89;
      sub_1DF4BEC40(v89, v74);
      swift_endAccess();
      v95.receiver = v68;
      v95.super_class = v86;
      v76 = objc_msgSendSuper2(&v95, sel_init);
      sub_1DF47E5B4(v75, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF47E5B4(v88, &qword_1ECE37A10, &qword_1DF567C00);
      v77 = sub_1DF5642D4();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();
      v80 = sub_1DF5642C4();
      sub_1DF4FDDA0(v76, v80, v84, v85);

      v63 = v94;
    }

    v63(v58, v59);
    v81 = sub_1DF4B3AA0(4);
    v82 = v92;
    *v92 = v81;
    *(v82 + 8) = 1;
    return 0xD000000000000010;
  }

LABEL_24:
  v28 = sub_1DF564F04();
  if (!v28)
  {
    goto LABEL_25;
  }

LABEL_3:
  v29 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1E12D66D0](v29, a2);
    }

    else
    {
      if (v29 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v30 = *(a2 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v33 = &v30[OBJC_IVAR___CloudFeature_featureID];
    v34 = *&v30[OBJC_IVAR___CloudFeature_featureID];
    v35 = *v33 == v98 && *(v33 + 1) == a4;
    if (v35 || (sub_1DF5650D4() & 1) != 0)
    {
      break;
    }

    ++v29;
    if (v32 == v28)
    {
      goto LABEL_25;
    }
  }

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v36 = sub_1DF5647B4();
  __swift_project_value_buffer(v36, qword_1ED9556D8);
  v37 = v31;
  v38 = v94;

  v39 = sub_1DF564794();
  v40 = sub_1DF564C44();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v96[0] = v42;
    *v41 = 136446722;
    v43 = MEMORY[0x1E12D6280](v83, v84, v85, v38);
    v45 = sub_1DF47EF6C(v43, v44, v96);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_1DF47EF6C(v98, a4, v96);
    *(v41 + 22) = 1026;
    v46 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    LODWORD(v46) = v37[v46];

    *(v41 + 24) = v46;
    _os_log_impl(&dword_1DF47C000, v39, v40, "[%{public}s] Feature %{public}s fetched. Can use: %{BOOL,public}d", v41, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v42, -1, -1);
    MEMORY[0x1E12D75F0](v41, -1, -1);
  }

  else
  {
  }

  v47 = v92;
  result = 0;
  *v92 = v37;
  *(v47 + 8) = 0;
  return result;
}

uint64_t sub_1DF4CBC30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v62 - v4;
  v6 = sub_1DF5644C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5644B4();
  v11 = sub_1DF5644A4();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v15 = sub_1DF488298(8, v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED955E10);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  v25 = os_log_type_enabled(v23, v24);
  v64 = v17;
  v65 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v67 = v27;
    *v26 = 136315138;

    v28 = MEMORY[0x1E12D6280](v15, v17, v19, v21);
    v30 = v29;

    v31 = sub_1DF47EF6C(v28, v30, &v67);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1DF47C000, v23, v24, "[%s]Cache clear message received by featureaccessd!", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1E12D75F0](v27, -1, -1);
    MEMORY[0x1E12D75F0](v26, -1, -1);
  }

  v32 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24];
  v33 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore], v32);
  v34 = (*(v33 + 32))(v32, v33);
  v63 = v19;
  if (v34 && (v35 = v34, v36 = [v34 aa_altDSID], v35, v36))
  {
    v37 = sub_1DF564944();
    v39 = v38;

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    sub_1DF4FC728(v37, v39);
  }

  else
  {
    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    sub_1DF4FC728(0, 0);
  }

  v40 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v41 = sub_1DF564914();
  v42 = [v40 initWithSuiteName_];

  v43 = sub_1DF4FB5AC(v42);
  v44 = sub_1DF4CC244();
  sub_1DF4FB6B0(v44, v45);

  v46 = objc_opt_self();
  v47 = [v46 sharedInstance];
  v48 = [v47 controller];

  v49 = sub_1DF564B44();
  v50 = *(*(v49 - 8) + 56);
  v50(v5, 1, 1, v49);
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v48;
  sub_1DF515B98(0, 0, v5, &unk_1DF568C60, v51);

  v52 = [v46 sharedInstance];
  v53 = [v52 controller];

  v50(v5, 1, 1, v49);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v53;
  sub_1DF4BF520(0, 0, v5, &unk_1DF568C68, v54);

  v50(v5, 1, 1, v49);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v57 = v64;
  v56 = v65;
  v55[4] = v1;
  v55[5] = v56;
  v58 = v63;
  v55[6] = v57;
  v55[7] = v58;
  v59 = ObjectType;
  v55[8] = v21;
  v55[9] = v59;
  v60 = v1;
  sub_1DF4BF520(0, 0, v5, &unk_1DF568C78, v55);
}

id sub_1DF4CC244()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2 && (v3 = [v2 aa_altDSID], v2, v3))
    {
      v4 = sub_1DF564944();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4CC300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CC32C, 0, 0);
}

uint64_t sub_1DF4CC32C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CC358, v1, 0);
}

uint64_t sub_1DF4CC358()
{
  v1 = *(v0 + 88);
  *(v0 + 96) = sub_1DF4929F8(0x75746165466C6C61, 0xEB00000000736572, 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CC3E4, 0, 0);
}

uint64_t sub_1DF4CC3E4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v9 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = swift_allocObject();
  *(v0 + 104) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1DF4CC51C;
  v7 = *(v0 + 96);

  return sub_1DF531410(0x75746165466C6C61, 0xEB00000000736572, &unk_1DF568C88, v4);
}

uint64_t sub_1DF4CC51C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DF4CC6C0;
  }

  else
  {

    v4 = sub_1DF4CC660;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4CC660()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF4CC6C0()
{
  v28 = v0;
  v1 = v0[12];

  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = v0[10];
  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED955E10);

  v5 = v2;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v10 = v0[9];
    v9 = v0[10];
    v12 = v0[7];
    v11 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315394;
    v15 = MEMORY[0x1E12D6280](v12, v11, v10, v9);
    v17 = sub_1DF47EF6C(v15, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v19 = v0[2];
    v18 = v0[3];
    v20 = v0[4];
    v21 = sub_1DF5651B4();
    v23 = sub_1DF47EF6C(v21, v22, &v27);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1DF47C000, v6, v7, "[%s] Feature fetch after cache clear failed. Notifying clients. error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v14, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);
  }

  v24 = v0[15];
  sub_1DF4FB970();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1DF4CC8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CC914, 0, 0);
}

uint64_t sub_1DF4CC914()
{
  v1 = (v0[3] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = sub_1DF564944();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[8] = v9;
  v10 = MEMORY[0x1E12D6280](v0[4], v0[5], v0[6], v0[7]);
  v12 = v11;
  v0[9] = v11;
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1DF4CCA6C;
  v14 = v0[3];

  return sub_1DF4C6274(v7, v9, v10, v12, 0, 1);
}

uint64_t sub_1DF4CCA6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1DF4CCBC8;
  }

  else
  {
    v9 = v4[8];
    v8 = v4[9];

    v4[12] = a1;

    v7 = sub_1DF4CCBA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF4CCBC8()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1DF4CCC80()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 176), 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF4CCCF8()
{
  v1 = sub_1DF5026FC(v0[3], v0[4], v0[5], v0[6], v0[8]);

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956260);
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_1DF47C000, v3, v4, "Returning eligibility %{BOOL,public}d from server", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = v0[2];

  *v6 = v1 & 1;
  v7 = v0[1];

  return v7();
}

void sub_1DF4CCE4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956260);

  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = a8;
    v20 = swift_slowAlloc();
    v26 = a7;
    v21 = a5;
    v22 = a6;
    v23 = swift_slowAlloc();
    v30 = v23;
    *v20 = 136315394;
    *(v20 + 4) = sub_1DF47EF6C(a1, a2, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1DF47EF6C(a3, a4, &v30);
    _os_log_impl(&dword_1DF47C000, v18, v19, "Requesting geoclassification for featureID %s and bundleID %s", v20, 0x16u);
    swift_arrayDestroy();
    v24 = v23;
    a6 = v22;
    a5 = v21;
    a7 = v26;
    MEMORY[0x1E12D75F0](v24, -1, -1);
    v25 = v20;
    a8 = v27;
    MEMORY[0x1E12D75F0](v25, -1, -1);
  }

  v28 = sub_1DF481988();
  sub_1DF4D4BCC(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, v29);
}

uint64_t sub_1DF4CD190(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 80) = v14;
  *(v8 + 96) = v15;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 192) = a4;
  v9 = sub_1DF564494();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CD26C, 0, 0);
}

uint64_t sub_1DF4CD26C()
{
  if ((*(v0 + 192) & 1) != 0 || (v1 = sub_1DF4FB200(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(*(v0 + 48) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_geoCache))) == 0)
  {
    v26 = *(*(v0 + 48) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
    *(v0 + 144) = v26;

    return MEMORY[0x1EEE6DFA0](sub_1DF4CD568, v26, 0);
  }

  else
  {
    v2 = v1;
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    sub_1DF564484();
    v6 = sub_1DF5643F4();
    (*(v4 + 8))(v3, v5);
    if (v6)
    {
      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v10 = sub_1DF564914();
      v11 = [v9 initWithSuiteName_];

      v12 = sub_1DF4FB5AC(v11);
      sub_1DF4FB6B0(v8, v7);
    }

    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956260);
    v14 = v2;

    v15 = sub_1DF564794();
    v16 = sub_1DF564C44();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v2;
      v19 = v14;
      _os_log_impl(&dword_1DF47C000, v15, v16, "serving geoclassification info from cache: %@", v17, 0xCu);
      sub_1DF47E5B4(v18, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v18, -1, -1);
      MEMORY[0x1E12D75F0](v17, -1, -1);
    }

    v21 = *(v0 + 104);
    v20 = *(v0 + 112);

    v22 = v14;
    v21(v2, 0);

    v23 = *(v0 + 136);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1DF4CD568()
{
  v1 = *(v0 + 144);
  *(v0 + 152) = sub_1DF4929F8(7300455, 0xE300000000000000, 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CD5E4, 0, 0);
}

uint64_t sub_1DF4CD5E4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = swift_allocObject();
  v0[20] = v8;
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = v5;
  v8[7] = v4;
  v8[8] = v3;

  v9 = v7;

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1DF4CD720;
  v11 = v0[19];
  v13 = v0[7];
  v12 = v0[8];

  return (sub_1DF532448)(v13, v12, &unk_1DF568D58, v8);
}

uint64_t sub_1DF4CD720(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v8 = sub_1DF4CD910;
  }

  else
  {
    *(v4 + 184) = a1;
    v8 = sub_1DF4CD86C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DF4CD86C()
{
  v1 = v0[23];
  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v1;
  v4(v1, 0);

  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF4CD910()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];

  swift_getErrorValue();
  v5 = v0[2];
  v6 = v0[4];
  v7 = sub_1DF49A0C0(v0[3]);
  v4(0, v7);

  v8 = v0[17];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DF4CD9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[22] = a1;
  v8[23] = a2;
  v11 = swift_task_alloc();
  v8[30] = v11;
  *v11 = v8;
  v11[1] = sub_1DF4CDA9C;

  return sub_1DF4B9F84((v8 + 8), a2, a3);
}

uint64_t sub_1DF4CDA9C()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  *(v3 + 248) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4CDBD0, 0, 0);
  }
}

uint64_t sub_1DF4CDBD0()
{
  v1 = *(*(v0 + 200) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_geoCache);
  v2 = *(v0 + 96);
  *(v0 + 168) = v2;
  v39 = v1;
  v32 = (v0 + 120);
  v33 = (v0 + 64);
  v30 = (v0 + 136);
  v31 = (v0 + 104);
  v36 = v2 + 64;
  v34 = v0 + 168;
  v29 = (v0 + 152);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v35 = (63 - v4) >> 6;
  v38 = v2;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(v38 + 48) + 16 * v9);
    v40 = *v10;
    v41 = v10[1];
    v11 = *(*(v38 + 56) + 8 * v9);
    if (v11 >> 62)
    {
      result = sub_1DF564F04();
      v12 = result;
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v12)
    {
      if (v12 < 1)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      v37 = v5;

      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E12D66D0](v13, v11);
        }

        else
        {
          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = *(v0 + 184);
        v17 = *(v0 + 192);
        ++v13;
        v18 = *&v14[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey];
        v19 = *&v14[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8];
        *(v0 + 16) = v16;
        *(v0 + 24) = v17;
        *(v0 + 32) = v40;
        *(v0 + 40) = v41;
        *(v0 + 48) = v18;
        *(v0 + 56) = v19;

        sub_1DF547814((v0 + 16), v39, v15, v16, v17);
      }

      while (v12 != v13);

      v5 = v37;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v8 >= v35)
    {
      break;
    }

    v5 = *(v36 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  v20 = *(v0 + 248);
  v22 = *(v0 + 224);
  v21 = *(v0 + 232);
  v24 = *(v0 + 208);
  v23 = *(v0 + 216);

  v25 = sub_1DF502B70(v24, v23, v22, v21);
  if (v20)
  {
    *v31 = *v33;
    sub_1DF4BF4C8(v31);
    *v32 = *(v0 + 80);
    sub_1DF4BF4C8(v32);
    sub_1DF47E5B4(v34, &qword_1ECE37D60, &qword_1DF568D60);
  }

  else
  {
    v27 = v25;
    v28 = *(v0 + 176);
    *v30 = *v33;
    sub_1DF4BF4C8(v30);
    *v29 = *(v0 + 80);
    sub_1DF4BF4C8(v29);
    sub_1DF47E5B4(v34, &qword_1ECE37D60, &qword_1DF568D60);
    *v28 = v27;
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1DF4CDF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CDF5C, 0, 0);
}

uint64_t sub_1DF4CDF5C()
{
  v35 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v33);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting fetch for ticket %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = (v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v14 = v13;
  v0[20] = v12;
  v0[21] = v13;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v15 = v0[14];
  v16 = v0[15];
  v0[22] = qword_1ED954C20;
  v17 = sub_1DF4C4FE0(v15, v16, v12, v14);
  if (v17)
  {
    v19 = *&v17[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
    v18 = *&v17[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8];
    v20 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v0[23] = v19;
  v0[24] = v18;
  v21 = v0[15];

  v22 = sub_1DF564794();
  v23 = sub_1DF564C44();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[14];
    v24 = v0[15];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1DF47EF6C(v25, v24, &v33);
    _os_log_impl(&dword_1DF47C000, v22, v23, "No valid cache value for ticket %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1E12D75F0](v27, -1, -1);
    MEMORY[0x1E12D75F0](v26, -1, -1);
  }

  v28 = v0[15];
  v29 = *(v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  v30 = v0[14];
  v0[25] = v29;
  v33 = 0x5F74656B636974;
  v34 = 0xE700000000000000;
  MEMORY[0x1E12D62C0](v30, v28);
  v31 = v34;
  v0[26] = v33;
  v0[27] = v31;

  return MEMORY[0x1EEE6DFA0](sub_1DF4CE2D0, v29, 0);
}

uint64_t sub_1DF4CE2D0()
{
  v1 = v0[25];
  v0[28] = sub_1DF4929F8(v0[26], v0[27], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CE350, 0, 0);
}

uint64_t sub_1DF4CE350()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v9 = *(v0 + 160);
  v10 = *(v0 + 184);
  MEMORY[0x1E12D62C0](v3, v2);
  *(v0 + 232) = 0xE700000000000000;
  v4 = swift_allocObject();
  *(v0 + 240) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *&v5 = v9;
  *(&v5 + 1) = v1;
  *(v4 + 48) = v5;
  *(v4 + 32) = v10;

  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1DF4CE4B8;
  v7 = *(v0 + 224);

  return sub_1DF532ECC(0x5F74656B636974, 0xE700000000000000, &unk_1DF568D38, v4);
}

uint64_t sub_1DF4CE4B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *(*v2 + 240);
  v7 = *(*v2 + 232);
  v8 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v9 = sub_1DF4CE6D4;
  }

  else
  {
    v10 = *(v4 + 168);

    *(v4 + 264) = a1;
    v9 = sub_1DF4CE628;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DF4CE628()
{
  v1 = v0[33];
  v2 = v0[28];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
  v6 = v5;
  v4(v5, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF4CE6D4()
{
  v38 = v0;
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[19];

  v4 = v1;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[10];
    v13 = sub_1DF5651B4();
    v15 = sub_1DF47EF6C(v13, v14, &v37);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DF47C000, v5, v6, "GetTicketStatus failed with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v16 = v0[22];
  v17 = sub_1DF4C4FE0(v0[14], v0[15], v0[20], v0[21]);

  if (v17)
  {
    v18 = v0[19];
    v19 = sub_1DF564794();
    v20 = sub_1DF564C44();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DF47C000, v19, v20, "Returning cached ticket status.", v21, 2u);
      MEMORY[0x1E12D75F0](v21, -1, -1);
    }

    v22 = v0[32];
    v24 = v0[17];
    v23 = v0[18];

    v25 = *&v17[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
    swift_getErrorValue();
    v26 = v0[5];
    v27 = v0[6];
    v28 = v0[7];
    v29 = v25;
    v30 = sub_1DF49A0C0(v27);
    v24(v25, v30);
  }

  else
  {
    v22 = v0[32];
    v32 = v0[17];
    v31 = v0[18];
    swift_getErrorValue();
    v33 = v0[2];
    v34 = v0[4];
    v17 = sub_1DF49A0C0(v0[3]);
    v32(0, v17);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1DF4CE98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CEA38, 0, 0);
}

uint64_t sub_1DF4CEA38()
{
  v16 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1DF5647B4();
  v0[11] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v15);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting network fetch for ticket %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1DF4CEC14;
  v10 = v0[5];
  v11 = v0[6];
  v13 = v0[3];
  v12 = v0[4];

  return sub_1DF4BA308(v13, v12, v10, v11);
}

uint64_t sub_1DF4CEC14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4CED64, 0, 0);
  }
}

uint64_t sub_1DF4CED64()
{
  v28 = v0;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v26 = *(v0 + 88);
  v8 = sub_1DF5642D4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DF5642C4();
  v11 = v3[11];
  v12 = sub_1DF564494();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = &v2[v3[12]];
  sub_1DF564474();
  *v2 = v1;
  v14 = &v2[v3[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[v3[14]];
  *v15 = v5;
  *(v15 + 1) = v4;

  v16 = v1;
  sub_1DF4C5794(v7, v6);

  sub_1DF47E5B4(v2, &qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4FB984();

  v17 = sub_1DF564794();
  v18 = sub_1DF564C44();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 24);
    v19 = *(v0 + 32);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1DF47EF6C(v20, v19, &v27);
    _os_log_impl(&dword_1DF47C000, v17, v18, "Network fetch finished for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v23 = *(v0 + 80);
  **(v0 + 16) = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1DF4CF17C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v10 = v7;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v35 - v17;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  __swift_project_value_buffer(v19, qword_1ED9556D8);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v35[1] = a6;
    v25 = a4;
    v26 = a3;
    v27 = v24;
    v39 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1DF47EF6C(a1, a2, &v39);
    _os_log_impl(&dword_1DF47C000, v20, v21, v37, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    a3 = v26;
    a4 = v25;
    MEMORY[0x1E12D75F0](v28, -1, -1);
    v29 = v23;
    a7 = v36;
    MEMORY[0x1E12D75F0](v29, -1, -1);
  }

  v30 = sub_1DF564B44();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = v10;
  v31[7] = a3;
  v32 = ObjectType;
  v31[8] = a4;
  v31[9] = v32;

  v33 = v10;

  sub_1DF4BF520(0, 0, v18, a7, v31);
}

uint64_t sub_1DF4CF3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = type metadata accessor for InternalError();
  v8[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CF4A4, 0, 0);
}

uint64_t sub_1DF4CF4A4()
{
  v36 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v34);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting request for ticket %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = (v0[13] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v14 = v13;
  v0[20] = v12;
  v0[21] = v13;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v15 = sub_1DF4C4FE0(v0[11], v0[12], v12, v14);
  if (!v15)
  {
    v23 = v0[12];

    v18 = sub_1DF564794();
    v24 = sub_1DF564C44();

    if (os_log_type_enabled(v18, v24))
    {
      v26 = v0[11];
      v25 = v0[12];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DF47EF6C(v26, v25, &v34);
      _os_log_impl(&dword_1DF47C000, v18, v24, "No valid cache value for ticket %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    goto LABEL_12;
  }

  v16 = v15;
  v17 = v15;
  v18 = sub_1DF564794();
  v19 = sub_1DF564C24();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v16;
    v22 = v17;
    _os_log_impl(&dword_1DF47C000, v18, v19, "There already is a cached ticket when calling getTicket: %@", v20, 0xCu);
    sub_1DF47E5B4(v21, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v21, -1, -1);
    MEMORY[0x1E12D75F0](v20, -1, -1);

LABEL_12:
    goto LABEL_14;
  }

LABEL_14:
  v29 = v0[12];
  v30 = *(v0[13] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  v31 = v0[11];
  v0[22] = v30;
  v34 = 0x656B636954746567;
  v35 = 0xEA00000000005F74;
  MEMORY[0x1E12D62C0](v31, v29);
  v32 = v35;
  v0[23] = v34;
  v0[24] = v32;

  return MEMORY[0x1EEE6DFA0](sub_1DF4CF8C0, v30, 0);
}

uint64_t sub_1DF4CF8C0()
{
  v1 = v0[22];
  v0[25] = sub_1DF4929F8(v0[23], v0[24], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CF940, 0, 0);
}

uint64_t sub_1DF4CF940()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  MEMORY[0x1E12D62C0](v5, v3);
  v0[26] = 0xEA00000000005F74;
  v6 = swift_allocObject();
  v0[27] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v6[6] = v4;

  v7 = v4;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4CFA9C;
  v9 = v0[25];

  return sub_1DF532ECC(0x656B636954746567, 0xEA00000000005F74, &unk_1DF568D00, v6);
}

uint64_t sub_1DF4CFA9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *(*v2 + 216);
  v7 = *(*v2 + 208);
  v8 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v9 = sub_1DF4CFCB0;
  }

  else
  {
    *(v4 + 240) = a1;
    v9 = sub_1DF4CFC04;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DF4CFC04()
{
  v1 = v0[30];
  v2 = v0[25];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v1;
  v4(v1, 0);

  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF4CFCB0()
{
  v47 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  *(v0 + 64) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v8 = *(v0 + 152);
      v9 = *(v0 + 96);

      v10 = sub_1DF564794();
      v11 = sub_1DF564C44();

      if (os_log_type_enabled(v10, v11))
      {
        v13 = *(v0 + 88);
        v12 = *(v0 + 96);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v46 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1DF47EF6C(v13, v12, &v46);
        _os_log_impl(&dword_1DF47C000, v10, v11, "Ticket %s received 204 network response", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x1E12D75F0](v15, -1, -1);
        MEMORY[0x1E12D75F0](v14, -1, -1);
      }

      v16 = *(v0 + 144);
      v18 = *(v0 + 120);
      v17 = *(v0 + 128);
      v19 = *(v0 + 112);
      swift_storeEnumTagMultiPayload();
      v20 = sub_1DF4B3AC0();
      sub_1DF4D7CC4(v16);
      v19(0, v20);

      v21 = *(v0 + 64);
      goto LABEL_10;
    }

    sub_1DF4D7CC4(v7);
  }

  v22 = *(v0 + 232);
  v23 = *(v0 + 152);

  v24 = v22;
  v25 = sub_1DF564794();
  v26 = sub_1DF564C24();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 232);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136446210;
    swift_getErrorValue();
    v31 = *(v0 + 40);
    v30 = *(v0 + 48);
    v32 = *(v0 + 56);
    v33 = sub_1DF5651B4();
    v35 = sub_1DF47EF6C(v33, v34, &v46);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1DF47C000, v25, v26, "GetTicket failed with error: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1E12D75F0](v29, -1, -1);
    MEMORY[0x1E12D75F0](v28, -1, -1);
  }

  v36 = *(v0 + 232);
  v38 = *(v0 + 112);
  v37 = *(v0 + 120);
  swift_getErrorValue();
  v39 = *(v0 + 16);
  v40 = *(v0 + 32);
  v41 = sub_1DF49A0C0(*(v0 + 24));
  v38(0, v41);

  v21 = v36;
LABEL_10:

  v43 = *(v0 + 136);
  v42 = *(v0 + 144);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1DF4D0010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  v6[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4D00B8, 0, 0);
}

uint64_t sub_1DF4D00B8()
{
  v14 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_1DF5647B4();
  v0[27] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v13);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting network fetch for ticket %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_1DF4D0290;
  v11 = v0[20];
  v10 = v0[21];

  return sub_1DF4BA720(v11, v10);
}

uint64_t sub_1DF4D0290(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v5 = *v2;
  *(*v2 + 232) = a1;

  if (v1)
  {
    v6 = *(v3 + 208);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4D03E0, 0, 0);
  }
}

uint64_t sub_1DF4D03E0()
{
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v22 = v0[21];
  v23 = v0[27];
  v7 = sub_1DF5642D4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DF5642C4();
  v10 = v3[11];
  v11 = sub_1DF564494();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = &v2[v3[12]];
  sub_1DF564474();
  *v2 = v1;
  v13 = &v2[v3[13]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v2[v3[14]];
  *v14 = v4;
  *(v14 + 1) = v5;

  v15 = v1;
  sub_1DF4C5794(v6, v22);

  sub_1DF47E5B4(v2, &qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4FB984();
  v16 = sub_1DF564794();
  v17 = sub_1DF564C44();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DF47C000, v16, v17, "Attempting to get primary apple account", v18, 2u);
    MEMORY[0x1E12D75F0](v18, -1, -1);
  }

  v19 = sub_1DF481988();
  v0[30] = v19;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4D06AC;
  v20 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D58, &qword_1DF569340);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_101;
  v0[14] = v20;
  [v19 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4D06AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1DF4D0B1C;
  }

  else
  {
    v3 = sub_1DF4D07BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

id sub_1DF4D07BC()
{
  v30 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 216);
  if (v1)
  {

    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "There is an account, not registering", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }
  }

  else
  {
    v6 = sub_1DF564794();
    v7 = sub_1DF564C44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DF47C000, v6, v7, "There is no account, registering.", v8, 2u);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    [objc_opt_self() registerForLoggedOutPushNotifications];
  }

  v9 = *(v0 + 216);
  v10 = *(v0 + 168);

  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(v14, v13, &v29);
    _os_log_impl(&dword_1DF47C000, v11, v12, "Network fetch finished for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v17 = *(*(v0 + 232) + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
  objc_allocWithZone(type metadata accessor for TicketStatus());
  v18 = v17;
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (result)
  {
    v20 = result;
    v21 = sub_1DF564CD4();

    if ((v21 & 1) != 0 && os_variant_has_internal_ui())
    {
      v22 = *(v0 + 216);
      v23 = sub_1DF564794();
      v24 = sub_1DF564C44();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DF47C000, v23, v24, "Ticket is active & internal build detected, clearing cache & notifying", v25, 2u);
        MEMORY[0x1E12D75F0](v25, -1, -1);
      }

      v26 = *(v0 + 192);

      sub_1DF4CBC30();
    }

    v27 = *(v0 + 208);
    **(v0 + 152) = *(v0 + 232);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF4D0B1C()
{
  v34 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 216);
  swift_willThrow();

  v4 = v1;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 248);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Unable to get primary apple account: %@", v9, 0xCu);
    sub_1DF47E5B4(v10, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 216);
  v14 = *(v0 + 168);

  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DF47EF6C(v18, v17, &v33);
    _os_log_impl(&dword_1DF47C000, v15, v16, "Network fetch finished for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  v21 = *(*(v0 + 232) + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
  objc_allocWithZone(type metadata accessor for TicketStatus());
  v22 = v21;
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (result)
  {
    v24 = result;
    v25 = sub_1DF564CD4();

    if ((v25 & 1) != 0 && os_variant_has_internal_ui())
    {
      v26 = *(v0 + 216);
      v27 = sub_1DF564794();
      v28 = sub_1DF564C44();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DF47C000, v27, v28, "Ticket is active & internal build detected, clearing cache & notifying", v29, 2u);
        MEMORY[0x1E12D75F0](v29, -1, -1);
      }

      v30 = *(v0 + 192);

      sub_1DF4CBC30();
    }

    v31 = *(v0 + 208);
    **(v0 + 152) = *(v0 + 232);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4D0E70(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
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

void sub_1DF4D1128(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
  if (v11)
  {
    v12 = v11;
    if (sub_1DF564F54() == 1)
    {
      v13 = sub_1DF564B44();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;
      v14[5] = a3;
      v14[6] = a4;

      v15 = &unk_1DF568CD8;
      v16 = v10;
      v17 = v14;
    }

    else
    {
      v19 = *(v4 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
      v20 = *(v4 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32);
      __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore), v19);
      v21 = (*(v20 + 16))(v19, v20);
      v23 = v22;
      if (qword_1ED955FF0 != -1)
      {
        swift_once();
      }

      v24 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v21, v23, 1, 1);
      v25 = sub_1DF4D516C(v21, v23);

      v26 = sub_1DF564B44();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = v12;
      *(v27 + 40) = v24;
      *(v27 + 48) = v25 & 1;
      *(v27 + 56) = a3;
      *(v27 + 64) = a4;

      v15 = &unk_1DF568CC8;
      v16 = v10;
      v17 = v27;
    }

    sub_1DF4BF520(0, 0, v16, v15, v17);
  }

  else
  {
    v29 = sub_1DF4B3AA0(7);
    a3(0, v29);
    v18 = v29;
  }
}

uint64_t sub_1DF4D142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D144C, 0, 0);
}

uint64_t sub_1DF4D144C()
{
  v1 = sub_1DF481988();
  v2 = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
  *(v0 + 128) = v1;
  *(v0 + 224) = 0u;
  *(v0 + 152) = v2;
  *(v0 + 160) = &off_1F5A86EE8;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0;
  v3 = sub_1DF531308();
  v5 = v4;
  type metadata accessor for Config();
  inited = swift_initStackObject();
  *(v0 + 384) = inited;
  *(inited + 32) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 16) = v3;
  *(inited + 24) = v5;
  if (*(v0 + 248))
  {
    sub_1DF47E390((v0 + 224), v0 + 264);
    sub_1DF47E390((v0 + 264), v0 + 304);
    swift_beginAccess();
    sub_1DF4D78FC(v0 + 304, inited + 32);
    swift_endAccess();
  }

  else
  {
    sub_1DF47E5B4(v0 + 224, &qword_1ECE38370, &qword_1DF569E50);
  }

  v7 = type metadata accessor for SystemProperties();
  v8 = swift_initStaticObject();
  *(v0 + 208) = v7;
  *(v0 + 216) = &off_1F5A88E50;
  *(v0 + 184) = v8;
  *(v0 + 168) = inited;
  *(v0 + 176) = &off_1F5A86FD0;
  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  *v9 = v0;
  v9[1] = sub_1DF4D1624;

  return (sub_1DF4D53FC)(v0 + 128);
}

uint64_t sub_1DF4D1624(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v5 = *v1;
  *(v2 + 400) = a1;

  sub_1DF4D78A8(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DF4D172C, 0, 0);
}

uint64_t sub_1DF4D172C()
{
  v1 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 400), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF4D1798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1DF4D182C;

  return sub_1DF52D05C();
}

uint64_t sub_1DF4D182C(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF4D192C, 0, 0);
}

uint64_t sub_1DF4D192C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF4D1A68(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_1DF564944();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1DF4D1B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D1B2C, 0, 0);
}

uint64_t sub_1DF4D1B2C()
{
  v1 = sub_1DF481988();
  v2 = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
  *(v0 + 128) = v1;
  *(v0 + 224) = 0u;
  *(v0 + 152) = v2;
  *(v0 + 160) = &off_1F5A86EE8;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0;
  v3 = sub_1DF531308();
  v5 = v4;
  type metadata accessor for Config();
  inited = swift_initStackObject();
  *(inited + 32) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 0u;
  *(inited + 16) = v3;
  *(inited + 24) = v5;
  if (*(v0 + 248))
  {
    sub_1DF47E390((v0 + 224), v0 + 264);
    sub_1DF47E390((v0 + 264), v0 + 304);
    swift_beginAccess();
    sub_1DF4D78FC(v0 + 304, inited + 32);
    swift_endAccess();
  }

  else
  {
    sub_1DF47E5B4(v0 + 224, &qword_1ECE38370, &qword_1DF569E50);
  }

  v7 = type metadata accessor for SystemProperties();
  v8 = swift_initStaticObject();
  *(v0 + 208) = v7;
  *(v0 + 216) = &off_1F5A88E50;
  *(v0 + 176) = &off_1F5A86FD0;
  *(v0 + 184) = v8;
  *(v0 + 168) = inited;
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955C68);
  v10 = sub_1DF564794();
  v11 = sub_1DF564C24();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DF47C000, v10, v11, "Attempted to determine device waitlist CFU eligibility on ineligible configuration.", v12, 2u);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  v14 = *(v0 + 368);
  v13 = *(v0 + 376);

  sub_1DF4D78A8(v0 + 128);
  v14(3, 0);
  v15 = *(v0 + 8);

  return v15();
}

void sub_1DF4D1D98(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1DF4D1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D1ED4, 0, 0);
}

uint64_t sub_1DF4D1ED4()
{
  v52 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v50);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting signup for ticket %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = (v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v12 = (*(v11 + 32))(v10, v11);
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    v15 = sub_1DF564944();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v0[20] = v15;
  v0[21] = v17;
  v18 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v19 = sub_1DF564914();
  v20 = [v18 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v21 = sub_1DF47E8A4();
  v23 = v22;
  type metadata accessor for WaitlistCache();
  v24 = swift_allocObject();
  v25 = v24;
  if (!v20)
  {

    swift_deallocPartialClassInstance();
    v26 = 0;
    v25 = 0;
LABEL_20:
    v0[22] = v26;
    v0[23] = v25;
    v46 = v0[15];
    v47 = *(v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
    v48 = v0[14];
    v0[24] = v47;
    v50 = 0x5F70756E676973;
    v51 = 0xE700000000000000;
    MEMORY[0x1E12D62C0](v48, v46);
    v49 = v51;
    v0[25] = v50;
    v0[26] = v49;
    v32 = sub_1DF4D2378;
    v33 = v47;
    v34 = 0;

    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }

  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v23;
  v24[5] = v15;
  v24[6] = v17;

  v26 = sub_1DF4DB4FC(0, 0);

  if (!v26)
  {
    goto LABEL_20;
  }

  v27 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
  v28 = *&v26[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
  v29 = type metadata accessor for TicketStatus();
  objc_allocWithZone(v29);
  v30 = v28;
  v31 = v26;
  v32 = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (!v32)
  {
    __break(1u);
    goto LABEL_24;
  }

  v35 = v32;
  v36 = sub_1DF564CD4();

  if ((v36 & 1) == 0)
  {
    v37 = *&v26[v27];
    objc_allocWithZone(v29);
    v38 = v37;
    v32 = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (v32)
    {
      v39 = v32;
      v40 = sub_1DF564CD4();

      if (v40)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }

LABEL_15:
  v42 = v0[17];
  v41 = v0[18];

  v43 = v31;
  v42(v26, 0);

  v44 = v0[1];

  return v44();
}

uint64_t sub_1DF4D2378()
{
  v1 = v0[24];
  v0[27] = sub_1DF4929F8(v0[25], v0[26], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4D23F8, 0, 0);
}

uint64_t sub_1DF4D23F8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[15];
  v5 = v0[14];
  MEMORY[0x1E12D62C0](v5, v4);
  v0[28] = 0xE700000000000000;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[29] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v6;

  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4D257C;
  v9 = v0[27];

  return sub_1DF533950(0x5F70756E676973, 0xE700000000000000, &unk_1DF568C58, v7);
}

uint64_t sub_1DF4D257C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *(*v2 + 232);
  v7 = *(*v2 + 224);
  v8 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v9 = sub_1DF4D2798;
  }

  else
  {
    *(v4 + 256) = a1;
    v9 = sub_1DF4D26E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DF4D26E4()
{
  v1 = v0[32];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v1;
  v6(v1, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF4D2798()
{
  v48 = v0;
  v1 = v0[22];
  v2 = v0[31];
  v3 = v0[19];
  if (v1)
  {
    v4 = v1;
    v5 = v2;
    v6 = sub_1DF564794();
    v7 = sub_1DF564C24();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[31];
      v9 = v0[22];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47 = v12;
      *v10 = 138543618;
      *(v10 + 4) = v4;
      *v11 = v9;
      *(v10 + 12) = 2082;
      swift_getErrorValue();
      v13 = v0[8];
      v14 = v0[9];
      v15 = v0[10];
      v16 = v4;
      v17 = sub_1DF5651B4();
      v19 = sub_1DF47EF6C(v17, v18, &v47);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1DF47C000, v6, v7, "signupForWaitlist recovered with existing cached value %{public}@ after error: %{public}s", v10, 0x16u);
      sub_1DF47E5B4(v11, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1E12D75F0](v12, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v20 = v0[31];
    v21 = v0[27];
    v23 = v0[22];
    v22 = v0[23];
    v25 = v0[17];
    v24 = v0[18];
    v26 = v4;
    v25(v23, 0);
  }

  else
  {
    v27 = v2;
    v28 = sub_1DF564794();
    v29 = sub_1DF564C24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[31];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v34 = v0[5];
      v33 = v0[6];
      v35 = v0[7];
      v36 = sub_1DF5651B4();
      v38 = sub_1DF47EF6C(v36, v37, &v47);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_1DF47C000, v28, v29, "signupForWaitlist failed with error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1E12D75F0](v32, -1, -1);
      MEMORY[0x1E12D75F0](v31, -1, -1);
    }

    v20 = v0[31];
    v39 = v0[27];
    v40 = v0[23];
    v42 = v0[17];
    v41 = v0[18];
    swift_getErrorValue();
    v43 = v0[2];
    v44 = v0[4];
    v26 = sub_1DF49A0C0(v0[3]);
    v42(0, v26);
  }

  v45 = v0[1];

  return v45();
}

uint64_t sub_1DF4D2AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D2B28, 0, 0);
}

uint64_t sub_1DF4D2B28()
{
  v16 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1DF5647B4();
  v0[30] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[24];
    v5 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v15);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting network fetch for signup for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED954AD0;
  v0[5] = &type metadata for Device;
  v0[6] = &off_1F5A89060;
  v10 = swift_allocObject();
  v0[2] = v10;
  v10[5] = type metadata accessor for HardwareChecker();
  v10[6] = &off_1F5A89048;
  v10[2] = v9;

  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_1DF4D2D90;
  v13 = v0[24];
  v12 = v0[25];

  return sub_1DF4BAB14(v13, v12);
}

uint64_t sub_1DF4D2D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = (*v5)[31];
  v12 = *v5;
  (*v5)[32] = v4;

  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
    v13 = sub_1DF4D32A0;
  }

  else
  {
    v10[33] = a4;
    v10[34] = a3;
    v10[35] = a2;
    v10[36] = a1;
    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
    v13 = sub_1DF4D2EE8;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

id sub_1DF4D2EE8()
{
  v43 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 208);
  v6 = type metadata accessor for WaitlistResult();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
  *v8 = v1;
  *(v8 + 1) = v2;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v3;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v4;
  *(v0 + 168) = v7;
  *(v0 + 176) = v6;
  v9 = objc_msgSendSuper2((v0 + 168), sel_init);
  v10 = v9;
  if (v5)
  {
    v11 = *(v0 + 208);
    sub_1DF4DA984(v9, *(v0 + 216), *(v0 + 224));
  }

  v12 = *(v0 + 232);
  sub_1DF4FB984();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(v0 + 232);
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      sub_1DF47FCEC(v16 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore, v0 + 56);

      v18 = *(v0 + 80);
      v19 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_0((v0 + 56), v18);
      v20 = (*(v19 + 32))(v18, v19);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    else
    {
      v20 = 0;
    }

    sub_1DF4FF5AC(v20);
  }

  v21 = *(v0 + 240);
  v22 = *(v0 + 200);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DF47EF6C(v26, v25, &v42);
    _os_log_impl(&dword_1DF47C000, v23, v24, "signupForWaitlist network fetch finished for %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v27, -1, -1);
  }

  v29 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
  objc_allocWithZone(type metadata accessor for TicketStatus());
  v30 = v29;
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (result)
  {
    v32 = result;
    v33 = sub_1DF564CD4();

    if ((v33 & 1) != 0 && os_variant_has_internal_ui())
    {
      v34 = *(v0 + 240);
      v35 = sub_1DF564794();
      v36 = sub_1DF564C44();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DF47C000, v35, v36, "Ticket is active & internal build detected, clearing cache & notifying", v37, 2u);
        MEMORY[0x1E12D75F0](v37, -1, -1);
      }

      v38 = *(v0 + 232);

      swift_beginAccess();
      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = v39;
        sub_1DF4CBC30();
      }
    }

    **(v0 + 184) = v10;
    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4D33BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v10 = v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - v17;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  __swift_project_value_buffer(v19, qword_1ED9556D8);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v35 = a6;
    v25 = v10;
    v26 = a4;
    v27 = a3;
    v28 = v24;
    v38 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_1DF47EF6C(a1, a2, &v38);
    _os_log_impl(&dword_1DF47C000, v20, v21, v37, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a3 = v27;
    a4 = v26;
    v10 = v25;
    MEMORY[0x1E12D75F0](v29, -1, -1);
    v30 = v23;
    a7 = v36;
    MEMORY[0x1E12D75F0](v30, -1, -1);
  }

  v31 = sub_1DF564B44();
  (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a1;
  v32[5] = a2;
  v32[6] = v10;
  v32[7] = a3;
  v32[8] = a4;

  v33 = v10;

  sub_1DF4BF520(0, 0, v18, a7, v32);
}

uint64_t sub_1DF4D3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D3658, 0, 0);
}

uint64_t sub_1DF4D3658()
{
  v52 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v50);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting status request for ticket %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = (v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v12 = (*(v11 + 32))(v10, v11);
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    v15 = sub_1DF564944();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v0[20] = v15;
  v0[21] = v17;
  v18 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v19 = sub_1DF564914();
  v20 = [v18 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v21 = sub_1DF47E8A4();
  v23 = v22;
  type metadata accessor for WaitlistCache();
  v24 = swift_allocObject();
  v25 = v24;
  if (!v20)
  {

    swift_deallocPartialClassInstance();
    v26 = 0;
    v25 = 0;
LABEL_20:
    v0[22] = v26;
    v0[23] = v25;
    v46 = v0[15];
    v47 = *(v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
    v48 = v0[14];
    v0[24] = v47;
    v50 = 0x5F737574617473;
    v51 = 0xE700000000000000;
    MEMORY[0x1E12D62C0](v48, v46);
    v49 = v51;
    v0[25] = v50;
    v0[26] = v49;
    v32 = sub_1DF4D3AFC;
    v33 = v47;
    v34 = 0;

    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }

  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v23;
  v24[5] = v15;
  v24[6] = v17;

  v26 = sub_1DF4DB4FC(0, 0);

  if (!v26)
  {
    goto LABEL_20;
  }

  v27 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
  v28 = *&v26[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
  v29 = type metadata accessor for TicketStatus();
  objc_allocWithZone(v29);
  v30 = v28;
  v31 = v26;
  v32 = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (!v32)
  {
    __break(1u);
    goto LABEL_24;
  }

  v35 = v32;
  v36 = sub_1DF564CD4();

  if ((v36 & 1) == 0)
  {
    v37 = *&v26[v27];
    objc_allocWithZone(v29);
    v38 = v37;
    v32 = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (v32)
    {
      v39 = v32;
      v40 = sub_1DF564CD4();

      if (v40)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }

LABEL_15:
  v42 = v0[17];
  v41 = v0[18];

  v43 = v31;
  v42(v26, 0);

  v44 = v0[1];

  return v44();
}

uint64_t sub_1DF4D3AFC()
{
  v1 = v0[24];
  v0[27] = sub_1DF4929F8(v0[25], v0[26], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4D3B7C, 0, 0);
}

uint64_t sub_1DF4D3B7C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[14];
  v4 = v0[15];
  MEMORY[0x1E12D62C0](v5, v4);
  v0[28] = 0xE700000000000000;
  v6 = swift_allocObject();
  v0[29] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v2;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_1DF4D3CD8;
  v8 = v0[27];

  return sub_1DF533950(0x5F737574617473, 0xE700000000000000, &unk_1DF568C30, v6);
}

uint64_t sub_1DF4D3CD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *(*v2 + 232);
  v7 = *(*v2 + 224);
  v8 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v9 = sub_1DF4D3EF4;
  }

  else
  {
    *(v4 + 256) = a1;
    v9 = sub_1DF4D3E40;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DF4D3E40()
{
  v1 = v0[32];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v1;
  v6(v1, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF4D3EF4()
{
  v50 = v0;
  v1 = v0[22];
  v2 = v0[31];
  v3 = v0[19];
  if (v1)
  {
    v4 = v1;
    v5 = v2;
    v6 = sub_1DF564794();
    v7 = sub_1DF564C24();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[31];
      v9 = v0[22];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v49 = v12;
      *v10 = 138543618;
      *(v10 + 4) = v4;
      *v11 = v9;
      *(v10 + 12) = 2082;
      swift_getErrorValue();
      v13 = v0[8];
      v14 = v0[9];
      v15 = v0[10];
      v16 = v4;
      v17 = sub_1DF5651B4();
      v19 = sub_1DF47EF6C(v17, v18, &v49);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1DF47C000, v6, v7, "getWaitlistStatus recovered with existing cached value %{public}@ after error: %{public}s", v10, 0x16u);
      sub_1DF47E5B4(v11, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1E12D75F0](v12, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v20 = v0[31];
    v21 = v0[27];
    v23 = v0[22];
    v22 = v0[23];
    v25 = v0[17];
    v24 = v0[18];
    v26 = v4;
    v25(v23, 0);
  }

  else
  {
    v27 = v2;
    v28 = sub_1DF564794();
    v29 = sub_1DF564C24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[31];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v34 = v0[5];
      v33 = v0[6];
      v35 = v0[7];
      v36 = sub_1DF5651B4();
      v38 = sub_1DF47EF6C(v36, v37, &v49);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_1DF47C000, v28, v29, "getWaitlistStatus failed with error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1E12D75F0](v32, -1, -1);
      MEMORY[0x1E12D75F0](v31, -1, -1);
    }

    v39 = v0[31];
    v40 = v0[27];
    v41 = v0[23];
    v43 = v0[17];
    v42 = v0[18];
    swift_getErrorValue();
    v44 = v0[2];
    v45 = v0[4];
    v46 = sub_1DF49A0C0(v0[3]);
    v43(0, v46);
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_1DF4D426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D4294, 0, 0);
}

uint64_t sub_1DF4D4294()
{
  v18 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1DF5647B4();
  v0[10] = __swift_project_value_buffer(v2, qword_1ED9556D8);

  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF47EF6C(v6, v5, &v17);
    _os_log_impl(&dword_1DF47C000, v3, v4, "Starting network fetch for status for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = v0[7];
  if (v9)
  {
    v10 = sub_1DF4DB4FC(0, 0);
    if (v10)
    {
      v9 = *(v10 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
      v11 = *(v10 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8);
      v12 = v10;

      goto LABEL_10;
    }

    v9 = 0;
  }

  v11 = 0;
LABEL_10:
  v0[11] = v11;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1DF4D44C0;
  v15 = v0[5];
  v14 = v0[6];

  return sub_1DF4BAEC0(v15, v14, v9, v11);
}

uint64_t sub_1DF4D44C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 96);
  v12 = *v5;
  *(*v5 + 104) = v4;

  if (v4)
  {
    v13 = sub_1DF4D4870;
  }

  else
  {
    v14 = v10[11];
    v10[14] = a4;
    v10[15] = a3;
    v10[16] = a2;
    v10[17] = a1;

    v13 = sub_1DF4D4610;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1DF4D4610()
{
  v28 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 56);
  v6 = type metadata accessor for WaitlistResult();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
  *v8 = v1;
  *(v8 + 1) = v2;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v3;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v4;
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  v9 = objc_msgSendSuper2((v0 + 16), sel_init);
  if (v5)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);

    sub_1DF4DA984(v9, v11, v10);
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = sub_1DF564794();
    v15 = sub_1DF564C24();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DF47C000, v14, v15, "Unable to initialize WaitlistCache. Response will not be cached.", v16, 2u);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 48);
  sub_1DF4FB984();

  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_1DF47EF6C(v22, v21, &v27);
    _os_log_impl(&dword_1DF47C000, v19, v20, "getWaitlistStatus network fetch finished for %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1E12D75F0](v24, -1, -1);
    MEMORY[0x1E12D75F0](v23, -1, -1);
  }

  **(v0 + 32) = v9;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DF4D4870()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

id sub_1DF4D4A6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4D4B9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DF4D4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void *a10)
{
  v29 = a5;
  v30 = a8;
  v28 = a3;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_1DF564B44();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a7;
  *(v21 + 40) = a10;
  *(v21 + 48) = a1;
  v23 = v28;
  v22 = v29;
  *(v21 + 56) = a2;
  *(v21 + 64) = v23;
  *(v21 + 72) = a4;
  *(v21 + 80) = v22;
  v24 = v30;
  *(v21 + 88) = a6;
  *(v21 + 96) = v24;
  *(v21 + 104) = a9;
  *(v21 + 112) = ObjectType;
  v25 = a10;

  sub_1DF4BF520(0, 0, v19, &unk_1DF568D48, v21);
}

uint64_t sub_1DF4D4D54()
{
  if (MEMORY[0x1E69A12D8])
  {
    v0 = MEMORY[0x1E69A12E8] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x1E69A12F0] == 0)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956398);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571E00, &v29);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }
  }

  else
  {
    v26 = sub_1DF5645B4();
    v28 = v25;
    v7 = *(v26 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v26);
    v27 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = v25 - v27;
    v10 = sub_1DF564604();
    v25[1] = v25;
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = sub_1DF5645D4();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v15);
    v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DF5645C4();
    sub_1DF5645F4();
    (*(v16 + 8))(v19, v15);
    v20 = v26;
    sub_1DF5645E4();
    v21 = (*(v11 + 8))(v14, v10);
    MEMORY[0x1EEE9AC00](v21);
    v22 = v25 - v27;
    (*(v7 + 32))(v25 - v27, v9, v20);
    v23 = (*(v7 + 88))(v22, v20);
    if (MEMORY[0x1E69A1198] && v23 == *MEMORY[0x1E69A1198])
    {
      return 1;
    }

    (*(v7 + 8))(v22, v20);
  }

  return 0;
}

uint64_t sub_1DF4D516C(uint64_t a1, unint64_t a2)
{
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF4C4FE0(0x6C6C2E64756F6C63, 0xE90000000000006DLL, a1, a2);
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DF564914();
  v8 = [v6 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v9 = sub_1DF47E8A4();
  v11 = v10;
  type metadata accessor for WaitlistCache();
  v12 = swift_allocObject();
  if (!v8)
  {

    swift_deallocPartialClassInstance();
LABEL_10:
    if (v5)
    {
      v15 = 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    goto LABEL_13;
  }

  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v12[5] = a1;
  v12[6] = a2;

  v13 = sub_1DF4DB4FC(0, 0);

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = 1;
  v15 = 1;
  if (!v5)
  {
    v15 = 1;
  }

LABEL_13:
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED9556D8);
  v17 = sub_1DF564794();
  v18 = sub_1DF564C14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v5 != 0;
    v20 = swift_slowAlloc();
    *v20 = 67240704;
    *(v20 + 4) = v14;
    *(v20 + 8) = 1026;
    *(v20 + 10) = v19;
    *(v20 + 14) = 1026;
    *(v20 + 16) = v15;
    _os_log_impl(&dword_1DF47C000, v17, v18, "Does have ticket? %{BOOL,public}d. Has ticket cache ticket? %{BOOL,public}d. Has waitlist cache ticket? %{BOOL,public}d", v20, 0x14u);
    MEMORY[0x1E12D75F0](v20, -1, -1);
  }

  return v14;
}

uint64_t sub_1DF4D53FC()
{
  v1 = sub_1DF5644C4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4D54B8, 0, 0);
}

uint64_t sub_1DF4D54B8()
{
  v28 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1DF5644B4();
  v4 = sub_1DF5644A4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v8 = sub_1DF488298(8, v4, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1E12D6280](v8, v10, v12, v14);
  v17 = v16;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED955C68);

  v19 = sub_1DF564794();
  v20 = sub_1DF564C24();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446210;
    v27[0] = v22;
    v27[1] = 91;
    v27[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD00000000000004ALL, 0x80000001DF571C90);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v15, v17);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v23 = sub_1DF47EF6C(91, 0xE100000000000000, v27);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1DF47C000, v19, v20, "%{public}s Attempted to post waitlist CFU on invalid configuration.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  else
  {
  }

  v24 = v0[4];

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_1DF4D5744(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED9556D8);
  v7 = a1;
  v8 = sub_1DF564794();
  v9 = sub_1DF564C44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DF47EF6C(*&v7[OBJC_IVAR___CloudFeature_featureID], *&v7[OBJC_IVAR___CloudFeature_featureID + 8], &v20);
    _os_log_impl(&dword_1DF47C000, v8, v9, "Validating feature %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  v12 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable);
  v13 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable + 8);

  sub_1DF4EC964(v7, v12, v13);
  v14 = v7;
  v15 = sub_1DF564794();
  v16 = sub_1DF564C04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1DF47EF6C(*&v14[OBJC_IVAR___CloudFeature_featureID], *&v14[OBJC_IVAR___CloudFeature_featureID + 8], &v20);
    _os_log_impl(&dword_1DF47C000, v15, v16, "Feature appears valid: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  (*(a3 + 16))(a3, 0);
}

uint64_t sub_1DF4D5C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D3630(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D5D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4D426C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D5E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D1EAC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D5EE4(uint64_t a1)
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
  v10[1] = sub_1DF48D3C0;

  return sub_1DF4D2AFC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1DF4D60DC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = (*(v5 + 32))(v4, v5);
  if (v6)
  {
    v16 = v6;
    v7 = [v6 isEnabledForDataclass_];
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF5647B4();
    __swift_project_value_buffer(v8, qword_1ED956260);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_1DF47C000, v9, v10, "Shared albums enablement status: %{BOOL}d", v11, 8u);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    (*(a2 + 16))(a2, v7, 0);
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF5647B4();
    __swift_project_value_buffer(v12, qword_1ED9556D8);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C24();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DF47C000, v13, v14, "Unable to get primary account", v15, 2u);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }

    v16 = sub_1DF4B3AA0(10);
    (*(a2 + 16))(a2, 0, v16);
  }
}

void sub_1DF4D6334(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF5647B4();
  __swift_project_value_buffer(v8, qword_1ED9556D8);

  v9 = sub_1DF564794();
  v10 = sub_1DF564C44();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1DF47EF6C(a1, a2, &v20);
    _os_log_impl(&dword_1DF47C000, v9, v10, "Fetching ticket status from cache for feature %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  v13 = (a3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v14 = *(a3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_0(v13, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = v17;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF4C4FE0(a1, a2, v16, v18);

  if (v19)
  {
    (*(a4 + 16))(a4, *&v19[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status], 0);
  }

  else
  {
    v19 = sub_1DF4B3AA0(4);
    (*(a4 + 16))(a4, 0, v19);
  }
}

void sub_1DF4D658C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED9556D8);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
    _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}s [Start]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
  {
    v9 = sub_1DF564F54();
    if (v9 == 1)
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (!v9)
    {
      v10 = 0;
LABEL_10:
      v11 = sub_1DF564794();
      v12 = sub_1DF564C44();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
        _os_log_impl(&dword_1DF47C000, v11, v12, "%{public}s Attempting to clear user default.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x1E12D75F0](v14, -1, -1);
        MEMORY[0x1E12D75F0](v13, -1, -1);
      }

      LOBYTE(v25) = v10;
      if (sub_1DF52DB28(&v25))
      {
        (*(a3 + 16))(a3, 0);
      }

      else
      {
        v15 = sub_1DF564794();
        v16 = sub_1DF564C44();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25 = v18;
          *v17 = 136446210;
          *(v17 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
          _os_log_impl(&dword_1DF47C000, v15, v16, "%{public}s No value stored currently. Returning without doing anything.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x1E12D75F0](v18, -1, -1);
          MEMORY[0x1E12D75F0](v17, -1, -1);
        }

        v19 = sub_1DF4B3AA0(4);
        (*(a3 + 16))(a3, v19);
      }

      return;
    }
  }

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}s Passed feature is invalid. Returning without doing anything.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  v24 = sub_1DF4B3AA0(7);
  (*(a3 + 16))(a3, v24);
}

void sub_1DF4D6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_content())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED9556D8);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571C60, &v14);
      _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}s [Start]", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
    {
      v9 = sub_1DF564F54();
      if (v9)
      {
        if (v9 != 1)
        {
          v12 = sub_1DF4B3D8C(2);
          (*(a3 + 16))(a3, 0, v12);

          goto LABEL_18;
        }

        v10 = sub_1DF52D420();
      }

      else
      {
        v10 = sub_1DF52C9F4();
      }

      (*(a3 + 16))(a3, v10 & 1, 0);
LABEL_18:

      return;
    }

    v11 = sub_1DF4B3D8C(1);
  }

  else
  {
    v11 = sub_1DF4B3AA0(14);
  }

  v13 = v11;
  (*(a3 + 16))(a3, 0, v11);
}

void sub_1DF4D6DD0(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  _Block_copy(a2);
  v9 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
    v12 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32);
    __swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore), v11);
    v13 = (*(v12 + 32))(v11, v12);
    if (v13 && (v14 = v13, v15 = [v13 aa_altDSID], v14, v15))
    {
      v16 = sub_1DF564944();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v19 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v16, v18, 1, 1);
    if (v19)
    {
      v20 = OBJC_IVAR___CloudFeature_canUse;
      v21 = v19;
      swift_beginAccess();
      LODWORD(v42) = v21[v20];

      v22 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v23 = sub_1DF564914();
      v24 = [v22 initWithSuiteName_];

      type metadata accessor for SystemProperties();
      swift_initStaticObject();
      v25 = sub_1DF47E8A4();
      v27 = v26;
      type metadata accessor for WaitlistCache();
      v28 = swift_allocObject();
      if (v24)
      {
        v28[2] = v24;
        v28[3] = v25;
        v28[4] = v27;
        v28[5] = v16;
        v28[6] = v18;
        v24 = sub_1DF4DB4FC(0, 0);

        if (v24)
        {

          LOBYTE(v24) = 1;
        }
      }

      else
      {

        swift_deallocPartialClassInstance();
      }

      v40 = sub_1DF564B44();
      (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = v10;
      *(v41 + 40) = v42;
      *(v41 + 41) = v24;
      *(v41 + 48) = sub_1DF48C8FC;
      *(v41 + 56) = v8;

      sub_1DF4BF520(0, 0, v7, &unk_1DF568CB0, v41);
    }

    else
    {

      if (qword_1ED9558B8 != -1)
      {
        swift_once();
      }

      v35 = sub_1DF5647B4();
      __swift_project_value_buffer(v35, qword_1ED955C68);
      v36 = sub_1DF564794();
      v37 = sub_1DF564C44();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DF47C000, v36, v37, "Device does not have cached LLM feature, device is likely missing HW support.", v38, 2u);
        MEMORY[0x1E12D75F0](v38, -1, -1);
      }

      v39 = sub_1DF4B3AA0(4);
      (a2)[2](a2, -1, v39);
    }
  }

  else
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v29 = sub_1DF5647B4();
    __swift_project_value_buffer(v29, qword_1ED955C68);
    v30 = sub_1DF564794();
    v31 = sub_1DF564C24();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1DF47EF6C(0xD000000000000031, 0x80000001DF571C20, &v43);
      _os_log_impl(&dword_1DF47C000, v30, v31, "%{public}s Unable to create FollowUp controller.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1E12D75F0](v33, -1, -1);
      MEMORY[0x1E12D75F0](v32, -1, -1);
    }

    v42 = sub_1DF4B3AA0(2);
    (a2)[2](a2, -1, v42);

    v34 = v42;
  }
}

uint64_t sub_1DF4D73EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF53D3E0(a1, v4, v5, v6);
}

uint64_t sub_1DF4D74A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF4A5D38(a1, v4, v5, v6);
}

uint64_t sub_1DF4D7554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF48D3C0;

  return sub_1DF4CC300(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1DF4D7640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4CC8EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D7708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF4C6EC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF4D77C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D1B0C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_1DF4D78FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38370, &qword_1DF569E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4D796C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D142C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_1DF4D7A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4D1798(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D7B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF48D3C0;

  return sub_1DF4CF3F8(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1DF4D7BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4D0010(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D7CC4(uint64_t a1)
{
  v2 = type metadata accessor for InternalError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DF4D7D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF48D3C0;

  return sub_1DF4CDF30(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1DF4D7E68(uint64_t a1)
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
  v10[1] = sub_1DF48D3C0;

  return sub_1DF4CE98C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF4D7F3C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v16 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF48D3C0;

  return sub_1DF4CD190(a1, v16, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DF4D804C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4CD9D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D8128()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  return 0;
}

uint64_t sub_1DF4D8168()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF4D8200;

  return sub_1DF4CA114(v2);
}

uint64_t sub_1DF4D8200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_1DF4D8320(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF48D3C0;

  return sub_1DF4CA550(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_80Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a1(v2[6]);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1DF4D8488(uint64_t a1)
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
  v10[1] = sub_1DF48D3C0;

  return sub_1DF4CA9A4(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_1DF4D8580(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E6969EC0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF4D8620;

  return MEMORY[0x1EEDC6260](a1, 0);
}

uint64_t sub_1DF4D8620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

char *sub_1DF4D8738()
{
  if (qword_1ED9550A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED9550B0);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_1DF47EF6C(0xD000000000000046, 0x80000001DF571F20, &v16);
    _os_log_impl(&dword_1DF47C000, v1, v2, "Including software capabilities in request %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12D75F0](v4, -1, -1);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v5 = sub_1DF4A9DAC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    v5 = sub_1DF4A9DAC((v6 > 1), v7 + 1, 1, v5);
    v6 = *(v5 + 3);
    v8 = v6 >> 1;
  }

  *(v5 + 2) = v9;
  v10 = &v5[16 * v7];
  *(v10 + 4) = 0xD000000000000016;
  *(v10 + 5) = 0x80000001DF571EC0;
  v11 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    v5 = sub_1DF4A9DAC((v6 > 1), v7 + 2, 1, v5);
  }

  *(v5 + 2) = v11;
  v12 = &v5[16 * v9];
  *(v12 + 4) = 0xD00000000000001BLL;
  *(v12 + 5) = 0x80000001DF571EE0;
  v13 = *(v5 + 3);
  if ((v7 + 3) > (v13 >> 1))
  {
    v5 = sub_1DF4A9DAC((v13 > 1), v7 + 3, 1, v5);
  }

  *(v5 + 2) = v7 + 3;
  v14 = &v5[16 * v11];
  *(v14 + 4) = 0xD000000000000011;
  *(v14 + 5) = 0x80000001DF571F00;
  return v5;
}

void sub_1DF4D8984(void *a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v7 = sub_1DF564494();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF564594();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v16 = objc_allocWithZone(MEMORY[0x1E696AD68]);
  v17 = sub_1DF564314();
  v18 = [v16 initWithURL:v17 cachePolicy:1 timeoutInterval:v15];

  v19 = sub_1DF564914();
  v20 = sub_1DF564914();
  [v18 setValue:v19 forHTTPHeaderField:v20];

  [v18 setTimeoutInterval_];
  v21 = sub_1DF5644D4();
  if (v21[2])
  {
    v22 = v21[4];
    v23 = v21[5];

    v24 = sub_1DF564914();
  }

  else
  {

    v24 = 0;
  }

  v25 = sub_1DF564914();
  [v18 setValue:v24 forHTTPHeaderField:v25];

  v26 = v5[4];
  v27 = v5[5];
  __swift_project_boxed_opaque_existential_0(v5 + 1, v26);
  (*(v27 + 8))(v26, v27);
  if (v28)
  {
    v29 = sub_1DF564914();

    v30 = sub_1DF564914();
    [v18 setValue:v29 forHTTPHeaderField:v30];
  }

  [v18 ak_addClientInfoHeader];
  [v18 ak_addCountryHeader];
  if (a1)
  {
    v31 = a1;
    v32 = [v31 aa_personID];
    v33 = sub_1DF564914();
    [v18 setValue:v32 forHTTPHeaderField:v33];

    if ([v18 respondsToSelector_])
    {
      [v18 aa:v31 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
    }

    else
    {
      if (qword_1ED9550A8 != -1)
      {
        swift_once();
      }

      v34 = sub_1DF5647B4();
      __swift_project_value_buffer(v34, qword_1ED9550B0);
      v35 = v18;
      v36 = sub_1DF564794();
      v37 = sub_1DF564C24();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v35;
        *v39 = v35;
        v40 = v35;
        _os_log_impl(&dword_1DF47C000, v36, v37, "Unable to add authorization header to urlRequest: %@", v38, 0xCu);
        sub_1DF484888(v39);
        MEMORY[0x1E12D75F0](v39, -1, -1);
        MEMORY[0x1E12D75F0](v38, -1, -1);
      }
    }
  }

  v41 = [objc_opt_self() systemTimeZone];
  sub_1DF564584();

  sub_1DF564484();
  sub_1DF564554();
  v43 = v42;
  (*(v64 + 8))(v10, v65);
  (*(v62 + 8))(v14, v63);
  if (v43)
  {
    v44 = sub_1DF564914();

    v45 = sub_1DF564914();
    [v18 setValue:v44 forHTTPHeaderField:v45];
  }

  sub_1DF4D922C(v18);
  sub_1DF4D95EC(v18);
  v46 = *__swift_project_boxed_opaque_existential_0(v5 + 11, v5[14]);
  sub_1DF4A52C0();
  if (v47)
  {
    v48 = sub_1DF564914();

    v49 = sub_1DF564914();
    [v18 setValue:v48 forHTTPHeaderField:v49];
  }

  v50 = *__swift_project_boxed_opaque_existential_0(v5 + 11, v5[14]);
  if (sub_1DF4A5040())
  {
    v51 = sub_1DF564914();
    v52 = sub_1DF564914();
    [v18 setValue:v51 forHTTPHeaderField:v52];

    if (qword_1ED9550A8 != -1)
    {
      swift_once();
    }

    v53 = sub_1DF5647B4();
    __swift_project_value_buffer(v53, qword_1ED9550B0);
    v54 = sub_1DF564794();
    v55 = sub_1DF564C04();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1DF47C000, v54, v55, "Adding retail device header to request.", v56, 2u);
      MEMORY[0x1E12D75F0](v56, -1, -1);
    }
  }

  if (os_variant_has_internal_ui())
  {
    v69[3] = &type metadata for FeatureFlag;
    v69[4] = sub_1DF481614();
    LOBYTE(v69[0]) = 4;
    v57 = sub_1DF5645A4();
    __swift_destroy_boxed_opaque_existential_0(v69);
    if (v57)
    {
      v58 = sub_1DF564914();
      v59 = sub_1DF564914();
      [v18 setValue:v58 forHTTPHeaderField:v59];
    }
  }

  if (v67 != 2)
  {
    sub_1DF4B9704(v66, v67);
    v60 = sub_1DF564914();

    v61 = sub_1DF564914();
    [v18 setValue:v60 forHTTPHeaderField:v61];
  }

  sub_1DF564094();
}

void sub_1DF4D922C(void *a1)
{
  v2 = v1;
  v4 = __swift_project_boxed_opaque_existential_0((v1 + 48), *(v1 + 72));
  v5 = *__swift_project_boxed_opaque_existential_0(v4, v4[3]);
  if (sub_1DF4AADE8())
  {
    if (qword_1ED9550A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF5647B4();
    __swift_project_value_buffer(v6, qword_1ED9550B0);
    v7 = sub_1DF564794();
    v8 = sub_1DF564C44();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1DF47EF6C(0x696B726F7774656ELL, 0xED000074732E676ELL, &v26);
      _os_log_impl(&dword_1DF47C000, v7, v8, "Including device capability header in request %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v11 = &unk_1F5A88398;
  }

  else
  {
    if (qword_1ED9550A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF5647B4();
    __swift_project_value_buffer(v12, qword_1ED9550B0);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DF47C000, v13, v14, "Not including CT device capability header in request", v15, 2u);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }

    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = __swift_project_boxed_opaque_existential_0((v2 + 48), *(v2 + 72));
  if (*(*__swift_project_boxed_opaque_existential_0(v16, v16[3]) + 16) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DF4A9DAC(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      v11 = sub_1DF4A9DAC((v17 > 1), v18 + 1, 1, v11);
      v17 = *(v11 + 3);
      v19 = v17 >> 1;
    }

    *(v11 + 2) = v20;
    v21 = &v11[16 * v18];
    *(v21 + 4) = 0x6C6C2E64756F6C63;
    *(v21 + 5) = 0xE90000000000006DLL;
    v22 = v18 + 2;
    if (v19 < v22)
    {
      v11 = sub_1DF4A9DAC((v17 > 1), v22, 1, v11);
    }

    *(v11 + 2) = v22;
    v23 = &v11[16 * v20];
    *(v23 + 4) = 7171180;
    *(v23 + 5) = 0xE300000000000000;
  }

  v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF4A9C0C();
  sub_1DF5648C4();

  v24 = sub_1DF564914();

  v25 = sub_1DF564914();
  [a1 setValue:v24 forHTTPHeaderField:v25];
}

void sub_1DF4D95EC(void *a1)
{
  v2 = sub_1DF4D8738();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF4A9DAC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6C2E64756F6C63;
  *(v5 + 5) = 0xE90000000000006DLL;
  sub_1DF4FCB98(&unk_1F5A883C8);
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF4A9C0C();
  sub_1DF5648C4();

  v6 = sub_1DF564914();

  v7 = sub_1DF564914();
  [a1 setValue:v6 forHTTPHeaderField:{v7, v8}];
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1DF4D977C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DF4D97C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *WaitlistCache.__allocating_init(defaults:bootSessionID:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  if (a1)
  {
    result[2] = a1;
    result[3] = a2;
    result[4] = a3;
    result[5] = a4;
    result[6] = a5;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_1DF4D98C4()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0x73736553746F6F62;
  v4 = 0x44495344746C61;
  if (v1 != 3)
  {
    v4 = 0x7974726964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656863746566;
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

uint64_t sub_1DF4D9964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF4DC014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF4D998C(uint64_t a1)
{
  v2 = sub_1DF4DA1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4D99C8(uint64_t a1)
{
  v2 = sub_1DF4DA1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WaitlistCacheBox.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D68, &qword_1DF568EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4DA1D8();
  sub_1DF5652A4();
  v22 = *v3;
  v21[7] = 0;
  type metadata accessor for WaitlistResult();
  sub_1DF4DA890(&qword_1ECE37730, type metadata accessor for WaitlistResult);
  sub_1DF565074();
  if (!v2)
  {
    v11 = type metadata accessor for WaitlistCacheBox();
    v12 = v11[5];
    v21[6] = 1;
    sub_1DF564494();
    sub_1DF4DA890(&qword_1ED955120, MEMORY[0x1E6969530]);
    sub_1DF565074();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v21[5] = 2;
    sub_1DF565054();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v21[4] = 3;
    sub_1DF565024();
    v19 = *(v3 + v11[8]);
    v21[3] = 4;
    sub_1DF565064();
  }

  return (*(v6 + 8))(v9, v5);
}

void WaitlistCacheBox.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1DF564494();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D70, &qword_1DF568EB8);
  v29 = *(v31 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for WaitlistCacheBox();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1DF4DA1D8();
  v30 = v10;
  sub_1DF565284();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v17 = v29;
    type metadata accessor for WaitlistResult();
    v37 = 0;
    sub_1DF4DA890(&qword_1ED954AD8, type metadata accessor for WaitlistResult);
    sub_1DF564FE4();
    v18 = v38;
    *v14 = v38;
    v36 = 1;
    sub_1DF4DA890(&qword_1ED955C88, MEMORY[0x1E6969530]);
    sub_1DF564FE4();
    v26 = v18;
    (*(v28 + 32))(&v14[v11[5]], v7, v4);
    v35 = 2;
    v19 = sub_1DF564FC4();
    v20 = &v14[v11[6]];
    *v20 = v19;
    v20[1] = v21;
    v34 = 3;
    v22 = sub_1DF564F84();
    v23 = &v14[v11[7]];
    *v23 = v22;
    v23[1] = v24;
    v33 = 4;
    v25 = sub_1DF564FD4();
    (*(v17 + 8))(v30, v31);
    v14[v11[8]] = v25 & 1;
    sub_1DF4DA278(v14, v27);
    __swift_destroy_boxed_opaque_existential_0(v32);
    sub_1DF4DA2DC(v14);
  }
}

void *WaitlistCache.init(defaults:bootSessionID:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5[2] = a1;
    v5[3] = a2;
    v5[4] = a3;
    v5[5] = a4;
    v5[6] = a5;
  }

  else
  {

    type metadata accessor for WaitlistCache();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

unint64_t sub_1DF4DA1D8()
{
  result = qword_1ED954928;
  if (!qword_1ED954928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954928);
  }

  return result;
}

uint64_t type metadata accessor for WaitlistCacheBox()
{
  result = qword_1ED954EB8;
  if (!qword_1ED954EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF4DA278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitlistCacheBox();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4DA2DC(uint64_t a1)
{
  v2 = type metadata accessor for WaitlistCacheBox();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF4DA35C()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF564914();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1DF564374();
  v6 = v5;

  v7 = sub_1DF564144();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DF564134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D78, &qword_1DF568EC0);
  sub_1DF4DA7F4(&qword_1ED9546A0, &qword_1ED954910);
  sub_1DF564124();

  sub_1DF48C308(v4, v6);
  return v11;
}

uint64_t sub_1DF4DA4C8(uint64_t a1)
{
  v3 = sub_1DF5641C4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DF5641B4();
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D78, &qword_1DF568EC0);
  sub_1DF4DA7F4(&qword_1ECE374B8, &qword_1ECE37710);
  v6 = sub_1DF5641A4();
  v8 = v7;

  v9 = *(v1 + 16);
  v10 = sub_1DF564354();
  v11 = sub_1DF564914();
  [v9 setObject:v10 forKey:v11];

  return sub_1DF48C308(v6, v8);
}

uint64_t sub_1DF4DA7F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37D78, &qword_1DF568EC0);
    sub_1DF4DA890(a2, type metadata accessor for WaitlistCacheBox);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4DA890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_1DF4DA8D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1DF4DA35C();
  return sub_1DF4DA920;
}

uint64_t sub_1DF4DA920(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1DF4DA4C8(*a1);
  }

  v4 = *a1;

  sub_1DF4DA4C8(v5);
}

uint64_t sub_1DF4DA984(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WaitlistCacheBox();
  v8 = (v7 - 8);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DF4DACD0(a1);
  v13 = v12 + v8[7];
  sub_1DF564474();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  *v12 = a1;
  v16 = (v12 + v8[8]);
  *v16 = v14;
  v16[1] = v15;
  v17 = (v12 + v8[9]);
  *v17 = a2;
  v17[1] = a3;
  *(v12 + v8[10]) = 0;

  v18 = a1;

  v19 = sub_1DF4DA35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AA8, &qword_1DF567EA0);
  v20 = *(v9 + 72);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DF567CF0;
  sub_1DF4DA278(v12, v22 + v21);
  v37 = v19;
  sub_1DF4FCD7C(v22);
  sub_1DF4DA4C8(v37);
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v23 = sub_1DF5647B4();
  __swift_project_value_buffer(v23, qword_1ED956088);
  v24 = v18;
  v25 = sub_1DF564794();
  v26 = sub_1DF564C44();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136446466;
    v29 = MEMORY[0x1E12D6370](*&v24[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs], MEMORY[0x1E69E6158]);
    v31 = sub_1DF47EF6C(v29, v30, &v38);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = (*&v24[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
    swift_beginAccess();
    v34 = *v32;
    v33 = v32[1];

    v35 = sub_1DF47EF6C(v34, v33, &v38);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_1DF47C000, v25, v26, "Cached new waitlist result: %{public}s - %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v27, -1, -1);
  }

  return sub_1DF4DA2DC(v12);
}

void sub_1DF4DACD0(char *a1)
{
  v4 = type metadata accessor for WaitlistCacheBox();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v44 - v8);
  v44 = v1;
  v45 = a1;
  v10 = *&a1[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs];
  v11 = sub_1DF4DA35C();
  v47 = *(v11 + 16);
  if (v47)
  {
    v12 = 0;
    v46 = v10 + 5;
    v13 = MEMORY[0x1E69E7CC0];
    while (v12 < *(v11 + 16))
    {
      v15 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v16 = *(v48 + 72);
      sub_1DF4DA278(v11 + v15 + v16 * v12, v9);
      v17 = *(*v9 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs);
      v18 = v17[2];
      v2 = v10;
      if (v18 == v10[2])
      {
        if (v18)
        {
          v14 = v17 == v10;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v22 = v17 + 5;
          v23 = v46;
          while (v18)
          {
            v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
            if (!v24 && (sub_1DF5650D4() & 1) == 0)
            {
              goto LABEL_12;
            }

            v22 += 2;
            v23 += 2;
            if (!--v18)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:
        sub_1DF4DA2DC(v9);
      }

      else
      {
LABEL_12:
        sub_1DF4DBC78(v9, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCEB0(0, *(v13 + 16) + 1, 1);
          v13 = v50;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DF4BCEB0(v20 > 1, v21 + 1, 1);
          v13 = v50;
        }

        *(v13 + 16) = v21 + 1;
        sub_1DF4DBC78(v49, v13 + v15 + v21 * v16);
      }

      ++v12;
      v10 = v2;
      if (v12 == v47)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    swift_once();
    v28 = sub_1DF5647B4();
    __swift_project_value_buffer(v28, qword_1ED956088);
    v29 = v45;
    v30 = v2;
    v31 = sub_1DF564794();
    v32 = sub_1DF564C24();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543618;
      *(v33 + 4) = v29;
      *v34 = v29;
      *(v33 + 12) = 2114;
      v35 = v29;
      v36 = v2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      v34[1] = v37;
      _os_log_impl(&dword_1DF47C000, v31, v32, "Unable to encode waitlist result %{public}@: %{public}@", v33, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F10, &qword_1DF567510);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v34, -1, -1);
      MEMORY[0x1E12D75F0](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v25 = sub_1DF5641C4();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1DF5641B4();
    v50 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D78, &qword_1DF568EC0);
    sub_1DF4DA7F4(&qword_1ECE374B8, &qword_1ECE37710);
    v38 = sub_1DF5641A4();
    v40 = v39;

    v41 = *(v44 + 16);
    v42 = sub_1DF564354();
    v43 = sub_1DF564914();
    [v41 setObject:v42 forKey:v43];

    sub_1DF48C308(v38, v40);
  }
}

uint64_t sub_1DF4DB1D4()
{
  v1 = type metadata accessor for WaitlistCacheBox();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  v9 = sub_1DF4DA35C();
  v10 = *(v9 + 16);
  if (v10)
  {
    v26[2] = v0;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCEB0(0, v10, 0);
    v11 = v27;
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v26[1] = v9;
    v13 = v9 + v12;
    v14 = *(v2 + 72);
    do
    {
      sub_1DF4DA278(v13, v6);
      v15 = *v6;
      v16 = v1[5];
      v17 = sub_1DF564494();
      (*(*(v17 - 8) + 32))(&v8[v16], &v6[v16], v17);
      v18 = v1[6];
      v19 = v1[7];
      v21 = *&v6[v18];
      v20 = *&v6[v18 + 8];
      *v8 = v15;
      v22 = &v8[v18];
      *v22 = v21;
      *(v22 + 1) = v20;
      *&v8[v1[7]] = *&v6[v19];
      v8[v1[8]] = 1;
      v27 = v11;
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DF4BCEB0(v23 > 1, v24 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v24 + 1;
      sub_1DF4DBC78(v8, v11 + v12 + v24 * v14);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  return sub_1DF4DA4C8(v11);
}

void sub_1DF4DB408()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF564914();
  [v1 setURL:0 forKey:v2];
}

uint64_t WaitlistCache.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t WaitlistCache.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DF4DB4FC(int a1, int a2)
{
  v84 = a2;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D88, &qword_1DF5690A8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v75 - v7;
  v82 = type metadata accessor for WaitlistCacheBox();
  v8 = *(v82 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v81 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v76 = &v75 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = (&v75 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v75 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v75 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v26;
  v87 = v2;
  result = sub_1DF4DA35C();
  v29 = result;
  v30 = *(result + 16);
  v89 = v8;
  v86 = v30;
  if (v30)
  {
    v31 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v82;
    v83 = v25;
    while (v31 < *(v29 + 16))
    {
      v34 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v35 = *(v8 + 72);
      sub_1DF4DA278(v29 + v34 + v35 * v31, v27);
      v36 = &v27[*(v33 + 24)];
      v37 = *v36 == *(v87 + 24) && *(v36 + 1) == *(v87 + 32);
      if (v37 || (sub_1DF5650D4() & 1) != 0 || (v80 & 1) != 0)
      {
        sub_1DF4DBC78(v27, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCEB0(0, *(v32 + 16) + 1, 1);
          v33 = v82;
          v32 = v90;
        }

        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1DF4BCEB0(v39 > 1, v40 + 1, 1);
          v33 = v82;
          v32 = v90;
        }

        *(v32 + 16) = v40 + 1;
        v41 = v32 + v34 + v40 * v35;
        v25 = v83;
        result = sub_1DF4DBC78(v83, v41);
        v8 = v89;
      }

      else
      {
        result = sub_1DF4DA2DC(v27);
      }

      if (v86 == ++v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v32 = MEMORY[0x1E69E7CC0];
  v33 = v82;
LABEL_18:

  v42 = *(v32 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    while (v43 < *(v32 + 16))
    {
      v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v46 = *(v8 + 72);
      sub_1DF4DA278(v32 + v45 + v46 * v43, v22);
      if (v22[*(v33 + 32)] == 1 && (v84 & 1) == 0)
      {
        result = sub_1DF4DA2DC(v22);
      }

      else
      {
        sub_1DF4DBC78(v22, v85);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v44;
        if ((v47 & 1) == 0)
        {
          sub_1DF4BCEB0(0, *(v44 + 16) + 1, 1);
          v33 = v82;
          v44 = v90;
        }

        v49 = *(v44 + 16);
        v48 = *(v44 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1DF4BCEB0(v48 > 1, v49 + 1, 1);
          v33 = v82;
          v44 = v90;
        }

        *(v44 + 16) = v49 + 1;
        result = sub_1DF4DBC78(v85, v44 + v45 + v49 * v46);
        v8 = v89;
      }

      if (v42 == ++v43)
      {
        goto LABEL_31;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v87 = *(v44 + 16);
  if (!v87)
  {

    v70 = v78;
    (*(v8 + 56))(v78, 1, 1, v33);
    v71 = v33;
LABEL_48:
    v69 = v79;
LABEL_49:
    sub_1DF4DC1C4(v70, v69);
    if ((*(v8 + 48))(v69, 1, v71) == 1)
    {
      sub_1DF47E5B4(v69, &qword_1ECE37D88, &qword_1DF5690A8);
      return 0;
    }

    else
    {
      v74 = *v69;
      sub_1DF4DA2DC(v69);
      return v74;
    }
  }

  v50 = 0;
  while (v50 < *(v44 + 16))
  {
    v51 = v88;
    v52 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v53 = v44 + v52;
    v54 = *(v89 + 72);
    sub_1DF4DA278(v44 + v52 + v54 * v50, v88);
    v55 = *(*v51 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    v56 = type metadata accessor for TicketStatus();
    v57 = objc_allocWithZone(v56);
    v58 = v55;
    result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (!result)
    {
      goto LABEL_57;
    }

    v59 = result;
    v60 = sub_1DF564CD4();

    if (v60)
    {

      v72 = v88;
      v73 = v77;
LABEL_47:
      sub_1DF4DBC78(v72, v73);
      v70 = v78;
      sub_1DF4DBC78(v73, v78);
      v8 = v89;
      v71 = v82;
      (*(v89 + 56))(v70, 0, 1, v82);
      goto LABEL_48;
    }

    ++v50;
    result = sub_1DF4DA2DC(v88);
    if (v87 == v50)
    {
      v61 = 0;
      v62 = v44 + v52;
      while (v61 < *(v44 + 16))
      {
        v63 = v81;
        sub_1DF4DA278(v62, v81);
        v64 = *(*v63 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
        v65 = objc_allocWithZone(v56);
        v66 = v64;
        result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
        if (!result)
        {
          goto LABEL_58;
        }

        v67 = result;
        v68 = sub_1DF564CD4();

        if (v68)
        {

          v72 = v81;
          v73 = v76;
          goto LABEL_47;
        }

        ++v61;
        result = sub_1DF4DA2DC(v81);
        v62 += v54;
        if (v87 == v61)
        {
          v69 = v79;
          if (!*(v44 + 16))
          {
            goto LABEL_56;
          }

          v70 = v78;
          sub_1DF4DA278(v53, v78);

          v8 = v89;
          v71 = v82;
          (*(v89 + 56))(v70, 0, 1, v82);
          goto LABEL_49;
        }
      }

      goto LABEL_55;
    }
  }

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
  return result;
}

uint64_t sub_1DF4DBC78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitlistCacheBox();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DF4DBD04()
{
  type metadata accessor for WaitlistResult();
  if (v0 <= 0x3F)
  {
    sub_1DF564494();
    if (v1 <= 0x3F)
    {
      sub_1DF482924();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DF4DBF10()
{
  result = qword_1ECE37D80;
  if (!qword_1ECE37D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37D80);
  }

  return result;
}

unint64_t sub_1DF4DBF68()
{
  result = qword_1ED954918;
  if (!qword_1ED954918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954918);
  }

  return result;
}

unint64_t sub_1DF4DBFC0()
{
  result = qword_1ED954920;
  if (!qword_1ED954920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954920);
  }

  return result;
}

uint64_t sub_1DF4DC014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736553746F6F62 && a2 == 0xED000044496E6F69 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974726964 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF4DC1C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D88, &qword_1DF5690A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CloudSubscriptionFeatures::TicketManagerError_optional __swiftcall TicketManagerError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DF4DC264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4E5654();
  v5 = sub_1DF4995C8();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1DF4DC2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DF564914();
  v8 = [v6 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v9 = sub_1DF47E8A4();
  v11 = v10;
  type metadata accessor for WaitlistCache();
  v12 = swift_allocObject();
  if (v8)
  {
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v11;
    v12[5] = a3;
    v12[6] = a4;

    v13 = sub_1DF4DB4FC(0, 0);

    return v13;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t static TicketManager.signupForWaitlist(featureID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4E5754;

  return (sub_1DF4E3FF0)(a1, a2);
}

uint64_t sub_1DF4DC61C(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4E5740;

  return sub_1DF4E3FF0(v3, v5);
}

uint64_t static TicketManager.getWaitlistStatus(featureID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF490980;

  return (sub_1DF4E44A4)(a1, a2);
}

uint64_t sub_1DF4DC924(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4DC9F4;

  return sub_1DF4E44A4(v3, v5);
}

uint64_t sub_1DF4DC9F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_1DF5642E4();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1DF4DCB98(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = sub_1DF564704();
  v3[118] = v4;
  v5 = *(v4 - 8);
  v3[119] = v5;
  v6 = *(v5 + 64) + 15;
  v3[120] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4DCC60, 0, 0);
}

char *sub_1DF4DCC60()
{
  v190 = v0;
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = OBJC_IVAR___CSFTicketManager_signposter;
  v0[121] = OBJC_IVAR___CSFTicketManager_signposter;
  v6 = (v2 + v5);
  __swift_project_boxed_opaque_existential_0((v2 + v5), *(v2 + v5 + 24));
  sub_1DF564724();
  sub_1DF5646E4();
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v7 = sub_1DF487DC4(0, v1, 0, 0);
  v0[122] = v7;
  v8 = *(v2 + OBJC_IVAR___CSFTicketManager_getTicketMock + 8);
  v9 = (*(v2 + OBJC_IVAR___CSFTicketManager_getTicketMock))(v4, v3);
  if (v9)
  {
    v10 = v9;
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_1DF48AD44(0, v7, 0xD000000000000012, 0x80000001DF572070);
    v11 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
    v12 = *(*&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
    if (v12)
    {
      v182 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
      v183 = v10;
      v188 = 0x80000001DF570800;
      v13 = 0;
      v2 = ( + 40);
      while (1)
      {
        v16 = *(v2 - 1);
        v15 = *v2;
        v17 = v16 == 0x6C6C2E64756F6C63 && v15 == 0xE90000000000006DLL;
        if (v17 || (v18 = *(v2 - 1), v19 = *v2, (sub_1DF5650D4() & 1) != 0))
        {
          if (v13 && (v13 & 1) != 0)
          {
            goto LABEL_6;
          }

          v14 = 1;
          goto LABEL_5;
        }

        v20 = v16 == 0xD000000000000018 && 0x80000001DF5707C0 == v15;
        if (v20 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v13 && (v13 & 2) != 0)
          {
            goto LABEL_6;
          }

          v14 = 2;
          goto LABEL_5;
        }

        if (v16 == 0xD00000000000001CLL && 0x80000001DF570800 == v15 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v16 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v15) && (sub_1DF5650D4() & 1) == 0)
        {
          v21 = qword_1ED956018;

          if (v21 != -1)
          {
            swift_once();
          }

          v22 = sub_1DF5647B4();
          __swift_project_value_buffer(v22, qword_1ED956020);

          oslog = sub_1DF564794();
          v23 = sub_1DF564C24();

          v178 = v23;
          if (os_log_type_enabled(oslog, v23))
          {
            v24 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v189 = v177;
            *v24 = 136446210;
            v25 = sub_1DF47EF6C(v16, v15, &v189);

            *(v24 + 4) = v25;
            _os_log_impl(&dword_1DF47C000, oslog, v178, "Unable to determine returned feature: %{public}s", v24, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v177);
            MEMORY[0x1E12D75F0](v177, -1, -1);
            MEMORY[0x1E12D75F0](v24, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }

        if (!v13 || (v13 & 8) == 0)
        {
          v14 = 8;
LABEL_5:
          v13 |= v14;
        }

LABEL_6:
        v2 += 2;
        if (!--v12)
        {

          v11 = v182;
          v10 = v183;
          goto LABEL_48;
        }
      }

      if (v13 && (v13 & 4) != 0)
      {
        goto LABEL_6;
      }

      v14 = 4;
      goto LABEL_5;
    }

    v13 = 0;
LABEL_48:
    v41 = v0[116];

    v42 = v11;
    v43 = MobileGestalt_get_current_device();
    if (v43)
    {
      v44 = v43;
      v45 = v0 + 42;
      v46 = v0 + 90;
      v47 = MobileGestalt_copy_regionCode_obj();

      if (v47)
      {
        v48 = sub_1DF564944();
        v50 = v49;

        if (v48 == 18499 && v50 == 0xE200000000000000)
        {

          LOBYTE(v47) = 1;
        }

        else
        {
          LOBYTE(v47) = sub_1DF5650D4();
        }
      }

      v51 = v0[116];
      v52 = v0[115];
      *(v0 + 360) = 256;
      v0[91] = v52;
      v0[92] = v51;
      v0[93] = v42;
      v0[94] = v13;
      *(v0 + 380) = 0;
      v0[96] = 0;
      *(v0 + 776) = v47 & 1;
LABEL_55:
      v53 = v46[1];
      *v45 = *v46;
      v45[1] = v53;
      v45[2] = v46[2];
      *(v45 + 41) = *(v46 + 41);
LABEL_56:
      sub_1DF4E28F8(v45, sub_1DF47FD50);

      sub_1DF4E4A80(v46);
      (*(v0[119] + 8))(v0[120], v0[118]);

      v54 = v0[1];

      return v54(v10);
    }

    __break(1u);
    goto LABEL_196;
  }

  v26 = v0[117] + OBJC_IVAR___CSFTicketManager_getCachedFeature;
  v27 = *(v26 + 8);
  v28 = (*v26)(v0[115], v0[116]);
  if (v28)
  {
    v2 = v28;
    v29 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    if (*(v2 + v29) == 1)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v30 = v0[116];
      v31 = sub_1DF5647B4();
      __swift_project_value_buffer(v31, qword_1ECE377B8);

      v32 = sub_1DF564794();
      v33 = sub_1DF564C44();

      v183 = v31;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[116];
        v35 = v0;
        v36 = v0[115];
        v37 = swift_slowAlloc();
        v38 = v7;
        v39 = swift_slowAlloc();
        v189 = v39;
        *v37 = 136446210;
        *(v37 + 4) = sub_1DF47EF6C(v36, v34, &v189);
        _os_log_impl(&dword_1DF47C000, v32, v33, "Found active feature for feature ID %{public}s, returning .active ticket.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v40 = v39;
        v7 = v38;
        MEMORY[0x1E12D75F0](v40, -1, -1);
        MEMORY[0x1E12D75F0](v37, -1, -1);
      }

      else
      {
        v35 = v0;
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(0, v7, 0xD000000000000019, 0x80000001DF572050);
      v188 = type metadata accessor for TicketStatus();
      objc_allocWithZone(v188);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (result)
      {
        v10 = result;
        v121 = v35[116];
        v122 = v35[115];
        v35[102] = v122;
        v13 = v35;
        v35[103] = v121;

        if (v122 == 0x6C6C2E64756F6C63 && v121 == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
        {
          v123 = 1;
          v0 = v35;
          goto LABEL_157;
        }

        v0 = v35;
        if (v35[115] == 0xD000000000000018 && 0x80000001DF5707C0 == v121 || (v151 = v35[116], (sub_1DF5650D4() & 1) != 0))
        {
          v123 = 2;
          goto LABEL_157;
        }

        v155 = v35[115];
        if (v155 == 0xD00000000000001CLL && 0x80000001DF570800 == v121 || (v156 = v35[116], v157 = v35[115], (sub_1DF5650D4() & 1) != 0))
        {
          v123 = 4;
          goto LABEL_157;
        }

        if (v155 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v121 || (v158 = v35[116], v159 = v35[115], (sub_1DF5650D4() & 1) != 0))
        {
          v123 = 8;
          goto LABEL_157;
        }

        v160 = v35[116];
        v161 = qword_1ED956018;

        if (v161 == -1)
        {
LABEL_191:
          __swift_project_value_buffer(v183, qword_1ED956020);

          v162 = sub_1DF564794();
          v163 = sub_1DF564C24();

          v164 = os_log_type_enabled(v162, v163);
          v165 = v0[116];
          if (v164)
          {
            v166 = v0[115];
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v189 = v168;
            *v167 = 136446210;
            v169 = sub_1DF47EF6C(v166, v165, &v189);

            *(v167 + 4) = v169;
            _os_log_impl(&dword_1DF47C000, v162, v163, "Unable to determine returned feature: %{public}s", v167, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v168);
            MEMORY[0x1E12D75F0](v168, -1, -1);
            v0 = v13;
            MEMORY[0x1E12D75F0](v167, -1, -1);
          }

          else
          {
          }

          v123 = 0;
LABEL_157:
          v124 = v0[116];
          sub_1DF4BF4C8((v0 + 102));

          result = MobileGestalt_get_current_device();
          if (result)
          {
            v125 = result;
            v45 = v0 + 34;
            v46 = v0 + 82;
            v126 = MobileGestalt_copy_regionCode_obj();

            if (v126)
            {
              v127 = sub_1DF564944();
              v129 = v128;

              if (v127 == 18499 && v129 == 0xE200000000000000)
              {

                LOBYTE(v126) = 1;
              }

              else
              {
                LOBYTE(v126) = sub_1DF5650D4();
              }

              v0 = v13;
            }

            v137 = v0[116];
            v138 = v0[115];
            *(v0 + 328) = 256;
            v0[83] = v138;
            v0[84] = v137;
            v0[85] = v10;
            v0[86] = v123;
            *(v0 + 696) = 0;
            *(v0 + 697) = 2;
            v0[88] = 0;
            *(v0 + 712) = v126 & 1;
            v139 = v46[1];
            *v45 = *v46;
            v45[1] = v139;
            v45[2] = v46[2];
            *(v45 + 41) = *(v46 + 41);
            objc_allocWithZone(v188);
            result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
            if (result)
            {
              v140 = result;
              v141 = v0[116];
              v142 = v0[115];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
              v143 = swift_allocObject();
              *(v143 + 16) = xmmword_1DF567CF0;
              *(v143 + 32) = v142;
              *(v143 + 40) = v141;
              v144 = type metadata accessor for WaitlistResult();
              v145 = objc_allocWithZone(v144);
              v146 = &v145[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
              *v146 = 0;
              *(v146 + 1) = 0;
              *&v145[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v140;
              *&v145[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v143;
              v0[112] = v145;
              v0[113] = v144;

              v147 = v140;
              v10 = objc_msgSendSuper2(v0 + 56, sel_init);

              goto LABEL_56;
            }

            goto LABEL_200;
          }

LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

LABEL_196:
        swift_once();
        v170 = v0[116];
        goto LABEL_191;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }
  }

  v56 = v0[117] + OBJC_IVAR___CSFTicketManager_getCachedTicket;
  v57 = *(v56 + 8);
  v58 = (*v56)(v0[115], v0[116]);
  v0[123] = v58;
  if (v58)
  {
    v10 = v58;
    v59 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
    v60 = *(v58 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    v61 = type metadata accessor for TicketStatus();
    objc_allocWithZone(v61);
    v62 = v60;
    result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
    if (!result)
    {
      __break(1u);
      goto LABEL_198;
    }

    v63 = result;
    v64 = sub_1DF564CD4();

    if (v64)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v65 = v0[116];
      osloga = sub_1DF5647B4();
      __swift_project_value_buffer(osloga, qword_1ECE377B8);

      v66 = sub_1DF564794();
      v67 = sub_1DF564C44();

      v186 = v0;
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v0[116];
        v69 = v10;
        v70 = v0[115];
        v71 = v7;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v189 = v73;
        *v72 = 136446210;
        v74 = v70;
        v10 = v69;
        *(v72 + 4) = sub_1DF47EF6C(v74, v68, &v189);
        _os_log_impl(&dword_1DF47C000, v66, v67, "Found enqueued ticket for feature ID %{public}s, returning .enqueued ticket.", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x1E12D75F0](v73, -1, -1);
        v75 = v72;
        v7 = v71;
        MEMORY[0x1E12D75F0](v75, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(0, v7, 0xD00000000000001FLL, 0x80000001DF572030);
      objc_allocWithZone(v61);
      result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
      if (!result)
      {
        goto LABEL_201;
      }

      v76 = result;
      v0 = v186;
      v45 = v186 + 26;
      v46 = v186 + 74;
      v77 = *(*&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v77)
      {
        v78 = 0;
LABEL_174:
        v148 = v0[116];
        v149 = v0[115];

        v150 = sub_1DF4A57C0();
        *(v0 + 296) = 256;
        v0[75] = v149;
        v0[76] = v148;
        v0[77] = v76;
        v0[78] = v78;
        *(v0 + 632) = 0;
        *(v0 + 633) = 1;
        v0[80] = 0;
        *(v0 + 648) = v150 & 1;
        goto LABEL_55;
      }

      v184 = v10;
      v78 = 0;
      v79 = ( + 40);
      while (1)
      {
        v82 = *(v79 - 1);
        v81 = *v79;
        v83 = v82 == 0x6C6C2E64756F6C63 && v81 == 0xE90000000000006DLL;
        if (v83 || (v84 = *(v79 - 1), v85 = *v79, (sub_1DF5650D4() & 1) != 0))
        {
          if (v78 && (v78 & 1) != 0)
          {
            goto LABEL_72;
          }

          v80 = 1;
          goto LABEL_71;
        }

        v86 = v82 == 0xD000000000000018 && 0x80000001DF5707C0 == v81;
        if (v86 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v78 && (v78 & 2) != 0)
          {
            goto LABEL_72;
          }

          v80 = 2;
          goto LABEL_71;
        }

        if (v82 == 0xD00000000000001CLL && 0x80000001DF570800 == v81 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v82 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v81) && (sub_1DF5650D4() & 1) == 0)
        {
          v87 = qword_1ED956018;

          if (v87 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(osloga, qword_1ED956020);

          log = sub_1DF564794();
          v88 = sub_1DF564C24();

          v173 = v88;
          if (os_log_type_enabled(log, v88))
          {
            v89 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            v189 = v171;
            *v89 = 136446210;
            v90 = sub_1DF47EF6C(v82, v81, &v189);

            *(v89 + 4) = v90;
            _os_log_impl(&dword_1DF47C000, log, v173, "Unable to determine returned feature: %{public}s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v171);
            MEMORY[0x1E12D75F0](v171, -1, -1);
            MEMORY[0x1E12D75F0](v89, -1, -1);
          }

          else
          {
          }

          goto LABEL_72;
        }

        if (!v78 || (v78 & 8) == 0)
        {
          v80 = 8;
LABEL_71:
          v78 |= v80;
        }

LABEL_72:
        v79 += 2;
        if (!--v77)
        {

          v0 = v186;
          v10 = v184;
          goto LABEL_174;
        }
      }

      if (v78 && (v78 & 4) != 0)
      {
        goto LABEL_72;
      }

      v80 = 4;
      goto LABEL_71;
    }

    v91 = *&v10[v59];
    objc_allocWithZone(v61);
    v92 = v91;
    result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (!result)
    {
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      return result;
    }

    v93 = result;
    v94 = sub_1DF564CD4();

    if (v94)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v95 = v0[116];
      oslogb = sub_1DF5647B4();
      __swift_project_value_buffer(oslogb, qword_1ECE377B8);

      v96 = sub_1DF564794();
      v97 = sub_1DF564C24();

      v187 = v0;
      if (os_log_type_enabled(v96, v97))
      {
        v98 = v0[116];
        v99 = v10;
        v100 = v0[115];
        v101 = v7;
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v189 = v103;
        *v102 = 136446210;
        v104 = v100;
        v10 = v99;
        *(v102 + 4) = sub_1DF47EF6C(v104, v98, &v189);
        _os_log_impl(&dword_1DF47C000, v96, v97, "Found active ticket for feature ID %{public}s, returning .active ticket. There was no cached feature so this is unexpected.", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x1E12D75F0](v103, -1, -1);
        v105 = v102;
        v7 = v101;
        MEMORY[0x1E12D75F0](v105, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(0, v7, 0xD00000000000001DLL, 0x80000001DF572010);
      objc_allocWithZone(v61);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (!result)
      {
        goto LABEL_203;
      }

      v106 = result;
      v0 = v187;
      v45 = v187 + 18;
      v46 = v187 + 66;
      v107 = *(*&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v107)
      {
        v108 = 0;
LABEL_181:
        v152 = v0[116];
        v153 = v0[115];

        v154 = sub_1DF4A57C0();
        *(v0 + 264) = 256;
        v0[67] = v153;
        v0[68] = v152;
        v0[69] = v106;
        v0[70] = v108;
        *(v0 + 568) = 0;
        *(v0 + 569) = 1;
        v0[72] = 0;
        *(v0 + 584) = v154 & 1;
        goto LABEL_55;
      }

      v185 = v10;
      v108 = 0;
      v109 = ( + 40);
      while (1)
      {
        v112 = *(v109 - 1);
        v111 = *v109;
        v113 = v112 == 0x6C6C2E64756F6C63 && v111 == 0xE90000000000006DLL;
        if (v113 || (v114 = *(v109 - 1), v115 = *v109, (sub_1DF5650D4() & 1) != 0))
        {
          if (v108 && (v108 & 1) != 0)
          {
            goto LABEL_117;
          }

          v110 = 1;
          goto LABEL_116;
        }

        v116 = v112 == 0xD000000000000018 && 0x80000001DF5707C0 == v111;
        if (v116 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v108 && (v108 & 2) != 0)
          {
            goto LABEL_117;
          }

          v110 = 2;
          goto LABEL_116;
        }

        if (v112 == 0xD00000000000001CLL && 0x80000001DF570800 == v111 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v112 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v111) && (sub_1DF5650D4() & 1) == 0)
        {
          v117 = qword_1ED956018;

          if (v117 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(oslogb, qword_1ED956020);

          loga = sub_1DF564794();
          v118 = sub_1DF564C24();

          v174 = v118;
          if (os_log_type_enabled(loga, v118))
          {
            v119 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            v189 = v172;
            *v119 = 136446210;
            v120 = sub_1DF47EF6C(v112, v111, &v189);

            *(v119 + 4) = v120;
            _os_log_impl(&dword_1DF47C000, loga, v174, "Unable to determine returned feature: %{public}s", v119, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v172);
            MEMORY[0x1E12D75F0](v172, -1, -1);
            MEMORY[0x1E12D75F0](v119, -1, -1);
          }

          else
          {
          }

          goto LABEL_117;
        }

        if (!v108 || (v108 & 8) == 0)
        {
          v110 = 8;
LABEL_116:
          v108 |= v110;
        }

LABEL_117:
        v109 += 2;
        if (!--v107)
        {

          v0 = v187;
          v10 = v185;
          goto LABEL_181;
        }
      }

      if (v108 && (v108 & 4) != 0)
      {
        goto LABEL_117;
      }

      v110 = 4;
      goto LABEL_116;
    }
  }

  v130 = __swift_project_boxed_opaque_existential_0((v0[117] + OBJC_IVAR___CSFTicketManager_provider), *(v0[117] + OBJC_IVAR___CSFTicketManager_provider + 24));
  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v131 = qword_1ED954AD0;
  v0[107] = &type metadata for Device;
  v0[108] = &off_1F5A89060;
  v132 = swift_allocObject();
  v0[104] = v132;
  v132[5] = type metadata accessor for HardwareChecker();
  v132[6] = &off_1F5A89048;
  v132[2] = v131;
  v133 = *v130;

  v134 = swift_task_alloc();
  v0[124] = v134;
  *v134 = v0;
  v134[1] = sub_1DF4DE4F0;
  v135 = v0[116];
  v136 = v0[115];

  return sub_1DF50A7F4(v136, v135, (v0 + 104), v0 + 73);
}

uint64_t sub_1DF4DE4F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 992);
  v7 = *v2;
  *(*v2 + 1000) = a1;

  if (v1)
  {
    *(v3 + 74) = *(v3 + 73);
    v5 = sub_1DF4DEADC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 832));
    v5 = sub_1DF4DE614;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4DE614()
{
  v37 = v0;
  v1 = *(v0 + 984);
  v2 = (*(v0 + 936) + *(v0 + 968));
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v3 = *(v0 + 976);
  v4 = *(v0 + 1000);
  if (v1)
  {
    v5 = 0xD000000000000023;
    v6 = 0x80000001DF571FE0;
  }

  else
  {
    v6 = 0xE900000000000031;
    v5 = 0x3D73736563637573;
  }

  sub_1DF48AD44(0, v3, v5, v6);
  v7 = *(v0 + 1000);
  v8 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs];
  v35 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];

  v9 = *(v8 + 16);
  v10 = 0;
  if (v9)
  {
    v11 = (v8 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v15 = v13 == 0x6C6C2E64756F6C63 && v14 == 0xE90000000000006DLL;
      if (v15 || (v16 = *(v11 - 1), v17 = *v11, (sub_1DF5650D4() & 1) != 0))
      {
        if (v10 && (v10 & 1) != 0)
        {
          goto LABEL_8;
        }

        v12 = 1;
        goto LABEL_7;
      }

      v18 = v13 == 0xD000000000000018 && 0x80000001DF5707C0 == v14;
      if (v18 || (sub_1DF5650D4() & 1) != 0)
      {
        if (v10 && (v10 & 2) != 0)
        {
          goto LABEL_8;
        }

        v12 = 2;
        goto LABEL_7;
      }

      if (v13 == 0xD00000000000001CLL && 0x80000001DF570800 == v14 || (sub_1DF5650D4() & 1) != 0)
      {
        break;
      }

      if ((v13 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v14) && (sub_1DF5650D4() & 1) == 0)
      {
        v19 = qword_1ED956018;

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = sub_1DF5647B4();
        __swift_project_value_buffer(v20, qword_1ED956020);

        oslog = sub_1DF564794();
        v21 = sub_1DF564C24();

        v33 = v21;
        if (os_log_type_enabled(oslog, v21))
        {
          v22 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v36 = v32;
          *v22 = 136446210;
          v23 = sub_1DF47EF6C(v13, v14, &v36);

          *(v22 + 4) = v23;
          _os_log_impl(&dword_1DF47C000, oslog, v33, "Unable to determine returned feature: %{public}s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x1E12D75F0](v32, -1, -1);
          MEMORY[0x1E12D75F0](v22, -1, -1);
        }

        else
        {
        }

        goto LABEL_8;
      }

      if (!v10 || (v10 & 8) == 0)
      {
        v12 = 8;
LABEL_7:
        v10 |= v12;
      }

LABEL_8:
      v11 += 2;
      if (!--v9)
      {
        goto LABEL_42;
      }
    }

    if (v10 && (v10 & 4) != 0)
    {
      goto LABEL_8;
    }

    v12 = 4;
    goto LABEL_7;
  }

LABEL_42:
  v24 = *(v0 + 976);
  v25 = *(v0 + 928);
  v26 = *(v0 + 920);

  v27 = sub_1DF4A57C0();
  *(v0 + 464) = 256;
  *(v0 + 472) = v26;
  *(v0 + 480) = v25;
  *(v0 + 488) = v35;
  *(v0 + 496) = v10;
  *(v0 + 504) = 768;
  *(v0 + 512) = 0;
  *(v0 + 520) = v27 & 1;
  v28 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v28;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);

  sub_1DF4E4A80(v0 + 464);
  v29 = *(v0 + 1000);
  (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

  v30 = *(v0 + 8);

  return v30(v29);
}