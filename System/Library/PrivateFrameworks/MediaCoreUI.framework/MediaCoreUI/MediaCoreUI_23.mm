uint64_t sub_1C5B7F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5AE9478();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B7F5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B7FEB4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*MCUINamespace<A>.nowPlayingNamespace.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_1C59434EC();
  result = sub_1C5BC8F44();
  if (*(v4 + 8))
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = *v4;
    return sub_1C5B7F6DC;
  }

  return result;
}

void sub_1C5B7F6DC(uint64_t a1)
{
  v1 = *a1;
  *v1 = *(*a1 + 16);
  v1[8] = 0;
  sub_1C5BC8F54();

  free(v1);
}

uint64_t sub_1C5B7F734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C592D124();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B7F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59591C0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.nowPlayingNamespace.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1C5BC8F34();
  (*(*(v5 - 8) + 16))(v4, v1, v5);
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v7 = v8;
    sub_1C5924EF4(v4, &qword_1EC191938);
    return v7;
  }

  return result;
}

uint64_t sub_1C5B7F8F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    result = sub_1C5924EF4(v6, &qword_1EC191938);
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1C5B7F9F8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = sub_1C5BC8F34();
  v9 = *(*(v8 - 8) + 32);
  v9(v6, a2, v8);
  v11 = v7;
  v12 = 0;
  sub_1C59434EC();
  sub_1C5BC8F54();
  return (v9)(a2, v6, v8);
}

uint64_t EnvironmentValues.nowPlayingNamespace.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(*(v7 - 8) + 32);
  v8(v6, v2, v7);
  v10 = a1;
  v11 = 0;
  sub_1C59434EC();
  sub_1C5BC8F54();
  return (v8)(v2, v6, v7);
}

void (*EnvironmentValues.nowPlayingNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 56) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938) - 8) + 64);
  if (v3)
  {
    *(v5 + 64) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 64) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 72) = v7;
  v9 = sub_1C5BC8F34();
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  (*(v10 + 16))(v8, v1, v9);
  *(v5 + 96) = sub_1C59434EC();
  result = sub_1C5BC8F44();
  if (*(v5 + 8))
  {
    __break(1u);
  }

  else
  {
    v12 = *v5;
    sub_1C5924EF4(v8, &qword_1EC191938);
    *(v5 + 48) = v12;
    return sub_1C5B7FDA4;
  }

  return result;
}

void sub_1C5B7FDA4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  v5 = *(*(*a1 + 88) + 32);
  v5(*(*a1 + 64), *(*a1 + 56), *(*a1 + 80));
  v7 = v3[9];
  v6 = v3[10];
  v8 = (a2 & 1) == 0;
  v9 = 4;
  if (a2)
  {
    v9 = 2;
  }

  v10 = 5;
  v11 = v3[7];
  v12 = v3[8];
  if (!v8)
  {
    v10 = 3;
  }

  v3[v9] = v4;
  LOBYTE(v3[v10]) = 0;
  sub_1C5BC8F54();
  v5(v11, v12, v6);
  free(v7);
  free(v12);

  free(v3);
}

unint64_t sub_1C5B7FEB4()
{
  result = qword_1EDA45F78;
  if (!qword_1EDA45F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996C0);
    sub_1C5B7FF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F78);
  }

  return result;
}

unint64_t sub_1C5B7FF38()
{
  result = qword_1EDA45F88;
  if (!qword_1EDA45F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F88);
  }

  return result;
}

void sub_1C5B7FFB0()
{
  v1 = *(type metadata accessor for NowPlayingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1C5B7EFE8(v2);
}

uint64_t sub_1C5B80034(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1C5B80048(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1C5B80064()
{
  result = qword_1EC1996E0;
  if (!qword_1EC1996E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996C8);
    sub_1C5B800E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1996E0);
  }

  return result;
}

unint64_t sub_1C5B800E8()
{
  result = qword_1EC1996E8;
  if (!qword_1EC1996E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1996E8);
  }

  return result;
}

