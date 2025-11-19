id sub_255662ED4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_255662F34()
{
  result = sub_255662F54();
  qword_27F7BF9F8 = result;
  return result;
}

id sub_255662F54()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_255750180();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA08, &qword_25575CBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25575CBA0;
  *(inited + 32) = 0xD000000000000012;
  v4 = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000255752010;
  *(inited + 48) = 21;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x8000000255751F20;
  v5 = MEMORY[0x277D839B0];
  *(inited + 96) = 0;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000002557520F0;
  *(inited + 144) = 1;
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000255751FB0;
  v6 = sub_2556A04B8(0xD000000000000033, 0x80000002557535A0);
  *(inited + 216) = MEMORY[0x277CC9318];
  *(inited + 192) = v6;
  *(inited + 200) = v7;
  sub_255663164(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF438, &qword_25575B100);
  swift_arrayDestroy();
  v8 = sub_255750070();

  [v2 registerDefaults_];

  return v2;
}

unint64_t sub_255663164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF430, &qword_25575B0F8);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, &v13, &qword_27F7BF438, &qword_25575B100);
      v5 = v13;
      v6 = v14;
      result = sub_2556632FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255663374(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_255663294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2556632FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_255750F80();
  sub_2557501F0();
  v6 = sub_255750FD0();

  return sub_255663384(a1, a2, v6);
}

