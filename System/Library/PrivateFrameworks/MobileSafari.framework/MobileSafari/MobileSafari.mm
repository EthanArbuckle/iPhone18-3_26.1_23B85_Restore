uint64_t _SFDeviceIsPad()
{
  if (_SFDeviceIsPad::onceToken != -1)
  {
    _SFSizeClassForWidth_cold_1();
  }

  return _SFDeviceIsPad::isPad;
}

id SFDefaultWebExtensionsPreferenceValues()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69C91D0];
  v3[0] = MEMORY[0x1E695E110];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id _SFSafariContainerURL()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 safari_mobileSafariContainerDirectoryURL];

  return v1;
}

id _SFSafariContainerPath()
{
  v0 = _SFSafariContainerURL();
  v1 = [v0 path];

  return v1;
}

id _SFSafariIconImageCacheDirectoryPath()
{
  v0 = _SFSafariContainerPath();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Image Cache/"];

  return v1;
}

void __ensureImageCacheDirectory_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v14 = 0;
  v5 = [v2 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if (v5)
  {
    v7 = *v3;
    v8 = *MEMORY[0x1E695DB80];
    v13 = v6;
    v9 = [v7 setResourceValue:MEMORY[0x1E695E118] forKey:v8 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __ensureImageCacheDirectory_block_invoke_cold_2(v3, v11, v10);
      }
    }

    v6 = v10;
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __ensureImageCacheDirectory_block_invoke_cold_1(v3, v12, v6);
    }
  }
}

id _SFSafariMetadataCacheDirectoryPath()
{
  v0 = _SFSafariContainerPath();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Metadata Cache/"];

  return v1;
}

uint64_t _SFApplicationNameForUserAgent()
{
  {
    _SFApplicationNameForUserAgent::bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }

  {
    _SFApplicationNameForUserAgent::bundleShortVersion = [_SFApplicationNameForUserAgent::bundle objectForInfoDictionaryKey:*MEMORY[0x1E695E148]];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Version/%@ Mobile/15E148 Safari/604.1", _SFApplicationNameForUserAgent::bundleShortVersion];
}

uint64_t _SFDeviceSupportsDesktopSitesByDefault()
{
  if (_SFDeviceSupportsDesktopSitesByDefault::onceToken != -1)
  {
    _SFDeviceSupportsDesktopSitesByDefault_cold_1();
  }

  return _SFDeviceSupportsDesktopSitesByDefault::supportsDesktopSites;
}

id _SFApplicationNameForDesktopUserAgent()
{
  v0 = _SFApplicationNameForDesktopUserAgent::appNameForDesktopUserAgent;
  if (!_SFApplicationNameForDesktopUserAgent::appNameForDesktopUserAgent)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = [v1 objectForInfoDictionaryKey:*MEMORY[0x1E695E148]];

    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Version/%@ Safari/605.1.15", v2];
    v4 = _SFApplicationNameForDesktopUserAgent::appNameForDesktopUserAgent;
    _SFApplicationNameForDesktopUserAgent::appNameForDesktopUserAgent = v3;

    v0 = _SFApplicationNameForDesktopUserAgent::appNameForDesktopUserAgent;
  }

  return v0;
}

id _SFSafariGroupContainerURL()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 safari_mobileSafariGroupContainerDirectoryURL];

  return v1;
}

id _SFContentBlockerStoreURL()
{
  {
    v2 = _SFSafariGroupContainerURL();
    _SFContentBlockerStoreURL::contentBlockerStoreURL = [v2 URLByAppendingPathComponent:@"Library/WebKit/ContentExtensions" isDirectory:1];
  }

  v0 = _SFContentBlockerStoreURL::contentBlockerStoreURL;

  return v0;
}

void sub_18B7B033C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t _sSo21SFSiriLinkCoordinatorC12MobileSafariE19setApplicationProxyyySo09SFBrowsergH0_pFZ_0()
{
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for SFIntentSceneConfigurator();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_18BC1DF28();
  sub_18B7B06E8();
  return sub_18BC1DF18();
}

id sub_18B7B05A8()
{
  result = [objc_allocWithZone(type metadata accessor for SiriLinkDataSource()) init];
  qword_1EA9DA780 = result;
  return result;
}

id SiriLinkDataSource.init()()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_18B7B06E8()
{
  result = qword_1EA9DA520;
  if (!qword_1EA9DA520)
  {
    type metadata accessor for SFIntentSceneConfigurator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA520);
  }

  return result;
}

uint64_t sub_18B7B0AC0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18B7B0B08(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B7B0B50()
{
  result = qword_1EA9D39C0;
  if (!qword_1EA9D39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D39C0);
  }

  return result;
}

uint64_t _s7StorageVMa()
{
  result = qword_1EA9DB1F8;
  if (!qword_1EA9DB1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B7B0D6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B7B0DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_18BC1E1A8();
  v1(v2);
}

id sub_18B7B0E34(void *a1)
{
  type metadata accessor for TabIconPool();
  v3 = swift_allocObject();
  v3[2] = sub_18B8390A8;
  v3[3] = 0;
  v3[4] = sub_18B8390A8;
  v3[5] = 0;
  v3[6] = sub_18BA61D84;
  v3[7] = 0;
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC0];
  v3[8] = sub_18B7B3BFC(MEMORY[0x1E69E7CC0]);
  v3[9] = sub_18B7B1194(v5);
  v3[10] = v4;
  *&v1[OBJC_IVAR___SFTabIconPool_wrapped] = v3;
  v7.receiver = v1;
  v7.super_class = SFTabIconPool;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_18B7B0F08(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B7B69A0;

  return v6(a1);
}

uint64_t sub_18B7B1000(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B7B1038()
{
  result = sub_18BC1EC08();
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

uint64_t sub_18B7B10E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18B7B6968;

  return sub_18B7B3E88(v2, v3);
}

unint64_t sub_18B7B1194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72C0);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D72B8);
      result = sub_18B857EE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_18BC1EC08();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for TabIconPool.Request(0);
      result = sub_18B80D3BC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for TabIconPool.Request);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_18B7B13D0()
{
  result = sub_18BC1EA98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18B7B14D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B7B15C8()
{
  result = sub_18BC1EC08();
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

void sub_18B7B1680(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_18B7B171C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18B7B17C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18B7B0F08(a1, v4);
}

uint64_t sub_18B7B187C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18B7B3D28(v2, v3, v4);
}

uint64_t sub_18B7B193C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18B7B1998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7B19F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
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

_OWORD *sub_18B7B1AD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_18B7B1AE4()
{
  result = sub_18BC21388();
  if (!v1)
  {
    if (*(result + 16))
    {
      v3 = *(result + 32);

      v4 = *(v0 + OBJC_IVAR___SFTabSnapshotMetadataStore_currentSchemaVersion);
      if (v3 < v4)
      {
        v5 = v3 + 1;
        while (1)
        {
          if (v5 == 2)
          {
            MEMORY[0x1EEE9AC00](result);
            sub_18BC213A8();
          }

          else if (v5 == 1)
          {
            sub_18BC21398();
            sub_18BBB2F6C();
          }

          sub_18BC21AD8();

          v6 = sub_18BC21F48();
          MEMORY[0x18CFFC150](v6);

          sub_18BC21398();

          if (v4 == v5)
          {
            break;
          }

          if (__OFADD__(v5++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    else
    {
    }
  }

  return result;
}

id sub_18B7B1D10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 intAtIndex_];
  *a2 = result;
  return result;
}

uint64_t sub_18B7B1D50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1E0);

  return sub_18B7B6420();
}

uint64_t sub_18B7B1DD0()
{
  v1 = *(v0 + 32);

  if (v1)
  {
    v2 = *(v0 + 32);
    type metadata accessor for SFTabSnapshotMetadata(0);
    v3 = sub_18BC20D88();

    (v2)[2](v2, v3, 0);
    _Block_release(v2);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t _SFDeviceSupportsWebKitFullscreenAPI()
{
  if (_SFDeviceSupportsWebKitFullscreenAPI::onceToken != -1)
  {
    _SFDeviceSupportsWebKitFullscreenAPI_cold_1();
  }

  return _SFDeviceSupportsWebKitFullscreenAPI::supportsFullscreen;
}

char *sub_18B7B23D0(char *a1)
{
  v74 = a1;
  v1 = sub_18BC208F8();
  v2 = *(v1 - 8);
  v70 = v1;
  v71 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v69 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_18BC1E998();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EA98();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v58 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = v55 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v72 = v55 - v10;
  v57 = sub_18BC21338();
  v11 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC21318();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_18BC20928();
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue;
  v56 = OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue;
  v55[2] = sub_18B7B0AC0(0, &unk_1EA9D3A90);
  v55[1] = "shots WHERE tab_uuid = ?";
  v63 = v17;
  sub_18BC20918();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_18B7B2D58(&qword_1EA9D8C30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB1F0);
  v66 = MEMORY[0x1E69E6328];
  sub_18B7B0B08(&qword_1EA9D8C38, &qword_1EA9DB1F0);
  sub_18BC21908();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v57);
  v19 = sub_18BC21368();
  v20 = v73;
  *&v73[v18] = v19;
  *&v20[OBJC_IVAR___SFTabSnapshotMetadataStore_currentSchemaVersion] = 2;
  aBlock = 0x617461646174656DLL;
  v77 = 0xE800000000000000;
  v21 = v60;
  v22 = *(v60 + 13);
  v23 = v59;
  v24 = v62;
  v22(v59, *MEMORY[0x1E6968F58], v62);
  sub_18B7B0B50();
  v25 = v58;
  v26 = v74;
  sub_18BC1EA78();
  v27 = *(v21 + 1);
  v27(v23, v24);
  aBlock = 0x617461646174656DLL;
  v77 = 0xE800000000000000;
  v22(v23, *MEMORY[0x1E6968F68], v24);
  v28 = v61;
  sub_18BC1EA78();
  v27(v23, v24);
  v29 = v64;
  v30 = v65;
  v31 = v64 + 8;
  v32 = *(v64 + 8);
  v32(v25, v65);
  v60 = v32;
  v62 = v31;
  v33 = v72;
  sub_18BC1EA08();
  v32(v28, v30);
  v34 = v73;
  v35 = &v73[OBJC_IVAR___SFTabSnapshotMetadataStore__storage];
  v36 = _s7StorageVMa();
  v35[3] = v36;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35);
  v38 = *(v29 + 16);
  v38(boxed_opaque_existential_0Tm, v33, v30);
  v38((boxed_opaque_existential_0Tm + *(v36 + 20)), v26, v30);
  v39 = *&v34[v56];
  v40 = objc_allocWithZone(MEMORY[0x1E69C89E8]);
  v41 = v39;
  v42 = sub_18BC1E9E8();
  v43 = [v40 initWithURL:v42 queue:v41];

  *&v34[OBJC_IVAR___SFTabSnapshotMetadataStore_database] = v43;
  v82.receiver = v34;
  v82.super_class = SFTabSnapshotMetadataStore;
  v44 = objc_msgSendSuper2(&v82, sel_init);
  v45 = *&v44[OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue];
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v80 = sub_18B7B0DF4;
  v81 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = sub_18B7B0DB0;
  v79 = &block_descriptor_87_0;
  v47 = _Block_copy(&aBlock);
  v48 = v44;
  v49 = v45;
  v50 = v63;
  sub_18BC20908();
  v75 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D58(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  v52 = v69;
  v51 = v70;
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v50, v52, v47);
  _Block_release(v47);

  v53 = v60;
  v60(v74, v30);
  (*(v71 + 8))(v52, v51);
  (*(v67 + 8))(v50, v68);
  v53(v72, v30);

  return v48;
}

uint64_t sub_18B7B2CD8()
{

  return swift_deallocObject();
}

uint64_t sub_18B7B2D10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B7B2D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B7B2DA0()
{
  result = sub_18BC1EA98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_18BC1E1A8();
}

uint64_t sub_18B7B3300()
{
  v1 = v0;
  v30 = *MEMORY[0x1E69E9840];
  v2 = _s7StorageVMa();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EA98();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = sub_18BC1E7B8();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR___SFTabSnapshotMetadataStore_database);
  [v14 setDelegate_];
  *&v28 = 0;
  if ([v14 openWithAccessType:3 error:&v28])
  {
    v24 = v11;
    v15 = v28;
    sub_18BC1E7A8();
    sub_18BC1E798();
    v16 = OBJC_IVAR___SFTabSnapshotMetadataStore__storage;
    swift_beginAccess();
    sub_18B7B193C(v1 + v16, &v28);
    swift_dynamicCast();
    (*(v6 + 16))(v10, v4, v5);
    sub_18B7B1998(v4, _s7StorageVMa);
    v23 = v13;
    v17 = v26;
    sub_18BC1E9D8();
    if (v17)
    {

      v18 = v25;
      (*(v6 + 32))(v25, v10, v5);
      sub_18B7B193C(v1 + v16, &v28);
      swift_dynamicCast();
      (*(v6 + 24))(v4, v18, v5);
      v29 = v2;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v28);
      sub_18B7B19F8(v4, boxed_opaque_existential_0Tm, _s7StorageVMa);
      (*(v6 + 8))(v18, v5);
    }

    else
    {
      sub_18B7B193C(v1 + v16, &v28);
      swift_dynamicCast();
      (*(v6 + 24))(v4, v10, v5);
      v29 = v2;
      v22 = __swift_allocate_boxed_opaque_existential_0Tm(&v28);
      sub_18B7B19F8(v4, v22, _s7StorageVMa);
      (*(v6 + 8))(v10, v5);
    }

    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + v16);
    sub_18B7B1AD4(&v28, (v1 + v16));
    swift_endAccess();
    sub_18B7B1AE4();
    return (*(v27 + 8))(v23, v24);
  }

  else
  {
    v20 = v28;
    sub_18BC1E898();

    return swift_willThrow();
  }
}

uint64_t sub_18B7B3990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B7B3A1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = sub_18BC21D88();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v14, v10, a2);
      result = sub_18B857EE4(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = sub_18BC1EC08();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

uint64_t sub_18B7B3C20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_18B987B10;

  return v7();
}

uint64_t sub_18B7B3D28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_18B7B6968;

  return v6();
}

uint64_t sub_18B7B3E44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TabIconRegistration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B7B3E88(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_18B7B3F00, 0, 0);
}

uint64_t sub_18B7B3F00()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB1D8);
  *v3 = v0;
  v3[1] = sub_18B7B684C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x6174654D64616F6CLL, 0xEE00292861746164, sub_18B7B1450, v2, v4);
}

uint64_t sub_18B7B4008(uint64_t a1, char *a2)
{
  v4 = sub_18BC208F8();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC20928();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v19[1] = *&a2[OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue];
  (*(v11 + 16))(v19 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_18B7B1D50;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_39_2;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  sub_18BC20908();
  v23 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D58(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v9, v6, v16);
  _Block_release(v16);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_18B7B43B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_18B7B4524()
{
  v1 = &v0[OBJC_IVAR___SFTabSnapshotPool_contentProvider];
  *v1 = sub_18B8390A8;
  v1[1] = 0;
  type metadata accessor for TabSnapshotPool();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = sub_18B7B45E0(MEMORY[0x1E69E7CC0]);
  *(v2 + 48) = v3;
  *(v2 + 56) = CGRectMake;
  *(v2 + 64) = 0;
  *&v0[OBJC_IVAR___SFTabSnapshotPool_wrapped] = v2;
  v5.receiver = v0;
  v5.super_class = SFTabSnapshotPool;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for TabSnapshotRegistration()
{
  result = qword_1EA9D8B10;
  if (!qword_1EA9D8B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18B7B4650()
{
  result = qword_1EA9D8B08;
  if (!qword_1EA9D8B08)
  {
    type metadata accessor for TabSnapshotRegistration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8B08);
  }

  return result;
}

uint64_t sub_18B7B46DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B7B4718(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SFTabSnapshotPool_contentProvider);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR___SFTabSnapshotPool_wrapped);
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_beginAccess();
  v6 = *(v4 + 16);
  *(v4 + 16) = sub_18B857028;
  *(v4 + 24) = v5;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18B7B171C(v6);
}

uint64_t sub_18B7B47E8()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

SFUnifiedTabBarItemTitleContainerViewTheme *makeTitleTheme(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a2;
  v5 = a1;
  v6 = [v3 labelColor];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [[SFUnifiedTabBarItemTitleContainerViewTheme alloc] initWithPrimaryTextColor:v6 secondaryTextColor:v7 placeholderTextColor:v7 overrideTintColor:v5 themeColor:v4];

  return v8;
}

uint64_t sub_18B7B4C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B7B6968;

  return sub_18B7B3C20(a1, v4, v5, v6);
}

uint64_t sub_18B7B4CE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18B7B4D94(v2, v3, v4);
}

uint64_t sub_18B7B4D94(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_18BC1EC08();
  sub_18B7B2D58(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  v3[4] = sub_18BC20FD8();
  v5 = a3;

  return MEMORY[0x1EEE6DFA0](sub_18B7B6F8C, 0, 0);
}

uint64_t sub_18B7B4F88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v1 = *(v0 + 16);

  return sub_18B7B757C(v1);
}

uint64_t sub_18B7B4FF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18B7B5004()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v2[2](v2, 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_18B7B5484(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  if (a3 == 1)
  {
    v8 = a1;
    sub_18BC1FB68();
    v9 = sub_18BC1FB78();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
LABEL_5:
    sub_18BC21578();

    return;
  }

  if (!a3)
  {
    v10 = sub_18BC1FB78();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = a1;
    goto LABEL_5;
  }

  type metadata accessor for SFCornerMaskingConfiguration(0);
  v13[1] = a3;
  v12 = a1;
  sub_18BC22048();
  __break(1u);
}

id _SFBackdropGroupNameForOwner(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariServices.Backdrop.%p", a1];

  return v1;
}

void sub_18B7B5788(void *a1, uint64_t a2, int a3)
{
  v5 = sub_18BC1F3A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    sub_18BC1F398();
    *(&v13 + 1) = v5;
    v14 = MEMORY[0x1E69DBEA8];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v12);
    (*(v6 + 32))(boxed_opaque_existential_0Tm, v8, v5);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = a1;
  }

  sub_18BC21518();
}