uint64_t sub_1C5B8013C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B801B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B801F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5B8024C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5B802E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1C5B80378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C5AB6FAC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C5AF4DD4();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = _s17DownloadContainerVMa();
    v18 = *(v11 - 8);
    sub_1C5B83DC8(v10 + *(v18 + 72) * v7, a2);
    sub_1C5AF39EC(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = _s17DownloadContainerVMa();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1C5B804C0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C5AB6FF0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C5AF500C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  sub_1C5AF73B0(v8 + *(*(v9 - 8) + 72) * v5);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1C5AF3B98(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1C5B80570(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C5AB71BC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C5AF56C8();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1C5BC7A24();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1C5AF4440(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1C5B80638()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1C5BC7A24();
  __swift_allocate_value_buffer(v3, qword_1EC1996F0);
  v4 = __swift_project_value_buffer(v3, qword_1EC1996F0);
  sub_1C5BC7A04();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_1C5B80768()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  qword_1EC199708 = result;
  return result;
}

char *sub_1C5B8079C()
{
  v1 = v0;
  v29 = *v0;
  v2 = sub_1C5BC7A24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v31 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - v9;
  *(v1 + 2) = 0xD00000000000001CLL;
  *(v1 + 3) = 0x80000001C5BFD480;
  strcpy(v1 + 32, "motion.cache");
  v1[45] = 0;
  *(v1 + 23) = -5120;
  v11 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_assetInvalidationHandlers;
  *&v1[v11] = sub_1C59AE228(MEMORY[0x1E69E7CC0]);
  v1[OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage____lazy_storage___shouldSkipFlaggingForCacheDelete] = 2;
  v33 = v8;
  sub_1C5BC7974();

  sub_1C5BC79B4();

  v12 = v3[1];
  v12(v8, v2);
  v13 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_cacheIndexLocation;
  v14 = v3[4];
  v14(&v1[OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_cacheIndexLocation], v10, v2);
  v15 = v3[2];
  v28 = v13;
  v16 = v33;
  v15(v33, &v1[v13], v2);

  sub_1C5BC79B4();

  v26[1] = v3 + 1;
  v27 = v12;
  v12(v16, v2);
  v17 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_cacheIndexFileLocation;
  v18 = v2;
  v33 = (v3 + 4);
  v30 = v14;
  v14(&v1[OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_cacheIndexFileLocation], v10, v2);
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (v20)
  {
    sub_1C5BCAE74();

    if (qword_1EC190978 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EC1996F0);
    v21 = v31;
    sub_1C5BC79B4();

    v30(&v1[OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder], v21, v18);
    v22 = v32;
    sub_1C5B80C00();
    if (v22)
    {
    }
  }

  else
  {
    sub_1C5B83E60();
    swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    swift_willThrow();

    v24 = v27;
    v27(&v1[v28], v2);
    v24(&v1[v17], v2);

    swift_deallocPartialClassInstance();
  }

  return v1;
}

void sub_1C5B80C00()
{
  v2 = v0;
  if (qword_1EC190988 != -1)
  {
    swift_once();
  }

  v3 = sub_1C5BC7D64();
  __swift_project_value_buffer(v3, qword_1EC199710);

  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4C4();

  v6 = &qword_1EC199000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    sub_1C5BC7A24();
    sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
    v9 = sub_1C5BCBD64();
    v11 = sub_1C592ADA8(v9, v10, &v22);
    v6 = &qword_1EC199000;

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C5922000, v4, v5, "Try to create cache index folder on disk at: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1C69510F0](v8, -1, -1);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  sub_1C5B831E4(v2 + v6[229]);
  if (!v1)
  {
    v12 = sub_1C5BC7D44();
    v13 = sub_1C5BCB4C4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      if (qword_1EC190978 != -1)
      {
        swift_once();
      }

      v16 = sub_1C5BC7A24();
      __swift_project_value_buffer(v16, qword_1EC1996F0);
      sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
      v17 = sub_1C5BCBD64();
      v19 = sub_1C592ADA8(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C5922000, v12, v13, "Try to create cache assets folder on disk at: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1C69510F0](v15, -1, -1);
      MEMORY[0x1C69510F0](v14, -1, -1);
    }

    if (qword_1EC190978 != -1)
    {
      swift_once();
    }

    v20 = sub_1C5BC7A24();
    v21 = __swift_project_value_buffer(v20, qword_1EC1996F0);
    sub_1C5B831E4(v21);
  }
}

uint64_t sub_1C5B80F68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_1C5BC77C4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v18 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  sub_1C5BC7774();
  sub_1C5BC7764();
  sub_1C5BC7794();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v12, v5);
  v20 = v14;
  LOBYTE(v12) = sub_1C5B82FBC(sub_1C5B83E2C, v19, a1, a2);
  v15(v14, v5);
  if (v12)
  {
    return sub_1C5BC79B4();
  }

  sub_1C5B83E60();
  swift_allocError();
  *v17 = a1;
  v17[1] = a2;
  swift_willThrow();
}

void sub_1C5B81170(uint64_t a1, int a2)
{
  v3 = v2;
  v54[3] = *MEMORY[0x1E69E9840];
  v6 = sub_1C5BC7A24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190980 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC199708;
  sub_1C5BC79F4();
  v11 = sub_1C5BCAE44();

  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v51 = a2;
    if (qword_1EC190988 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    v14 = __swift_project_value_buffer(v13, qword_1EC199710);
    (*(v7 + 16))(v9, a1, v6);
    v52 = v14;
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4C4();
    v17 = os_log_type_enabled(v15, v16);
    v53 = v10;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v50 = v3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v54[0] = v20;
      *v19 = 136315394;
      sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
      v21 = sub_1C5BCBD64();
      v23 = v22;
      (*(v7 + 8))(v9, v6);
      v24 = sub_1C592ADA8(v21, v23, v54);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v25 = sub_1C5B81760(v51);
      v27 = sub_1C592ADA8(v25, v26, v54);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1C5922000, v15, v16, "Deleting cached asset at %s. Reason: %s.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v20, -1, -1);
      v28 = v19;
      v3 = v50;
      MEMORY[0x1C69510F0](v28, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v29 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_assetInvalidationHandlers;
    swift_beginAccess();
    v30 = *(v3 + v29);
    if (*(v30 + 16) && (v31 = sub_1C5AB71BC(a1), (v32 & 1) != 0))
    {
      v33 = *(*(v30 + 56) + 8 * v31);
      v34 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v34);
      *(&v49 - 2) = a1;

      sub_1C5B802E0(sub_1C5B83D90, (&v49 - 4), v33);

      swift_beginAccess();
      sub_1C5B80570(a1);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    v35 = sub_1C5BC7994();
    v54[0] = 0;
    v36 = [v53 removeItemAtURL:v35 error:v54];

    v37 = v54[0];
    if (v36)
    {

      v38 = v37;
    }

    else
    {
      v53 = v54[0];
      v39 = v54[0];
      v40 = sub_1C5BC7914();

      swift_willThrow();
      v41 = v40;
      v42 = sub_1C5BC7D44();
      v43 = sub_1C5BCB4D4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54[0] = v45;
        *v44 = 136446210;
        swift_getErrorValue();
        v46 = sub_1C5BCBEE4();
        v48 = sub_1C592ADA8(v46, v47, v54);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1C5922000, v42, v43, "Could not delete an evicted cache asset from disk. %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1C69510F0](v45, -1, -1);
        MEMORY[0x1C69510F0](v44, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1C5B81760(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v4 = 0xD000000000000014;
    if (a1 != 1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1)
    {
      return v4;
    }

    else
    {
      return 0x7665206568636143;
    }
  }

  else
  {
    v1 = 0xD000000000000032;
    if (a1 != 5)
    {
      v1 = 0xD000000000000021;
    }

    v2 = 0xD000000000000024;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1C5B818B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage____lazy_storage___shouldSkipFlaggingForCacheDelete);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage____lazy_storage___shouldSkipFlaggingForCacheDelete) = 0;
  }

  return v1 & 1;
}

uint64_t sub_1C5B81930(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  result = sub_1C5B818B0();
  if ((result & 1) == 0)
  {
    v12 = a2;
    sub_1C5BC79F4();
    v6 = sub_1C5BCAED4();

    v7 = fsctl((v6 + 32), a3, &v12, 0);

    if (v7)
    {
      v8 = *MEMORY[0x1E696A798];
      v10 = MEMORY[0x1C694C0F0](v8, v9);
      v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      [v11 initWithDomain:v8 code:v10 userInfo:{0, v12, v13}];

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C5B81A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = sub_1C5BC7A24();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_assetInvalidationHandlers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v4 + v12);
  v14 = v30;
  *(v4 + v12) = 0x8000000000000000;
  v16 = sub_1C5AB71BC(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v12) = v14;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1C5AF56C8();
      v14 = v30;
      *(v4 + v12) = v30;
      if (v20)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    (*(v8 + 16))(v10, a1, v29);
    sub_1C5B3CD68(v16, v10, MEMORY[0x1E69E7CC0], v14);
    goto LABEL_9;
  }

  sub_1C5AF2AC8(v19, isUniquelyReferenced_nonNull_native);
  v14 = v30;
  v21 = sub_1C5AB71BC(a1);
  if ((v20 & 1) != (v22 & 1))
  {
    result = sub_1C5BCBE84();
    __break(1u);
    return result;
  }

  v16 = v21;
  *(v4 + v12) = v14;
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v12 = v14[7];
  v14 = *(v12 + 8 * v16);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 8 * v16) = v14;
  if ((v23 & 1) == 0)
  {
LABEL_14:
    v14 = sub_1C5B76A7C(0, v14[2] + 1, 1, v14);
    *(v12 + 8 * v16) = v14;
  }

  v25 = v14[2];
  v24 = v14[3];
  if (v25 >= v24 >> 1)
  {
    v14 = sub_1C5B76A7C((v24 > 1), v25 + 1, 1, v14);
    *(v12 + 8 * v16) = v14;
  }

  v14[2] = v25 + 1;
  v26 = &v14[2 * v25];
  v26[4] = sub_1C5AA3F20;
  v26[5] = v11;
  return swift_endAccess();
}

uint64_t sub_1C5B81CCC()
{
  if (qword_1EC190980 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC199708;
  sub_1C5BC79F4();
  v2 = sub_1C5BCAE44();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = sub_1C5BC7A34();
    if (v0)
    {
      sub_1C5B83EB4();
      swift_allocError();
      *v6 = v0;
      v6[1] = 0x4000000000000000;
      return swift_willThrow();
    }

    else
    {
      v12 = v4;
      v13 = v5;
      sub_1C5BC7724();
      swift_allocObject();
      sub_1C5BC7714();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
      sub_1C5B83F08();
      sub_1C5BC7704();
      sub_1C5A5BB4C(v12, v13);

      return v14;
    }
  }

  else
  {
    if (qword_1EC190988 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EC199710);
    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5922000, v9, v10, "No cache index file found on device. Cache will be empty.", v11, 2u);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    return 0;
  }
}

void *sub_1C5B82004()
{
  v61[11] = *MEMORY[0x1E69E9840];
  v0 = sub_1C5BC7A24();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = MEMORY[0x1EEE9AC00](v0);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v55 = &v53 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  v9 = *MEMORY[0x1E695DC30];
  *(inited + 32) = *MEMORY[0x1E695DC30];
  v10 = *MEMORY[0x1E695DB78];
  *(inited + 40) = *MEMORY[0x1E695DB78];
  v11 = v9;
  v12 = v10;
  v13 = sub_1C5B83CD4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  LOBYTE(v61[0]) = 1;
  if (qword_1EC190980 != -1)
  {
LABEL_36:
    swift_once();
  }

  v14 = qword_1EC199708;
  sub_1C5BC79F4();
  v15 = sub_1C5BCAE44();

  v16 = [v14 fileExistsAtPath:v15 isDirectory:v61];

  if (!v16 || (v61[0] & 1) == 0)
  {
    goto LABEL_7;
  }

  v57 = sub_1C5BC7994();
  v17 = v13[2];
  if (v17)
  {
    v18 = sub_1C5A9EB24(v13[2], 0);
    v19 = sub_1C5A9ED8C(v61, v18 + 4, v17, v13);
    sub_1C593F204();
    v20 = v59;
    if (v19 != v17)
    {
      __break(1u);
LABEL_7:

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v20 = v59;
  }

  v23 = sub_1C5BCB044();

  v61[0] = 0;
  v24 = v57;
  v13 = [v14 contentsOfDirectoryAtURL:v57 includingPropertiesForKeys:v23 options:0 error:v61];

  v25 = v61[0];
  if (!v13)
  {
    v21 = v61[0];
    sub_1C5BC7914();

    swift_willThrow();
    return v21;
  }

  v26 = sub_1C5BCB054();
  v27 = v25;

  v57 = *(v26 + 16);
  if (v57)
  {
    v28 = 0;
    v56 = v60 + 16;
    v53 = (v60 + 32);
    v29 = (v60 + 8);
    v54 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v30 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v31 = *(v60 + 72);
      (*(v60 + 16))(v7, v26 + v30 + v31 * v28, v20);
      if (sub_1C5BC7954() == 0x676B70766F6DLL && v32 == 0xE600000000000000)
      {
      }

      else
      {
        v13 = v32;
        v33 = sub_1C5BCBDE4();

        if ((v33 & 1) == 0)
        {
          v34 = *v53;
          (*v53)(v55, v7, v20);
          v35 = v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61[0] = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C5B8F0A8(0, *(v35 + 2) + 1, 1);
            v35 = v61[0];
          }

          v38 = *(v35 + 2);
          v37 = *(v35 + 3);
          v39 = v35;
          v13 = (v38 + 1);
          if (v38 >= v37 >> 1)
          {
            v54 = v34;
            sub_1C5B8F0A8(v37 > 1, v38 + 1, 1);
            v34 = v54;
            v39 = v61[0];
          }

          *(v39 + 2) = v13;
          v54 = v39;
          v40 = v39 + v30 + v38 * v31;
          v20 = v59;
          v34(v40, v55, v59);
          goto LABEL_16;
        }
      }

      (*v29)(v7, v20);
LABEL_16:
      if (v57 == ++v28)
      {
        goto LABEL_28;
      }
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v41 = *(v54 + 2);
  if (!v41)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v61[0] = MEMORY[0x1E69E7CC0];
  v42 = v54;
  sub_1C594A39C(0, v41, 0);
  v21 = v61[0];
  v43 = *(v60 + 16);
  v44 = v42 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v56 = *(v60 + 72);
  v57 = v43;
  v60 += 16;
  v45 = (v60 - 8);
  do
  {
    v46 = v58;
    v57(v58, v44, v20);
    v47 = sub_1C5BC7984();
    v49 = v48;
    (*v45)(v46, v20);
    v61[0] = v21;
    v51 = v21[2];
    v50 = v21[3];
    if (v51 >= v50 >> 1)
    {
      sub_1C594A39C((v50 > 1), v51 + 1, 1);
      v21 = v61[0];
    }

    v21[2] = v51 + 1;
    v52 = &v21[2 * v51];
    v52[4] = v47;
    v52[5] = v49;
    v44 += v56;
    --v41;
    v20 = v59;
  }

  while (v41);

  return v21;
}

uint64_t sub_1C5B8265C(uint64_t a1)
{
  result = MEMORY[0x1C694F5B0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1C5B0CBD8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1C5B82778(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v56[11] = *MEMORY[0x1E69E9840];
  v50 = sub_1C5BC7A24();
  v52 = *(v50 - 8);
  v6 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v45 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  v16 = *MEMORY[0x1E695DC30];
  *(inited + 32) = *MEMORY[0x1E695DC30];
  v17 = *MEMORY[0x1E695DB78];
  *(inited + 40) = *MEMORY[0x1E695DB78];
  v18 = v16;
  v19 = v17;
  v20 = sub_1C5B83CD4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  if (a2)
  {
    sub_1C5B80F68(a1, a2, v12);
    if (v2)
    {

      return v12;
    }

    (*(v52 + 32))(v14, v12, v50);
  }

  else
  {
    if (qword_1EC190978 != -1)
    {
      swift_once();
    }

    v21 = v50;
    v22 = __swift_project_value_buffer(v50, qword_1EC1996F0);
    (*(v52 + 16))(v14, v22, v21);
  }

  if (qword_1EC190980 != -1)
  {
    goto LABEL_33;
  }

LABEL_9:
  v23 = qword_1EC199708;
  v24 = sub_1C5BC7994();
  v25 = *(v20 + 16);
  if (v25)
  {
    v26 = sub_1C5A9EB24(*(v20 + 16), 0);
    v27 = sub_1C5A9ED8C(v56, v26 + 4, v25, v20);
    sub_1C593F204();
    if (v27 == v25)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

LABEL_13:
  v28 = sub_1C5BCB044();

  v56[0] = 0;
  v29 = [v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:v28 options:0 error:v56];

  v12 = v56[0];
  if (!v29)
  {
    v43 = v56[0];
    sub_1C5BC7914();

    swift_willThrow();
    (*(v52 + 8))(v14, v50);
    return v12;
  }

  v46 = v14;
  v47 = v3;
  v30 = v50;
  v31 = sub_1C5BCB054();
  v32 = v12;

  v51 = *(v31 + 16);
  if (v51)
  {
    v20 = 0;
    v14 = 0x676B70766F6DLL;
    v48 = (v52 + 8);
    v49 = v52 + 16;
    v53 = (v52 + 32);
    v33 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v20 >= *(v31 + 16))
      {
        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_9;
      }

      v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v3 = *(v52 + 72);
      (*(v52 + 16))(v55, v31 + v34 + v3 * v20, v30);
      if (sub_1C5BC7954() == 0x676B70766F6DLL && v35 == 0xE600000000000000)
      {
        break;
      }

      v36 = sub_1C5BCBDE4();

      if (v36)
      {
        goto LABEL_23;
      }

      (*v48)(v55, v30);
LABEL_17:
      if (v51 == ++v20)
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    v37 = v31;
    v38 = *v53;
    (*v53)(v54, v55, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C5B8F0A8(0, v33[2] + 1, 1);
      v33 = v56[0];
    }

    v41 = v33[2];
    v40 = v33[3];
    if (v41 >= v40 >> 1)
    {
      sub_1C5B8F0A8(v40 > 1, v41 + 1, 1);
      v33 = v56[0];
    }

    v33[2] = v41 + 1;
    v42 = v33 + v34 + v41 * v3;
    v30 = v50;
    v38(v42, v54, v50);
    v31 = v37;
    v14 = 0x676B70766F6DLL;
    goto LABEL_17;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_30:
  (*(v52 + 8))(v46, v30);

  v12 = v33[2];

  return v12;
}

uint64_t sub_1C5B82D74()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_cacheIndexLocation;
  v2 = sub_1C5BC7A24();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_cacheIndexFileLocation, v2);
  v3(v0 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MotionCacheDiskStorage()
{
  result = qword_1EC199748;
  if (!qword_1EC199748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5B82ED0()
{
  result = sub_1C5BC7A24();
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

uint64_t sub_1C5B82FBC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_1C5BCBA84();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_1C5BCBB04();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C5B83164()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC199710);
  __swift_project_value_buffer(v0, qword_1EC199710);
  return sub_1C5BC7D54();
}

void sub_1C5B831E4(uint64_t a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C5BC7A24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  LOBYTE(v39[0]) = 1;
  if (qword_1EC190980 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC199708;
  sub_1C5BC79F4();
  v11 = sub_1C5BCAE44();

  v12 = [v10 fileExistsAtPath:v11 isDirectory:v39];

  if (v12 && (v39[0] & 1) != 0)
  {
    if (qword_1EC190988 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EC199710);
    (*(v4 + 16))(v7, a1, v3);
    v14 = sub_1C5BC7D44();
    v15 = sub_1C5BCB4C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v38 = v1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v39[0] = v18;
      *v17 = 136315138;
      sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
      v19 = sub_1C5BCBD64();
      v21 = v20;
      (*(v4 + 8))(v7, v3);
      v22 = sub_1C592ADA8(v19, v21, v39);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1C5922000, v14, v15, "Tried to create folder that already exists. Did not create folder on disk at: %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1C69510F0](v18, -1, -1);
      MEMORY[0x1C69510F0](v17, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    v38 = v10;
    if (qword_1EC190988 != -1)
    {
      swift_once();
    }

    v23 = sub_1C5BC7D64();
    __swift_project_value_buffer(v23, qword_1EC199710);
    (*(v4 + 16))(v9, a1, v3);
    v24 = sub_1C5BC7D44();
    v25 = sub_1C5BCB4C4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = a1;
      v27 = v26;
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315138;
      sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
      v29 = sub_1C5BCBD64();
      v31 = v30;
      (*(v4 + 8))(v9, v3);
      v32 = sub_1C592ADA8(v29, v31, v39);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1C5922000, v24, v25, "Creating folder on disk at: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1C69510F0](v28, -1, -1);
      MEMORY[0x1C69510F0](v27, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    v33 = sub_1C5BC7994();
    v39[0] = 0;
    v34 = [v38 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v39];

    if (v34)
    {
      v35 = v39[0];
    }

    else
    {
      v36 = v39[0];
      sub_1C5BC7914();

      swift_willThrow();
    }
  }
}

void sub_1C5B83764(uint64_t a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C5BC7A24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  LOBYTE(v41[0]) = 1;
  if (qword_1EC190980 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC199708;
  sub_1C5BC79F4();
  v11 = sub_1C5BCAE44();

  v12 = [v10 fileExistsAtPath:v11 isDirectory:v41];

  if (v12 && (v41[0] & 1) != 0)
  {
    v40 = v1;
    if (qword_1EC190988 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EC199710);
    (*(v4 + 16))(v9, a1, v3);
    v14 = sub_1C5BC7D44();
    v15 = sub_1C5BCB4C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v38 = v16;
      v39 = swift_slowAlloc();
      v41[0] = v39;
      *v16 = 136315138;
      sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
      v17 = sub_1C5BCBD64();
      v19 = v18;
      (*(v4 + 8))(v9, v3);
      v20 = sub_1C592ADA8(v17, v19, v41);

      v21 = v38;
      *(v38 + 1) = v20;
      _os_log_impl(&dword_1C5922000, v14, v15, "Deleting folder on disk at: %s", v21, 0xCu);
      v22 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1C69510F0](v22, -1, -1);
      MEMORY[0x1C69510F0](v21, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    v33 = sub_1C5BC7994();
    v41[0] = 0;
    v34 = [v10 removeItemAtURL:v33 error:v41];

    if (v34)
    {
      v35 = v41[0];
    }

    else
    {
      v36 = v41[0];
      sub_1C5BC7914();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EC190988 != -1)
    {
      swift_once();
    }

    v23 = sub_1C5BC7D64();
    __swift_project_value_buffer(v23, qword_1EC199710);
    (*(v4 + 16))(v7, a1, v3);
    v24 = sub_1C5BC7D44();
    v25 = sub_1C5BCB4C4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v1;
      v41[0] = v27;
      v28 = v27;
      *v26 = 136315138;
      sub_1C5B84004(&qword_1EC192580, MEMORY[0x1E6968FB0]);
      v29 = sub_1C5BCBD64();
      v31 = v30;
      (*(v4 + 8))(v7, v3);
      v32 = sub_1C592ADA8(v29, v31, v41);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1C5922000, v24, v25, "Tried to delete folder that does not exist. Did not delete folder on disk at: %s.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1C69510F0](v28, -1, -1);
      MEMORY[0x1C69510F0](v26, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_1C5B83CD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1C5B84004(&qword_1EC190F28, type metadata accessor for URLResourceKey);
  result = MEMORY[0x1C694F5B0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1C5B0D220(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1C5B83DC8(uint64_t a1, uint64_t a2)
{
  v4 = _s17DownloadContainerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B83E60()
{
  result = qword_1EC199758;
  if (!qword_1EC199758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199758);
  }

  return result;
}

unint64_t sub_1C5B83EB4()
{
  result = qword_1EC199760;
  if (!qword_1EC199760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199760);
  }

  return result;
}

unint64_t sub_1C5B83F08()
{
  result = qword_1EC199768;
  if (!qword_1EC199768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193688);
    sub_1C5B84004(&qword_1EC199770, type metadata accessor for MotionCacheEntry);
    sub_1C5B84004(&qword_1EC199778, type metadata accessor for MotionCacheEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199768);
  }

  return result;
}

uint64_t sub_1C5B84004(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5B8404C()
{
  result = qword_1EC199780;
  if (!qword_1EC199780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199780);
  }

  return result;
}

uint64_t sub_1C5B840A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5B840F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5B84144(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C5B8415C(void *result, int a2)
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

uint64_t sub_1C5B84198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C5B84210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C5B8427C(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

id sub_1C5B842B4()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v10, sel_initWithEffect_, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD31C0;
  v3 = objc_opt_self();
  v4 = v1;
  *(v2 + 32) = [v3 effectWithStyle_];
  *(v2 + 40) = [objc_opt_self() colorEffectSaturate_];
  sub_1C5B84658();
  v5 = sub_1C5BCB044();

  [v4 setBackgroundEffects_];

  v6 = [v4 contentView];
  if (qword_1EC1909A0 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor_];

  if (qword_1EC190998 != -1)
  {
    swift_once();
  }

  *&v11 = qword_1EC199788;
  *(&v11 + 1) = byte_1EC199790;
  *&v12 = qword_1EC199798;
  UIView.corner.setter(&v11);
  if (qword_1EC190990 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EC1A6E20;
  v12 = unk_1EC1A6E30;
  v13 = qword_1EC1A6E40;
  sub_1C5B848A8(&v11, v9);
  sub_1C5A25774(&v11);
  sub_1C5B84904(&v11);
  v7 = [v4 layer];

  [v7 setShadowPathIsBounds_];
  return v4;
}

double sub_1C5B84608()
{
  *&xmmword_1EC1A6E20 = [objc_opt_self() blackColor];
  result = 0.15;
  *(&xmmword_1EC1A6E20 + 8) = xmmword_1C5BE5040;
  qword_1EC1A6E38 = 0;
  qword_1EC1A6E40 = 0;
  return result;
}

unint64_t sub_1C5B84658()
{
  result = qword_1EDA45E68;
  if (!qword_1EDA45E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45E68);
  }

  return result;
}

void sub_1C5B846A4()
{
  qword_1EC199788 = 0x402C000000000000;
  byte_1EC199790 = 1;
  qword_1EC199798 = 15;
}

uint64_t sub_1C5B846C8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = sub_1C5B84790;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C5B84840;
  v4[3] = &block_descriptor_24;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_1EC1997A0 = v2;
  return result;
}

id sub_1C5B84790(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v1 == 2)
  {
    v5 = sel_initWithRed_green_blue_alpha_;
    v6 = 0.133333333;
    v3 = 0.145098039;
    v4 = 0.6;
    v7 = 0.133333333;
  }

  else
  {
    v5 = sel_initWithWhite_alpha_;
    v7 = 0.6;
    v6 = 1.0;
  }

  return [v2 v5];
}

id sub_1C5B84840(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1C5B84958()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI21TapExcludedGeometries___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1C5B84A2C()
{
  type metadata accessor for TapExcludedGeometries();
  swift_allocObject();
  return sub_1C594CFF4();
}

void sub_1C5B84A64(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v38 = a1;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8);
  v39 = v3;
  sub_1C5BC81A4();
  v9 = v41[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C5BD9A40;
  swift_beginAccess();
  *(v10 + 32) = v9[2];
  swift_beginAccess();
  *(v10 + 40) = v9[3];
  swift_beginAccess();
  *(v10 + 48) = v9[4];
  swift_beginAccess();
  *(v10 + 56) = v9[5];
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v11)
  {
    v12 = 0;
LABEL_3:
    v13 = v12;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C694FD20](v13, v10);
        v12 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_27;
        }
      }

      if (*(v14 + 49) == 1)
      {
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);
        v17 = *(v14 + 32);
        v18 = *(v14 + 40);
        v19 = *(v14 + 48);

        if (v19 == 1 || (v43.origin.x = v15, v43.origin.y = v16, v43.size.width = v17, v43.size.height = v18, v42.x = a2, v42.y = a3, !CGRectContainsPoint(v43, v42)))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12 != v11)
          {
            goto LABEL_3;
          }

          break;
        }

LABEL_29:
        v20 = 0;
        goto LABEL_18;
      }

      ++v13;
    }

    while (v12 != v11);
  }

  v20 = 1;
LABEL_18:
  swift_bridgeObjectRelease_n();

  v21 = v38;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C5BC7D64();
  __swift_project_value_buffer(v22, qword_1EDA5DA78);
  (*(v6 + 16))(v8, v39, v21);
  v23 = sub_1C5BC7D44();
  v24 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41[0] = v26;
    *v25 = 136446722;
    *v40 = a2;
    *&v40[1] = a3;
    type metadata accessor for CGPoint(0);
    v27 = sub_1C5BCAEA4();
    v29 = sub_1C592ADA8(v27, v28, v41);

    *(v25 + 4) = v29;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v20;
    *(v25 + 18) = 2082;
    sub_1C5BC81A4();
    type metadata accessor for TapExcludedGeometries();
    v30 = sub_1C5BCAEA4();
    LODWORD(v29) = v20;
    v32 = v31;
    (*(v6 + 8))(v8, v21);
    v33 = sub_1C592ADA8(v30, v32, v41);

    *(v25 + 20) = v33;
    _os_log_impl(&dword_1C5922000, v23, v24, "Mini player received tap at %{public}s. Will expand = %{BOOL}d based on excluded tap areas: %{public}s.", v25, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v26, -1, -1);
    MEMORY[0x1C69510F0](v25, -1, -1);

    if (!v29)
    {
      return;
    }
  }

  else
  {

    (*(v6 + 8))(v8, v21);
    if (!v20)
    {
      return;
    }
  }

  v34 = *(v39 + *(v21 + 36));
  v36 = *(v21 + 16);
  v35 = *(v21 + 24);
  sub_1C59498C4(v34);
  LOBYTE(v40[0]) = 1;
  swift_unknownObjectRetain();
  NowPlayingController.transition(to:animated:)(v40, 1, v36, v35);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5B84F74(uint64_t a1)
{
  v1 = *(a1 + *(_s25ExpandsNowPlayingModifierVMa() + 40));
  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  sub_1C59498C4(v1);
  v4 = 0;
  memset(v3, 0, sizeof(v3));

  sub_1C5972EE4(v3);
}

uint64_t sub_1C5B85034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C5BC82C4();
  if (v8 < 0.0)
  {
    v9 = _s25ExpandsNowPlayingModifierVMa();
    sub_1C59498C4(*(a2 + *(v9 + 36)));
    v10 = 1;
    swift_unknownObjectRetain();
    NowPlayingController.transition(to:animated:)(&v10, 1, a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5B850D0(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v6 = *(a1 + 16);
  v13 = v6;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v13, &qword_1EC1997F0);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  v12 = v6;
  swift_getAtKeyPath();

  v9 = v11;
  *(v11 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 1;
}

uint64_t sub_1C5B85268()
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x7542656C74697428, 0xEE00203A6E6F7474);
  swift_beginAccess();
  type metadata accessor for TapExcludedGeometries.Geometry();
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](0x626275726373202CLL, 0xEC000000203A7265);
  swift_beginAccess();
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](0xD000000000000016, 0x80000001C5BFD640);
  swift_beginAccess();
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](0xD000000000000017, 0x80000001C5BFD660);
  swift_beginAccess();
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C5B8545C()
{
  sub_1C5BCBA94();

  if (*(v0 + 48))
  {
    v1 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  else
  {
    type metadata accessor for CGRect(0);
    v1 = sub_1C5BCAEA4();
    v2 = v3;
  }

  MEMORY[0x1C694F170](v1, v2);

  MEMORY[0x1C694F170](0x697463417369202CLL, 0xEC000000203A6576);
  if (*(v0 + 49))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 49))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v4, v5);

  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0x203A656D61726628;
}

void sub_1C5B855D4()
{
  if (!qword_1EDA467F0)
  {
    type metadata accessor for TapExcludedGeometries();
    v0 = sub_1C5BC81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA467F0);
    }
  }
}

