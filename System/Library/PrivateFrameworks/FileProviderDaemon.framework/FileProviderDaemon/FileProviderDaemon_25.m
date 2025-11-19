uint64_t sub_1CF2CF514(uint64_t result)
{
  v1 = qword_1EDEBB730;
  if (*(result + qword_1EDEBB730 + 8))
  {
    v1 = qword_1EDEBB738;
  }

  v2 = *(result + v1);
  v3 = qword_1EDEBB748;
  if (*(result + qword_1EDEBB748 + 8))
  {
    v3 = qword_1EDEBB750;
  }

  v4 = *(result + v3);
  v5 = (result + qword_1EDEBB740);
  if (*(result + qword_1EDEBB740 + 8) == 1)
  {
    if (*(result + 152))
    {
LABEL_22:
      *(result + qword_1EDEBB6E8) = v2;
      *(result + qword_1EDEBB6E0) = v4;
      return result;
    }

    v5 = (result + 144);
  }

  v6 = qword_1EDEBB720;
  if (*(result + qword_1EDEBB720 + 8))
  {
    v6 = qword_1EDEBB728;
  }

  v7 = *v5;
  v8 = *(result + v6) * v7;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2 <= v8)
  {
    v2 = v8;
  }

  v9 = qword_1EDEBB710;
  if (*(result + qword_1EDEBB710 + 8))
  {
    v9 = qword_1EDEBB718;
  }

  v10 = *(result + v9) * v7;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 < 9.22337204e18)
  {
    if (v4 <= v10)
    {
      v4 = v10;
    }

    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

ssize_t sub_1CF2CF6C0()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + qword_1EDEA4970);
  v8 = *(v1 + qword_1EDEA4970);
  v9 = *(v1 + qword_1EDEA4970 + 8);

  v10 = sub_1CF9E6888();

  v11 = [v10 fileSystemRepresentation];
  v12 = v10;
  result = getxattr(v11, "com.apple.fileprovider.testing.failSpeculativeDownload", 0, 0, 0, 1);
  if (result >= 1)
  {
    *(v1 + qword_1EDEBB770) = 1;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = *v7;
      v20 = v7[1];

      v21 = sub_1CEFD0DF0(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "💾 marking SpeculativeDownloadsDiskManagement as ailDownloadsWithInsufficiantStorage: for root %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D386CDC0](v18, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1CF2CF910(void (*a1)(void *), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v11 = v4;
    fp_preconditionFailure(_:file:line:)(a2, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a1(v4);
  result = objc_sync_exit(v4);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v11 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v10, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF2CFA4C(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF7F33F0();
  v7 = *(a1 + 120);
  v8 = *(a1 + qword_1EDEA4970);
  v9 = *(a1 + qword_1EDEA4970 + 8);

  v10 = sub_1CF9E6888();

  v28[0] = 0;
  v11 = [v7 setupForPath:v10 error:v28];

  if (v11)
  {
    v12 = v28[0];
    v13 = [v7 totalSize];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 longLongValue];
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 144) = v15;
    *(a1 + 152) = v14 == 0;
    if (os_variant_has_internal_content())
    {
      sub_1CF2CF6C0();
    }

    sub_1CF2CF910(sub_1CF2CF514, sub_1CF1C546C, sub_1CF1C5468, sub_1CF1C5468);
    sub_1CF385874();
    result = sub_1CF38525C();
  }

  else
  {
    v16 = v28[0];
    v17 = sub_1CF9E57F8();

    swift_willThrow();
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v19 = v17;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_getErrorValue();
      v24 = Error.prettyDescription.getter(v27[1]);
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "💾 failed to register root path for speculative downloader: %@", v22, 0xCu);
      sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    else
    {
    }

    result = (*(v3 + 8))(v6, v2);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1CF2CFDB8()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    goto LABEL_18;
  }

  if (v0[qword_1EDEBB770])
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v1 = objc_sync_enter(v0);
  if (v1)
  {
LABEL_18:
    MEMORY[0x1EEE9AC00](v1);
    v10 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF385874();
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = sub_1CF386068(1);
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = v4;
  if (sub_1CF38773C())
  {
    goto LABEL_8;
  }

  v1 = sub_1CF3850A0();
  if (v1 < v6)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if (__OFSUB__(v6, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *&v0[qword_1EDEBB6E8] < v6 - v1;
LABEL_9:
  v3 = objc_sync_exit(v0);
  if (v3)
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v3);
    v10 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v7;
}

void *sub_1CF2D0000(void (*a1)(void, void), void (*a2)(void, void), void (*a3)(void, void), void (*a4)(void, void))
{
  a1(v4[2], v4[3]);
  a2(v4[4], v4[5]);
  a3(v4[6], v4[7]);
  v8 = v4[9];
  sub_1CEFF7124(v4[8]);
  v9 = v4[10];

  v10 = v4[11];

  v11 = v4[12];

  v12 = v4[13];

  a4(v4[15], v4[16]);
  v13 = v4[17];

  v14 = v4[18];

  return v4;
}

void sub_1CF2D00A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a3;
  v10 = a4;
  v8(a2, a3, v10);
}

uint64_t sub_1CF2D02A4()
{
  v0 = sub_1CF9E7388();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E7488();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8[0] = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v8[1] = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CF9E77B8();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1CF9E7498();
  qword_1EDEBBA00 = result;
  return result;
}

uint64_t sub_1CF2D04C8()
{
  v0 = 0xE90000000000003ELL;
  v1 = 0x6E776F6E6B6E753CLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = [Strong provider], v10, v11))
  {
    v12 = [v11 bundleVersion];

    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 provider];

    if (v18)
    {
      v19 = [v18 descriptor];

      v20 = [v19 extensionUUID];
      if (v20)
      {
        sub_1CF9E5D58();

        v21 = sub_1CF9E5D98();
        (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
      }

      else
      {
        v21 = sub_1CF9E5D98();
        (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      }

      sub_1CEFE55D0(v5, v8, &unk_1EC4BEDE0, qword_1CF9FA390);
      sub_1CF9E5D98();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v8, 1, v21) == 1)
      {
        sub_1CEFCCC44(v8, &unk_1EC4BEDE0, qword_1CF9FA390);
      }

      else
      {
        v1 = MEMORY[0x1D3867FB0]();
        v0 = v23;
        (*(v22 + 8))(v8, v21);
      }
    }
  }

  v25[0] = v13;
  v25[1] = v15;
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](v1, v0);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v25[0];
}

uint64_t sub_1CF2D07F4()
{
  if (*(v0 + 272))
  {
    return 1;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result isConnectedToAppExtension];

    if (!v3)
    {
      return 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result provider];

    if (v5)
    {
      v6 = [v5 asAppExtensionBackedProvider];

      v7 = [v6 descriptor];
      v8 = [v7 wantsFlattenedPackages];

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1CF2D08E4()
{
  v1 = v0[36];
  v2 = v1;
  if (v1 == 1)
  {
    v3 = v0;
    v4 = v0[27];
    if (v4)
    {
      v5 = v0[28];
      v6 = v4();
      v2 = v6;
      if (v6)
      {
        sub_1CF2D0978(v6, 0, 1);
      }
    }

    else
    {
      v2 = 0;
    }

    v7 = v3[36];
    v3[36] = v2;
    v8 = v2;
    sub_1CF00D644(v7);
  }

  sub_1CF2B1FC4(v1);
  return v2;
}

void sub_1CF2D0978(void *a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 280);
  v8 = [v7 pathComponents];
  v9 = sub_1CF9E6D48();

  v10 = *(v9 + 16);

  if (v10 >= 2)
  {
    v11 = [v7 stringByDeletingLastPathComponent];
    if (!v11)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = sub_1CF9E6888();
    }

    v7 = v11;
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v7;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3 & 1;
  v16[4] = sub_1CF2F63BC;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CF2D00A0;
  v16[3] = &block_descriptor_845;
  v14 = _Block_copy(v16);
  v15 = v7;

  [a1 setModifyDecoratedPayloadHook:v14 forCategory:1];
  _Block_release(v14);
}

void sub_1CF2D0B34(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 112) & 1) == 0)
    {
      v12 = [objc_opt_self() defaultStore];
      v13 = [v12 dynamicErrorSampleRatePerProvider];

      v14 = sub_1CF9E6D48();
      v15 = sub_1CF51810C(a5, v14);
      LOBYTE(v13) = v16;

      if ((v13 & 1) == 0)
      {
        v17 = sub_1CF518B08(0x64uLL);
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          return;
        }

        if (v15 < (v17 + 1))
        {
          [a3 removeAllObjects];
LABEL_24:

          return;
        }
      }
    }

    v18 = sub_1CF9E6888();
    [a3 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (!a2)
    {
      goto LABEL_24;
    }

    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v20 = [v32 fp_protectionClassBehindError];
    if (v20)
    {
      v21 = v20;
      [a3 __swift_setObject_forKeyedSubscript_];
      swift_unknownObjectRelease();
    }

    if ((a7 & 1) == 0)
    {
      v22 = sub_1CF9E7628();
      [a3 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
    }

    if (os_variant_has_internal_content())
    {
      v23 = [v32 domain];
      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;

      v27 = *MEMORY[0x1E696A250];
      if (v24 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v28)
      {
      }

      else
      {
        v29 = sub_1CF9E8048();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if ([v32 code] >= 4096 && objc_msgSend(v32, sel_code) <= 4224)
      {
        v30 = [objc_opt_self() sharedInstance];
        v31 = [v30 crashReporterKey];

        if (!v31)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v31 = sub_1CF9E6888();
        }

        [a3 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

LABEL_20:
  }
}

fp_task_tracker *sub_1CF2D0FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  type metadata accessor for TaskTracker();
  v10 = swift_allocObject();
  result = fp_task_tracker_create("fpfiletree");
  if (result)
  {
    *(v5 + 232) = 0u;
    v12 = MEMORY[0x1E69E7CC8];
    *(v10 + 16) = result;
    *(v5 + 168) = v10;
    *(v5 + 176) = v12;
    *(v5 + 184) = v12;
    *(v5 + 192) = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
    *(v5 + 248) = 0u;
    *(v5 + 257) = 0u;
    *(v5 + 288) = 1;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
    *(v5 + 312) = 0;
    *(v5 + 320) = 1;
    if (qword_1EDEA5AD8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDEBB820;
    v13 = *algn_1EDEBB828;
    *(v5 + 328) = qword_1EDEBB820;
    *(v5 + 336) = v13;
    swift_unknownObjectWeakAssign();
    v15 = v13;
    v16 = v14;
    *(v5 + 280) = [a1 providerDomainID];
    if (qword_1EDEAACE8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDEBBA00;
    *(v5 + 160) = qword_1EDEBBA00;
    *(v5 + 216) = a3;
    *(v5 + 224) = a4;
    v18 = v17;
    sub_1CF03C63C(a3);
    v58 = a1;
    v19 = [a1 provider];
    v57 = a3;
    if (v19 && (v20 = v19, v21 = [v19 descriptor], v20, v21))
    {
      v22 = [v21 downloadPipelineDepth];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 integerValue];
      }

      else
      {
        v24 = 0;
      }

      v29 = sub_1CF2F1D18(0x64616F6C6E776F64, 0xE800000000000000, v24, v23 == 0);
      v30 = [v21 uploadPipelineDepth];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 integerValue];
      }

      else
      {
        v32 = 0;
      }

      v27 = sub_1CF2F1D18(0x64616F6C7075, 0xE600000000000000, v32, v31 == 0);
      v33 = [v21 metadataOnlyUploadPipelineDepth];
      v56 = v21;
      if (v33)
      {
        v34 = v33;
        v35 = [v33 integerValue];

        v28 = v35;
        v25 = 0;
      }

      else
      {
        v28 = 0;
        v25 = 1;
      }

      v26 = v29;
    }

    else
    {
      v25 = 1;
      v26 = sub_1CF2F1D18(0x64616F6C6E776F64, 0xE800000000000000, 0, 1);
      v27 = sub_1CF2F1D18(0x64616F6C7075, 0xE600000000000000, 0, 1);
      v56 = 0;
      v28 = 0;
    }

    v36 = sub_1CF2F1D18(0xD000000000000012, 0x80000001CFA3E310, v28, v25);
    v37 = v36;
    if (v27)
    {
      v55 = v27;
      if (v36)
      {
        goto LABEL_21;
      }
    }

    else
    {
      type metadata accessor for JobLimit();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1CFA018D0;
      *(v41 + 32) = xmmword_1CFA018E0;
      v55 = v41;
      if (v37)
      {
LABEL_21:
        v38 = v37;
        if (v26)
        {
LABEL_22:
          v39 = a2;
          v40 = v26;
LABEL_26:
          v42 = objc_opt_self();

          v43 = [v42 defaultStore];
          v44 = [v43 softConcurrentOperationLimit];
          v45 = [v43 hardConcurrentOperationLimit];

          v46 = v45;
          type metadata accessor for JobLimit();
          v47 = swift_allocObject();
          v47[2] = 0;
          v47[3] = v44;
          v47[4] = v44;
          v47[5] = v46;
          *(v5 + 112) = 0;
          *(v5 + 144) = 0;
          *(v5 + 16) = 0u;
          *(v5 + 32) = 0u;
          *(v5 + 48) = 0u;
          *(v5 + 64) = 0u;
          *(v5 + 120) = 0;
          *(v5 + 128) = 0;
          v48 = *(*v5 + 520);

          v48(v49);
          *(v5 + 136) = v39;
          *(v5 + 80) = v47;
          *(v5 + 88) = v55;
          *(v5 + 96) = v38;
          *(v5 + 104) = v40;
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF180, &unk_1CFA01B20);
          v51 = *(v50 + 48);
          v52 = *(v50 + 52);
          swift_allocObject();

          v53 = sub_1CF2CEC48(v39);

          sub_1CEFF7124(v57);

          v54 = *(v5 + 144);
          *(v5 + 144) = v53;

          return v5;
        }

LABEL_25:
        v39 = a2;
        type metadata accessor for JobLimit();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1CFA018F0;
        *(v40 + 32) = xmmword_1CFA01900;
        goto LABEL_26;
      }
    }

    type metadata accessor for JobLimit();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1CFA018D0;
    *(v38 + 32) = xmmword_1CFA018E0;
    if (v26)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_1CF2D1564(void *a1)
{
  v3 = sub_1CF9E5FF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = a1;
    v8 = [v17 extendedAttributes];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1CF9E6638();

      sub_1CF045428(v10, v1);

      v11 = sub_1CF9E6618();

      [v17 setExtendedAttributes_];
    }

    if ([v17 isFlattenedPackage])
    {
      v12 = [v17 filename];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 stringByDeletingPathExtension];

        if (!v14)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v14 = sub_1CF9E6888();
        }

        [v17 setFilename_];

        sub_1CF9E5FA8();
        v15 = sub_1CF9E5F38();
        (*(v4 + 8))(v7, v3);
        [v17 setContentType_];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v16 = v17;
    }
  }
}

void sub_1CF2D17EC(void *a1, void *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  if (a1)
  {
    v12 = a1;
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = a1;
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E72A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = sub_1CF9E57E8();
      v20 = [v19 fp_prettyDescription];

      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Error setting domain user info: %@", v17, 0xCu);
      sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v18, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v21 = [a2 server];
    if (v21)
    {
      v28 = v21;
      [v21 signalProviderChangesWithLowPriority];
      v22 = v28;
    }

    else
    {
      v23 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v24 = sub_1CF9E6108();
      v25 = sub_1CF9E72A8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1CEFC7000, v24, v25, "Error signaling change after setting new domainUserInfo, server was nil", v26, 2u);
        MEMORY[0x1D386CDC0](v26, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
    }
  }
}

void sub_1CF2D1AFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a1 + 280) itemIdentifier:a2];
  v10 = fpfs_current_log();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v12 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v17 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v13 = [v12 session];
  v14 = [objc_opt_self() defaultStore];
  if ([v14 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v15 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v14 upcallExecutionTimeLimitBase];
    v15 = v16;
  }

  v17 = [v13 newFileProviderProxyWithTimeout:0 pid:v15];
  swift_unknownObjectRelease();
LABEL_11:
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18 && (v19 = v18, v20 = [v18 session], v19, v20))
  {
    v21 = [objc_opt_self() requestForSelf];
    v22 = [v21 nsfpRequestForSession:v20 isSpeculative:0];

    [v22 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v10;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a5;
  v27[4] = sub_1CF2F62B4;
  v27[5] = v23;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1CF2D207C;
  v27[3] = &block_descriptor_818;
  v24 = _Block_copy(v27);

  v25 = v10;
  v26 = a3;

  [v17 itemForItemID:v9 request:v22 completionHandler:v24];
  _Block_release(v24);

  swift_unknownObjectRelease();
}

uint64_t sub_1CF2D1E30(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a4 + 160);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a2;
  v17[4] = a6;
  v17[5] = a3;
  v17[6] = a7;
  v17[7] = a8;
  v17[8] = a1;

  v18 = a2;
  v19 = a6;
  v20 = a3;
  v21 = a1;

  sub_1CF01001C(a5, "lookupItem(by:lastKnownVersion:domainVersion:options:completion:)", 65, 2, sub_1CF2F62C4, v17);
}

void sub_1CF2D1F20(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void *, uint64_t), uint64_t a6, void *a7)
{
  sub_1CF041B2C(a2, a3);
  if (a4)
  {
    _s3__C4CodeOMa_1(0);
    v10 = a4;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    v11 = sub_1CF9E5658();

    if ((v11 & 1) == 0)
    {
      v12 = a4;
      a5(a4, 1);

      return;
    }

    goto LABEL_8;
  }

  if (!a7)
  {
LABEL_8:
    a5(0, 0);
    return;
  }

  v13 = a7;
  sub_1CF2D1564(a7);
  a5(a7, 0);
}

void sub_1CF2D207C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1CF2D2124(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = fpfs_current_log();
  if (a1)
  {
    type metadata accessor for FileProviderPageToken();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      goto LABEL_5;
    }

    LODWORD(v71) = 0;
    v70 = 450;
    sub_1CF9E7B68();
    __break(1u);
  }

  v17 = *MEMORY[0x1E6967208];
  v18 = sub_1CF9E5B88();
  v19 = v15;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v24 = v23;
  v82 = sub_1CF9E5B48();
  v25 = v24;
  a7 = v22;
  a6 = v21;
  a5 = v20;
  v15 = v19;
  sub_1CEFE4714(v18, v25);
  type metadata accessor for FileProviderPageToken();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v82;
  v26 = a2;

LABEL_5:
  swift_retain_n();

  v27 = swift_allocObject();
  v27[2] = v15;
  v27[3] = v16;
  v75 = a5;
  v77 = a7;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = a3;
  v27[7] = a2;
  v27[8] = a7;
  v27[9] = a8;
  v83 = v27;
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = a2;
  v30 = v15;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v31 = v29;
  v32 = v30;
  if (Strong)
  {
    v33 = [Strong session];
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_allocWithZone(type metadata accessor for FPFileTreeLifetimeExtender());
  v35 = a4;
  v36 = v31;
  v37 = sub_1CF089C88(v36, a4, 0, 1);
  v81 = v36;

  if (v33)
  {
    [v33 registerLifetimeExtensionForObject_];
  }

  v80 = v37;
  v38 = swift_unknownObjectWeakLoadStrong();
  if (!v38 || (v39 = v38, v40 = [v38 userEnabled], v39, (v40 & 1) == 0))
  {
    v74 = sub_1CF2F20BC();
    v49 = swift_allocObject();
    *(v49 + 16) = v33;
    *(v49 + 24) = v80;
    swift_unknownObjectRetain();
    v50 = v80;

    v79 = fpfs_adopt_log();
    v72 = *(v16 + 24);
    v51 = swift_allocObject();
    v51[2] = v15;
    v51[3] = sub_1CF2F61E0;
    v51[4] = v49;
    v51[5] = v75;
    v51[6] = a6;
    v51[7] = a3;
    v52 = v81;
    v51[8] = v81;
    v51[9] = v50;
    v51[10] = v77;
    v51[11] = a8;
    v51[12] = v16;
    v89 = sub_1CF2F61E4;
    v90 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = sub_1CF9284C8;
    v88 = &block_descriptor_774;
    v53 = _Block_copy(&aBlock);
    v54 = v81;
    v55 = v32;

    v56 = v50;

    [v74 enumerateItemsFromPage:v72 suggestedPageSize:200 reply:v53];
    v57 = v53;
    v58 = v79;
    _Block_release(v57);
    v59 = fpfs_adopt_log();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_30;
  }

  v78 = v32;
  v41 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
  v42 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a3 + 280) itemIdentifier:v81];
  v76 = v41;
  [v41 setEnumeratedItemID_];

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    if ([v43 userEnabled])
    {
      v45 = [v44 session];
      v46 = [objc_opt_self() defaultStore];
      if ([v46 hasUpcallExecutionTimeLimits])
      {
        goto LABEL_18;
      }

      if (qword_1EC4BCCF0 != -1)
      {
        swift_once();
      }

      v47 = -1.0;
      if (byte_1EC4BF020 == 1)
      {
LABEL_18:
        [v46 upcallExecutionTimeLimitBase];
        v47 = v48;
      }

      v73 = [v45 newFileProviderProxyWithTimeout:0 pid:v47];
      swift_unknownObjectRelease();
      goto LABEL_23;
    }
  }

  v73 = sub_1CF2F1F6C();
LABEL_23:
  v58 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
  v60 = swift_unknownObjectWeakLoadStrong();
  if (v60 && (v61 = v60, v62 = [v60 session], v61, v62))
  {
    v63 = v35;
    if (!a4)
    {
      v63 = [objc_opt_self() requestForSelf];
    }

    v64 = v35;
    v59 = [v63 nsfpRequestForSession:v62 isSpeculative:0];

    [v59 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v65 = swift_allocObject();
  v65[2] = v33;
  v65[3] = v80;
  v52 = v81;
  v65[4] = v81;
  v65[5] = sub_1CF2F61A8;
  v65[6] = v83;
  v89 = sub_1CF03F200;
  v90 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1CF03FCFC;
  v88 = &block_descriptor_780_0;
  v66 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v67 = v80;

  v68 = v81;

  [v73 fetchAndStartEnumeratingWithSettings:v76 observer:v58 request:v59 completionHandler:v66];
  _Block_release(v66);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v32 = v78;
LABEL_30:
}

void sub_1CF2D292C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{

  v18 = fpfs_adopt_log();
  v26 = *(a6 + 24);
  v27 = v18;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a7;
  v19[6] = a8;
  v19[7] = a9;
  v19[8] = a10;
  v19[9] = a2;
  v19[10] = a11;
  v19[11] = a12;
  v19[12] = a6;
  aBlock[4] = sub_1CF2F65B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF9284C8;
  aBlock[3] = &block_descriptor_790;
  v20 = _Block_copy(aBlock);
  v21 = a5;

  v22 = a10;
  v23 = a2;

  [a1 enumerateItemsFromPage:v26 suggestedPageSize:200 reply:v20];
  _Block_release(v20);
  v24 = fpfs_adopt_log();
}

void sub_1CF2D2AC8(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8, void (*a9)(uint64_t, void), uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t (*a14)(unint64_t), uint64_t a15, uint64_t a16)
{
  v72 = a2;
  v77 = a12;
  v75 = a11;
  v20 = a9;
  v21 = sub_1CF9E5FF8();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = fpfs_adopt_log();
  a7();
  if (a5)
  {
    _s3__C4CodeOMa_1(0);
    v78 = -1002;
    v27 = a5;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    v28 = sub_1CF9E5658();

    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      a5 = swift_allocError();
      *v29 = 3;
      *(v29 + 8) = 0u;
      *(v29 + 24) = 0u;
      *(v29 + 40) = 0u;
      *(v29 + 56) = 0u;
      *(v29 + 72) = 0u;
      *(v29 + 88) = 11;
      a9(a5, 1);
    }

    else
    {
      v43 = *(a13 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
      v44 = a5;
      v45 = sub_1CF2E3014(a5, v77, 0, v43);
      a9(v45, 1);
    }

    goto LABEL_50;
  }

  v71 = v22;
  v78 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_54:
    v30 = sub_1CF9E7818();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = a10;
  v69 = v20;
  v70 = v26;
  v73 = v25;
  v74 = v21;
  if (v30)
  {
    v26 = 0;
    v76 = (a1 & 0xC000000000000001);
    a10 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v76)
      {
        v31 = MEMORY[0x1D3869C30](v26, a1);
      }

      else
      {
        if (v26 >= *(a10 + 16))
        {
          goto LABEL_52;
        }

        v31 = *(a1 + 8 * v26 + 32);
      }

      v21 = v31;
      v32 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v20 = a1;
      v33 = [v31 itemID];
      v34 = [v33 identifier];

      v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v36;
      v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v39;
      if (v35 == v38 && v37 == v39)
      {
      }

      else
      {
        v41 = sub_1CF9E8048();

        if (v41)
        {
        }

        else
        {
          sub_1CF9E7A18();
          v42 = *(v78 + 16);
          sub_1CF9E7A58();
          sub_1CF9E7A68();
          sub_1CF9E7A28();
        }
      }

      a1 = v20;
      ++v26;
    }

    while (v32 != v30);
    v26 = v78;
    v46 = v71;
    if ((v78 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v46 = v71;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
LABEL_55:
    a1 = sub_1CF9E7818();
    goto LABEL_29;
  }

LABEL_27:
  if ((v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  a1 = *(v26 + 16);
LABEL_29:
  swift_retain_n();
  if (!a1)
  {
LABEL_45:

    v61 = a14(v26);

    if (v61)
    {
      v69(0, 0);
      v26 = v70;
    }

    else
    {
      v26 = v70;
      v62 = v72;
      if (v72)
      {
        v63 = *(a16 + 16);
        type metadata accessor for FileProviderPageToken();
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        *(v64 + 24) = v62;
        v65 = v62;
        v66 = v63;
        v69(v64, 0);
      }

      else
      {
        v69(0, 0);
      }
    }

LABEL_50:
    v67 = fpfs_adopt_log();

    return;
  }

  v47 = 0;
  a10 = 0;
  v76 = (v46 + 8);
  v77 = (v26 & 0xC000000000000001);
  v25 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v77)
    {
      v50 = MEMORY[0x1D3869C30](v47, v26);
      v20 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v47 >= *(v26 + 16))
      {
        goto LABEL_53;
      }

      v50 = *(v26 + 8 * v47 + 32);
      v20 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    v51 = v50;
    v52 = [v51 extendedAttributes];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1CF9E6638();

      v21 = v26;
      v55 = a1;
      v56 = v75;

      sub_1CF045428(v54, v56);

      a1 = v55;
      v26 = v21;

      v57 = sub_1CF9E6618();

      [v51 setExtendedAttributes_];
    }

    if ([v51 isFlattenedPackage])
    {
      break;
    }

LABEL_32:

    ++v47;
    if (v20 == a1)
    {
      goto LABEL_45;
    }
  }

  v58 = [v51 filename];
  if (v58)
  {
    v59 = v58;
    v60 = [v58 stringByDeletingPathExtension];

    if (!v60)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v60 = sub_1CF9E6888();
    }

    [v51 setFilename_];

    v48 = v73;
    sub_1CF9E5FA8();
    v49 = sub_1CF9E5F38();
    (*v76)(v48, v74);
    [v51 setContentType_];

    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1CF2D3200(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a3;
  v11 = sub_1CF9E63D8();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v52 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  v61 = v18;
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong session];
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_allocWithZone(type metadata accessor for FPFileTreeLifetimeExtender());
  v24 = a2;
  v25 = a1;
  v26 = sub_1CF089C88(v25, a2, 0, 1);

  v58 = v24;
  if (v22)
  {
    [v22 registerLifetimeExtensionForObject_];
  }

  v27 = *(v6 + 168);
  v62 = *(v6 + 160);
  v28 = sub_1CF9E6448();
  v29 = v6;
  v56 = v6;
  v30 = v28;
  v57 = *(v28 - 8);
  (*(v57 + 56))(v64, 1, 1, v28);
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  *(v31 + 24) = a5;
  v32 = swift_allocObject();
  v33 = a4;
  v34 = a5;
  v35 = v32;
  v32[2] = v29;
  v32[3] = a2;
  v36 = v63;
  v32[4] = v63;
  v32[5] = v25;
  v32[6] = v22;
  v32[7] = v26;
  v32[8] = v33;
  v32[9] = v34;
  v37 = swift_allocObject();
  v37[2] = sub_1CEFF9D98;
  v37[3] = v31;
  v37[4] = v27;
  v38 = v36;
  v63 = v22;
  swift_unknownObjectRetain();
  v59 = v26;
  v60 = v31;

  swift_retain_n();
  v39 = v25;
  v40 = v57;
  v41 = v58;

  v42 = fpfs_current_log();
  v43 = *(v27 + 16);
  v44 = v61;
  sub_1CEFCCBDC(v64, v61, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v40 + 48))(v44, 1, v30) == 1)
  {
    sub_1CEFCCC44(v44, &unk_1EC4BE370, qword_1CFA01B30);
    v45 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v46 = v53;
    sub_1CF9E6438();
    (*(v40 + 8))(v44, v30);
    v45 = sub_1CF9E63C8();
    (*(v54 + 8))(v46, v55);
  }

  v47 = swift_allocObject();
  v47[2] = v42;
  v47[3] = sub_1CF2F60A0;
  v47[4] = v35;
  v69 = sub_1CF2BA17C;
  v70 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1CEFCA444;
  v68 = &block_descriptor_734;
  v48 = _Block_copy(&aBlock);
  v49 = v42;

  v69 = sub_1CF2F60B8;
  v70 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_1CEFCA444;
  v68 = &block_descriptor_737;
  v50 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v43, v62, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v45, v48, v50);
  _Block_release(v50);
  _Block_release(v48);
  swift_unknownObjectRelease();

  return sub_1CEFCCC44(v64, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2D3774(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v15 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v20 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v16 = [v15 session];
  v17 = [objc_opt_self() defaultStore];
  if ([v17 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v18 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v17 upcallExecutionTimeLimitBase];
    v18 = v19;
  }

  v20 = [v16 newFileProviderProxyWithTimeout:0 pid:v18];
  swift_unknownObjectRelease();
LABEL_11:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21 && (v22 = v21, v23 = [v21 session], v22, v23))
  {
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = [objc_opt_self() requestForSelf];
    }

    v25 = a2;
    v26 = [v24 nsfpRequestForSession:v23 isSpeculative:0];

    v36 = v26;
    [v26 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
  v28 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a1 + 280) itemIdentifier:a4];
  [v27 setEnumeratedItemID_];

  v29 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
  v30 = swift_allocObject();
  v30[2] = a5;
  v30[3] = a6;
  v30[4] = a7;
  v30[5] = a8;
  v30[6] = a1;
  v30[7] = a4;
  v30[8] = v20;
  aBlock[4] = sub_1CF2F60EC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF03FCFC;
  aBlock[3] = &block_descriptor_743;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v32 = a6;

  v33 = a4;
  swift_unknownObjectRetain();
  v34 = v36;

  [v20 listRemoteVersionsWithSettings:v27 observer:v29 request:v34 completionHandler:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
}