_OWORD *sub_255663374(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_255663384(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255750EB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_255663460(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

void sub_2556634A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_2557501B0();
    v4 = v3;

    if (v2 == 0xD000000000000011 && 0x8000000255752430 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_255750EB0();
    }
  }

  byte_27F7BFE48 = v1 & 1;
}

uint64_t sub_2556635C8()
{
  result = sub_255750180();
  qword_27F7BE850 = result;
  return result;
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

uint64_t sub_255663658(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2556636A0()
{
  sub_255739A7C(319, &qword_27F7C0100, sub_2556D4CDC);
  if (v0 <= 0x3F)
  {
    sub_255739A7C(319, &qword_27F7C0108, sub_25566464C);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MergeableEntryAssetsPlacement(319);
      if (v2 <= 0x3F)
      {
        sub_255663DDC();
        if (v3 <= 0x3F)
        {
          sub_25574F860();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t static ProtectedData.shared.getter()
{
  if (qword_27F7BD730 != -1)
  {
    swift_once();
  }
}

uint64_t *sub_255663810()
{
  type metadata accessor for ProtectedData();
  swift_allocObject();
  result = sub_25566384C();
  qword_27F7BE858 = result;
  return result;
}

uint64_t *sub_25566384C()
{
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  *(v0 + 4) = 0;
  v0[3] = MEMORY[0x277D84F98];
  out_token = -1;
  sub_255663A1C();
  v3 = sub_255750830();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v8[4] = sub_2556C63B4;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2556C5530;
  v8[3] = &block_descriptor_0;
  v5 = _Block_copy(v8);

  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v3, v5);
  _Block_release(v5);

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2556639B4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE888, &unk_2557580E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2556639E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_255663A1C()
{
  result = qword_27F7BE890;
  if (!qword_27F7BE890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE890);
  }

  return result;
}

uint64_t JournalFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for JournalFeatureFlags;
  v4[4] = sub_255663AC0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_255663AC0()
{
  result = qword_27F7BE7A8;
  if (!qword_27F7BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE7A8);
  }

  return result;
}

const char *JournalFeatureFlags.feature.getter()
{
  result = "Debug";
  switch(*v0)
  {
    case 1:
      result = "iPadOS";
      break;
    case 2:
      result = "macOS";
      break;
    case 3:
      result = "search";
      break;
    case 4:
      result = "recentlyDeleted";
      break;
    case 5:
      result = "statefulNavigation";
      break;
    case 6:
      result = "richCanvas";
      break;
    case 7:
      result = "MultipleJournals";
      break;
    case 8:
      result = "EnhancedSync";
      break;
    case 9:
      result = "FullScreenViewer";
      break;
    case 0xA:
      result = "Location";
      break;
    case 0xB:
      result = "InsightsHighlights";
      break;
    case 0xC:
      result = "CanvasPush";
      break;
    case 0xD:
      result = "SuggestionsAPI";
      break;
    case 0xE:
      result = "FollowupPrompts";
      break;
    case 0xF:
      result = "PortraitAssetGrid";
      break;
    case 0x10:
      result = "MapViewPhotos";
      break;
    case 0x11:
      result = "InspectorColumn";
      break;
    case 0x12:
      result = "MapViewWorkouts";
      break;
    default:
      return result;
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

unint64_t sub_255663D60()
{
  result = qword_27F7BEDA8;
  if (!qword_27F7BEDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7BED20, &unk_2557551D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDA8);
  }

  return result;
}

void sub_255663DDC()
{
  if (!qword_27F7BF5D0)
  {
    sub_25574F0D0();
    sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v0 = sub_25574FD20();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BF5D0);
    }
  }
}

unint64_t sub_255663E98()
{
  result = qword_27F7BEDC8;
  if (!qword_27F7BEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEDC8);
  }

  return result;
}

uint64_t sub_255663F00(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_255663F5C(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 1;
  v8 = [objc_opt_self() defaultManager];
  sub_25574EED0();
  v9 = sub_255750180();

  v10 = [v8 fileExistsAtPath:v9 isDirectory:&v34];

  if (!v10)
  {
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v21 = sub_25574F2C0();
    __swift_project_value_buffer(v21, qword_27F7BFDD8);
    (*(v4 + 16))(v7, a1, v3);
    v22 = sub_25574F2A0();
    v23 = sub_2557507A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v1;
      v26 = v25;
      v35[0] = v25;
      *v24 = 136315138;
      sub_255725B90();
      v27 = sub_255750E60();
      v29 = v28;
      (*(v4 + 8))(v7, v3);
      v30 = sub_2556E474C(v27, v29, v35);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_255661000, v22, v23, "excludeFromBackupSafely directory %s doesn't exists, ignoring.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x259C3F520](v26, -1, -1);
      MEMORY[0x259C3F520](v24, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    goto LABEL_13;
  }

  v11 = sub_25574EE80();
  v12 = sub_255750480();
  if (*MEMORY[0x277CBECB0])
  {
    sub_2557501B0();
    v13 = sub_255750180();

    v35[0] = 0;
    v14 = [v11 setResourceValue:v12 forKey:v13 error:v35];

    v15 = v35[0];
    if (!v14)
    {
      goto LABEL_11;
    }

    v16 = v35[0];
    v17 = sub_255750480();
    if (*MEMORY[0x277CBECB8])
    {
      sub_2557501B0();
      v18 = sub_255750180();

      v35[0] = 0;
      v19 = [v11 setResourceValue:v17 forKey:v18 error:v35];

      v15 = v35[0];
      if (v19)
      {
        v20 = v35[0];

LABEL_13:
        v32 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_11:
      v31 = v15;
      sub_25574ED90();

      swift_willThrow();
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_255664358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v6 = sub_25574EE20();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25574EF10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FileStoreConfiguration();
  if (*(v3 + *(v16 + 24)) == 1)
  {
    v25 = v12;
    v26 = v11;
    v27 = a3;
    v28 = a2;
    v19 = &unk_286789420;
LABEL_8:
    v24[1] = v19;
    v20 = *(v16 + 20);
    v21 = *MEMORY[0x277CC91D8];
    v22 = v7[13];
    v22(v10, v21, v6);
    sub_255663E98();
    sub_25574EEF0();
    v23 = v7[1];
    v23(v10, v6);
    v22(v10, v21, v6);
    sub_25574EEF0();
    v23(v10, v6);
    return (*(v25 + 8))(v15, v26);
  }

  if (*(v3 + *(v16 + 24)))
  {
    v25 = v12;
    v26 = v11;
    v27 = a3;
    v28 = a2;
    v19 = &unk_2867893F0;
    goto LABEL_8;
  }

  v17 = v28;

  return v17();
}

uint64_t sub_2556645E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileStoreConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25566464C()
{
  result = qword_27F7BE8C0;
  if (!qword_27F7BE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE8C0);
  }

  return result;
}

void sub_2556646C0()
{
  sub_2556648CC(319, &qword_27F7BF5C0, MEMORY[0x277CFB568]);
  if (v0 <= 0x3F)
  {
    sub_255664970();
    if (v1 <= 0x3F)
    {
      sub_2556648CC(319, &qword_27F7BF5D0, MEMORY[0x277CFB6F0]);
      if (v2 <= 0x3F)
      {
        sub_25574F860();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2556647AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556647F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25566483C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255664884(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2556648CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25574F0D0();
    v7 = sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v8 = a3(a1, v6, MEMORY[0x277CFB490], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255664970()
{
  if (!qword_27F7BF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7BED20, &unk_2557551D0);
    sub_255663D60();
    v0 = sub_25574F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BF5C8);
    }
  }
}

uint64_t sub_2556649F0()
{
  sub_2557501E0();
  has_internal_ui = os_variant_has_internal_ui();

  byte_27F7BFE4A = has_internal_ui;
  return result;
}

void static Runtime.Environment.current.getter(unsigned __int8 *a1@<X8>)
{
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A == 1)
  {
    if (qword_27F7BD7C8 != -1)
    {
      swift_once();
    }

    v2 = qword_27F7BF9F8;
    v3 = sub_255750180();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v6 = sub_255750180();
      v5 = [v2 BOOLForKey_];
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t type metadata accessor for FileStoreConfiguration()
{
  result = qword_27F7BFE20;
  if (!qword_27F7BFE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255664BF4()
{
  type metadata accessor for URLFileProtection(319);
  if (v0 <= 0x3F)
  {
    sub_25574EF10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255664C80(uint64_t a1, unint64_t *a2)
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

uint64_t static FileStoreConfiguration.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7BD7F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FileStoreConfiguration();
  v3 = __swift_project_value_buffer(v2, qword_27F7BFDF0);

  return sub_2556645E8(v3, a1);
}

uint64_t sub_255664D44()
{
  v0 = type metadata accessor for FileStoreConfiguration();
  __swift_allocate_value_buffer(v0, qword_27F7BFDF0);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFDF0);
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A != 1)
  {
    goto LABEL_10;
  }

  if (qword_27F7BD7C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27F7BF9F8;
  v3 = sub_255750180();
  LOBYTE(v2) = [v2 BOOLForKey_];

  if ((v2 & 1) == 0)
  {
    v5 = qword_27F7BF9F8;
    v6 = sub_255750180();
    LODWORD(v5) = [v5 BOOLForKey_];

    if (v5)
    {
      v4 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v4 = 2;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  v8 = v4;
  return FileStoreConfiguration.init(location:fileProtectionClass:)(&v8, *MEMORY[0x277CBE7E8], v1);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FileStoreConfiguration.init(location:fileProtectionClass:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = sub_25574EF10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = type metadata accessor for FileStoreConfiguration();
  *(a3 + *(v16 + 24)) = v15;
  *a3 = a2;
  v20 = v15;
  sub_2556651A8(&v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_255674B20(v9, &qword_27F7BE270, &unk_25575A3F0);
    result = sub_255750C40();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    (*(v11 + 16))(a3 + *(v16 + 20), v14, v10);
    v19 = v15;
    sub_255665410(&v19);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_2556651A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v15 - v5;
  if (*a1)
  {
    v7 = [objc_opt_self() defaultManager];
    v8 = sub_255750180();
    v9 = [v7 containerURLForSecurityApplicationGroupIdentifier_];

    if (v9)
    {
      sub_25574EEC0();

      v10 = sub_25574EF10();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_25574EF10();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_2556653A0(v6, a2);
  }

  else
  {
    sub_25574EE30();
    v11 = sub_25574EF10();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 0, 1, v11);
  }
}

uint64_t sub_2556653A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255665410(unsigned __int8 *a1)
{
  v179 = *MEMORY[0x277D85DE8];
  v174 = sub_25574EE20();
  v172 = *(v174 - 8);
  v2 = *(v172 + 64);
  MEMORY[0x28223BE20](v174);
  v4 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_25574EF10();
  v175 = *(v171 - 8);
  v5 = *(v175 + 64);
  v6 = MEMORY[0x28223BE20](v171);
  v8 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v162 = &v156 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v159 = &v156 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v160 = &v156 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v166 = &v156 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v158 = &v156 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v167 = &v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v156 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v156 = &v156 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v157 = &v156 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v156 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v156 - v31;
  v33 = *a1;
  if (qword_27F7BD7F0 != -1)
  {
    swift_once();
  }

  v34 = sub_25574F2C0();
  v168 = __swift_project_value_buffer(v34, qword_27F7BFDD8);
  v35 = sub_25574F2A0();
  v36 = sub_255750770();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_255661000, v35, v36, "Creating file system layout", v37, 2u);
    MEMORY[0x259C3F520](v37, -1, -1);
  }

  v161 = v8;
  v165 = v23;
  if (v33 == 1)
  {
    v38 = sub_25574F2A0();
    v39 = sub_255750770();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_255661000, v38, v39, "Creating Staging home directory", v40, 2u);
      MEMORY[0x259C3F520](v40, -1, -1);
    }

    v41 = [objc_opt_self() defaultManager];
    v42 = v176 + *(type metadata accessor for FileStoreConfiguration() + 20);
    v43 = sub_25574EE80();
    v177 = 0;
    v44 = [v41 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v177];

    if (v44)
    {
      v45 = v177;
    }

    else
    {
      v69 = v177;
      v70 = sub_25574ED90();

      swift_willThrow();
      v71 = v70;
      v72 = sub_25574F2A0();
      v73 = sub_255750790();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138412290;
        v76 = v70;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 4) = v77;
        *v75 = v77;
        _os_log_impl(&dword_255661000, v72, v73, "Failed to create Staging home directory: %@", v74, 0xCu);
        sub_255674B20(v75, &qword_27F7BEC80, &qword_255757E90);
        MEMORY[0x259C3F520](v75, -1, -1);
        MEMORY[0x259C3F520](v74, -1, -1);
      }

      else
      {
      }
    }
  }

  v46 = objc_opt_self();
  v47 = [v46 defaultManager];
  v48 = type metadata accessor for FileStoreConfiguration();
  v170 = *(v48 + 24);
  v49 = *(v176 + v170);
  v169 = v48;
  if (v49)
  {
    v50 = *(v48 + 20);
    v51 = v172;
    v52 = v174;
    (*(v172 + 104))(v4, *MEMORY[0x277CC91D8], v174);
    sub_255663E98();
    sub_25574EEF0();
    (*(v51 + 8))(v4, v52);
  }

  else
  {
    sub_25574EE70();
  }

  v53 = v175;
  v54 = v30;
  v55 = v171;
  v163 = *(v175 + 32);
  v164 = v175 + 32;
  v163(v32, v54, v171);
  v56 = sub_25574EE80();
  v57 = *(v53 + 8);
  v175 = v53 + 8;
  v173 = v57;
  v57(v32, v55);
  v177 = 0;
  v58 = [v47 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:&v177];

  v59 = v177;
  if (v58)
  {
    v60 = v176;
    if (*(v176 + v170))
    {
      v61 = *(v169 + 20);
      v62 = v172;
      v63 = v174;
      (*(v172 + 104))(v4, *MEMORY[0x277CC91D8], v174);
      sub_255663E98();
      v64 = v59;
      v65 = v156;
      sub_25574EEF0();
      v66 = v63;
      v60 = v176;
      (*(v62 + 8))(v4, v66);
    }

    else
    {
      v78 = v177;
      v65 = v156;
      sub_25574EE70();
    }

    v79 = v157;
    v80 = v165;
    v163(v157, v65, v55);
    sub_2556673F4(v79);
    v173(v79, v55);
    if (*(v60 + v170))
    {
      v81 = *(v169 + 20);
      v82 = v172;
      v83 = v174;
      (*(v172 + 104))(v4, *MEMORY[0x277CC91D8], v174);
      sub_255663E98();
      sub_25574EEF0();
      (*(v82 + 8))(v4, v83);
    }

    else
    {
      sub_25574EE50();
    }

    sub_255663F5C(v80);
    v173(v80, v55);
  }

  else
  {
    v67 = v177;
    v68 = sub_25574ED90();

    swift_willThrow();
    v60 = v176;
    v84 = v68;
    v85 = sub_25574F2A0();
    v86 = sub_255750790();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      v89 = v68;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 4) = v90;
      *v88 = v90;
      _os_log_impl(&dword_255661000, v85, v86, "Filed to create temp directory: %@", v87, 0xCu);
      sub_255674B20(v88, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v88, -1, -1);
      MEMORY[0x259C3F520](v87, -1, -1);
    }

    else
    {
    }
  }

  v91 = [v46 defaultManager];
  v92 = v167;
  FileStoreConfiguration.cachesDirectoryURL.getter(v167);
  v93 = sub_25574EE80();
  v173(v92, v55);
  v177 = 0;
  v94 = [v91 createDirectoryAtURL:v93 withIntermediateDirectories:1 attributes:0 error:&v177];

  v95 = v172;
  if (v94)
  {
    v96 = v177;
    v97 = v166;
  }

  else
  {
    v98 = v177;
    v99 = sub_25574ED90();

    swift_willThrow();
    v100 = v99;
    v101 = sub_25574F2A0();
    v102 = sub_255750790();

    v103 = os_log_type_enabled(v101, v102);
    v97 = v166;
    if (v103)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      v106 = v99;
      v107 = _swift_stdlib_bridgeErrorToNSError();
      *(v104 + 4) = v107;
      *v105 = v107;
      _os_log_impl(&dword_255661000, v101, v102, "Failed to create cache directory: %@", v104, 0xCu);
      sub_255674B20(v105, &qword_27F7BEC80, &qword_255757E90);
      v108 = v105;
      v60 = v176;
      MEMORY[0x259C3F520](v108, -1, -1);
      MEMORY[0x259C3F520](v104, -1, -1);
    }

    else
    {
    }
  }

  v109 = [v46 defaultManager];
  if (*(v60 + v170))
  {
    v110 = *(v169 + 20);
    v111 = *(v95 + 104);
    v112 = v174;
    v111(v4, *MEMORY[0x277CC91D8], v174);
    sub_255663E98();
    sub_25574EEF0();
    (*(v95 + 8))(v4, v112);
  }

  else
  {
    sub_25574EE50();
    v111 = *(v95 + 104);
  }

  v177 = 0x656D686361747441;
  v178 = 0xEB0000000073746ELL;
  LODWORD(v157) = *MEMORY[0x277CC91C0];
  v113 = v174;
  v165 = v111;
  (v111)(v4);
  sub_255663E98();
  v114 = v158;
  sub_25574EF00();
  v115 = *(v95 + 8);
  v172 = v95 + 8;
  v166 = v115;
  (v115)(v4, v113);
  v116 = v171;
  v117 = v173;
  v173(v97, v171);
  v118 = sub_25574EE80();
  v117(v114, v116);
  v177 = 0;
  v119 = [v109 createDirectoryAtURL:v118 withIntermediateDirectories:1 attributes:0 error:&v177];

  if (v119)
  {
    v120 = v177;
  }

  else
  {
    v121 = v177;
    v122 = sub_25574ED90();

    swift_willThrow();
    v123 = v122;
    v124 = sub_25574F2A0();
    v125 = sub_255750780();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412290;
      v128 = v122;
      v129 = _swift_stdlib_bridgeErrorToNSError();
      *(v126 + 4) = v129;
      *v127 = v129;
      _os_log_impl(&dword_255661000, v124, v125, "Filed to create attachments directory: %@", v126, 0xCu);
      sub_255674B20(v127, &qword_27F7BEC80, &qword_255757E90);
      v130 = v176;
      MEMORY[0x259C3F520](v127, -1, -1);
      MEMORY[0x259C3F520](v126, -1, -1);

      goto LABEL_42;
    }
  }

  v130 = v176;
LABEL_42:
  v131 = v166;
  if (*(v130 + v170))
  {
    v132 = *(v169 + 20);
    v133 = v174;
    v165(v4, *MEMORY[0x277CC91D8], v174);
    v134 = v159;
    sub_25574EEF0();
    v135 = v4;
    v131(v4, v133);
  }

  else
  {
    v135 = v4;
    v134 = v159;
    sub_25574EE70();
  }

  v136 = v160;
  v137 = v134;
  v138 = v171;
  v163(v160, v137, v171);
  v139 = *v130;
  URL.setProtectionClass(protectionClass:)(*v130);
  v140 = v173;
  v173(v136, v138);
  v141 = v167;
  FileStoreConfiguration.cachesDirectoryURL.getter(v167);
  URL.setProtectionClass(protectionClass:)(v139);
  v140(v141, v138);
  if (*(v176 + v170))
  {
    v142 = v135;
    v143 = v165;
    v144 = *(v169 + 20);
    v145 = v174;
    v165(v142, *MEMORY[0x277CC91D8], v174);
    v146 = v161;
    sub_25574EEF0();
    v147 = v145;
    v148 = v146;
    v149 = v166;
    (v166)(v142, v147);
  }

  else
  {
    v148 = v161;
    sub_25574EE50();
    v142 = v135;
    v143 = v165;
    v149 = v166;
  }

  v177 = 0x656D686361747441;
  v178 = 0xEB0000000073746ELL;
  v150 = v174;
  v143(v142, v157, v174);
  v151 = v162;
  sub_25574EF00();
  v149(v142, v150);
  v152 = v171;
  v153 = v173;
  v173(v148, v171);
  URL.setProtectionClass(protectionClass:)(v139);
  result = v153(v151, v152);
  v155 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25566662C()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BFDD8);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFDD8);
  if (qword_27F7BD5D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556666F4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C04F8);
  __swift_project_value_buffer(v0, qword_27F7C04F8);
  return sub_25574F2B0();
}

id sub_255666800()
{
  type metadata accessor for ForModuleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F7C05A0 = result;
  return result;
}

unint64_t sub_255666858()
{
  result = qword_27F7BE198;
  if (!qword_27F7BE198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE198);
  }

  return result;
}

uint64_t FileStoreConfiguration.libraryDirectoryURL.getter()
{
  v1 = sub_25574EE20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileStoreConfiguration();
  if (*(v0 + *(v6 + 24)))
  {
    v7 = *(v6 + 20);
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    sub_255663E98();
    sub_25574EEF0();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {

    return sub_25574EE50();
  }
}

uint64_t sub_255666A78()
{
  result = sub_255750180();
  qword_27F7BE848 = result;
  return result;
}

void sub_255666B08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755040;
  if (qword_27F7BD648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCE8;
  *(v0 + 32) = qword_27F7BDCE8;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD6A0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD40;
  *(v0 + 48) = qword_27F7BDD40;
  v8 = qword_27F7BD608;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDCA8;
  *(v0 + 56) = qword_27F7BDCA8;
  v11 = qword_27F7BD620;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_27F7BDCC0;
  *(v0 + 64) = qword_27F7BDCC0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v14 = v13;
  v15 = sub_255750370();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  qword_27F7BDCF0 = v16;
}

void sub_255666D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755030;
  if (qword_27F7BD628 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCC8;
  *(v0 + 32) = qword_27F7BDCC8;
  v2 = qword_27F7BD630;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDCD0;
  *(v0 + 40) = qword_27F7BDCD0;
  v5 = qword_27F7BD638;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDCD8;
  *(v0 + 48) = qword_27F7BDCD8;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v8 = v7;
  v9 = sub_255750370();

  v10 = [objc_opt_self() orPredicateWithSubpredicates_];

  qword_27F7BDCE8 = v10;
}

uint64_t sub_255666E80()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0x737465737361;
  *(v0 + 40) = 0xE600000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x6E65646469487369;
  *(v0 + 80) = 0xE800000000000000;
  result = sub_255750750();
  qword_27F7BDCC8 = result;
  return result;
}

unint64_t sub_255666F5C()
{
  result = qword_27F7BED90;
  if (!qword_27F7BED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BED90);
  }

  return result;
}

uint64_t sub_255666FB0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0x676E654C74786574;
  *(v0 + 40) = 0xEA00000000006874;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x676E654C74786574;
  *(v0 + 80) = 0xEA00000000006874;
  result = sub_255750750();
  qword_27F7BDCD0 = result;
  return result;
}

uint64_t static JournalDataUtilities.getRecentlyDeletedEntriesCount(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  if (qword_27F7BD6B0 != -1)
  {
    swift_once();
  }

  [v2 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v3 = sub_2557508B0();

  return v3;
}

uint64_t sub_2556671F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_25574F860();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_2556673F4(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF10();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - v8;
  v9 = sub_25574ED80();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v46 = 1;
  v16 = [objc_opt_self() defaultManager];
  sub_25574EED0();
  v17 = sub_255750180();

  v18 = [v16 fileExistsAtPath:v17 isDirectory:&v46];

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB78, &unk_25575DF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_255755060;
    v20 = *MEMORY[0x277CBE878];
    *(inited + 32) = *MEMORY[0x277CBE878];
    v21 = v20;
    sub_255668820(inited, &qword_27F7BFE30, &qword_25575E028);
    swift_setDeallocating();
    sub_255725BE8(inited + 32, type metadata accessor for URLResourceKey);
    sub_25574EE40();

    if (!v1)
    {
      v22 = sub_25574ED40();
      v23 = *(v43 + 8);
      v23(v15, v9);
      if (v22 != 2 && (v22 & 1) == 0)
      {
        sub_25574ED70();
        sub_25574ED50();
        v24 = v44;
        v25 = v42;
        v26 = a1;
        v27 = v45;
        (*(v44 + 16))(v42, v26, v45);
        sub_25574EE60();
        (*(v24 + 8))(v25, v27);
        v23(v13, v9);
      }
    }
  }

  else
  {
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v28 = sub_25574F2C0();
    __swift_project_value_buffer(v28, qword_27F7BFDD8);
    v29 = v44;
    v30 = v45;
    (*(v44 + 16))(v7, a1, v45);
    v31 = sub_25574F2A0();
    v32 = sub_2557507A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47[0] = v34;
      *v33 = 136315138;
      sub_255725B90();
      v35 = sub_255750E60();
      v36 = v29;
      v37 = v35;
      v39 = v38;
      (*(v36 + 8))(v7, v30);
      v40 = sub_2556E474C(v37, v39, v47);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_255661000, v31, v32, "excludeFromBackupFully directory %s doesn't exists, ignoring.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x259C3F520](v34, -1, -1);
      MEMORY[0x259C3F520](v33, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v7, v30);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_255667978()
{
  v0 = sub_255750180();
  v1 = objc_opt_self();
  type metadata accessor for MergeableEntryAttributesTransformer(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setValueTransformer:v2 forName:v0];

  v3 = sub_255750180();
  type metadata accessor for MergeableJournalAttributesTransformer(0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setValueTransformer:v4 forName:v3];

  v5 = sub_255750180();
  type metadata accessor for MergeableAppStorageTransformer(0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setValueTransformer:v6 forName:v5];

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755E40;
  if (qword_27F7BD7B0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F7C05A0;
  *(v8 + 32) = qword_27F7C05A0;
  sub_255666858();
  v10 = v9;
  v11 = sub_255750370();

  v12 = [v7 mergedModelFromBundles_];

  if (!v12)
  {
    __break(1u);
  }
}

uint64_t sub_255667BB8()
{
  result = type metadata accessor for MergeableEntryAttributes(319);
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

id sub_255667DEC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MergeableEntryAttributesTransformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_255667E54()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MergeableDataValueTransformer();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_255667F38()
{
  result = type metadata accessor for MergeableJournalAttributes(319);
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

void sub_255667FC8()
{
  sub_25566807C();
  if (v0 <= 0x3F)
  {
    sub_2556680D4();
    if (v1 <= 0x3F)
    {
      sub_2556683F0();
      if (v2 <= 0x3F)
      {
        sub_25574F860();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25566807C()
{
  if (!qword_27F7BDF58)
  {
    v0 = sub_25574F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BDF58);
    }
  }
}

void sub_2556680D4()
{
  if (!qword_27F7BDF60)
  {
    type metadata accessor for MergeableColor(255);
    sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor);
    v0 = sub_25574F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BDF60);
    }
  }
}

void sub_2556681A8()
{
  type metadata accessor for SRGBColor(319);
  if (v0 <= 0x3F)
  {
    sub_2556AA940();
    if (v1 <= 0x3F)
    {
      sub_2556682B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_255668230()
{
  result = sub_25574FB30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2556682B0()
{
  if (!qword_27F7BDFF8)
  {
    sub_25574F320();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7BDFF8);
    }
  }
}

uint64_t sub_255668318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255668360(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2556683F0()
{
  if (!qword_27F7BDF68)
  {
    type metadata accessor for MergeableJournalAttributes.Icon(255);
    sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon);
    v0 = sub_25574F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BDF68);
    }
  }
}

id sub_255668634(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MergeableJournalAttributesTransformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_255668698()
{
  type metadata accessor for SidebarPreferences(319);
  if (v0 <= 0x3F)
  {
    sub_255669014();
    if (v1 <= 0x3F)
    {
      sub_25574F860();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255668734()
{
  sub_2557239BC(319, &qword_27F7BFCE8, MEMORY[0x277CFB6F0]);
  if (v0 <= 0x3F)
  {
    sub_2557239BC(319, &qword_27F7BFCF0, MEMORY[0x277CFB568]);
    if (v1 <= 0x3F)
    {
      sub_255723AA0();
      if (v2 <= 0x3F)
      {
        sub_25574F860();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_255668820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_255750AE0();
    v6 = 0;
    v7 = v5 + 56;
    v29 = v3;
    v30 = a1 + 32;
    v8 = v3;
    while (1)
    {
      v9 = *(v30 + 8 * v6);
      v10 = *(v5 + 40);
      sub_2557501B0();
      sub_255750F80();
      v31 = v9;
      sub_2557501F0();
      v11 = sub_255750FD0();

      v13 = -1 << *(v5 + 32);
      v14 = v11 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_15;
      }

      v18 = ~v13;
      do
      {
        v19 = *(*(v5 + 48) + 8 * v14);
        v20 = sub_2557501B0();
        v22 = v21;
        if (v20 == sub_2557501B0() && v22 == v23)
        {

LABEL_4:
          v8 = v29;
          goto LABEL_5;
        }

        v25 = sub_255750EB0();

        if (v25)
        {

          goto LABEL_4;
        }

        v14 = (v14 + 1) & v18;
        v15 = v14 >> 6;
        v16 = *(v7 + 8 * (v14 >> 6));
        v17 = 1 << v14;
      }

      while (((1 << v14) & v16) != 0);
      v8 = v29;
LABEL_15:
      *(v7 + 8 * v15) = v17 | v16;
      *(*(v5 + 48) + 8 * v14) = v31;
      v26 = *(v5 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
        return result;
      }

      *(v5 + 16) = v28;
LABEL_5:
      if (++v6 == v8)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

Swift::Void __swiftcall URL.setProtectionClass(protectionClass:)(NSURLFileProtectionType protectionClass)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25574EF10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25574EE80();
  v9 = *MEMORY[0x277CBE7F8];
  v30[0] = 0;
  LODWORD(protectionClass) = [v8 setResourceValue:protectionClass forKey:v9 error:v30];

  v10 = v30[0];
  if (protectionClass)
  {
    v11 = *MEMORY[0x277D85DE8];

    v12 = v10;
  }

  else
  {
    v29 = v30[0];
    v13 = v30[0];
    v14 = sub_25574ED90();

    swift_willThrow();
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v15 = sub_25574F2C0();
    __swift_project_value_buffer(v15, qword_27F7BFDD8);
    (*(v4 + 16))(v7, v1, v3);
    v16 = v14;
    v17 = sub_25574F2A0();
    v18 = sub_255750780();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v19 = 136315394;
      sub_255725B90();
      v21 = sub_255750E60();
      v23 = v22;
      (*(v4 + 8))(v7, v3);
      v24 = sub_2556E474C(v21, v23, v30);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_255661000, v17, v18, "Error setting file protection for %s %@", v19, 0x16u);
      sub_255674B20(v20, &qword_27F7BEC80, &qword_255757E90);
      MEMORY[0x259C3F520](v20, -1, -1);
      v27 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x259C3F520](v27, -1, -1);
      MEMORY[0x259C3F520](v19, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v28 = *MEMORY[0x277D85DE8];
  }
}

id static NSManagedObjectModel.shared.getter()
{
  if (qword_27F7BD6D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BE188;

  return v1;
}

void sub_255668EB8()
{
  sub_2556682B0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_255668F64()
{
  result = type metadata accessor for MergeableAppStorage(319);
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

void sub_255669014()
{
  if (!qword_27F7BFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA80, &qword_255758AE8);
    sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8);
    v0 = sub_25574F4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BFD68);
    }
  }
}

uint64_t sub_2556690B8()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDC90 = result;
  return result;
}

uint64_t sub_25566911C()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCA8 = result;
  return result;
}

uint64_t sub_255669180()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCC0 = result;
  return result;
}

uint64_t EntriesSortOrder.getSortDescriptors()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_255755E40;
  sub_2556692F4();
  swift_getKeyPath();
  *(v2 + 32) = sub_2557507B0();
  return v2;
}

unint64_t sub_2556692F4()
{
  result = qword_27F7BE228;
  if (!qword_27F7BE228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE228);
  }

  return result;
}

unint64_t SettingsKey.rawValue.getter()
{
  result = 0x5F4F545F45564153;
  switch(*v0)
  {
    case 1:
    case 0xC:
    case 0xE:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x52544E455F444441;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD00000000000001DLL;
      break;
    case 0x10:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD000000000000019;
      break;
    case 0x12:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2556695CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  if (qword_27F7BD648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCE8;
  *(v0 + 32) = qword_27F7BDCE8;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD6A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD48;
  *(v0 + 48) = qword_27F7BDD48;
  v8 = qword_27F7BD620;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDCC0;
  *(v0 + 56) = qword_27F7BDCC0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v11 = v10;
  v12 = sub_255750370();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  qword_27F7BDD50 = v13;
}

uint64_t sub_255669798(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_255669870(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for MergeableAppStorageTransformer(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ProtectedData.state.getter@<X0>(char *a1@<X8>)
{
  result = MKBGetDeviceLockState();
  v3 = result == 2;
  if (result == 1)
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

void static EntriesSortOrder.timeline.getter(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_255750180();
  v4 = [v2 stringForKey_];

  v6 = 0;
  if (v4)
  {
    sub_2557501B0();

    v5 = sub_255750CD0();

    if (v5 == 1)
    {
      v6 = 1;
    }
  }

  *a1 = v6;
}

id static JournalEntryMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_255669A88(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_255669AEC()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  strcpy((v0 + 32), "deletedOnDate");
  *(v0 + 46) = -4864;
  result = sub_255750750();
  qword_27F7BDD40 = result;
  return result;
}

void sub_255669BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_255750180();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27F7BFA00 = v2;
}

id static JournalEntryAssetMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t type metadata accessor for PhotoLibraryAssetMetadata()
{
  result = qword_27F7BE528;
  if (!qword_27F7BE528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255669DC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_25574F860();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t MergeableEntryAttributes.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v151 = a1;
  v155 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = (&v118 - v5);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v122 = *(v125 - 8);
  v6 = *(v122 + 64);
  v7 = MEMORY[0x28223BE20](v125);
  v120 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v146 = *(v10 - 8);
  v147 = v10;
  v11 = *(v146 + 64);
  MEMORY[0x28223BE20](v10);
  v124 = &v118 - v12;
  v13 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v129 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v130 = *(v131 - 8);
  v17 = *(v130 + 64);
  v18 = MEMORY[0x28223BE20](v131);
  v133 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v118 - v21;
  MEMORY[0x28223BE20](v20);
  v123 = &v118 - v22;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v136 = *(v135 - 8);
  v23 = *(v136 + 64);
  v24 = MEMORY[0x28223BE20](v135);
  v134 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v132 = &v118 - v27;
  MEMORY[0x28223BE20](v26);
  v127 = &v118 - v28;
  v150 = sub_25574F860();
  v152 = *(v150 - 8);
  v29 = *(v152 + 64);
  v30 = MEMORY[0x28223BE20](v150);
  v121 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v142 = (&v118 - v32);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v153 = *(v143 - 8);
  v33 = *(v153 + 64);
  MEMORY[0x28223BE20](v143);
  v138 = (&v118 - v34);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v35 = *(*(v154 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v154);
  v141 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v118 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v118 - v41;
  v140 = (&v118 - v41);
  v149 = type metadata accessor for MergeableEntryAttributes(0);
  v43 = &a2[v149[6]];
  v44 = sub_25574F0D0();
  v45 = *(*(v44 - 8) + 56);
  v45(v42, 1, 1, v44);
  v148 = sub_255664884(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v46 = v43 + v14[8];
  sub_25574FD10();
  v47 = v43 + v14[9];
  sub_25574FD10();
  sub_25574F850();
  v48 = v14[7];
  v45(v40, 1, 1, v44);
  v49 = v141;
  sub_255663294(v40, v141, &unk_27F7BED20, &unk_2557551D0);
  v137 = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v40, &unk_27F7BED20, &unk_2557551D0);
  v139 = v14[10];
  sub_25574F850();
  v50 = v138;
  v51 = v143;
  (*(v153 + 16))(v43, v138, v143);
  v52 = v140;
  sub_255663294(v140, v40, &unk_27F7BED20, &unk_2557551D0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v53 - 8) + 8))(v43 + v48, v53);
  sub_255663294(v40, v49, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  v54 = v40;
  v55 = v150;
  sub_255674B20(v54, &unk_27F7BED20, &unk_2557551D0);
  (*(v153 + 8))(v50, v51);
  sub_255674B20(v52, &unk_27F7BED20, &unk_2557551D0);
  v57 = v152 + 40;
  v56 = *(v152 + 40);
  v145 = v43;
  v56(v43 + v139, v142, v55);
  v58 = v149;
  v154 = v149[7];
  sub_25574FD10();
  v59 = v58[8];
  sub_25574F850();
  v60 = v144;
  v61 = sub_25574FE90();
  if (v60)
  {

    v62 = v145;
    v64 = v154;
    v63 = v155;
  }

  else
  {
    v142 = v56;
    v143 = v44;
    v141 = v57;
    v144 = v59;
    v65 = v136;
    v153 = v61;
    if (sub_25574FED0())
    {
      sub_2556D4CDC();
      v66 = v134;
      sub_25574F9B0();
      v67 = v155;
      (*(v65 + 32))(v155, v66, v135);
      v68 = v145;
    }

    else
    {
      sub_2556D4CDC();
      v69 = v132;
      sub_25574F8B0();
      v70 = *(v65 + 32);
      v71 = v127;
      v72 = v135;
      v70(v127, v69, v135);
      v67 = v155;
      v73 = v72;
      v68 = v145;
      v70(v155, v71, v73);
    }

    v74 = sub_25574FED0();
    v75 = v133;
    if (v74)
    {
      sub_25566464C();
      sub_25574F9B0();
      (*(v130 + 32))(&v67[v149[5]], v75, v131);
    }

    else
    {
      sub_25566464C();
      v76 = v128;
      sub_25574F8B0();
      v77 = *(v130 + 32);
      v78 = v123;
      v79 = v76;
      v80 = v131;
      v77(v123, v79, v131);
      v77(&v67[v149[5]], v78, v80);
    }

    v64 = v154;
    v81 = sub_25574FED0();
    v82 = v129;
    if (v81)
    {
      MergeableEntryAssetsPlacement.init(from:)(v81, v129);
      sub_255677F7C(v82, v68);
    }

    if (sub_25574FED0())
    {
      v83 = v124;
      sub_25574FC10();
      (*(v146 + 40))(&v67[v64], v83, v147);
    }

    v84 = sub_25574FEC0();
    v148 = 0;
    v86 = sub_2556771A4(v84);

    v157 = v86;
    sub_2556775F8(0x656C746974, 0xE500000000000000);

    sub_2556775F8(1954047348, 0xE400000000000000);

    sub_2556775F8(0x616C507465737361, 0xEE00746E656D6563);

    sub_2556775F8(0xD000000000000014, 0x80000002557538E0);

    v87 = v157;
    v88 = v157 + 56;
    v89 = 1 << *(v157 + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = v90 & *(v157 + 56);
    v92 = (v89 + 63) >> 6;
    v140 = (v122 + 56);

    v93 = 0;
    v138 = MEMORY[0x277D84F90];
    v139 = v92;
    v143 = v88;
    while (2)
    {
      v94 = v93;
      if (!v91)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v93 = v94;
LABEL_24:
        v95 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v96 = (*(v87 + 48) + ((v93 << 10) | (16 * v95)));
        v98 = *v96;
        v97 = v96[1];

        if (sub_25574FED0())
        {
          break;
        }

        v99 = v126;
        (*v140)(v126, 1, 1, v125);
        sub_255674B20(v99, &qword_27F7BDEE0, &unk_2557552C0);
        v94 = v93;
        v88 = v143;
        v92 = v139;
        if (!v91)
        {
          while (1)
          {
LABEL_21:
            v93 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              __break(1u);
              goto LABEL_40;
            }

            if (v93 >= v92)
            {
              break;
            }

            v91 = *(v88 + 8 * v93);
            ++v94;
            if (v91)
            {
              goto LABEL_24;
            }
          }

          v111 = v138;
          if (v138[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
            v112 = sub_255750C90();
          }

          else
          {
            v112 = MEMORY[0x277D84F98];
          }

          v63 = v155;
          v113 = v150;
          v114 = v135;
          v156 = v112;
          v115 = v148;
          sub_25567805C(v111, 1, &v156);
          if (v115)
          {

            v116 = v114;
            v64 = v154;
            goto LABEL_14;
          }

          v117 = v121;
          sub_25574F870();

          return v142(&v63[v144], v117, v113);
        }
      }

      v100 = v125;
      v101 = *(v125 + 48);
      v102 = v126;
      *v126 = v98;
      v102[1] = v97;
      v103 = v102;

      v104 = v148;
      sub_25574FDA0();
      v148 = v104;
      if (!v104)
      {

        (*v140)(v103, 0, 1, v100);
        v105 = v119;
        sub_255675060(v103, v119, &qword_27F7BDEE8, &unk_25575B4D0);
        sub_255675060(v105, v120, &qword_27F7BDEE8, &unk_25575B4D0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_255698728(0, v138[2] + 1, 1, v138);
        }

        v106 = v122;
        v68 = v145;
        v108 = v138[2];
        v107 = v138[3];
        if (v108 >= v107 >> 1)
        {
          v110 = sub_255698728(v107 > 1, v108 + 1, 1, v138);
          v106 = v122;
          v138 = v110;
        }

        v109 = v138;
        v138[2] = v108 + 1;
        sub_255675060(v120, v109 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v108, &qword_27F7BDEE8, &unk_25575B4D0);
        v88 = v143;
        v92 = v139;
        continue;
      }

      break;
    }

LABEL_40:

    swift_bridgeObjectRelease_n();
    v63 = v155;
    v116 = v135;
    v68 = v145;
LABEL_14:
    (*(v65 + 8))(v63, v116);
    (*(v130 + 8))(&v63[v149[5]], v131);
    v55 = v150;
    v59 = v144;
    v62 = v68;
  }

  sub_25573439C(v62, type metadata accessor for MergeableEntryAssetsPlacement);
  (*(v146 + 8))(&v63[v64], v147);
  return (*(v152 + 8))(&v63[v59], v55);
}

uint64_t sub_25566B0F0()
{
  if (qword_27F7BD740 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25566B14C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA28, &qword_255758A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255758240;
  *(inited + 32) = 0x6E696C7265646E75;
  *(inited + 40) = 0xE900000000000065;
  v1 = sub_25566B388();
  *(inited + 48) = &type metadata for MergeableTextAttributeScope.UnderlineAttribute;
  *(inited + 56) = v1;
  strcpy((inited + 64), "strikethrough");
  *(inited + 78) = -4864;
  v2 = sub_25566B3DC();
  *(inited + 80) = &type metadata for MergeableTextAttributeScope.StrikethroughAttribute;
  *(inited + 88) = v2;
  *(inited + 96) = 0x726F6C6F63;
  *(inited + 104) = 0xE500000000000000;
  v3 = sub_25566B430();
  *(inited + 112) = &type metadata for MergeableTextAttributeScope.ColorAttribute;
  *(inited + 120) = v3;
  *(inited + 128) = 1953394534;
  *(inited + 136) = 0xE400000000000000;
  v4 = sub_25566B484();
  *(inited + 144) = &type metadata for MergeableTextAttributeScope.FontAttribute;
  *(inited + 152) = v4;
  *(inited + 160) = 0x6F75516B636F6C62;
  *(inited + 168) = 0xEA00000000006574;
  v5 = sub_25566B4D8();
  *(inited + 176) = &type metadata for MergeableTextAttributeScope.BlockQuoteAttribute;
  *(inited + 184) = v5;
  *(inited + 192) = 0x7473694C74786574;
  *(inited + 200) = 0xE900000000000073;
  v6 = sub_25566B52C();
  *(inited + 208) = &type metadata for MergeableTextAttributeScope.TextListsAttribute;
  *(inited + 216) = v6;
  *(inited + 224) = 0x6F69746365726964;
  *(inited + 232) = 0xE90000000000006ELL;
  v7 = sub_25566B580();
  *(inited + 240) = &type metadata for MergeableTextAttributeScope.WritingDirectionAttribute;
  *(inited + 248) = v7;
  *(inited + 256) = 0x6E656D6E67696C61;
  *(inited + 264) = 0xE900000000000074;
  v8 = sub_25566B5D4();
  *(inited + 272) = &type metadata for MergeableTextAttributeScope.AlignmentAttribute;
  *(inited + 280) = v8;
  *(inited + 288) = 0xD000000000000013;
  *(inited + 296) = 0x8000000255752AB0;
  v9 = sub_25566B628();
  *(inited + 304) = &type metadata for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = 0x8000000255752A90;
  v10 = sub_25566B67C();
  *(inited + 336) = &type metadata for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
  *(inited + 344) = v10;
  v11 = sub_25566BAC8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA30, &qword_255758A88);
  result = swift_arrayDestroy();
  qword_27F7BE8E0 = v11;
  return result;
}

unint64_t sub_25566B388()
{
  result = qword_27F7BE950;
  if (!qword_27F7BE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE950);
  }

  return result;
}

unint64_t sub_25566B3DC()
{
  result = qword_27F7BE960;
  if (!qword_27F7BE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE960);
  }

  return result;
}

unint64_t sub_25566B430()
{
  result = qword_27F7BE970;
  if (!qword_27F7BE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE970);
  }

  return result;
}

unint64_t sub_25566B484()
{
  result = qword_27F7BE930;
  if (!qword_27F7BE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE930);
  }

  return result;
}

unint64_t sub_25566B4D8()
{
  result = qword_27F7BE988;
  if (!qword_27F7BE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE988);
  }

  return result;
}

unint64_t sub_25566B52C()
{
  result = qword_27F7BE998;
  if (!qword_27F7BE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE998);
  }

  return result;
}

unint64_t sub_25566B580()
{
  result = qword_27F7BE9B8;
  if (!qword_27F7BE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9B8);
  }

  return result;
}

unint64_t sub_25566B5D4()
{
  result = qword_27F7BE9E0;
  if (!qword_27F7BE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9E0);
  }

  return result;
}

unint64_t sub_25566B628()
{
  result = qword_27F7BE910;
  if (!qword_27F7BE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE910);
  }

  return result;
}

unint64_t sub_25566B67C()
{
  result = qword_27F7BE8F0;
  if (!qword_27F7BE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE8F0);
  }

  return result;
}

uint64_t JournalEntryMO.displayDate.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25574F020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v32[-v17];
  static EntriesSortOrder.timeline.getter(&v33);
  if (v33)
  {
    v19 = [v2 momentDateForSorting];
    if (v19)
    {
      v20 = v19;
      sub_25574EFF0();

      v21 = *(v5 + 32);
      v21(v16, v8, v4);
      (*(v5 + 56))(v16, 0, 1, v4);
      return (v21)(a1, v16, v4);
    }

    v26 = *(v5 + 56);
    v26(v16, 1, 1, v4);
    v27 = [v2 entryDate];
    if (v27)
    {
      v28 = v27;
      sub_25574EFF0();

      v29 = *(v5 + 32);
      v29(v13, v8, v4);
      v26(v13, 0, 1, v4);
      v29(a1, v13, v4);
      result = (*(v5 + 48))(v16, 1, v4);
    }

    else
    {
      v26(v13, 1, 1, v4);
      sub_25574F010();
      v31 = *(v5 + 48);
      if (v31(v13, 1, v4) != 1)
      {
        sub_255687634(v13);
      }

      result = (v31)(v16, 1, v4);
    }

    if (result != 1)
    {
      v30 = v16;
      return sub_255687634(v30);
    }
  }

  else
  {
    v23 = [v2 entryDate];
    if (v23)
    {
      v24 = v23;
      sub_25574EFF0();

      v25 = *(v5 + 32);
      v25(v18, v8, v4);
      (*(v5 + 56))(v18, 0, 1, v4);
      return (v25)(a1, v18, v4);
    }

    (*(v5 + 56))(v18, 1, 1, v4);
    sub_25574F010();
    result = (*(v5 + 48))(v18, 1, v4);
    if (result != 1)
    {
      v30 = v18;
      return sub_255687634(v30);
    }
  }

  return result;
}

unint64_t sub_25566BAC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF440, &qword_25575B108);
    v3 = sub_255750C90();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2556632FC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