uint64_t sub_1C5B8562C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B85710(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(_s25ExpandsNowPlayingModifierVMa() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1C5B85034(a1, v6, v3, v4);
}

uint64_t _s18SingleFireSignpostVMa()
{
  result = qword_1EDA46AA0;
  if (!qword_1EDA46AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5B85818()
{
  sub_1C5BC7CE4();
  if (v0 <= 0x3F)
  {
    sub_1C5BC7CA4();
    if (v1 <= 0x3F)
    {
      sub_1C5B858BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5B858BC()
{
  if (!qword_1EDA469E8)
  {
    sub_1C5BC7D24();
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA469E8);
    }
  }
}

uint64_t sub_1C5B85914(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_1C5BC7CE4();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = v50 - v7;
  v9 = sub_1C5BC7CA4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v57 = v50 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v50 - v19;
  result = _s18SingleFireSignpostVMa();
  v22 = *(result + 28);
  if (!*&v1[v22])
  {
    v23 = result;
    v24 = *(v10 + 16);
    v53 = *(result + 24);
    v52 = v22;
    v54 = v10 + 16;
    v55 = v24;
    v24(v20, &v1[v53], v9);
    sub_1C5BC7C74();
    sub_1C5B85FC0();
    v25 = sub_1C5BCADB4();
    v56 = v8;
    v27 = *(v10 + 8);
    v26 = v10 + 8;
    v27(v18, v9);
    v51 = v27;
    result = (v27)(v20, v9);
    v28 = v56;
    if ((v25 & 1) == 0)
    {
      v50[1] = v26;
      sub_1C5B86018(v58, &v64);
      if (v65)
      {
        sub_1C5931F84(&v64, v66);
        (*(v59 + 16))(v28, v2, v60);
        v29 = &v2[*(v23 + 20)];
        v30 = *v29;
        v31 = v29[16];
        v13 = v57;
        v55(v57, &v2[v53], v9);
        sub_1C59318C8(v66, &v64);
        v6 = sub_1C5BC7CC4();
        v32 = sub_1C5BCB5E4();
        result = sub_1C5BCB7E4();
        if (result)
        {
          v50[0] = v2;
          LODWORD(v58) = v32;
          if (v31)
          {
            if (!(v30 >> 32))
            {
              if ((v30 & 0xFFFFF800) == 0xD800)
              {
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              if (v30 >> 16 <= 0x10)
              {
                v33 = &v62;
                goto LABEL_17;
              }

              goto LABEL_28;
            }
          }

          else
          {
            if (v30)
            {
              v33 = v30;
LABEL_17:
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v61 = v40;
              *v39 = 136315138;
              __swift_project_boxed_opaque_existential_0(&v64, v65);
              v41 = sub_1C5BCBD64();
              v43 = v42;
              __swift_destroy_boxed_opaque_existential_0(&v64);
              v44 = sub_1C592ADA8(v41, v43, &v61);

              *(v39 + 4) = v44;
              v13 = v57;
              v45 = sub_1C5BC7C84();
              _os_signpost_emit_with_name_impl(&dword_1C5922000, v6, v58, v45, v33, "%s", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v40);
              MEMORY[0x1C69510F0](v40, -1, -1);
              MEMORY[0x1C69510F0](v39, -1, -1);

              v2 = v50[0];
              goto LABEL_18;
            }

            __break(1u);
          }

          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_12:

        __swift_destroy_boxed_opaque_existential_0(&v64);
LABEL_18:
        v55(v20, v13, v9);
        sub_1C5BC7D24();
        swift_allocObject();
        v46 = sub_1C5BC7D14();
        v51(v13, v9);
        (*(v59 + 8))(v56, v60);
        result = __swift_destroy_boxed_opaque_existential_0(v66);
        *&v2[v52] = v46;
        return result;
      }

      sub_1C5B86088(&v64);
      v34 = v2;
      (*(v59 + 16))(v6, v2, v60);
      v35 = &v2[*(v23 + 20)];
      v2 = *v35;
      v36 = v35[16];
      v55(v13, &v34[v53], v9);
      v37 = sub_1C5BC7CC4();
      v38 = sub_1C5BCB5E4();
      result = sub_1C5BCB7E4();
      if (result)
      {
        if (v36)
        {
          if (v2 >> 32)
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if ((v2 & 0xFFFFF800) == 0xD800)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          if (v2 >> 16 > 0x10)
          {
            goto LABEL_30;
          }

          v2 = &v63;
        }

        else if (!v2)
        {
          __break(1u);
          goto LABEL_12;
        }

        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = sub_1C5BC7C84();
        _os_signpost_emit_with_name_impl(&dword_1C5922000, v37, v38, v48, v2, "", v47, 2u);
        MEMORY[0x1C69510F0](v47, -1, -1);
      }

      v55(v20, v13, v9);
      sub_1C5BC7D24();
      swift_allocObject();
      v49 = sub_1C5BC7D14();
      v51(v13, v9);
      result = (*(v59 + 8))(v6, v60);
      *&v34[v52] = v49;
    }
  }

  return result;
}

unint64_t sub_1C5B85FC0()
{
  result = qword_1EDA46AB0;
  if (!qword_1EDA46AB0)
  {
    sub_1C5BC7CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46AB0);
  }

  return result;
}

uint64_t sub_1C5B86018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B86088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B860F0()
{
  v1 = v0;
  v2 = sub_1C5BC7CF4();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC7CE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC7CA4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  result = _s18SingleFireSignpostVMa();
  if (*(v1 + *(result + 28)))
  {
    v18 = result;
    v49 = *(result + 28);
    v51 = v7;
    v52 = v5;
    v53 = v4;
    v19 = *(result + 24);
    (*(v9 + 16))(v16, v1 + v19, v8);

    sub_1C5BC7C74();
    sub_1C5B85FC0();
    v20 = sub_1C5BCADB4();
    v57 = v1;
    v21 = v16;
    v22 = *(v9 + 8);
    v22(v14, v8);
    v50 = v21;
    v46 = v8;
    v47 = v9 + 8;
    v48 = v22;
    v22(v21, v8);
    if (v20)
    {
    }

    v44 = v19;
    v45 = v9;
    v23 = v51;
    v24 = v52;
    v25 = v57;
    v26 = v53;
    (*(v52 + 16))(v51, v57, v53);
    v27 = v25 + *(v18 + 20);
    v28 = *v27;
    v43 = *(v27 + 16);
    v29 = sub_1C5BC7CC4();
    v30 = v58;
    sub_1C5BC7D04();
    v42 = sub_1C5BCB5D4();
    result = sub_1C5BCB7E4();
    v31 = v50;
    if ((result & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v43)
    {
      v32 = v58;
      v33 = v56;
      if (!(v28 >> 32))
      {
        v35 = v54;
        v34 = v55;
        if ((v28 & 0xFFFFF800) == 0xD800)
        {
LABEL_21:
          __break(1u);
          return result;
        }

        if (v28 >> 16 <= 0x10)
        {
          v28 = &v59;
          goto LABEL_12;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v32 = v58;
      v33 = v56;
      if (v28)
      {
        v35 = v54;
        v34 = v55;
LABEL_12:

        sub_1C5BC7D34();

        if ((*(v35 + 88))(v33, v34) == *MEMORY[0x1E69E93E8])
        {
          v36 = "[Error] Interval already ended";
        }

        else
        {
          (*(v35 + 8))(v33, v34);
          v36 = "";
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = sub_1C5BC7C84();
        _os_signpost_emit_with_name_impl(&dword_1C5922000, v29, v42, v38, v28, v36, v37, 2u);
        MEMORY[0x1C69510F0](v37, -1, -1);
        v24 = v52;
        v26 = v53;
        v30 = v32;
        v23 = v51;
LABEL_16:

        v39 = v46;
        v48(v30, v46);
        (*(v24 + 8))(v23, v26);

        v40 = v57;
        *(v57 + v49) = 0;
        sub_1C5BC7C74();

        return (*(v45 + 40))(v40 + v44, v31, v39);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

void sub_1C5B865E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = v2;
    swift_getAtKeyPath();

    if (v13)
    {
    }

    else
    {
      type metadata accessor for LockScreenSquareAssetOverlayEffect.FirstBlurLayer();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v10 = v3;
      v11 = v13;
      swift_setAtReferenceWritableKeyPath();

      [v10 addSublayer_];
      [v10 setNeedsLayout];
    }
  }

  else
  {
    v13 = v2;
    v4 = v2;
    v5 = swift_readAtKeyPath();
    v7 = *v6;
    v8 = *v6;
    v5(v12, 0);

    if (v7)
    {
      [v8 removeFromSuperlayer];
      v12[0] = v4;
      v13 = 0;
      v9 = v4;
      swift_setAtReferenceWritableKeyPath();
    }
  }
}

void sub_1C5B867C4(uint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = v3;
    swift_getAtKeyPath();

    if (v15)
    {
    }

    else
    {
      a3(0);
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v12 = v5;
      v13 = v15;
      swift_setAtReferenceWritableKeyPath();

      [v12 addSublayer_];
      [v12 setNeedsLayout];
    }
  }

  else
  {
    v15 = v3;
    v6 = v3;
    v7 = swift_readAtKeyPath();
    v9 = *v8;
    v10 = *v8;
    v7(v14, 0);

    if (v9)
    {
      [v10 removeFromSuperlayer];
      v14[0] = v6;
      v15 = 0;
      v11 = v6;
      swift_setAtReferenceWritableKeyPath();
    }
  }
}

CFDataRef sub_1C5B86934(CFDataRef result, int64_t a2, uint64_t a3, char a4)
{
  v4 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a3 + 16) == 2 * v4)
  {
    v5 = result;
    result = CFDataCreate(*MEMORY[0x1E695E480], (a3 + 32), *(a3 + 16));
    if (!result)
    {
      return result;
    }

    v8 = result;
    result = CGDataProviderCreateWithCFData(v8);
    if (result)
    {
      if (a4)
      {
        v9 = 16;
      }

      else
      {
        v9 = 8;
      }

      v10 = v5 * 2 * v9;
      if ((v5 * (2 * v9)) >> 64 == v10 >> 63)
      {
        v11 = result;
        result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1A0]);
        if (result)
        {
          v12 = result;
          v13 = CGImageCreate(v5, a2, v9, 2 * v9, v10 >> 3, result, 0x1001u, v11, 0, 1, kCGRenderingIntentDefault);

          return v13;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }
  }

  return 0;
}

CFDataRef sub_1C5B86A7C(CFDataRef result, int64_t a2, uint64_t a3, char a4)
{
  v4 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(a3 + 16);
  if (v5 != 2 * v4)
  {
    return 0;
  }

  if (v5 + 0x4000000000000000 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  result = CFDataCreate(*MEMORY[0x1E695E480], (a3 + 32), 2 * v5);
  if (!result)
  {
    return result;
  }

  v9 = result;
  result = CGDataProviderCreateWithCFData(v9);
  if (result)
  {
    if (a4)
    {
      v10 = 16;
    }

    else
    {
      v10 = 8;
    }

    v11 = v6 * 2 * v10;
    if ((v6 * (2 * v10)) >> 64 == v11 >> 63)
    {
      v12 = result;
      result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1A0]);
      if (result)
      {
        v13 = result;
        v14 = CGImageCreate(v6, a2, v10, 2 * v10, v11 >> 3, result, 0x1001u, v12, 0, 1, kCGRenderingIntentDefault);

        return v14;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1C5B86BD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a2, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a2) = v17[15];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isBlurEnabled) = a2 & 1;
  sub_1C5B86DEC();
  if ((a5 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a4, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a4) = v17[14];
  }

  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isColorAdjustmentEnabled) = a4 & 1;
  return sub_1C5B86DEC();
}

uint64_t sub_1C5B86DEC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer);
  if (v1)
  {
    [v1 setMask_];
  }

  KeyPath = swift_getKeyPath();
  v3 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isBlurEnabled;
  sub_1C5B867C4(KeyPath, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isBlurEnabled), type metadata accessor for LockScreenTallAssetOverlayEffect.TopBlurLayer);

  v4 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer);
  if (v4)
  {
    [v4 setMask_];
  }

  v5 = swift_getKeyPath();
  sub_1C5B867C4(v5, *(v0 + v3), type metadata accessor for LockScreenTallAssetOverlayEffect.BottomBlurLayer);

  v6 = swift_getKeyPath();
  sub_1C5B867C4(v6, *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isColorAdjustmentEnabled), type metadata accessor for LockScreenTallAssetOverlayEffect.TallAssetColorAdjustmentsLayer);
}

void *sub_1C5B86F14()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C5B86F44()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer);
  v2 = v1;
  return v1;
}

void *sub_1C5B86F74()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer);
  v2 = v1;
  return v1;
}