void sub_1CF2D3B2C(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v34 = a4;
  v15 = sub_1CF9E5248();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1CF9E5268();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = a2;
    v24 = sub_1CF2E3014(a2, a8, 0, [a9 timeoutState]);
    a5(v24, 1);

    if (!a3)
    {
      return;
    }

    goto LABEL_6;
  }

  v32 = a9;
  v33 = a6;
  if (a1)
  {
    v25 = swift_unknownObjectRetain();
    a5(v25, 0);
    swift_unknownObjectRelease();
    if (!a3)
    {
      return;
    }

LABEL_6:
    v26 = v34;

    [a3 unregisterLifetimeExtensionForObject_];
    return;
  }

  v27 = v19;
  v28 = v20;
  sub_1CF9E50E8();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  v29 = sub_1CF9E50D8();
  (*(v28 + 8))(v22, v27);
  v30 = sub_1CF2E3014(v29, a8, 0, [v32 timeoutState]);

  a5(v30, 1);
  if (a3)
  {
    [a3 unregisterLifetimeExtensionForObject_];
  }
}

uint64_t sub_1CF2D3E10(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v9 = v8;
  v65 = a3;
  v66 = a6;
  v68 = a2;
  v59 = sub_1CF9E63D8();
  v58 = *(v59 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v67 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v57 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = [Strong session];
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for FPFileTreeLifetimeExtender();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
  *&v26[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = a1;
  v27 = objc_opt_self();
  v28 = a1;
  v29 = [v27 requestForSelf];
  *&v26[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v29;
  v30 = [objc_opt_self() defaultStore];
  if ([v30 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_8;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v31 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_8:
    [v30 upcallExecutionTimeLimitBase];
    v31 = v32;
  }

  *&v26[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = v31;
  v76.receiver = v26;
  v76.super_class = v25;
  v33 = objc_msgSendSuper2(&v76, sel_init);
  if (v24)
  {
    [v24 registerLifetimeExtensionForObject_];
  }

  v34 = *(v8 + 160);
  v35 = *(v8 + 168);
  v64 = v34;
  v36 = sub_1CF9E6448();
  v61 = *(v36 - 8);
  v62 = v36;
  v37 = *(v61 + 56);
  v38 = v9;
  v60 = v9;
  v37(v69, 1, 1, v36);
  v39 = swift_allocObject();
  *(v39 + 16) = a5;
  v40 = v33;
  v41 = a5;
  v42 = v66;
  *(v39 + 24) = v66;
  v43 = swift_allocObject();
  *(v43 + 16) = v65;
  *(v43 + 24) = a4;
  *(v43 + 32) = v38;
  *(v43 + 40) = v28;
  *(v43 + 48) = v68;
  *(v43 + 56) = a7;
  *(v43 + 64) = a8;
  *(v43 + 72) = v24;
  *(v43 + 80) = v40;
  *(v43 + 88) = v41;
  *(v43 + 96) = v42;
  v44 = v61;
  v45 = swift_allocObject();
  v45[2] = sub_1CF2BA174;
  v45[3] = v39;
  v63 = v45;
  v45[4] = v35;
  swift_retain_n();
  v46 = v28;

  v68 = v24;
  swift_unknownObjectRetain();
  v66 = v40;

  v47 = fpfs_current_log();
  v48 = v62;
  v65 = *(v35 + 16);
  v49 = v67;
  sub_1CEFCCBDC(v69, v67, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v44 + 48))(v49, 1, v48) == 1)
  {
    sub_1CEFCCC44(v49, &unk_1EC4BE370, qword_1CFA01B30);
    v50 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v51 = v57;
    sub_1CF9E6438();
    (*(v44 + 8))(v49, v48);
    v50 = sub_1CF9E63C8();
    (*(v58 + 8))(v51, v59);
  }

  v52 = swift_allocObject();
  v52[2] = v47;
  v52[3] = sub_1CF2F5F44;
  v52[4] = v43;
  v74 = sub_1CF2BA17C;
  v75 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_1CEFCA444;
  v73 = &block_descriptor_709;
  v53 = _Block_copy(&aBlock);
  v54 = v47;

  v74 = sub_1CF2BA180;
  v75 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_1CEFCA444;
  v73 = &block_descriptor_712;
  v55 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v65, v64, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v50, v53, v55);
  _Block_release(v55);
  _Block_release(v53);
  swift_unknownObjectRelease();

  return sub_1CEFCCC44(v69, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2D44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v21 = type metadata accessor for DummyOperationClient();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_cancellationHandler] = 0;
  v23 = &v22[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_perThumbnailCompletionHandler];
  *v23 = a1;
  *(v23 + 1) = a2;
  v40.receiver = v22;
  v40.super_class = v21;

  v24 = objc_msgSendSuper2(&v40, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF2F0, &qword_1CFA01BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a3 + 280) itemIdentifier:a4];
  *(inited + 40) = a5;

  v26 = sub_1CF4E2B78(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &qword_1EC4BF2F8, qword_1CFA01BF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v28 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v33 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v29 = [v28 session];
  v30 = [objc_opt_self() defaultStore];
  if ([v30 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v31 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v30 upcallExecutionTimeLimitBase];
    v31 = v32;
  }

  v33 = [v29 newFileProviderProxyWithTimeout:0 pid:v31];
  swift_unknownObjectRelease();
LABEL_11:
  v34 = v24;
  sub_1CF7BAF38(v26);

  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  sub_1CF2F5F80();
  v35 = sub_1CF9E6618();

  v36 = swift_allocObject();
  v36[2] = a6;
  v36[3] = a7;
  v36[4] = a8;
  v36[5] = a11;
  v39[4] = sub_1CF2F6038;
  v39[5] = v36;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  v39[2] = sub_1CF00A468;
  v39[3] = &block_descriptor_718;
  v37 = _Block_copy(v39);
  swift_unknownObjectRetain();
  v38 = a7;

  [v33 startOperation:v34 toFetchThumbnailsWithDictionary:v35 size:v37 completionHandler:{a9, a10}];
  _Block_release(v37);
  swift_unknownObjectRelease();
}

void sub_1CF2D486C(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, void (*a8)(void, void))
{
  v202 = a8;
  v199 = a7;
  LODWORD(v217) = a6;
  v206 = a5;
  v204 = a3;
  v219 = a2;
  v201 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v216 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v182 - v13;
  v212 = sub_1CF9E63D8();
  v222 = *(v212 - 8);
  v15 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v17 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v203 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v211 = &v182 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v182 - v23;
  v205 = sub_1CF9E6448();
  v218 = *(v205 - 8);
  v25 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v27 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v182 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v197 = &v182 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v221 = &v182 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v182 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v196 = &v182 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v220 = &v182 - v45;
  v198 = sub_1CF9E6118();
  v46 = *(v198 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v49 = &v182 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v195 = &v182 - v52;
  v200 = *v219;
  if (a4)
  {
    v193 = v24;
    v194 = v14;
    v53 = *(a4 + 16);
    if (v53)
    {
      v54 = (a4 + 32);
      v192 = (v46 + 8);
      v55 = 8;
      if ((v217 & 1) == 0)
      {
        v55 = 0;
      }

      v191 = v55;
      v56 = (v222 + 48);
      v185 = (v222 + 32);
      v184 = *MEMORY[0x1E69E7FA0];
      v183 = (v222 + 104);
      v209 = (v218 + 8);
      v189 = (v218 + 32);
      v188 = (v218 + 56);
      v187 = (v218 + 48);
      v186 = &v226;
      v51.n128_u64[0] = 136315138;
      v182 = v51;
      v190 = (v222 + 48);
      v210 = (v222 + 8);
      do
      {
        v219 = v53;
        v62 = *v54;
        v63 = v54[1];
        v64 = v54[3];
        v231 = v54[2];
        v232 = v64;
        v230[0] = v62;
        v230[1] = v63;
        v233 = *v54;
        v234 = v54[1];
        v235 = v54[2];
        v218 = v54;
        v236 = v54[3];
        v65 = v62;
        v66 = *(&v63 + 1);
        v67 = v231;
        v68 = *(&v64 + 1);
        sub_1CEFCCBDC(v230, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFCCBDC(v230, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFE42D4(v65, *(&v65 + 1));
        sub_1CEFE42D4(v66, v67);
        v69 = sub_1CF9E5B48();
        v70 = sub_1CF9E5B48();
        if (v68)
        {
          v71 = sub_1CF9E6888();
        }

        else
        {
          v71 = 0;
        }

        v72 = objc_opt_self();
        v73 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v69 metadataVersion:v70 lastEditorDeviceName:v71];

        sub_1CEFE4714(v66, v67);
        sub_1CEFE4714(v65, *(&v65 + 1));
        v74 = [v72 etagForVersion:v73 providerDomainID:v223[35]];

        v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v77 = v76;

        v78 = fpfs_current_or_default_log();
        v79 = v195;
        sub_1CF9E6128();

        v80 = sub_1CF9E6108();
        v81 = sub_1CF9E7288();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          aBlock = v83;
          *v82 = v182.n128_u32[0];
          *(v82 + 4) = sub_1CEFD0DF0(v75, v77, &aBlock);
          _os_log_impl(&dword_1CEFC7000, v80, v81, "⚔️  Fetching version %s...", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v83);
          MEMORY[0x1D386CDC0](v83, -1, -1);
          MEMORY[0x1D386CDC0](v82, -1, -1);
        }

        (*v192)(v79, v198);
        v84 = v193;
        v85 = swift_allocObject();
        v86 = v202;
        v85[2] = v199;
        v85[3] = v86;
        v87 = v201;
        v88 = v223;
        v85[4] = v201;
        v85[5] = v88;
        v85[6] = v75;
        v85[7] = v77;
        v89 = swift_allocObject();
        *(v89 + 16) = nullsub_1;
        *(v89 + 24) = 0;
        v90 = swift_allocObject();
        v90[2] = v88;
        v90[3] = v89;
        v90[4] = sub_1CF2F66F0;
        v90[5] = v85;
        swift_retain_n();

        v214 = v87;
        v222 = v89;

        v217 = v85;

        materialization_alignment = fpfs_get_materialization_alignment();
        v91 = v88[20];
        v215 = v88[21];
        v216 = v91;
        sub_1CF9E6418();
        qos_class_self();
        v92 = v194;
        sub_1CF9E63B8();
        v93 = *v56;
        v94 = v212;
        if ((*v56)(v92, 1, v212) == 1)
        {
          (*v183)(v84, v184, v94);
          if (v93(v92, 1, v94) != 1)
          {
            sub_1CEFCCC44(v92, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*v185)(v84, v92, v94);
        }

        v95 = v197;
        sub_1CF9E6428();
        v96 = v211;
        sub_1CF9E6438();
        v97 = sub_1CF9E63C8();
        v98 = *v210;
        (*v210)(v96, v94);
        v99 = v203;
        v100 = v221;
        sub_1CF9E6438();
        v101 = sub_1CF9E63C8();
        v208 = v98;
        v98(v99, v94);
        v102 = *v209;
        if (v97 >= v101)
        {
          v103 = v95;
        }

        else
        {
          v103 = v100;
        }

        if (v97 >= v101)
        {
          v104 = v100;
        }

        else
        {
          v104 = v95;
        }

        v105 = v205;
        v207 = *v209;
        v102(v103, v205);
        v106 = v220;
        (*v189)(v220, v104, v105);
        (*v188)(v106, 0, 1, v105);
        v107 = swift_allocObject();
        v108 = v204;
        *(v107 + 16) = v223;
        *(v107 + 24) = v108;
        v109 = v214;
        v110 = v191;
        *(v107 + 32) = v214;
        *(v107 + 40) = v110;
        v111 = v206;
        *(v107 + 48) = 0;
        *(v107 + 56) = v111;
        v112 = v234;
        *(v107 + 64) = v233;
        *(v107 + 80) = v112;
        v113 = v236;
        *(v107 + 96) = v235;
        *(v107 + 112) = v113;
        *(v107 + 128) = sub_1CF2F6584;
        *(v107 + 136) = v90;
        *(v107 + 144) = v200;
        v114 = materialization_alignment;
        *(v107 + 152) = 0;
        *(v107 + 160) = v114;
        *(v107 + 168) = v222;
        v115 = swift_allocObject();
        v115[2] = sub_1CF2F6584;
        v115[3] = v90;
        v116 = v215;
        v115[4] = v215;
        swift_retain_n();
        sub_1CEFCCBDC(v230, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);

        v117 = v109;

        v118 = v111;

        v119 = fpfs_current_log();
        v215 = v116[2];
        v120 = *v187;
        v121 = (*v187)(v106, 1, v105);
        v122 = 32;
        if (v121 == 1)
        {
          v122 = 16;
        }

        v214 = v122;
        v123 = v196;
        sub_1CEFCCBDC(v106, v196, &unk_1EC4BE370, qword_1CFA01B30);
        if (v120(v123, 1, v105) == 1)
        {
          sub_1CEFCCC44(v123, &unk_1EC4BE370, qword_1CFA01B30);
          v57 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v124 = v211;
          sub_1CF9E6438();
          v207(v123, v105);
          v57 = sub_1CF9E63C8();
          v208(v124, v212);
        }

        v58 = swift_allocObject();
        v58[2] = v119;
        v58[3] = sub_1CF2F658C;
        v58[4] = v107;
        v228 = sub_1CF2BA17C;
        v229 = v58;
        aBlock = MEMORY[0x1E69E9820];
        v225 = 1107296256;
        v226 = sub_1CEFCA444;
        v227 = &block_descriptor_660;
        v59 = _Block_copy(&aBlock);
        v60 = v119;

        v228 = sub_1CF2F6720;
        v229 = v115;
        aBlock = MEMORY[0x1E69E9820];
        v225 = 1107296256;
        v226 = sub_1CEFCA444;
        v227 = &block_descriptor_663;
        v61 = _Block_copy(&aBlock);

        fp_task_tracker_async_and_qos(v215, v216, v214, v57, v59, v61);

        _Block_release(v61);
        _Block_release(v59);

        sub_1CEFCCC44(v220, &unk_1EC4BE370, qword_1CFA01B30);

        sub_1CEFCCC44(v230, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFCCC44(v230, &unk_1EC4BF250, &unk_1CFA01B50);
        v54 = (v218 + 64);
        v53 = v219 - 1;
        v56 = v190;
      }

      while (v219 != 1);
    }
  }

  else
  {
    materialization_alignment = v30;
    v220 = v27;
    v214 = v17;
    v125 = v216;
    v215 = v38;
    v221 = v41;
    v126 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v127 = sub_1CF9E6108();
    v128 = sub_1CF9E7288();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v233 = v130;
      *v129 = 136315138;
      *(v129 + 4) = sub_1CEFD0DF0(7104878, 0xE300000000000000, &v233);
      _os_log_impl(&dword_1CEFC7000, v127, v128, "⚔️  Fetching version %s...", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x1D386CDC0](v130, -1, -1);
      MEMORY[0x1D386CDC0](v129, -1, -1);
    }

    (*(v46 + 8))(v49, v198);
    v131 = v222;
    v132 = v125;
    v133 = v220;
    v134 = 8;
    if ((v217 & 1) == 0)
    {
      v134 = 0;
    }

    v210 = v134;
    v135 = swift_allocObject();
    v136 = v202;
    v135[2] = v199;
    v135[3] = v136;
    v137 = v201;
    v138 = v223;
    v135[4] = v201;
    v135[5] = v138;
    v135[6] = 7104878;
    v135[7] = 0xE300000000000000;
    v139 = swift_allocObject();
    *(v139 + 16) = nullsub_1;
    *(v139 + 24) = 0;
    v140 = swift_allocObject();
    *(v140 + 2) = v138;
    *(v140 + 3) = v139;
    *(v140 + 4) = sub_1CF2F5CBC;
    *(v140 + 5) = v135;
    v219 = v140;
    swift_retain_n();

    v209 = v137;
    v220 = v139;

    v207 = fpfs_get_materialization_alignment();
    v141 = v138[20];
    v208 = v138[21];
    v216 = v141;
    v142 = materialization_alignment;
    sub_1CF9E6418();
    qos_class_self();
    sub_1CF9E63B8();
    v143 = *(v131 + 48);
    v144 = v212;
    v145 = v143(v132, 1, v212);
    v146 = v211;
    v217 = v135;
    if (v145 == 1)
    {
      (*(v131 + 104))(v214, *MEMORY[0x1E69E7FA0], v144);
      if (v143(v132, 1, v144) != 1)
      {
        sub_1CEFCCC44(v132, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v131 + 32))(v214, v132, v144);
    }

    sub_1CF9E6428();
    sub_1CF9E6438();
    v147 = sub_1CF9E63C8();
    v148 = *(v131 + 8);
    v222 = v131 + 8;
    v148(v146, v144);
    v149 = v203;
    sub_1CF9E6438();
    v150 = sub_1CF9E63C8();
    v203 = v148;
    v148(v149, v144);
    v151 = v218;
    v152 = *(v218 + 8);
    if (v147 >= v150)
    {
      v153 = v133;
    }

    else
    {
      v153 = v142;
    }

    if (v147 >= v150)
    {
      v154 = v142;
    }

    else
    {
      v154 = v133;
    }

    v155 = v205;
    materialization_alignment = v218 + 8;
    v202 = v152;
    v152(v153, v205);
    v156 = v221;
    (*(v151 + 32))(v221, v154, v155);
    (*(v151 + 56))(v156, 0, 1, v155);
    v157 = swift_allocObject();
    v158 = v204;
    *(v157 + 16) = v223;
    *(v157 + 24) = v158;
    v159 = v209;
    v160 = v210;
    *(v157 + 32) = v209;
    *(v157 + 40) = v160;
    v161 = v206;
    *(v157 + 48) = 0;
    *(v157 + 56) = v161;
    *(v157 + 64) = 0;
    *(v157 + 72) = 0;
    *(v157 + 80) = 1;
    *(v157 + 88) = 0u;
    *(v157 + 104) = 0u;
    *(v157 + 120) = 0;
    *(v157 + 128) = sub_1CF2F6584;
    v162 = v219;
    *(v157 + 136) = v219;
    *(v157 + 144) = v200;
    v163 = v207;
    *(v157 + 152) = 0;
    *(v157 + 160) = v163;
    *(v157 + 168) = v220;
    v164 = swift_allocObject();
    v164[2] = sub_1CF2F6584;
    v164[3] = v162;
    v214 = v164;
    v165 = v208;
    v164[4] = v208;
    v166 = v161;

    swift_retain_n();

    v167 = v155;

    v168 = v159;
    v169 = fpfs_current_log();
    v170 = *(v165 + 2);
    v171 = *(v151 + 48);
    if (v171(v156, 1, v167) == 1)
    {
      v172 = 16;
    }

    else
    {
      v172 = 32;
    }

    v173 = v156;
    v174 = v215;
    sub_1CEFCCBDC(v173, v215, &unk_1EC4BE370, qword_1CFA01B30);
    v175 = v171(v174, 1, v167);
    v223 = v170;
    v218 = v172;
    if (v175 == 1)
    {
      sub_1CEFCCC44(v174, &unk_1EC4BE370, qword_1CFA01B30);
      LODWORD(v215) = 0;
    }

    else
    {
      v176 = v211;
      sub_1CF9E6438();
      v202(v174, v167);
      LODWORD(v215) = sub_1CF9E63C8();
      (v203)(v176, v212);
    }

    v177 = v216;
    v178 = swift_allocObject();
    v178[2] = v169;
    v178[3] = sub_1CF2F658C;
    v178[4] = v157;
    *&v235 = sub_1CF2BA17C;
    *(&v235 + 1) = v178;
    *&v233 = MEMORY[0x1E69E9820];
    *(&v233 + 1) = 1107296256;
    *&v234 = sub_1CEFCA444;
    *(&v234 + 1) = &block_descriptor_633;
    v179 = _Block_copy(&v233);
    v180 = v169;

    *&v235 = sub_1CF2F6720;
    *(&v235 + 1) = v214;
    *&v233 = MEMORY[0x1E69E9820];
    *(&v233 + 1) = 1107296256;
    *&v234 = sub_1CEFCA444;
    *(&v234 + 1) = &block_descriptor_636;
    v181 = _Block_copy(&v233);

    fp_task_tracker_async_and_qos(v223, v177, v218, v215, v179, v181);

    _Block_release(v181);
    _Block_release(v179);

    sub_1CEFCCC44(v221, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

uint64_t sub_1CF2D6000(__int128 *a1, void (*a2)(uint64_t), uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7)
{
  v170 = a6;
  v175 = a5;
  v178 = a2;
  v179 = a3;
  v10 = sub_1CF9E63D8();
  v166 = *(v10 - 8);
  v167 = v10;
  v11 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v165 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v169 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v157 - v17;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  v18 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v174 = (&v157 - v19);
  v20 = sub_1CF9E6118();
  v176 = *(v20 - 1);
  v177 = v20;
  v21 = *(v176 + 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v157 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v168 = &v157 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v171 = &v157 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v33);
  v38 = (&v157 - v37);
  v39 = a1[1];
  v228 = *a1;
  v229 = v39;
  v40 = a1[3];
  v230 = a1[2];
  *v231 = v40;
  *&v231[9] = *(a1 + 57);
  v41 = *(a1 + 24);
  v232 = *(a1 + 8);
  v233 = v41;
  v42 = *(a1 + 56);
  v234 = *(a1 + 40);
  v235 = v42;
  if (v231[24])
  {
    v43 = v228;
    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(&v228, &v206, &qword_1EC4BF2B8, &qword_1CFA01BB0);
    v45 = a4;

    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E7288();

    sub_1CEFCCC44(&v228, &qword_1EC4BF2B8, &qword_1CFA01BB0);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v206 = v50;
      *v48 = 136315650;
      *(v48 + 4) = sub_1CEFD0DF0(v170, a7, &v206);
      *(v48 + 12) = 2080;
      v51 = NSFileProviderItemIdentifier.description.getter();
      v53 = sub_1CEFD0DF0(v51, v52, &v206);

      *(v48 + 14) = v53;
      *(v48 + 22) = 2112;
      v54 = v228;
      v55 = v43;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 24) = v56;
      *v49 = v56;
      _os_log_impl(&dword_1CEFC7000, v46, v47, "⚔️  Failed fetching version %s for %s: %@", v48, 0x20u);
      sub_1CEFCCC44(v49, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v49, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v50, -1, -1);
      MEMORY[0x1D386CDC0](v48, -1, -1);

      (*(v176 + 1))(v23, v177);
    }

    else
    {

      (*(v176 + 1))(v23, v177);
      v55 = v43;
    }

    v77 = v174;
    *v174 = v55;
    swift_storeEnumTagMultiPayload();
    v78 = v228;
    goto LABEL_10;
  }

  v161 = v26;
  *v198 = v228;
  *&v198[56] = *(a1 + 56);
  *&v198[8] = *(a1 + 8);
  *&v198[24] = *(a1 + 24);
  *&v198[40] = *(a1 + 40);
  v57 = *&v198[64];
  if (!*&v198[64])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v79 = swift_allocError();
    *v80 = a4;
    *(v80 + 8) = 0;
    *(v80 + 16) = 0;
    *(v80 + 24) = 1;
    *(v80 + 32) = 0u;
    *(v80 + 48) = 0u;
    *(v80 + 64) = 0u;
    *(v80 + 73) = 0u;
    v77 = v174;
    *v174 = v79;
    swift_storeEnumTagMultiPayload();
    v81 = a4;
LABEL_10:
    v178(v77);
    v82 = &unk_1EC4C5A90;
    v83 = &qword_1CFA01BD0;
    v84 = v77;
    return sub_1CEFCCC44(v84, v82, v83);
  }

  v157 = v36;
  v158 = v35;
  v159 = v34;
  v222 = *v198;
  v223 = *&v198[16];
  v224 = *&v198[32];
  v225 = *&v198[48];
  v58 = a1[2];
  v59 = a1[3];
  v60 = *a1;
  v193[1] = a1[1];
  v193[2] = v58;
  v194[0] = v59;
  *(v194 + 9) = *(a1 + 57);
  v193[0] = v60;
  v61 = v228;
  sub_1CEFCCBDC(v193, &v206, &qword_1EC4BF2E0, &qword_1CFA01BD8);

  v163 = v61;
  *v195 = v61;
  v62 = *(a1 + 24);
  *&v195[8] = *(a1 + 8);
  *&v195[24] = v62;
  v63 = *(a1 + 56);
  *&v195[40] = *(a1 + 40);
  *&v195[56] = v63;
  v196[2] = v230;
  v197[0] = *v231;
  *(v197 + 9) = *&v231[9];
  v196[0] = v228;
  v196[1] = v229;
  sub_1CEFCCBDC(v196, &v206, &qword_1EC4BF2E0, &qword_1CFA01BD8);
  sub_1CF1AE25C(v195);
  v64 = *&v195[64];
  sub_1CF06BC9C(&v199);
  v65 = [v64 filename];
  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v68 = v67;

  *&v206 = v66;
  *(&v206 + 1) = v68;
  *&v191[0] = 58;
  *(&v191[0] + 1) = 0xE100000000000000;
  v186 = 47;
  *&v187 = 0xE100000000000000;
  sub_1CEFE4E68();
  v69 = sub_1CF9E7668();
  v71 = v70;

  v72 = sub_1CF0689E4();
  v162 = *(v31 + 40);
  v170 = v64;
  sub_1CEFF54BC(v162 + v38);
  *v38 = v72;
  v38[1] = v69;
  v164 = v38;
  v38[2] = v71;
  v226 = v199;
  v227 = *(v200 + 8);
  v73 = *(&v201 + 1);
  sub_1CF2F47F0(&v226, &v206);
  sub_1CF2F47F0(&v227, &v206);
  v74 = sub_1CF9E5B48();
  v75 = sub_1CF9E5B48();
  if (v73)
  {
    v76 = sub_1CF9E6888();
  }

  else
  {
    v76 = 0;
  }

  v85 = objc_opt_self();
  v86 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v74 metadataVersion:v75 lastEditorDeviceName:v76];

  sub_1CF2F484C(&v227);
  sub_1CF2F484C(&v226);
  v87 = [v85 etagForVersion:v86 providerDomainID:v175[35]];

  v88 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v90 = v89;

  v91 = fpfs_current_or_default_log();
  v92 = v171;
  sub_1CF9E6128();

  v93 = sub_1CF9E6108();
  v94 = sub_1CF9E7288();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v206 = v96;
    *v95 = 136315138;
    *(v95 + 4) = sub_1CEFD0DF0(v88, v90, &v206);
    _os_log_impl(&dword_1CEFC7000, v93, v94, "⚔️  Staging version %s...", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x1D386CDC0](v96, -1, -1);
    MEMORY[0x1D386CDC0](v95, -1, -1);
  }

  v160 = *(v176 + 1);
  v160(v92, v177);
  v186 = v163;
  v187 = v232;
  v188 = v233;
  v189 = v234;
  v190 = v235;
  sub_1CEFCCBDC(&v186, &v206, &qword_1EC4BF2E8, &qword_1CFA01BE0);
  v97 = v170;

  v202 = *v195;
  v203 = *&v195[16];
  v204 = *&v195[32];
  v205 = *&v195[48];
  sub_1CEFE528C(v191);
  v218 = v191[12];
  v219 = v191[13];
  v220 = v191[14];
  v221 = v192;
  v214 = v191[8];
  v215 = v191[9];
  v216 = v191[10];
  v217 = v191[11];
  v210 = v191[4];
  v211 = v191[5];
  v212 = v191[6];
  v213 = v191[7];
  v206 = v191[0];
  v207 = v191[1];
  v208 = v191[2];
  v209 = v191[3];
  v98 = swift_allocObject();
  v99 = v175;
  *(v98 + 16) = v175;
  v100 = v223;
  *(v98 + 24) = v222;
  *(v98 + 40) = v100;
  v101 = v225;
  *(v98 + 56) = v224;
  *(v98 + 72) = v101;
  *(v98 + 88) = v88;
  *(v98 + 96) = v90;
  v102 = v179;
  *(v98 + 104) = v178;
  *(v98 + 112) = v102;
  *(v98 + 120) = v97;
  v103 = v199;
  v104 = v200[0];
  v105 = v201;
  *(v98 + 160) = v200[1];
  *(v98 + 176) = v105;
  v106 = v164;
  v107 = *(v162 + v164) - 1;
  *(v98 + 128) = v103;
  *(v98 + 144) = v104;
  v171 = v98;
  if (v107 > 1)
  {
    v122 = v98;
    v123 = v99[20];
    v163 = v99[21];
    v177 = v123;
    v124 = sub_1CF9E6448();
    v168 = v90;
    v173 = *(v124 - 8);
    v174 = v124;
    (*(v173 + 56))(v172, 1, 1, v124);
    v125 = swift_allocObject();
    v176 = sub_1CF2F5E54;
    v178 = v125;
    *(v125 + 16) = sub_1CF2F5E54;
    *(v125 + 24) = v122;
    v126 = v159;
    sub_1CEFCCBDC(v106, v159, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v127 = (*(v157 + 80) + 88) & ~*(v157 + 80);
    v128 = (v158 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v129 = swift_allocObject();
    *(v129 + 16) = v99;
    *(v129 + 24) = v202;
    *(v129 + 40) = v203;
    *(v129 + 56) = v204;
    *(v129 + 72) = v205;
    sub_1CEFE55D0(v126, v129 + v127, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v130 = v129 + v128;
    v131 = v219;
    *(v130 + 192) = v218;
    *(v130 + 208) = v131;
    *(v130 + 224) = v220;
    *(v130 + 240) = v221;
    v132 = v215;
    *(v130 + 128) = v214;
    *(v130 + 144) = v132;
    v133 = v217;
    *(v130 + 160) = v216;
    *(v130 + 176) = v133;
    v134 = v211;
    *(v130 + 64) = v210;
    *(v130 + 80) = v134;
    v135 = v213;
    *(v130 + 96) = v212;
    *(v130 + 112) = v135;
    v136 = v207;
    *v130 = v206;
    *(v130 + 16) = v136;
    v137 = v209;
    *(v130 + 32) = v208;
    *(v130 + 48) = v137;
    v138 = (v129 + ((v128 + 255) & 0xFFFFFFFFFFFFFFF8));
    v139 = v171;
    *v138 = v176;
    v138[1] = v139;
    v140 = swift_allocObject();
    v141 = v178;
    v140[2] = sub_1CEFF9D98;
    v140[3] = v141;
    v142 = v163;
    v162 = v140;
    v140[4] = v163;
    swift_retain_n();

    sub_1CF1AE1DC(v198, &v180);

    v143 = v170;
    sub_1CEFCCBDC(&v199, &v180, &unk_1EC4BF250, &unk_1CFA01B50);

    v144 = v173;

    sub_1CF1AE1DC(v198, &v180);

    v176 = v143;
    sub_1CEFCCBDC(&v199, &v180, &unk_1EC4BF250, &unk_1CFA01B50);

    sub_1CF1AE1DC(v195, &v180);

    v145 = fpfs_current_log();
    v163 = v142[2];
    v146 = v169;
    sub_1CEFCCBDC(v172, v169, &unk_1EC4BE370, qword_1CFA01B30);
    v147 = v174;
    if ((*(v144 + 48))(v146, 1) == 1)
    {
      sub_1CEFCCC44(v146, &unk_1EC4BE370, qword_1CFA01B30);
      v148 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v149 = v165;
      sub_1CF9E6438();
      (*(v144 + 8))(v146, v147);
      v148 = sub_1CF9E63C8();
      (*(v166 + 8))(v149, v167);
    }

    v150 = swift_allocObject();
    v150[2] = v145;
    v150[3] = sub_1CF2F5E94;
    v150[4] = v129;
    v184 = sub_1CF2BA17C;
    v185 = v150;
    v180 = MEMORY[0x1E69E9820];
    v181 = 1107296256;
    v182 = sub_1CEFCA444;
    v183 = &block_descriptor_684_0;
    v151 = _Block_copy(&v180);
    v152 = v145;

    v184 = sub_1CF2F671C;
    v185 = v162;
    v180 = MEMORY[0x1E69E9820];
    v181 = 1107296256;
    v182 = sub_1CEFCA444;
    v183 = &block_descriptor_687_0;
    v153 = _Block_copy(&v180);

    fp_task_tracker_async_and_qos(v163, v177, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v148, v151, v153);
    _Block_release(v153);
    _Block_release(v151);

    sub_1CEFCCC44(v172, &unk_1EC4BE370, qword_1CFA01B30);

    sub_1CEFCCC44(&v199, &unk_1EC4BF250, &unk_1CFA01B50);

    v154 = v170;
  }

  else
  {
    type metadata accessor for StagedContext();
    v172 = swift_allocObject();

    sub_1CF1AE1DC(v198, &v180);

    v108 = v97;
    sub_1CEFCCBDC(&v199, &v180, &unk_1EC4BF250, &unk_1CFA01B50);

    sub_1CF1AE1DC(v198, &v180);

    v109 = v108;
    sub_1CEFCCBDC(&v199, &v180, &unk_1EC4BF250, &unk_1CFA01B50);
    v110 = fpfs_current_or_default_log();
    v111 = v168;
    sub_1CF9E6128();

    v112 = sub_1CF9E6108();
    v113 = sub_1CF9E7288();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = v90;
      v116 = swift_slowAlloc();
      v180 = v116;
      *v114 = 136315138;
      *(v114 + 4) = sub_1CEFD0DF0(v88, v115, &v180);
      _os_log_impl(&dword_1CEFC7000, v112, v113, "⚔️  Fetching URL in the wharf for version %s...", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1D386CDC0](v116, -1, -1);
      MEMORY[0x1D386CDC0](v114, -1, -1);
    }

    v160(v111, v177);
    v117 = v99[17];
    type metadata accessor for VFSStagedContext();
    v118 = swift_dynamicCastClassUnconditional();

    v119 = v179;

    v120 = v109;
    sub_1CF9C3744(v118, 0x200000, v117, v99, v178, v119, v120);
    if (*v198 && (MEMORY[0x1EEE9AC00](v121), sub_1CEFE1894(sub_1CF2B9F78), *(v117 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0, *(v117 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource)))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1CEFCCC44(&v199, &unk_1EC4BF250, &unk_1CFA01B50);

    v154 = v170;
  }

  sub_1CF1AE25C(v198);

  sub_1CEFCCC44(&v199, &unk_1EC4BF250, &unk_1CFA01B50);

  sub_1CF1AE25C(v198);
  sub_1CF1AE25C(v195);
  v82 = &qword_1EC4BE9F8;
  v83 = &unk_1CF9FEFE0;
  v84 = v164;
  return sub_1CEFCCC44(v84, v82, v83);
}

void sub_1CF2D77C4(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10)
{
  v88 = a7;
  v84 = a4;
  v85 = a3;
  v86 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v83 = (&v77 - v17);
  v18 = sub_1CF9E6118();
  v87 = *(v18 - 8);
  v19 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v81 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  v27 = fpfs_current_or_default_log();
  if (a2)
  {
    v82 = a8;
    sub_1CF9E6128();
    sub_1CEFCCBDC(a10, v89, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CF2B1868(a1, 1);
    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E7288();
    sub_1CEFCCC44(a10, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CF2F6458(a1, 1, MEMORY[0x1E69E7D48]);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89[0] = v32;
      *v30 = 136315394;
      v81 = v28;
      v33 = sub_1CF680318();
      v35 = sub_1CEFD0DF0(v33, v34, v89);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      v36 = a1;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v37;
      *v31 = v37;
      v28 = v81;
      _os_log_impl(&dword_1CEFC7000, v81, v29, "⚔️  Failed fetching URL in the wharf for %s: %@", v30, 0x16u);
      sub_1CEFCCC44(v31, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    (*(v87 + 8))(v23, v18);
    v38 = v86;
    v39 = v83;
    *v83 = a1;
    swift_storeEnumTagMultiPayload();
    v40 = a1;
    v88(v39);
    v41 = sub_1CEFCCC44(v39, &unk_1EC4C5A90, &qword_1CFA01BD0);
    v42 = v85;
LABEL_10:
    if (*v84)
    {
      v57 = *(v42 + 136);
      MEMORY[0x1EEE9AC00](v41);
      *(&v77 - 4) = v57;
      *(&v77 - 6) = 0;
      *(&v77 - 2) = v58;
      sub_1CEFE1894(sub_1CF2B9F78);
      if (v38)
      {
      }

      else
      {
        *(v57 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
        if (*(v57 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
        {
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          MEMORY[0x1D3869790](1, ObjectType);
          swift_unknownObjectRelease();
        }
      }
    }

    return;
  }

  v80 = a9;
  sub_1CF9E6128();

  v43 = sub_1CF9E6108();
  v44 = sub_1CF9E7288();

  v45 = os_log_type_enabled(v43, v44);
  v78 = v18;
  v79 = v15;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v82 = a8;
    v47 = v46;
    v48 = swift_slowAlloc();
    v89[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_1CEFD0DF0(a5, a6, v89);
    _os_log_impl(&dword_1CEFC7000, v43, v44, "⚔️  Fetching URL in the wharf for version %s...", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    v49 = v47;
    a8 = v82;
    MEMORY[0x1D386CDC0](v49, -1, -1);
  }

  v50 = *(v87 + 8);
  v50(v26, v18);
  v42 = v85;
  v51 = *(v85 + 136);
  type metadata accessor for VFSStagedContext();
  v52 = swift_dynamicCastClassUnconditional();

  v53 = v80;
  v54 = v86;
  sub_1CF9C3744(v52, 0x200000, v51, v42, v88, a8, v53);
  v38 = v54;
  v55 = v81;
  if (!v54)
  {
    goto LABEL_10;
  }

  if (*v84)
  {
    MEMORY[0x1EEE9AC00](v41);
    *(&v77 - 4) = v51;
    *(&v77 - 6) = 0;
    *(&v77 - 2) = v56;
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v51 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v51 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v60 = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, v60);
      swift_unknownObjectRelease();
    }
  }

  v86 = v50;
  v61 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(a10, v89, &unk_1EC4BF250, &unk_1CFA01B50);
  v62 = v54;
  v63 = sub_1CF9E6108();
  v64 = sub_1CF9E7288();
  sub_1CEFCCC44(a10, &unk_1EC4BF250, &unk_1CFA01B50);

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = v38;
    v68 = swift_slowAlloc();
    v89[0] = v68;
    *v65 = 136315394;
    v69 = sub_1CF680318();
    v71 = sub_1CEFD0DF0(v69, v70, v89);

    *(v65 + 4) = v71;
    *(v65 + 12) = 2112;
    v72 = v67;
    v73 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 14) = v73;
    *v66 = v73;
    _os_log_impl(&dword_1CEFC7000, v63, v64, "⚔️  Failed staging version %s: %@", v65, 0x16u);
    sub_1CEFCCC44(v66, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v66, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v74 = v68;
    v38 = v67;
    MEMORY[0x1D386CDC0](v74, -1, -1);
    MEMORY[0x1D386CDC0](v65, -1, -1);
  }

  v86(v55, v78);
  v75 = v83;
  *v83 = v38;
  swift_storeEnumTagMultiPayload();
  v76 = v38;
  v88(v75);

  sub_1CEFCCC44(v75, &unk_1EC4C5A90, &qword_1CFA01BD0);
}

uint64_t sub_1CF2D8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, void *a8)
{
  v28 = a6;
  v27[1] = a3;
  v27[2] = a7;
  v12 = sub_1CF9E53C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v27 - v19);
  if (a4 && (v21 = *(a2 + 8), v22 = *(a5 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v21 == *(v22 + 32)))
  {
    v23 = v20 + *(type metadata accessor for StagedRemoteVersion(0) + 20);
    sub_1CF9E58C8();
    *v20 = a8;
    swift_storeEnumTagMultiPayload();
    v24 = a8;
  }

  else
  {
    v29 = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v25 = sub_1CF9E53A8();
    (*(v13 + 8))(v16, v12);
    *v20 = v25;
    swift_storeEnumTagMultiPayload();
  }

  v28(v20);
  return sub_1CEFCCC44(v20, &unk_1EC4C5A90, &qword_1CFA01BD0);
}

uint64_t sub_1CF2D82B0(void *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v99 = a7;
  v102 = a5;
  v97 = a3;
  v103 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = v89 - v16;
  v17 = sub_1CF9E63D8();
  v108 = *(v17 - 8);
  v18 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v96 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v89 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v94 = v89 - v24;
  v105 = sub_1CF9E6448();
  v101 = *(v105 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v27 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v100 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v109 = v89 - v35;
  v95 = *a2;
  v36 = a4[1];
  v116 = *a4;
  v117 = v36;
  v37 = a4[3];
  v118 = a4[2];
  v119 = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = nullsub_1;
  *(v38 + 24) = 0;
  v39 = swift_allocObject();
  v39[2] = v9;
  v39[3] = v38;
  v39[4] = a8;
  v39[5] = a9;
  v106 = v39;
  v107 = v38;
  v104 = a6;
  if (a6)
  {
    v40 = v9;

    v41 = [a6 requestedExtent];
    if (v41 == -1)
    {
      v93 = 0;
    }

    else
    {
      v93 = [objc_opt_self() valueWithRange_];
    }
  }

  else
  {

    v93 = 0;
    v40 = v9;
  }

  v43 = v98;
  v44 = v94;
  materialization_alignment = fpfs_get_materialization_alignment();
  v45 = *(v40 + 160);
  v94 = *(v40 + 168);
  v98 = v45;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v46 = v108;
  v47 = *(v108 + 48);
  if (v47(v43, 1, v17) == 1)
  {
    (*(v46 + 104))(v44, *MEMORY[0x1E69E7FA0], v17);
    if (v47(v43, 1, v17) != 1)
    {
      sub_1CEFCCC44(v43, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v46 + 32))(v44, v43, v17);
  }

  sub_1CF9E6428();
  sub_1CF9E6438();
  v48 = sub_1CF9E63C8();
  v49 = *(v46 + 8);
  v91 = v22;
  v49(v22, v17);
  v50 = v96;
  sub_1CF9E6438();
  v51 = sub_1CF9E63C8();
  v108 = v46 + 8;
  v96 = v49;
  v49(v50, v17);
  v90 = v17;
  v52 = v101;
  v53 = *(v101 + 8);
  if (v48 >= v51)
  {
    v54 = v27;
  }

  else
  {
    v54 = v30;
  }

  if (v48 >= v51)
  {
    v27 = v30;
  }

  v55 = v105;
  v89[1] = v101 + 8;
  v89[0] = v53;
  v53(v54, v105);
  v56 = v109;
  (*(v52 + 32))(v109, v27, v55);
  (*(v52 + 56))(v56, 0, 1, v55);
  v57 = swift_allocObject();
  v58 = v97;
  *(v57 + 16) = v40;
  *(v57 + 24) = v58;
  v59 = v103;
  v60 = v99;
  *(v57 + 32) = v103;
  *(v57 + 40) = v60;
  v61 = v104;
  v62 = v102;
  *(v57 + 48) = v104;
  *(v57 + 56) = v62;
  v63 = v117;
  *(v57 + 64) = v116;
  *(v57 + 80) = v63;
  v64 = v119;
  *(v57 + 96) = v118;
  *(v57 + 112) = v64;
  v65 = v106;
  *(v57 + 128) = sub_1CF2F5AE8;
  *(v57 + 136) = v65;
  *(v57 + 144) = v95;
  v66 = v93;
  v67 = materialization_alignment;
  *(v57 + 152) = v93;
  *(v57 + 160) = v67;
  *(v57 + 168) = v107;
  v68 = swift_allocObject();
  v68[2] = sub_1CF2F5AE8;
  v68[3] = v65;
  v99 = v68;
  v69 = v94;
  v68[4] = v94;
  v70 = v62;
  swift_retain_n();

  v71 = v59;
  v72 = v61;
  sub_1CEFCCBDC(&v116, &aBlock, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  v73 = v66;

  v74 = fpfs_current_log();
  v104 = *(v69 + 2);
  v75 = *(v52 + 48);
  v76 = v109;
  v77 = v105;
  v78 = v75(v109, 1, v105);
  v79 = v76;
  v80 = v100;
  sub_1CEFCCBDC(v79, v100, &unk_1EC4BE370, qword_1CFA01B30);
  if (v75(v80, 1, v77) == 1)
  {
    sub_1CEFCCC44(v80, &unk_1EC4BE370, qword_1CFA01B30);
    v81 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v82 = v91;
    sub_1CF9E6438();
    (v89[0])(v80, v77);
    v81 = sub_1CF9E63C8();
    (v96)(v82, v90);
  }

  if (v78 == 1)
  {
    v83 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v83 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v84 = swift_allocObject();
  v84[2] = v74;
  v84[3] = sub_1CF2F5AF4;
  v84[4] = v57;
  v114 = sub_1CF2BA17C;
  v115 = v84;
  aBlock = MEMORY[0x1E69E9820];
  v111 = 1107296256;
  v112 = sub_1CEFCA444;
  v113 = &block_descriptor_588;
  v85 = _Block_copy(&aBlock);
  v86 = v74;

  v114 = sub_1CF2F6720;
  v115 = v99;
  aBlock = MEMORY[0x1E69E9820];
  v111 = 1107296256;
  v112 = sub_1CEFCA444;
  v113 = &block_descriptor_591;
  v87 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v104, v98, v83, v81, v85, v87);
  _Block_release(v87);
  _Block_release(v85);

  sub_1CEFCCC44(v109, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2D8C84(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *), uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v8 = sub_1CF9E63A8();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6448();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v28[2] = a1[2];
  v29[0] = v16;
  *(v29 + 9) = *(a1 + 57);
  v17 = a1[1];
  v28[0] = *a1;
  v28[1] = v17;
  v18 = *(a2 + 160);
  aBlock[4] = sub_1CF2F5CA0;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_610;
  v19 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v15, v11, v19);
  _Block_release(v19);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);

  return v25(v28);
}

void sub_1CF2D8F78(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, __int128 *a7, void (*a8)(_BYTE *), uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v73 = a4;
  if (!Strong)
  {
    goto LABEL_9;
  }

  v20 = Strong;
  if (![Strong userEnabled])
  {

LABEL_9:
    v74 = sub_1CF2F1F6C();
    goto LABEL_12;
  }

  v21 = [v20 session];
  v22 = [objc_opt_self() defaultStore];
  if ([v22 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v22 upcallExecutionTimeLimitBase];
    v24 = v23;
    [v22 upcallExecutionTimeLimitPerKiloByte];
    v26 = v25;

    v27 = v24 + a2 / 1000.0 * v26;
  }

  else
  {

    v27 = -1.0;
  }

  v74 = [v21 newFileProviderProxyWithTimeout:0 pid:v27];

  swift_unknownObjectRelease();
LABEL_12:
  v68 = fpfs_current_log();
  v66 = a3;
  v28 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:a1[35] itemIdentifier:a3];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29 && (v30 = v29, v31 = [v29 session], v30, v31))
  {
    if (a5)
    {
      v32 = a5;
    }

    else
    {
      v32 = [objc_opt_self() requestForSelf];
    }

    v34 = a5;
    v35 = a5;
    v36 = [v32 nsfpRequestForSession:v31 isSpeculative:(v73 >> 8) & 1];

    v75 = v36;
    v33 = a6;
    [v36 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = a6;
    v34 = a5;
    v75 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v71 = v28;
  v37 = swift_allocObject();
  v38 = 0;
  *(v37 + 16) = 0;
  v39 = *(a7 + 2);
  if (v39 != 1)
  {
    *v76 = *a7;
    *&v76[24] = *(a7 + 24);
    *&v76[40] = *(a7 + 40);
    *&v76[56] = *(a7 + 7);
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    *&v76[16] = v39;
    v40 = a7[1];
    aBlock = *a7;
    v80 = v40;
    v41 = a7[3];
    v81 = a7[2];
    v82[0] = v41;
    sub_1CEFCCBDC(&aBlock, v78, &unk_1EC4BF250, &unk_1CFA01B50);
    v38 = sub_1CF327484(v76);
  }

  if ((v73 & 0x100) != 0 && a1[18])
  {
    v42 = a1[18];

    if (!sub_1CF2CFDB8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      v62 = swift_allocError();
      *v63 = 10;
      *(v63 + 56) = 0u;
      *(v63 + 40) = 0u;
      *(v63 + 24) = 0u;
      *(v63 + 8) = 0u;
      *(v63 + 72) = 0u;
      *&v76[8] = v78[0];
      *&v76[24] = v78[1];
      v64 = v78[3];
      *&v76[40] = v78[2];
      *(v63 + 88) = 11;
      v77 = 1;
      *v76 = v62;
      *&v76[56] = v64;
      v76[72] = 1;
      a8(v76);

      swift_unknownObjectRelease();

      v81 = *&v76[32];
      v82[0] = *&v76[48];
      *(v82 + 9) = *&v76[57];
      aBlock = *v76;
      v80 = *&v76[16];
      sub_1CEFCCC44(&aBlock, &qword_1EC4BF2B8, &qword_1CFA01BB0);
      goto LABEL_32;
    }
  }

  v43 = swift_allocObject();
  v43[2] = a1;
  v43[3] = v68;
  v43[4] = v33;
  v43[5] = v37;
  v43[6] = v66;
  v43[7] = a8;
  v43[8] = a9;
  v43[9] = v74;
  v43[10] = v34;
  *&v81 = sub_1CF2F5AF8;
  *(&v81 + 1) = v43;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v80 = sub_1CF2DA660;
  *(&v80 + 1) = &block_descriptor_598;
  v44 = _Block_copy(&aBlock);
  v45 = v33;
  v46 = v34;
  v70 = a1;

  v67 = v66;

  swift_unknownObjectRetain();
  v47 = v68;

  v48 = [v74 fetchContentsForItemWithID:v28 version:v38 request:v75 estimatedItemSize:a2 isSymlink:a10 == 2 extent:a11 alignment:a12 options:(v73 >> 3) & 1 completionHandler:v44];
  _Block_release(v44);
  swift_beginAccess();
  v49 = *(v37 + 16);
  *(v37 + 16) = v48;

  if (!v48)
  {

    swift_unknownObjectRelease();
    return;
  }

  v65 = v47;
  swift_beginAccess();
  v50 = v48;
  v51 = v67;
  v52 = v50;
  sub_1CF1C8F90(v48, v51);
  swift_endAccess();
  v53 = a1[15];
  if (v53)
  {
    v54 = a1[16];
    v55 = *MEMORY[0x1E696A848];
    *v76 = v51;

    v56 = v53(v76, v52, v55, a2);
    v58 = v57;

    sub_1CEFF7124(v53);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v56 = 0;
    v58 = 0;
  }

  v59 = swift_allocObject();
  v59[2] = v70;
  v59[3] = v51;
  v59[4] = v56;
  v59[5] = v58;
  swift_beginAccess();
  v60 = *(a13 + 24);
  *(a13 + 16) = sub_1CF2F5B84;
  *(a13 + 24) = v59;

  v61 = v51;

LABEL_32:
}

uint64_t sub_1CF2D977C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v31 = *(a7 + 160);
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a3;
  v19[4] = a9;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a6;
  v19[8] = a10;
  v19[9] = a11;
  v19[10] = a12;
  v19[11] = a13;
  v19[12] = a14;
  v19[13] = a15;
  v19[14] = a4;
  v19[15] = a5;

  v20 = a3;
  v21 = a9;
  v22 = a1;
  v23 = a2;
  v24 = a6;
  v25 = a4;

  v26 = a11;

  swift_unknownObjectRetain();
  v27 = a15;
  sub_1CF01001C(a8, "provideFile(for:kind:expectedFileSize:lastKnownVersion:domainVersion:requestor:options:completion:)", 99, 2, sub_1CF2F5BA4, v19);
}

uint64_t sub_1CF2D98D8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, void (*a9)(_BYTE *), uint64_t a10, void *a11, void *a12, void *a13, char a14)
{
  v117 = a8;
  v118 = a5;
  v119 = a7;
  v121 = a6;
  v122 = a10;
  v123 = a9;
  v135 = *MEMORY[0x1E69E9840];
  v18 = sub_1CF9E5248();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5268();
  v114 = *(v21 - 1);
  v115 = v21;
  v22 = v114[8];
  MEMORY[0x1EEE9AC00](v21);
  v112 = (&v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1CF9E5A58();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v107 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v107 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - v33;
  v120 = a1;
  sub_1CF041B2C(a2, a3);
  if (!a4)
  {
    goto LABEL_5;
  }

  v35 = [a4 url];
  sub_1CF9E59D8();

  v36 = *(v25 + 32);
  v36(v34, v31, v24);
  if (v118 && !v121)
  {
    v112 = v36;
    v121 = v25;
    v51 = v24;
    v52 = a12;
    v115 = v118;
    LODWORD(v117) = sub_1CF9E59E8();
    v114 = a12;
    if (!a12)
    {
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v53 = v116;
LABEL_33:
      v75 = v121 + 2;
      v76 = v121[2];
      v77 = v111;
      v119 = v34;
      v78 = v34;
      v79 = v51;
      v76(v111, v78, v51);
      v76(v53, v77, v51);
      v80 = (*(v75 + 64) + 16) & ~*(v75 + 64);
      v81 = v80 + v26;
      v82 = (v80 + v26) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      v113 = v79;
      v112(v84 + v80, v77, v79);
      *(v84 + v81) = v117 & 1;
      v85 = v120;
      *(v84 + v82 + 8) = v120;
      v86 = v115;
      *(v84 + v83) = v115;
      v87 = (v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8));
      v88 = v122;
      *v87 = v123;
      v87[1] = v88;
      v89 = v86;

      if ((sub_1CF2D07F4() & 1) != 0 && [v89 isFlattenedPackage])
      {

        v90 = v119;
        sub_1CF2F220C(v119, sub_1CF2F5BE4, v84, v85);

        v91 = v121[1];
        v92 = v113;
        v91(v116, v113);
        v93 = v90;
LABEL_45:
        result = (v91)(v93, v92);
        goto LABEL_23;
      }

      v94 = *(v85 + 136);
      v95 = sub_1CF9E5A18();
      (*(*v94 + 408))(&v126, v95);

      LOBYTE(v129[1]) = 0;
      v125[64] = 0;
      *&v125[32] = v128;
      *&v125[48] = v129[0];
      *v125 = v126;
      *&v125[16] = v127;
      v96 = v116;
      v97 = [objc_opt_self() defaultManager];
      v98 = sub_1CF9E5928();
      *&v126 = 0;
      v99 = [v97 removeItemAtURL:v98 error:&v126];

      if (v99)
      {
        v100 = v126;
        if ((v117 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v101 = v126;
        v102 = sub_1CF9E57F8();

        swift_willThrow();
        if ((v117 & 1) == 0)
        {
LABEL_41:
          sub_1CF2D1564(v118);
          v103 = *v125;
          if (v125[64])
          {
            v104 = 1;
            LOBYTE(v126) = 1;
          }

          else
          {
            v130 = *&v125[8];
            v131 = *&v125[24];
            v132 = *&v125[40];
            *&v133 = *&v125[56];
            LOBYTE(v126) = 0;
            v105 = v89;
            v104 = v126;
          }

          *&v134[8] = v130;
          *&v134[24] = v131;
          *&v134[40] = v132;
          *v134 = v103;
          *&v134[56] = v133;
          *&v134[64] = v89;
          v134[72] = v104;
          sub_1CEFCCBDC(v125, &v126, &unk_1EC4BF2C0, &qword_1CFA01BB8);
          v123(v134);
          sub_1CEFCCC44(v125, &unk_1EC4BF2C0, &qword_1CFA01BB8);

          v127 = *&v134[16];
          v128 = *&v134[32];
          v129[0] = *&v134[48];
          *(v129 + 9) = *&v134[57];
          v126 = *v134;
          sub_1CEFCCC44(&v126, &qword_1EC4BF2B8, &qword_1CFA01BB0);
          v91 = v121[1];
          v92 = v113;
          v91(v96, v113);
          v93 = v119;
          goto LABEL_45;
        }
      }

      sub_1CF9E59C8();
      goto LABEL_41;
    }

    v53 = v116;
    if (a13)
    {
      v54 = v34;
      v55 = a12;
      v56 = a13;
      v57 = [v56 rangeValue];
      [v56 rangeValue];
      [v55 setProvidedExtent_];
      if ([v56 rangeValue])
      {
      }

      else
      {
        [v56 rangeValue];
        v69 = v68;
        v70 = [v115 documentSize];
        if (v70)
        {
          v71 = v70;
          v72 = [v70 integerValue];

          if (v69 == v72)
          {
            v52 = v114;
            if (a14)
            {
              v106 = fpfs_supports_brm_sparse_files();

              v110 = v106;
            }

            else
            {

              v110 = 0;
            }

            v34 = v54;
            v53 = v116;
            goto LABEL_32;
          }
        }
      }

      v110 = 0;
      v34 = v54;
      v53 = v116;
      v52 = v114;
    }

    else
    {
      v67 = a12;
      [v67 setProvidedExtent_];

      v110 = 0;
    }

LABEL_32:
    v73 = [v52 providedExtent];
    v108 = v74;
    v109 = v73;
    goto LABEL_33;
  }

  (*(v25 + 8))(v34, v24);
LABEL_5:
  v37 = v119;
  swift_beginAccess();
  v38 = *(v37 + 16);
  if (v38 && ([v38 isCancelled] & 1) != 0)
  {
    swift_beginAccess();
    v39 = *(v37 + 16);
    if (v39)
    {
      if ([v39 isCancelled] && (v40 = v120, swift_beginAccess(), *(*(v40 + 176) + 16)))
      {

        sub_1CEFE863C(v117);
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v59 = swift_allocError();
    *v60 = v42 & 1;
    v61 = v126;
    *(v60 + 17) = v127;
    *(v60 + 1) = v61;
    v62 = v128;
    v63 = v129[0];
    v64 = v129[1];
    *(v60 + 80) = *(&v129[1] + 15);
    *(v60 + 65) = v64;
    *(v60 + 49) = v63;
    *(v60 + 33) = v62;
    *(v60 + 88) = 5;
    v124 = 1;
    *v125 = v59;
    *&v125[8] = v130;
    *&v125[24] = v131;
    *&v125[40] = v132;
    *&v125[56] = v133;
    v125[72] = 1;
    v123(v125);
    *&v134[32] = *&v125[32];
    *&v134[48] = *&v125[48];
    *&v134[57] = *&v125[57];
    *v134 = *v125;
    *&v134[16] = *&v125[16];
    v50 = v134;
  }

  else
  {
    v43 = v121;
    if (v121)
    {
      v44 = v121;
    }

    else
    {
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v45 = v112;
      v46 = v115;
      sub_1CF9E57D8();
      v44 = sub_1CF9E50D8();
      (v114[1])(v45, v46);
    }

    v47 = v43;
    v48 = [a11 timeoutState];
    v49 = sub_1CF2E3014(v44, v117, 0, v48);

    v125[0] = 1;
    *v134 = v49;
    v134[72] = 1;
    v123(v134);
    v127 = *&v134[16];
    v128 = *&v134[32];
    v129[0] = *&v134[48];
    *(v129 + 9) = *&v134[57];
    v126 = *v134;
    v50 = &v126;
  }

  result = sub_1CEFCCC44(v50, &qword_1EC4BF2B8, &qword_1CFA01BB0);
LABEL_23:
  v66 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2DA450(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void (*a6)(_BYTE *))
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  *&v29[32] = *(a1 + 32);
  *&v29[48] = v9;
  v30 = *(a1 + 64);
  v10 = *(a1 + 16);
  *v29 = *a1;
  *&v29[16] = v10;
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1CF9E5928();
  *&v23[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v23];

  if (!v13)
  {
    v15 = *&v23[0];
    v16 = sub_1CF9E57F8();

    swift_willThrow();
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = *&v23[0];
  if (a3)
  {
LABEL_5:
    sub_1CF9E59C8();
  }

LABEL_6:
  sub_1CF2D1564(a5);
  if (v30)
  {
    v17 = *v29;
    v18 = 1;
    LOBYTE(v23[0]) = 1;
  }

  else
  {
    v25 = *&v29[8];
    v26 = *&v29[24];
    v27 = *&v29[40];
    v17 = *v29;
    v28 = *&v29[56];
    LOBYTE(v23[0]) = 0;
    v19 = a5;
    v18 = v23[0];
  }

  *v22 = v17;
  *&v22[8] = v25;
  *&v22[24] = v26;
  *&v22[40] = v27;
  *&v22[56] = v28;
  *&v22[64] = a5;
  v22[72] = v18;
  sub_1CEFCCBDC(v29, v23, &unk_1EC4BF2C0, &qword_1CFA01BB8);
  a6(v22);
  v24[0] = *&v22[48];
  *(v24 + 9) = *&v22[57];
  v23[1] = *&v22[16];
  v23[2] = *&v22[32];
  v23[0] = *v22;
  result = sub_1CEFCCC44(v23, &qword_1EC4BF2B8, &qword_1CFA01BB0);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF2DA660(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);

  v19 = a2;
  v18 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v14(a2, a3, v15, a5, a6, a7);
}

uint64_t sub_1CF2DA744(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v20[1] = a3;
  v21 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v20 - v13);
  sub_1CEFCCBDC(a1, v20 - v13, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = 1;
    v28[0] = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v17 = *(a4 + 136);
    v18 = sub_1CF9E5A18();
    (*(*v17 + 408))(v28, v18);
    (*(v7 + 8))(v10, v6);

    v16 = 0;
    v29 = 0;
    v22 = *&v28[8];
    v23 = *&v28[24];
    v24 = *&v28[40];
    v15 = *v28;
    v25 = *&v28[56];
  }

  *v26 = v15;
  *&v26[8] = v22;
  *&v26[24] = v23;
  *&v26[40] = v24;
  *&v26[56] = v25;
  v27 = v16;
  v21(v26);
  *&v28[32] = *&v26[32];
  *&v28[48] = *&v26[48];
  v29 = v27;
  *v28 = *v26;
  *&v28[16] = *&v26[16];
  return sub_1CEFCCC44(v28, &unk_1EC4BF2C0, &qword_1CFA01BB8);
}

uint64_t sub_1CF2DAA54(void *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, _OWORD *a5, int a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v104 = a7;
  v105 = a8;
  LODWORD(v106) = a6;
  v97 = a3;
  v95 = a2;
  v103 = a1;
  v101 = a11;
  v100 = a10;
  v98 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v86 - v15;
  v17 = sub_1CF9E63D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v102 = sub_1CF9E6448();
  v99 = *(v102 - 8);
  v26 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v96 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v109 = &v86 - v36;
  v93 = *v95;
  v37 = a4[1];
  v116 = *a4;
  v117 = v37;
  v38 = a4[3];
  v118 = a4[2];
  *v119 = v38;
  v39 = a5[1];
  *&v119[16] = *a5;
  *&v119[32] = v39;
  v40 = a5[3];
  *&v119[48] = a5[2];
  *&v119[64] = v40;
  v120 = v106;
  v41 = v108[20];
  v95 = v108[21];
  v106 = v41;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v42 = *(v18 + 48);
  if (v42(v16, 1, v17) == 1)
  {
    (*(v18 + 104))(v25, *MEMORY[0x1E69E7FA0], v17);
    if (v42(v16, 1, v17) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v18 + 32))(v25, v16, v17);
  }

  sub_1CF9E6428();
  v43 = v107;
  sub_1CF9E6438();
  v44 = sub_1CF9E63C8();
  v45 = *(v18 + 8);
  v86 = v18 + 8;
  v45(v43, v17);
  v46 = v94;
  sub_1CF9E6438();
  v47 = sub_1CF9E63C8();
  v90 = v45;
  v45(v46, v17);
  v48 = v99;
  v49 = *(v99 + 8);
  if (v44 >= v47)
  {
    v50 = v28;
  }

  else
  {
    v50 = v31;
  }

  if (v44 >= v47)
  {
    v51 = v31;
  }

  else
  {
    v51 = v28;
  }

  v52 = v102;
  v88 = *(v99 + 8);
  v89 = v99 + 8;
  v49(v50, v102);
  v53 = *(v48 + 32);
  v87 = v17;
  v54 = v109;
  v53(v109, v51, v52);
  (*(v48 + 56))(v54, 0, 1, v52);
  v55 = v116;
  LODWORD(v54) = DWORD2(v116);
  v56 = BYTE12(v116);
  v94 = *&v119[72];
  v91 = v119[0];
  v92 = v120;
  v57 = swift_allocObject();
  v59 = v100;
  v58 = v101;
  *(v57 + 16) = v100;
  *(v57 + 24) = v58;
  v60 = v97;
  *(v57 + 32) = v108;
  *(v57 + 40) = v60;
  *(v57 + 48) = v55;
  *(v57 + 56) = v54;
  *(v57 + 60) = v56;
  v61 = v118;
  *(v57 + 64) = v117;
  *(v57 + 80) = v61;
  *(v57 + 96) = v91;
  v62 = *&v119[8];
  *(v57 + 120) = *&v119[24];
  *(v57 + 104) = v62;
  v63 = *&v119[40];
  *(v57 + 152) = *&v119[56];
  *(v57 + 136) = v63;
  *(v57 + 168) = v94;
  *(v57 + 176) = v92;
  v65 = v104;
  v64 = v105;
  *(v57 + 184) = v98;
  *(v57 + 192) = v64;
  v66 = v103;
  *(v57 + 200) = v65;
  *(v57 + 208) = v66;
  *(v57 + 216) = v93;
  v67 = swift_allocObject();
  v67[2] = v59;
  v67[3] = v58;
  v68 = v95;
  v100 = v67;
  v67[4] = v95;
  swift_retain_n();

  sub_1CEFCCBDC(&v116, &v110, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  v69 = v65;
  v70 = v66;

  v71 = v64;
  v72 = fpfs_current_log();
  v108 = *(v68 + 2);
  v73 = *(v48 + 48);
  v74 = v109;
  v75 = v73(v109, 1, v52);
  v76 = v74;
  v77 = v96;
  sub_1CEFCCBDC(v76, v96, &unk_1EC4BE370, qword_1CFA01B30);
  if (v73(v77, 1, v52) == 1)
  {
    sub_1CEFCCC44(v77, &unk_1EC4BE370, qword_1CFA01B30);
    v78 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v79 = v107;
    sub_1CF9E6438();
    v88(v77, v52);
    v78 = sub_1CF9E63C8();
    v90(v79, v87);
  }

  if (v75 == 1)
  {
    v80 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v80 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v81 = swift_allocObject();
  v81[2] = v72;
  v81[3] = sub_1CF2F5550;
  v81[4] = v57;
  v114 = sub_1CF2BA17C;
  v115 = v81;
  v110 = MEMORY[0x1E69E9820];
  v111 = 1107296256;
  v112 = sub_1CEFCA444;
  v113 = &block_descriptor_490;
  v82 = _Block_copy(&v110);
  v83 = v72;

  v114 = sub_1CF2F55E4;
  v115 = v100;
  v110 = MEMORY[0x1E69E9820];
  v111 = 1107296256;
  v112 = sub_1CEFCA444;
  v113 = &block_descriptor_493;
  v84 = _Block_copy(&v110);

  fp_task_tracker_async_and_qos(v108, v106, v80, v78, v82, v84);
  _Block_release(v84);
  _Block_release(v82);

  return sub_1CEFCCC44(v109, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2DB280(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, unint64_t a6, void *a7, void *a8, void *a9, char a10)
{
  v222 = a8;
  v223 = a7;
  v219 = a6;
  v234 = a3;
  v284 = *MEMORY[0x1E69E9840];
  v13 = *(a5 + 8);
  v14 = *(a5 + 12);
  v15 = *(a5 + 48);
  v16 = *(a5 + 120);
  v17 = *(a5 + 128);
  *&v279 = *a5;
  DWORD2(v279) = v13;
  BYTE12(v279) = v14;
  v18 = *(a5 + 32);
  v280 = *(a5 + 16);
  v281 = v18;
  LOBYTE(v282[0]) = v15;
  *&v282[1] = *(a5 + 56);
  *&v282[3] = *(a5 + 72);
  *&v282[5] = *(a5 + 88);
  *&v282[7] = *(a5 + 104);
  v282[9] = v16;
  v283 = v17;
  v239 = sub_1CF9E53C8();
  v221 = *(v239 - 8);
  v19 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v238 = &v216 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1CF9E5CF8();
  v21 = *(v248 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v248);
  *&v245 = &v216 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v231 = &v216 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v232 = (&v216 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v230 = &v216 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v244 = (&v216 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v240 = &v216 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v246 = &v216 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v241 = &v216 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v242 = &v216 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v243 = &v216 - v42;
  v43 = type metadata accessor for ItemMetadata();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v216 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v233 = &v216 - v48;
  v49 = swift_allocObject();
  v217 = a1;
  *(v49 + 16) = a1;
  v50 = v49 + 16;
  v237 = v49;
  *(v49 + 24) = a2;
  v51 = swift_allocObject();
  *(v51 + 16) = nullsub_1;
  v216 = v51 + 16;
  v235 = v51;
  *(v51 + 24) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v218 = a2;

  v224 = v50;
  v220 = a4;
  if (Strong)
  {
    if ([Strong userEnabled])
    {
      v53 = v21;
      v54 = [Strong session];
      isEscapingClosureAtFileLocation = [objc_opt_self() defaultStore];
      if ([isEscapingClosureAtFileLocation hasUpcallExecutionTimeLimits])
      {
        goto LABEL_6;
      }

      if (qword_1EC4BCCF0 != -1)
      {
LABEL_77:
        swift_once();
      }

      if (byte_1EC4BF020 == 1)
      {
LABEL_6:
        [isEscapingClosureAtFileLocation upcallExecutionTimeLimitBase];
        v57 = v56;
        [isEscapingClosureAtFileLocation upcallExecutionTimeLimitPerKiloByte];
        v59 = v58;

        v60 = v57 + a4 / 1000.0 * v59;
      }

      else
      {

        v60 = -1.0;
      }

      v236 = [v54 newFileProviderProxyWithTimeout:0 pid:v60];

      swift_unknownObjectRelease();
      v21 = v53;
      goto LABEL_11;
    }
  }

  v236 = sub_1CF2F1F6C();
LABEL_11:
  v247 = v21;
  v61 = v21[7];
  v62 = v243;
  v63 = v248;
  v61(v243, 1, 1, v248);
  v64 = v242;
  v61(v242, 1, 1, v63);
  v65 = v241;
  v61(v241, 1, 1, v63);
  v66 = sub_1CF9E6218();
  LODWORD(v63) = sub_1CF9E61F8() | v66;
  v67 = sub_1CF9E6208();
  v68 = v63 | v67 | sub_1CF9E6248();
  sub_1CEFCCBDC(v62, v246, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCBDC(v64, v240, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCBDC(v65, v244, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v69 = &v46[*(v43 + 56)];
  *v69 = 0;
  *(v69 + 1) = 0;
  v46[*(v43 + 68)] = 2;
  v229 = *(v43 + 92);
  v46[v229] = 6;
  v225 = *(v43 + 120);
  v70 = v248;
  v61(&v46[v225], 1, 1, v248);
  v227 = &v46[*(v43 + 136)];
  v226 = xmmword_1CF9F4E20;
  *v227 = xmmword_1CF9F4E20;
  v71 = &v46[*(v43 + 152)];
  *v71 = 0;
  *(v71 + 1) = 0;
  v72 = fpfs_supports_vfs_ignore_permissions_iopolicy();
  v73 = (4 * v68) & 0x100;
  if (v72)
  {
    v73 = 0;
  }

  v74 = *(v43 + 148);
  *v46 = 0;
  v46[*(v43 + 80)] = 0;
  v46[*(v43 + 112)] = 0;
  v46[*(v43 + 116)] = 0;
  *&v46[*(v43 + 104)] = 0;
  *&v46[*(v43 + 108)] = 0;
  v75 = &v46[v74];
  *(v46 + 1) = 0;
  v46[8] = 1;
  *v75 = 0;
  v75[4] = 1;
  *(v46 + 5) = v73 | v68 & 0x1FF;
  v76 = v247;
  v77 = v230;
  sub_1CEFCCBDC(v246, v230, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v78 = v76[6];
  v79 = v78(v77, 1, v70);
  v228 = v69;
  if (v79 == 1)
  {
    v80 = v231;
    sub_1CF9E5C88();
    if (v78(v77, 1, v248) != 1)
    {
      sub_1CEFCCC44(v77, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v80 = v231;
    (v76[4])(v231, v77, v248);
  }

  v81 = &v46[*(v43 + 28)];
  v82 = v248;
  v231 = v76[4];
  (v231)(v81, v80, v248);
  v83 = v240;
  v84 = v232;
  sub_1CEFCCBDC(v240, v232, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v85 = v78(v84, 1, v82);
  v247 = v76 + 4;
  if (v85 == 1)
  {
    sub_1CF9E5C88();
    sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v246, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v241, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v242, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v243, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v86 = v78(v84, 1, v248) == 1;
    v87 = v84;
    v88 = v231;
    if (!v86)
    {
      sub_1CEFCCC44(v87, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v246, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v241, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v242, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v243, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v89 = v84;
    v88 = v231;
    (v231)(v245, v89, v248);
  }

  v90 = *(v43 + 124);
  v91 = &v46[*(v43 + 128)];
  v92 = *(v43 + 132);
  v93 = &v46[*(v43 + 140)];
  (v88)(&v46[*(v43 + 32)], v245, v248);
  v46[*(v43 + 36)] = 0;
  v46[*(v43 + 40)] = 0;
  v46[*(v43 + 52)] = 0;
  *&v46[*(v43 + 76)] = 0;
  v46[*(v43 + 84)] = 0;
  v46[*(v43 + 60)] = 0;
  v46[*(v43 + 64)] = 0;
  v46[*(v43 + 44)] = 0;
  v46[*(v43 + 48)] = 0;
  v46[*(v43 + 72)] = 0;
  sub_1CEFDA9E0(v244, &v46[v225], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v46[v90] = 0;
  *v91 = 0;
  v91[8] = 1;
  *&v46[v92] = 0;
  v94 = v228;
  v95 = *(v228 + 1);

  *v94 = 0;
  *(v94 + 1) = 0;
  v96 = v227;
  sub_1CEFE48D8(*v227, *(v227 + 1));
  *v96 = v226;
  *v93 = 0;
  v93[8] = 1;
  v46[*(v43 + 144)] = 0;
  v46[*(v43 + 96)] = 0;
  v46[*(v43 + 100)] = 0;
  v46[*(v43 + 88)] = 0;
  v46[v229] = 6;
  v97 = v233;
  sub_1CF2F63E4(v46, v233, type metadata accessor for ItemMetadata);
  v98 = v234;
  v99 = *(v234 + 136);
  v273 = v279;
  v274 = v280;
  v275 = v281;
  v276 = *v282;
  sub_1CEFE528C(v277);
  v271[9] = v277[12];
  v271[10] = v277[13];
  v271[11] = v277[14];
  v272 = v278;
  v271[5] = v277[8];
  v271[6] = v277[9];
  v271[7] = v277[10];
  v271[8] = v277[11];
  v271[1] = v277[4];
  v271[2] = v277[5];
  v271[3] = v277[6];
  v271[4] = v277[7];
  v268 = v277[0];
  v269 = v277[1];
  v270 = v277[2];
  v271[0] = v277[3];
  *&v267[0] = 6516580;
  *(&v267[0] + 1) = 0xE300000000000000;
  *&v260 = 58;
  *(&v260 + 1) = 0xE100000000000000;
  *&v256 = 47;
  *(&v256 + 1) = 0xE100000000000000;
  sub_1CF1AE1DC(&v279, &v264);
  v214 = sub_1CEFE4E68();
  v215 = v214;
  v212 = MEMORY[0x1E69E6158];
  v213 = v214;
  v255[0] = sub_1CF9E7668();
  v255[1] = v100;
  v43 = (*(*v99 + 448))(&v273, v97, &v268, v255, 0, v283);

  v267[0] = v273;
  v267[1] = v274;
  v267[2] = v275;
  v267[3] = v276;
  sub_1CEFCCC44(v267, &unk_1EC4BF260, &unk_1CFA01B60);
  v101 = swift_allocObject();
  v102 = v99;
  v103 = v235;
  v101[2] = v98;
  v101[3] = v103;
  v105 = v217;
  v104 = v218;
  v101[4] = v43;
  v101[5] = v105;
  v101[6] = v104;
  v106 = v237;
  v107 = *(v237 + 24);
  *(v237 + 16) = sub_1CF2F5640;
  *(v106 + 24) = v101;

  v244 = &v216;
  v108 = MEMORY[0x1EEE9AC00](v283);
  v232 = &v216 - 30;
  v109 = v219;
  *(&v216 - 28) = v98;
  *(&v216 - 27) = v109;
  v110 = v222;
  v111 = v223;
  *(&v216 - 26) = v223;
  *(&v216 - 25) = v110;
  v112 = v236;
  *(&v216 - 24) = v106;
  *(&v216 - 23) = v112;
  *(&v216 - 22) = a9;
  *(&v216 - 21) = v113;
  *(&v216 - 40) = v114;
  *(&v216 - 156) = v115;
  *(&v216 - 19) = v116;
  *(&v216 - 17) = v117;
  *(&v216 - 120) = v118;
  *(&v216 - 7) = v108;
  *(&v216 - 6) = v119;
  *(&v216 - 5) = v120;
  *(&v216 - 4) = v121;
  *(&v216 - 6) = v122;
  *(&v216 - 40) = v123;
  v212 = v220;
  LOBYTE(v213) = a10;
  v240 = v102;
  v124 = v102 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  v214 = v216;
  v243 = v110;

  swift_unknownObjectRetain();
  v242 = a9;

  v241 = v111;
  sub_1CEFCCBDC(&v279, &v264, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  v248 = v124;
  v125 = swift_beginAccess();
  v126 = 1000;
  v246 = *MEMORY[0x1E696AA08];
  v247 = (v221 + 8);
  v245 = xmmword_1CF9FA450;
  while (1)
  {
    v254 = -1;
    v127 = *(v43 + 16);
    v128 = *(v43 + 24);
    v129 = *(v43 + 32);
    v130 = *(v43 + 36);
    v132 = *(v43 + 40);
    v131 = *(v43 + 48);
    v133 = *(v248 + 8);
    MEMORY[0x1EEE9AC00](v125);
    v214 = v133 | 0x20000000000000;
    v262 = 0;
    v263 = 0;
    *&v260 = v134;
    *(&v260 + 1) = v135;
    v261 = __PAIR64__(v137, v136);
    if (!v131)
    {
      break;
    }

    MEMORY[0x1EEE9AC00](&v260);
    v212 = v138;
    v213 = sub_1CF2F6700;
    v214 = v139;
    if ((v131 & 0x1000000000000000) != 0)
    {
      goto LABEL_58;
    }

    if ((v131 & 0x2000000000000000) != 0)
    {
      v251[0] = v132;
      v251[1] = v131 & 0xFFFFFFFFFFFFFFLL;
      v262 = v251;
      v256 = v260;
      v257 = v261;
      v258 = v251;
      v259 = v263;
      v250 = -1;

      v140 = fpfs_openfdbyhandle();
      if ((v140 & 0x80000000) == 0)
      {
LABEL_61:
        v252 = v140;
        goto LABEL_62;
      }

      v146 = v250;
      v147 = MEMORY[0x1D38683F0]();
      if (v146 < 0)
      {
        LODWORD(v264) = 0;
        BYTE4(v264) = 1;
      }

      else
      {
        LODWORD(v264) = v250;
        BYTE4(v264) = 0;
      }

      BYTE8(v265[1]) = 0;
      if (!v147)
      {
        goto LABEL_50;
      }

      v158 = sub_1CF9E6138();
      if ((v158 & 0x100000000) != 0)
      {
        goto LABEL_50;
      }

      v249 = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v159 = swift_allocObject();
      *(v159 + 16) = v245;
      *(v159 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v159 + 40) = v160;
      *(v159 + 72) = &type metadata for VFSFileError;
      v161 = swift_allocObject();
      *(v159 + 48) = v161;
      sub_1CF19A730(&v264, v161 + 16);
      sub_1CF4E04E8(v159);
      swift_setDeallocating();
      sub_1CEFCCC44(v159 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    }

    else
    {
      if ((v132 & 0x1000000000000000) == 0)
      {
LABEL_58:

        sub_1CF9E7938();
LABEL_62:

        v176 = v240;
        v177 = v252;
        goto LABEL_64;
      }

      v262 = ((v131 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v256 = v260;
      v257 = v261;
      v258 = v262;
      v259 = v263;
      LODWORD(v251[0]) = -1;

      v140 = fpfs_openfdbyhandle();
      if ((v140 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v141 = v251[0];
      v142 = MEMORY[0x1D38683F0]();
      if (v141 < 0)
      {
        LODWORD(v264) = 0;
        BYTE4(v264) = 1;
        BYTE8(v265[1]) = 0;
        if (!v142)
        {
          goto LABEL_50;
        }
      }

      else
      {
        LODWORD(v264) = v251[0];
        BYTE4(v264) = 0;
        BYTE8(v265[1]) = 0;
        if (!v142)
        {
          goto LABEL_50;
        }
      }

      v162 = sub_1CF9E6138();
      if ((v162 & 0x100000000) != 0)
      {
LABEL_50:
        sub_1CEFDB034();
        v154 = swift_allocError();
        sub_1CF19A730(&v264, v168);
        goto LABEL_51;
      }

      v250 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v163 = swift_allocObject();
      *(v163 + 16) = v245;
      *(v163 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v163 + 40) = v164;
      *(v163 + 72) = &type metadata for VFSFileError;
      v165 = swift_allocObject();
      *(v163 + 48) = v165;
      sub_1CF19A730(&v264, v165 + 16);
      sub_1CF4E04E8(v163);
      swift_setDeallocating();
      sub_1CEFCCC44(v163 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    }

    v167 = v238;
    v166 = v239;
    sub_1CF9E57D8();
    v154 = sub_1CF9E53A8();
    (*v247)(v167, v166);
LABEL_51:
    sub_1CF1969CC(&v264);
    swift_willThrow();

LABEL_52:
    v169 = v154;
    LODWORD(v264) = sub_1CF9E5298();
    sub_1CF196978();
    v170 = sub_1CF9E5658();

    if ((v170 & 1) == 0)
    {
      v171 = v154;
      LODWORD(v264) = sub_1CF9E5328();
      v172 = sub_1CF9E5658();

      if (v172)
      {

        LODWORD(v264) = 2;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v174 = v238;
        v173 = v239;
        sub_1CF9E57D8();
        v154 = sub_1CF9E53A8();
        (*v247)(v174, v173);
        swift_willThrow();
      }

      goto LABEL_69;
    }

    usleep(v126);
    v125 = v254;
    if (2 * v126 >= 0xF4240)
    {
      v126 = 1000000;
    }

    else
    {
      v126 *= 2;
    }

    if ((v254 & 0x80000000) == 0)
    {
      v125 = close(v254);
    }
  }

  *&v256 = v134;
  *(&v256 + 1) = v135;
  v257 = __PAIR64__(v137, v136);
  v258 = 0;
  v259 = 0;
  LODWORD(v251[0]) = -1;
  v143 = fpfs_openfdbyhandle();
  if ((v143 & 0x80000000) != 0)
  {
    v144 = v251[0];
    v145 = MEMORY[0x1D38683F0]();
    if (v144 < 0)
    {
      LODWORD(v264) = 0;
      BYTE4(v264) = 1;
      BYTE8(v265[1]) = 0;
      if (!v145)
      {
        goto LABEL_40;
      }
    }

    else
    {
      LODWORD(v264) = v251[0];
      BYTE4(v264) = 0;
      BYTE8(v265[1]) = 0;
      if (!v145)
      {
LABEL_40:
        sub_1CEFDB034();
        v154 = swift_allocError();
        v155 = *(v265 + 9);
        v156 = v265[0];
        *v157 = v264;
        v157[1] = v156;
        *(v157 + 25) = v155;
        goto LABEL_41;
      }
    }

    v148 = sub_1CF9E6138();
    if ((v148 & 0x100000000) != 0)
    {
      goto LABEL_40;
    }

    v252 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v149 = swift_allocObject();
    *(v149 + 16) = v245;
    *(v149 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v149 + 40) = v150;
    *(v149 + 72) = &type metadata for VFSFileError;
    v151 = swift_allocObject();
    *(v149 + 48) = v151;
    sub_1CF19A730(&v264, v151 + 16);
    sub_1CF4E04E8(v149);
    swift_setDeallocating();
    sub_1CEFCCC44(v149 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v153 = v238;
    v152 = v239;
    sub_1CF9E57D8();
    v154 = sub_1CF9E53A8();
    (*v247)(v153, v152);
    sub_1CF1969CC(&v264);
LABEL_41:
    swift_willThrow();

    goto LABEL_52;
  }

  v177 = v143;

  v176 = v240;
LABEL_64:
  LODWORD(v248) = v177;
  v247 = &v216;
  v178 = v176 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v179 = *(v178 + 26);
  v180 = *(v178 + 25);
  v181 = *(v178 + 24);
  v182 = *v178;
  v183 = *(v178 + 8);
  v184 = *(v178 + 16);
  v254 = v177;
  MEMORY[0x1EEE9AC00](v175);
  v212 = &v254;
  v213 = sub_1CF2F5650;
  v214 = v185;
  *&v265[1] = v186;
  *(&v265[1] + 1) = v183;
  *&v264 = v187;
  *(&v264 + 1) = 1107296256;
  *&v265[0] = v188;
  *(&v265[0] + 1) = &block_descriptor_505;
  v189 = _Block_copy(&v264);
  v53 = *(&v265[1] + 1);
  v246 = v183;
  swift_retain_n();

  *&v245 = v189;
  *&v260 = v189;
  *(&v260 + 1) = v184;
  LOBYTE(v261) = v181;
  BYTE1(v261) = v180;
  BYTE2(v261) = v179;
  a4 = sub_1CEFDB034();
  v190 = swift_allocError();
  *v191 = 6;
  *(v191 + 8) = 0u;
  *(v191 + 24) = 0u;
  *(v191 + 40) = 19;
  *&v256 = v190;
  BYTE8(v256) = 1;
  v54 = swift_allocObject();
  v54[2] = &v256;
  v54[3] = sub_1CF2F6598;
  v54[4] = &v216 - 6;
  v46 = swift_allocObject();
  *(v46 + 2) = sub_1CF2F65B8;
  *(v46 + 3) = v54;
  *&v265[1] = sub_1CF1DBD5C;
  *(&v265[1] + 1) = v46;
  *&v264 = MEMORY[0x1E69E9820];
  *(&v264 + 1) = 1107296256;
  *&v265[0] = sub_1CEFDB270;
  *(&v265[0] + 1) = &block_descriptor_516;
  v192 = _Block_copy(&v264);
  Strong = *(&v265[1] + 1);

  v193 = fpfs_fgetfileattrs_detailed();
  _Block_release(v192);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_77;
  }

  if (v193)
  {
    swift_getErrorValue();
    v194 = v253;
    v195 = swift_allocError();
    *v196 = 6;
    *(v196 + 8) = 0u;
    *(v196 + 24) = 0u;
    *(v196 + 40) = 19;
    v197 = v193;
    v198 = sub_1CF199074(v195, v194);

    v199 = v256;
    v200 = BYTE8(v256);
    *&v256 = v198;
    BYTE8(v256) = 1;
    sub_1CF0BA6EC(v199, v200);
  }

  if (BYTE8(v256))
  {
    v154 = v256;
    *&v264 = v256;
    v201 = v256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CF0BA6EC(v256, SBYTE8(v256));

    _Block_release(v245);

LABEL_69:
    v202 = v233;
    v203 = v243;
    v204 = v242;
    if ((v254 & 0x80000000) == 0)
    {
      close(v254);
    }

    swift_unknownObjectRelease();

    sub_1CEFCCC44(&v279, &qword_1EC4BF2B0, &qword_1CFA01BA8);
    sub_1CF007B98(v202, type metadata accessor for ItemMetadata);

    swift_beginAccess();
    v206 = *(v237 + 16);
    v205 = *(v237 + 24);
    LOBYTE(v267[0]) = 1;
    *&v264 = v154;
    BYTE8(v266[1]) = 1;

    v207 = v154;
    v206(&v264);

    swift_unknownObjectRelease();

    v270 = v265[1];
    v271[0] = v266[0];
    *(v271 + 9) = *(v266 + 9);
    v268 = v264;
    v269 = v265[0];
    sub_1CEFCCC44(&v268, &qword_1EC4BF2B8, &qword_1CFA01BB0);

    goto LABEL_72;
  }

  sub_1CF0BA6EC(v256, SBYTE8(v256));

  _Block_release(v245);

  v210 = v233;
  v211 = v242;
  if ((v254 & 0x80000000) == 0)
  {
    close(v254);
  }

  swift_unknownObjectRelease();

  sub_1CEFCCC44(&v279, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  sub_1CF007B98(v210, type metadata accessor for ItemMetadata);

  result = swift_unknownObjectRelease();
LABEL_72:
  v209 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2DCEA8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v30 = a4;
  v28 = a2;
  v9 = sub_1CF9E63A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CF9E6448();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v38[2] = a1[2];
  v39[0] = v18;
  *(v39 + 9) = *(a1 + 57);
  v19 = a1[1];
  v38[0] = *a1;
  v38[1] = v19;
  v27 = *(a2 + 160);
  aBlock[4] = sub_1CF2F6588;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_526;
  v20 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v21 = v30;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v17, v13, v20);
  _Block_release(v20);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v29);

  v23 = *(v21 + 16);
  v33 = *(v28 + 136);
  v22 = v33;
  v34 = 1;
  v35 = v23;

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    v24 = *(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  return v32(v38);
}

uint64_t sub_1CF2DD288(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);

  v3(v4);
}

void sub_1CF2DD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, uint64_t *a12, uint64_t a13, char a14, void *a15)
{
  v118 = a8;
  v116 = a7;
  v117 = a6;
  v18 = *(a12 + 2);
  v19 = *(a12 + 12);
  v20 = *(a12 + 48);
  v21 = a12[15];
  v22 = *(a12 + 128);
  v130 = *a12;
  v131 = v18;
  v132 = v19;
  v23 = *(a12 + 2);
  v133 = *(a12 + 1);
  v134 = v23;
  v135 = v20;
  v24 = *(a12 + 9);
  *v136 = *(a12 + 7);
  *&v136[16] = v24;
  *&v136[32] = *(a12 + 11);
  *&v136[48] = *(a12 + 13);
  *&v136[64] = v21;
  v137 = v22;
  v25 = sub_1CF9E53C8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v101[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1CF9E5A58();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v101[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a4)
  {
    goto LABEL_6;
  }

  v34 = *(a5 + 136);
  v138 = a2;
  v35 = *(a2 + 8);
  v115 = a5;
  v36 = v34 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  v37 = v35 == *(v36 + 32);
  v38 = v138;
  if (v37)
  {
    v39 = *v138;
    v40 = *(v138 + 20);
    v114 = fpfs_current_log();
    v41 = *(v38 + 40) & 0xFFFFFFFE;
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    sub_1CF9E58B8();
    v42 = v119;
    v43 = sub_1CF02BFF8(v33, 0);
    if (v42)
    {

      return;
    }

    v109 = v40;
    v112 = v43;
    v111 = a9;
    v44 = v115;
    Strong = swift_unknownObjectWeakLoadStrong();
    v110 = v39;
    if (Strong && (v46 = Strong, v47 = [Strong session], v46, v47))
    {
      v49 = v116;
      v48 = v117;
      if (v116)
      {
        v50 = v116;
      }

      else
      {
        v50 = [objc_opt_self() requestForSelf];
      }

      v51 = v49;
      v52 = [v50 nsfpRequestForSession:v47 isSpeculative:(v48 >> 8) & 1];

      v113 = v52;
      [v52 setDomainVersion_];
      swift_unknownObjectRelease();
      v44 = v115;
    }

    else
    {
      v113 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
      LOWORD(v48) = v117;
    }

    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    if ((v48 & 0x100) != 0 && *(v44 + 144))
    {
      v54 = *(v44 + 144);

      if (!sub_1CF2CFDB8())
      {
        v94 = v111;
        swift_beginAccess();
        v96 = *(v94 + 16);
        v95 = *(v94 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
        sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
        v97 = swift_allocError();
        *v98 = 10;
        *(v98 + 56) = 0u;
        *(v98 + 40) = 0u;
        *(v98 + 24) = 0u;
        *(v98 + 8) = 0u;
        *(v98 + 72) = 0u;
        *&v120[8] = v122;
        *&v120[24] = v123;
        v99 = v125;
        *&v120[40] = v124;
        *(v98 + 88) = 11;
        v121 = 1;
        *v120 = v97;
        *&v120[56] = v99;
        v120[72] = 1;

        v96(v120);

        v128 = *&v120[32];
        v129[0] = *&v120[48];
        *(v129 + 9) = *&v120[57];
        v126 = *v120;
        v127 = *&v120[16];
        sub_1CEFCCC44(&v126, &qword_1EC4BF2B8, &qword_1CFA01BB0);

        return;
      }
    }

    v108 = a13;
    v116 = a11;
    v117 = a10;
    v55 = v44;
    v107 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v44 + 280) itemIdentifier:a11];
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    v126 = *&v136[8];
    v127 = *&v136[24];
    v128 = *&v136[40];
    v129[0] = *&v136[56];
    sub_1CEFCCBDC(&v136[8], v120, &unk_1EC4BF250, &unk_1CFA01B50);
    v105 = sub_1CF327484(&v126);
    v106 = v53 + 16;
    v104 = a14 == 2;
    v56 = v130;
    v57 = v131;
    v58 = v132;
    v119 = v53;
    v59 = v135;
    v103 = *&v136[64];
    v102 = v137;
    v60 = swift_allocObject();
    v61 = v114;
    *(v60 + 16) = v55;
    *(v60 + 24) = v61;
    v63 = v118;
    v62 = v119;
    *(v60 + 32) = v118;
    *(v60 + 40) = v62;
    v64 = v117;
    v65 = v111;
    *(v60 + 48) = v116;
    *(v60 + 56) = v65;
    *(v60 + 64) = v64;
    *(v60 + 72) = v56;
    *(v60 + 80) = v57;
    *(v60 + 84) = v58;
    v66 = v133;
    *(v60 + 104) = v134;
    *(v60 + 88) = v66;
    *(v60 + 120) = v59;
    v67 = v119;
    v68 = *&v136[16];
    *(v60 + 128) = *v136;
    *(v60 + 144) = v68;
    v69 = *&v136[48];
    *(v60 + 160) = *&v136[32];
    *(v60 + 176) = v69;
    *(v60 + 192) = v103;
    *(v60 + 200) = v102;
    *(v60 + 208) = v110;
    *(v60 + 216) = v109;
    *&v120[32] = sub_1CF2F56F0;
    *&v120[40] = v60;
    *v120 = MEMORY[0x1E69E9820];
    *&v120[8] = 1107296256;
    *&v120[16] = sub_1CF2DF2C8;
    *&v120[24] = &block_descriptor_536;
    v70 = _Block_copy(v120);
    v71 = v63;

    v116 = v116;

    v72 = v117;
    swift_unknownObjectRetain();
    v118 = v114;
    sub_1CEFCCBDC(&v130, &v126, &qword_1EC4BF2B0, &qword_1CFA01BA8);

    LOBYTE(v100) = v104;
    v73 = v72;
    v74 = v107;
    v76 = v112;
    v75 = v113;
    v77 = v105;
    v78 = [v73 fetchContentsForItemWithID:v107 version:0 usingExistingContentsAtURL:v112 existingVersion:v105 request:v113 estimatedItemSize:v108 isSymlink:v100 completionHandler:v70];
    _Block_release(v70);

    swift_beginAccess();
    v79 = *(v67 + 16);
    *(v67 + 16) = v78;

    if (v78)
    {
      v80 = v115;
      swift_beginAccess();
      v81 = v78;
      v82 = v116;
      v83 = v81;
      sub_1CF1C8F90(v78, v82);
      swift_endAccess();
      v84 = *(v80 + 120);
      if (v84)
      {
        v85 = *(v80 + 128);
        v86 = *MEMORY[0x1E696A848];
        v87 = *(v138 + 56);
        *v120 = v82;

        v138 = v84(v120, v83, v86, v87);
        v89 = v88;

        v90 = v84;
        v84 = v138;
        sub_1CEFF7124(v90);
      }

      else
      {

        v89 = 0;
      }

      v91 = swift_allocObject();
      v91[2] = v80;
      v91[3] = v82;
      v91[4] = v84;
      v91[5] = v89;
      swift_beginAccess();
      v92 = a15[1];
      *a15 = sub_1CF2F6718;
      a15[1] = v91;

      v93 = v82;
    }

    else
    {
    }
  }

  else
  {
LABEL_6:
    LODWORD(v126) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v26 + 8))(v29, v25);
    swift_willThrow();
  }
}

uint64_t sub_1CF2DDC70(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, int a15)
{
  v18 = *(a13 + 12);
  v45 = v18;
  v46 = *(a13 + 2);
  v19 = a13[2];
  v20 = a13[3];
  v21 = a13[4];
  v22 = a13[5];
  v23 = *(a13 + 48);
  v44 = v23;
  v24 = a13[7];
  v42 = a13[9];
  v43 = a13[8];
  v40 = a13[11];
  v41 = a13[10];
  v38 = a13[13];
  v39 = a13[12];
  v36 = a13[15];
  v37 = a13[14];
  v25 = *(a13 + 128);
  v35 = v25;
  v55 = *a13;
  v47 = v55;
  v56 = v46;
  v57 = v18;
  v58 = v19;
  v59 = v20;
  v60 = v21;
  v61 = v22;
  v62 = v23;
  v63 = v24;
  v64 = v43;
  v65 = v42;
  v66 = v41;
  v67 = v40;
  v68 = v39;
  v69 = v38;
  v70 = v37;
  v71 = v36;
  v72 = v25;
  v51 = *(a6 + 160);
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a3;
  *(v26 + 32) = a8;
  *(v26 + 40) = a1;
  *(v26 + 48) = a2;
  *(v26 + 56) = a5;
  *(v26 + 64) = a9;
  *(v26 + 72) = a10;
  *(v26 + 80) = a11;
  *(v26 + 88) = a12;
  *(v26 + 96) = v47;
  *(v26 + 104) = v46;
  *(v26 + 108) = v45;
  *(v26 + 112) = v19;
  *(v26 + 120) = v20;
  *(v26 + 128) = v21;
  *(v26 + 136) = v22;
  *(v26 + 144) = v44;
  *(v26 + 152) = v24;
  *(v26 + 160) = v43;
  *(v26 + 168) = v42;
  *(v26 + 176) = v41;
  *(v26 + 184) = v40;
  *(v26 + 192) = v39;
  *(v26 + 200) = v38;
  *(v26 + 208) = v37;
  *(v26 + 216) = v36;
  *(v26 + 224) = v35;
  *(v26 + 232) = a14;
  *(v26 + 240) = a15;

  v27 = a3;
  v28 = a8;
  v29 = a1;
  v30 = a2;
  v31 = a5;

  v32 = a10;

  swift_unknownObjectRetain();
  sub_1CEFCCBDC(&v55, v54, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  sub_1CF01001C(a7, "provideFile(for:kind:expectedFileSize:updating:domainVersion:requestor:options:completion:)", 91, 2, sub_1CF2F578C, v26);
}

uint64_t sub_1CF2DDECC(void *a1, void *a2, void *a3, void *a4, void *a5, char *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v110 = a8;
  v111 = a5;
  v112 = a7;
  v113 = a6;
  v114 = a3;
  v115 = a9;
  v14 = *(a11 + 8);
  v15 = *(a11 + 12);
  v16 = *(a11 + 48);
  v17 = *(a11 + 120);
  v18 = *(a11 + 128);
  *&v131 = *a11;
  DWORD2(v131) = v14;
  BYTE12(v131) = v15;
  v19 = *(a11 + 32);
  v132 = *(a11 + 16);
  v133 = v19;
  v134[0] = v16;
  *&v134[8] = *(a11 + 56);
  v135 = *(a11 + 72);
  v136[0] = *(a11 + 88);
  v136[1] = *(a11 + 104);
  v137 = v17;
  v138 = v18;
  v20 = sub_1CF9E5248();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v107 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E5268();
  v108 = *(v23 - 8);
  v109 = v23;
  v24 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E5A58();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v105 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v105 - v34;
  v36 = v114;
  v114 = a1;
  sub_1CF041B2C(a2, v36);
  if (a4)
  {
    v37 = [a4 url];
    sub_1CF9E59D8();

    v38 = *(v27 + 32);
    v38(v35, v32, v26);
    if (v111 && !v113)
    {
      v110 = v111;
      LODWORD(v109) = sub_1CF9E59E8();
      v66 = v115;
      swift_beginAccess();
      v67 = *(v66 + 16);
      v107 = *(v66 + 24);
      v108 = v67;
      (*(v27 + 16))(v29, v35, v26);
      v68 = *(v27 + 80);
      v112 = v27;
      v113 = v35;
      v69 = v26;
      v70 = (v68 + 16) & ~v68;
      v71 = v70 + v28;
      v72 = swift_allocObject();
      v73 = v72 + v70;
      v74 = v69;
      v75 = v110;
      v38(v73, v29, v74);
      v76 = v66;
      *(v72 + v71) = v109 & 1;
      v77 = v72 + (v71 & 0xFFFFFFFFFFFFFFF8);
      v78 = v107;
      *(v77 + 8) = v108;
      *(v77 + 16) = v78;
      swift_beginAccess();
      v79 = *(v66 + 24);
      *(v76 + 16) = sub_1CF2F582C;
      *(v76 + 24) = v72;
      swift_retain_n();

      sub_1CF06BC9C(v116);
      v80 = *v116;
      v81 = *&v116[8];
      sub_1CEFE42D4(*v116, *&v116[8]);
      sub_1CEFCCC44(v116, &unk_1EC4BF250, &unk_1CFA01B50);
      v82 = *&v134[16];
      v83 = v135;
      sub_1CEFE42D4(*&v134[16], v135);
      LOBYTE(v71) = sub_1CF328660(v80, v81, v82, v83);
      sub_1CEFE4714(v82, v83);
      sub_1CEFE4714(v80, v81);
      if (v71)
      {
        v84 = v75;
        sub_1CF2D1564(v111);

        swift_beginAccess();
        v85 = v76;
        v86 = *(v76 + 16);
        v87 = *(v85 + 24);
        v127 = v131;
        v128 = v132;
        v129 = v133;
        v130[0] = *v134;
        v117 = 0;
        *&v130[1] = v84;
        BYTE8(v130[1]) = 0;
        v88 = v84;

        sub_1CF1AE1DC(&v131, &v118);
        v86(&v127);

        v120 = v129;
        v121[0] = v130[0];
        *(v121 + 9) = *(v130 + 9);
        v118 = v127;
        v119 = v128;
        sub_1CEFCCC44(&v118, &qword_1EC4BF2B8, &qword_1CFA01BB0);
        return (*(v112 + 8))(v113, v74);
      }

      else
      {
        v89 = v112;
        v90 = MEMORY[0x1EEE9AC00](v134[0]);
        v91 = v113;
        *(&v105 - 24) = v113;
        *(&v105 - 23) = v92;
        *(&v105 - 44) = v93;
        *(&v105 - 21) = v76;
        *(&v105 - 20) = v94;
        *(&v105 - 38) = v95;
        *(&v105 - 148) = v96;
        *(&v105 - 9) = v97;
        *(&v105 - 8) = v98;
        *(&v105 - 112) = v99;
        *(&v105 - 13) = v100;
        *(&v105 - 12) = v82;
        *(&v105 - 11) = v83;
        *(&v105 - 5) = v90;
        *(&v105 - 4) = v101;
        *(&v105 - 3) = v102;
        *(&v105 - 32) = v103;
        v104 = v114;
        *(&v105 - 3) = v75;
        *(&v105 - 2) = v104;
        sub_1CEFE1894(sub_1CF2F58CC);

        return (*(v89 + 8))(v91, v74);
      }
    }

    (*(v27 + 8))(v35, v26);
  }

  v39 = v112;
  swift_beginAccess();
  v40 = *(v39 + 16);
  if (v40 && ([v40 isCancelled] & 1) != 0)
  {
    swift_beginAccess();
    v41 = *(v39 + 16);
    v42 = v115;
    if (v41 && [v41 isCancelled] && (v43 = v114, swift_beginAccess(), *(v43[22] + 16)))
    {

      sub_1CEFE863C(v110);
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    swift_beginAccess();
    v58 = *(v42 + 16);
    v57 = *(v42 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v59 = swift_allocError();
    *v60 = v45 & 1;
    v61 = v118;
    *(v60 + 17) = v119;
    *(v60 + 1) = v61;
    v62 = v120;
    v63 = v121[0];
    v64 = v121[1];
    *(v60 + 80) = *(&v121[1] + 15);
    *(v60 + 65) = v64;
    *(v60 + 49) = v63;
    *(v60 + 33) = v62;
    *(v60 + 88) = 5;
    v122 = 1;
    *v116 = v59;
    *&v116[8] = v123;
    *&v116[24] = v124;
    *&v116[40] = v125;
    *&v116[56] = v126;
    v116[72] = 1;

    v58(v116);

    v129 = *&v116[32];
    v130[0] = *&v116[48];
    *(v130 + 9) = *&v116[57];
    v127 = *v116;
    v128 = *&v116[16];
    v56 = &v127;
  }

  else
  {
    v46 = v115;
    swift_beginAccess();
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    v49 = v113;
    if (v113)
    {

      v50 = v49;
    }

    else
    {

      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v51 = v106;
      v52 = v109;
      sub_1CF9E57D8();
      v50 = sub_1CF9E50D8();
      (*(v108 + 8))(v51, v52);
    }

    v53 = v49;
    v54 = [a10 timeoutState];
    v55 = sub_1CF2E3014(v50, v110, 0, v54);

    LOBYTE(v123) = 1;
    *&v127 = v55;
    BYTE8(v130[1]) = 1;
    v48(&v127);

    v120 = v129;
    v121[0] = v130[0];
    *(v121 + 9) = *(v130 + 9);
    v118 = v127;
    v119 = v128;
    v56 = &v118;
  }

  return sub_1CEFCCC44(v56, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

uint64_t sub_1CF2DE8F0(_OWORD *a1, uint64_t a2, char a3, uint64_t (*a4)(_OWORD *))
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1CF9E5928();
  *&v17[0] = 0;
  v9 = [v7 removeItemAtURL:v8 error:v17];

  if (v9)
  {
    v10 = *&v17[0];
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *&v17[0];
  v12 = sub_1CF9E57F8();

  swift_willThrow();
  if (a3)
  {
LABEL_5:
    sub_1CF9E59C8();
  }

LABEL_6:
  v13 = a1[3];
  v17[2] = a1[2];
  v18[0] = v13;
  *(v18 + 9) = *(a1 + 57);
  v14 = a1[1];
  v17[0] = *a1;
  v17[1] = v14;
  result = a4(v17);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2DEA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v46 = a6;
  v47 = a7;
  v64 = a4;
  v45 = a3;
  v44 = a2;
  v38 = a8;
  v9 = *(a5 + 2);
  v10 = *(a5 + 12);
  v11 = *(a5 + 48);
  v12 = a5[15];
  v13 = *(a5 + 128);
  v52 = *a5;
  v53 = v9;
  v54 = v10;
  v14 = *(a5 + 2);
  v55 = *(a5 + 1);
  v56 = v14;
  v57 = v11;
  v58 = *(a5 + 7);
  v59 = *(a5 + 9);
  v60 = *(a5 + 11);
  v61 = *(a5 + 13);
  v62 = v12;
  v63 = v13;
  v15 = sub_1CF9E5A58();
  v43 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E5A18();
  v48 = v20;
  v49 = v19;
  (*(v16 + 16))(v18, a1, v15);
  v39 = v52;
  v21 = v53;
  v22 = v54;
  v42 = v62;
  v40 = v57;
  v41 = v63;
  v23 = (*(v16 + 80) + 192) & ~*(v16 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v44;
  *(v24 + 24) = v45;
  v25 = v39;
  *(v24 + 32) = v64;
  *(v24 + 40) = v25;
  *(v24 + 48) = v21;
  *(v24 + 52) = v22;
  v26 = v55;
  *(v24 + 72) = v56;
  *(v24 + 56) = v26;
  *(v24 + 88) = v40;
  v27 = v59;
  *(v24 + 96) = v58;
  *(v24 + 112) = v27;
  v28 = v61;
  *(v24 + 128) = v60;
  *(v24 + 144) = v28;
  v29 = v43;
  *(v24 + 160) = v42;
  *(v24 + 168) = v41;
  v31 = v46;
  v30 = v47;
  *(v24 + 176) = v46;
  *(v24 + 184) = v30;
  (*(v16 + 32))(v24 + v23, v18, v29);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF2F5950;
  *(v32 + 24) = v24;
  v51[4] = sub_1CEFDB240;
  v51[5] = v32;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 1107296256;
  v51[2] = sub_1CEFDB270;
  v51[3] = &block_descriptor_558;
  v33 = _Block_copy(v51);

  sub_1CEFCCBDC(&v52, &v50, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  v34 = v31;

  sub_1CF9E6978();

  v35 = fpfs_gethandle_at();

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    *v38 = v35;
  }

  return result;
}

uint64_t sub_1CF2DEDAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 + 8);
  v13 = *(a5 + 12);
  v14 = *(a5 + 48);
  v15 = *(a5 + 120);
  v16 = *(a5 + 128);
  *&v48 = *a5;
  DWORD2(v48) = v12;
  BYTE12(v48) = v13;
  v17 = *(a5 + 32);
  v49 = *(a5 + 16);
  v50 = v17;
  LOBYTE(v51[0]) = v14;
  v18 = *(a5 + 72);
  *&v51[1] = *(a5 + 56);
  *&v51[3] = v18;
  v19 = *(a5 + 104);
  *&v51[5] = *(a5 + 88);
  *&v51[7] = v19;
  v51[9] = v15;
  v52 = v16;
  if (*a1 == a2 && *(a1 + 20) == a3)
  {
    swift_beginAccess();
    v21 = *(a4 + 16);
    v20 = *(a4 + 24);
    *v35 = v48;
    *&v35[16] = v49;
    *&v35[32] = v50;
    *&v35[48] = *v51;
    LOBYTE(v44[0]) = 0;
    *&v35[64] = a6;
    v35[72] = 0;

    v22 = a6;
    sub_1CF1AE1DC(&v48, &v36);
    v21(v35);

    v38 = *&v35[32];
    v39[0] = *&v35[48];
    *(v39 + 9) = *&v35[57];
    v36 = *v35;
    v37 = *&v35[16];
    v23 = &qword_1EC4BF2B8;
    v24 = &qword_1CFA01BB0;
    v25 = &v36;
LABEL_8:
    sub_1CEFCCC44(v25, v23, v24);
    return 0;
  }

  v26 = swift_allocObject();
  v26[2] = a7;
  v26[3] = a6;
  v26[4] = a4;
  v27 = a6;

  if ((sub_1CF2D07F4() & 1) == 0 || ![v27 isFlattenedPackage])
  {
    v28 = *(a7 + 136);
    v29 = sub_1CF9E5A18();
    (*(*v28 + 408))(v44, v29);

    v45 = 0;
    v47 = 0;
    *&v46[32] = v44[2];
    *&v46[48] = v44[3];
    *v46 = v44[0];
    *&v46[16] = v44[1];
    sub_1CF2D1564(v27);
    swift_beginAccess();
    v31 = *(a4 + 16);
    v30 = *(a4 + 24);
    v40 = *&v46[8];
    v41 = *&v46[24];
    v42 = *&v46[40];
    v32 = *v46;
    v43 = *&v46[56];
    LOBYTE(v36) = 0;
    v33 = v27;
    *v35 = v32;
    *&v35[8] = v40;
    *&v35[24] = v41;
    *&v35[40] = v42;
    *&v35[56] = v43;
    *&v35[64] = v27;
    v35[72] = 0;

    sub_1CEFCCBDC(v46, &v36, &unk_1EC4BF2C0, &qword_1CFA01BB8);
    v31(v35);

    v38 = *&v35[32];
    v39[0] = *&v35[48];
    *(v39 + 9) = *&v35[57];
    v36 = *v35;
    v37 = *&v35[16];
    sub_1CEFCCC44(&v36, &qword_1EC4BF2B8, &qword_1CFA01BB0);

    v25 = v46;
    v23 = &unk_1EC4BF2C0;
    v24 = &qword_1CFA01BB8;
    goto LABEL_8;
  }

  sub_1CF2F220C(a8, sub_1CF2F5A1C, v26, a7);

  return 0;
}

uint64_t sub_1CF2DF17C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  *&v21[32] = *(a1 + 32);
  *&v21[48] = v6;
  v22 = *(a1 + 64);
  v7 = *(a1 + 16);
  *v21 = *a1;
  *&v21[16] = v7;
  sub_1CF2D1564(a3);
  swift_beginAccess();
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  if (v22)
  {
    v10 = *v21;
    v11 = 1;
    LOBYTE(v15[0]) = 1;
  }

  else
  {
    v17 = *&v21[8];
    v18 = *&v21[24];
    v19 = *&v21[40];
    v10 = *v21;
    v20 = *&v21[56];
    LOBYTE(v15[0]) = 0;
    v12 = a3;
    v11 = 0;
  }

  *v14 = v10;
  *&v14[8] = v17;
  *&v14[24] = v18;
  *&v14[40] = v19;
  *&v14[56] = v20;
  *&v14[64] = a3;
  v14[72] = v11;

  sub_1CEFCCBDC(v21, v15, &unk_1EC4BF2C0, &qword_1CFA01BB8);
  v9(v14);

  v15[2] = *&v14[32];
  v16[0] = *&v14[48];
  *(v16 + 9) = *&v14[57];
  v15[0] = *v14;
  v15[1] = *&v14[16];
  return sub_1CEFCCC44(v15, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

void sub_1CF2DF2C8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v16 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v12(a2, a3, v14, a5, a6);
}

uint64_t sub_1CF2DF394(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1CF9E64A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 160);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1CF9E64D8();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    swift_beginAccess();
    sub_1CF1C8F90(0, a2);
    result = swift_endAccess();
    if (a3)
    {
      return a3(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF2DF4F8(void *a1, void (*a2)(), void *a3)
{
  v4 = v3;
  v33 = a3;
  v7 = sub_1CF9E63D8();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = *(v4 + 168);
  v35 = *(v4 + 160);
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v17, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v36 = a2;
  v21[4] = a2;
  v22 = v33;
  v21[5] = v33;

  v23 = a1;

  v24 = fpfs_current_log();
  v34 = *(v18 + 16);
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BE370, qword_1CFA01B30);
    v25 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v20 + 8))(v14, v19);
    v25 = sub_1CF9E63C8();
    (*(v31 + 8))(v10, v32);
  }

  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = sub_1CF2F5544;
  v26[4] = v21;
  v41 = sub_1CF2BA17C;
  v42 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1CEFCA444;
  v40 = &block_descriptor_474;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  v41 = v36;
  v42 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1CEFCA444;
  v40 = &block_descriptor_477;
  v29 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v34, v35, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v25, v27, v29);
  _Block_release(v29);
  _Block_release(v27);

  return sub_1CEFCCC44(v17, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2DF8EC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v6 = *(a1 + 176);
  if (*(v6 + 16))
  {
    v7 = *(a1 + 176);

    v8 = sub_1CEFE863C(a2);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);

      [v10 cancel];
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_1CF1C8F90(0, a2);
  v11 = swift_endAccess();
  return a3(v11);
}

void sub_1CF2DF9D8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1CF9E6888();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_1EC4BF020 = v4;
}

uint64_t sub_1CF2DFAA0(void *a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v80 = a8;
  v82 = a7;
  v71 = a4;
  v77 = a2;
  v83 = a1;
  v76 = a12;
  v79 = a10;
  v67 = sub_1CF9E63D8();
  v66 = *(v67 - 8);
  v16 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v65 - v21;
  v68 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v78 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  v69 = &v65 - v27;
  v75 = *a3;
  v29 = a6[1];
  v91 = *a6;
  v92 = v29;
  v30 = a6[3];
  v93 = a6[2];
  v94 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = nullsub_1;
  *(v31 + 24) = 0;
  v32 = v31;
  v84 = v31;
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a4;
  v33[4] = v12;
  v33[5] = a11;
  v33[6] = a12;
  v34 = *(v12 + 160);
  v73 = *(v12 + 168);
  v35 = v12;
  v70 = v12;
  v81 = v34;
  v72 = sub_1CF9E6448();
  v74 = *(v72 - 8);
  (*(v74 + 56))(v28, 1, 1, v72);
  sub_1CEFCCBDC(v77, v22, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v36 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v37 = (v20 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v42 + 71) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v43[2] = v35;
  v43[3] = sub_1CF2F51A0;
  v43[4] = v33;
  v43[5] = v83;
  sub_1CEFE55D0(v68, v43 + v36, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  *(v43 + v37) = v75;
  *(v43 + v38) = v79;
  *(v43 + v39) = v80;
  v44 = v69;
  *(v43 + v40) = v71;
  v45 = v82;
  *(v43 + v41) = v82;
  v46 = (v43 + v42);
  v47 = v92;
  *v46 = v91;
  v46[1] = v47;
  v48 = v94;
  v46[2] = v93;
  v46[3] = v48;
  *(v43 + v77) = v84;
  v49 = swift_allocObject();
  v49[2] = sub_1CF2F51A0;
  v49[3] = v33;
  v50 = v73;
  v49[4] = v73;
  v51 = v45;
  v82 = v33;
  v52 = v72;
  v53 = v78;
  swift_retain_n();
  swift_retain_n();
  v54 = v74;
  swift_retain_n();
  swift_retain_n();

  v55 = v83;

  sub_1CEFCCBDC(&v91, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
  v56 = v50;

  v57 = fpfs_current_log();
  v83 = *(v56 + 16);
  sub_1CEFCCBDC(v44, v53, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v54 + 48))(v53, 1, v52) == 1)
  {
    sub_1CEFCCC44(v53, &unk_1EC4BE370, qword_1CFA01B30);
    v58 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v59 = v65;
    sub_1CF9E6438();
    (*(v54 + 8))(v53, v52);
    v58 = sub_1CF9E63C8();
    (*(v66 + 8))(v59, v67);
  }

  v60 = swift_allocObject();
  v60[2] = v57;
  v60[3] = sub_1CF2F51B0;
  v60[4] = v43;
  v89 = sub_1CF2BA17C;
  v90 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1CEFCA444;
  v88 = &block_descriptor_427;
  v61 = _Block_copy(&aBlock);
  v62 = v57;

  v89 = sub_1CF2F529C;
  v90 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1CEFCA444;
  v88 = &block_descriptor_430;
  v63 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v83, v81, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v58, v61, v63);
  _Block_release(v63);
  _Block_release(v61);

  sub_1CEFCCC44(v44, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v8 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v8;
  v21 = *(a1 + 96);
  v9 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v9;
  v10 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v10;
  swift_beginAccess();
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);

  v12(v13);

  type metadata accessor for VFSStagedContext();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(a4 + 136);
    v16 = *(v14 + 16);
    MEMORY[0x1EEE9AC00](v14);
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v15 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v15 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v17 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a5(v20);
}

uint64_t sub_1CF2E03B4(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, id a4, void **a5, unint64_t a6, unint64_t a7, unsigned __int8 *a8, uint64_t a9, void *a10, _OWORD *a11, uint64_t a12)
{
  v176 = a7;
  v177 = a8;
  v179 = a4;
  v180 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v153 - v18;
  v20 = sub_1CF9E64A8();
  v174 = *(v20 - 8);
  v175 = v20;
  v21 = v174[8];
  MEMORY[0x1EEE9AC00](v20);
  v173 = (v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v26);
  if ((*(a1 + 192) & 1) == 0)
  {
    v166 = v153 - v28;
    v168 = v27;
    v156 = v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_1CF2CA194();
      v77 = swift_allocError();
      LOBYTE(v189) = 1;
      *&v182[0] = v77;
      v183 = 1;
      a2(v182);
      v199 = v182[4];
      v200 = v182[5];
      v201 = v183;
      aBlock = v182[0];
      v196 = v182[1];
      v197 = v182[2];
      v198 = v182[3];
      return sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
    }

    v35 = Strong;
    v161 = v24;
    v167 = a2;
    v169 = v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = a3;
    v164 = a11;
    v36 = a1;
    v37 = swift_allocObject();
    v38 = swift_allocObject();
    v178 = v36;
    v39 = *(v36 + 280);
    v40 = v180;
    *&aBlock = v180;
    v41 = v35;
    v42 = sub_1CEFE5A60(v179, v39, v35, a5, &aBlock, 1);
    v44 = v43;
    v162 = v41;

    v171 = v37;
    *(v37 + 16) = v42;
    v154 = (v37 + 16);
    v165 = v38;
    *(v38 + 16) = v44;
    v45 = (v38 + 16);
    if ((v40 & 0x200000000000) != 0 && (sub_1CF2D07F4() & 1) != 0 && (v44 & 2) == 0)
    {
      *v45 = v44 | 2;
    }

    v160 = a12;
    v163 = a9;
    v172 = a10;
    if ((v180 & 0x4000000000000) != 0)
    {
      if (v176)
      {
        sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
        v46 = v42;
        v47 = sub_1CF9E6D28();
        [v46 setConflictingVersions_];

        if ((*v45 & 0x80000000) == 0)
        {
          *v45 |= 0x80000000uLL;
        }
      }
    }

    v155 = v45;
    v48 = 6;
    if ((v177 & 0x400) == 0)
    {
      v48 = 4;
    }

    if ((v177 & 0x800) != 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = (v177 & 0x400) >> 9;
    }

    v159 = *(v171 + 16);
    v50 = a5 + v168[10];
    v176 = v49;
    v177 = v50;
    v51 = v166;
    sub_1CEFCCBDC(a5, v166, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    sub_1CEFCCBDC(v51, v169, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v52 = (*(v161 + 80) + 48) & ~*(v161 + 80);
    v53 = (v25 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v161 = (v55 + 71) & 0xFFFFFFFFFFFFFFF8;
    v158 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
    v157 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v58 = v167;
    v57[2] = v178;
    v57[3] = v58;
    v59 = v165;
    v57[4] = v170;
    v57[5] = v59;
    sub_1CEFE55D0(v51, v57 + v52, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v60 = v171;
    *(v57 + v53) = v172;
    *(v57 + v54) = v60;
    v61 = (v57 + v55);
    v62 = v164;
    v63 = v164[1];
    *v61 = *v164;
    v61[1] = v63;
    v64 = *(v62 + 48);
    v61[2] = *(v62 + 32);
    v61[3] = v64;
    v65 = v162;
    *(v57 + v161) = v176;
    v66 = v157;
    *(v57 + v158) = v65;
    v67 = v179;
    *(v57 + v66) = v180;
    *(v57 + v56) = v67;
    *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v160;
    LODWORD(v55) = v177[*(type metadata accessor for ItemMetadata() + 112)];
    swift_retain_n();
    v166 = v65;
    v68 = v159;

    v179 = v67;
    if (v55 == 1)
    {
      sub_1CEFCCBDC(v62, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
      v69 = v172;

      if (sub_1CF2D07F4())
      {
        v70 = [v68 filename];
        v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v73 = v72;

        *&aBlock = v71;
        *(&aBlock + 1) = v73;
        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        v74 = *MEMORY[0x1E6967108];
        v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        MEMORY[0x1D3868CC0](v75);

        v76 = sub_1CF9E6888();

        [v68 setFilename_];
      }
    }

    else
    {
      sub_1CEFCCBDC(v62, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
      v79 = v172;
    }

    type metadata accessor for VFSStagedContext();
    v80 = swift_dynamicCastClass();
    if (v80)
    {
      v81 = v80;

      v83 = *(v178 + 136);
      MEMORY[0x1EEE9AC00](v82);
      v84 = v177;
      v153[-4] = v85;
      v153[-3] = v84;
      v151 = sub_1CF2F52A8;
      v152 = v57;
      sub_1CF2EF290(v81, 0x200000, sub_1CF2F6724, &v153[-6], v153);

      sub_1CEFCCC44(v169, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    }

    v177 = v68;
    v86 = v59;
    v87 = v57;
    v88 = v178;
    v89 = *(v178 + 160);
    v90 = v173;
    v91 = v174;
    *v173 = v89;
    v92 = v175;
    (v91[13])(v90, *MEMORY[0x1E69E8020], v175);
    v93 = v89;
    LOBYTE(v89) = sub_1CF9E64D8();
    result = (v91[1])(v90, v92);
    if ((v89 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v94 = v87;
    v95 = v86;
    if (*(v88 + 192) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      v96 = swift_allocError();
      *v97 = 0;
      *(v97 + 8) = v184;
      v98 = v185;
      v99 = v186;
      v100 = v187;
      *(v97 + 72) = v188;
      *(v97 + 56) = v100;
      *(v97 + 40) = v99;
      *(v97 + 24) = v98;
      *(v97 + 88) = 8;
      LOBYTE(v202[0]) = 1;
      *&v182[0] = v96;
      *(&v182[2] + 8) = v191;
      *(&v182[3] + 8) = v192;
      *(&v182[4] + 8) = v193;
      *(&v182[5] + 1) = v194;
      *(v182 + 8) = v189;
      *(&v182[1] + 8) = v190;
      v183 = 1;
      v167(v182);

      v199 = v182[4];
      v200 = v182[5];
      v201 = v183;
      aBlock = v182[0];
      v196 = v182[1];
      v197 = v182[2];
      v198 = v182[3];
      sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
      sub_1CEFCCC44(v169, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    }

    v101 = v168[10];
    v102 = sub_1CF9E5A58();
    v103 = v156;
    (*(*(v102 - 8) + 56))(v156, 1, 1, v102);
    v104 = sub_1CF2D07F4();
    v105 = sub_1CF2F2B2C(v169 + v101, v103, v104 & 1);
    v107 = v106;
    sub_1CEFCCC44(v103, &unk_1EC4BE310, qword_1CF9FCBE0);
    v108 = swift_unknownObjectWeakLoadStrong();
    v109 = v172;
    if (v108)
    {
      v110 = v108;
      if ([v108 userEnabled])
      {
        v174 = [objc_msgSend(v110 session)];

        swift_unknownObjectRelease();
LABEL_35:
        v173 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
        [v173 setDomainVersion_];
        v111 = v154;
        swift_beginAccess();
        v112 = *v111;
        v184 = *v164;
        v202[0] = *(v164 + 24);
        v113 = *(v164 + 6);
        v114 = *(v164 + 7);
        v175 = v112;
        sub_1CF2F47F0(&v184, &aBlock);
        sub_1CF2F47F0(v202, &aBlock);
        v115 = sub_1CF9E5B48();
        v116 = sub_1CF9E5B48();
        if (v114)
        {
          v114 = sub_1CF9E6888();
        }

        v117 = v167;
        v118 = v95;
        v168 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v115 metadataVersion:v116 lastEditorDeviceName:v114];

        sub_1CF2F484C(v202);
        sub_1CF2F484C(&v184);
        v119 = v155;
        swift_beginAccess();
        v167 = *v119;
        v120 = v178;
        v121 = swift_unknownObjectWeakLoadStrong();
        v153[1] = v94;
        if (v121 && (v122 = v121, v123 = [v121 session], v122, v123))
        {
          v124 = [objc_opt_self() requestForSelf];
          v125 = [v124 nsfpRequestForSession:v123 isSpeculative:0];

          v164 = v125;
          v126 = v172;
          [v125 setDomainVersion_];
          swift_unknownObjectRelease();
        }

        else
        {
          v164 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
          v126 = v172;
        }

        v127 = swift_allocObject();
        v128 = v166;
        v127[2] = v120;
        v127[3] = v128;
        v129 = v170;
        v130 = v171;
        v127[4] = v126;
        v127[5] = v130;
        v127[6] = nullsub_1;
        v127[7] = 0;
        v131 = v179;
        v127[8] = v180;
        v127[9] = v118;
        v127[10] = v117;
        v127[11] = v129;
        v132 = v174;
        v127[12] = v131;
        v127[13] = v132;
        *&v197 = sub_1CF2F53E4;
        *(&v197 + 1) = v127;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v196 = sub_1CF2E25F8;
        *(&v196 + 1) = &block_descriptor_443;
        v133 = _Block_copy(&aBlock);
        v180 = v128;

        v134 = v131;
        v135 = v130;

        v136 = v126;
        v137 = v132;
        v138 = v178;

        swift_unknownObjectRetain();

        v139 = v175;
        v140 = v168;
        v141 = v164;
        v142 = [v137 modifyItem:v175 baseVersion:v168 changedFields:v167 contents:0 options:v176 request:v164 completionHandler:v133];

        _Block_release(v133);
        if (v142)
        {
          v143 = *(v135 + 16);
          v144 = v142;
          v145 = [v143 documentSize];
          [v145 longLongValue];

          v146 = [*(v135 + 16) itemIdentifier];
          swift_beginAccess();
          v147 = v144;
          v148 = *(v138 + 184);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = *(v138 + 184);
          *(v138 + 184) = 0x8000000000000000;
          sub_1CF1D2120(v147, v146, isUniquelyReferenced_nonNull_native);

          *(v138 + 184) = v181;
          swift_endAccess();

          swift_unknownObjectRelease();

          v150 = v173;
        }

        else
        {

          swift_unknownObjectRelease();

          v150 = v180;
        }

        sub_1CEFCCC44(v169, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      }
    }

    v174 = sub_1CF2F1F6C();
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
  v29 = swift_allocError();
  *v30 = 0;
  *(v30 + 8) = v184;
  v31 = v185;
  v32 = v186;
  v33 = v187;
  *(v30 + 72) = v188;
  *(v30 + 56) = v33;
  *(v30 + 40) = v32;
  *(v30 + 24) = v31;
  *(v30 + 88) = 8;
  LOBYTE(v202[0]) = 1;
  *&v182[0] = v29;
  *(&v182[2] + 8) = v191;
  *(&v182[3] + 8) = v192;
  *(&v182[4] + 8) = v193;
  *(&v182[5] + 1) = v194;
  *(v182 + 8) = v189;
  *(&v182[1] + 8) = v190;
  v183 = 1;
  a2(v182);
  v199 = v182[4];
  v200 = v182[5];
  v201 = v183;
  aBlock = v182[0];
  v196 = v182[1];
  v197 = v182[2];
  v198 = v182[3];
  return sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
}

void sub_1CF2E151C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(_OWORD *), uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, __int128 *a12, uint64_t a13, void (*a14)(uint64_t), uint64_t a15, void *a16, uint64_t a17)
{
  v129 = a8;
  v130 = a6;
  v131 = a7;
  v132 = a3;
  v133 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v109 - v22;
  v24 = type metadata accessor for ItemMetadata();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v127 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CF9E64A8();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(a5 + 160);
  *v32 = v33;
  v34 = v28[13];
  v122 = *MEMORY[0x1E69E8020];
  v123 = v28 + 13;
  v121 = v34;
  v34(v32, v30);
  v120 = v33;
  v35 = sub_1CF9E64D8();
  v119 = v28[1];
  v124 = v32;
  v125 = v28 + 1;
  v126 = v27;
  v119(v32, v27);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (a2)
  {
    LOBYTE(v139) = 1;
    *&v136[0] = a1;
    v137 = 1;
    v36 = a1;
LABEL_6:
    v130(v136);
    v149 = v136[4];
    v150 = v136[5];
    v151 = v137;
    aBlock = v136[0];
    v146 = v136[1];
    v147 = v136[2];
    v148 = v136[3];
    v42 = sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
    v132(v42);
    return;
  }

  if (*(a5 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v37 = swift_allocError();
    *v38 = 0;
    *(v38 + 8) = v138[0];
    v39 = v138[1];
    v40 = v138[2];
    v41 = v138[3];
    *(v38 + 72) = v138[4];
    *(v38 + 56) = v41;
    *(v38 + 40) = v40;
    *(v38 + 24) = v39;
    *(v38 + 88) = 8;
    v135 = 1;
    *&v136[0] = v37;
    *(&v136[2] + 8) = v141;
    *(&v136[3] + 8) = v142;
    *(&v136[4] + 8) = v143;
    *(&v136[5] + 1) = v144;
    *(v136 + 8) = v139;
    *(&v136[1] + 8) = v140;
    v137 = 1;
    goto LABEL_6;
  }

  v43 = a1;
  v128 = a5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v45 = v127;
  sub_1CEFF4408(a9 + *(v44 + 40), v127);
  if (v43)
  {
    v46 = [v43 url];
    sub_1CF9E59D8();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = a10;
  v49 = sub_1CF9E5A58();
  (*(*(v49 - 8) + 56))(v23, v47, 1, v49);
  v50 = sub_1CF2D07F4();
  v116 = sub_1CF2F2B2C(v45, v23, v50 & 1);
  v52 = v51;
  sub_1CEFCCC44(v23, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF007B98(v45, type metadata accessor for ItemMetadata);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v54 = Strong;
  if (![Strong userEnabled])
  {

LABEL_14:
    v56 = sub_1CF2F1F6C();
    goto LABEL_15;
  }

  v55 = [v54 session];
  v56 = [v55 newFileProviderProxyWithTimeout:0 pid:{sub_1CF089D74(v116, v52 & 1)}];

  v48 = a10;
  swift_unknownObjectRelease();
LABEL_15:
  v116 = a13;
  v110 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  v118 = v48;
  [v110 setDomainVersion_];
  swift_beginAccess();
  v57 = *(a11 + 16);
  v58 = *a12;
  v152 = *(a12 + 24);
  v153[0] = v58;
  v59 = *(a12 + 6);
  v60 = *(a12 + 7);
  v115 = v57;
  sub_1CF2F47F0(v153, &aBlock);
  sub_1CF2F47F0(&v152, &aBlock);
  v61 = sub_1CF9E5B48();
  v62 = sub_1CF9E5B48();
  if (v60)
  {
    v63 = sub_1CF9E6888();
  }

  else
  {
    v63 = 0;
  }

  v113 = a16;
  v114 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v61 metadataVersion:v62 lastEditorDeviceName:v63];

  sub_1CF2F484C(&v152);
  sub_1CF2F484C(v153);
  v64 = v129;
  swift_beginAccess();
  v112 = *(v64 + 16);
  v65 = swift_unknownObjectWeakLoadStrong();
  v127 = v56;
  v117 = v43;
  if (v65 && (v66 = v65, v67 = [v65 session], v66, v67))
  {
    v68 = [objc_opt_self() requestForSelf];
    v69 = [v68 nsfpRequestForSession:v67 isSpeculative:0];

    v111 = v69;
    v70 = v69;
    v71 = v118;
    [v70 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
    v71 = v118;
  }

  v72 = swift_allocObject();
  v72[2] = v128;
  v72[3] = a14;
  v72[4] = v71;
  v72[5] = a11;
  v74 = v131;
  v73 = v132;
  v132 = a14;
  v75 = v133;
  v72[6] = v73;
  v72[7] = v75;
  v72[8] = a15;
  v76 = v130;
  v72[9] = v129;
  v72[10] = v76;
  v77 = v113;
  v72[11] = v74;
  v72[12] = v77;
  v78 = v127;
  v72[13] = v127;
  *&v147 = sub_1CF2F65B0;
  *(&v147 + 1) = v72;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v146 = sub_1CF2E25F8;
  *(&v146 + 1) = &block_descriptor_454;
  v79 = _Block_copy(&aBlock);

  v80 = v132;

  v81 = v77;
  swift_unknownObjectRetain();
  v82 = v118;

  v84 = v114;
  v83 = v115;
  v85 = v111;
  v86 = v117;
  v87 = [v78 modifyItem:v115 baseVersion:v114 changedFields:v112 contents:v117 options:v116 request:v111 completionHandler:v79];

  _Block_release(v79);
  if (!v87)
  {
    swift_unknownObjectRelease();

    return;
  }

  swift_beginAccess();
  v88 = [*(a11 + 16) documentSize];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 longLongValue];

    v91 = v128;
    if (!v86)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v90 = 0;
    v91 = v128;
    if (!v86)
    {
LABEL_32:
      swift_beginAccess();
      v105 = [*(a11 + 16) itemIdentifier];
      swift_beginAccess();
      v106 = v87;
      v107 = *(v91 + 184);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = *(v91 + 184);
      *(v91 + 184) = 0x8000000000000000;
      sub_1CF1D2120(v106, v105, isUniquelyReferenced_nonNull_native);

      *(v91 + 184) = v134;
      swift_endAccess();
      swift_unknownObjectRelease();

      return;
    }
  }

  v92 = *(v91 + 120);
  if (!v92)
  {
    goto LABEL_32;
  }

  v93 = *(v128 + 128);
  v94 = *MEMORY[0x1E696A870];
  *&v138[0] = v81;

  v95 = v92(v138, v87, v94, v90);
  v97 = v96;
  v91 = v128;
  sub_1CEFF7124(v92);
  if (!v95)
  {
    goto LABEL_32;
  }

  v98 = v124;
  v100 = v120;
  v99 = v121;
  *v124 = v120;
  v101 = v126;
  v99(v98, v122, v126);
  v102 = v100;
  LOBYTE(v100) = sub_1CF9E64D8();
  v119(v98, v101);
  if (v100)
  {
    v103 = swift_allocObject();
    v103[2] = v91;
    v103[3] = v95;
    v103[4] = v97;
    swift_beginAccess();
    v104 = *(a17 + 24);
    *(a17 + 16) = sub_1CF2F5538;
    *(a17 + 24) = v103;

    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1CF2E1FB8(void *a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, id a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v32 = *(a6 + 160);
  v31 = [a7 log];
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a4;
  *(v20 + 32) = a8;
  *(v20 + 40) = a9;
  *(v20 + 48) = a10;
  *(v20 + 56) = a11;
  *(v20 + 64) = a2;
  *(v20 + 72) = a1;
  *(v20 + 80) = a12;
  *(v20 + 88) = a13;
  *(v20 + 96) = a5;
  *(v20 + 104) = a14;
  *(v20 + 112) = a15;
  *(v20 + 120) = a16;
  *(v20 + 128) = a17;
  *(v20 + 136) = a3;

  v21 = a4;
  v22 = a8;

  v23 = a1;

  v24 = a5;

  v25 = a16;
  swift_unknownObjectRetain();
  sub_1CF01001C(v31, "update(_:to:given:with:capturedContent:baseVersion:domainVersion:options:nonSyncableAttributes:updatedConflictsList:completion:)", 128, 2, sub_1CF2F53E8, v20);
}

id sub_1CF2E2150(int a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t), int a6, __C::NSFileProviderItemFields a7, void *a8, uint64_t a9, uint64_t a10, id a11, void (*a12)(__int128 *), uint64_t a13, void *a14, void *a15, unsigned __int8 a16)
{
  sub_1CF041B2C(a2, a3);
  swift_beginAccess();
  v21 = [*(a4 + 16) itemIdentifier];
  swift_beginAccess();
  sub_1CF1C8F90(0, v21);
  v22 = swift_endAccess();
  a5(v22);
  Fields.init(_:)(a7);
  if (sub_1CF2D07F4())
  {
    v23 = v54;
    if ((v54 & 8) == 0)
    {
      swift_beginAccess();
      if ([*(a4 + 16) isPackage])
      {
        swift_beginAccess();
        v24 = *(a4 + 16);
        result = [v24 filename];
        if (!result)
        {
          __break(1u);
          goto LABEL_36;
        }

        v26 = result;

        v27 = [v26 pathExtension];
        v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = v29;

        v31 = *MEMORY[0x1E6967108];
        if (v28 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v30 == v32)
        {

          if (!a8)
          {
            goto LABEL_18;
          }

          goto LABEL_11;
        }

        v33 = sub_1CF9E8048();

        if ((v33 & 1) != 0 && a8)
        {
LABEL_11:
          v34 = a8;
          result = [v34 filename];
          if (result)
          {
            v35 = result;
            v36 = [result pathExtension];

            v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v39 = v38;

            if (v37 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v39 == v40)
            {
            }

            else
            {
              v41 = sub_1CF9E8048();

              if ((v54 & 1) == 0 && (v41 & 1) == 0)
              {
                v23 = v54 | 1;
                v54 |= 1uLL;
              }
            }

            goto LABEL_18;
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }
    }

LABEL_18:
    if ((v23 & 0x200000000001) == 1 && (a9 & 0x200000000000) != 0)
    {
      v54 = v23 | 0x200000000000;
    }
  }

  if ((a9 & 0x4000000000000) != 0)
  {
    swift_beginAccess();
    *&v52[0] = *(a10 + 16) & 0x80000000;
    type metadata accessor for NSFileProviderItemFields(0);
    sub_1CF2F1F24(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields);
    if ((sub_1CF9E7798() & 1) != 0 && (v54 & 0x4000000000000) == 0)
    {
      v54 |= 0x4000000000000uLL;
    }
  }

  if (a11)
  {
    v42 = a11;
    v51 = 1;
    *&v46 = sub_1CF2E3014(a11, a14, 1, [a15 timeoutState]);
    v50 = 1;
    a12(&v46);
  }

  else
  {
    sub_1CF2D1564(a8);
    if (a8)
    {
      v43 = v54;
    }

    else
    {
      v43 = 0;
    }

    if (a8)
    {
      v44 = 0xB000000000000000;
    }

    else
    {
      v44 = 0;
    }

    v45 = a8;
    v51 = 0;
    *&v46 = a8;
    *(&v46 + 1) = v43;
    v47 = (a8 != 0) & a16;
    v48 = 0uLL;
    memset(&v49[8], 0, 32);
    *v49 = v44;
    *&v49[40] = [a2 domainVersion];
    v50 = 0;
    a12(&v46);
  }

  v52[4] = *&v49[16];
  v52[5] = *&v49[32];
  v53 = v50;
  v52[0] = v46;
  v52[1] = v47;
  v52[2] = v48;
  v52[3] = *v49;
  return sub_1CEFCCC44(v52, &unk_1EC4BF2A0, &unk_1CFA01B90);
}

void sub_1CF2E25F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v15 = a2;
  v13 = a5;
  v14 = a6;
  v12(a2, a3, a4, a5, a6);
}

uint64_t sub_1CF2E26B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E63A8();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6448();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 160);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1CEFFD05C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_463;
  v16 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_1CF2E2990(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  if (*(a1 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v7 = swift_allocError();
    *v8 = 0;
    *(v8 + 8) = v35;
    v9 = v38;
    v10 = v39;
    v11 = v37;
    *(v8 + 24) = v36;
    *(v8 + 72) = v10;
    *(v8 + 56) = v9;
    *(v8 + 40) = v11;
    *(v8 + 88) = 8;
    a2(v7, 1);
  }

  else
  {
    v14 = *(a1 + 136);
    v15 = a4[1];
    v51 = *a4;
    v52 = v15;
    v16 = a4[3];
    v53 = a4[2];
    v54 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v19 = a6[12];
    v20 = a6[14];
    v48 = a6[13];
    v49 = v20;
    v21 = a6[8];
    v22 = a6[10];
    v23 = a6[11];
    v44 = a6[9];
    v45 = v22;
    v46 = v23;
    v47 = v19;
    v24 = a6[4];
    v25 = a6[6];
    v26 = a6[7];
    v40 = a6[5];
    v41 = v25;
    v42 = v26;
    v43 = v21;
    v27 = a6[1];
    v35 = *a6;
    v36 = v27;
    v28 = a6[3];
    v37 = a6[2];
    v29 = *(v18 + 40);
    v50 = *(a6 + 30);
    v38 = v28;
    v39 = v24;
    v30 = *(a5 + 16);
    v34[0] = *(a5 + 8);
    v34[1] = v30;
    v31 = *(*v14 + 448);
    sub_1CF1AE1DC(a4, v33);

    v31(&v51, a5 + v29, &v35, v34, 0, 0);

    v33[0] = v51;
    v33[1] = v52;
    v33[2] = v53;
    v33[3] = v54;
    sub_1CEFCCC44(v33, &unk_1EC4BF260, &unk_1CFA01B60);

    a2(v32, 0);
  }
}

uint64_t sub_1CF2E2D0C(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E5248();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1CF9E50E8();
    sub_1CF2F1F24(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    v13 = sub_1CF9E5658();
    (*(v9 + 8))(v12, v8);
    if ((v13 & 1) != 0 && *(v4 + 192) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      a3 = swift_allocError();
      *v14 = a1;
      *(v14 + 8) = v23[0];
      v15 = v23[3];
      v16 = v23[4];
      v17 = v23[2];
      *(v14 + 24) = v23[1];
      *(v14 + 72) = v16;
      *(v14 + 56) = v15;
      *(v14 + 40) = v17;
      *(v14 + 88) = 8;
      v18 = a1;
      return a3;
    }

    if (*(v4 + 208) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      a3 = swift_allocError();
      *v19 = 7;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 88) = 11;
      return a3;
    }
  }

  switch(a3)
  {
    case 0:
      return a3;
    case 1:
      sub_1CF2F462C();
      a3 = swift_allocError();
      *v20 = 0;
      *(v20 + 8) = 0;
      v21 = -2;
LABEL_12:
      *(v20 + 16) = v21;
      return a3;
    case 2:
      sub_1CF2F462C();
      a3 = swift_allocError();
      *v20 = 0;
      *(v20 + 8) = 0;
      v21 = -3;
      goto LABEL_12;
  }

  type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
  *&v23[0] = a3;
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

void *sub_1CF2E3014(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1;
  v8 = sub_1CF2E2D0C(a1, a3, a4);
  if (!v8)
  {
    _s3__C4CodeOMa_1(0);
    *&v50 = -1001;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    if (sub_1CF9E5658())
    {
      v10 = sub_1CF9E57E8();
      v11 = [v10 fp_userInfoFPItem];

      if (v11)
      {
        v12 = [v11 itemID];
        v13 = [v12 identifier];

        v14 = [v11 filename];
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;

        *&v50 = v15;
        *(&v50 + 1) = v17;
        sub_1CEFE4E68();
        v18 = sub_1CF9E7668();
        v20 = v19;

        v21 = sub_1CF0689E4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
        sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
        v22 = swift_allocError();
        *v23 = v13;
        *(v23 + 8) = v18;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = xmmword_1CF9FEC20;
        v24 = v51;
        *(v23 + 56) = v50;
        *(v23 + 48) = v7;
        *(v23 + 72) = v24;
        *(v23 + 88) = 1;
        v25 = v7;

        return v22;
      }

LABEL_20:
      v48 = v7;
      return v7;
    }

    *&v50 = -1005;
    if ((sub_1CF9E5658() & 1) == 0)
    {
      *&v50 = -1007;
      if ((sub_1CF9E5658() & 1) == 0 || !a2)
      {
        goto LABEL_20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      v40 = swift_allocError();
      *v41 = a2;
      *(v41 + 8) = 0;
      *(v41 + 16) = v7;
      v43 = v52;
      v42 = v53;
      v44 = v50;
      *(v41 + 40) = v51;
      *(v41 + 24) = v44;
      *(v41 + 56) = v43;
      *(v41 + 72) = v42;
      *(v41 + 88) = 3;
      goto LABEL_19;
    }

    v26 = sub_1CF9E57E8();
    v27 = [v26 userInfo];

    v28 = sub_1CF9E6638();
    v29 = *MEMORY[0x1E69671B8];
    v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (*(v28 + 16))
    {
      v32 = sub_1CEFE4328(v30, v31);
      v34 = v33;

      if (v34)
      {
        sub_1CEFD1104(*(v28 + 56) + 32 * v32, &v50);

        type metadata accessor for NSFileProviderItemIdentifier(0);
        if (swift_dynamicCast())
        {
          v35 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v5 + 280) itemIdentifier:v49];
          v36 = [v35 identifier];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
          sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
          v37 = swift_allocError();
          *v38 = v36;
          *(v38 + 8) = 0;
          *(v38 + 16) = 0;
          *(v38 + 24) = 1;
          *(v38 + 32) = 0u;
          *(v38 + 48) = 0u;
          *(v38 + 64) = 0;
          *(v38 + 72) = v7;
          *(v38 + 80) = 0;
          *(v38 + 88) = 0;
          v39 = v7;
          return v37;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_17:
    if (!a2)
    {
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v40 = swift_allocError();
    *v45 = a2;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *(v45 + 24) = 1;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0u;
    *(v45 + 64) = 0;
    *(v45 + 72) = v7;
    *(v45 + 80) = 0;
    *(v45 + 88) = 0;
LABEL_19:
    v46 = v7;
    v47 = a2;
    return v40;
  }

  return v8;
}

uint64_t sub_1CF2E35A8(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v7 = sub_1CF9E63D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  type metadata accessor for VFSStagedContext();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    return a2();
  }

  v20 = v19;
  v34 = v8;
  v35 = v7;
  v21 = *(v3 + 160);
  v39 = *(v3 + 168);
  v37 = v21;
  v22 = sub_1CF9E6448();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v18, 1, 1, v22);
  v24 = swift_allocObject();
  v25 = a2;
  v26 = v24;
  v24[2] = v3;
  v24[3] = v20;
  v38 = v25;
  v24[4] = v25;
  v24[5] = a3;
  v41 = a1;
  swift_retain_n();

  v40 = a3;

  v27 = fpfs_current_log();
  v36 = *(v39 + 2);
  v39 = v18;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    sub_1CEFCCC44(v15, &unk_1EC4BE370, qword_1CFA01B30);
    v28 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v23 + 8))(v15, v22);
    v28 = sub_1CF9E63C8();
    (*(v34 + 8))(v11, v35);
  }

  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = sub_1CF2B068C;
  v30[4] = v26;
  v46 = sub_1CF2BA17C;
  v47 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_385;
  v31 = _Block_copy(&aBlock);
  v32 = v27;

  v46 = v38;
  v47 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_388;
  v33 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v36, v37, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v28, v31, v33);
  _Block_release(v33);
  _Block_release(v31);

  return sub_1CEFCCC44(v39, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E3A0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t (*)(void), void), uint64_t a8)
{
  v53 = a8;
  v51 = a7;
  v48[1] = a3;
  v60 = a2;
  v54 = a1;
  v11 = sub_1CF9E53C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E5A58();
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48[0] = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48[2] = a4;
  v49 = v48 - v19;
  if (a4 && (v20 = *(a5 + 136), v21 = *(v60 + 8), v22 = v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v21 == *(v22 + 32)))
  {
    v23 = a5;
    v24 = a6;
    v25 = v60;
    sub_1CEFE528C(v56);
    v58[12] = v56[12];
    v58[13] = v56[13];
    v58[14] = v56[14];
    v59 = v57;
    v58[8] = v56[8];
    v58[9] = v56[9];
    v58[10] = v56[10];
    v58[11] = v56[11];
    v58[4] = v56[4];
    v58[5] = v56[5];
    v58[6] = v56[6];
    v58[7] = v56[7];
    v58[0] = v56[0];
    v58[1] = v56[1];
    v58[2] = v56[2];
    v58[3] = v56[3];
    v26 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
    v27 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 8);
    v28 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 24);
    v29 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 25);
    v30 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 16);
    v31 = *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 26);
    v33 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
    LODWORD(v48[-6]) = v54;
    HIDWORD(v48[-6]) = 0;
    v48[-5] = 1085184;
    v48[-4] = v34;
    v48[-3] = v27;
    v48[-2] = v33;
    LOBYTE(v48[-1]) = v35;
    BYTE1(v48[-1]) = v36;
    BYTE2(v48[-1]) = v37;
    BYTE3(v48[-1]) = 0;

    v38 = v55;
    sub_1CF9B8B08(v58, sub_1CF2B0C98, &v48[-8]);

    if (!v38)
    {
      v40 = *(v25 + 40) & 0xFFFFFFFE;
      v41 = v49;
      sub_1CF9E58B8();
      if (*(v24 + *(type metadata accessor for ItemMetadata() + 112)) & 1) != 0 && (sub_1CF2D07F4())
      {
        v42 = v53;

        sub_1CF2F36A0(v41, v24, v23, v51, v42);

        v43 = v52;
        v44 = v50;
      }

      else
      {
        sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
        v44 = v50;
        v45 = v48[0];
        v43 = v52;
        (*(v50 + 16))(v48[0], v41, v52);
        v46 = sub_1CF02BFF8(v45, 0);
        v47 = v46;
        v51(v46, 0, nullsub_1, 0);
      }

      return (*(v44 + 8))(v41, v43);
    }
  }

  else
  {
    LODWORD(v56[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v12 + 8))(v15, v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF2E3F04(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v89 = a7;
  v90 = a6;
  v87 = a4;
  v78 = a2;
  v86 = a1;
  v85 = a10;
  v93 = a9;
  v88 = a12;
  v84 = a11;
  v73 = sub_1CF9E63D8();
  v72 = *(v73 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a11 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v80 = *(v19 - 8);
  v20 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v70 - v21;
  v74 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v81 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  v94 = &v70 - v27;
  v29 = a5[3];
  v103 = a5[2];
  v104 = v29;
  v105 = *(a5 + 8);
  v30 = a5[1];
  v101 = *a5;
  v102 = v30;
  v31 = fpfs_current_log();
  v79 = v31;
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a2;
  v92 = v12;
  v33 = v93;
  v32[4] = v12;
  v32[5] = v33;
  v32[6] = a10;
  v34 = v12[20];
  v82 = v12[21];
  v91 = v34;
  v76 = sub_1CF9E6448();
  v77 = *(v76 - 8);
  (*(v77 + 56))(v28, 1, 1, v76);
  v35 = swift_allocObject();
  v93 = v35;
  *(v35 + 16) = sub_1CF2F48E8;
  *(v35 + 24) = v32;
  sub_1CEFCCBDC(v86, v22, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v36 = v83;
  v37 = v84;
  (*(v83 + 16))(&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v87, v84);
  v38 = (*(v80 + 80) + 56) & ~*(v80 + 80);
  v39 = (v20 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v36 + 80) + v39 + 72) & ~*(v36 + 80);
  v80 = v40 + v17;
  v41 = (v40 + v17) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v41 + 39) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v88;
  *(v43 + 2) = v37;
  *(v43 + 3) = v44;
  *(v43 + 4) = v92;
  *(v43 + 5) = sub_1CF2F48E8;
  *(v43 + 6) = v32;
  v45 = &v43[v38];
  v46 = v81;
  sub_1CEFE55D0(v74, v45, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v47 = &v43[v39];
  v48 = v104;
  *(v47 + 2) = v103;
  *(v47 + 3) = v48;
  *(v47 + 8) = v105;
  v49 = v102;
  *v47 = v101;
  *(v47 + 1) = v49;
  (*(v36 + 32))(&v43[v40], v75, v37);
  v50 = v89;
  v43[v80] = (v89 & 2) != 0;
  *&v43[v41 + 8] = v78;
  v51 = &v43[v86];
  *v51 = v50;
  v51[8] = (v50 & 0x20) != 0;
  v52 = v90;
  *&v43[v87] = v90;
  v53 = v79;
  *&v43[v42] = v79;
  v54 = v77;
  v55 = swift_allocObject();
  v56 = v93;
  v55[2] = sub_1CF2F4918;
  v55[3] = v56;
  v57 = v82;
  v55[4] = v82;
  swift_retain_n();
  swift_retain_n();
  v92 = v32;
  swift_retain_n();
  v58 = v53;

  v89 = v58;
  sub_1CEFCCBDC(&v101, &aBlock, &qword_1EC4BF278, &unk_1CFA01B78);
  v59 = v52;

  v60 = fpfs_current_log();
  v61 = *(v57 + 16);
  sub_1CEFCCBDC(v94, v46, &unk_1EC4BE370, qword_1CFA01B30);
  v62 = v76;
  if ((*(v54 + 48))(v46, 1) == 1)
  {
    sub_1CEFCCC44(v46, &unk_1EC4BE370, qword_1CFA01B30);
    v63 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v64 = v71;
    sub_1CF9E6438();
    (*(v54 + 8))(v46, v62);
    v63 = sub_1CF9E63C8();
    (*(v72 + 8))(v64, v73);
  }

  v65 = swift_allocObject();
  v65[2] = v60;
  v65[3] = sub_1CF2F4954;
  v65[4] = v43;
  v99 = sub_1CF2BA17C;
  v100 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1CEFCA444;
  v98 = &block_descriptor_300;
  v66 = _Block_copy(&aBlock);
  v67 = v60;

  v99 = sub_1CF2BA180;
  v100 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1CEFCA444;
  v98 = &block_descriptor_303;
  v68 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v61, v91, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v63, v66, v68);
  _Block_release(v68);
  _Block_release(v66);

  return sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2E47B0(void *a1, __C::NSFileProviderItemFields a2, unsigned __int8 a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *))
{
  v16 = fpfs_adopt_log();
  if (a7)
  {
    type metadata accessor for VFSStagedContext();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v29 = a4;
      v18 = *(a8 + 136);
      v19 = *(v17 + 16);
      MEMORY[0x1EEE9AC00](v17);
      swift_retain_n();
      sub_1CEFE1894(sub_1CF2B9F78);
      *(v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        v20 = *(v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);
        swift_unknownObjectRelease();
      }

      a4 = v29;
    }
  }

  Fields.init(_:)(a2);
  if (a5)
  {
    v35 = 1;
    *&v30 = a5;
    v34 = 1;
    v22 = a5;
    a9(&v30);
    v39 = *v33;
    v40 = *&v33[16];
    v41 = *&v33[32];
    v42 = v34;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    sub_1CEFCCC44(&v36, &unk_1EC4BF2A0, &unk_1CFA01B90);
    v23 = fpfs_adopt_log();
  }

  else
  {
    v24 = v36;
    if (!a1)
    {
      v24 = 0;
    }

    v35 = 0;
    v25 = 0xB000000000000000;
    if (!a1)
    {
      v25 = 0;
    }

    *&v30 = a1;
    *(&v30 + 1) = v24;
    v31 = (a1 != 0) & a3;
    v32 = 0uLL;
    *v33 = v25;
    memset(&v33[8], 0, 32);
    *&v33[40] = a4;
    v34 = 0;
    v26 = a4;
    v27 = a1;
    a9(&v30);
    v39 = *v33;
    v40 = *&v33[16];
    v41 = *&v33[32];
    v42 = v34;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    sub_1CEFCCC44(&v36, &unk_1EC4BF2A0, &unk_1CFA01B90);
    v23 = fpfs_adopt_log();
  }

  v28 = v23;
}

void sub_1CF2E4AE8(uint64_t a1, uint64_t (*a2)(void, void, void, void, void *), uint64_t a3, void **a4, __int128 *a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v139 = a8;
  v130 = a7;
  v136 = a6;
  v144 = a4;
  v140 = a14;
  v135 = a12;
  v138 = a11;
  LODWORD(v133) = a10;
  v131 = a9;
  v18 = *(a13 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v117 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v132 = *(v24 - 8);
  v25 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v141 = &v117 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v117 - v30;
  if (*(a1 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v32 = swift_allocError();
    *v33 = 0;
    *(v33 + 8) = v146;
    v34 = v149;
    v35 = v150;
    v36 = v148;
    *(v33 + 24) = v147;
    *(v33 + 72) = v35;
    *(v33 + 56) = v34;
    *(v33 + 40) = v36;
    *(v33 + 88) = 8;
    a2(0, 0, 0, 0, v32);
  }

  else
  {
    v137 = v18;
    v126 = a1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v128 = Strong;
      v125 = v21;
      v123 = a3;
      v124 = a2;
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v38 = v144 + *(v24 + 40);
      if (*v38 == 1)
      {
        v39 = qword_1EDEABDE8 & 0xFFFFFFFFFFFFFFF7;
      }

      else
      {
        v39 = qword_1EDEABDE8;
      }

      v40 = type metadata accessor for ItemMetadata();
      v41 = v40;
      if (*&v38[*(v40 + 132)])
      {
        v42 = v39;
      }

      else
      {
        v42 = v39 & 0xFFFFFFFFFFFFFEFFLL;
      }

      sub_1CEFCCBDC(&v38[*(v40 + 120)], v31, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v43 = sub_1CF9E5CF8();
      v44 = (*(*(v43 - 8) + 48))(v31, 1, v43);
      sub_1CEFCCC44(v31, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v45 = v42 & 0xFFFFFFFFFFFFFFDFLL;
      if (v44 != 1)
      {
        v45 = v42;
      }

      v120 = v41;
      v46 = *(v41 + 128);
      if (!*&v38[*(v41 + 124)])
      {
        v45 &= ~0x40uLL;
      }

      v122 = v38;
      if (v38[v46 + 8])
      {
        v47 = v45 & 0xFFFFFFFFFFFFFF7FLL;
      }

      else
      {
        v47 = v45;
      }

      v48 = *a5;
      v129 = a13;
      v119 = v48;
      if (v48)
      {
        v127 = *(a5 + 8);
        v50 = *(a5 + 5);
        v49 = *(a5 + 6);
        v52 = *(a5 + 3);
        v53 = *(a5 + 1);
        v54 = *(a5 + 2);
        v55 = a5[1];
        v56 = a5[3];
        v148 = a5[2];
        v51 = v148;
        v149 = v56;
        *&v150 = *(a5 + 8);
        v146 = *a5;
        v147 = v55;
        sub_1CEFCCBDC(&v146, v145, &unk_1EC4BF280, &qword_1CFA01B88);
        sub_1CEFE4714(v53, v54);

        sub_1CEFE4714(v51, v50);

        v57 = v48;
      }

      else
      {
        v57 = sub_1CF2CB460(v136, 1, a13, v140);
      }

      v59 = swift_allocObject();
      v60 = v126[35];
      *&v146 = v47;
      v61 = v128;
      v62 = v128;
      v63 = sub_1CEFE5A60(v57, v60, v61, v144, &v146, 1);
      v127 = v64;

      v121 = v62;
      v128 = v59;
      v59[2] = v63;
      v66 = *(a5 + 1);
      v65 = *(a5 + 2);
      v67 = *(a5 + 4);
      v68 = *(a5 + 5);
      v69 = *(a5 + 7);
      v70 = *(a5 + 8);
      v71 = v63;
      if (v119)
      {
        sub_1CEFE42D4(v66, v65);
        sub_1CEFE42D4(v67, v68);
        v119 = sub_1CF9E5B48();
        v72 = sub_1CF9E5B48();
        v118 = v71;
        if (v70)
        {
          v73 = sub_1CF9E6888();
        }

        else
        {
          v73 = 0;
        }

        v76 = objc_allocWithZone(MEMORY[0x1E69674E8]);
        v77 = v119;
        v74 = [v76 initWithContentVersion:v119 metadataVersion:v72 lastEditorDeviceName:v73];

        sub_1CEFE4714(v67, v68);
        sub_1CEFE4714(v66, v65);
        v75 = v125;
        v71 = v118;
      }

      else
      {
        v74 = 0;
        v75 = v125;
      }

      [v71 setItemVersion_];

      v78 = v129;
      if ((v130 & 1) != 0 && !v139)
      {
        v79 = v127;
        *&v146 = v127 & 1;
        type metadata accessor for NSFileProviderItemFields(0);
        sub_1CF2F1F24(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields);
        v75 = v125;
        if ((sub_1CF9E7798() & 1) == 0)
        {
          v79 &= ~1uLL;
        }

        v127 = v79;
      }

      v80 = sub_1CF2F1C10(v131 | 1);
      if (*a5)
      {
        v81 = v80 | 2;
      }

      else
      {
        v81 = v80;
      }

      if (v133)
      {
        v81 = v80 | 2;
      }

      v133 = v81;
      v131 = v128[2];
      v82 = v141;
      sub_1CEFCCBDC(v144, v141, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v83 = v137;
      v84 = *(v137 + 16);
      v85 = v142;
      v84(v142, v136, v78);
      sub_1CEFCCBDC(v82, v143, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v84(v75, v85, v78);
      v86 = (*(v132 + 80) + 64) & ~*(v132 + 80);
      v87 = (v25 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
      v91 = (*(v83 + 80) + v90 + 8) & ~*(v83 + 80);
      v92 = swift_allocObject();
      v93 = v140;
      *(v92 + 2) = v129;
      *(v92 + 3) = v93;
      v94 = v126;
      v95 = v124;
      *(v92 + 4) = v126;
      *(v92 + 5) = v95;
      v96 = v138;
      *(v92 + 6) = v123;
      *(v92 + 7) = v96;
      sub_1CEFE55D0(v141, &v92[v86], &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      *&v92[v87] = v128;
      *&v92[v88] = v127;
      *&v92[v89] = v133;
      v97 = v129;
      v98 = v135;
      *&v92[v90] = v135;
      (*(v137 + 32))(&v92[v91], v142, v97);
      LODWORD(v88) = v122[*(v120 + 112)];
      v99 = v96;

      v100 = v131;
      v101 = v98;

      if (v88 == 1 && (sub_1CF2D07F4() & 1) != 0)
      {
        v102 = [v100 filename];
        v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v105 = v104;

        *&v146 = v103;
        *(&v146 + 1) = v105;
        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        v106 = *MEMORY[0x1E6967108];
        v107 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        MEMORY[0x1D3868CC0](v107);

        v108 = sub_1CF9E6888();

        [v100 setFilename_];
      }

      if (v139 && (type metadata accessor for VFSStagedContext(), (v109 = swift_dynamicCastClass()) != 0))
      {
        v110 = v109;
        v111 = v94[17];
        MEMORY[0x1EEE9AC00](v109);
        v116[2] = v94;
        v116[3] = v122;
        v116[4] = sub_1CF2F4AA8;
        v116[5] = v92;

        sub_1CF2EF290(v110, 0x200000, sub_1CF2F4BF4, v116, v112);

        v113 = v137;
        v114 = v125;
        v115 = v143;
      }

      else
      {
        v114 = v125;
        v115 = v143;
        sub_1CF2E583C(0, 0, nullsub_1, 0, v94, v124, v123, v138, v143, v128, v127, v133, v98, v125, v97, v140);

        v113 = v137;
      }

      sub_1CEFCCC44(v115, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      (*(v113 + 8))(v114, v97);
    }

    else
    {
      sub_1CF2CA194();
      v58 = swift_allocError();
      a2(0, 0, 0, 0, v58);
    }
  }
}

void sub_1CF2E583C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t (*a6)(void, void, void, void, void *), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v107 = a8;
  v109 = a7;
  v106 = a6;
  v108 = a4;
  v105 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v91 - v21;
  v23 = type metadata accessor for ItemMetadata();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CF9E64A8();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = a5[20];
  *v32 = v33;
  v35 = v28 + 13;
  v34 = v28[13];
  v102 = *MEMORY[0x1E69E8020];
  v101 = v34;
  v34(v32, v30);
  v99 = v33;
  LOBYTE(v33) = sub_1CF9E64D8();
  v37 = v28[1];
  v36 = v28 + 1;
  v100 = v37;
  v37(v32, v27);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a2)
  {
    v38 = v106(0, 0, 0, 0, a1);
    v105(v38);
    return;
  }

  v39 = swift_allocObject();
  v103 = v39;
  *(v39 + 16) = nullsub_1;
  v91[1] = v39 + 16;
  *(v39 + 24) = 0;
  v94 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  [v94 setDomainVersion_];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  sub_1CEFF4408(a9 + *(v40 + 40), v26);
  v92 = v27;
  v98 = a1;
  if (a1)
  {
    v41 = [a1 url];
    sub_1CF9E59D8();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v97 = a12;
  v96 = a11;
  v43 = sub_1CF9E5A58();
  (*(*(v43 - 8) + 56))(v22, v42, 1, v43);
  v44 = sub_1CF2D07F4();
  v45 = sub_1CF2F2B2C(v26, v22, v44 & 1);
  v47 = v46;
  sub_1CEFCCC44(v22, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF007B98(v26, type metadata accessor for ItemMetadata);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v49 = Strong;
  if (![Strong userEnabled])
  {

LABEL_11:
    v50 = sub_1CF2F1F6C();
    goto LABEL_12;
  }

  v50 = [objc_msgSend(v49 session)];

  swift_unknownObjectRelease();
LABEL_12:
  swift_beginAccess();
  v51 = *(a10 + 16);
  v52 = swift_unknownObjectWeakLoadStrong();
  v95 = v51;
  v91[3] = v35;
  v91[2] = v36;
  v93 = v32;
  if (v52 && (v53 = [v52 session], v52, v53))
  {
    v54 = a5;
    v55 = v50;
    v56 = [objc_opt_self() requestForSelf];
    v57 = [v56 nsfpRequestForSession:v53 isSpeculative:0];

    v50 = v55;
    a5 = v54;
    v58 = v107;
    [v57 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
    v58 = v107;
  }

  v104 = v50;
  v59 = swift_allocObject();
  v59[2] = a5;
  v59[3] = a13;
  v59[4] = v58;
  v59[5] = a10;
  v61 = v108;
  v60 = v109;
  v59[6] = v105;
  v59[7] = v61;
  v62 = v106;
  v59[8] = v103;
  v59[9] = v62;
  v59[10] = v60;
  v59[11] = v50;
  aBlock[4] = sub_1CF2F5044;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF2E25F8;
  aBlock[3] = &block_descriptor_371_0;
  v63 = _Block_copy(aBlock);
  v64 = a13;
  v65 = v58;
  v107 = a5;

  swift_unknownObjectRetain();
  v66 = v104;

  v67 = v95;
  v68 = [v66 createItemBasedOnTemplate:v95 fields:v96 contents:v98 options:v97 request:v57 bounce:0 completionHandler:v63];
  _Block_release(v63);

  if (!v68)
  {

    swift_unknownObjectRelease();

    return;
  }

  v69 = v68;
  swift_beginAccess();
  v70 = [*(a10 + 16) documentSize];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 longLongValue];
  }

  else
  {
    v72 = 0;
  }

  v73 = v93;
  v74 = v107;
  v75 = v107[15];
  if (!v75)
  {
    goto LABEL_25;
  }

  v76 = v107[16];

  v77 = sub_1CF2CB460(a14, 1, a15, a16);
  v78 = *MEMORY[0x1E696A870];
  v111[0] = v77;
  v79 = v75(v111, v69, v78, v72);
  v81 = v80;

  sub_1CEFF7124(v75);
  if (!v79)
  {
    goto LABEL_25;
  }

  v82 = v99;
  *v73 = v99;
  v83 = v92;
  v101(v73, v102, v92);
  v84 = v82;
  LOBYTE(v82) = sub_1CF9E64D8();
  v100(v73, v83);
  if ((v82 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v85 = v103;
  v86 = *(v103 + 24);
  *(v103 + 16) = v79;
  *(v85 + 24) = v81;

  v74 = v107;
LABEL_25:
  swift_beginAccess();
  v87 = [*(a10 + 16) itemIdentifier];
  swift_beginAccess();
  v88 = v69;
  v89 = v74[23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = v74[23];
  v74[23] = 0x8000000000000000;
  sub_1CF1D2120(v88, v87, isUniquelyReferenced_nonNull_native);

  v74[23] = v110;
  swift_endAccess();

  swift_unknownObjectRelease();
}

uint64_t sub_1CF2E6174(void *a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = *(a6 + 160);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a4;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  *(v19 + 64) = a12;
  *(v19 + 72) = a1;
  *(v19 + 80) = a5;
  *(v19 + 88) = a13;
  *(v19 + 96) = a14;
  *(v19 + 104) = a15;
  *(v19 + 112) = a2;
  *(v19 + 120) = a3;

  v20 = a4;
  v21 = a8;

  v22 = a1;
  v23 = a5;

  swift_unknownObjectRetain();
  sub_1CF01001C(a7, "create(_:with:capturedContent:from:reviving:domainVersion:options:nonSyncableAttributes:completion:)", 100, 2, sub_1CF2F5088, v19);
}

void sub_1CF2E62C8(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, void *a8, void *a9, void (*a10)(void *, uint64_t, void, id, void *), uint64_t a11, void *a12, uint64_t a13, char a14)
{
  sub_1CF041B2C(a2, a3);
  swift_beginAccess();
  v19 = [*(a4 + 16) itemIdentifier];
  swift_beginAccess();
  sub_1CF1C8F90(0, v19);
  v20 = swift_endAccess();
  a5(v20);
  swift_beginAccess();
  v22 = *(a7 + 16);
  v21 = *(a7 + 24);

  v22(v23);

  sub_1CF2D1564(a8);
  if (a9)
  {
    v24 = a9;
    v25 = sub_1CF2E3014(a9, 0, 1, [a12 timeoutState]);
    a10(0, 0, 0, 0, v25);
  }

  else
  {
    v26 = [a2 domainVersion];
    a10(a8, a13, a14 & 1, v26, 0);
  }
}

uint64_t sub_1CF2E64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v41 = a3;
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 160);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1CF9E64D8();
  result = (*(v12 + 8))(v16, v11);
  if (v17)
  {
    if (*(a2 + 24) >> 60 == 11)
    {
      type metadata accessor for StagedContext();
      v20 = swift_allocObject();
    }

    else
    {
      v39[1] = a6;
      v40 = a5;
      v21 = *(a1 + 136);
      v22 = *(a2 + 16);
      v46 = *a2;
      v47 = v22;
      v23 = *(a2 + 48);
      v48 = *(a2 + 32);
      v49 = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v25 = *(a4 + 192);
      v26 = *(a4 + 224);
      v44[13] = *(a4 + 208);
      v44[14] = v26;
      v27 = *(a4 + 128);
      v28 = *(a4 + 160);
      v29 = *(a4 + 176);
      v44[9] = *(a4 + 144);
      v44[10] = v28;
      v44[11] = v29;
      v44[12] = v25;
      v30 = *(a4 + 64);
      v31 = *(a4 + 96);
      v32 = *(a4 + 112);
      v44[5] = *(a4 + 80);
      v44[6] = v31;
      v44[7] = v32;
      v44[8] = v27;
      v33 = *(a4 + 16);
      v44[0] = *a4;
      v44[1] = v33;
      v34 = *(a4 + 48);
      v44[2] = *(a4 + 32);
      v39[0] = *(v24 + 40);
      v45 = *(a4 + 240);
      v44[3] = v34;
      v44[4] = v30;
      v35 = v41;
      v36 = *(v41 + 16);
      v43[0] = *(v41 + 8);
      v43[1] = v36;
      v37 = *(*v21 + 448);
      sub_1CEFCCBDC(a2, v42, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CEFCCBDC(a2, v42, &unk_1EC4BF260, &unk_1CFA01B60);

      v38 = v37(&v46, v35 + v39[0], v44, v43, 0, 0);
      sub_1CEFCCC44(a2, &unk_1EC4BF260, &unk_1CFA01B60);

      v42[0] = v46;
      v42[1] = v47;
      v42[2] = v48;
      v42[3] = v49;
      sub_1CEFCCC44(v42, &unk_1EC4BF260, &unk_1CFA01B60);

      v20 = v38;
      a5 = v40;
    }

    a5(v20, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF2E691C(__int128 *a1, uint64_t a2, __int128 *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v76 = a4;
  v75 = a5;
  v8 = sub_1CF9E63D8();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = a1[1];
  v84 = *a1;
  v85 = v23;
  v24 = a1[3];
  v86 = a1[2];
  v87 = v24;
  v25 = a3[3];
  v90 = a3[2];
  v91 = v25;
  v26 = a3[7];
  v94 = a3[6];
  v95 = v26;
  v27 = a3[5];
  v92 = a3[4];
  v93 = v27;
  v28 = a3[11];
  v98 = a3[10];
  v99 = v28;
  v29 = a3[9];
  v96 = a3[8];
  v97 = v29;
  v103 = *(a3 + 30);
  v30 = a3[14];
  v101 = a3[13];
  v102 = v30;
  v100 = a3[12];
  v31 = a3[1];
  v88 = *a3;
  v89 = v31;
  if (*(a2 + *(v12 + 48)) == 1)
  {
    type metadata accessor for StagedContext();
    v32 = swift_allocObject();
    v76(v32, 0);
  }

  else
  {
    v34 = *(v77 + 160);
    v68 = *(v77 + 168);
    v70 = v34;
    v35 = v13;
    v36 = &v67 - v22;
    v74 = &v67 - v22;
    v69 = sub_1CF9E6448();
    v67 = *(v69 - 8);
    (*(v67 + 56))(v36, 1, 1, v69);
    v37 = swift_allocObject();
    v38 = v20;
    v40 = v75;
    v39 = v76;
    *(v37 + 16) = v76;
    *(v37 + 24) = v40;
    sub_1CEFCCBDC(a2, v16, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v41 = (*(v35 + 80) + 104) & ~*(v35 + 80);
    v42 = (v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v77;
    *(v43 + 24) = v39;
    v44 = v38;
    *(v43 + 32) = v40;
    v45 = v85;
    *(v43 + 40) = v84;
    *(v43 + 56) = v45;
    v46 = v87;
    *(v43 + 72) = v86;
    *(v43 + 88) = v46;
    v47 = v43 + v41;
    v48 = v67;
    sub_1CEFE55D0(v16, v47, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v49 = v43 + v42;
    v50 = v101;
    *(v49 + 192) = v100;
    *(v49 + 208) = v50;
    *(v49 + 224) = v102;
    *(v49 + 240) = v103;
    v51 = v97;
    *(v49 + 128) = v96;
    *(v49 + 144) = v51;
    v52 = v99;
    *(v49 + 160) = v98;
    *(v49 + 176) = v52;
    v53 = v93;
    *(v49 + 64) = v92;
    *(v49 + 80) = v53;
    v54 = v95;
    *(v49 + 96) = v94;
    *(v49 + 112) = v54;
    v55 = v89;
    *v49 = v88;
    *(v49 + 16) = v55;
    v56 = v91;
    *(v49 + 32) = v90;
    *(v49 + 48) = v56;
    v57 = swift_allocObject();
    v57[2] = sub_1CEFF9D98;
    v57[3] = v37;
    v58 = v68;
    v57[4] = v68;
    swift_retain_n();

    sub_1CEFCCBDC(&v84, &v78, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCBDC(&v88, &v78, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v77 = v37;
    v59 = v69;

    v60 = fpfs_current_log();
    v76 = *(v58 + 16);
    sub_1CEFCCBDC(v74, v44, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v48 + 48))(v44, 1, v59) == 1)
    {
      sub_1CEFCCC44(v44, &unk_1EC4BE370, qword_1CFA01B30);
      v61 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v62 = v71;
      sub_1CF9E6438();
      (*(v48 + 8))(v44, v59);
      v61 = sub_1CF9E63C8();
      (*(v72 + 8))(v62, v73);
    }

    v63 = swift_allocObject();
    v63[2] = v60;
    v63[3] = sub_1CF2F48D0;
    v63[4] = v43;
    v82 = sub_1CF2BA17C;
    v83 = v63;
    v78 = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1CEFCA444;
    v81 = &block_descriptor_277;
    v64 = _Block_copy(&v78);
    v65 = v60;

    v82 = sub_1CF2F671C;
    v83 = v57;
    v78 = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1CEFCA444;
    v81 = &block_descriptor_280;
    v66 = _Block_copy(&v78);

    fp_task_tracker_async_and_qos(v76, v70, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v61, v64, v66);
    _Block_release(v66);
    _Block_release(v64);

    return sub_1CEFCCC44(v74, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

void sub_1CF2E7018(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
    v18 = swift_allocError();
    *v19 = 0;
    *(v19 + 8) = v49;
    v20 = v52;
    v21 = v53;
    v22 = v51;
    *(v19 + 24) = v50;
    *(v19 + 72) = v21;
    *(v19 + 56) = v20;
    *(v19 + 40) = v22;
    *(v19 + 88) = 8;
    a2(v18, 1);
  }

  else
  {
    v45 = a3;
    v46 = a2;
    v23 = *(a1 + 160);
    *v17 = v23;
    (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12, v15);
    v24 = v23;
    LOBYTE(v23) = sub_1CF9E64D8();
    (*(v13 + 8))(v17, v12);
    if (v23)
    {
      if (*(a4 + 24) >> 60 == 11)
      {
        type metadata accessor for StagedContext();
        v25 = swift_allocObject();
      }

      else
      {
        v26 = *(a1 + 136);
        v27 = *(a4 + 16);
        v65 = *a4;
        v66 = v27;
        v28 = *(a4 + 48);
        v67 = *(a4 + 32);
        v68 = v28;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
        v30 = a6[12];
        v31 = a6[14];
        v62 = a6[13];
        v63 = v31;
        v32 = a6[8];
        v33 = a6[10];
        v34 = a6[11];
        v58 = a6[9];
        v59 = v33;
        v60 = v34;
        v61 = v30;
        v35 = a6[4];
        v36 = a6[6];
        v37 = a6[7];
        v54 = a6[5];
        v55 = v36;
        v56 = v37;
        v57 = v32;
        v38 = a6[1];
        v49 = *a6;
        v50 = v38;
        v39 = a6[3];
        v51 = a6[2];
        v44 = *(v29 + 40);
        v64 = *(a6 + 30);
        v52 = v39;
        v53 = v35;
        v40 = *(a5 + 16);
        v48[0] = *(a5 + 8);
        v48[1] = v40;
        v41 = *(*v26 + 448);
        sub_1CEFCCBDC(a4, v47, &unk_1EC4BF260, &unk_1CFA01B60);
        sub_1CEFCCBDC(a4, v47, &unk_1EC4BF260, &unk_1CFA01B60);

        v42 = v41(&v65, a5 + v44, &v49, v48, 1, 0);
        sub_1CEFCCC44(a4, &unk_1EC4BF260, &unk_1CFA01B60);

        v47[0] = v65;
        v47[1] = v66;
        v47[2] = v67;
        v47[3] = v68;
        sub_1CEFCCC44(v47, &unk_1EC4BF260, &unk_1CFA01B60);

        v25 = v42;
      }

      v46(v25, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CF2E752C(void *a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v54 = a4;
  LODWORD(v52) = a2;
  v48 = sub_1CF9E63D8();
  v47 = *(v48 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = a3[1];
  v61 = *a3;
  v62 = v21;
  v22 = a3[3];
  v63 = a3[2];
  v64 = v22;
  v23 = *(v7 + 168);
  v53 = *(v7 + 160);
  v24 = sub_1CF9E6448();
  v49 = *(v24 - 8);
  (*(v49 + 56))(v20, 1, 1, v24);
  v25 = swift_allocObject();
  v26 = a6;
  *(v25 + 16) = a6;
  *(v25 + 24) = a7;
  v27 = a7;
  v28 = swift_allocObject();
  *(v28 + 16) = v8;
  *(v28 + 24) = a1;
  v29 = v62;
  *(v28 + 32) = v61;
  *(v28 + 48) = v29;
  v30 = v64;
  *(v28 + 64) = v63;
  *(v28 + 80) = v30;
  *(v28 + 96) = v52;
  v31 = v54;
  *(v28 + 104) = v54;
  *(v28 + 112) = v26;
  *(v28 + 120) = v27;
  v32 = swift_allocObject();
  v32[2] = sub_1CF2F474C;
  v32[3] = v25;
  v51 = v32;
  v32[4] = v23;
  v33 = v50;
  swift_retain_n();

  v34 = a1;
  v35 = v49;
  sub_1CEFCCBDC(&v61, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
  v36 = v31;

  v37 = fpfs_current_log();
  v52 = *(v23 + 16);
  v54 = v20;
  sub_1CEFCCBDC(v20, v33, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v35 + 48))(v33, 1, v24) == 1)
  {
    sub_1CEFCCC44(v33, &unk_1EC4BE370, qword_1CFA01B30);
    v38 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v39 = v46;
    sub_1CF9E6438();
    (*(v35 + 8))(v33, v24);
    v38 = sub_1CF9E63C8();
    (*(v47 + 8))(v39, v48);
  }

  v40 = swift_allocObject();
  v40[2] = v37;
  v40[3] = sub_1CF2F4780;
  v40[4] = v28;
  v59 = sub_1CF2BA17C;
  v60 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1CEFCA444;
  v58 = &block_descriptor_249;
  v41 = _Block_copy(&aBlock);
  v42 = v37;

  v59 = sub_1CF2F4798;
  v60 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1CEFCA444;
  v58 = &block_descriptor_252;
  v43 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v52, v53, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v38, v41, v43);
  _Block_release(v43);
  _Block_release(v41);

  return sub_1CEFCCC44(v54, &unk_1EC4BE370, qword_1CFA01B30);
}