unint64_t sub_25566BC28()
{
  result = qword_27F7BE9D8;
  if (!qword_27F7BE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9D8);
  }

  return result;
}

uint64_t sub_25566BD2C()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0x6F7250736465656ELL;
  *(v0 + 40) = 0xEF676E6973736563;
  result = sub_255750750();
  qword_27F7BDD08 = result;
  return result;
}

void sub_25566BE94()
{
  sub_25566BFA8(319, &qword_27F7BE538);
  if (v0 <= 0x3F)
  {
    sub_25566C048(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEBF0);
      if (v2 <= 0x3F)
      {
        sub_25566C048(319, &qword_27F7BE540, type metadata accessor for CGSize);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25566BFA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_255750950();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25566BFF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25566C048(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25566C09C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

NSAttributedString_optional __swiftcall Data.getAttributedString()()
{
  v2 = v1;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF3F8, &qword_25575B0D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v5 = *MEMORY[0x277D74098];
  *(inited + 32) = *MEMORY[0x277D74098];
  v6 = *MEMORY[0x277D74130];
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v7;
  *(inited + 40) = v6;
  v8 = v5;
  v9 = v6;
  v10 = sub_2556746D8(inited);
  swift_setDeallocating();
  sub_255674B20(inited + 32, &qword_27F7BF400, &qword_25575B0D8);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  sub_255674F54(v3, v2);
  v12 = sub_25566C818(v3, v2, v10, 0);
  sub_2556755A8(v3, v2);
  v14 = v12;
  result.value.super.isa = v14;
  result.is_nil = v13;
  return result;
}

id sub_25566C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = sub_25574EF80();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_25566CD08(&qword_27F7BDAE8, type metadata accessor for DocumentReadingOptionKey);
  v8 = sub_255750070();

  v14[0] = 0;
  v9 = [v5 initWithData:v7 options:v8 documentAttributes:a4 error:v14];

  if (v9)
  {
    v10 = v14[0];
  }

  else
  {
    v11 = v14[0];
    sub_25574ED90();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_25566C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255755060;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_255666F5C();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  result = sub_255750750();
  *a4 = result;
  return result;
}

uint64_t sub_25566CA68()
{
  v0 = sub_25574F0D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390);
  sub_255750670();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  sub_255750650();
  sub_2557506B0();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v1 + 16);
  v7 = (v1 + 8);
  while (1)
  {
    v8 = sub_255750710();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_2556CC0AC(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
    LOBYTE(v8) = sub_255750100();
    (*v7)(v4, v0);
    if (v8)
    {
      break;
    }

    sub_2557506C0();
    sub_2557506B0();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_25566CD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25566CD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25566CDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE250, &qword_255756600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MergeableEntryAssetsPlacement.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v132 = a2;
  v133 = a1;
  v2 = sub_25574F860();
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = *(v123 + 64);
  MEMORY[0x28223BE20](v2);
  v107 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = (&v102 - v7);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v108 = *(v110 - 8);
  v8 = *(v108 + 64);
  v9 = MEMORY[0x28223BE20](v110);
  v106 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v126 = *(v12 - 8);
  v127 = v12;
  v13 = *(v126 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v102 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v114 = &v102 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v116 = &v102 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v113 = &v102 - v23;
  MEMORY[0x28223BE20](v22);
  v117 = &v102 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v129 = *(v25 - 8);
  v130 = v25;
  v26 = *(v129 + 64);
  MEMORY[0x28223BE20](v25);
  v122 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v119 = *(v28 - 8);
  v120 = v28;
  v29 = *(v119 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v121 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v118 = (&v102 - v33);
  MEMORY[0x28223BE20](v32);
  v115 = &v102 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v102 - v40;
  v42 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v43 = *(v42 + 20);
  v44 = sub_25574F0D0();
  (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
  sub_255663294(v41, v39, &unk_27F7BED20, &unk_2557551D0);
  v45 = sub_255663D60();
  v128 = v43;
  v46 = v132;
  sub_25574F340();
  sub_255674B20(v41, &unk_27F7BED20, &unk_2557551D0);
  v131 = v42;
  v47 = *(v42 + 32);
  sub_25574F850();
  v48 = v125;
  v49 = sub_25574FE90();
  if (v48)
  {

    v50 = 0;
    v51 = 0;
    v53 = v126;
    v52 = v127;
LABEL_3:
    (*(v129 + 8))(&v46[v128], v130);
    if (v50)
    {
      (*(v53 + 8))(&v46[*(v131 + 24)], v52);
    }

    if (v51)
    {
      (*(v53 + 8))(&v46[*(v131 + 28)], v52);
    }

    return (*(v123 + 8))(&v46[v47], v124);
  }

  else
  {
    v55 = v49;
    v104 = v45;
    v56 = v121;
    v57 = v122;
    v125 = v44;
    if (sub_25574FED0())
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v58 = v56;
      sub_25574F640();
      v59 = v127;
      v103 = v47;
      v102 = v35;
      (*(v119 + 32))(v46, v58, v120);
    }

    else
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v60 = v118;
      sub_25574F560();
      v103 = v47;
      v102 = v35;
      v61 = v120;
      v62 = *(v119 + 32);
      v63 = v115;
      v62(v115, v60, v120);
      v62(v46, v63, v61);
      v59 = v127;
    }

    if (sub_25574FED0())
    {
      sub_25574F420();
      v64 = v55;
      (*(v129 + 40))(&v46[v128], v57, v130);
    }

    else
    {
      v64 = v55;
    }

    v65 = v126;
    v66 = v103;
    v67 = sub_25574FED0();
    v68 = v117;
    if (v67)
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v68 = v116;
      sub_25574FC10();
      v69 = *(v65 + 32);
    }

    else
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v70 = v113;
      sub_25574FB80();
      v69 = *(v65 + 32);
      v69(v68, v70, v59);
    }

    v69(&v46[*(v131 + 24)], v68, v59);
    v71 = sub_25574FED0();
    v72 = v114;
    if (v71)
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v72 = v112;
      sub_25574FC10();
    }

    else
    {
      sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
      v73 = v109;
      sub_25574FB80();
      v69(v72, v73, v59);
    }

    v69(&v132[*(v131 + 28)], v72, v59);
    v74 = sub_25574FEC0();
    v125 = v64;
    v75 = sub_2556771A4(v74);

    v135 = v75;
    sub_2556775F8(0x6573734164697267, 0xEC00000073444974);

    sub_2556775F8(0x657373416D696C73, 0xEB00000000444974);

    sub_2556775F8(0x73416E6564646968, 0xEE00734449746573);

    sub_2556775F8(0x73417361766E6163, 0xEE00734449746573);

    v76 = v135 + 56;
    v77 = 1 << v135[32];
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & *(v135 + 7);
    v80 = (v77 + 63) >> 6;
    v121 = (v108 + 56);
    v122 = v135;

    v81 = 0;
    v118 = MEMORY[0x277D84F90];
    while (1)
    {
      v82 = v81;
      if (!v79)
      {
        break;
      }

LABEL_27:
      v83 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v84 = (*(v122 + 6) + ((v81 << 10) | (16 * v83)));
      v86 = *v84;
      v85 = v84[1];

      if (sub_25574FED0())
      {
        v88 = v110;
        v117 = *(v110 + 48);
        v89 = v111;
        *v111 = v86;
        v89[1] = v85;
        v90 = v89;

        sub_25574FDA0();

        (*v121)(v90, 0, 1, v88);
        v91 = v105;
        sub_25569AA68(v90, v105);
        sub_25569AA68(v91, v106);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_255698728(0, v118[2] + 1, 1, v118);
        }

        v92 = v108;
        v94 = v118[2];
        v93 = v118[3];
        v95 = v106;
        if (v94 >= v93 >> 1)
        {
          v97 = sub_255698728(v93 > 1, v94 + 1, 1, v118);
          v92 = v108;
          v118 = v97;
          v95 = v106;
        }

        v96 = v118;
        v118[2] = v94 + 1;
        sub_25569AA68(v95, v96 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94);
      }

      else
      {

        v87 = v111;
        (*v121)(v111, 1, 1, v110);
        sub_255674B20(v87, &qword_27F7BDEE0, &unk_2557552C0);
      }
    }

    while (1)
    {
      v81 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        v46 = v132;
        v53 = v126;
        v52 = v127;
        v47 = v66;
        v50 = 1;
        v51 = 1;
        (*(v119 + 8))(v132, v120);
        goto LABEL_3;
      }

      if (v81 >= v80)
      {
        break;
      }

      v79 = *&v76[8 * v81];
      ++v82;
      if (v79)
      {
        goto LABEL_27;
      }
    }

    v98 = v118;
    if (v118[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
      v99 = sub_255750C90();
    }

    else
    {
      v99 = MEMORY[0x277D84F98];
    }

    v100 = v132;
    v101 = v107;
    v134 = v99;
    sub_25567797C(v98, 1, &v134);
    sub_25574F870();

    return (*(v123 + 40))(&v100[v66], v101, v124);
  }
}

uint64_t JournalEntryMO.assetsArray.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE828, &qword_255757FE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24[-1] - v3;
  v5 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = &type metadata for JournalFeatureFlags;
  v24[4] = sub_255663AC0();
  LOBYTE(v24[0]) = 8;
  v10 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v10)
  {
    JournalEntryMO.mergeableAssetPlacement.getter(v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_255678A44(v4, v9);
      v20 = JournalEntryMO.assetsArrayUnsorted.getter();
      MEMORY[0x28223BE20](v20);
      *(&v23 - 2) = v9;

      v24[0] = sub_255678FD8(v21);
      sub_255678F28(sub_2556794E0, (&v23 - 4));

      v22 = v24[0];
      sub_25567906C(v9);
      return v22;
    }

    sub_255674B20(v4, &qword_27F7BE828, &qword_255757FE0);
  }

  JournalEntryMO.assetsArrayUnsorted.getter();
  v11 = [v0 assetOrdering];
  v12 = MEMORY[0x277D84F98];
  if (v11)
  {
    v13 = v11;
    v14 = sub_25574EF90();
    v16 = v15;

    v17 = sub_25567A554();
    sub_2556755A8(v14, v16);
    if (v17)
    {
      v12 = v17;
    }
  }

  v24[0] = sub_255678FD8(v18);
  sub_25567A7F8(v24, v12);

  swift_bridgeObjectRelease_n();
  return v24[0];
}