id sub_1C5B86FA4()
{
  v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isBlurEnabled] = 1;
  v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isColorAdjustmentEnabled] = 1;
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer] = 0;
  v1 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurMask;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for LockScreenTallAssetOverlayEffect.TopBlurOpacityMask()) init];
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer] = 0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurMask;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for LockScreenTallAssetOverlayEffect.BottomBlurOpacityMask()) init];
  *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LockScreenTallAssetOverlayEffect.EffectLayer();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1C5B86DEC();

  return v3;
}

id sub_1C5B870A8(void *a1)
{
  v1[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isBlurEnabled] = 1;
  v1[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isColorAdjustmentEnabled] = 1;
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer] = 0;
  v3 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurMask;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for LockScreenTallAssetOverlayEffect.TopBlurOpacityMask()) init];
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer] = 0;
  v4 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurMask;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for LockScreenTallAssetOverlayEffect.BottomBlurOpacityMask()) init];
  *&v1[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_1C5BCBDD4();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LockScreenTallAssetOverlayEffect.EffectLayer();
  v6 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  v7 = v6;
  sub_1C5B86DEC();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id sub_1C5B87210()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for LockScreenTallAssetOverlayEffect.EffectLayer();
  objc_msgSendSuper2(&v31, sel_layoutSublayers);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  [v0 bounds];
  if (v2 <= 0.0)
  {
    v4 = 85.0;
  }

  else
  {
    v4 = round(v3 / v2 / 2.16666667 * 85.0);
  }

  v5 = round(v4 + 83.8);
  v6 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    MinX = CGRectGetMinX(v32);
    [v0 bounds];
    MinY = CGRectGetMinY(v33);
    [v0 bounds];
    [v7 setFrame_];
  }

  v10 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurMask];
  [v0 bounds];
  [v10 setFrame_];

  [v0 bounds];
  v13 = v12 - v4 + v11 * -1.33333333 + 128.0;
  v14 = pow(v12 / 844.0, 0.35);
  v15 = 1.2;
  if (v14 <= 1.2)
  {
    v15 = v14;
  }

  if (v14 < 0.8)
  {
    v16 = 0.8;
  }

  else
  {
    v16 = v15;
  }

  v17 = round(v16 * v13);
  v18 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer];
  if (v18)
  {
    v19 = v18;
    [v0 bounds];
    v20 = CGRectGetMinX(v36);
    [v0 bounds];
    v21 = CGRectGetMaxY(v37) - v17;
    [v0 bounds];
    [v19 setFrame_];
  }

  v22 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurMask];
  [v0 bounds];
  [v22 setFrame_];

  v23 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer;
  v24 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer];
  if (v24)
  {
    v25 = v24;
    [v0 bounds];
    Height = CGRectGetHeight(v40);
    if (sub_1C5B88A68(Height, v5, v17))
    {
      sub_1C592535C(0, &qword_1EDA4E048);
      v27 = sub_1C5BCB044();
    }

    else
    {
      v27 = 0;
    }

    [v25 setLocations_];

    v28 = *&v0[v23];
    if (v28)
    {
      v29 = v28;
      [v0 bounds];
      [v29 setFrame_];
    }
  }

  return [v1 commit];
}