__CFString *SFSystemImageNameForBarItemFilled(uint64_t a1, int a2)
{
  v3 = 0;
  switch(a1)
  {
    case 0:
      v3 = @"chevron.backward";
      break;
    case 1:
      v3 = @"chevron.forward";
      break;
    case 3:
      v4 = @"book";
      v5 = @"book.fill";
      goto LABEL_15;
    case 4:
      v6 = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v4 = @"mic.fill";
      v5 = @"mic";
      v7 = v6 == 0;
      goto LABEL_16;
    case 5:
      v4 = @"ellipsis.circle";
      v5 = @"ellipsis.circle.fill";
      goto LABEL_15;
    case 6:
      v4 = @"square.and.arrow.up";
      v5 = @"square.and.arrow.up.fill";
      goto LABEL_15;
    case 7:
      v3 = @"plus";
      break;
    case 8:
      v4 = @"square.on.square";
      v5 = @"square.fill.on.square.fill";
      goto LABEL_15;
    case 9:
      v4 = @"safari";
      v5 = @"safari.fill";
      goto LABEL_15;
    case 13:
      v3 = @"apple.page.menu";
      break;
    case 14:
      v3 = @"xmark";
      break;
    case 15:
      v3 = @"arrow.clockwise";
      break;
    case 16:
      v4 = @"person.circle";
      v5 = @"person.circle.fill";
LABEL_15:
      v7 = a2 == 0;
LABEL_16:
      if (!v7)
      {
        v4 = v5;
      }

      v3 = v4;
      break;
    default:
      break;
  }

  return v3;
}

uint64_t _SFBarItemEnumerateCases(uint64_t a1)
{
  for (i = 0; i != 17; ++i)
  {
    result = (*(a1 + 16))(a1, i);
  }

  return result;
}

uint64_t sub_18B7B6420()
{
  sub_18BC21AD8();

  sub_18B7B661C(&unk_1EFF1AF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
  sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
  v0 = sub_18BC20AB8();
  v2 = v1;

  MEMORY[0x18CFFC150](v0, v2);

  MEMORY[0x18CFFC150](0x6E73204D4F524620, 0xEF73746F68737061);
  type metadata accessor for SFTabSnapshotMetadata(0);
  sub_18BC21388();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1E0);
  return sub_18BC20EF8();
}

uint64_t sub_18B7B661C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18B7B6718(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_18B7B6718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
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

uint64_t sub_18B7B684C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_18BBB4DCC;
  }

  else
  {

    v2 = sub_18B7B1DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B7B69A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id _SFBackdropEffectForBarTintStyle(uint64_t a1)
{
  if (_SFBackdropEffectForBarTintStyle_onceToken != -1)
  {
    _SFBackdropEffectForBarTintStyle_cold_1();
  }

  v2 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      goto LABEL_11;
    }

    if (a1 != 2)
    {
      goto LABEL_13;
    }

LABEL_10:
    v3 = _SFBackdropEffectForBarTintStyle_darkEffect;
LABEL_12:
    v2 = v3;
    goto LABEL_13;
  }

  switch(a1)
  {
    case 5:
      v5 = MEMORY[0x1E69DC730];
      v6 = [MEMORY[0x1E69DC888] sf_colorNamed:@"AutomationBarBackgroundColor"];
      v2 = [v5 _effectWithTintColor:v6];

      break;
    case 4:
      goto LABEL_10;
    case 3:
LABEL_11:
      v3 = _SFBackdropEffectForBarTintStyle_lightEffect;
      goto LABEL_12;
  }

LABEL_13:

  return v2;
}

uint64_t SFEnhancedTabOverviewEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"EnhancedTabOverviewEnabled"];

  return v1;
}

uint64_t sub_18B7B6F8C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_18B7B7B84;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000017, 0x800000018BC70BF0, sub_18B7B7514, v3, v5);
}

uint64_t sub_18B7B7084(uint64_t a1, char *a2, uint64_t a3)
{
  v20[0] = a3;
  v5 = sub_18BC208F8();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC20928();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v20[1] = *&a2[OBJC_IVAR___SFTabSnapshotMetadataStore_databaseQueue];
  (*(v12 + 16))(v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v20[0];
  *(v16 + 24) = a2;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_18B7B4F88;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_60;
  v17 = _Block_copy(aBlock);
  sub_18BC1E3F8();
  v18 = a2;
  sub_18BC20908();
  v24 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D58(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v10, v7, v17);
  _Block_release(v17);
  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_18B7B743C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B7B757C(uint64_t a1)
{
  sub_18B7B771C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
  sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
  v1 = sub_18BC20AB8();
  v3 = v2;

  sub_18BC21AD8();

  MEMORY[0x18CFFC150](v1, v3);

  MEMORY[0x18CFFC150](41, 0xE100000000000000);
  sub_18BC21398();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1A0);
  return sub_18BC20EF8();
}

uint64_t sub_18B7B771C(uint64_t a1)
{
  v41 = sub_18BC1EC08();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v33 = v1;
  v47 = MEMORY[0x1E69E7CC0];
  sub_18B7B7A54(0, v5, 0);
  v6 = v47;
  v7 = a1 + 56;
  result = sub_18BC21918();
  v9 = result;
  v10 = 0;
  v38 = v3 + 8;
  v39 = v3 + 16;
  v34 = a1 + 64;
  v35 = v5;
  v36 = v3;
  v37 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v42 = v10;
    v43 = v13;
    v14 = *(a1 + 48) + *(v3 + 72) * v9;
    v15 = *(v3 + 16);
    v44 = v6;
    v17 = v40;
    v16 = v41;
    v15(v40, v14, v41);
    v45 = 39;
    v46 = 0xE100000000000000;
    v18 = sub_18BC1EBA8();
    MEMORY[0x18CFFC150](v18);

    MEMORY[0x18CFFC150](39, 0xE100000000000000);
    v19 = v3;
    v20 = v45;
    v21 = v46;
    v22 = v17;
    v6 = v44;
    result = (*(v19 + 8))(v22, v16);
    v47 = v6;
    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_18B7B7A54((v23 > 1), v24 + 1, 1);
      v6 = v47;
    }

    *(v6 + 16) = v24 + 1;
    v25 = v6 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v37;
    v26 = *(v37 + 8 * v12);
    if ((v26 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v9 & 0x3F));
    if (v27)
    {
      v11 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v34 + 8 * v12);
      while (v29 < (v11 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_18B7B4FF8(v9, v43, 0);
          v11 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_18B7B4FF8(v9, v43, 0);
    }

LABEL_4:
    v10 = v42 + 1;
    v9 = v11;
    v3 = v36;
    if (v42 + 1 == v35)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_18B7B7A54(char *a1, int64_t a2, char a3)
{
  result = sub_18B7B7A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B7B7A74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
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

uint64_t sub_18B7B7B84()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_18BBB46B4;
  }

  else
  {

    v2 = sub_18B7B5004;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

double _SFScreenScale()
{
  result = *&_SFScreenScale::scale;
  if (*&_SFScreenScale::scale == 0.0)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 scale];
    _SFScreenScale::scale = v2;

    return *&_SFScreenScale::scale;
  }

  return result;
}

id SFCapsulePageLayoutInfo.init()()
{
  *&v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha] = 0x3FF0000000000000;
  v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius] = 1;
  v1 = &v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
  CACornerRadiiMake(v10, 0.0, 0.0, 0.0, 0.0);
  v2 = v10[1];
  *v1 = v10[0];
  v1[1] = v2;
  v3 = v10[3];
  v1[2] = v10[2];
  v1[3] = v3;
  v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_ignoresCornerRadius] = 0;
  v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden] = 0;
  v4 = &v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v0[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform];
  *v6 = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v7 = type metadata accessor for SFCapsulePageLayoutInfo();
  v6[4] = 0;
  v6[5] = 0;
  v9.receiver = v0;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