uint64_t JournalEntryMO.mergeableAssetPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = [v2 mergeableAttributes];
  if (v13)
  {
    v14 = v13;
    sub_255678960(v13 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    v15 = 1;
  }

  else
  {
    sub_255678960(v12, v8, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    sub_255678960(&v8[*(v4 + 24)], a1, type metadata accessor for MergeableEntryAssetsPlacement);
    sub_2556C0F6C(v8, type metadata accessor for MergeableEntryAttributes);
    v15 = 0;
  }

  v16 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  return (*(*(v16 - 8) + 56))(a1, v15, 1, v16);
}

void sub_25566E4A4()
{
  sub_25566BFA8(319, &qword_27F7BE538);
  if (v0 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BEBF0);
    if (v1 <= 0x3F)
    {
      sub_25566E80C();
      if (v2 <= 0x3F)
      {
        sub_25566BFA8(319, &qword_27F7BEC00);
        if (v3 <= 0x3F)
        {
          sub_25566E73C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id static JournalEntryAssetFileAttachmentMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_25566E664()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  strcpy((v0 + 32), "isBeingEdited");
  *(v0 + 46) = -4864;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  strcpy((v0 + 72), "isBeingEdited");
  *(v0 + 86) = -4864;
  result = sub_255750750();
  qword_27F7BDD18 = result;
  return result;
}

void sub_25566E73C()
{
  if (!qword_27F7BEC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEB60, &qword_255758B70);
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BEC08);
    }
  }
}

id static SyncDataMO.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_255750180();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_25566E80C()
{
  if (!qword_27F7BDC68)
  {
    sub_25574F020();
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BDC68);
    }
  }
}