id sub_1C5B877B0(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

void sub_1C5B8787C()
{
  v1 = v0;
  [v0 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD21E0;
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  type metadata accessor for CGColor(0);
  v8 = v7;
  *(v2 + 56) = v7;
  *(v2 + 32) = v6;
  v9 = [v3 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  *(v2 + 88) = v8;
  *(v2 + 64) = v11;
  v12 = [v3 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  v14 = [v13 CGColor];
  *(v2 + 120) = v8;
  *(v2 + 96) = v14;
  v15 = sub_1C5BCB044();

  [v1 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C5BD31B0;
  sub_1C592535C(0, &qword_1EDA4E048);
  *(v16 + 32) = sub_1C5BCB714();
  *(v16 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v16 + 48) = sub_1C5BCB714();
  v17 = sub_1C5BCB044();

  [v1 setLocations_];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C5BD31C0;
  v19 = *MEMORY[0x1E6979ED8];
  v20 = objc_opt_self();
  *(v18 + 32) = [v20 functionWithName_];
  *(v18 + 40) = [v20 functionWithName_];
  sub_1C592535C(0, &unk_1EDA45E00);
  v21 = sub_1C5BCB044();

  [v1 setInterpolations_];
}

void sub_1C5B87C88()
{
  v1 = v0;
  [v0 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD21E0;
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  type metadata accessor for CGColor(0);
  v8 = v7;
  *(v2 + 56) = v7;
  *(v2 + 32) = v6;
  v9 = [v3 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  *(v2 + 88) = v8;
  *(v2 + 64) = v11;
  v12 = [v3 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  v14 = [v13 CGColor];
  *(v2 + 120) = v8;
  *(v2 + 96) = v14;
  v15 = sub_1C5BCB044();

  [v1 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C5BD31B0;
  sub_1C592535C(0, &qword_1EDA4E048);
  *(v16 + 32) = sub_1C5BCB714();
  *(v16 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v16 + 48) = sub_1C5BCB714();
  v17 = sub_1C5BCB044();

  [v1 setLocations_];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C5BD31C0;
  v19 = *MEMORY[0x1E6979EB0];
  v20 = objc_opt_self();
  *(v18 + 32) = [v20 functionWithName_];
  *(v18 + 40) = [v20 functionWithName_];
  sub_1C592535C(0, &unk_1EDA45E00);
  v21 = sub_1C5BCB044();

  [v1 setInterpolations_];
}

id sub_1C5B88028(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C5B88088(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v6 = sub_1C5BCBDD4();
  v9.receiver = a1;
  v9.super_class = a4(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

id sub_1C5B8814C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1C5B881E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5B883C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1909B8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = qword_1EC199808;
  v2 = unk_1EC199810;
  v4 = qword_1EC199818;
  v3 = qword_1EC199820;
  v5 = dword_1EC199828;
  *a1 = qword_1EC199808;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  v6 = v1;
}

uint64_t sub_1C5B88484()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  type metadata accessor for LockScreenTallAssetOverlayEffect.EffectLayer();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_1C5950E48(v1, v2);
  sub_1C5950E48(v3, v4);

  return sub_1C5BC85C4();
}

uint64_t sub_1C5B8856C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BED3C0;
  v1 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v2) = 1050253722;
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  *(inited + 32) = [v1 initWithControlPoints__:v2 :{0.0, v3, v4}];
  sub_1C5B69AE0(80, 1, &unk_1F4513698, inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_1C5B86A7C(1, 80, v6, 1);

  qword_1EC1997F8 = v7;
  return result;
}

uint64_t sub_1C5B88668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BED3C0;
  v1 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v2) = 1058306785;
  LODWORD(v3) = 1053609165;
  LODWORD(v4) = 1.0;
  *(inited + 32) = [v1 initWithControlPoints__:v2 :{0.0, v3, v4}];
  sub_1C5B69AE0(176, 1, &unk_1F45136D8, inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_1C5B86A7C(1, 176, v6, 1);

  qword_1EC199800 = v7;
  return result;
}

double sub_1C5B88764()
{
  v0 = *MEMORY[0x1E6979DA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5BD9A40;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  *(v1 + 32) = v6;
  v7 = [v2 blackColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v8 CGColor];
  *(v1 + 40) = v9;
  v10 = [v2 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v11 CGColor];
  *(v1 + 48) = v12;
  v13 = [v2 blackColor];
  v14 = [v13 colorWithAlphaComponent_];

  v15 = [v14 CGColor];
  *(v1 + 56) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C5BD31B0;
  v17 = *MEMORY[0x1E6979ED0];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 functionWithName_];

  *(v16 + 32) = v20;
  v21 = *MEMORY[0x1E6979ED8];
  v22 = [v18 functionWithName_];

  *(v16 + 40) = v22;
  v23 = *MEMORY[0x1E6979EB0];
  v24 = [v18 functionWithName_];

  *(v16 + 48) = v24;
  qword_1EC199808 = v3;
  unk_1EC199810 = v1;
  qword_1EC199818 = v16;
  result = 2.77068541e-11;
  qword_1EC199820 = 0x3DBE76C93F333333;
  dword_1EC199828 = 1075419546;
  return result;
}

uint64_t sub_1C5B88A68(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v3 = a2 * 1.5 / a1;
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  if (v3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = a3 * -1.15 / a1 + 1.0;
  if (v5 <= 0.0)
  {
    v5 = 0.0;
  }

  if (v5 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  if (v4 >= v6)
  {
    if (qword_1EC190890 != -1)
    {
      swift_once();
    }

    v9 = sub_1C5BC7D64();
    __swift_project_value_buffer(v9, qword_1EC1A6D60);
    v10 = sub_1C5BC7D44();
    v11 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315650;
      v14 = sub_1C5BCB304();
      v16 = sub_1C592ADA8(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_1C5BCB304();
      v19 = sub_1C592ADA8(v17, v18, &v24);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2080;
      v20 = sub_1C5BCB304();
      v22 = sub_1C592ADA8(v20, v21, &v24);

      *(v12 + 24) = v22;
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v13, -1, -1);
      MEMORY[0x1C69510F0](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C5BD9A40;
    sub_1C592535C(0, &qword_1EDA4E048);
    *(v7 + 32) = sub_1C5BCB714();
    *(v7 + 40) = sub_1C5BCB714();
    v8 = sub_1C5BCB714();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C5BD9A40;
    sub_1C592535C(0, &qword_1EDA4E048);
    *(v7 + 32) = sub_1C5BCB714();
    *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  *(v7 + 48) = v8;
  *(v7 + 56) = sub_1C5BCB714();
  return v7;
}

void sub_1C5B88DAC()
{
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isBlurEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_isColorAdjustmentEnabled) = 1;
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer) = 0;
  v1 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurMask;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LockScreenTallAssetOverlayEffect.TopBlurOpacityMask()) init];
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer) = 0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurMask;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockScreenTallAssetOverlayEffect.BottomBlurOpacityMask()) init];
  *(v0 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

unint64_t sub_1C5B88E94()
{
  result = qword_1EC199868;
  if (!qword_1EC199868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199868);
  }

  return result;
}

uint64_t sub_1C5B88EF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B88F6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

id sub_1C5B88FE0()
{
  v1 = [objc_opt_self() sharedMonitor];
  [v1 unregisterObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for EnvironmentMonitor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5B891F0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1C5BCB214();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  v13 = a3;
  v14 = a1;
  v15 = v13;
  v16 = v14;
  sub_1C5A0BB28(0, 0, v10, a5, v12);

  return sub_1C5929C38(v10);
}

uint64_t sub_1C5B8932C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

uint64_t sub_1C5B893AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1C5BC8044();
}

uint64_t sub_1C5B8941C@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

uint64_t sub_1C5B8949C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1C5BC8044();
}

uint64_t sub_1C5B8950C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C592A994(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5B895CC()
{
  sub_1C5B898E0(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_28B805B7ABBD8163ADF264F064CDAB2817ScrubberExpansion_latestCursorPosition);

  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_28B805B7ABBD8163ADF264F064CDAB2817ScrubberExpansion___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1C5B896B0()
{
  sub_1C5B89790();
  if (v0 <= 0x3F)
  {
    sub_1C5BC7BB4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C5B89790()
{
  if (!qword_1EC199910)
  {
    type metadata accessor for ScrubberExpansion.CursorPosition(255);
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC199910);
    }
  }
}

void sub_1C5B89830()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1C5BC7AC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B898B4(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1C5BC7A94();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5B898E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B8996C(uint64_t a1)
{
  v2 = sub_1C5BC81D4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C5BC8CC4();
}

void sub_1C5B89A58()
{
  if (!*&v0[qword_1EDA48120])
  {
    v1 = [v0 traitCollection];
    v2 = [v1 accessibilityContrast];

    if (!v2)
    {
      v3 = v0;
      if (swift_weakLoadStrong())
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1C5BC8034();

        v4 = objc_allocWithZone(type metadata accessor for BackdropHostView());
        v5 = sub_1C5B3652C(v23, 0, 0);
        if (swift_weakLoadStrong())
        {

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1C5BC8034();

          v6 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
          v5[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused] = v23;
          v7 = *&v5[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
          if (v7)
          {
            v8 = v7;
            if ([v8 isPaused] != v5[v6])
            {
              [v8 setPaused_];
              [v8 setEnableSetNeedsDisplay_];
            }
          }

          v9 = *&v3[qword_1EDA48120];
          *&v3[qword_1EDA48120] = v5;
          v10 = v5;

          v11 = objc_opt_self();
          v12 = v10;
          v13 = [v11 blackColor];
          [v12 setBackgroundColor_];

          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v15 = *(Strong + 152);

            swift_getKeyPath();
            sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties);
            sub_1C5BC7B74();

            v16 = *(v15 + 104);

            v17 = BYTE2(v16);
            if (BYTE2(v16) != 4)
            {
              v18 = (v16 & 0xFF0000) == 196608;
              v19 = v3;
              if (v18 || v17)
              {
                goto LABEL_16;
              }

              v20 = swift_weakLoadStrong();
              if (v20)
              {
                v21 = *(v20 + 40);

                swift_getKeyPath();
                sub_1C592F30C(&qword_1EDA4AF70, _s12PresentationCMa);
                sub_1C5BC7B74();

                v22 = *(v21 + 17);

                v19 = v3;
                if ((v22 & 1) == 0)
                {
                  [v12 setAlpha_];
                }

LABEL_16:

                [v19 insertSubview:v12 aboveSubview:*&v19[qword_1EDA48118]];
                return;
              }

LABEL_22:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_20;
    }
  }
}

void sub_1C5B89E7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + qword_1EDA48120);
  if (v4 && (a3 & 1) == 0)
  {
    v7 = v4;
    [v7 frame];
    [v7 setFrame_];
    v5 = *&v7[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
    if (v5)
    {
      v6 = v5;
      [v6 setPaused_];
      [v6 setEnableSetNeedsDisplay_];
      [v7 setNeedsLayout];
      [v7 layoutIfNeeded];
      [v6 draw];
    }
  }
}

uint64_t sub_1C5B89F8C(void *a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  if (qword_1EC190990 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v11 = xmmword_1EC1A6E20;
  v12 = unk_1EC1A6E30;
  v13 = qword_1EC1A6E40;
  v3 = [a1 containerView];
  sub_1C5B848A8(&v11, v14);
  sub_1C5A25774(&v11);
  sub_1C5B84904(&v11);

  if (qword_1EC190648 != -1)
  {
    swift_once();
  }

  v14[0] = xmmword_1EC1A6A88;
  v14[1] = unk_1EC1A6A98;
  v15 = qword_1EC1A6AA8;
  v4 = xmmword_1EC1A6A88;
  sub_1C5A25774(v14);
  sub_1C5B84904(v14);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 32) = v5;
  v7 = v12;
  *(v6 + 40) = v11;
  *(v6 + 56) = v7;
  *(v6 + 72) = v13;
  sub_1C5B848A8(&v11, v10);

  sub_1C5B9D06C(sub_1C5B8B254, v6);
}

void sub_1C5B8A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_1EDA48118);

    sub_1C5B848A8(a3, &v7);
    sub_1C5A25774(a3);
    sub_1C5B84904(a3);
  }
}

id sub_1C5B8A244(char a1, double a2)
{
  v5 = *&v2[qword_1EDA48120];
  if (v5)
  {
    [v5 setAlpha_];
  }

  [*&v2[qword_1EDA48108] setAlpha_];
  [*&v2[qword_1EDA480F0] setAlpha_];
  *(*&v2[qword_1EDA48128] + qword_1EDA481B0) = a1;
  sub_1C5932CD4();
  v6 = [v2 traitCollection];
  v7 = [v6 accessibilityContrast];

  return sub_1C5932C1C(v7);
}

uint64_t sub_1C5B8A3CC(uint64_t a1)
{

  return swift_weakDestroy();
}

id sub_1C5B8A488(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s12GradientViewCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1C5B8A694(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C5B8A728()
{
  v0 = _s25BackdropConditionObserverVMa();
  v2 = 0u;
  v3 = 0u;
  v4 = 0;
  sub_1C5967E58(&v2, v0);
  sub_1C5924EF4(&v2, &qword_1EC1999A8);
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  sub_1C596A0AC(&v2, v0);
  return sub_1C5924EF4(&v2, &qword_1EC1999A8);
}

uint64_t sub_1C5B8A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1C5BC7D64();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_1C5BCBB84();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  sub_1C5BCB1E4();
  v6[11] = sub_1C5BCB1D4();
  v10 = sub_1C5BCB194();
  v6[12] = v10;
  v6[13] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5B8A918, v10, v9);
}

uint64_t sub_1C5B8A918()
{
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1C5B8A9E4;

  return sub_1C59D9270(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5B8A9E4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1C5B8B62C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1C5B8AB78;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5B8AB78()
{

  if (qword_1EDA46998 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = __swift_project_value_buffer(v3, qword_1EDA469A0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C5922000, v5, v6, "Unpausing backdrop", v7, 2u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);

  (*(v9 + 8))(v8, v10);
  _s25BackdropConditionObserverVMa();
  sub_1C5969E6C();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 0;

  sub_1C5BC8044();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C5B8AD54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B8ADF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B8AE5C()
{
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__isPaused;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__isLegibilityOverlayShown, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B8AF88@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

uint64_t sub_1C5B8B004()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

id sub_1C5B8B074(void *a1)
{
  sub_1C5B89A58();
  v2 = [a1 traitCollection];
  v3 = [v2 accessibilityContrast];

  return sub_1C5932C1C(v3);
}

void sub_1C5B8B0D8()
{
  *(v0 + qword_1EDA480F8) = MEMORY[0x1E69E7CD0];
  *(v0 + qword_1EDA48120) = 0;
  swift_weakInit();
  sub_1C5BCBBC4();
  __break(1u);
}

void sub_1C5B8B198()
{
  *(v0 + qword_1EDA481B0) = 0;
  *(v0 + qword_1EDA481C8) = 0;
  *(v0 + qword_1EDA481B8) = 0;
  *(v0 + qword_1EDA481C0) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t objectdestroy_107Tm()
{
  v1 = _s25BackdropConditionObserverVMa();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));
  sub_1C596AC3C(*v2, *(v2 + 8), *(v2 + 16));

  swift_unknownObjectRelease();

  sub_1C596AC4C(*(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120));
  if (*(v2 + 168))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 128);
  }

  else
  {
  }

  sub_1C5950E44(*(v2 + 176), *(v2 + 184));
  v3 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC81D4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1C596AC58(*(v2 + v1[17]), *(v2 + v1[17] + 8), *(v2 + v1[17] + 16));
  v5 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC90F4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5B8B49C()
{
  _s25BackdropConditionObserverVMa();

  return sub_1C5B8A728();
}

uint64_t sub_1C5B8B520(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(_s25BackdropConditionObserverVMa() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C592ABD4;

  return sub_1C5B8A7C4(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_1C5B8B630()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B8B744()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B8B854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C5B8B8C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B906C0(&qword_1EDA4B230, _s11ContextMenuCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5B8B998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B906C0(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1C5B8BA44(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C592F69C(v4);
}

uint64_t sub_1C5B8BA80(uint64_t a1, uint64_t a2)
{
  sub_1C59318C8(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  if (swift_dynamicCast())
  {
    v3 = sub_1C5931E14(a2, v5);
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C5B8BB18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B906C0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
}

uint64_t sub_1C5B8BBC4()
{
  swift_getKeyPath();
  sub_1C5B906C0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B64();
}

uint64_t NowPlayingViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  NowPlayingViewModel.init()();
  return v0;
}

uint64_t sub_1C5B8BCD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
}

uint64_t sub_1C5B8BD30()
{

  sub_1C5BC7F34();
}

uint64_t sub_1C5B8BD7C(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

void sub_1C5B8BDA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 176) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  sub_1C596DD10();
}

uint64_t sub_1C5B8BE34(uint64_t a1)
{
  v2 = *(*(a1 + 96) + 24);
  swift_beginAccess();
  v3 = *(a1 + 176);
  swift_beginAccess();
  if (v3 == *(v2 + 16))
  {
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C5B906C0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);

    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  *(v2 + 16) = v3;
}

void sub_1C5B8BF64(char a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  sub_1C596DD10();
}

void (*sub_1C5B8BFEC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C5B8C040;
}

void sub_1C5B8C040(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C5BCAB14();
    sub_1C5BC87F4();

    sub_1C596DD10();
  }
}

void (*sub_1C5B8C0F4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 177);
  return sub_1C5B8C180;
}

void sub_1C5B8C180(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 177);
  *(v2 + 177) = v3;
  sub_1C596D7EC(v4);

  free(v1);
}

uint64_t sub_1C5B8C1D0()
{
  sub_1C5BCAF04();
}

uint64_t sub_1C5B8C2D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5B90674();
  *a1 = result;
  return result;
}

void sub_1C5B8C304(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0xE900000000000067;
  v5 = 0x6E69646E61707865;
  v6 = 0x80000001C5BF5790;
  v7 = 0x697370616C6C6F63;
  if (v3 == 4)
  {
    v2 = 0xEA0000000000676ELL;
  }

  else
  {
    v7 = 0x657370616C6C6F63;
  }

  if (v3 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 3)
  {
    v6 = v2;
  }

  v9 = 0x80000001C5BF5760;
  v10 = 0xD000000000000020;
  if (v3 != 1)
  {
    v10 = 0x6465646E61707865;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  *a1 = v11;
  a1[1] = v12;
}

void sub_1C5B8C3D0(unsigned __int8 a1)
{
  v2 = v1;
  if ((sub_1C596AA3C(a1, *(v1 + 16)) & 1) == 0)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C5BC7D64();
    __swift_project_value_buffer(v3, qword_1EDA5DA78);

    oslog = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = *(v2 + 16);
      v8 = 0xE900000000000067;
      v9 = 0x6E69646E61707865;
      v10 = 0x80000001C5BF5790;
      v11 = 0xEA0000000000676ELL;
      v12 = 0x697370616C6C6F63;
      if (v7 != 4)
      {
        v12 = 0x657370616C6C6F63;
        v11 = 0xE900000000000064;
      }

      if (v7 == 3)
      {
        v12 = 0xD000000000000017;
      }

      else
      {
        v10 = v11;
      }

      v13 = 0x80000001C5BF5760;
      v14 = 0xD000000000000020;
      if (v7 != 1)
      {
        v14 = 0x6465646E61707865;
        v13 = 0xE800000000000000;
      }

      if (*(v2 + 16))
      {
        v9 = v14;
        v8 = v13;
      }

      if (*(v2 + 16) <= 2u)
      {
        v15 = v9;
      }

      else
      {
        v15 = v12;
      }

      if (*(v2 + 16) <= 2u)
      {
        v16 = v8;
      }

      else
      {
        v16 = v10;
      }

      v17 = sub_1C592ADA8(v15, v16, &v19);

      *(v5 + 4) = v17;
      _os_log_impl(&dword_1C5922000, oslog, v4, "Player transitioned to %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1C69510F0](v6, -1, -1);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C5B8C61C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();
}

uint64_t sub_1C5B8C694()
{
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel11CurrentItem__id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B8C73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v49 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v42 - v6;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C5BC7D64();
  __swift_project_value_buffer(v11, qword_1EDA5DA78);
  (*(v7 + 16))(v10, a1, a2);
  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();
  v14 = os_log_type_enabled(v12, v13);
  v45 = AssociatedTypeWitness;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v42 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v44 = a2;
    v18 = v17;
    *&v53 = v17;
    *v16 = 136446210;
    sub_1C5BCBAA4();
    v19 = sub_1C5BCAEA4();
    v21 = v20;
    (*(v7 + 8))(v10, v44);
    v22 = sub_1C592ADA8(v19, v21, &v53);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1C5922000, v12, v13, "NowPlayingViewModel received current item with id=%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    a2 = v44;
    MEMORY[0x1C69510F0](v23, -1, -1);
    v24 = v16;
    a1 = v42;
    MEMORY[0x1C69510F0](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, a2);
  }

  v26 = v46;
  v25 = v47;
  sub_1C59E555C(a1, v46[2], a2, v47);
  sub_1C59E5950(a1, v26[10], a2, v25);
  v27 = v26[13];
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();

  sub_1C5971FE0(1, v27, KeyPath, v29);
  v30 = v26[11];
  if (*(v30 + 16) == 1)
  {
    *(v30 + 16) = 1;
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 2) = v30;
    *(&v42 - 8) = 1;
    *&v53 = v30;
    sub_1C5B906C0(&qword_1EDA4B230, _s11ContextMenuCMa);
    sub_1C5BC7B64();
  }

  v32 = v45;
  sub_1C5BCBAA4();
  swift_getAssociatedConformanceWitness();
  sub_1C5BCBA14();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  sub_1C592CB84(v60, &v53);
  sub_1C592CB84(v59, &v56);
  if (!v54)
  {
    sub_1C5924EF4(v59, &qword_1EC1929B0);
    sub_1C5924EF4(v60, &qword_1EC1929B0);
    if (!*(&v57 + 1))
    {
      sub_1C5924EF4(&v53, &qword_1EC1929B0);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_1C592CB84(&v53, v52);
  if (!*(&v57 + 1))
  {
    sub_1C5924EF4(v59, &qword_1EC1929B0);
    sub_1C5924EF4(v60, &qword_1EC1929B0);
    sub_1C59E652C(v52);
LABEL_16:
    sub_1C5924EF4(&v53, &qword_1EC1999B0);
    goto LABEL_17;
  }

  v50[0] = v56;
  v50[1] = v57;
  v51 = v58;
  v33 = MEMORY[0x1C694FC40](v52, v50);
  sub_1C59E652C(v50);
  sub_1C5924EF4(v59, &qword_1EC1929B0);
  sub_1C5924EF4(v60, &qword_1EC1929B0);
  sub_1C59E652C(v52);
  sub_1C5924EF4(&v53, &qword_1EC1929B0);
  if ((v33 & 1) == 0)
  {
LABEL_17:
    v34 = v48;
    sub_1C5BCBAA4();
    sub_1C5BCBCA4();
    (*(v43 + 8))(v34, v32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C592CB84(&v53, v60);

    sub_1C5BC8044();
    sub_1C5924EF4(&v53, &qword_1EC1929B0);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v53 = 0;

    sub_1C5BC8044();
  }

LABEL_18:
  v35 = v26[9];
  (*(v47 + 72))(&v53, a2);
  swift_beginAccess();
  sub_1C59318C8(v35 + 16, v60);
  v36 = v61;
  __swift_project_boxed_opaque_existential_0(v60, v61);
  LOBYTE(v36) = NowPlayingArtworkTreatment.isEqual(_:)(&v53, v36);
  __swift_destroy_boxed_opaque_existential_0(v60);
  if ((v36 & 1) == 0)
  {
    v37 = *(v35 + 56);
    v38 = v54;
    v39 = v55;
    v40 = __swift_project_boxed_opaque_existential_0(&v53, v54);
    sub_1C593192C(v40, v37, v35, v38, v39);
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v35 + 16);
  sub_1C596A0A8(&v53, v35 + 16);
  return swift_endAccess();
}

uint64_t sub_1C5B8CF40(uint64_t a1, uint64_t a2)
{
  sub_1C59318C8(a1, v15);
  v3 = *(*a2 + 72);
  sub_1C59318C8(v15, v12);
  v4 = v13;
  v5 = v14;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9, v7);
  sub_1C5A4E340(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_1C5B8D048@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  swift_beginAccess();
  return sub_1C59318C8(v3 + 16, a1);
}

uint64_t sub_1C5B8D094(uint64_t a1)
{
  v3 = *(v1 + 72);
  sub_1C59318C8(a1, v13);
  v4 = v14;
  v5 = v15;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9, v7);
  sub_1C5A4E340(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

void (*sub_1C5B8D194(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 72);
  *(v3 + 184) = v5;
  swift_beginAccess();
  sub_1C59318C8(v5 + 16, v4);
  return sub_1C5B8D228;
}

void sub_1C5B8D228(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  if (a2)
  {
    sub_1C59318C8(*a1, (v2 + 5));
    sub_1C59318C8((v2 + 5), (v2 + 10));
    v4 = v2[13];
    v5 = v2[14];
    v6 = __swift_mutable_project_boxed_opaque_existential_1((v2 + 10), v4);
    v7 = MEMORY[0x1EEE9AC00](v6);
    v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v7);
    sub_1C5A4E340(v9, v3, v4, v5);
    __swift_destroy_boxed_opaque_existential_0((v2 + 5));
    __swift_destroy_boxed_opaque_existential_0((v2 + 10));
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_1C59318C8(*a1, (v2 + 15));
    v11 = v2[18];
    v12 = v2[19];
    v13 = __swift_mutable_project_boxed_opaque_existential_1((v2 + 15), v11);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    sub_1C5A4E340(v16, v3, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v2);
    __swift_destroy_boxed_opaque_existential_0((v2 + 15));
  }

  free(v2);
}

uint64_t sub_1C5B8D428()
{
  v1 = v0;
  sub_1C5970074();
  v2 = *(v0 + 16);
  sub_1C59704F4();
  if (qword_1EC190578 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC1A69F8;
  v4 = unk_1EC1A6A00;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  swift_bridgeObjectRetain_n();

  sub_1C59709E4(v3, v4, v2, KeyPath, v6);
  v7 = *(v1 + 80);
  sub_1C5971548();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();

  sub_1C5971730(v3, v4, v7, v8, v9);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5971E8C(1u, v7);
}

uint64_t sub_1C5B8D5A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B8D618()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

void (*sub_1C5B8D68C(void *a1))(uint64_t a1, char a2)
{
  a1[2] = *(v1 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = a1[1];
  return sub_1C5B8D724;
}

void sub_1C5B8D724(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  if (a2)
  {
    v5 = v4;

    sub_1C5BC8044();
    v6 = *a1;
  }

  else
  {

    sub_1C5BC8044();
  }
}

uint64_t sub_1C5B8D808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 104);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 32);
  *(a2 + 16) = v6;
  return sub_1C59525FC(v4, v5, v6);
}

uint64_t sub_1C5B8D860@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 32);
  *(a1 + 16) = v6;
  return sub_1C59525FC(v4, v5, v6);
}

void (*sub_1C5B8D8B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 104);
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  sub_1C59525FC(v6, v7, v8);
  return sub_1C5B8D950;
}

void sub_1C5B8D950(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();

  v9 = *(v3 + 48);
  if (a2)
  {
    sub_1C59525FC(v4, v5, v6);
    sub_1C596E66C(v4, v5, v6, v9, KeyPath, v8);
    sub_1C596EAC0(*(v3 + 24), *(v3 + 32), *(v3 + 40));
  }

  else
  {
    sub_1C596E66C(v4, v5, v6, *(v3 + 48), KeyPath, v8);
  }

  free(v3);
}

uint64_t sub_1C5B8DA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 104);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 56);
  *(a2 + 16) = v6;
  return sub_1C59525FC(v4, v5, v6);
}

uint64_t sub_1C5B8DA94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(*a2 + 104);
  v12 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  a7(v9, v10, v12);

  return a8(v9, v10, v12, v11, KeyPath, v14);
}

uint64_t sub_1C5B8DB50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 56);
  *(a1 + 16) = v6;
  return sub_1C59525FC(v4, v5, v6);
}

void (*sub_1C5B8DBA4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 104);
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  sub_1C59525FC(v6, v7, v8);
  return sub_1C5B8DC40;
}

void sub_1C5B8DC40(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();

  v9 = *(v3 + 48);
  if (a2)
  {
    sub_1C59525FC(v4, v5, v6);
    sub_1C596E66C(v4, v5, v6, v9, KeyPath, v8);
    sub_1C596EAC0(*(v3 + 24), *(v3 + 32), *(v3 + 40));
  }

  else
  {
    sub_1C596E66C(v4, v5, v6, *(v3 + 48), KeyPath, v8);
  }

  free(v3);
}

uint64_t sub_1C5B8DD2C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 120);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  return sub_1C5B3EDA0(v2, v3, KeyPath, v5);
}

uint64_t sub_1C5B8DDA4(char a1)
{
  v3 = *(v1 + 120);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  return sub_1C5B3EDA0(a1, v3, KeyPath, v5);
}

void (*sub_1C5B8DE18(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 120);
  *(v3 + 24) = v5;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 16);
  return sub_1C5B8DEA8;
}

void sub_1C5B8DEA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  sub_1C5B3EDA0(v3, v2, KeyPath, v5);

  free(v1);
}