char *sub_18B7B85E0(void *a1)
{
  v1 = sub_18B7BA664(a1);
  v2 = *&v1[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  v3 = *&v1[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
  v4 = *&v1[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
  v5 = *&v1[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

  v6 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
  v18.origin.x = v2;
  v18.origin.y = v3;
  v18.size.width = v4;
  v18.size.height = v5;
  v7 = CGRectGetMinX(v18) + 16.0;
  v19.origin.x = v2;
  v19.origin.y = v3;
  v19.size.width = v4;
  v19.size.height = v5;
  CGRectGetMaxY(v19);
  v20.origin.x = v2;
  v20.origin.y = v3;
  v20.size.width = v4;
  v20.size.height = v5;
  CGRectGetWidth(v20);
  v8 = _SFRoundRectToPixels(v7);
  v9 = &v6[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  *v9 = v8;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  v13 = sub_18BC20BD8();
  v15 = v14;
  v16 = &v6[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
  swift_beginAccess();
  *v16 = v13;
  v16[1] = v15;

  return v6;
}

id SFFadeOutImage(uint64_t a1, double a2)
{
  if (SFFadeOutImage::onceToken != -1)
  {
    SFFadeOutImage_cold_1();
  }

  v4 = -a2;
  if (!a1)
  {
    v4 = a2;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v6 = [SFFadeOutImage::fadeOutImages objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [MEMORY[0x1E69DCA80] preferredFormat];
    [v7 setPreferredRange:0x7FFFLL];
    v8 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2 + 1.0, 1.0}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SFFadeOutImage_block_invoke_2;
    v11[3] = &__block_descriptor_41_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v12 = a1 == 0;
    *&v11[4] = a2;
    v9 = [v8 imageWithActions:v11];
    UIEdgeInsetsMakeWithEdges();
    v6 = [v9 resizableImageWithCapInsets:1 resizingMode:?];

    [SFFadeOutImage::fadeOutImages setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

void __SFFadeOutImage_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = SFFadeOutImage::fadeOutImages;
  SFFadeOutImage::fadeOutImages = v0;
}

uint64_t sub_18B7B9860(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong traitCollection];
    v8 = [v7 layoutDirection];

    if (sub_18BC20BD8() == a1 && v9 == a2)
    {
    }

    else
    {
      v11 = sub_18BC21FD8();

      if ((v11 & 1) == 0)
      {
        if (sub_18BC20BD8() == a1 && v12 == a2)
        {
        }

        else
        {
          v14 = sub_18BC21FD8();

          if ((v14 & 1) == 0)
          {
            if (sub_18BC20BD8() == a1 && v15 == a2)
            {
            }

            else
            {
              v23 = sub_18BC21FD8();

              if ((v23 & 1) == 0)
              {
                v20 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
                goto LABEL_21;
              }
            }

            v20 = sub_18BB97EF0(a3);
LABEL_21:
            v21 = v20;
            swift_unknownObjectRelease();
            return v21;
          }
        }

        v16 = v8 == 0;
        v17 = 2;
        v18 = 8;
LABEL_17:
        if (v16)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        v20 = sub_18BB97BB8(a3, v19);
        goto LABEL_21;
      }
    }

    v16 = v8 == 0;
    v17 = 8;
    v18 = 2;
    goto LABEL_17;
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

id sub_18B7B9BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_1E721C5D0;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B7B9E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXLoweredTabBar()
{
  if (WBS_LOG_CHANNEL_PREFIXLoweredTabBar_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXLoweredTabBar_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXLoweredTabBar_log;
}

void sub_18B7BA2B4(void *a1, uint64_t a2, int a3)
{
  v5 = sub_18BC1FFC8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1FFF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a1;
    sub_18BC1FFB8();
    sub_18BC20008();
    *(&v14 + 1) = v6;
    v15 = MEMORY[0x1E69DC388];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v13);
    (*(v7 + 32))(boxed_opaque_existential_0Tm, v9, v6);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v12 = a1;
  }

  sub_18BC21518();
}

char *sub_18B7BA4A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_18BC20BD8() == a1 && v6 == a2)
  {

    goto LABEL_20;
  }

  v8 = sub_18BC21FD8();

  if (v8)
  {
LABEL_20:

    return sub_18B7B85E0(a3);
  }

  if (sub_18BC20BD8() == a1 && v9 == a2)
  {

    goto LABEL_24;
  }

  v11 = sub_18BC21FD8();

  if (v11)
  {
LABEL_24:

    return sub_18B7BA664(a3);
  }

  if (sub_18BC20BD8() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_18BC21FD8();

    if ((v14 & 1) == 0)
    {
      v15 = objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo());

      return [v15 init];
    }
  }

  return sub_18BA5B4AC(a3);
}

uint64_t sub_18B7BA664(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    [v4 bounds];
    [a1 capsuleHeightForWidth:0 defaultHeight:CGRectGetWidth(v39) state:44.0];
    v6 = v5;
    swift_unknownObjectRelease();
    v36 = fmax(v6, 48.0);
    v7 = v36 * 0.5 + 16.0;
    v8 = [v3 traitCollection];
    [v8 displayCornerRadius];
    v10 = v9;

    v11 = 14.0;
    if (v10 + -14.0 < v7)
    {
      v11 = 8.0;
    }

    if (v7 > v10 - v11)
    {
      v12 = v36 * 0.5 + 16.0;
    }

    else
    {
      v12 = v10 - v11;
    }

    UIEdgeInsetsMakeWithEdges();
    v37 = v13;
    v14 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    CACornerRadiiMake(v38, v7, v7, v12, v12);
    v16 = v38[0];
    v15 = v38[1];
    v18 = v38[2];
    v17 = v38[3];
    v20 = v38[4];
    v19 = v38[5];
    v21 = v38[6];
    v22 = v38[7];
    v23 = &v14[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v23 = v16;
    v23[1] = v15;
    v23[2] = v18;
    v23[3] = v17;
    v23[4] = v20;
    v23[5] = v19;
    v23[6] = v21;
    v23[7] = v22;
    v24 = 0;
    if (v21 == v22 && v21 == v16 && v22 == v15)
    {
      v25 = v21 == v20;
      if (v22 != v19)
      {
        v25 = 0;
      }

      if (v21 != v18)
      {
        v25 = 0;
      }

      v24 = v22 == v17 && v25;
    }

    v26 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v14[v26] = v24;
    [v3 bounds];
    CGRectGetMaxY(v40);
    [v3 bounds];
    CGRectGetWidth(v41);
    v27 = _SFRoundRectToPixels(v37);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = &v14[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v34 = v27;
    *(v34 + 1) = v29;
    *(v34 + 2) = v31;
    *(v34 + 3) = v33;
    return v14;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

void CACornerRadiiMake(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a5;
  a1[4] = a3;
  a1[5] = a3;
  a1[6] = a2;
  a1[7] = a2;
}

void __SFFadeOutImage_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  *components = xmmword_18BC3DDA0;
  v9 = unk_18BC3DDB0;
  v7 = xmmword_18BC3DD80;
  v3 = CGGradientCreateWithColorComponents(DeviceGray, components, &v7, 2uLL);
  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(a1 + 32) + 1.0;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 1.0;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  v11.y = 0.0;
  v12.y = 0.0;
  v11.x = v4;
  v12.x = v5;
  CGContextDrawLinearGradient(CurrentContext, v3, v11, v12, 2u);
  CGColorSpaceRelease(DeviceGray);
  CGGradientRelease(v3);
}

uint64_t sub_18B7BB640(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    [v4 bounds];
    [a1 capsuleHeightForWidth:0 defaultHeight:CGRectGetWidth(v15) state:44.0];
    v6 = v5;
    swift_unknownObjectRelease();
    v7 = fmax(v6, 48.0);
    [v3 bounds];
    v8 = CGRectGetHeight(v16) - v7;
    [v3 bounds];
    Width = CGRectGetWidth(v17);
    [v3 layoutMargins];
    [v3 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v8, Width, v7, v10, v11, v12, v13}];
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B7BB7E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, sub_18B7BB640(a1), (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    [v4 bounds];
    [a1 capsuleHeightForWidth:0 defaultHeight:CGRectGetWidth(v40) state:44.0];
    v6 = v5;
    swift_unknownObjectRelease();
    v7 = [v3 traitCollection];
    [v7 layoutDirection];

    sub_18BC20BD8();
    sub_18BC20BD8();
    v8 = sub_18BB97BB8(a1, 2);

    v9 = sub_18BB97BB8(a1, 8);

    v10 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden;
    swift_beginAccess();
    if ((v8[v10] & 1) != 0 || (v11 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha, swift_beginAccess(), *&v8[v11] == 0.0))
    {
      MinX = CGRectGetMinX(*&v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]) + 8.0;
    }

    v38 = MinX;
    v13 = fmax(v6, 48.0);
    [v3 bounds];
    CGRectGetWidth(v41);
    v14 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden;
    swift_beginAccess();
    if ((v9[v14] & 1) != 0 || (v15 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha, swift_beginAccess(), *&v9[v15] == 0.0))
    {
      CGRectGetMaxX(*&v9[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
    }

    else
    {
      CGRectGetMinX(*&v9[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
    }

    v16 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    CACornerRadiiMake(v39, v13 * 0.5, v13 * 0.5, v13 * 0.5, v13 * 0.5);
    v18 = v39[0];
    v17 = v39[1];
    v20 = v39[2];
    v19 = v39[3];
    v21 = v39[4];
    v22 = v39[5];
    v23 = v39[6];
    v24 = v39[7];
    v25 = &v16[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v25 = v18;
    v25[1] = v17;
    v25[2] = v20;
    v25[3] = v19;
    v25[4] = v21;
    v25[5] = v22;
    v25[6] = v23;
    v25[7] = v24;
    v26 = 0;
    if (v23 == v24 && v23 == v18 && v24 == v17)
    {
      v27 = v23 == v21;
      if (v24 != v22)
      {
        v27 = 0;
      }

      if (v23 != v20)
      {
        v27 = 0;
      }

      v26 = v24 == v19 && v27;
    }

    v28 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v16[v28] = v26;
    [v3 bounds];
    CGRectGetHeight(v42);
    [v3 bounds];
    CGRectGetWidth(v43);
    v29 = _SFRoundRectToPixels(v38);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();

    v36 = &v16[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v36 = v29;
    *(v36 + 1) = v31;
    *(v36 + 2) = v33;
    *(v36 + 3) = v35;
    return v16;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAFPreferencesClass_block_invoke_cold_1();
    return AssistantServicesLibrary();
  }

  return result;
}

uint64_t AssistantServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AssistantServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E721F6C0;
    v5 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __shadowImage_block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"active_tab_shadow"];
  v1 = shadowImage_image;
  shadowImage_image = v0;

  [shadowImage_image size];
  _SFOnePixel();
  v2 = shadowImage_image;
  UIEdgeInsetsMakeWithEdges();
  v3 = [v2 resizableImageWithCapInsets:?];
  v4 = shadowImage_image;
  shadowImage_image = v3;
}

void __shadowImage_block_invoke_0()
{
  +[_SFSiteIcon cornerRadius];
  v1 = v0;
  [MEMORY[0x1E6979398] cornerCurveExpansionFactor:*MEMORY[0x1E69796E8]];
  v3 = _SFOnePixel() + (v1 * v2 + 12.0) * 2.0;
  v4 = v3 + 0.0;
  v5 = v3 + 6.0;
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v3 + 0.0, v3 + 6.0}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __shadowImage_block_invoke_2;
  v13[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v13[4] = 0;
  v13[5] = 0;
  *&v13[6] = v4;
  *&v13[7] = v5;
  *&v13[8] = v1;
  v7 = [v6 imageWithActions:v13];
  v8 = shadowImage_image_0;
  shadowImage_image_0 = v7;

  v9 = [shadowImage_image_0 imageWithAlignmentRectInsets:{12.0, 12.0, 18.0, 12.0}];
  v10 = shadowImage_image_0;
  shadowImage_image_0 = v9;

  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsAdd();
  v11 = [shadowImage_image_0 resizableImageWithCapInsets:?];
  v12 = shadowImage_image_0;
  shadowImage_image_0 = v11;
}

void __shadowImage_block_invoke_1()
{
  v0 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"capsule_with_toolbar_shadow"];
  v1 = shadowImage_image_1;
  shadowImage_image_1 = v0;

  [shadowImage_image_1 size];
  _SFOnePixel();
  v2 = shadowImage_image_1;
  UIEdgeInsetsMakeWithEdges();
  v3 = [v2 resizableImageWithCapInsets:?];
  v4 = shadowImage_image_1;
  shadowImage_image_1 = v3;
}

double _SFRoundEdgeInsetsToPixels(double a1)
{
  v2 = _SFScreenScale();
  v3 = round(a1 * v2) / v2;
  _SFScreenScale();
  _SFScreenScale();
  _SFScreenScale();
  return v3;
}

double _SFRoundRectToPixels(double a1)
{
  v2 = _SFScreenScale();
  v3 = round(a1 * v2) / v2;
  _SFScreenScale();
  _SFScreenScale();
  _SFScreenScale();
  return v3;
}

void OUTLINED_FUNCTION_2_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

__CFString *SFAccessibilityTitleForBarItem(uint64_t a1)
{
  v3 = &stru_1EFF36230;
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
      v3 = _WBSLocalizedString();
      break;
    default:
      break;
  }

  return v3;
}

CGFloat _SFFlipRectInCoordinateSpace(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v15.origin.x = a6;
    v15.origin.y = a7;
    v15.size.width = a8;
    v15.size.height = a9;
    MaxX = CGRectGetMaxX(v15);
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    return MaxX - CGRectGetMaxX(v16);
  }

  return a2;
}

void sub_18B7BF738()
{
  sub_18B7E9778(319, &qword_1ED652198, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
  if (v0 <= 0x3F)
  {
    sub_18B7E9778(319, &qword_1ED6521A0, _s11TransactionVMa);
    if (v1 <= 0x3F)
    {
      sub_18BC1EC08();
      if (v2 <= 0x3F)
      {
        sub_18B7E9778(319, &qword_1ED6521A8, _s15MoveItemsIntentVMa);
        if (v3 <= 0x3F)
        {
          _s7ContentVMa(319);
          if (v4 <= 0x3F)
          {
            sub_18B7E9778(319, &qword_1ED6521B0, _s4ItemVMa);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18B7BFA74()
{
  result = _s4ItemVMa();
  if (v1 <= 0x3F)
  {
    result = sub_18B7B0AC0(319, &qword_1EA9D9228);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_18B7BFB08()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _SFMediaStateIcon(319);
    if (v1 <= 0x3F)
    {
      sub_18B7BFC44();
      if (v2 <= 0x3F)
      {
        sub_18B7C0DC8();
        if (v3 <= 0x3F)
        {
          sub_18B7E96A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18B7BFBF8(uint64_t a1, unint64_t *a2)
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

unint64_t sub_18B7BFC44()
{
  result = qword_1ED651EE8[0];
  if (!qword_1ED651EE8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1ED651EE8);
  }

  return result;
}

uint64_t _s11TransactionVMa()
{
  result = qword_1ED6515A8;
  if (!qword_1ED6515A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7BFCE0()
{
  sub_18B7BFD84();
  if (v0 <= 0x3F)
  {
    sub_18B7DCEEC();
    if (v1 <= 0x3F)
    {
      _s14ScrollPositionOMa();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18B7BFD84()
{
  if (!qword_1EA9D68A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D68A8);
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D68A0);
    }
  }
}

uint64_t _s14ScrollPositionOMa()
{
  result = qword_1ED652710;
  if (!qword_1ED652710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s4PageVMa()
{
  result = qword_1ED6525F8;
  if (!qword_1ED6525F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7BFE80(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18BC21848();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_18B7BFECC()
{
  if (!qword_1ED6513A0)
  {
    _s7SectionVMa_0();
    v0 = sub_18BC20E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6513A0);
    }
  }
}

void sub_18B7BFF24()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18B7BFFC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B7BFFC0()
{
  if (!qword_1ED651398)
  {
    _s4ItemVMa();
    v0 = sub_18BC20E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED651398);
    }
  }
}

void sub_18B7C0018()
{
  _s15MoveItemsIntentV11DestinationOMa(319);
  if (v0 <= 0x3F)
  {
    _s4PageVMa();
    if (v1 <= 0x3F)
    {
      sub_18B7DD098(319, &qword_1ED651398, _s4ItemVMa);
      if (v2 <= 0x3F)
      {
        sub_18B7E96A0();
        if (v3 <= 0x3F)
        {
          sub_18B7C016C();
          if (v4 <= 0x3F)
          {
            sub_18B7DD098(319, &qword_1ED6513A0, _s7SectionVMa_0);
            if (v5 <= 0x3F)
            {
              sub_18B7C0294();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_18B7C016C()
{
  if (!qword_1EA9D6310)
  {
    _s4ItemVMa();
    sub_18B7E7E10(&unk_1EA9D9270, _s4ItemVMa);
    v0 = sub_18BC209F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D6310);
    }
  }
}

uint64_t sub_18B7C0204(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18B7C0294()
{
  if (!qword_1EA9D6318)
  {
    _s4ItemVMa();
    _s4PageVMa();
    sub_18B7E7E10(&unk_1EA9D9270, _s4ItemVMa);
    v0 = sub_18BC209F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D6318);
    }
  }
}

void sub_18B7C0340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_18B7C03A8()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = CGRectMake;
  *(v0 + 32) = 0;
  *(v0 + 40) = sub_18BB11750;
  *(v0 + 48) = 0;
  *(v0 + 56) = CGRectMake;
  *(v0 + 64) = 0;
  type metadata accessor for Assertion();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v0 + 72) = v1;
  v2 = *(*v0 + 152);
  v3 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = *(*v0 + 160);
  v5 = sub_18BC1EC08();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + *(*v0 + 168), 1, 1, v5);
  return v0;
}

uint64_t sub_18B7C0554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s15MoveItemsIntentV11DestinationOMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s4PageVMa();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

double sub_18B7C065C()
{
  if (qword_1EA9D2310 != -1)
  {
    swift_once();
  }

  LOWORD(xmmword_1EA9D5DF8) = 0;
  BYTE2(xmmword_1EA9D5DF8) = 0;
  *(&xmmword_1EA9D5DF8 + 1) = MEMORY[0x1E69E7CC0];
  qword_1EA9D5E08 = 0x1000001000100;
  word_1EA9D5E10 = 257;
  byte_1EA9D5E12 = 1;
  xmmword_1EA9D5E18 = xmmword_18BC44B40;
  qword_1EA9D5E28 = 0x4020000000000000;
  result = 7.29112205e-304;
  dword_1EA9D5E30 = 0x1000000;
  byte_1EA9D5E34 = byte_1EA9D5F39;
  byte_1EA9D5E35 = 0;
  return result;
}

id sub_18B7C0740(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = sub_18B7C07CC();
  v6 = *&v5[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v7 = a3();

  return v7;
}

id sub_18B7C0800(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(char *))
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    objc_allocWithZone(a2(0));
    v8 = v3;
    v9 = a3(v3);
    v10 = *&v3[v4];
    *&v8[v4] = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

char *sub_18B7C08B0(char *a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher;
  type metadata accessor for QuickTabSwitcher(0);
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_transitionContainerView;
  type metadata accessor for PassthroughView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_didDeferContentUpdate] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem____lazy_storage___defaultVisibilityAssertion] = 0;
  v5 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion;
  type metadata accessor for Assertion();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 0;
  *&v1[v5] = v6;
  v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled] = 1;
  swift_unknownObjectUnownedInit();
  v16.receiver = v1;
  v16.super_class = _s11DisplayItemCMa();
  v7 = objc_msgSendSuper2(&v16, sel_init);
  v8 = OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher;
  v9 = *&v7[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = (v9 + qword_1EA9F8548);
  *v11 = sub_18B99B244;
  v11[1] = v10;
  v12 = v7;

  v13 = *&v7[v8];

  v14 = *&a1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabSnapshotPool];
  sub_18BC1E1A8();

  *&v13[qword_1EA9F8550] = v14;

  return v12;
}

uint64_t sub_18B7C0A74()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

void sub_18B7C0ACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18BC21848();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B7C0B20()
{
  sub_18B7C0ACC(319, &qword_1EA9DBDE0, _s4ItemVMa_4);
  if (v0 <= 0x3F)
  {
    sub_18B7C0ACC(319, &qword_1EA9DBDE8, type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t _s4ItemVMa_4()
{
  result = qword_1EA9D6A48;
  if (!qword_1EA9D6A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7C0CFC()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _SFMediaStateIcon(319);
    if (v1 <= 0x3F)
    {
      sub_18B7C0DC8();
      if (v2 <= 0x3F)
      {
        sub_18B7E96A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18B7C0DC8()
{
  if (!qword_1ED6515E8)
  {
    sub_18BA3F908();
    v0 = sub_18BC20E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6515E8);
    }
  }
}

uint64_t sub_18B7C0E40()
{
  result = _s4ItemVMa_4();
  if (v1 <= 0x3F)
  {
    result = sub_18B7B0AC0(319, &qword_1EA9D46F0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s6LayoutCMa_3()
{
  result = qword_1EA9D5538;
  if (!qword_1EA9D5538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7C0F20()
{
  _s7ContentVMa_4();
  if (v0 <= 0x3F)
  {
    sub_18B7C1400(319, &qword_1EA9D5548, _s15PanGestureStateVMa);
    if (v1 <= 0x3F)
    {
      sub_18B7C1400(319, &qword_1EA9D5550, _s17PinchGestureStateVMa);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t _s7ContentVMa_4()
{
  result = qword_1EA9D4880;
  if (!qword_1EA9D4880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7C10F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s4ItemVMa_4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_18B7C1158()
{
  sub_18B7C10F8(319, &qword_1EA9D4890, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_18B7C12D4();
    if (v1 <= 0x3F)
    {
      sub_18B7C10F8(319, &qword_1EA9DBDE0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_18B7C13B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18B7C1244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B7C128C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18B7C12D4()
{
  if (!qword_1EA9D4898)
  {
    _s4ItemVMa_4();
    sub_18B7C1244(&qword_1EA9D48A0, _s4ItemVMa_4);
    v0 = sub_18BC210E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D4898);
    }
  }
}

void sub_18B7C13B0()
{
  if (!qword_1EA9D48A8)
  {
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D48A8);
    }
  }
}

void sub_18B7C1400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18BC21848();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B7C1474()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    _s4ItemVMa_4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B7C155C()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    _s4ItemVMa_4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18B7C1664()
{
  result = sub_18BC21848();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void *sub_18B7C17A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7070);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7078);
  v7 = sub_18BC21D88();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  sub_18BC1E1A8();
  sub_18B7CA054(a1 + v9, v5, &qword_1EA9D7070);
  v11 = sub_18BB8B258(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  v14 = *(*(_s4ItemVMa_4() - 8) + 72);
  v15 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    sub_18B80D3BC(v5, v7[6] + v14 * v13, _s4ItemVMa_4);
    result = memmove((v7[7] + 80 * v13), &v5[v8], 0x49uLL);
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_18B7CA054(v15, v5, &qword_1EA9D7070);
    v13 = sub_18BB8B258(v5);
    v15 += v10;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_18B7C19C0(double a1, double a2, double a3, double a4)
{
  *&v4[qword_1EA9DBD68] = 0;
  *&v4[qword_1EA9DBD70] = 0;
  *&v4[qword_1EA9DBD78] = 0;
  v4[qword_1EA9F8518] = 1;
  v9 = &v4[qword_1EA9F8520];
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_18B7C17A0(MEMORY[0x1E69E7CC0]);
  *v9 = CGRectMake;
  v9[1] = 0;
  v9[2] = v11;
  v9[3] = CGRectMake;
  v9[4] = 0;
  v12 = &v4[qword_1EA9F8528];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v4[qword_1EA9F8530] = 0;
  v13 = &v4[qword_1EA9F8538];
  *v13 = CGRectMake;
  v13[1] = 0;
  v13[2] = CGRectMake;
  v13[3] = 0;
  v13[4] = sub_18B8390A8;
  v13[5] = 0;
  v13[6] = CGRectMake;
  v13[7] = 0;
  v13[8] = CGRectMake;
  v13[9] = 0;
  v13[10] = CGRectMake;
  v13[11] = 0;
  v13[12] = CGRectMake;
  v13[13] = 0;
  v13[14] = sub_18B814EE4;
  v13[15] = 0;
  v13[16] = sub_18B814EE4;
  v13[17] = 0;
  v13[18] = sub_18BBF5974;
  v13[19] = 0;
  v13[20] = CGRectMake;
  v13[21] = 0;
  v13[22] = sub_18B7E9C50;
  v13[23] = 0;
  v13[24] = CGRectMake;
  v13[25] = 0;
  v13[26] = CGRectMake;
  v13[27] = 0;
  v13[28] = CGRectMake;
  v13[29] = 0;
  v4[qword_1EA9DBD80] = 0;
  v4[qword_1EA9F8540] = 0;
  v14 = qword_1EA9DBD88;
  v15 = _s4ItemVMa_4();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[qword_1EA9DBD90] = 0;
  v16 = qword_1EA9DBD98;
  type metadata accessor for Assertion();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = 0;
  *&v4[v16] = v17;
  v18 = &v4[qword_1EA9F8548];
  *v18 = CGRectMake;
  v18[1] = 0;
  *&v4[qword_1EA9F8550] = 0;
  v19 = qword_1EA9F8558;
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  *(v20 + 24) = 0;
  *&v4[v19] = v20;
  v21 = &v4[qword_1EA9F8560];
  v22 = *MEMORY[0x1E69DDCE0];
  v23 = *(MEMORY[0x1E69DDCE0] + 8);
  v24 = *(MEMORY[0x1E69DDCE0] + 16);
  v25 = *(MEMORY[0x1E69DDCE0] + 24);
  *v21 = *MEMORY[0x1E69DDCE0];
  v21[1] = v23;
  v21[2] = v24;
  v21[3] = v25;
  v26 = &v4[qword_1EA9F8568];
  v31 = 1;
  *v26 = v22;
  *(v26 + 1) = v23;
  *(v26 + 2) = v24;
  *(v26 + 3) = v25;
  *(v26 + 10) = 0;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 88) = xmmword_18BC556E0;
  v26[104] = 0;
  *(v26 + 14) = 0;
  v26[120] = 1;
  *(v26 + 8) = xmmword_18BC556F0;
  *(v26 + 18) = 0x3FF3333333333333;
  *&v4[qword_1EA9DBDA0] = 0;
  *&v4[qword_1EA9DBDA8] = 0;
  *&v4[qword_1EA9DBDB0] = 0;
  *&v4[qword_1EA9DBDB8] = 0;
  v27 = qword_1EA9F8570;
  v28 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  *&v4[qword_1EA9DBDC0] = MEMORY[0x1E69E7CD0];
  v30.receiver = v4;
  v30.super_class = type metadata accessor for QuickTabSwitcher(0);
  return objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_18B7C1E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B7C1F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s4ItemVMa_4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *sub_18B7C1FE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40];
  v13 = &v5[*((*MEMORY[0x1E69E7D40] & v10) + 0x60)];
  *v13 = CGRectMake;
  *(v13 + 1) = 0;
  v14 = *((v12 & v10) + 0x50);
  (*(*(v14 - 8) + 56))(&v5[*((*v11 & *v5) + 0x68)], 1, 1, v14);
  v15 = &v5[*((*v11 & *v5) + 0x70)];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = *((v12 & v10) + 0x58);
  *v15 = CGRectMake;
  *(v15 + 1) = v16;
  *&v5[*((*v11 & *v5) + 0x78)] = 0;
  *&v5[*((*v11 & *v5) + 0x80)] = 0;
  v17 = &v5[*((*v11 & *v5) + 0x88)];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *((*v11 & *v5) + 0x98);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = type metadata accessor for CollectionItemViewManager();
  swift_getTupleTypeMetadata2();
  v22 = sub_18BC20DE8();
  v23 = sub_18B7C2900();
  v24 = sub_18B7C29AC(v22, &type metadata for LayoutItemType, v21, v23);

  *&v5[v20] = v24;
  v25 = *((*v11 & *v5) + 0xA0);
  type metadata accessor for Assertion();
  v26 = swift_allocObject();
  *(v26 + 16) = MEMORY[0x1E69E7CC0];
  *(v26 + 24) = 0;
  *&v5[v25] = v26;
  v27 = &v5[*((*v11 & *v5) + 0xA8)];
  *v27 = 1;
  v28 = type metadata accessor for CollectionView();
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 40) = 0u;
  *(v27 + 7) = 0;
  v33.receiver = v5;
  v33.super_class = v28;
  v29 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = *((*v11 & *v29) + 0x200);
  v31 = v29;
  v30();

  return v31;
}

uint64_t sub_18B7C2414@<X0>(char *a1@<X8>)
{
  v2 = _s4ItemVMa_4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(v3 + 56);
  v12(&v18 - v10, 1, 1, v2);
  v13 = _s7ContentVMa_4();
  v14 = *(v13 + 24);
  v12(&a1[v14], 1, 1, v2);
  v15 = &a1[*(v13 + 28)];
  *v15 = 0;
  v15[8] = 1;
  v16 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v16;
  sub_18B7C267C(v11, &a1[v14]);
  sub_18B7C27C0(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_18B988BAC(v11, &qword_1EA9DBE00);
    return sub_18B988BAC(v9, &qword_1EA9DBE00);
  }

  else
  {
    sub_18B80D4EC(v9, v5, _s4ItemVMa_4);
    sub_18B7ED058(v5, _s4ItemVMa_4);
    result = sub_18B988BAC(v11, &qword_1EA9DBE00);
    *v15 = 0;
    v15[8] = 1;
  }

  return result;
}

uint64_t sub_18B7C267C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B7C2700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18B7C27C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18B7C2900()
{
  result = qword_1EA9D9AF8[0];
  if (!qword_1EA9D9AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D9AF8);
  }

  return result;
}

unint64_t sub_18B7C2958()
{
  result = qword_1EA9DBBC8;
  if (!qword_1EA9DBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBBC8);
  }

  return result;
}

uint64_t sub_18B7C29AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_18BC20E28())
  {
    sub_18BC21D98();
    v13 = sub_18BC21D88();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  sub_18BC1E1A8();
  result = sub_18BC20E28();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_18BC20E08())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_18BC21B08();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_18B84FAF0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_18B7C2C98(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_18B7C2D1C(&selRef_setFrame_, a2, a3, a4, a5);
}

id sub_18B7C2D1C(SEL *a1, double a2, double a3, double a4, double a5)
{
  v20.receiver = v5;
  v20.super_class = type metadata accessor for QuickTabSwitcher(0);
  objc_msgSendSuper2(&v20, *a1, a2, a3, a4, a5);
  [v5 bounds];
  v11 = &v5[qword_1EA9F8568];
  *(v11 + 6) = v12;
  *(v11 + 7) = v13;
  *(v11 + 8) = v14;
  *(v11 + 9) = v15;
  [v5 setNeedsLayout];
  v16 = [v5 traitCollection];
  [v16 displayCornerRadius];
  v18 = v17;

  *(v11 + 10) = v18;
  return [v5 setNeedsLayout];
}

id sub_18B7C2E14(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for QuickTabSwitcher(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_18B7C2E6C()
{
  swift_getObjectType();
  sub_18B7C331C();
  v1 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v2 = &v0[qword_1EA9F8520];
  swift_beginAccess();
  *v2 = sub_18BC0D600;
  v2[1] = v1;

  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v2[3] = sub_18BC0D608;
  v2[4] = v3;

  v4 = [v0 effectiveUserInterfaceLayoutDirection] == 1;
  v5 = &v0[qword_1EA9F8568];
  v0[qword_1EA9F8568 + 104] = v4;
  [v0 setNeedsLayout];
  v6 = sub_18B7C36E4();
  [v6 setAllowedScrollTypesMask_];

  [*&v0[qword_1EA9DBD68] setMaximumNumberOfTouches_];
  v7 = sub_18B7C3778();
  [v7 setDelegate_];

  v8 = qword_1EA9DBD70;
  [*&v0[qword_1EA9DBD70] setMaximumNumberOfTouches_];
  [*&v0[v8] setMinimumNumberOfTouches_];
  v9 = sub_18B7C37F4();
  [v9 setDelegate_];

  [*&v0[qword_1EA9DBD78] _setEndsOnSingleTouch_];
  swift_unknownObjectUnownedInit();
  sub_18B7C3810(v32, 0xD000000000000014, 0x800000018BC60730, v0);
  sub_18B7C425C(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18BC3E410;
  v11 = sub_18BC1FA18();
  v12 = MEMORY[0x1E69DC128];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_18BC21568();
  swift_unknownObjectRelease();

  v14 = sub_18B7C2E68(v13);
  [v14 setContentInsetAdjustmentBehavior_];

  v16 = sub_18B7C2E68(v15);
  [v16 setScrollEnabled_];

  [v0 bounds];
  *(v5 + 6) = v17;
  *(v5 + 7) = v18;
  *(v5 + 8) = v19;
  *(v5 + 9) = v20;
  [v0 setNeedsLayout];
  v21 = [v0 traitCollection];
  [v21 displayCornerRadius];
  v23 = v22;

  *(v5 + 10) = v23;
  [v0 setNeedsLayout];
  [v0 setHidden_];
  v24 = *&v0[qword_1EA9F8558];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_18BC0D610;
  *(v26 + 24) = v25;
  swift_beginAccess();
  v27 = *(v24 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 16) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_18B7C358C(0, v27[2] + 1, 1, v27);
    *(v24 + 16) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_18B7C358C((v29 > 1), v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  v31 = &v27[2 * v30];
  v31[4] = sub_18B7FCC54;
  v31[5] = v26;
  *(v24 + 16) = v27;
  swift_endAccess();
}

uint64_t sub_18B7C32E0()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B7C331C()
{
  v1 = sub_18B7C2E68();
  [v1 setClipsToBounds_];

  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  [*(v0 + v3) setDelegate_];
  [v0 addSubview_];
  v4 = *(v0 + *((*v2 & *v0) + 0xA0));
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_18BC0D658;
  *(v6 + 24) = v5;
  swift_beginAccess();
  v7 = *(v4 + 16);
  sub_18BC1E1A8();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_18B7C358C(0, v7[2] + 1, 1, v7);
    *(v4 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_18B7C358C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_18B7FCC48;
  v11[5] = v6;
  *(v4 + 16) = v7;
  swift_endAccess();
}

id sub_18B7C34FC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_18B7C35B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

id sub_18B7C3700(uint64_t *a1, void *a2, Class *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(*a3) initWithTarget:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_18B7C3778()
{
  v1 = qword_1EA9DBD70;
  v2 = *(v0 + qword_1EA9DBD70);
  if (v2)
  {
    v3 = *(v0 + qword_1EA9DBD70);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v0 action:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18B7C3810(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_18B7C3A28(a1, v17);
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE10);
  v9 = swift_allocObject();
  sub_18BC1E3F8();
  v10 = sub_18B7C3A60(v17, sub_18BC0D618, v8, v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  swift_beginAccess();
  v10[8] = sub_18BC0D624;
  v10[9] = v12;
  sub_18BC1E3F8();

  v13 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x98);
  swift_beginAccess();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + v13);
  *(a4 + v13) = 0x8000000000000000;
  sub_18B7C3FBC(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a4 + v13) = v16;
  swift_endAccess();
}

void *sub_18B7C3A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = &type metadata for QuickTabSwitcher.ItemViewRegistration;
  v15 = sub_18B7C3B50();
  *&v13 = swift_allocObject();
  sub_18B7C3D88(a1, v13 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  a4[4] = sub_18B7C3BA4(MEMORY[0x1E69E7CC0]);
  v9 = sub_18B7C3DC0(v8);
  a4[5] = CGRectMake;
  a4[6] = 0;
  a4[7] = v9;
  v10 = sub_18B7C3DC0(v8);
  a4[8] = CGRectMake;
  a4[9] = 0;
  v11 = MEMORY[0x1E69E7CD0];
  a4[10] = v10;
  a4[11] = v11;
  a4[17] = sub_18B7C3BA4(v8);
  a4[2] = a2;
  a4[3] = a3;
  sub_18B7C3FA4(&v13, (a4 + 12));
  return a4;
}

unint64_t sub_18B7C3B50()
{
  result = qword_1EA9DBE20;
  if (!qword_1EA9DBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBE20);
  }

  return result;
}

unint64_t sub_18B7C3BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7060);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7068);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7060);
      result = sub_18BB8B258(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_4();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_4);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_18B7C3DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7058);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7050);
      result = sub_18BB8B258(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_4();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_4);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_18B7C3FA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_18B7C3FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B7C4104(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18BB2CCD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18B7C4180(v16, a4 & 1);
    v11 = sub_18B7C4104(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18BC22078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_18BB33460(v11, a2, a3, a1, v21);

    return sub_18BC1E3F8();
  }
}

unint64_t sub_18B7C410C(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  sub_18BC20C28();
  v4 = sub_18BC221A8();
  return sub_18B7C4194(a1, a2, v4);
}

unint64_t sub_18B7C4194(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18BC21FD8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_18B7C428C(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_18B7C4314(a2, 0, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_18B7C4314(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  [v6 setValue_];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18BC3E3E0;
  *(v8 + 32) = v6;
  sub_18B7B0AC0(0, &qword_1EA9D50B0);
  v9 = v6;
  v10 = sub_18BC20D88();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v15[4] = sub_18BC0DC0C;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_18B7B0DB0;
  v15[3] = &block_descriptor_378_0;
  v13 = _Block_copy(v15);
  sub_18BC1E1A8();

  [v7 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v13);

  return v9;
}

void sub_18B7C46DC(uint64_t a1, void (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC3E410;
  v6 = sub_18BC1F6A8();
  v7 = MEMORY[0x1E69DC050];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  a2(a1);
  sub_18BC21568();
  swift_unknownObjectRelease();

  v11 = [v2 layer];
  v8 = [v2 traitCollection];
  [v8 displayScale];
  v10 = v9;

  [v11 setRasterizationScale_];
}

Swift::Void __swiftcall SFTabSwitcher.loadView()()
{
  v16.super_class = SFTabSwitcher;
  objc_msgSendSuper2(&v16, sel_loadView);
  v1 = *&v0[OBJC_IVAR___SFTabSwitcher_wrapped];
  [v0 addChildViewController_];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v3 setFrame_];
    [v3 setAutoresizingMask_];
    [v1 didMoveToParentViewController_];

    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_18B7C4B54()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5330);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v103 - v3;
  v5 = type metadata accessor for TabSwitcher(0);
  v107.receiver = v0;
  v107.super_class = v5;
  objc_msgSendSuper2(&v107, sel_viewDidLoad);
  sub_18B7C57FC();
  v6 = _s7ContentVMa(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  result = sub_18B7D6E1C();
  v8 = result;
  if (result >> 62)
  {
LABEL_44:
    result = sub_18BC219A8();
    v9 = result;
  }

  else
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7D40];
  if (v9)
  {
    if (v9 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x18CFFD010](i, v8);
      }

      else
      {
        v12 = *(v8 + 8 * i + 32);
      }

      v13 = v12;
      (*((*v10 & *v12) + 0xE0))(v4);
    }
  }

  sub_18B988BAC(v4, &qword_1EA9D5330);
  v14 = sub_18B7EDAC4();
  v15 = v14;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
    v4 = sub_18BC219A8();
  }

  else
  {
    v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  do
  {
    v8 = v17;
    if (v4 == v17)
    {
      break;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x18CFFD010](v17, v15);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      v18 = sub_18BC1E1A8();
      if (__OFADD__(v8, 1))
      {
LABEL_21:
        __break(1u);
        break;
      }
    }

    v19 = *(v18 + 24);

    v17 = (v8 + 1);
  }

  while (v19 < 1);
  v20 = v4 != v8;

  v21 = v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible];
  v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible] = v20;
  if (v20 != v21)
  {
    sub_18BB0601C();
  }

  sub_18B7EE058();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = &v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations];
  swift_beginAccess();
  *v23 = sub_18BB114D4;
  v23[1] = v22;

  v24 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewManager;
  v25 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewManager];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v25 + 24) = sub_18BB114DC;
  *(v25 + 32) = v26;

  v27 = *&v1[v24];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v27 + 40) = sub_18BB114E4;
  *(v27 + 48) = v28;

  v29 = *&v1[v24];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 56) = sub_18BB114EC;
  *(v29 + 64) = v30;

  v31 = sub_18B7C07CC();
  v32 = *&v31[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v33 = *&v1[v24];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9370);
  *(&v105 + 1) = v34;
  v106 = sub_18B7B0B08(&qword_1EA9D9378, &qword_1EA9D9370);
  *&v104 = v33;
  v35 = v32 + qword_1EA9F8528;
  swift_beginAccess();
  v36 = *(v35 + 24);
  sub_18BC1E1A8();
  if (!v36)
  {
    if (v34)
    {
      goto LABEL_26;
    }

LABEL_28:
    v37 = v104;
    v38 = v105;
    *(v35 + 32) = v106;
    *v35 = v37;
    *(v35 + 16) = v38;
    goto LABEL_29;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (!v34)
  {
    goto LABEL_28;
  }

LABEL_26:
  sub_18B7C3FA4(&v104, v35);
LABEL_29:
  swift_endAccess();

  v39 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem;
  v40 = *(*&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = (v40 + qword_1EA9F8538);
  *v42 = sub_18BB114F4;
  v42[1] = v41;

  v43 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v43 + qword_1EA9F8538;
  *(v45 + 16) = sub_18BB114FC;
  *(v45 + 24) = v44;

  v46 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = v46 + qword_1EA9F8538;
  *(v48 + 32) = sub_18BB11504;
  *(v48 + 40) = v47;

  v49 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v49 + qword_1EA9F8538;
  *(v51 + 48) = sub_18BB1150C;
  *(v51 + 56) = v50;

  v52 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = v52 + qword_1EA9F8538;
  *(v54 + 64) = sub_18BB1153C;
  *(v54 + 72) = v53;

  v55 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = v55 + qword_1EA9F8538;
  *(v57 + 80) = sub_18BB1150C;
  *(v57 + 88) = v56;

  v58 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v58 + qword_1EA9F8538;
  *(v60 + 112) = sub_18BB11544;
  *(v60 + 120) = v59;

  v61 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = v61 + qword_1EA9F8538;
  *(v63 + 128) = sub_18BB1154C;
  *(v63 + 136) = v62;

  v64 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v64 + qword_1EA9F8538;
  *(v66 + 96) = sub_18BB11554;
  *(v66 + 104) = v65;

  v67 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = v67 + qword_1EA9F8538;
  *(v69 + 144) = sub_18BB1155C;
  *(v69 + 152) = v68;

  v70 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = v70 + qword_1EA9F8538;
  *(v72 + 160) = sub_18BB11564;
  *(v72 + 168) = v71;

  v73 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = v73 + qword_1EA9F8538;
  *(v75 + 176) = sub_18BB11594;
  *(v75 + 184) = v74;

  v76 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v76 + qword_1EA9F8538;
  *(v78 + 192) = sub_18BB1159C;
  *(v78 + 200) = v77;

  v79 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = v79 + qword_1EA9F8538;
  *(v81 + 208) = sub_18BB115A4;
  *(v81 + 216) = v80;

  v82 = *(*&v1[v39] + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = v82 + qword_1EA9F8538;
  *(v84 + 224) = sub_18BB115AC;
  *(v84 + 232) = v83;

  v85 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionAssertion];
  v86 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v87 = swift_allocObject();
  *(v87 + 16) = sub_18BB115DC;
  *(v87 + 24) = v86;
  swift_beginAccess();
  v88 = *(v85 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v85 + 16) = v88;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v88 = sub_18B7C358C(0, v88[2] + 1, 1, v88);
    *(v85 + 16) = v88;
  }

  v91 = v88[2];
  v90 = v88[3];
  if (v91 >= v90 >> 1)
  {
    v88 = sub_18B7C358C((v90 > 1), v91 + 1, 1, v88);
  }

  v88[2] = v91 + 1;
  v92 = &v88[2 * v91];
  v92[4] = sub_18BB116C4;
  v92[5] = v87;
  *(v85 + 16) = v88;
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_18BC3E400;
  v94 = sub_18BC1FA28();
  v95 = MEMORY[0x1E69DC130];
  *(v93 + 32) = v94;
  *(v93 + 40) = v95;
  v96 = sub_18BC1F748();
  v97 = MEMORY[0x1E69DC0C8];
  *(v93 + 48) = v96;
  *(v93 + 56) = v97;
  sub_18BC212D8();
  swift_unknownObjectRelease();

  v98 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___displayItems];
  if (v98 >> 62)
  {
    result = sub_18BC219A8();
    v99 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v99)
    {
      return result;
    }
  }

  if (v99 < 1)
  {
    goto LABEL_49;
  }

  sub_18BC1E3F8();
  for (j = 0; j != v99; ++j)
  {
    if ((v98 & 0xC000000000000001) != 0)
    {
      v101 = MEMORY[0x18CFFD010](j, v98);
    }

    else
    {
      v101 = *(v98 + 8 * j + 32);
    }

    v102 = v101;
    (*((*v10 & *v101) + 0x128))();
  }
}

uint64_t sub_18B7C5750()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B7C5788()
{

  return swift_deallocObject();
}

uint64_t sub_18B7C57C0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

void sub_18B7C57FC()
{
  v1 = v0;
  v2 = sub_18B7C5C10();
  v3 = *&v2[OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView];
  v4 = v3;

  if (v3)
  {
    v5 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48];
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem;
  v7 = *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem);
  v47[4] = v5;
  v8 = *&v7[OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  v47[5] = v9;
  v11 = v7;
  sub_18B7C9974();
  v13 = v12;

  v47[6] = v13;
  v14 = *(v1 + v6);
  v15 = *(v14 + OBJC_IVAR___SFTabOverviewDisplayItem_transitionContainerView);
  v47[7] = v15;
  v16 = *(v14 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView);
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 56);
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  v47[8] = v17;
  v19 = *(v14 + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView);
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 56);
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v47[9] = v20;
  v48 = *(v14 + OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView);
  v49 = *(v14 + OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView);
  v50 = *(v14 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView);
  v22 = v15;
  v23 = v48;
  v24 = v49;
  v25 = v50;
  v26 = sub_18B7C07CC();
  v27 = *&v26[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v51 = v27;
  v28 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem;
  v52 = *(*(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem) + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_transitionContainerView);
  v29 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  v30 = v52;
  v31 = 0;
LABEL_14:
  if (v31 <= 0xB)
  {
    v32 = 11;
  }

  else
  {
    v32 = v31;
  }

  while (1)
  {
    if (v31 == 11)
    {
      v45 = v28;
      v31 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CF0);
      swift_arrayDestroy();
      if (v29 >> 62)
      {
        goto LABEL_37;
      }

      v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

    if (v32 == v31)
    {
      break;
    }

    v33 = v47[v31++ + 4];
    if (v33)
    {
      v34 = v33;
      MEMORY[0x18CFFC270]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v29 = v46;
      goto LABEL_14;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v35 = sub_18BC219A8();
    if (!v35)
    {
      break;
    }

LABEL_25:
    v36 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x18CFFD010](v36, v29);
      }

      else
      {
        if (v36 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v37 = *(v29 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v40 = [v37 layer];
      [v40 setZPosition_];

      v41 = [v31 view];
      if (!v41)
      {
        __break(1u);
        goto LABEL_41;
      }

      v42 = v41;
      [v41 addSubview_];

      ++v36;
      if (v39 == v35)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_38:
  v43 = [v31 view];
  if (v43)
  {
    v44 = v43;

    [v44 sendSubviewToBack_];
  }

  else
  {
LABEL_41:
    __break(1u);
  }
}

uint64_t type metadata accessor for TabOverviewDisplayItem()
{
  result = qword_1ED6512F0;
  if (!qword_1ED6512F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B7C5C90()
{
  result = _s6LayoutVMa();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t _s6LayoutVMa()
{
  result = qword_1ED652360;
  if (!qword_1ED652360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7C5DF0()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      sub_18B7C5EF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18B7C5EF4()
{
  if (!qword_1ED652370)
  {
    _s4PageVMa();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED652370);
    }
  }
}

uint64_t sub_18B7C5F4C(char *a1)
{
  isEscapingClosureAtFileLocation = v1;
  v243 = a1;
  v3 = sub_18BC1EE48();
  v240 = *(v3 - 8);
  v241 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v239 = &v236 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v238 = &v236 - v6;
  *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager) = 0;
  v7 = OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup;
  type metadata accessor for InteractiveInsertionGroup();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0x3FE0000000000000;
  *(isEscapingClosureAtFileLocation + v7) = v8;
  sub_18B7C8360(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_layout);
  *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarToHUDConstraint) = 0;
  v9 = OBJC_IVAR___SFTabOverviewDisplayItem_scrollViewLinker;
  type metadata accessor for ScrollViewLinker();
  v10 = swift_allocObject();
  v10[2] = 0;
  type metadata accessor for Assertion();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = 0;
  v10[3] = v11;
  v13 = v12;
  v10[4] = sub_18B7C8690(v12);
  *(isEscapingClosureAtFileLocation + v9) = v10;
  *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_searchController) = 0;
  v14 = OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
  type metadata accessor for PassthroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = &selRef_inMemoryDatabase;
  *(isEscapingClosureAtFileLocation + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = OBJC_IVAR___SFTabOverviewDisplayItem_blurrableBarBackgroundContainerView;
  *(isEscapingClosureAtFileLocation + v17) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = objc_opt_self();
  v19 = &selRef_inMemoryDatabase;
  v20 = 0;
  v21 = &xmmword_1EA9F7AB8;
  if ([v18 isSolariumEnabled])
  {
    goto LABEL_4;
  }

  if (qword_1EA9D2228 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v22 = v21[5];
    v253[4] = v21[4];
    v253[5] = v22;
    v254 = *(v21 + 12);
    v23 = v21[1];
    v253[0] = *v21;
    v253[1] = v23;
    v24 = v21[3];
    v253[2] = v21[2];
    v253[3] = v24;
    v25 = objc_allocWithZone(_s17BarBackgroundViewCMa());
    sub_18B9D4798(v253, v250);
    v20 = sub_18B9FA830(v253);
    sub_18B9D47F4(v253);
LABEL_4:
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView) = v20;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView) = 0;
    v26 = OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView;
    *(isEscapingClosureAtFileLocation + v26) = [objc_allocWithZone(ObjCClassFromMetadata) v16[38]];
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView) = 0;
    v27 = OBJC_IVAR___SFTabOverviewDisplayItem_hud;
    _s3HUDCMa();
    *(isEscapingClosureAtFileLocation + v27) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v16[38]];
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_largeProfileButtonItem) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_toolbar) = 0;
    v28 = 0;
    if (([v18 v19[365]] & 1) == 0)
    {
      if (qword_1EA9D2228 != -1)
      {
        swift_once();
      }

      v29 = v21[5];
      v251[4] = v21[4];
      v251[5] = v29;
      v252 = *(v21 + 12);
      v30 = v21[1];
      v251[0] = *v21;
      v251[1] = v30;
      v31 = v21[2];
      v251[3] = v21[3];
      v251[2] = v31;
      v32 = objc_allocWithZone(_s17BarBackgroundViewCMa());
      sub_18B9D4798(v251, v250);
      v28 = sub_18B9FA830(v251);
      sub_18B9D47F4(v251);
    }

    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView) = v28;
    v33 = OBJC_IVAR___SFTabOverviewDisplayItem_transitionContainerView;
    *(isEscapingClosureAtFileLocation + v33) = [objc_allocWithZone(ObjCClassFromMetadata) v16[38]];
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets) = 0;
    v34 = isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_state;
    *v34 = 0x4032000000000000;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0x3F86872B020C49BALL;
    *(v34 + 24) = 1;
    *(v34 + 32) = 0x3FECCCCCCCCCCCCDLL;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___capsuleViewOffsetForRubberBanding) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___hudOffsetForRubberBanding) = 0;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR___SFTabOverviewDisplayItem_showsSidebarToggle) = 1;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem____lazy_storage___defaultVisibilityAssertion) = 0;
    v35 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_sizeTransitionAssertion;
    v36 = swift_allocObject();
    *(v36 + 16) = v13;
    *(v36 + 24) = 0;
    *(isEscapingClosureAtFileLocation + v35) = v36;
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_isUserInteractionEnabled) = 1;
    swift_unknownObjectUnownedInit();
    v37 = _s11DisplayItemCMa();
    v249.receiver = isEscapingClosureAtFileLocation;
    v249.super_class = v37;
    v38 = objc_msgSendSuper2(&v249, v16[38]);
    v39 = sub_18B7DEE8C();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = sub_18B9EA5F0;
    *(v41 + 24) = v40;
    v245 = sub_18B7B0AC0(0, &qword_1EA9D52D0);
    swift_retain_n();
    v42 = sub_18BC20B98();
    v43 = objc_opt_self();
    v242 = v43;
    v44 = [v43 systemImageNamed_];

    v45 = swift_allocObject();
    *(v45 + 16) = sub_18B9EA5F8;
    *(v45 + 24) = v41;
    sub_18BC1E1A8();
    v46 = sub_18BC215E8();
    v47 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v39[v47];
    *&v39[v47] = 0x8000000000000000;
    sub_18B7C8EF4(v46, 0, 0, 0, isUniquelyReferenced_nonNull_native);
    *&v39[v47] = v248[0];
    swift_endAccess();

    v49 = *&v38[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager];
    v50 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager;
    v237 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager;
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_18B9EA608;
    *(v52 + 24) = v51;
    v53 = v49;
    swift_retain_n();
    v54 = sub_18BC20B98();
    v55 = [v43 systemImageNamed_];

    v56 = swift_allocObject();
    *(v56 + 16) = sub_18B9EB53C;
    *(v56 + 24) = v52;
    sub_18BC1E1A8();
    v57 = sub_18BC215E8();
    v58 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v53[v58];
    *&v53[v58] = 0x8000000000000000;
    sub_18B7C8EF4(v57, 0, 0, 1, v59);
    *&v53[v58] = v248[0];
    swift_endAccess();

    v60 = v38;
    v61 = *&v38[v50];
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = swift_allocObject();
    *(v63 + 16) = sub_18B9EA638;
    *(v63 + 24) = v62;
    v64 = v61;
    swift_retain_n();
    v65 = v238;
    sub_18BC1EE38();
    v66 = v239;
    sub_18BC1EE38();
    sub_18BC1EE18();
    v236 = v67;
    v68 = *(v240 + 8);
    v69 = v66;
    v70 = v241;
    v68(v69, v241);
    v68(v65, v70);
    v71 = sub_18BC20B98();
    v72 = v242;
    v73 = [v242 systemImageNamed_];

    v74 = swift_allocObject();
    *(v74 + 16) = sub_18B9EB53C;
    *(v74 + 24) = v63;
    sub_18BC1E1A8();
    v75 = sub_18BC215E8();
    v76 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v64[v76];
    *&v64[v76] = 0x8000000000000000;
    sub_18B7C8EF4(v75, 0, 0, 4, v77);
    *&v64[v76] = v248[0];
    swift_endAccess();

    v78 = v60;
    v244 = v60;
    v79 = v237;
    v80 = *&v78[v237];
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = swift_allocObject();
    *(v82 + 16) = sub_18B9EA640;
    *(v82 + 24) = v81;
    v83 = v80;
    swift_retain_n();
    v84 = sub_18BC20B98();
    v85 = [v72 systemImageNamed_];

    v86 = swift_allocObject();
    *(v86 + 16) = sub_18B9EB53C;
    *(v86 + 24) = v82;
    sub_18BC1E1A8();
    v87 = sub_18BC215E8();
    v88 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v83[v88];
    *&v83[v88] = 0x8000000000000000;
    sub_18B7C8EF4(v87, 0, 0, 5, v89);
    *&v83[v88] = v248[0];
    swift_endAccess();

    v90 = v244;
    v91 = *&v244[v79];
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93 = swift_allocObject();
    *(v93 + 16) = sub_18B9EA648;
    *(v93 + 24) = v92;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_18B9EB53C;
    *(v94 + 24) = v93;
    v95 = v91;
    swift_retain_n();
    sub_18BC1E1A8();
    v96 = sub_18BC215E8();
    v97 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v95[v97];
    *&v95[v97] = 0x8000000000000000;
    sub_18B7C8EF4(v96, 0, 0, 6, v98);
    *&v95[v97] = v248[0];
    swift_endAccess();

    v99 = *&v90[v79];
    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = swift_allocObject();
    *(v101 + 16) = sub_18B9EB458;
    *(v101 + 24) = v100;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_18B9EB53C;
    *(v102 + 24) = v101;
    v103 = v99;
    swift_retain_n();
    sub_18BC1E1A8();
    v104 = sub_18BC215E8();
    v105 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v103[v105];
    *&v103[v105] = 0x8000000000000000;
    sub_18B7C8EF4(v104, 0, 0, 7, v106);
    *&v103[v105] = v248[0];
    swift_endAccess();

    v107 = *&v90[v79];
    v108 = v79;
    v109 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = swift_allocObject();
    *(v110 + 16) = sub_18B9EA678;
    *(v110 + 24) = v109;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_18B9EB53C;
    *(v111 + 24) = v110;
    v112 = v107;
    swift_retain_n();
    sub_18BC1E1A8();
    v113 = sub_18BC215E8();
    v114 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v112[v114];
    *&v112[v114] = 0x8000000000000000;
    sub_18B7C8EF4(v113, 0, 0, 12, v115);
    *&v112[v114] = v248[0];
    swift_endAccess();

    v116 = *&v90[v79];
    v117 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v118 = swift_allocObject();
    *(v118 + 16) = sub_18B9EA6A8;
    *(v118 + 24) = v117;
    v119 = v116;
    swift_retain_n();
    v120 = sub_18BC20B98();
    v121 = v242;
    v122 = [v242 systemImageNamed_];

    v123 = swift_allocObject();
    *(v123 + 16) = sub_18B9EB53C;
    *(v123 + 24) = v118;
    sub_18BC1E1A8();
    v124 = sub_18BC215E8();
    v125 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v119[v125];
    *&v119[v125] = 0x8000000000000000;
    sub_18B7C8EF4(v124, 0, 0, 13, v126);
    *&v119[v125] = v248[0];
    swift_endAccess();

    v127 = *&v90[v108];
    v128 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v129 = v127;
    sub_18BC1E1A8();
    v130 = sub_18BC20B98();
    v131 = [v121 systemImageNamed_];

    v132 = swift_allocObject();
    *(v132 + 16) = sub_18B9EA6B0;
    *(v132 + 24) = v128;
    sub_18BC1E1A8();
    v133 = sub_18BC215E8();
    v134 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v129[v134];
    *&v129[v134] = 0x8000000000000000;
    sub_18B7C8EF4(v133, 0, 0, 14, v135);
    *&v129[v134] = v248[0];
    swift_endAccess();

    v136 = *&v90[v108];
    v137 = objc_opt_self();
    v138 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v250[4] = sub_18B9EA6B8;
    v250[5] = v138;
    v250[0] = MEMORY[0x1E69E9820];
    v250[1] = 1107296256;
    v250[2] = sub_18B9D63E4;
    v250[3] = &block_descriptor_6;
    v139 = _Block_copy(v250);
    v140 = v136;

    v141 = [v137 safari:v139 menuWithUncachedChildrenProvider:?];
    _Block_release(v139);
    v142 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
    swift_beginAccess();
    v143 = v141;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v140[v142];
    *&v140[v142] = 0x8000000000000000;
    sub_18B7DF29C(v143, 4, v144);
    *&v140[v142] = v248[0];
    swift_endAccess();
    sub_18B7DF2DC(0);

    v145 = [objc_opt_self() standardUserDefaults];
    v146 = sub_18BC20B98();
    LODWORD(v143) = [v145 BOOLForKey_];

    if (v143)
    {
      v147 = *&v244[v108];
      v148 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v250[4] = sub_18B9EA6D8;
      v250[5] = v148;
      v250[0] = MEMORY[0x1E69E9820];
      v250[1] = 1107296256;
      v250[2] = sub_18B9D63E4;
      v250[3] = &block_descriptor_260;
      v149 = _Block_copy(v250);
      v150 = v147;

      v151 = [v137 safari:v149 menuWithUncachedChildrenProvider:?];
      _Block_release(v149);
      v152 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
      swift_beginAccess();
      v153 = v151;
      v154 = swift_isUniquelyReferenced_nonNull_native();
      v248[0] = *&v150[v152];
      *&v150[v152] = 0x8000000000000000;
      sub_18B7DF29C(v153, 14, v154);
      *&v150[v152] = v248[0];
      swift_endAccess();
      sub_18B7DF2DC(0);
    }

    v155 = v108;
    v156 = v244;
    v157 = *&v244[v108];
    v158 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v250[4] = sub_18B9EA6C0;
    v250[5] = v158;
    v250[0] = MEMORY[0x1E69E9820];
    v250[1] = 1107296256;
    v250[2] = sub_18B9D63E4;
    v250[3] = &block_descriptor_225;
    v159 = _Block_copy(v250);
    v160 = v157;

    v161 = [v137 safari:v159 menuWithUncachedChildrenProvider:?];
    _Block_release(v159);
    v162 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
    swift_beginAccess();
    v163 = v161;
    v164 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v160[v162];
    *&v160[v162] = 0x8000000000000000;
    sub_18B7DF29C(v163, 0, v164);
    *&v160[v162] = v248[0];
    swift_endAccess();
    sub_18B7DF2DC(0);

    v165 = *&v156[v108];
    v166 = sub_18B7CCA2C();
    v167 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    v245 = v137;
    swift_beginAccess();
    v168 = v166;
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v165[v167];
    *&v165[v167] = 0x8000000000000000;
    sub_18B7C8EF4(v166, 0, 1, 2, v169);
    *&v165[v167] = v248[0];
    swift_endAccess();
    sub_18B7DF2DC(0);

    v170 = *&v156[v108];
    v171 = sub_18B7CCC04();
    v172 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v173 = v171;
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v170[v172];
    *&v170[v172] = 0x8000000000000000;
    sub_18B7C8EF4(v171, 0, 1, 8, v174);
    *&v170[v172] = v248[0];
    swift_endAccess();
    sub_18B7DF2DC(0);

    v175 = *&v156[v155];
    v176 = v155;
    v177 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v250[4] = sub_18B9EA6C8;
    v250[5] = v177;
    v250[0] = MEMORY[0x1E69E9820];
    v250[1] = 1107296256;
    v250[2] = sub_18B9D63E4;
    v250[3] = &block_descriptor_229;
    v178 = _Block_copy(v250);
    v179 = v175;

    v180 = [v245 safari:v178 menuWithUncachedChildrenProvider:?];
    _Block_release(v178);
    v181 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v182 = v180;
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v179[v181];
    *&v179[v181] = 0x8000000000000000;
    sub_18B7C8EF4(v180, 2, 1, 9, v183);
    *&v179[v181] = v248[0];
    swift_endAccess();
    sub_18B7DF2DC(0);

    v184 = *&v156[v176];
    v185 = sub_18B7E1454();
    v186 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v187 = v185;
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v248[0] = *&v184[v186];
    *&v184[v186] = 0x8000000000000000;
    sub_18B7C8EF4(v185, 2, 1, 10, v188);
    *&v184[v186] = v248[0];
    swift_endAccess();
    sub_18B7DF2DC(0);

    v189 = OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView;
    v16 = OBJC_IVAR___SFTabOverviewDisplayItem_hud;
    [*&v156[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] addSubview_];
    [*&v156[v189] _setIgnoresLayerTransformForSafeAreaInsets_];
    v190 = *&v156[v189];
    v191 = v190[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
    v190[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 0;
    if (v191 == 1)
    {
      v192 = v190;
      v193 = sub_18B7DE654();
      [v193 value];
      v195 = v194;

      v196 = swift_allocObject();
      *(v196 + 16) = v192;
      *(v196 + 24) = v195;
      v197 = objc_opt_self();
      v198 = swift_allocObject();
      *(v198 + 16) = sub_18B7EA1B8;
      *(v198 + 24) = v196;
      v199 = swift_allocObject();
      *(v199 + 16) = sub_18B9D53AC;
      *(v199 + 24) = v198;
      v250[4] = sub_18B9D53B0;
      v250[5] = v199;
      v250[0] = MEMORY[0x1E69E9820];
      v250[1] = 1107296256;
      v250[2] = sub_18B7E3BF4;
      v250[3] = &block_descriptor_256;
      v200 = _Block_copy(v250);
      v201 = v192;
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v197 performWithoutAnimation_];
      _Block_release(v200);
      LOBYTE(v197) = swift_isEscapingClosureAtFileLocation();

      if (v197)
      {
        break;
      }
    }

    v203 = v244;
    [*(v16 + v244) setTranslatesAutoresizingMaskIntoConstraints_];
    v204 = *&v203[OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup];
    v205 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v206 = *(v204 + 16);
    *(v204 + 16) = sub_18B9EA6D0;
    *(v204 + 24) = v205;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18B7B171C(v206);

    sub_18B7C9974();
    v208 = v207;
    sub_18B7CCD40(v250);
    memcpy(v248, &v208[qword_1EA9D6BA8], sizeof(v248));
    memcpy(&v208[qword_1EA9D6BA8], v250, 0x190uLL);
    sub_18B7CD468(v250, v246);
    sub_18B7CD4C4(v248);
    sub_18B7CD518();
    sub_18B7CD4C4(v250);

    v209 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher;
    *(*&v203[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher] + qword_1EA9D6BC0 + 8) = &off_1EFF1F368;
    swift_unknownObjectWeakAssign();
    v210 = *&v203[v209];
    v211 = *&v210[qword_1EA9D6BD0];
    *&v210[qword_1EA9D6BD0] = *&v203[OBJC_IVAR___SFTabOverviewDisplayItem_scrollViewLinker];
    swift_retain_n();
    v212 = v210;
    sub_18B7CDE48(v211);

    *(*&v203[v209] + qword_1EA9D6BD8 + 8) = &off_1EFF1F358;
    swift_unknownObjectWeakAssign();

    v213 = *&v203[v209];
    v214 = v243;
    *&v213[qword_1EA9D6BE0] = *&v243[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabIconPool];
    v215 = v213;
    sub_18BC1E1A8();

    v216 = *&v203[v209];
    *&v216[qword_1EA9D6BE8] = *&v214[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabSnapshotPool];
    v217 = v216;
    sub_18BC1E1A8();

    sub_18B7CF428();
    v218 = *&v203[OBJC_IVAR___SFTabOverviewDisplayItem_state];
    v219 = v203[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
    v220 = v203[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
    v221 = *&v203[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
    v222 = v203[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
    v223 = *&v203[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
    if (v220 == 1)
    {
      result = sub_18B7EDC84();
      v224 = *(result + 24);
      v225 = __OFADD__(v224, 1);
      v226 = v224 + 1;
      if (v225)
      {
        goto LABEL_25;
      }

      v227 = result;
      *(result + 24) = v226;
      if (v226 == 1)
      {
        swift_beginAccess();
        v228 = *(v227 + 16);
        v16 = *(v228 + 16);
        if (v16)
        {
          sub_18BC1E3F8();
          v229 = v228 + 40;
          do
          {
            v230 = *(v229 - 8);
            LOBYTE(v246[0]) = *(v227 + 24) > 0;
            sub_18BC1E1A8();
            v230(v246);

            v229 += 16;
            v16 = (v16 - 1);
          }

          while (v16);
        }
      }
    }

    v231 = v244;
    v232 = &v244[OBJC_IVAR___SFTabOverviewDisplayItem_layout];
    swift_beginAccess();
    *(v232 + 31) = v218;
    v232[256] = v219;
    v232[257] = v220;
    *(v232 + 33) = v221;
    v232[272] = v222;
    *(v232 + 35) = v223;
    v18 = swift_allocObject();
    v18[2] = v231;
    ObjCClassFromMetadata = objc_opt_self();
    v233 = swift_allocObject();
    *(v233 + 16) = sub_18B7D6B44;
    *(v233 + 24) = v18;
    v19 = swift_allocObject();
    v19[2] = sub_18B7D1EC4;
    v19[3] = v233;
    v246[4] = sub_18B7D1E94;
    v247 = v19;
    v246[0] = MEMORY[0x1E69E9820];
    v246[1] = 1107296256;
    v246[2] = sub_18B7E3BF4;
    v246[3] = &block_descriptor_242;
    v21 = _Block_copy(v246);
    v13 = v247;
    v234 = v231;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [(objc_class *)ObjCClassFromMetadata performWithoutAnimation:v21];
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_18B7EA358();
      v235 = [objc_opt_self() defaultCenter];
      [v235 addObserver:v234 selector:sel_applyContentBlurRadius name:*MEMORY[0x1E69DD920] object:0];
      [v235 addObserver:v234 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
      [v235 addObserver:v234 selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];

      return v234;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_18B7C8200()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B7C8238()
{

  return swift_deallocObject();
}

uint64_t sub_18B7C8270()
{

  return swift_deallocObject();
}

uint64_t sub_18B7C82B8()
{

  return swift_deallocObject();
}

uint64_t sub_18B7C8360@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_18B7C85FC(v12);
  v2 = v12[1];
  *(a1 + 56) = v12[0];
  *(a1 + 72) = v2;
  *(a1 + 88) = v13[0];
  *(a1 + 102) = *(v13 + 14);
  *(a1 + 118) = 0;
  if ([objc_opt_self() isSolariumEnabled])
  {
    if (qword_1EA9D22D0 != -1)
    {
      swift_once();
    }

    v3 = &xmmword_1EA9D5DF8;
  }

  else
  {
    if (qword_1EA9D2308 != -1)
    {
      swift_once();
    }

    if (byte_1EA9D5F38)
    {
      if (qword_1EA9D22D8 != -1)
      {
        swift_once();
      }

      v3 = &xmmword_1EA9D5E38;
    }

    else
    {
      if (qword_1EA9D22E0 != -1)
      {
        swift_once();
      }

      v3 = &xmmword_1EA9D5E78;
    }
  }

  v4 = v3[1];
  v17[0] = *v3;
  v17[1] = v4;
  v18[0] = v3[2];
  *(v18 + 14) = *(v3 + 46);
  v15[0] = v17[0];
  v15[1] = v4;
  v16[0] = v18[0];
  *(v16 + 14) = *(v18 + 14);
  sub_18B7C9FF8(v17, v14);
  sub_18BA48FCC(v15, v14);
  v5 = v14[0];
  *(a1 + 136) = v14[1];
  v6 = v14[3];
  *(a1 + 152) = v14[2];
  *(a1 + 168) = v6;
  *(a1 + 184) = v14[4];
  *(a1 + 120) = v5;
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(a1 + 216) = *MEMORY[0x1E69DDCE0];
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = v7;
  *(a1 + 248) = 0x4032000000000000;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0x3F86872B020C49BALL;
  *(a1 + 272) = 1;
  *(a1 + 280) = 0x3FECCCCCCCCCCCCDLL;
  v8 = _s6LayoutVMa();
  v9 = v8[15];
  v10 = _s4PageVMa();
  result = (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  *(a1 + v8[16]) = 0;
  *(a1 + v8[17]) = 0;
  *(a1 + v8[18]) = 0x403E000000000000;
  return result;
}

double sub_18B7C85FC@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D22F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = byte_1EA9D5F36;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  *(a1 + 23) = 0;
  result = 0.5;
  *(a1 + 32) = xmmword_18BC44B40;
  *(a1 + 48) = 0x4020000000000000;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  return result;
}

unint64_t sub_18B7C8690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7120);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, &v11, &qword_1EA9D7128);
      v5 = v11;
      result = sub_18B7E172C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_18B7CDFCC(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 24;
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

void sub_18B7C87B8()
{
  v1 = v0;
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_blurrableContainerView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_materialView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_captureView];
  [v8 _setCaptureView_];
  v32 = 60;
  v33 = 0xE100000000000000;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7960);
  v9 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v9);

  MEMORY[0x18CFFC150](8250, 0xE200000000000000);
  sub_18BC1DE28();
  v10 = sub_18BC1EBA8();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x18CFFC150](v10, v12);

  MEMORY[0x18CFFC150](15913, 0xE200000000000000);
  v13 = sub_18BC20B98();

  [v8 _setGroupName_];

  v14 = [v0 layer];
  [v14 setAllowsGroupBlending_];

  v29 = *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_shadowView];
  v15 = [v29 layer];
  [v15 setShadowPathIsBounds_];
  [v15 setShadowOffset_];
  LODWORD(v16) = 1042536202;
  [v15 setShadowOpacity_];
  [v15 setShadowRadius_];
  v17 = *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_systemSnapshotBackgroundView];
  v18 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v17 setBackgroundColor_];

  [v17 setClipsToBounds_];
  [v17 setHidden_];
  v19 = [v17 layer];
  [v19 setCompositingFilter_];

  [v1 addSubview_];
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DC5C0];
  v22 = *(MEMORY[0x1E69DC5C0] + 8);
  v24 = *(MEMORY[0x1E69DC5C0] + 16);
  v23 = *(MEMORY[0x1E69DC5C0] + 24);
  sub_18B7DE2FC(15, v7, *MEMORY[0x1E69DC5C0], v22, v24, v23);
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v25 = sub_18BC20D88();

  [v20 activateConstraints_];

  if (([objc_opt_self() isSolariumEnabled] & 1) == 0)
  {
    [v1 addSubview_];
    [v1 addSubview_];
    [v7 addSubview_];
    [v7 addSubview_];
    sub_18B7DE2FC(15, v8, v21, v22, v24, v23);
    v26 = sub_18BC20D88();

    [v20 &selRef_availability + 3];
  }

  sub_18BA842C4();
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v1 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
  [v27 addObserver:v1 selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
}

void sub_18B7C8D1C(uint64_t a1, uint64_t a2)
{
  v4 = [v2 filters];
  if (v4)
  {
    v19 = a1;
    v5 = MEMORY[0x1E69E7CA0];
    v6 = v4;
    v7 = sub_18BC20D98();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      v11 = &qword_1EA9D40B8;
      while (v9 < *(v7 + 16))
      {
        sub_18B7B193C(v10, v23);
        sub_18B7B193C(v23, v22);
        sub_18B7B0AC0(0, v11);
        if (swift_dynamicCast() && (v12 = [v21 type], v21, v12))
        {
          v13 = v11;
          v14 = v5;
          v15 = sub_18BC20BD8();
          v17 = v16;

          if (v15 == v19 && v17 == a2)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v23);
LABEL_15:

            return;
          }

          v18 = sub_18BC21FD8();

          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          v5 = v14;
          v11 = v13;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
        }

        ++v9;
        v10 += 32;
        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }
}

void sub_18B7C8EF4(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_18B7C9044(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_18BB2BC44();
      v13 = v21;
      goto LABEL_8;
    }

    sub_18B7C90B0(v18, a5 & 1);
    v13 = sub_18B7C9044(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
  }

  else
  {

    sub_18BB32A40(v13, a4, a1, a2, a3 & 1, v23);
  }
}

unint64_t sub_18B7C9044(unsigned __int8 a1)
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  v2 = sub_18BC221A8();

  return sub_18B7DF1C8(a1, v2);
}

uint64_t sub_18B7C90B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71F8);
  v36 = a2;
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v37 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if ((v36 & 1) == 0)
      {
        v25 = v22;
      }

      sub_18BC22158();
      MEMORY[0x18CFFD660](v37);
      result = sub_18BC221A8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v37;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_18B7C9388(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_18B7C9044(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_18B7C9044(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v14);
    *(v25 + 8 * v14) = a1;
  }

  else
  {

    a6(v14, a2, a1, v24);
  }
}

uint64_t sub_18B7C94DC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v32 = a2;
  result = sub_18BC21D78();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
        v23 = v22;
      }

      sub_18BC22158();
      MEMORY[0x18CFFD660](v21);
      result = sub_18BC221A8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v3;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_18B7C9774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B7C97D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t _s4PageVMa_0()
{
  result = qword_1EA9D9418;
  if (!qword_1EA9D9418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7C98DC()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18B7E7F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B7C9974()
{
  v1 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v4 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher;
  v5 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher);
  if (v5)
  {
    goto LABEL_4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong view];

  if (v7)
  {
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(v0 + v16, v3, _s6LayoutVMa);
    v17 = v0;
    sub_18B7DFB0C(v3, v23);
    sub_18B7DFF04(v3, _s6LayoutVMa);
    v18 = objc_allocWithZone(type metadata accessor for TabOverviewSwitcher());
    v19 = sub_18B7CA31C(v23, v9, v11, v13, v15);
    v20 = *(v0 + v4);
    *(v17 + v4) = v19;
    v19;

    v5 = 0;
LABEL_4:
    v21 = v5;
    return;
  }

  __break(1u);
}

double sub_18B7C9B24@<D0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  v4 = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 16];
  v21[0] = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  v21[1] = v4;
  v22[0] = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 32];
  *(v22 + 14) = *&v1[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 46];
  v5 = *(&v21[0] + 1);
  if (*(&v21[0] + 1))
  {
    v6 = *&v21[0];
    v7 = *(v3 + 2);
    v19 = *(v3 + 1);
    v20[0] = v7;
    *(v20 + 14) = *(v3 + 46);
  }

  else
  {
    v8 = [v1 traitCollection];
    sub_18B7C9C68(v8, v16);
    v6 = v16[0];
    v5 = v16[1];
    v19 = v17;
    v20[0] = v18[0];
    *(v20 + 14) = *(v18 + 14);

    v9 = *(v3 + 1);
    v14[0] = *v3;
    v14[1] = v9;
    v15[0] = *(v3 + 2);
    *(v15 + 14) = *(v3 + 46);
    *v3 = v6;
    *(v3 + 1) = v5;
    v10 = v18[0];
    *(v3 + 1) = v17;
    *(v3 + 2) = v10;
    *(v3 + 46) = *(v18 + 14);
    sub_18B7C9FF8(v16, &v13);
    sub_18B988BAC(v14, &qword_1EA9D9358);
  }

  sub_18B7CA054(v21, v14, &qword_1EA9D9358);
  *a1 = v6;
  *(a1 + 8) = v5;
  v11 = v20[0];
  *(a1 + 16) = v19;
  *(a1 + 32) = v11;
  result = *(v20 + 14);
  *(a1 + 46) = *(v20 + 14);
  return result;
}

double sub_18B7C9C68@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 verticalSizeClass] == 1 && (v4 = objc_msgSend(objc_opt_self(), sel_currentDevice), v5 = objc_msgSend(v4, sel_userInterfaceIdiom), v4, !v5))
  {
    if ([objc_opt_self() isSolariumEnabled])
    {
      if (qword_1EA9D22E8 != -1)
      {
        swift_once();
      }

      v9 = &xmmword_1EA9D5EB8;
    }

    else
    {
      if (qword_1EA9D22F0 != -1)
      {
        swift_once();
      }

      v9 = &xmmword_1EA9D5EF8;
    }

    v14 = v9[1];
    v16 = *v9;
    v17 = v14;
    *v18 = v9[2];
    *&v18[14] = *(v9 + 46);
    v21 = v16;
    v22 = v14;
    v23 = *v18;
    v24 = *&v18[16];
    v19 = *&v18[25];
    v20 = v18[29];
    sub_18B7C9FF8(&v16, v15);
    v11 = 1;
  }

  else
  {
    v6 = [a1 horizontalSizeClass];
    v7 = [objc_opt_self() isSolariumEnabled];
    if (v6 == 2)
    {
      if (v7)
      {
        if (qword_1EA9D22E8 != -1)
        {
          swift_once();
        }

        v8 = &xmmword_1EA9D5EB8;
      }

      else
      {
        if (qword_1EA9D22F0 != -1)
        {
          swift_once();
        }

        v8 = &xmmword_1EA9D5EF8;
      }
    }

    else if (v7)
    {
      if (qword_1EA9D22D0 != -1)
      {
        swift_once();
      }

      v8 = &xmmword_1EA9D5DF8;
    }

    else
    {
      if (qword_1EA9D2308 != -1)
      {
        swift_once();
      }

      if (byte_1EA9D5F38 == 1)
      {
        if (qword_1EA9D22D8 != -1)
        {
          swift_once();
        }

        v8 = &xmmword_1EA9D5E38;
      }

      else
      {
        if (qword_1EA9D22E0 != -1)
        {
          swift_once();
        }

        v8 = &xmmword_1EA9D5E78;
      }
    }

    v10 = v8[1];
    v16 = *v8;
    v17 = v10;
    *v18 = v8[2];
    *&v18[14] = *(v8 + 46);
    sub_18B7C9FF8(&v16, v15);
    v21 = v16;
    v22 = v17;
    v23 = *v18;
    v24 = *&v18[16];
    v11 = v18[24];
    v19 = *&v18[25];
    v20 = v18[29];
  }

  v12 = v22;
  *a2 = v21;
  *(a2 + 16) = v12;
  result = *&v23;
  *(a2 + 32) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v11;
  *(a2 + 57) = v19;
  *(a2 + 61) = v20;
  return result;
}