uint64_t sub_25566E864(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25566E8D0()
{
  result = qword_27F7BE9B0;
  if (!qword_27F7BE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE9B0);
  }

  return result;
}

uint64_t sub_25566EA00@<X0>(uint64_t *a1@<X8>)
{
  result = AssetSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssetSource.rawValue.getter()
{
  result = 0x6974736567677573;
  switch(*v0)
  {
    case 1:
      v2 = 0x50616964656DLL;
      goto LABEL_8;
    case 2:
      v2 = 0x506567616D69;
      goto LABEL_8;
    case 3:
      return 0x69506172656D6163;
    case 4:
      v2 = 0x506F69647561;
LABEL_8:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6369000000000000;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x6568536572616873;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6C616E7265747865;
      break;
    case 0xA:
      result = 0x6E776F6E6B6E75;
      break;
    case 0xB:
      result = 0x43676E6977617264;
      break;
    case 0xC:
      result = 0x6974616D6F747561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AssetType.rawValue.getter()
{
  result = 0x6F746F6870;
  switch(*v0)
  {
    case 1:
      result = 0x746F68506576696CLL;
      break;
    case 2:
      result = 0x6F65646976;
      break;
    case 3:
      result = 0x636973756DLL;
      break;
    case 4:
      result = 0x74736163646F70;
      break;
    case 5:
      result = 1802465122;
      break;
    case 6:
      result = 0x6F69647561;
      break;
    case 7:
      result = 0x7469736976;
      break;
    case 8:
      result = 0x6E695069746C756DLL;
      break;
    case 9:
      result = 0x4D636972656E6567;
      break;
    case 0xA:
      result = 1802398060;
      break;
    case 0xB:
      result = 0x746361746E6F63;
      break;
    case 0xC:
      result = 0x4974756F6B726F77;
      break;
    case 0xD:
      result = 0x5274756F6B726F77;
      break;
    case 0xE:
      result = 0x697463656C666572;
      break;
    case 0xF:
      result = 0x4D664F6574617473;
      break;
    case 0x10:
      result = 0x63416E6F69746F6DLL;
      break;
    case 0x11:
      result = 0x7261506472696874;
      break;
    case 0x12:
      result = 0x6C6F686563616C70;
      break;
    case 0x13:
      result = 0x76456B6165727473;
      break;
    case 0x14:
      result = 0x676E6977617264;
      break;
    case 0x15:
      result = 0x69747465666E6F63;
      break;
    case 0x16:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for EntrySource()
{
  result = qword_27F7BECE0;
  if (!qword_27F7BECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25566EF10()
{
  sub_25566EF68();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_25566EF68()
{
  if (!qword_27F7BECF0)
  {
    sub_25574F0D0();
    sub_25574F020();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7BECF0);
    }
  }
}

uint64_t sub_25566F090()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCB0 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for AssetPlacement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25566F1AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25566F25C@<X0>(uint64_t *a1@<X8>)
{
  result = AssetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25566F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t Data.asObject<A>(of:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_25574EB00();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_25574EAF0();
  sub_25574EAE0();

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 0, 1, a1);
}

unint64_t sub_25566F59C()
{
  result = qword_27F7BE968;
  if (!qword_27F7BE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE968);
  }

  return result;
}

uint64_t sub_25566F63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SRGBColor.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v74 = sub_25574FB30();
  v72 = *(v74 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for SRGBColor(0) + 32);
  v75 = a2;
  v73 = v20;
  sub_25574FB20();
  v21 = sub_25574FEE0();
  if (v2)
  {

    v27 = v72;
    v28 = v73;
    v29 = v74;
    return (*(v27 + 8))(&v75[v28], v29);
  }

  else
  {
    v22 = v21;
    v70 = v10;
    v71 = a1;
    v68 = v16;
    v69 = v14;
    v23 = v9;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *v75 = v24;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *(v75 + 1) = v25;
    if (sub_25574FF00())
    {
      sub_255750550();
    }

    else
    {
      sub_255750540();
    }

    *(v75 + 2) = v26;
    v31 = sub_25574FF00();
    v66 = v8;
    if (v31)
    {
      sub_255750550();
      v63 = v19;
    }

    else
    {
      v63 = v19;
      sub_255750540();
    }

    *(v75 + 3) = v32;
    v67 = v22;
    v33 = sub_25574FEF0();
    v34 = sub_255676334(v33);

    v77 = v34;
    sub_255676690(1);
    sub_255676690(2);
    sub_255676690(3);
    sub_255676690(4);
    v35 = v77 + 56;
    v36 = 1 << *(v77 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v77 + 56);
    v39 = (v36 + 63) >> 6;
    v65 = (v70 + 56);
    v40 = v77;

    v41 = 0;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      v42 = v41;
      if (!v38)
      {
        break;
      }

LABEL_23:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v44 = *(*(v40 + 48) + ((v41 << 9) | (8 * v43)));
      if (sub_25574FF00())
      {
        v62 = v23;
        v46 = *(v23 + 48);
        v47 = v66;
        *v66 = v44;
        sub_25574F310();
        (*v65)(v47, 0, 1, v62);
        v48 = v47;
        v49 = v68;
        sub_2556AA69C(v48, v68);
        sub_2556AA69C(v49, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_25569874C(0, v64[2] + 1, 1, v64);
        }

        v50 = v69;
        v51 = v70;
        v53 = v64[2];
        v52 = v64[3];
        if (v53 >= v52 >> 1)
        {
          v64 = sub_25569874C(v52 > 1, v53 + 1, 1, v64);
          v50 = v69;
          v51 = v70;
        }

        v54 = v64;
        v64[2] = v53 + 1;
        sub_2556AA69C(v50, v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v53);
      }

      else
      {
        v45 = v66;
        (*v65)(v66, 1, 1, v23);
        sub_255674B20(v45, &qword_27F7BE3F8, &qword_25575C9F0);
      }
    }

    while (1)
    {
      v41 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);

        v28 = v73;
        v29 = v74;
        v27 = v72;
        return (*(v27 + 8))(&v75[v28], v29);
      }

      if (v41 >= v39)
      {
        break;
      }

      v38 = *(v35 + 8 * v41);
      ++v42;
      if (v38)
      {
        goto LABEL_23;
      }
    }

    v55 = v64;
    if (v64[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v56 = sub_255750C90();
    }

    else
    {
      v56 = MEMORY[0x277D84F98];
    }

    v58 = v73;
    v57 = v74;
    v59 = v72;
    v76 = v56;
    sub_255676780(v55, 1, &v76);
    v60 = v63;
    sub_25574FB40();

    return (*(v59 + 40))(&v75[v58], v60, v57);
  }
}

uint64_t SRGBColor.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x259C3EC90](*&v4);
  v5 = *(type metadata accessor for SRGBColor(0) + 32);
  sub_25574FB30();
  sub_255668360(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

void sub_25566FE44(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_255750E50();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for JournalEntryAssetMO();
        v9 = sub_2557503E0();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_255746010(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_25566FF58(0, v5, 1, a1);
  }
}

void sub_25566FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t PhotoLibraryAssetMetadata.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 20);

  return sub_2556700F4(v3, a1);
}