__int128 *sub_1C5B8DF38(__int128 *result, char a2)
{
  if (*(v2 + 112))
  {
    v4 = *result;

    sub_1C5A37C44(&v4, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 *sub_1C5B8DF9C(__int128 *result, uint64_t a2)
{
  if (*(*a2 + 112))
  {
    v2 = *result;

    sub_1C5A37C44(&v2, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1C5B8E000(uint64_t *result)
{
  if (*(v1 + 112))
  {
    v2 = result[1];
    v3[0] = *result;
    v3[1] = v2;

    sub_1C5A37C44(v3, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *(*sub_1C5B8E068(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 3) = v1;
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = result;
    swift_getKeyPath();
    *(v3 + 2) = v2;
    sub_1C5B906C0(&qword_1EDA4AE80, _s13HostedContentCMa);

    sub_1C5BC7B74();

    v5 = *(v2 + 24);
    v4 = *(v2 + 32);

    *v3 = v5;
    *(v3 + 1) = v4;
    return sub_1C5B8E158;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1C5B8E158(uint64_t *result, char a2)
{
  v2 = *(result[3] + 112);
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v4 = result[1];
      v5 = *result;
      v6 = v4;

      sub_1C5A37C44(&v5, 0);

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result[1];
  v5 = *result;
  v6 = v3;

  sub_1C5A37C44(&v5, 0);

LABEL_6:
}

char *sub_1C5B8E208()
{
  v1 = *(v0 + 144);
  swift_getKeyPath();
  sub_1C5B906C0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    v3 = sub_1C5BCB984();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v14 = MEMORY[0x1E69E7CC0];

  result = sub_1C5B8F140(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v4 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694FD20](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v9 = v7[2];
      v8 = v7[3];
      v10 = v7[4];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C5B8F140((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      v13 = (v14 + 24 * v12);
      v13[4] = v9;
      v13[5] = v8;
      v13[6] = v10;
    }

    while (v3 != v6);

    return v4;
  }

  __break(1u);
  return result;
}

MediaCoreUI::NowPlayingTimeControlSegment __swiftcall NowPlayingTimeControlSegment.init(title:startTime:)(Swift::String title, Swift::Double startTime)
{
  *v2 = title;
  *(v2 + 16) = startTime;
  result.title = title;
  result.startTime = startTime;
  return result;
}

uint64_t sub_1C5B8E3E4(uint64_t a1)
{
  v5 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  if (v5)
  {
    v6 = (a1 + 40);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 1;
    v9 = v5;
    while (v8 - 1 < v9)
    {
      if (v5 == v8)
      {
        goto LABEL_13;
      }

      if (v8 >= v5)
      {
        goto LABEL_24;
      }

      v10 = *(v6 - 1);
      v1 = *v6;
      v3 = v6[1];
      v11 = v6[4];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1C5B77244(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v2 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1C5B77244((v12 > 1), v13 + 1, 1, v7);
      }

      ++v8;
      *(v7 + 2) = v2;
      v14 = &v7[32 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v1;
      *(v14 + 6) = v3;
      *(v14 + 7) = v11;
      v9 = *(a1 + 16);
      v6 += 3;
      if (v8 - 1 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_13:

  swift_unknownObjectRelease();
  if (!v5)
  {

    goto LABEL_20;
  }

  if (v5 > *(a1 + 16))
  {
    goto LABEL_25;
  }

  v15 = a1 + 32 + 24 * v5;
  v2 = *(v15 - 24);
  v1 = *(v15 - 16);
  v3 = *(v15 - 8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v7 = sub_1C5B77244(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_1C5B77244((v16 > 1), v17 + 1, 1, v7);
  }

  *(v7 + 2) = v17 + 1;
  v18 = &v7[32 * v17];
  *(v18 + 4) = v2;
  *(v18 + 5) = v1;
  *(v18 + 6) = v3;
  *(v18 + 7) = v3;
LABEL_20:
  sub_1C596EBE0(v7, 0, 0, 0, 0);
}

uint64_t (*sub_1C5B8E608(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C5B8E208();
  return sub_1C5B8E650;
}

uint64_t sub_1C5B8E650(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C5B8E3E4(*a1);
  }

  sub_1C5B8E3E4(v2);
}

uint64_t NowPlayingViewModel.deinit()
{

  return v0;
}

uint64_t NowPlayingViewModel.__deallocating_deinit()
{
  NowPlayingViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B8E79C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingViewModel();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

unint64_t NowPlayingCurrentItem.metadataStyle.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for MetadataAutomaticStyle;
  result = sub_1C592C110();
  *(a1 + 32) = result;
  return result;
}

double NowPlayingCurrentItem.miniPlayerSubtitle.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = -1;
  return result;
}

uint64_t NowPlayingCurrentItem.artworkTreatment.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for NowPlayingStandardArtworkTreatment;
  a1[4] = sub_1C5928464();
  result = sub_1C592CFE4(&unk_1F4518BF8);
  *a1 = result;
  return result;
}

uint64_t NowPlayingTimeControlSegment.title.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static NowPlayingTimeControlSegment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C5BCBDE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t NowPlayingTimeControlSegment.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1C69501C0](*&v2);
}

uint64_t NowPlayingTimeControlSegment.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69501C0](*&v2);
  return sub_1C5BCBF94();
}

uint64_t keypath_get_59Tm@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5B8EA70(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5971E8C(v3, v2);
}

uint64_t sub_1C5B8EAE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1C5B8EB58(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();

  return a7(v7, v8, v9, KeyPath, v11);
}

uint64_t sub_1C5B8EC18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 32);
  *(a2 + 16) = v6;
  return sub_1C59525FC(v4, v5, v6);
}

void sub_1C5B8EC6C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v2 + 33);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C596DEA4(v3, v2);
  sub_1C596E0BC(v4);
}

uint64_t sub_1C5B8ED04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 56);
  *(a2 + 16) = v6;
  return sub_1C59525FC(v4, v5, v6);
}

uint64_t sub_1C5B8ED58(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  v12 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  a7(v9, v10, v12);

  return a8(v9, v10, v12, v11, KeyPath, v14);
}

uint64_t sub_1C5B8EE10(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();

  return a7(v7, v8, KeyPath, v10);
}

uint64_t sub_1C5B8EEBC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1C5BC8044();
}

uint64_t sub_1C5B8EF30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();
}

uint64_t sub_1C5B8EFAC(uint64_t a1)
{
  sub_1C592CB84(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C592CB84(v3, &v2);

  sub_1C5BC8044();
  return sub_1C5924EF4(v3, &qword_1EC1929B0);
}

char *sub_1C5B8F048(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F198(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5B8F068(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F29C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5B8F088(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F3A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C5B8F0A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1C5B8F4AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5B8F0C8(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F8D8(a1, a2, a3, *v3, &qword_1EC1961B0);
  *v3 = result;
  return result;
}

char *sub_1C5B8F100(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F6A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C5B8F120(void *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5B8F140(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F8D8(a1, a2, a3, *v3, &qword_1EC1999E0);
  *v3 = result;
  return result;
}

char *sub_1C5B8F178(char *a1, int64_t a2, char a3)
{
  result = sub_1C5B8F9F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5B8F198(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C5B8F29C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1970D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C5B8F3A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195728);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1C5B8F4AC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999D8);
  v10 = *(sub_1C5BC7A24() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1C5BC7A24() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C5B8F6A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C5B8F7A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5B8F8D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1C5B8F9F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999C8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1C5B8FAFC(uint64_t a1, uint64_t a2)
{
  v7 = &type metadata for NowPlayingStandardArtworkTreatment;
  v8 = sub_1C5928464();
  *&v6 = a1;
  swift_beginAccess();
  sub_1C59318C8(a2 + 64, v5);
  LOBYTE(a1) = sub_1C5B8BA80(v5, a1);
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((a1 & 1) == 0)
  {
    _s7ArtworkCMa();
    sub_1C5B906C0(qword_1EDA49C50, _s7ArtworkCMa);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();

    sub_1C5BC7F54();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(a2 + 64);
  sub_1C596A0A8(&v6, a2 + 64);
  return swift_endAccess();
}

uint64_t sub_1C5B8FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = &type metadata for NowPlayingStandardArtworkTreatment;
  v16[4] = sub_1C5928464();
  v16[0] = a1;
  if (a2 != 1)
  {

    goto LABEL_5;
  }

  sub_1C59318C8(v16, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1C59318C8(v16, v14);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v8 = MEMORY[0x1EEE9AC00](v7);
    v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    sub_1C5B8FAFC(*v10, a3);
    __swift_destroy_boxed_opaque_existential_0(v14);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v6 = sub_1C592CFE4(&unk_1F4518BA8);
  sub_1C5B8FAFC(v6, a3);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

unint64_t sub_1C5B8FDCC()
{
  result = qword_1EC1999B8;
  if (!qword_1EC1999B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1999B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingViewModel.TransitionDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for NowPlayingViewModel.TransitionDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingViewModel.Lifecycle.TransitionPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlayingViewModel.Lifecycle.TransitionPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C5B90674()
{
  v0 = sub_1C5BCBCB4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C5B906C0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1C5B90738()
{
  swift_getKeyPath();
  sub_1C5B91024();
  sub_1C5BC7B74();

  return *(v0 + 16);
}

__n128 sub_1C5B907AC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B91024();
  sub_1C5BC7B74();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1C5B90850(double a1, double a2, double a3, double a4)
{
  result = sub_1C5BC8164();
  if (result)
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B91024();
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5B90968()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI20MinimumLayoutMargins___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MinimumLayoutMargins()
{
  result = qword_1EC199A00;
  if (!qword_1EC199A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5B90A58()
{
  result = sub_1C5BC7BB4();
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

id sub_1C5B90AF4()
{
  v0 = objc_allocWithZone(type metadata accessor for MinimumLayoutMarginsReader.MarginsTrackingViewController());

  return [v0 init];
}

uint64_t sub_1C5B90B28(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = *v1;
}

uint64_t sub_1C5B90B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B90FD0();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C5B90BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B90FD0();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C5B90C3C()
{
  sub_1C5B90FD0();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t sub_1C5B90D20()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for MinimumLayoutMarginsReader.MarginsTrackingViewController();
  objc_msgSendSuper2(&v12, sel_viewLayoutMarginsDidChange);
  [v0 systemMinimumLayoutMargins];
  result = sub_1C5BC8184();
  v6 = *&v0[OBJC_IVAR____TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins];
  if (v6)
  {
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    swift_getKeyPath();
    sub_1C5B91024();

    sub_1C5BC7B74();

    if (sub_1C5BC8164())
    {
    }

    if (sub_1C5BC8164())
    {
      v6[2] = v7;
      v6[3] = v8;
      v6[4] = v9;
      v6[5] = v10;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5BC7B64();
  }

  return result;
}

id sub_1C5B90F54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MinimumLayoutMarginsReader.MarginsTrackingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5B90FD0()
{
  result = qword_1EC199A18;
  if (!qword_1EC199A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199A18);
  }

  return result;
}

unint64_t sub_1C5B91024()
{
  result = qword_1EC1921F0;
  if (!qword_1EC1921F0)
  {
    type metadata accessor for MinimumLayoutMargins();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1921F0);
  }

  return result;
}

void *sub_1C5B91084()
{
  sub_1C59318C8(v0, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199CD0);
  v1 = swift_dynamicCast();
  v2 = MEMORY[0x1E6981E60];
  if (v1)
  {
    v34 = v65;
    v69 = 0;
    v71[0] = sub_1C5B917D4;
    v71[1] = 0;
    v72 = 0;
    v70 = *(&v65 + 1);
    v61 = v65;
    *&v62 = sub_1C5B917D4;
    *(&v62 + 1) = 0;
    LOBYTE(v63) = 0;
    v3 = _s17AVPlayerVideoViewVMa();
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v61, v3, WitnessTable);

    sub_1C5924EF4(&v70, &qword_1EC199CD8);
    sub_1C5924EF4(v71, &qword_1EC199CE0);
    v61 = v40;
    v62 = v41;
    LOBYTE(v63) = v42;
    sub_1C593EDC0(&v61, v3, WitnessTable);
    v61 = v37;
    v62 = v38;
    LOBYTE(v63) = v39;
    _s12MPCVideoViewVMa();
    swift_getWitnessTable();
    sub_1C5950E54(&v61, v3);
    v5 = v49;
    v6 = v50;
    v7 = v51;
    v8 = v52;
    v9 = v54;
    v10 = v53;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v11 = sub_1C5BC92D4();
    swift_getWitnessTable();
    sub_1C5950E54(&v43, v11);

    v12 = v6;
    v2 = MEMORY[0x1E6981E60];
    sub_1C5B98844(v5, v12, v7, v8, v10, v9);

    sub_1C5AFC9D8();

    sub_1C5AFC9D8();
  }

  else if (swift_dynamicCast())
  {

    *&v61 = *(&v65 + 1);
    *(&v61 + 1) = sub_1C5B93220();
    *&v62 = v13;
    v14 = _s12MPCVideoViewVMa();
    v15 = swift_getWitnessTable();
    sub_1C593EDC0(&v61, v14, v15);

    swift_unknownObjectRelease();

    v61 = v40;
    *&v62 = v41;
    sub_1C593EDC0(&v61, v14, v15);
    v61 = v37;
    *&v62 = v38;
    v16 = _s17AVPlayerVideoViewVMa();
    swift_getWitnessTable();
    sub_1C5941738(&v61, v16, v14);
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v54;
    v22 = v53;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v23 = sub_1C5BC92D4();
    swift_getWitnessTable();
    sub_1C5950E54(&v43, v23);

    v24 = v21;
    v2 = MEMORY[0x1E6981E60];
    sub_1C5B98844(v17, v18, v19, v20, v22, v24);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    _s17AVPlayerVideoViewVMa();
    _s12MPCVideoViewVMa();
    v25 = sub_1C5BC92D4();
    v59 = swift_getWitnessTable();
    v60 = swift_getWitnessTable();
    v26 = swift_getWitnessTable();
    sub_1C5941738(v26, v25, MEMORY[0x1E6981E70]);
  }

  v35 = v61;
  v36 = v62;
  v27 = v63;
  v28 = v64;
  __swift_destroy_boxed_opaque_existential_0(v66);
  v66[1] = v36;
  v66[0] = v35;
  v67 = v27;
  v68 = v28;
  _s17AVPlayerVideoViewVMa();
  _s12MPCVideoViewVMa();
  sub_1C5BC92D4();
  v29 = sub_1C5BC92D4();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v57 = v30;
  v58 = v31;
  v55 = swift_getWitnessTable();
  v56 = v2;
  v32 = swift_getWitnessTable();
  sub_1C593EDC0(v66, v29, v32);
  return sub_1C5B98834(v35, *(&v35 + 1), v36, *(&v36 + 1), v27, v28);
}

uint64_t sub_1C5B917D4()
{
  type metadata accessor for AspectRatioObserver();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
  sub_1C5BC7FF4();
  return v0;
}

uint64_t sub_1C5B9184C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  type metadata accessor for AspectRatioObserver();
  sub_1C5B98A84(&unk_1EC199DF0, type metadata accessor for AspectRatioObserver);
  v3 = v2;

  v4 = sub_1C5BC83A4();
  sub_1C5B91BEC(v3, v1, v4, &v36);
  sub_1C5BC83A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  v5 = _s35AVPlayerViewControllerRepresentableVMa();
  swift_getWitnessTable();
  sub_1C5BC9D94();
  v34[8] = v44;
  v34[9] = v45;
  v35 = v46;
  v34[4] = v40;
  v34[5] = v41;
  v34[6] = v42;
  v34[7] = v43;
  v34[0] = v36;
  v34[1] = v37;
  v34[2] = v38;
  v34[3] = v39;
  (*(*(v5 - 8) + 8))(v34, v5);
  v18 = v56;
  v19 = v57;
  v20 = v58;
  v21 = v59;
  v14 = v52;
  v15 = v53;
  v16 = v54;
  v17 = v55;
  v10 = v48;
  v11 = v49;
  v12 = v50;
  v13 = v51;
  v6 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v10, v6, WitnessTable);
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v8 = *(*(v6 - 8) + 8);
  v8(&v36, v6);
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  sub_1C593EDC0(&v10, v6, WitnessTable);
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v52 = v14;
  v53 = v15;
  v54 = v16;
  v55 = v17;
  v48 = v10;
  v49 = v11;
  v50 = v12;
  v51 = v13;
  return (v8)(&v48, v6);
}

uint64_t sub_1C5B91BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 97) = 0;
  _s13HostedContentCMa();
  sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa);
  *(a4 + 104) = sub_1C5BC8324();
  *(a4 + 112) = v5 & 1;
  _s12PresentationCMa();
  sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa);
  *(a4 + 120) = sub_1C5BC8324();
  *(a4 + 128) = v6 & 1;
  type metadata accessor for NowPlayingViewModel();
  sub_1C5B98A84(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
  *(a4 + 136) = sub_1C5BC8C84();
  *(a4 + 144) = v7;
  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  result = sub_1C5BC8C84();
  *(a4 + 152) = result;
  *(a4 + 160) = v9;
  return result;
}

id sub_1C5B91DC8()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E6958608]) init];
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    [v2 setShowsPlaybackControls_];
    [v2 setShowsAnalysisButtonIfAvailable_];
    [v2 setCanPausePlaybackWhenExitingFullScreen_];
    [v2 setPlayer_];
    sub_1C592535C(0, &qword_1EC194C48);
    v6 = sub_1C5BCB044();
    [v2 setSpeeds_];

    swift_getWitnessTable();
    sub_1C5BC9834();
    sub_1C5BC9814();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F30);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *&v8[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource] = v7;

    sub_1C5B95FA0();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B91FC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v62 = &v60 - v2;
  v63 = sub_1C5BCB5F4();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v60 - v5;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = *(v0 + 40);
  v12 = *(v0 + 72);
  v83[2] = *(v0 + 56);
  *v84 = v12;
  *&v84[10] = *(v0 + 82);
  v83[0] = *(v0 + 24);
  v83[1] = v11;
  v72 = *(v0 + 104);
  LODWORD(v69) = *(v0 + 112);
  v13 = *(v0 + 136);
  v68 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F30);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v70 = v14;
  if (v84[25])
  {
    v15 = *(v0 + 56);
    v80 = *(v0 + 40);
    v81 = v15;
    v82[0] = *(v0 + 72);
    *(v82 + 9) = *(v0 + 81);
    v79 = *(v0 + 24);
  }

  else
  {

    sub_1C5B99064(v83, &v79);
    sub_1C5BCB4E4();
    v16 = v10;
    v17 = v7;
    v18 = v6;
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v6 = v18;
    v7 = v17;
    v10 = v16;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v83, &unk_1EC194DE0);
    (*(v7 + 8))(v9, v6);
  }

  v77 = v81;
  v78[0] = v82[0];
  *(v78 + 9) = *(v82 + 9);
  v75 = v79;
  v76 = v80;
  if (v13)
  {
    v71 = v13;

    v20 = v72;

    v21 = v20;
    v22 = v69;
    if ((v69 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v23 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v21 = v73;
    }

    swift_getKeyPath();
    v73 = v21;
    sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B74();

    v24 = v21[6];
    v67 = v21[5];
    v68 = v24;

    if ((v22 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v25 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v20 = v73;
    }

    v26 = type metadata accessor for VideoPlayerCoordinator();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
    *v28 = 0;
    v28[1] = 0;
    v29 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_aspectRatioObserver;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_aspectRatioObserver] = 0;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_subscriptions] = MEMORY[0x1E69E7CD0];
    v30 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_tapGestureRecognizer;
    *&v27[v30] = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
    v31 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_pinchGestureRecognizer;
    *&v27[v31] = [objc_allocWithZone(MEMORY[0x1E69DCD80]) &selRef__dampingRatio];
    v32 = &v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_onFullscreenStateChanged];
    *v32 = 0;
    v32[1] = 0;
    v33 = v70;
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource] = v70;
    *&v27[v29] = v10;

    v34 = &v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
    v35 = v78[0];
    v34[2] = v77;
    v34[3] = v35;
    *(v34 + 57) = *(v78 + 9);
    v36 = v76;
    *v34 = v75;
    v34[1] = v36;
    v69 = v10;
    v37 = v71;
    v38 = *(v71 + 40);
    swift_getKeyPath();
    v73 = v38;
    sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa);
    sub_1C5BC7B74();

    v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle] = v38[17];
    *&v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_nowPlayingViewModel] = v37;
    v39 = v68;
    *v28 = v67;
    v28[1] = v39;

    v40 = &v27[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection];
    *v40 = sub_1C5B9919C;
    v40[1] = v20;
    v74.receiver = v27;
    v74.super_class = v26;
    v72 = v20;

    v41 = objc_msgSendSuper2(&v74, sel_init);
    Strong = swift_unknownObjectWeakLoadStrong();
    v43 = v41;
    [Strong setShowsPlaybackControls_];

    v44 = *&v43[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_tapGestureRecognizer];
    v45 = v43;
    [v44 addTarget:v45 action:sel_didTap];
    v46 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_pinchGestureRecognizer;
    v47 = *&v45[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_pinchGestureRecognizer];
    [v47 addTarget:v45 action:sel_didPinch_];

    v48 = *&v45[v46];
    [v48 setDelegate_];

    sub_1C5B95FA0();
    v49 = [objc_opt_self() currentDevice];
    v50 = [v49 userInterfaceIdiom];

    if (!v50)
    {
      v51 = [objc_opt_self() defaultCenter];
      v52 = v60;
      sub_1C5BCB604();

      sub_1C592535C(0, &qword_1EDA4E620);
      v53 = sub_1C5BCB5A4();
      v73 = v53;
      v54 = sub_1C5BCB594();
      v55 = v62;
      (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
      sub_1C5B98A84(&unk_1EDA4E0E0, MEMORY[0x1E6969F20]);
      sub_1C5931640();
      v56 = v63;
      v57 = v64;
      sub_1C5BC80D4();
      sub_1C5924EF4(v55, &unk_1EC199F20);
      (*(v61 + 8))(v52, v56);

      v33 = v70;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440);
      v58 = v66;
      sub_1C5BC8114();

      (*(v65 + 8))(v57, v58);
      swift_beginAccess();
      sub_1C5BC7EE4();
      swift_endAccess();
    }

    v73 = *(v71 + 168);
    *(swift_allocObject() + 16) = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F40);
    sub_1C5924F54(&qword_1EDA46898, &unk_1EC199F40);
    sub_1C5BC8114();

    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    sub_1C5B963D4();

    return v45;
  }

  else
  {
    type metadata accessor for NowPlayingViewModel();
    sub_1C5B98A84(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

void sub_1C5B92BA0(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 40);
  v11 = *(v3 + 72);
  v54 = *(v3 + 56);
  *v55 = v11;
  *&v55[10] = *(v3 + 82);
  v52 = *(v3 + 24);
  v53 = v10;
  v12 = *(v3 + 104);
  v43 = *(v3 + 112);
  v13 = *(v3 + 120);
  v36 = *(v3 + 128);
  v14 = *(v3 + 152);
  v38 = *(v3 + 160);
  v39 = v14;
  swift_getWitnessTable();
  v40 = a3;
  sub_1C5BC9834();
  v44 = a2;
  sub_1C5BC9814();
  v15 = v51;
  v37 = v6;
  v42 = v7;
  if (v55[25])
  {
    v49[2] = v54;
    v50[0] = *v55;
    *(v50 + 9) = *&v55[9];
    v49[0] = v52;
    v49[1] = v53;
  }

  else
  {

    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    v6 = v37;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v52, &unk_1EC194DE0);
    (*(v7 + 8))(v9, v6);
  }

  v17 = &v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
  v45[1] = *&v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 16];
  v45[2] = *&v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 32];
  v46[0] = *&v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 48];
  *(v46 + 9) = *&v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 57];
  v45[0] = *&v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
  memmove(&v15[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics], v49, 0x49uLL);
  v47[1] = *(v17 + 1);
  v47[2] = *(v17 + 2);
  v48[0] = *(v17 + 3);
  *(v48 + 9) = *(v17 + 57);
  v47[0] = *v17;
  if ((_s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(v47, v45) & 1) == 0)
  {
    sub_1C5B963D4();
  }

  sub_1C5BC9814();
  v18 = *&v47[0];

  if ((v36 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v42 + 8))(v9, v6);
    v13 = *&v45[0];
  }

  swift_getKeyPath();
  *&v45[0] = v13;
  sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v20 = *(v13 + 17);

  v21 = v18[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle];
  v18[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle] = v20;
  LOBYTE(v45[0]) = v21;
  sub_1C5B96568(v45);

  sub_1C5BC9814();
  v22 = *&v45[0];

  v23 = v12;
  v24 = v42;
  if ((v43 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v25 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v24 + 8))(v9, v6);
    v23 = *&v47[0];
  }

  swift_getKeyPath();
  *&v47[0] = v23;
  sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v27 = *(v23 + 40);
  v26 = *(v23 + 48);

  v28 = &v22[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
  v29 = *&v22[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
  v30 = *&v22[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8];
  *v28 = v27;
  *(v28 + 1) = v26;
  *&v47[0] = v29;
  *(&v47[0] + 1) = v30;
  sub_1C5B96640(v47);

  sub_1C5BC9814();
  v31 = *&v47[0];

  if ((v43 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v24 + 8))(v9, v37);
    v12 = *&v45[0];
  }

  v33 = &v31[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection];
  *v33 = sub_1C5B9919C;
  *(v33 + 1) = v12;

  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  sub_1C59498C4(v39);

  v34 = sub_1C5BA622C();

  [v41 setDelegate_];
}