uint64_t sub_18B7CA054(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari11TabSwitcherC17BarBackgroundViewC5GroupVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for TabOverviewSwitcher()
{
  result = qword_1EA9D6CD0;
  if (!qword_1EA9D6CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7CA184()
{
  sub_18B7E0024();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t _s6LayoutCMa_2()
{
  result = qword_1EA9D6520;
  if (!qword_1EA9D6520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_18B7CA31C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[qword_1EA9D6BA8];
  *v11 = sub_18BB6C178;
  v11[1] = 0;
  v11[2] = CGRectMake;
  v11[3] = 0;
  v11[4] = CGRectMake;
  v11[5] = 0;
  v11[6] = CGRectMake;
  v11[7] = 0;
  v11[8] = CGRectMake;
  v11[9] = 0;
  v11[10] = CGRectMake;
  v11[11] = 0;
  v11[12] = sub_18B7E9C50;
  v11[13] = 0;
  v11[14] = CGRectMake;
  v11[15] = 0;
  v11[16] = CGRectMake;
  v11[17] = 0;
  v11[18] = CGRectMake;
  v11[19] = 0;
  v11[20] = CGRectMake;
  v11[21] = 0;
  v11[22] = sub_18B9A926C;
  v11[23] = 0;
  v11[24] = sub_18B9A9278;
  v11[25] = 0;
  v11[26] = CGRectMake;
  v11[27] = 0;
  v11[28] = sub_18B8390A8;
  v11[29] = 0;
  v11[30] = sub_18B814EE4;
  v11[31] = 0;
  v11[32] = CGRectMake;
  v11[33] = 0;
  v11[34] = CGRectMake;
  v11[35] = 0;
  v11[36] = CGRectMake;
  v11[37] = 0;
  v11[38] = sub_18B8390A8;
  v11[39] = 0;
  v11[40] = CGRectMake;
  v11[41] = 0;
  v11[42] = CGRectMake;
  v11[43] = 0;
  v11[44] = sub_18B7E9C50;
  v11[45] = 0;
  v11[46] = sub_18B7E9C50;
  v11[47] = 0;
  v11[48] = CGRectMake;
  v11[49] = 0;
  v12 = qword_1EA9D6BB0;
  type metadata accessor for HighlightTrackingView();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[qword_1EA9D6BB8] = 0;
  *&v5[qword_1EA9D6BC0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = qword_1EA9D6BC8;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DD6B8]) init];
  *&v5[qword_1EA9D6BD0] = 0;
  *&v5[qword_1EA9D6BD8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_1EA9D6BE0] = 0;
  *&v5[qword_1EA9D6BE8] = 0;
  *&v5[qword_1EA9D6BF0] = 0;
  *&v5[qword_1EA9D6BF8] = 0;
  v14 = &v5[qword_1EA9D6C00];
  *v14 = 0;
  v14[1] = 0;
  v5[qword_1EA9D6C08] = 0;
  v5[qword_1EA9D6C10] = 0;
  *&v5[qword_1EA9D6C18] = 0;
  *&v5[qword_1EA9D6C20] = 0;
  *&v5[qword_1EA9D6C28] = 0;
  v15 = qword_1EA9D6C30;
  v16 = _s4PageVMa_0();
  v17 = *(*(v16 - 8) + 56);
  v17(&v5[v15], 1, 1, v16);
  v18 = qword_1EA9D6C38;
  v19 = MEMORY[0x1E69E7CC0];
  *&v5[v18] = sub_18B7E0324(MEMORY[0x1E69E7CC0]);
  v17(&v5[qword_1EA9F7FE8], 1, 1, v16);
  v20 = qword_1EA9D6C40;
  type metadata accessor for Assertion();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = 0;
  *&v5[v20] = v21;
  v22 = qword_1EA9D6C48;
  *&v5[v22] = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v23 = qword_1EA9D6C50;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = 0;
  *&v5[v23] = v24;
  v5[qword_1EA9F7FF0] = 0;
  v25 = qword_1EA9D6C58;
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = 0;
  *&v5[v25] = v26;
  v27 = &v5[qword_1EA9D6C60];
  v28 = sub_18B7CA9C8(v19);
  *v27 = CGRectMake;
  v27[1] = 0;
  v27[2] = v28;
  v29 = &v5[qword_1EA9F7FF8];
  v30 = *(MEMORY[0x1E69DDCE0] + 16);
  *v29 = *MEMORY[0x1E69DDCE0];
  *(v29 + 1) = v30;
  *(v29 + 2) = xmmword_18BC46730;
  *(v29 + 4) = xmmword_18BC3DD80;
  *(v29 + 5) = xmmword_18BC46740;
  *(v29 + 6) = xmmword_18BC46750;
  v31 = *(MEMORY[0x1E695F050] + 16);
  *(v29 + 120) = *MEMORY[0x1E695F050];
  *(v29 + 6) = 0x3FE75C28F5C28F5CLL;
  v29[56] = 0;
  *(v29 + 15) = *&v35[3];
  *(v29 + 57) = *v35;
  *(v29 + 14) = 0x3FE999999999999ALL;
  *(v29 + 136) = v31;
  sub_18B7E0DF0(a1, &v5[qword_1EA9D6BA0]);
  v34.receiver = v5;
  v34.super_class = type metadata accessor for TabOverviewSwitcher();
  v32 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a2, a3, a4, a5);
  sub_18B7D4D24(a1);
  return v32;
}

unint64_t sub_18B7CA9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7198);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71A0);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7198);
      result = sub_18BB8B494(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_2();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_2);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_18B7CABAC()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _SFMediaStateIcon(319);
    if (v1 <= 0x3F)
    {
      sub_18B7BFC44();
      if (v2 <= 0x3F)
      {
        sub_18B7C0DC8();
        if (v3 <= 0x3F)
        {
          sub_18B7E96A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18B7CAC94(uint64_t a1)
{
  v2 = _s4PageVMa_0();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    if (v8 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    sub_18B82D10C(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v6, _s4PageVMa_0);
    v9 = v6[*(v2 + 24)];
    result = sub_18B82D234(v6, _s4PageVMa_0);
    if (v9)
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  v10 = *(a1 + 16);
  if (v10 >= 2 && v10 - 1 == v8)
  {
    return 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18B7CADF8@<X0>(uint64_t a1@<X8>)
{
  result = sub_18B7CAC94(MEMORY[0x1E69E7CC0]);
  *a1 = result & 1;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_18B7CAE7C(uint64_t a1)
{
  v2 = v1;
  sub_18B7CB48C(a1);
  swift_unknownObjectUnownedInit();
  sub_18B7CB66C(v51, 0xD000000000000017, 0x800000018BC60750, v1);
  sub_18B7CBB94(v51);
  v3 = *&v1[qword_1EA9D6BB0];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v3 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  v6 = *(v3 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  *v5 = sub_18BA5A1F8;
  v5[1] = v4;
  sub_18BC1E1A8();
  sub_18B7E0A10(v6);

  v7 = [v2 effectiveUserInterfaceLayoutDirection] == 1;
  v8 = *&v2[qword_1EA9F7FF8 + 112];
  v51[6] = *&v2[qword_1EA9F7FF8 + 96];
  v51[7] = v8;
  v51[8] = *&v2[qword_1EA9F7FF8 + 128];
  v52 = *&v2[qword_1EA9F7FF8 + 144];
  v9 = *&v2[qword_1EA9F7FF8 + 48];
  v51[2] = *&v2[qword_1EA9F7FF8 + 32];
  v51[3] = v9;
  v10 = *&v2[qword_1EA9F7FF8 + 80];
  v51[4] = *&v2[qword_1EA9F7FF8 + 64];
  v51[5] = v10;
  v11 = *&v2[qword_1EA9F7FF8 + 16];
  v51[0] = *&v2[qword_1EA9F7FF8];
  v51[1] = v11;
  v2[qword_1EA9F7FF8 + 56] = v7;
  sub_18B7CBBC4(v51);
  v12 = *&v2[qword_1EA9D6C48];
  [v12 addTarget:v2 action:sel_peekingPageReceivedTap_];
  [v12 setDelegate_];
  v13 = *&v2[qword_1EA9D6C58];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_18BA5A200;
  *(v15 + 24) = v14;
  swift_beginAccess();
  v16 = *(v13 + 16);
  sub_18BC1E1A8();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_18B7C358C(0, v16[2] + 1, 1, v16);
    *(v13 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_18B7C358C((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = sub_18B7FCC4C;
  v20[5] = v15;
  *(v13 + 16) = v16;
  swift_endAccess();

  v22 = sub_18B7C2E68(v21);
  [v22 _setAdjustsContentInsetWhenScrollDisabled_];

  v24 = sub_18B7C2E68(v23);
  [v24 setAlwaysBounceHorizontal_];

  v26 = sub_18B7C2E68(v25);
  [v26 _setAutoScrollEnabled_];

  v28 = sub_18B7C2E68(v27);
  [v28 setPagingEnabled_];

  v30 = sub_18B7C2E68(v29);
  v31 = [v30 layer];

  [v31 setHitTestsAsOpaque_];
  v33 = sub_18B7C2E68(v32);
  v34 = [v33 panGestureRecognizer];

  [v34 _setHysteresis_];
  v36 = sub_18B7C2E68(v35);
  [v36 setScrollsToTop_];

  v38 = sub_18B7C2E68(v37);
  [v38 setShowsHorizontalScrollIndicator_];

  v40 = sub_18B7C2E68(v39);
  [v40 setShowsVerticalScrollIndicator_];

  v42 = sub_18B7C2E68(v41);
  [v42 addSubview_];

  v43 = sub_18B7CC278();
  [v2 addGestureRecognizer_];

  [v2 addGestureRecognizer_];
  v44 = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) initWithTarget:v2 action:sel_didReceiveHover_];
  [v2 addGestureRecognizer_];

  [v2 addInteraction_];
  v45 = qword_1EA9D6BA0;
  swift_beginAccess();
  v46 = *&v2[v45];
  v47 = *(v46 + 40);
  *(v46 + 40) = 0;
  sub_18BC1E1A8();
  sub_18B7CC404(v47);

  v2[qword_1EA9D6C10] = 0;
  sub_18B7CC308();
  sub_18B7CC61C();

  sub_18B7CC768();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = &v2[qword_1EA9D6C60];
  swift_beginAccess();
  *v49 = sub_18BA5A208;
  v49[1] = v48;
}

uint64_t sub_18B7CB418()
{

  return swift_deallocObject();
}

uint64_t sub_18B7CB450()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B7CB48C(uint64_t a1)
{
  v2 = sub_18B7C2E68(a1);
  [v2 setClipsToBounds_];

  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  [*(v1 + v4) setDelegate_];
  [v1 addSubview_];
  v5 = *(v1 + *((*v3 & *v1) + 0xA0));
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18B7FCC80;
  *(v7 + 24) = v6;
  swift_beginAccess();
  v8 = *(v5 + 16);
  sub_18BC1E1A8();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_18B7C358C(0, v8[2] + 1, 1, v8);
    *(v5 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_18B7C358C((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_18B7FCC48;
  v12[5] = v7;
  *(v5 + 16) = v8;
  swift_endAccess();
}

uint64_t sub_18B7CB66C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_18B7CB8BC(a1, v17);
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D10);
  v9 = swift_allocObject();
  sub_18BC1E3F8();
  v10 = sub_18B7CB8F4(v17, sub_18B849094, v8, v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  swift_beginAccess();
  v10[8] = sub_18BA5A230;
  v10[9] = v12;
  sub_18BC1E3F8();

  v13 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x98);
  swift_beginAccess();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + v13);
  *(a4 + v13) = 0x8000000000000000;
  sub_18B7CBA38(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a4 + v13) = v16;
  swift_endAccess();
}

uint64_t sub_18B7CB864()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

void *sub_18B7CB8F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = &type metadata for TabOverviewSwitcher.PageViewRegistration;
  v15 = sub_18B7CB9E4();
  *&v13 = swift_allocObject();
  sub_18B7E0610(a1, v13 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  a4[4] = sub_18B7E0648(MEMORY[0x1E69E7CC0]);
  v9 = sub_18B7E082C(v8);
  a4[5] = CGRectMake;
  a4[6] = 0;
  a4[7] = v9;
  v10 = sub_18B7E082C(v8);
  a4[8] = CGRectMake;
  a4[9] = 0;
  v11 = MEMORY[0x1E69E7CD0];
  a4[10] = v10;
  a4[11] = v11;
  a4[17] = sub_18B7E0648(v8);
  a4[2] = a2;
  a4[3] = a3;
  sub_18B7C3FA4(&v13, (a4 + 12));
  return a4;
}

unint64_t sub_18B7CB9E4()
{
  result = qword_1EA9D6D18;
  if (!qword_1EA9D6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6D18);
  }

  return result;
}

uint64_t sub_18B7CBA38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B7C4104(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18BB2C9E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18B7CBB80(v16, a4 & 1);
    v11 = sub_18B7C4104(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18BC22078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_18BB33460(v11, a2, a3, a1, v21);

    return sub_18BC1E3F8();
  }
}

void sub_18B7CBBC4(uint64_t a1)
{
  v2 = &v1[qword_1EA9F7FF8];
  v3 = *&v1[qword_1EA9F7FF8 + 112];
  v50[6] = *&v1[qword_1EA9F7FF8 + 96];
  v50[7] = v3;
  v50[8] = *&v1[qword_1EA9F7FF8 + 128];
  v51 = *&v1[qword_1EA9F7FF8 + 144];
  v4 = *&v1[qword_1EA9F7FF8 + 48];
  v50[2] = *&v1[qword_1EA9F7FF8 + 32];
  v50[3] = v4;
  v5 = *&v1[qword_1EA9F7FF8 + 80];
  v50[4] = *&v1[qword_1EA9F7FF8 + 64];
  v50[5] = v5;
  v6 = *&v1[qword_1EA9F7FF8 + 16];
  v50[0] = *&v1[qword_1EA9F7FF8];
  v50[1] = v6;
  if (!sub_18B7CC0D4(v50, a1))
  {
    v7 = sub_18B7CC308();
    memmove((v7 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics), v2, 0x98uLL);

    [v1 setNeedsLayout];
    v8 = sub_18B7EA91C();
    v9 = v8;
    v10 = 0;
    v11 = v8 + 64;
    v12 = 1 << *(v8 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v8 + 64);
    v15 = (v12 + 63) >> 6;
    v48 = v8;
    while (v14)
    {
LABEL_11:
      v17 = *(*(v9 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = v2[8];
      v19 = OBJC_IVAR___SFTabOverview_contentBlurRadius;
      v20 = *&v17[OBJC_IVAR___SFTabOverview_contentBlurRadius];
      *&v17[OBJC_IVAR___SFTabOverview_contentBlurRadius] = v18;
      if (v18 == v20)
      {
        v21 = v17;
      }

      else
      {
        v22 = objc_opt_self();
        v23 = v17;
        if ([v22 _isInRetargetableAnimationBlock])
        {
          v24 = v23;
          v25 = sub_18B7DE654();
          v26 = &v24[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
          [v25 setValue_];

          v27 = sub_18B7DE654();
          [v27 setValue_];

          v28 = sub_18B7DE654();
          [v28 setValue_];
        }

        else
        {
          v29 = swift_allocObject();
          *(v29 + 16) = v23;
          *&aBlock.tx = sub_18B86797C;
          *&aBlock.ty = v29;
          *&aBlock.a = MEMORY[0x1E69E9820];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_18B7B0DB0;
          *&aBlock.d = &block_descriptor_183;
          v47 = _Block_copy(&aBlock);
          v30 = v23;
          sub_18BC1E1A8();

          *&aBlock.tx = CGRectMake;
          aBlock.ty = 0.0;
          *&aBlock.a = MEMORY[0x1E69E9820];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_18B8043A0;
          *&aBlock.d = &block_descriptor_186_0;
          v31 = _Block_copy(&aBlock);

          [v22 _animateByRetargetingAnimations_completion_];

          _Block_release(v31);
          _Block_release(v47);
        }

        v9 = v48;
      }

      v32 = v2[9];
      v33 = OBJC_IVAR___SFTabOverview_contentOpacity;
      v34 = *&v17[OBJC_IVAR___SFTabOverview_contentOpacity];
      *&v17[OBJC_IVAR___SFTabOverview_contentOpacity] = v32;
      if (v32 != v34)
      {
        v35 = &v17[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
        [*&v17[OBJC_IVAR___SFTabOverview_contentBelowSearchBarView] setAlpha_];
        [*&v17[OBJC_IVAR___SFTabOverview_overlayContainerView] setAlpha_];
        [*&v17[OBJC_IVAR___SFTabOverview_searchBarContainerView] setAlpha_];
      }

      v36 = v2[10];
      v37 = *&v17[OBJC_IVAR___SFTabOverview_contentScale];
      *&v17[OBJC_IVAR___SFTabOverview_contentScale] = v36;
      if (v36 != v37)
      {
        CGAffineTransformMakeScale(&aBlock, v36, v36);
        a = aBlock.a;
        b = aBlock.b;
        c = aBlock.c;
        d = aBlock.d;
        tx = aBlock.tx;
        ty = aBlock.ty;
        [*&v17[OBJC_IVAR___SFTabOverview_backgroundView] setTransform_];
        v44 = *&v17[OBJC_IVAR___SFTabOverview_contentBelowSearchBarView];
        aBlock.a = a;
        aBlock.b = b;
        aBlock.c = c;
        aBlock.d = d;
        aBlock.tx = tx;
        aBlock.ty = ty;
        [v44 setTransform_];
        v45 = *&v17[OBJC_IVAR___SFTabOverview_overlayContainerView];
        aBlock.a = a;
        aBlock.b = b;
        aBlock.c = c;
        aBlock.d = d;
        aBlock.tx = tx;
        aBlock.ty = ty;
        [v45 setTransform_];
        v46 = *&v17[OBJC_IVAR___SFTabOverview_searchBarContainerView];
        aBlock.a = a;
        aBlock.b = b;
        aBlock.c = c;
        aBlock.d = d;
        aBlock.tx = tx;
        aBlock.ty = ty;
        [v46 setTransform_];
      }

      v14 &= v14 - 1;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        return;
      }

      v14 = *(v11 + 8 * v16);
      ++v10;
      if (v14)
      {
        v10 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

BOOL sub_18B7CC0D4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 24) == *(a2 + 24)) : (v3 = 0), v3 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112)))
  {
    return CGRectEqualToRect(*(a1 + 120), *(a2 + 120));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B7CC1E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B7CC230(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_18B7CC278()
{
  v1 = qword_1EA9D6BF0;
  v2 = *(v0 + qword_1EA9D6BF0);
  if (v2)
  {
    v3 = *(v0 + qword_1EA9D6BF0);
  }

  else
  {
    v4 = [objc_opt_self() productivityPanGestureRecognizerWithTarget:v0 action:sel_didReceiveInProcessUndoGesture_ delegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18B7CC308()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v6[0] = sub_18B7CAC94(MEMORY[0x1E69E7CC0]) & 1;
    v7 = v4;
    (*((*v1 & *v0) + 0x1C0))(&v8, v6);

    v3 = v8;
    *(v0 + v2) = v8;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v3;
}

void sub_18B7CC404(unsigned __int8 a1)
{
  if (*(v1 + 40) == a1)
  {
    return;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_18BC1E1A8();
    v2(v3);
    sub_18B7E0A10(v2);
  }

  v4 = sub_18BC20BD8();
  v6 = v5;
  if (v4 == sub_18BC20BD8() && v6 == v7)
  {

LABEL_11:

    return;
  }

  v9 = sub_18BC21FD8();

  if (v9)
  {
    goto LABEL_11;
  }

  v10 = sub_18BC116D4();
  v11 = sub_18BC20B98();

  [v10 transitionToState:v11 ended:1];
}

uint64_t sub_18B7CC58C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18B7E0A7C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_18B7CC5E4()
{

  return swift_deallocClassInstance();
}

void sub_18B7CC61C()
{
  v1 = *(*(v0 + 16) + 40);
  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionStyle))
  {
    if (v1 > 1)
    {
      *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 56) = sub_18B7E1178() * *(*(v0 + 16) + 48) * -0.67;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 56) = 0;
    }
  }

  else
  {
    v2 = v1 == 2;
    if (v1 >= 2)
    {
      v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo);
      if (v2)
      {
        v3[1] = 0x3FF0000000000000;
        v3[5] = 0x3FF0000000000000;
        v4 = 0x3FEE666666666666;
      }

      else
      {
        v3[1] = 0;
        v4 = 0x3FF0000000000000;
        v3[5] = 0x3FF0000000000000;
      }
    }

    else
    {
      v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo);
      v3[1] = 0x3FF0000000000000;
      v3[5] = 0;
      v4 = 0x3FE999999999999ALL;
    }

    v3[3] = v4;
  }
}

id sub_18B7CC70C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_18B7E1264();
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_18B7CC768()
{
  v0 = sub_18B7E1258();
  v1 = *(sub_18B7CC308() + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 8);

  [v0 setValue_];

  v2 = sub_18B7CC880();
  v3 = *(sub_18B7CC308() + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 24);

  [v2 setValue_];

  v4 = sub_18B7E1448();
  v5 = *(sub_18B7CC308() + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 40);

  [v4 setValue_];

  v7 = sub_18B7CC88C();
  v6 = *(sub_18B7CC308() + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 56);

  [v7 setValue_];
}

uint64_t sub_18B7CC8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 96);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18B7CC96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7CC9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_18B7CCA2C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  v3[2] = sub_18B9EB2B4;
  v3[3] = v0;
  v3[4] = sub_18B9EB2BC;
  v3[5] = v1;
  v7[4] = sub_18B9EB2C4;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B9D63E4;
  v7[3] = &block_descriptor_676;
  v4 = _Block_copy(v7);
  swift_retain_n();
  swift_retain_n();

  v5 = [v2 safari:v4 menuWithUncachedChildrenProvider:?];
  _Block_release(v4);

  return v5;
}

uint64_t sub_18B7CCBC4()
{

  return swift_deallocObject();
}

id sub_18B7CCC04()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_18B9EB284;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B9D63E4;
  v7[3] = &block_descriptor_668;
  v2 = _Block_copy(v7);

  v3 = [v0 safari:v2 menuWithUncachedChildrenProvider:?];
  _Block_release(v2);
  v4 = v3;
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  return v4;
}

void *sub_18B7CCD40@<X0>(void *a1@<X8>)
{
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __src[0] = sub_18B86831C;
  __src[1] = v10;
  __src[2] = sub_18B9EAA20;
  __src[3] = v9;
  __src[4] = sub_18B9EAA28;
  __src[5] = v8;
  __src[6] = sub_18B9EAA44;
  __src[7] = v7;
  __src[8] = sub_18B866F80;
  __src[9] = v1;
  __src[10] = sub_18B9EA908;
  __src[11] = v23;
  __src[12] = sub_18B9EA924;
  __src[13] = v6;
  __src[14] = sub_18B9EA92C;
  __src[15] = v5;
  __src[16] = sub_18B9EB45C;
  __src[17] = v4;
  __src[18] = CGRectMake;
  __src[19] = 0;
  __src[20] = sub_18B9EA948;
  __src[21] = v3;
  __src[22] = sub_18B9EA950;
  __src[23] = v13;
  __src[24] = sub_18B9EA958;
  __src[25] = v12;
  __src[26] = sub_18B9EA960;
  __src[27] = v11;
  __src[28] = sub_18B9EA990;
  __src[29] = v21;
  __src[30] = sub_18B9EA998;
  __src[31] = v20;
  __src[32] = sub_18B9EA9A0;
  __src[33] = v18;
  __src[34] = sub_18B9EA9A8;
  __src[35] = v17;
  __src[36] = sub_18B9EA9E0;
  __src[37] = v15;
  __src[38] = sub_18B9EA9D8;
  __src[39] = v16;
  __src[40] = sub_18B9EA9E8;
  __src[41] = v14;
  __src[42] = CGRectMake;
  __src[43] = 0;
  __src[44] = sub_18B7E9C50;
  __src[45] = 0;
  __src[46] = sub_18B7E9C50;
  __src[47] = 0;
  v26[0] = sub_18B86831C;
  v26[1] = v10;
  v26[2] = sub_18B9EAA20;
  v26[3] = v9;
  v26[4] = sub_18B9EAA28;
  v26[5] = v8;
  v26[6] = sub_18B9EAA44;
  v26[7] = v7;
  v26[8] = sub_18B866F80;
  v26[9] = v1;
  v26[10] = sub_18B9EA908;
  v26[11] = v23;
  v26[12] = sub_18B9EA924;
  v26[13] = v6;
  v26[14] = sub_18B9EA92C;
  v26[15] = v5;
  v26[16] = sub_18B9EB45C;
  v26[17] = v4;
  v26[18] = CGRectMake;
  v26[20] = sub_18B9EA948;
  v26[21] = v3;
  v26[22] = sub_18B9EA950;
  v26[23] = v13;
  __src[48] = sub_18B9EAA18;
  __src[49] = v19;
  v26[19] = 0;
  v26[24] = sub_18B9EA958;
  v26[25] = v12;
  v26[26] = sub_18B9EA960;
  v26[27] = v11;
  v26[28] = sub_18B9EA990;
  v26[29] = v21;
  v26[30] = sub_18B9EA998;
  v26[31] = v20;
  v26[32] = sub_18B9EA9A0;
  v26[33] = v18;
  v26[34] = sub_18B9EA9A8;
  v26[35] = v17;
  v26[36] = sub_18B9EA9E0;
  v26[37] = v15;
  v26[38] = sub_18B9EA9D8;
  v26[39] = v16;
  v26[40] = sub_18B9EA9E8;
  v26[41] = v14;
  v26[42] = CGRectMake;
  v26[43] = 0;
  v26[44] = sub_18B7E9C50;
  v26[45] = 0;
  v26[46] = sub_18B7E9C50;
  v26[47] = 0;
  v26[48] = sub_18B9EAA18;
  v26[49] = v19;
  sub_18B7CD468(__src, v24);
  sub_18B7CD4C4(v26);
  return memcpy(a1, __src, 0x190uLL);
}

uint64_t sub_18B7CD518()
{
  v1 = v0;
  v2 = _s4PageVMa_0();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  sub_18B7CC308();
  v8 = sub_18B7CD924();

  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v35 = v8;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v30 = v1 + qword_1EA9D6BA8;
  v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v34 = v1;
  v32 = v14;
  swift_beginAccess();
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v31 = "quickTabSwitcherItem";
  while (v13)
  {
LABEL_11:
    sub_18B82D0A4(*(v35 + 48) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v7, _s4PageVMa_0);
    sub_18B82FD54(v7, v4, _s4PageVMa_0);
    v18 = *(v34 + v32);
    if (!*(v18 + 16))
    {
      goto LABEL_26;
    }

    sub_18BC1E3F8();
    v19 = sub_18B7C4104(0xD000000000000017, v31 | 0x8000000000000000);
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

    v13 &= v13 - 1;
    v21 = *(*(v18 + 56) + 8 * v19);
    sub_18BC1E1A8();

    swift_beginAccess();
    v22 = *(v21 + 32);
    if (!*(v22 + 16))
    {

      goto LABEL_5;
    }

    sub_18BC1E3F8();
    v23 = sub_18B8629FC(v4);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 16 * v23);

      sub_18B82D1D4(v4, _s4PageVMa_0);

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v26 = v25 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        memcpy(v37, v30 + 80, sizeof(v37));
        v27 = OBJC_IVAR___SFTabOverview_handlers;
        memcpy(v38, &v25[OBJC_IVAR___SFTabOverview_handlers], sizeof(v38));
        sub_18B854B44(v37, &v36);
        memcpy(&v25[v27], v37, 0x140uLL);
        sub_18B854D4C(v38);
      }
    }

    else
    {

LABEL_5:
      sub_18B82D1D4(v4, _s4PageVMa_0);
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:

LABEL_26:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B7CD924()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = _s4PageVMa_0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v24 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6538);
  result = MEMORY[0x1EEE9AC00](v31);
  v11 = (&v24 - v10);
  v12 = *(v0 + 192);
  v30 = *(v12 + 16);
  if (v30)
  {
    v13 = 0;
    v27 = (v5 + 48);
    v28 = (v5 + 56);
    v14 = MEMORY[0x1E69E7CC0];
    v25 = v4;
    v29 = v12;
    while (v13 < *(v12 + 16))
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v16 = v5;
      v17 = *(v5 + 72);
      v18 = *(v31 + 48);
      *v11 = v13;
      sub_18B831A68(v12 + v15 + v17 * v13, v11 + v18);
      sub_18B845484(v13, 0, v33);
      sub_18B7F4620(v33);
      if (v34)
      {
        sub_18B831A68(v11 + v18, v3);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      (*v28)(v3, v19, 1, v4);
      sub_18B988BAC(v11, &qword_1EA9D6538);
      if ((*v27)(v3, 1, v4) == 1)
      {
        result = sub_18B988BAC(v3, &unk_1EA9DBE90);
      }

      else
      {
        v20 = v26;
        sub_18B82FCEC(v3, v26, _s4PageVMa_0);
        sub_18B82FCEC(v20, v32, _s4PageVMa_0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_18B9B5860(0, v14[2] + 1, 1, v14);
        }

        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          v14 = sub_18B9B5860(v21 > 1, v22 + 1, 1, v14);
        }

        v14[2] = v22 + 1;
        result = sub_18B82FCEC(v32, v14 + v15 + v22 * v17, _s4PageVMa_0);
        v4 = v25;
      }

      v5 = v16;
      ++v13;
      v12 = v29;
      if (v30 == v13)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v23 = sub_18B7E158C(v14);

    return v23;
  }

  return result;
}

void sub_18B7CDCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = a3();
  swift_beginAccess();
  v8 = sub_18BC1E3F8();
  sub_18B7CDF34(v8, &v12);

  if (v12)
  {
    v14 = v12;
    sub_18B7CDFCC(&v13, v15);
    v9 = v14;
    v10 = sub_18B7CDFCC(v15, &v12);
    MEMORY[0x1EEE9AC00](v10);
    sub_18BAE7E18(a5);

    sub_18B7E1848(&v12);
  }

  else
  {
    sub_18B988BAC(&v12, &qword_1EA9D6CF8);
  }

  v13 = a4;
  swift_unknownObjectUnownedInit();
  swift_beginAccess();
  v11 = v7;
  sub_18B7CE028(&v12, v11);
  swift_endAccess();
  sub_18B7CE56C();
}

uint64_t sub_18B7CDE48(uint64_t a1)
{
  if (a1)
  {
    sub_18BA59C04(v1, a1, sub_18B7C2E68);
  }

  v2 = qword_1EA9D6BD0;
  v3 = *(v1 + qword_1EA9D6BD0);
  if (v3)
  {
    sub_18BC1E1A8();
    sub_18B7CDCCC(v1, v3, sub_18B7C2E68, &off_1EFF24FD8, sub_18B7D2B30);
  }

  sub_18B7E189C(sub_18B7C2E68)[2] = *(v1 + v2);
  sub_18BC1E1A8();
}

uint64_t sub_18B7CDF34@<X0>(uint64_t a1@<X0>, id *a2@<X8>)
{
  result = sub_18BC21918();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = sub_18B7D2A90(v5, result, *(a1 + 36), 0, a1);
    return sub_18B7CDFCC(v5, (a2 + 1));
  }

  return result;
}

void sub_18B7CE028(void *a1, void *a2)
{
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1] == 1;
  }

  if (v4)
  {
    sub_18B988BAC(a1, &qword_1EA9D8BB8);
    sub_18BB5A324(a2, &v7);

    sub_18B988BAC(&v7, &qword_1EA9D8BB8);
  }

  else
  {
    sub_18B7CDFCC(a1, &v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_18B7CE0E4(&v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }
}

id sub_18B7CE0E4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_18B7E172C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_18BB2BF18();
      v8 = v16;
      goto LABEL_8;
    }

    sub_18B7CE2F4(v13, a3 & 1);
    v8 = sub_18B7E172C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_18B7B0AC0(0, &qword_1EA9D6CF0);
      result = sub_18BC22078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 16 * v8;

    return sub_18BAA8EC0(a1, v19);
  }

  else
  {
    sub_18B7E177C(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_18B7CE228(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_18B7B0AC0(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_18BC215C8();

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

uint64_t sub_18B7CE2F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7120);
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (a2)
      {
        sub_18B7CDFCC(v21, v32);
      }

      else
      {
        sub_18B7CE7E4(v21, v32);
        v22 = v20;
      }

      result = sub_18BC215B8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_18B7CDFCC(v32, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_18B7CE56C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_18BC1E3F8();
  v7 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v8 = v7;
LABEL_15:
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = v11 | (v8 << 6);
      v13 = *(*(v2 + 48) + 8 * v12);
      sub_18B7CE7E4(*(v2 + 56) + 16 * v12, v22);
      v23 = v13;
      sub_18B7CDFCC(v22, v24);
      v14 = v13;
LABEL_16:
      sub_18B7CE840(&v23, &v25);
      v15 = v25;
      if (!v25)
      {

        return;
      }

      sub_18B7CDFCC(&v26, &v23);
      swift_unknownObjectUnownedLoadStrong();
      v16 = v24[0];
      ObjectType = swift_getObjectType();
      LOBYTE(v16) = (*(v16 + 16))(ObjectType, v16);
      swift_unknownObjectRelease();
      if ((v16 & 1) == 0)
      {
        if ([v15 isScrollEnabled])
        {
          LOBYTE(v21) = 0;
          goto LABEL_26;
        }

        goto LABEL_5;
      }

      v18 = *(v1 + 16);
      if (v18)
      {
        break;
      }

      if (([v15 isScrollEnabled] & 1) == 0)
      {
        LOBYTE(v21) = 1;
        goto LABEL_26;
      }

LABEL_5:
      sub_18B7E1848(&v23);

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_18B7B0AC0(0, &qword_1EA9D6CF0);
    v19 = v15;
    v20 = v18;
    v21 = sub_18BC215C8();

    if (((v21 ^ [v19 isScrollEnabled]) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_26:
    [v15 setScrollEnabled_];

    sub_18B7E1848(&v23);
  }

  while (v5);
LABEL_7:
  if (v6 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      v5 = 0;
      v23 = 0;
      v24[0] = 0;
      v7 = v10;
      v24[1] = 0;
      goto LABEL_16;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_18B7CE840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B7CE8B0()
{
  v0 = _s4PageVMa_0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18B7CEA3C();
  if (v4 && (v5 = *&v4[OBJC_IVAR___SFTabOverview_searchState + 8], v4, v5))
  {
    return 1;
  }

  else
  {
    v7 = *(sub_18B7CC308() + 192);
    sub_18BC1E3F8();

    v9 = 0;
    v10 = *(v7 + 16);
    while (1)
    {
      v6 = v10 != v9;
      if (v10 == v9)
      {
LABEL_8:

        return v6;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      sub_18B82D0A4(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9++, v3, _s4PageVMa_0);
      v11 = v3[*(v0 + 28)];
      result = sub_18B82D1D4(v3, _s4PageVMa_0);
      if (v11 == 1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_18B7CEA3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = _s4PageVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18B7CC308();
  v8 = sub_18B7C2E68(v7);
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  MidY = CGRectGetMidY(v23);
  sub_18B7CECB4(v2, MidX, MidY);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_18B988BAC(v2, &unk_1EA9DBE90);
    return 0;
  }

  sub_18B82FD54(v2, v6, _s4PageVMa_0);
  v19 = sub_18B862854(v6, 0xD000000000000017, 0x800000018BC60750);
  sub_18B82D1D4(v6, _s4PageVMa_0);
  if (v19)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      return 0;
    }
  }

  return v19;
}