uint64_t sub_2556700F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255670178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_255670254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25567031C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t getEnumTagSinglePayload for AssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

JournalShared::AssetType_optional __swiftcall AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750ED0();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

JournalShared::AssetSource_optional __swiftcall AssetSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetCatalogColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t FileStoreConfiguration.assetStorageDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574EE20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25574EF10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FileStoreConfiguration();
  if (*(v1 + *(v13 + 24)))
  {
    v17[1] = a1;
    v14 = *(v13 + 20);
    v15 = *(v4 + 104);
    v15(v7, *MEMORY[0x277CC91D8], v3);
    sub_255663E98();
    sub_25574EEF0();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    sub_25574EE50();
    v15 = *(v4 + 104);
  }

  v17[2] = 0x656D686361747441;
  v17[3] = 0xEB0000000073746ELL;
  v15(v7, *MEMORY[0x277CC91C0], v3);
  sub_255663E98();
  sub_25574EF00();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2556709F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255670AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_255670B14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE818, &qword_255757FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_25574F860();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_255670D1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_255670F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PhotoLibraryAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE508, &qword_255757040);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for PhotoLibraryAssetMetadata();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_25567159C();
  v18 = v11;
  sub_255750FE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v19 = v7;
    v21 = v47;
    v20 = v48;
    LOBYTE(v50) = 0;
    v22 = v18;
    *v15 = sub_255750D00();
    v15[1] = v23;
    sub_25574F020();
    LOBYTE(v50) = 1;
    sub_255671778(&qword_27F7BDC38, MEMORY[0x277CC9578]);
    sub_255750D40();
    sub_2556719B8(v19, v15 + v12[5]);
    LOBYTE(v50) = 2;
    v24 = sub_255750D00();
    v25 = (v15 + v12[6]);
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v50) = 3;
    v27 = sub_255750D20();
    v28 = v15 + v12[7];
    *v28 = v27;
    v28[8] = v29 & 1;
    LOBYTE(v50) = 4;
    v30 = sub_255750D20();
    v31 = v15 + v12[8];
    *v31 = v30;
    v31[8] = v32 & 1;
    type metadata accessor for CGSize(0);
    v52 = 5;
    sub_255671778(&qword_27F7BE510, type metadata accessor for CGSize);
    sub_255750D40();
    v33 = v51;
    v34 = v15 + v12[9];
    *v34 = v50;
    v34[16] = v33;
    LOBYTE(v50) = 6;
    v35 = sub_255750D00();
    v36 = (v15 + v12[10]);
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v50) = 7;
    v38 = sub_255750D00();
    v39 = (v15 + v12[11]);
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v50) = 8;
    v41 = sub_255750D00();
    v43 = v42;
    (*(v21 + 8))(v22, v20);
    v44 = (v15 + v12[12]);
    *v44 = v41;
    v44[1] = v43;
    sub_255671A3C(v15, v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_255671AF4(v15);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25567159C()
{
  result = qword_27F7BE4F8;
  if (!qword_27F7BE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE4F8);
  }

  return result;
}