uint64_t sub_1C5B93220()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC199CE8);
  sub_1C5BCA684();
  return v1;
}

uint64_t sub_1C5B9327C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5B91FC8();
  *a1 = result;
  return result;
}

uint64_t sub_1C5B932A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C5B93320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1C5B9339C()
{
  swift_getWitnessTable();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t sub_1C5B933DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a1;
  v73 = a6;
  v10 = sub_1C5BCB214();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  v66 = a4;
  v76 = a5;
  _s25VideoOutputViewControllerVMa();
  v13 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v57[2] = v13;
  v57[3] = v14;
  sub_1C5BC8BE4();
  v57[5] = v12;
  v15 = sub_1C5BC8AB4();
  v16 = sub_1C5A0BA0C();
  v17 = swift_getWitnessTable();
  v57[1] = v16;
  v114 = v16;
  v115 = v17;
  v18 = swift_getWitnessTable();
  *&v102 = v15;
  *(&v102 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v64 = v57 - v20;
  v58 = v18;
  v59 = v15;
  *&v102 = v15;
  *(&v102 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeMetadata2;
  *&v102 = OpaqueTypeMetadata2;
  *(&v102 + 1) = MEMORY[0x1E69E5FE0];
  v61 = OpaqueTypeConformance2;
  *&v103 = OpaqueTypeConformance2;
  *(&v103 + 1) = MEMORY[0x1E69E5FE8];
  v67 = sub_1C5BCA724();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v62 = v57 - v24;
  v25 = sub_1C5BCA484();
  v74 = a3;
  v75 = a2;
  *&v102 = a2;
  *(&v102 + 1) = a3;
  v57[4] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC199E10);
  v26 = sub_1C5BCA694();
  v27 = v90;
  if (v90)
  {
    [v90 presentationSize];
    v29 = v28;
    [v27 presentationSize];
    v31 = v30;
    v26 = swift_unknownObjectRelease();
    v32 = v29 / v31;
  }

  else
  {
    v32 = 1.77777778;
  }

  *&v90 = v25;
  *(&v90 + 1) = v32;
  LOWORD(v91) = 0;
  MEMORY[0x1EEE9AC00](v26);
  v33 = v65;
  v34 = v66;
  v35 = v75;
  v36 = v76;
  v57[-6] = v66;
  v57[-5] = v36;
  v57[-4] = v33;
  v57[-3] = v35;
  sub_1C5BCAA54();
  swift_checkMetadataState();
  sub_1C5BCA2C4();

  v86 = v110;
  v87 = v111;
  v88 = v112;
  v89 = v113;
  v82 = v106;
  v83 = v107;
  v84 = v108;
  v85 = v109;
  v78 = v102;
  v79 = v103;
  v80 = v104;
  v81 = v105;
  sub_1C5BCB1E4();
  v37 = v74;

  v38 = v75;
  swift_unknownObjectRetain();
  v39 = sub_1C5BCB1D4();
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E85E0];
  v40[2] = v39;
  v40[3] = v41;
  v42 = v76;
  v40[4] = v34;
  v40[5] = v42;
  v40[6] = v33;
  v40[7] = v38;
  v43 = v38;
  v40[8] = v37;
  v44 = v37;
  v45 = swift_checkMetadataState();
  v46 = v70;
  v47 = v58;
  sub_1C599C1F8();
  v48 = v64;
  sub_1C599C248(0, v46, 0xD000000000000021, 0x80000001C5BFE2B0, 140, &unk_1C5BF2B58, v40, v64, v45, v47);
  (*(v71 + 8))(v46, v72);
  v98 = v86;
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v94 = v82;
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v90 = v78;
  v91 = v79;
  v92 = v80;
  v93 = v81;
  (*(*(v45 - 8) + 8))(&v90, v45);
  *&v78 = v43;
  *(&v78 + 1) = v44;
  sub_1C5BCA694();
  v49 = v77;
  if (v77)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *&v78 = v49;
  v50 = v60;
  v51 = v69;
  sub_1C5BCA1C4();
  (*(v68 + 8))(v48, v51);
  v52 = v67;
  v53 = swift_getWitnessTable();
  v54 = v62;
  sub_1C593EDC0(v50, v52, v53);
  v55 = *(v63 + 8);
  v55(v50, v52);
  sub_1C593EDC0(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_1C5B93B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v58 = a2;
  *(&v58 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC199E10);
  sub_1C5BCA694();
  if (v48)
  {
    sub_1C5B94020(v48, &v58);
    v3 = _s25VideoOutputViewControllerVMa();
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v58, v3, WitnessTable);
    v33[6] = v64;
    v33[7] = v65;
    v33[8] = v66;
    v34 = v67;
    v33[2] = v60;
    v33[3] = v61;
    v33[4] = v62;
    v33[5] = v63;
    v33[0] = v58;
    v33[1] = v59;
    v5 = *(*(v3 - 8) + 8);
    v5(v33, v3);
    v64 = v29;
    v65 = v30;
    v66 = v31;
    v67 = v32;
    v60 = v25;
    v61 = v26;
    v62 = v27;
    v63 = v28;
    v58 = v23;
    v59 = v24;
    sub_1C593EDC0(&v58, v3, WitnessTable);
    v35[6] = v64;
    v35[7] = v65;
    v35[8] = v66;
    v36 = v67;
    v35[2] = v60;
    v35[3] = v61;
    v35[4] = v62;
    v35[5] = v63;
    v35[0] = v58;
    v35[1] = v59;
    v5(v35, v3);
    v44 = v19;
    v45 = v20;
    v46 = v21;
    v47 = v22;
    v40 = v15;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v38 = v13;
    v39 = v14;
    CGSizeMake(&v38, v6);
    v64 = v44;
    v65 = v45;
    v66 = v46;
    v67 = v47;
    v60 = v40;
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v58 = v38;
    v59 = v39;
    sub_1C5941600(&v58, v11);
    v54 = v64;
    v55 = v65;
    v56 = v66;
    v57 = v67;
    v50 = v60;
    v51 = v61;
    v52 = v62;
    v53 = v63;
    v48 = v58;
    v49 = v59;
    v7 = sub_1C5BCB804();
    (*(*(v7 - 8) + 8))(&v48, v7);
    v64 = v11[6];
    v65 = v11[7];
    v66 = v11[8];
    v67 = v12;
    v60 = v11[2];
    v61 = v11[3];
    v62 = v11[4];
    v63 = v11[5];
    v58 = v11[0];
    v59 = v11[1];
  }

  else
  {
    sub_1C5B98DC8(&v48);
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v38 = v48;
    v39 = v49;
    _s25VideoOutputViewControllerVMa();
    swift_getWitnessTable();
    sub_1C5941600(&v38, &v58);
  }

  v44 = v64;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v38 = v58;
  v39 = v59;
  _s25VideoOutputViewControllerVMa();
  v8 = sub_1C5BCB804();
  v37 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  sub_1C593EDC0(&v38, v8, v9);
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v48 = v38;
  v49 = v39;
  return (*(*(v8 - 8) + 8))(&v48, v8);
}

uint64_t sub_1C5B94020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 81) = 0;
  _s13HostedContentCMa();
  sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa);
  *(a2 + 88) = sub_1C5BC8324();
  *(a2 + 96) = v3 & 1;
  _s12PresentationCMa();
  sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa);
  *(a2 + 104) = sub_1C5BC8324();
  *(a2 + 112) = v4 & 1;
  type metadata accessor for NowPlayingViewModel();
  sub_1C5B98A84(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
  *(a2 + 120) = sub_1C5BC8C84();
  *(a2 + 128) = v5;
  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  result = sub_1C5BC8C84();
  *(a2 + 136) = result;
  *(a2 + 144) = v7;
  return result;
}

uint64_t sub_1C5B941BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v7[7] = sub_1C5BCB1E4();
  v7[8] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();
  v7[9] = v9;
  v7[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5B94260, v9, v8);
}

uint64_t sub_1C5B94260()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v4;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_1C5BCB1D4();
  v0[13] = v8;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1C5B943A0;
  v10 = MEMORY[0x1E69E85E0];
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_1C5BF2B68, v6, sub_1C5B98C8C, v7, v8, v10, v11);
}

void sub_1C5B943A0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);

    MEMORY[0x1EEE6DFA0](sub_1C5B944EC, v3, v4);
  }
}

uint64_t sub_1C5B944EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5B9454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  sub_1C5BCB1E4();
  v4[14] = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5B945E8, v6, v5);
}

uint64_t sub_1C5B945E8()
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  v0[17] = __swift_project_value_buffer(v1, qword_1EDA5DA78);
  v2 = sub_1C5BC7D44();
  v3 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5922000, v2, v3, "MPCVideoView awaiting MPCVideoOutput", v4, 2u);
    MEMORY[0x1C69510F0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194CB0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
  v0[19] = v7;
  *v5 = v0;
  v5[1] = sub_1C5B94784;
  v8 = v0[11];
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 6, v8, v6, v7, v9);
}

uint64_t sub_1C5B94784()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1C5B94AD8;
  }

  else
  {
    v5 = sub_1C5B948C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5B948C0()
{
  v16 = v0;
  v1 = v0[13];
  v2 = v0[12];

  v0[8] = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC199E10);
  sub_1C5BCA6A4();

  swift_unknownObjectRetain();
  v3 = sub_1C5BC7D44();
  v4 = sub_1C5BCB4F4();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v0[4] = v6;
    v0[5] = v5;
    v15 = v8;
    *v7 = 136446210;
    sub_1C5BCA694();
    v9 = v0[9];
    if (v9)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    v0[10] = v9;
    v10 = sub_1C5BCAEA4();
    v12 = sub_1C592ADA8(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C5922000, v3, v4, "MPCVideoView received MPCVideoOutput (id=%{public}s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1C69510F0](v8, -1, -1);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C5B94AD8()
{
  v16 = v0;
  v1 = v0[20];

  v2 = v1;
  v3 = sub_1C5BC7D44();
  v4 = sub_1C5BCB4D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v0[7] = v5;
    v8 = v5;
    v9 = sub_1C5BCAEA4();
    v11 = sub_1C592ADA8(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C5922000, v3, v4, "MPCVideoView failed to load MPCVideoOutput: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69510F0](v7, -1, -1);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }

  else
  {
    v12 = v0[20];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C5B94C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1C5BCB214();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1C5BCB1E4();

  swift_unknownObjectRetain();
  v14 = sub_1C5BCB1D4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a3;
  sub_1C5AD0FB8(0, 0, v12, &unk_1C5BF2B80, v15);
}

uint64_t sub_1C5B94DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C5BCB1E4();
  *(v4 + 24) = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B94E58, v6, v5);
}

uint64_t sub_1C5B94E58()
{

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  __swift_project_value_buffer(v1, qword_1EDA5DA78);
  v2 = sub_1C5BC7D44();
  v3 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5922000, v2, v3, "MPCVideoView cancelling client task", v4, 2u);
    MEMORY[0x1C69510F0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
  sub_1C5BCB2A4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C5B94FD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v64 = &v61 - v2;
  v65 = sub_1C5BCB5F4();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v61 - v5;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  v11 = *(v0 + 56);
  v84[2] = *(v0 + 40);
  *v85 = v11;
  *&v85[10] = *(v0 + 66);
  v84[0] = *(v0 + 8);
  v84[1] = v10;
  v12 = *(v0 + 88);
  LODWORD(v71) = *(v0 + 96);
  v13 = *(v0 + 120);
  v72 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F70);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = v14;
  swift_unknownObjectWeakAssign();
  if (v85[25])
  {
    v15 = *(v0 + 40);
    v81 = *(v0 + 24);
    v82 = v15;
    v83[0] = *(v0 + 56);
    *(v83 + 9) = *(v0 + 65);
    v80 = *(v0 + 8);
  }

  else
  {

    sub_1C5BCB4E4();
    v16 = v12;
    v17 = v13;
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v13 = v17;
    v12 = v16;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v84, &unk_1EC194DE0);
    (*(v7 + 8))(v9, v6);
  }

  v19 = v6;
  v78 = v82;
  v79[0] = v83[0];
  *(v79 + 9) = *(v83 + 9);
  v76 = v80;
  v77 = v81;
  v20 = v71;
  if (v13)
  {
    v72 = v73 | 0x8000000000000000;

    v21 = v12;
    if ((v20 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v22 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v19);
      v21 = v74;
    }

    swift_getKeyPath();
    v74 = v21;
    sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B74();

    v23 = v21[6];
    v69 = v21[5];
    v70 = v23;

    if ((v20 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v24 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v19);
      v12 = v74;
    }

    v25 = type metadata accessor for VideoPlayerCoordinator();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
    *v27 = 0;
    v27[1] = 0;
    v28 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_aspectRatioObserver;
    *&v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_aspectRatioObserver] = 0;
    *&v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_subscriptions] = MEMORY[0x1E69E7CD0];
    v29 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_tapGestureRecognizer;
    *&v26[v29] = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
    v30 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_pinchGestureRecognizer;
    *&v26[v30] = [objc_allocWithZone(MEMORY[0x1E69DCD80]) &selRef__dampingRatio];
    v31 = &v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_onFullscreenStateChanged];
    *v31 = 0;
    v31[1] = 0;
    *&v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource] = v72;
    *&v26[v28] = 0;

    v32 = &v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
    v33 = v79[0];
    v32[2] = v78;
    v32[3] = v33;
    *(v32 + 57) = *(v79 + 9);
    v34 = v77;
    *v32 = v76;
    v32[1] = v34;
    v35 = v12;
    v36 = v13;
    v37 = *(v13 + 40);
    swift_getKeyPath();
    v74 = v37;
    sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa);
    sub_1C5BC7B74();

    v38 = v37[17];
    v39 = v36;
    v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle] = v38;
    *&v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_nowPlayingViewModel] = v36;
    v40 = v70;
    *v27 = v69;
    v27[1] = v40;

    v41 = &v26[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection];
    *v41 = sub_1C5B9919C;
    v41[1] = v35;
    v75.receiver = v26;
    v75.super_class = v25;
    v71 = v35;

    v42 = objc_msgSendSuper2(&v75, sel_init);
    Strong = swift_unknownObjectWeakLoadStrong();
    v44 = v42;
    if (Strong)
    {
      [Strong setShowsPlaybackControls_];
      swift_unknownObjectRelease();
    }

    v45 = *&v44[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_tapGestureRecognizer];
    v46 = v44;
    [v45 addTarget:v46 action:sel_didTap];
    v47 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_pinchGestureRecognizer;
    v48 = *&v46[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_pinchGestureRecognizer];
    [v48 addTarget:v46 action:sel_didPinch_];

    v49 = *&v46[v47];
    [v49 setDelegate_];

    sub_1C5B95FA0();
    v50 = [objc_opt_self() currentDevice];
    v51 = [v50 userInterfaceIdiom];

    if (!v51)
    {
      v52 = [objc_opt_self() defaultCenter];
      v53 = v62;
      sub_1C5BCB604();

      sub_1C592535C(0, &qword_1EDA4E620);
      v54 = sub_1C5BCB5A4();
      v74 = v54;
      v55 = sub_1C5BCB594();
      v56 = v64;
      (*(*(v55 - 8) + 56))(v64, 1, 1, v55);
      sub_1C5B98A84(&unk_1EDA4E0E0, MEMORY[0x1E6969F20]);
      sub_1C5931640();
      v57 = v65;
      v58 = v66;
      sub_1C5BC80D4();
      sub_1C5924EF4(v56, &unk_1EC199F20);
      (*(v63 + 8))(v53, v57);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440);
      v59 = v68;
      sub_1C5BC8114();

      (*(v67 + 8))(v58, v59);
      swift_beginAccess();
      sub_1C5BC7EE4();
      swift_endAccess();
    }

    v74 = *(v39 + 168);
    *(swift_allocObject() + 16) = v72;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F40);
    sub_1C5924F54(&qword_1EDA46898, &unk_1EC199F40);
    sub_1C5BC8114();

    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    sub_1C5B963D4();

    return v46;
  }

  else
  {
    type metadata accessor for NowPlayingViewModel();
    sub_1C5B98A84(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B95B84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B95C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5B94FD0();
  *a1 = result;
  return result;
}

uint64_t sub_1C5B95C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C5B95CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1C5B95D30()
{
  swift_getWitnessTable();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t sub_1C5B95D70()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF719AspectRatioObserver__aspectRatio;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199CC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AspectRatioObserver()
{
  result = qword_1EC199A30;
  if (!qword_1EC199A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5B95E6C()
{
  sub_1C5B95EFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C5B95EFC()
{
  if (!qword_1EDA46840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46840);
    }
  }
}

uint64_t sub_1C5B95F60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AspectRatioObserver();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

void sub_1C5B95FA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - v3;
  v5 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource;
  if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    v10 = Strong;

    v7 = [v10 playerViewController];
    swift_unknownObjectRelease();
    v8 = [v7 view];
  }

  else
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;

    v8 = [v7 view];
  }

  v11 = v8;

  if (v11)
  {
    [v11 addGestureRecognizer_];
  }

LABEL_8:
  if ((*(v0 + v5) & 0x8000000000000000) != 0)
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = v15;

    v13 = [v16 playerViewController];
    swift_unknownObjectRelease();
    v14 = [v13 view];
  }

  else
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;

    v14 = [v13 view];
  }

  v17 = v14;

  if (v17)
  {
    [v17 addGestureRecognizer_];
  }

LABEL_15:
  if ((*(v0 + v5) & 0x8000000000000000) == 0)
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;

      v20 = [v19 player];

      if (v20)
      {
        swift_getKeyPath();
        sub_1C5BC7924();

        sub_1C5924F54(&qword_1EC195890, &unk_1EC199F50);
        v21 = sub_1C5BC8064();

        (*(v2 + 8))(v4, v1);
        v22[1] = v21;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F60);
        sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
        sub_1C5BC8114();

        swift_beginAccess();
        sub_1C5BC7EE4();
        swift_endAccess();
      }

      else
      {
      }
    }
  }
}

void sub_1C5B963D4()
{
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource);
    if (*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 18) == 2)
    {
      if ((v1 & 0x8000000000000000) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        [Strong setAllowsVideoFrameAnalysis_];
LABEL_9:

        return;
      }

      v4 = swift_unknownObjectWeakLoadStrong();
      if (!v4)
      {
        return;
      }

      [v4 setAllowsVideoFrameAnalysis_];
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8);
      if ((v1 & 0x8000000000000000) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        [Strong setAllowsVideoFrameAnalysis_];
        goto LABEL_9;
      }

      v5 = swift_unknownObjectWeakLoadStrong();
      if (!v5)
      {
        return;
      }

      [v5 setAllowsVideoFrameAnalysis_];
    }
  }

  else
  {
    if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong setAllowsVideoFrameAnalysis_];
      goto LABEL_9;
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    [v3 setAllowsVideoFrameAnalysis_];
  }

  swift_unknownObjectRelease();
}

void sub_1C5B96568(unsigned __int8 *a1)
{
  if (*a1 != *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle))
  {
    sub_1C5B963D4();
    if ((*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong setShowsPlaybackControls_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      [v3 setShowsPlaybackControls_];
    }
  }
}

void sub_1C5B96640(void *a1)
{
  v2 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8);
  if (v3)
  {
    if (v2)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent) == *a1 && v3 == v2;
      if (v4 || (sub_1C5BCBDE4() & 1) != 0)
      {
        return;
      }

LABEL_11:

      sub_1C5B963D4();
      return;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v2)
  {
    goto LABEL_10;
  }
}

void sub_1C5B96714()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = *(Strong + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource);
  v2 = Strong;

  if (v1 < 0)
  {
  }

  else
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
LABEL_11:

      return;
    }

    v4 = v3;
    v5 = [v3 allowsEnteringFullScreen];

    if (!v5)
    {
      return;
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource);
    v8 = v6;

    if (v7 < 0)
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v10 = [v12 playerViewController];
        swift_unknownObjectRelease();
        v11 = [v10 presentedViewController];
LABEL_14:
        v13 = v11;

        if (v13)
        {

          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 presentedViewController];
        goto LABEL_14;
      }
    }
  }

LABEL_17:
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 orientation];

  if (UIDeviceOrientationIsLandscape(v15))
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle];

      if (v17 == 1)
      {
        swift_beginAccess();
        v18 = swift_unknownObjectWeakLoadStrong();
        if (v18)
        {
          v19 = *(v18 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8);
          v20 = v18;

          if (v19)
          {

            return;
          }
        }

        swift_beginAccess();
        v21 = swift_unknownObjectWeakLoadStrong();
        if (v21)
        {
          v22 = *(v21 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource);
          v23 = v21;

          if (v22 < 0)
          {
            v26 = swift_unknownObjectWeakLoadStrong();
            if (v26)
            {
              [v26 enterFullScreenWithCompletion_];
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v24 = swift_unknownObjectWeakLoadStrong();
            if (v24)
            {
              v25 = v24;
              [v24 enterFullScreenWithCompletion_];
            }
          }

          goto LABEL_11;
        }
      }
    }
  }
}

void sub_1C5B96A08(char *a1, uint64_t a2)
{
  if (*a1 <= -3)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C5BC7D64();
    __swift_project_value_buffer(v3, qword_1EDA5DA78);
    v4 = sub_1C5BC7D44();
    v5 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C5922000, v4, v5, "VideoPlayerCoordinator found pending collapse transition, exiting fullscreen if necessary.", v6, 2u);
      MEMORY[0x1C69510F0](v6, -1, -1);
    }

    if (a2 < 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong exitFullScreenWithCompletion_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v9 = v7;
        [v7 exitFullScreenWithCompletion_];
      }
    }
  }
}

void sub_1C5B96B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BCAC14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 16) & 1) == 0)
  {
    v14 = *a1;
    v13 = *(a1 + 8);
    if (*a1 != 0.0 || v13 != 0.0)
    {
      v19 = v10;
      sub_1C592535C(0, &qword_1EDA4E620);
      v18 = sub_1C5BCB5A4();
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = v14;
      *(v15 + 32) = v13;
      aBlock[4] = sub_1C5B990FC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C596D09C;
      aBlock[3] = &block_descriptor_103;
      v16 = _Block_copy(aBlock);

      sub_1C5BCAC34();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1C5B98A84(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
      sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
      sub_1C5BCB8F4();
      v17 = v18;
      MEMORY[0x1C694F7F0](0, v12, v7, v16);
      _Block_release(v16);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v19);
    }
  }
}

void sub_1C5B96EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_aspectRatioObserver])
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1C5BC8044();
    }

    else
    {
    }
  }
}

void sub_1C5B96F6C()
{
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 18) == 2 || !*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8))
  {
    v7 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource;
    if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;

    v10 = [v9 allowsEnteringFullScreen];

    if (!v10)
    {
      return;
    }

    if ((*(v0 + v7) & 0x8000000000000000) != 0)
    {
LABEL_16:
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        [v12 enterFullScreenWithCompletion_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v13 = v11;
        [v11 enterFullScreenWithCompletion_];
      }
    }
  }

  else
  {
    v1 = v0;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA5DA78);
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5922000, v3, v4, "Dismissing selected content because video thumbnail was tapped", v5, 2u);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    v6 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection);
    v14[0] = 0;
    v14[1] = 0;

    v6(v14, 1);
  }
}