uint64_t sub_2556715F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6564497465737361;
    v6 = 0x6D614E6563616C70;
    if (a1 != 2)
    {
      v6 = 0x656475746974616CLL;
    }

    if (a1)
    {
      v5 = 1702125924;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7243657261757173;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x64757469676E6F6CLL;
    if (a1 != 4)
    {
      v3 = 1702521203;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_255671730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255671778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556717C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255671808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255671850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255671898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556718E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255671928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255671970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556719B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255671A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255671AA0()
{
  result = qword_27F7BE550;
  if (!qword_27F7BE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE550);
  }

  return result;
}

uint64_t sub_255671AF4(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotoLibraryAssetMetadata.placeName.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_255671B94()
{
  result = qword_27F7BE558;
  if (!qword_27F7BE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE558);
  }

  return result;
}

uint64_t sub_255671C40(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AssetType.rawValue.getter();
  v4 = v3;
  if (v2 == AssetType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255750EB0();
  }

  return v7 & 1;
}

uint64_t MergeableEntryAttributes.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAttributes(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MergeableFollowUpPromptAttachment()
{
  result = qword_27F7BF9E8;
  if (!qword_27F7BF9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255671E40()
{
  sub_25566BFA8(319, &qword_27F7BE538);
  if (v0 <= 0x3F)
  {
    sub_25566C09C(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEBF0);
      if (v2 <= 0x3F)
      {
        sub_25566BFA8(319, &unk_27F7BEC28);
        if (v3 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BEEA0);
          if (v4 <= 0x3F)
          {
            sub_25566BFA8(319, &qword_27F7C0320);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_255672020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MergeableFont.Traits(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25574FB30();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t MultiPinMapAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02B0, &qword_25575ECA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255672BD8();
  sub_255750FE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0298, &qword_25575ECA0);
    v24 = 0;
    sub_255672E04(&qword_27F7C02B8, &qword_27F7C02C0);
    sub_255750D40();
    v20 = v21;
    v24 = 1;
    sub_255675208();
    sub_255750D40();
    v13 = v21;
    v12 = v22;
    sub_2556A15B8(0, 0xF000000000000000);
    LOBYTE(v21) = 2;
    v23 = sub_255750D10();
    LOBYTE(v21) = 3;
    v16 = sub_255750D30();
    v17 = *(v6 + 8);
    HIDWORD(v19) = v18;
    v17(v9, v5);
    *a2 = v20;
    *(a2 + 8) = v13;
    *(a2 + 16) = v12;
    *(a2 + 24) = v23;
    *(a2 + 32) = v16;
    *(a2 + 40) = BYTE4(v19) & 1;

    sub_25567625C(v13, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v14 = v13;
    v15 = v12;
  }

  return sub_2556A15B8(v14, v15);
}

void sub_255672464()
{
  sub_255672778();
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFEF8, &qword_27F7BFE68, &qword_25575E0E0);
    if (v1 <= 0x3F)
    {
      sub_25566E80C();
      if (v2 <= 0x3F)
      {
        sub_255672600(319, &qword_27F7BFF00, &qword_27F7BFE80, &qword_25575E0E8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25567255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_255672600(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_255750950();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_255672688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MergeableFont.Traits(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25574FB30();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void sub_255672778()
{
  if (!qword_27F7BEBF0)
  {
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BEBF0);
    }
  }
}

uint64_t sub_255672800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_25574FB30();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_255672878()
{
  result = qword_27F7C0368;
  if (!qword_27F7C0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0368);
  }

  return result;
}

uint64_t sub_2556728E0()
{
  result = sub_25574F0D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for LinkAssetMetadata()
{
  result = qword_27F7BDC58;
  if (!qword_27F7BDC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2556729B4()
{
  result = qword_27F7C0370;
  if (!qword_27F7C0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0370);
  }

  return result;
}

void sub_255672A08()
{
  sub_25566BFF4(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_25566BFF4(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_255672AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE078, &qword_255755C28);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_255672BD8()
{
  result = qword_27F7C0290;
  if (!qword_27F7C0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0290);
  }

  return result;
}

CGColorRef SRGBColor.cgColor.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v20 = MEMORY[0x277D84F90];
  sub_255672DE4(0, 4, 0);
  v5 = v20;
  v7 = *(v20 + 16);
  v6 = *(v20 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_255672DE4((v6 > 1), v7 + 1, 1);
    v5 = v20;
    v6 = *(v20 + 24);
    v8 = v6 >> 1;
  }

  *(v5 + 16) = v9;
  *(v5 + 8 * v7 + 32) = v2;
  v10 = v7 + 2;
  if (v8 < v10)
  {
    sub_255672DE4((v6 > 1), v10, 1);
    v5 = v20;
  }

  *(v5 + 16) = v10;
  *(v5 + 8 * v9 + 32) = v1;
  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    sub_255672DE4((v11 > 1), v12 + 1, 1);
  }

  v14 = v20;
  *(v20 + 16) = v13;
  *(v20 + 8 * v12 + 32) = v4;
  v15 = *(v20 + 24);
  v16 = v12 + 2;
  if (v16 > (v15 >> 1))
  {
    sub_255672DE4((v15 > 1), v16, 1);
    v14 = v20;
  }

  *(v14 + 16) = v16;
  v17 = (v14 + 32);
  *(v14 + 32 + 8 * v13) = v3;
  if (qword_27F7BD6E0 != -1)
  {
    swift_once();
    v17 = (v14 + 32);
  }

  v18 = CGColorCreate(qword_27F7BE3A0, v17);

  return v18;
}

char *sub_255672DE4(char *a1, int64_t a2, char a3)
{
  result = sub_255672AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_255672E04(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C0298, &qword_25575ECA0);
    sub_255671970(a2, type metadata accessor for VisitAssetMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255672EA0()
{
  v1 = 0x6144737469736976;
  v2 = 0x6D696C537369;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697369766572;
  }

  if (*v0)
  {
    v1 = 0x72656D614370616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s13JournalShared14MergeableColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_25574F320();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v52 - v7;
  v8 = type metadata accessor for SRGBColor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MergeableColor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v52 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v52 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C8, &unk_255756A40);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v52 - v25;
  v27 = &v52 + *(v24 + 56) - v25;
  sub_25567352C(a1, &v52 - v25, type metadata accessor for MergeableColor);
  sub_25567352C(v57, v27, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25567352C(v26, v21, type metadata accessor for MergeableColor);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_255673758(v21, type metadata accessor for SRGBColor);
LABEL_13:
      sub_255674B20(v26, &qword_27F7BE3C8, &unk_255756A40);
LABEL_24:
      v35 = 0;
      return v35 & 1;
    }

    sub_255673644(v27, v11, type metadata accessor for SRGBColor);
    if (*v21 == *v11 && v21[1] == v11[1] && v21[2] == v11[2] && v21[3] == v11[3])
    {
      v48 = *(v8 + 32);
      v49 = sub_25574FAF0();
      sub_255673758(v11, type metadata accessor for SRGBColor);
      if (v49)
      {
        sub_255673758(v21, type metadata accessor for SRGBColor);
        sub_255673758(v26, type metadata accessor for MergeableColor);
        v35 = 1;
        return v35 & 1;
      }
    }

    else
    {
      sub_255673758(v11, type metadata accessor for SRGBColor);
    }

    sub_255673758(v21, type metadata accessor for SRGBColor);
LABEL_23:
    sub_255673758(v26, type metadata accessor for MergeableColor);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_25567352C(v26, v16, type metadata accessor for MergeableColor);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v55 + 8))(&v16[v36], v56);
      goto LABEL_13;
    }

    v37 = *v16;
    v38 = *v27;
    v40 = v55;
    v39 = v56;
    v41 = *(v55 + 32);
    v42 = &v16[v36];
    v43 = v54;
    v41(v54, v42, v56);
    v44 = &v27[v36];
    v45 = v53;
    v41(v53, v44, v39);
    if (v37 == v38)
    {
      v46 = v43;
      v35 = sub_25574F2F0();
      v47 = *(v40 + 8);
      v47(v45, v39);
      v47(v46, v39);
      goto LABEL_10;
    }

    v50 = *(v40 + 8);
    v50(v45, v39);
    v50(v43, v39);
    goto LABEL_23;
  }

  sub_25567352C(v26, v19, type metadata accessor for MergeableColor);
  v30 = *v19;
  v29 = *(v19 + 1);
  v31 = v19[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2556AA66C(v30, v29, v31);
    goto LABEL_13;
  }

  v32 = *v27;
  v33 = *(v27 + 1);
  v34 = v27[16];
  v61 = v30;
  v62 = v29;
  v63 = v31;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  sub_2556AA9BC();
  v35 = sub_25574F520();
  sub_2556AA66C(v32, v33, v34);
  sub_2556AA66C(v30, v29, v31);
LABEL_10:
  sub_255673758(v26, type metadata accessor for MergeableColor);
  return v35 & 1;
}

uint64_t sub_25567352C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t storeEnumTagSinglePayload for LinkAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_255673644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for LinkAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_255673758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t VisitAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v69 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v69 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0278, &qword_25575EC90);
  v74 = *(v76 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v15 = v69 - v14;
  v16 = type metadata accessor for VisitAssetMetadata(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v21 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_255674878();
  v75 = v15;
  v22 = v77;
  sub_255750FE0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v24 = v74;
  v23 = v75;
  v72 = v16;
  v77 = v19;
  LOBYTE(v79) = 0;
  v25 = v76;
  v26 = sub_255750D00();
  v28 = v77;
  *v77 = v26;
  v28[1] = v29;
  LOBYTE(v79) = 1;
  v28[2] = sub_255750D00();
  v28[3] = v30;
  LOBYTE(v79) = 2;
  v70 = 0;
  v31 = sub_255750D00();
  v71 = 0;
  v32 = v72;
  v28[4] = v31;
  v28[5] = v33;
  v69[2] = sub_25574F020();
  LOBYTE(v79) = 3;
  v69[1] = sub_255671970(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  v34 = v71;
  sub_255750D40();
  v71 = v34;
  if (v34)
  {
    (*(v24 + 8))(v23, v25);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
LABEL_8:
    v40 = v28;
    goto LABEL_9;
  }

  sub_255675060(v12, v28 + v32[7], &qword_27F7BEB40, &unk_255754E40);
  LOBYTE(v79) = 4;
  v39 = v71;
  sub_255750D40();
  v71 = v39;
  if (v39)
  {
    (*(v24 + 8))(v23, v25);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v35 = 1;
    goto LABEL_8;
  }

  sub_255675060(v10, v28 + v32[8], &qword_27F7BEB40, &unk_255754E40);
  LOBYTE(v79) = 5;
  v46 = v71;
  sub_255750D40();
  v71 = v46;
  v40 = v28;
  if (v46)
  {
    (*(v24 + 8))(v23, v25);
    v37 = 0;
    v38 = 0;
    v35 = 1;
    v36 = 1;
    goto LABEL_9;
  }

  sub_255675060(v7, v28 + v32[9], &qword_27F7BEB40, &unk_255754E40);
  LOBYTE(v79) = 6;
  v47 = v71;
  v48 = sub_255750D20();
  if (v47)
  {
    v71 = v47;
LABEL_28:
    (*(v24 + 8))(v23, v25);
    v38 = 0;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    goto LABEL_9;
  }

  v50 = v28 + v32[10];
  *v50 = v48;
  v50[8] = v49 & 1;
  LOBYTE(v79) = 7;
  v51 = sub_255750D20();
  v71 = 0;
  v52 = v28 + v32[11];
  *v52 = v51;
  v52[8] = v53 & 1;
  v80 = 8;
  sub_255675208();
  v54 = v71;
  sub_255750D40();
  v71 = v54;
  if (v54)
  {
    goto LABEL_28;
  }

  *(v28 + v32[12]) = v79;
  v80 = 9;
  v55 = v71;
  sub_255750D40();
  v71 = v55;
  if (!v55)
  {
    *(v77 + v72[13]) = v79;
    LOBYTE(v79) = 10;
    v56 = sub_255750D10();
    v71 = 0;
    *(v77 + v72[14]) = v56;
    LOBYTE(v79) = 11;
    v57 = sub_255750D20();
    v71 = 0;
    v58 = v77 + v72[15];
    *v58 = v57;
    v58[8] = v59 & 1;
    LOBYTE(v79) = 12;
    v60 = sub_255750D20();
    v71 = 0;
    v61 = v77 + v72[16];
    *v61 = v60;
    v61[8] = v62 & 1;
    v80 = 13;
    sub_255675264();
    v63 = v71;
    sub_255750D40();
    v71 = v63;
    if (!v63)
    {
      (*(v24 + 8))(v75, v76);
      v67 = v73;
      v68 = v77;
      *(v77 + v72[17]) = v79;
      sub_255675414(v68, v67);
      __swift_destroy_boxed_opaque_existential_1(v78);
      return sub_2556754BC(v68);
    }

    (*(v24 + 8))(v75, v76);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v40 = v77;
    v64 = v77[1];

    v65 = v40[3];

    v66 = v40[5];

    v32 = v72;
    sub_255674B20(v40 + v72[7], &qword_27F7BEB40, &unk_255754E40);
    sub_255674B20(v40 + v32[8], &qword_27F7BEB40, &unk_255754E40);
    sub_255674B20(v40 + v32[9], &qword_27F7BEB40, &unk_255754E40);
    v45 = 1;
    goto LABEL_20;
  }

  (*(v24 + 8))(v75, v76);
  v35 = 1;
  v36 = 1;
  v37 = 1;
  v38 = 1;
  v40 = v77;
  v32 = v72;
LABEL_9:
  v41 = v70;
  __swift_destroy_boxed_opaque_existential_1(v78);
  v42 = v40[1];

  if (!v41)
  {
    v44 = v40[3];
  }

  v43 = v40[5];

  if (v35)
  {
    result = sub_255674B20(v40 + v32[7], &qword_27F7BEB40, &unk_255754E40);
    if (v36)
    {
LABEL_13:
      result = sub_255674B20(v40 + v32[8], &qword_27F7BEB40, &unk_255754E40);
      if ((v37 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      result = sub_255674B20(v40 + v32[9], &qword_27F7BEB40, &unk_255754E40);
      if ((v38 & 1) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else if (v36)
  {
    goto LABEL_13;
  }

  if (v37)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v38)
  {
    return result;
  }

LABEL_19:
  v45 = 0;
LABEL_20:
  result = sub_2556A15B8(*(v40 + v32[12]), *(v40 + v32[12] + 8));
  if (v45)
  {
    return sub_2556A15B8(*(v40 + v32[13]), *(v40 + v32[13] + 8));
  }

  return result;
}

uint64_t sub_2556740EC(uint64_t a1)
{
  v2 = type metadata accessor for MergeableEntryAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25567415C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MergeableSize(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_25574FB30();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2556742E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t storeEnumTagSinglePayload for CloudKitSyncError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255674414()
{
  result = qword_27F7C0378;
  if (!qword_27F7C0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0378);
  }

  return result;
}

JournalShared::EntryDateSource_optional __swiftcall EntryDateSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2556744D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MergeableSize(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_25574FB30();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_255674660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_25574FB30();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_2556746D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF418, &qword_25575B0E0);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, &v11, &qword_27F7BF400, &qword_25575B0D8);
      v5 = v11;
      result = sub_255674870(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_255663374(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_25567481C()
{
  result = qword_27F7C0380;
  if (!qword_27F7C0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0380);
  }

  return result;
}

unint64_t sub_255674878()
{
  result = qword_27F7C0260;
  if (!qword_27F7C0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0260);
  }

  return result;
}

uint64_t sub_2556748E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25574FB30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_255674984(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_255750A80();

  return sub_255745334(a1, v5);
}

unint64_t sub_2556749C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2557501B0();
  sub_255750F80();
  sub_2557501F0();
  v4 = sub_255750FD0();

  return sub_255674DA0(a1, v4);
}

uint64_t sub_255674A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25574FB30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255674B20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_255674B9C(char a1)
{
  result = 0x6D614E6563616C70;
  switch(a1)
  {
    case 1:
      result = 2037672291;
      break;
    case 2:
      result = 0x6C50664F65707974;
      break;
    case 3:
      result = 0x6174537469736976;
      break;
    case 4:
      result = 0x646E457469736976;
      break;
    case 5:
      result = 0x4464657461657263;
      break;
    case 6:
      result = 0x656475746974616CLL;
      break;
    case 7:
      result = 0x64757469676E6F6CLL;
      break;
    case 8:
      result = 0x746144656C797473;
      break;
    case 9:
      result = 0x446D65744970616DLL;
      break;
    case 10:
      result = 0x6B726F577369;
      break;
    case 11:
      result = 0x6E656469666E6F63;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x756F537465737361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_255674DA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2557501B0();
      v9 = v8;
      if (v7 == sub_2557501B0() && v9 == v10)
      {
        break;
      }

      v12 = sub_255750EB0();

      if ((v12 & 1) == 0)
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

uint64_t storeEnumTagSinglePayload for TokenTypeIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255674F54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_255674FBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25574FB30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255675060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2556750DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25574FB30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255675188()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C0540);
  __swift_project_value_buffer(v0, qword_27F7C0540);
  return sub_25574F2B0();
}

unint64_t sub_255675208()
{
  result = qword_27F7BDC30;
  if (!qword_27F7BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC30);
  }

  return result;
}

unint64_t sub_255675264()
{
  result = qword_27F7C0280;
  if (!qword_27F7C0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0280);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AssetCatalogColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2556753A0()
{
  v1 = *v0;
  sub_2557501B0();
  sub_255750F80();
  sub_2557501F0();
  v2 = sub_255750FD0();

  return v2;
}

uint64_t sub_255675414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255675478@<X0>(uint64_t *a1@<X8>)
{
  sub_2557501B0();
  v2 = sub_255750180();

  *a1 = v2;
  return result;
}

uint64_t sub_2556754BC(uint64_t a1)
{
  v2 = type metadata accessor for VisitAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255675520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2557501B0();
  v6 = v5;
  if (v4 == sub_2557501B0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255750EB0();
  }

  return v9 & 1;
}

uint64_t sub_2556755A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t MergeableProvider.unwrappedMergeableAttributes.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 32))())
  {
    swift_getAssociatedTypeWitness();
    v3 = *(swift_getAssociatedConformanceWitness() + 24);
    swift_checkMetadataState();
    v3();
    swift_unknownObjectRelease();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = 0;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = 1;
  }

  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a2, v5, 1);
}

uint64_t VisitAssetMetadata.placeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_2556757D0()
{
  v1 = [v0 mergeableAttributes];

  return v1;
}

id sub_255675808(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_255750980();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_255674B20(v16, &qword_27F7BE250, &qword_255756600);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_255750EA0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

double sub_255675998@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v30 = *MEMORY[0x277D85000] & *v2;
  v6 = sub_25574F2C0();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v5 & v4) + 0x58);
  v11 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  sub_25566CDF8(a1, v34);
  if (v35)
  {
    if (swift_dynamicCast())
    {
      v27 = v9;
      v20 = v32;
      v21 = v33;
      sub_255674F54(v32, v33);
      v22 = *(*(v30 + 96) + 8);
      sub_25574F4C0();
      (*(v13 + 16))(v17, v19, AssociatedTypeWitness);
      v23 = (*(v10 + 16))(v17, v11, v10);
      v24 = v31;
      v31[3] = v11;
      sub_2556755A8(v20, v21);
      *v24 = v23;
      (*(v13 + 8))(v19, AssociatedTypeWitness);
      return result;
    }
  }

  else
  {
    sub_255674B20(v34, &qword_27F7BE250, &qword_255756600);
  }

  result = 0.0;
  v26 = v31;
  *v31 = 0u;
  *(v26 + 1) = 0u;
  return result;
}

JournalShared::MergeableTextAlignment_optional __swiftcall MergeableTextAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisitAssetMetadata.latitude.getter()
{
  v1 = (v0 + *(type metadata accessor for VisitAssetMetadata(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitSyncError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t VisitAssetMetadata.longitude.getter()
{
  v1 = (v0 + *(type metadata accessor for VisitAssetMetadata(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t VisitAssetMetadata.mapItemData.getter()
{
  v1 = v0 + *(type metadata accessor for VisitAssetMetadata(0) + 52);
  v2 = *v1;
  sub_25567625C(*v1, *(v1 + 8));
  return v2;
}

uint64_t MergeableColor.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MergeableColor(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_25574FEA0();
  if (v1)
  {
  }

  v22 = a1;
  v13 = sub_25574FEB0();
  v15 = v14;

  if (v13 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
    sub_255669798(&qword_27F7BE3D0, &qword_27F7BE3C0, &unk_255756A30);
    sub_255669798(&qword_27F7BE3F0, &qword_27F7BE3C0, &unk_255756A30);
    sub_25574FDF0();

    v18 = v21;
    *v10 = v20;
    v10[16] = v18;
    swift_storeEnumTagMultiPayload();
    v17 = v10;
  }

  else if (v13 == 1)
  {
    SRGBColor.init(from:)(v15, v12);

    swift_storeEnumTagMultiPayload();
    v17 = v12;
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    *v7 = v13;
    sub_25574F310();

    swift_storeEnumTagMultiPayload();
    v17 = v7;
  }

  return sub_255673644(v17, v22, type metadata accessor for MergeableColor);
}

uint64_t sub_25567625C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255674F54(a1, a2);
  }

  return a1;
}

uint64_t sub_255676284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255676334(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C3E270](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2556763A8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2556763A8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_255750F70();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
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
    sub_255676570(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25567649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t MultiPinMapAssetMetadata.revision.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_255676570(uint64_t result, unint64_t a2, char a3)
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
    sub_255700348(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_255701580();
      a2 = v7;
      goto LABEL_12;
    }

    sub_255701FB4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_255750F70();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_255750F00();
  __break(1u);
  return result;
}

uint64_t sub_255676690(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_255750F70();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_255701580();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_255676D4C(v7);
  result = v13;
  *v1 = v14;
  return result;
}

void sub_255676780(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_255668360(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD000000000000023;
    v34[1] = 0x80000002557528E0;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

unint64_t sub_255676D4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2557509C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_255750F70() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t MergeableColor.hash(into:)()
{
  v1 = sub_25574F320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SRGBColor(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableColor(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v0, v13, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      v17 = v13[16];
      MEMORY[0x259C3EC60](1);
      v21[1] = v15;
      v21[2] = v16;
      v22 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
      sub_25574F530();
      return sub_2556AA66C(v15, v16, v17);
    }

    else
    {
      v19 = *v13;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      (*(v2 + 32))(v5, &v13[*(v20 + 48)], v1);
      MEMORY[0x259C3EC60](2);
      MEMORY[0x259C3EC60](v19);
      sub_255668360(&qword_27F7BDE38, MEMORY[0x277CFB4B0]);
      sub_2557500A0();
      return (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    sub_255673644(v13, v9, type metadata accessor for SRGBColor);
    MEMORY[0x259C3EC60](0);
    SRGBColor.hash(into:)();
    return sub_255673758(v9, type metadata accessor for SRGBColor);
  }
}

uint64_t sub_2556771A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C3E270](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2556772D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25567723C()
{
  result = sub_25574FB30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2556772D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_255750F80();
  sub_2557501F0();
  v9 = sub_255750FD0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_255750EB0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_255677420(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_255677420(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2557000E8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_255701424();
      goto LABEL_16;
    }

    sub_255701D7C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_255750F80();
  sub_2557501F0();
  result = sub_255750FD0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_255750EB0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_255750F00();
  __break(1u);
  return result;
}

void sub_2556775A0()
{
  if (!qword_27F7BF288)
  {
    type metadata accessor for MergeableTextList(255);
    v0 = sub_255750470();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BF288);
    }
  }
}

uint64_t sub_2556775F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_255750F80();
  sub_2557501F0();
  v7 = sub_255750FD0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_255750EB0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_255701424();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_255677734(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_255677734(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2557509C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_255750F80();

        sub_2557501F0();
        v15 = sub_255750FD0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2556778F8()
{
  sub_2556775A0();
  if (v0 <= 0x3F)
  {
    sub_25574FB30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25567797C(uint64_t a1, char a2, void *a3)
{
  v65 = sub_25574FDB0();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v62 + 80);
  v61 = a1;
  v16 = (v63 + 32);
  v58 = a1 + ((v15 + 32) & ~v15);
  sub_255663294(v58, v13, &qword_27F7BDEE8, &unk_25575B4D0);
  v18 = v13[1];
  v68 = *v13;
  v17 = v68;
  v69 = v18;
  v19 = *v16;
  v59 = v14;
  v57 = v19;
  v19(v64, v13 + v14, v65);
  v20 = *a3;
  v22 = sub_2556632FC(v17, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_2556632FC(v17, v18);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v34 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v35 = (v34[6] + 16 * v22);
      *v35 = v17;
      v35[1] = v18;
      v57((v34[7] + *(v63 + 72) * v22), v64, v65);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_255663294(v58 + *(v62 + 72) * v39, v13, &qword_27F7BDEE8, &unk_25575B4D0);
          v41 = v13[1];
          v68 = *v13;
          v40 = v68;
          v69 = v41;
          v42 = *v16;
          (*v16)(v64, v13 + v59, v65);
          v43 = *a3;
          v44 = sub_2556632FC(v40, v41);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_255743928(v48, 1);
            v50 = *a3;
            v44 = sub_2556632FC(v40, v41);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v52 = *a3;
          *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = (v52[6] + 16 * v44);
          *v53 = v40;
          v53[1] = v41;
          v42((v52[7] + *(v63 + 72) * v44), v64, v65);
          v54 = v52[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = sub_25574F750();
    sub_2556647F4(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v31 = swift_allocError();
    *v32 = 0xD000000000000037;
    v32[1] = 0x8000000255753340;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277CFB5A8], v30);
    swift_willThrow();
    v70 = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_255677F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255677FE0()
{
  result = sub_25574FB30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25567805C(uint64_t a1, char a2, void *a3)
{
  v65 = sub_25574FDB0();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v62 + 80);
  v61 = a1;
  v16 = (v63 + 32);
  v58 = a1 + ((v15 + 32) & ~v15);
  sub_255663294(v58, v13, &qword_27F7BDEE8, &unk_25575B4D0);
  v18 = v13[1];
  v68 = *v13;
  v17 = v68;
  v69 = v18;
  v19 = *v16;
  v59 = v14;
  v57 = v19;
  v19(v64, v13 + v14, v65);
  v20 = *a3;
  v22 = sub_2556632FC(v17, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_2556632FC(v17, v18);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v34 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v35 = (v34[6] + 16 * v22);
      *v35 = v17;
      v35[1] = v18;
      v57((v34[7] + *(v63 + 72) * v22), v64, v65);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_255663294(v58 + *(v62 + 72) * v39, v13, &qword_27F7BDEE8, &unk_25575B4D0);
          v41 = v13[1];
          v68 = *v13;
          v40 = v68;
          v69 = v41;
          v42 = *v16;
          (*v16)(v64, v13 + v59, v65);
          v43 = *a3;
          v44 = sub_2556632FC(v40, v41);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_255743928(v48, 1);
            v50 = *a3;
            v44 = sub_2556632FC(v40, v41);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v52 = *a3;
          *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = (v52[6] + 16 * v44);
          *v53 = v40;
          v53[1] = v41;
          v42((v52[7] + *(v63 + 72) * v44), v64, v65);
          v54 = v52[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = sub_25574F750();
    sub_255664884(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v31 = swift_allocError();
    *v32 = 0xD000000000000032;
    v32[1] = 0x8000000255753900;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277CFB5A8], v30);
    swift_willThrow();
    v70 = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

id sub_25567865C(uint64_t a1)
{
  v2 = type metadata accessor for WrappedMergeableEntryAttributes(0);
  v3 = objc_allocWithZone(v2);
  sub_255678764(a1, v3 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556740EC(a1);
  return v4;
}

uint64_t sub_2556786D8()
{
  result = sub_25574FB30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255678764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2556787DC()
{
  sub_25574F0D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MergeableSize(319);
    if (v1 <= 0x3F)
    {
      sub_255678890();
      if (v2 <= 0x3F)
      {
        sub_25574FB30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_255678890()
{
  if (!qword_27F7BEFD0)
  {
    sub_25567890C();
    v0 = sub_25574F540();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BEFD0);
    }
  }
}

unint64_t sub_25567890C()
{
  result = qword_27F7BEF60;
  if (!qword_27F7BEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEF60);
  }

  return result;
}

uint64_t sub_255678960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556789C8()
{
  result = sub_25574FB30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255678A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JournalEntryMO.assetsArrayUnsorted.getter()
{
  v1 = [v0 assets];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_255750380(), v3, v5 = sub_255678D4C(v4), , !v5))
  {
    if (qword_27F7BD838 == -1)
    {
LABEL_17:
      v20 = sub_25574F2C0();
      __swift_project_value_buffer(v20, qword_27F7C03B8);
      v21 = sub_25574F2A0();
      v22 = sub_255750780();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_255661000, v21, v22, "WARNING: JournalEntryMO assets is nil", v23, 2u);
        MEMORY[0x259C3F520](v23, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v26 = MEMORY[0x277D84F90];
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v7 = sub_255750A30();
    if (v7)
    {
LABEL_5:
      v8 = 0;
      v9 = v5 & 0xC000000000000001;
      v10 = &property descriptor for JournalMO.isUploadedToCloud;
      v11 = &property descriptor for JournalMO.isUploadedToCloud;
      while (1)
      {
        if (v9)
        {
          v12 = MEMORY[0x259C3E830](v8, v5);
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_22;
          }

          v12 = *(v5 + 8 * v8 + 32);
        }

        v13 = v12;
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v12 v10[109]] & 1) != 0 || (objc_msgSend(v13, v11[249]))
        {
        }

        else
        {
          sub_255750BB0();
          v15 = v7;
          v16 = v5;
          v17 = v6;
          v18 = v10;
          v19 = *(v26 + 16);
          sub_255750BE0();
          v10 = v18;
          v6 = v17;
          v5 = v16;
          v7 = v15;
          sub_255750BF0();
          sub_255750BC0();
          v11 = &property descriptor for JournalMO.isUploadedToCloud;
        }

        ++v8;
        if (v14 == v7)
        {
          v24 = v26;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_26:

  return v24;
}

uint64_t sub_255678D4C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_255750BD0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_255678EBC(i, v6);
    type metadata accessor for JournalEntryAssetMO();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_255750BB0();
    v4 = *(v7 + 16);
    sub_255750BE0();
    sub_255750BF0();
    sub_255750BC0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_255678E38()
{
  result = type metadata accessor for MergeableFont.Traits(319);
  if (v1 <= 0x3F)
  {
    result = sub_25574FB30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_255678EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255678F28(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_255678FC4(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_25566FE44(a1, a2);
  return sub_255750BC0();
}

uint64_t sub_255678FD8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_255750A30();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_255742608(v3, 0);
  sub_2557480CC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25567906C(uint64_t a1)
{
  v2 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2556790D8()
{
  v0 = *MEMORY[0x277CBF430];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_27F7BE3A0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_255679174(id *a1, void **a2, uint64_t a3)
{
  v42 = a3;
  v5 = sub_25574F0D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = *a2;
  v20 = [*a1 id];
  if (!v20)
  {
    goto LABEL_22;
  }

  v41 = v13;
  v21 = v20;
  sub_25574F080();

  v22 = *(v6 + 32);
  v22(v18, v16, v5);
  v23 = [v19 id];
  if (v23)
  {
    v40 = v6;
    v24 = v23;
    sub_25574F080();

    v25 = v41;
    v22(v41, v10, v5);
    v26 = v25;
    MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)(v18, &v43);
    v27 = v43;
    v28 = v44;
    v29 = v45;
    MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)(v25, &v43);
    v30 = v43;
    v31 = v44;
    v32 = v45;
    if ((v29 & 1) == 0 && (v28 & 1) == 0)
    {
      v36 = *(v40 + 8);
      v36(v26, v5);
      v36(v18, v5);
      if ((v32 & 1) == 0)
      {
        v34 = v31 | (v27 < v30);
        return v34 & 1;
      }

      goto LABEL_22;
    }

    if (v45)
    {
LABEL_6:
      if (v29)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    if (v44)
    {
      if (v43 < 2)
      {
        goto LABEL_6;
      }

      if ((v29 & 1) == 0)
      {
        if ((v28 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_7:
        if ((v28 & 1) != 0 && v27 >= 2)
        {
          v33 = *(v40 + 8);
          v33(v26, v5);
          v33(v18, v5);
LABEL_22:
          v34 = 1;
          return v34 & 1;
        }

LABEL_17:
        if ((v45 & 1) == 0 && (v44 & 1) != 0 && v43 >= 2)
        {
          goto LABEL_20;
        }

LABEL_24:
        v34 = MEMORY[0x259C3CD30](v18, v26);
        v38 = *(v40 + 8);
        v38(v26, v5);
        v38(v18, v5);
        return v34 & 1;
      }
    }

LABEL_20:
    v35 = *(v40 + 8);
    v35(v26, v5);
    v35(v18, v5);
    v34 = 0;
    return v34 & 1;
  }

  (*(v6 + 8))(v18, v5);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_255679528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PhotoLibraryAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}