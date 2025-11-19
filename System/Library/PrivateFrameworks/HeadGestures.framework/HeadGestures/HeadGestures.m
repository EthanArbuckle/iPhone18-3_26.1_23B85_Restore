id HGSetTemporaryDirectorySuffix()
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v0 = _HGObjCLoggingFacility(kHGObjCLogCategoryFramework[0]);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      HGSetTemporaryDirectorySuffix_cold_1(v0);
    }
  }

  return NSTemporaryDirectory();
}

id HGGetTemporaryRawDataDirectory()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"RawData"];

  return v1;
}

id HGGetTemporaryNotificationDataDirectory()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"NotificationData"];

  return v1;
}

id _HGObjCLoggingFacility(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___HGObjCLoggingFacility_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_HGObjCLoggingFacility_onceToken[0] != -1)
  {
    dispatch_once(_HGObjCLoggingFacility_onceToken, block);
  }

  v1 = _HGObjCLoggingFacility_oslog;

  return v1;
}

double sub_2510F445C()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = (1.0 - *(v0 + 24)) / *(v0 + 16);
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

double sub_2510F4488()
{
  v1 = (v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume);
  if ((*(v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume + 8) & 1) == 0)
  {
    return *v1;
  }

  result = *(v0 + 24);
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_2510F44B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_251130B38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251130B08();
  if (*(v1 + 56))
  {
    goto LABEL_5;
  }

  v16 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime;
  swift_beginAccess();
  sub_2510F64EC(v1 + v16, v11);
  v17 = *(v13 + 48);
  v18 = a1;
  v19 = v7;
  v20 = v17(v11, 1, v12);
  sub_2510F655C(v11);
  v21 = v20 == 1;
  v7 = v19;
  a1 = v18;
  if (v21)
  {
    goto LABEL_5;
  }

  v22 = v1 + v16;
  v23 = v31;
  sub_2510F64EC(v22, v31);
  if (v17(v23, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_251130B18();
    v25 = v24;
    (*(v13 + 8))(v23, v12);
    if (v25 > 0.8)
    {
LABEL_5:
      v26 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume;
      *(v1 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume) = *(v1 + 24);
LABEL_6:
      *(v1 + v26 + 8) = 0;
      *(v1 + 48) = a1;
      *(v1 + 56) = 0;
      (*(v13 + 32))(v7, v32, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
      v27 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime;
      swift_beginAccess();
      sub_2510F647C(v7, v1 + v27);
      swift_endAccess();
      sub_2510F4488();
      return;
    }

    if ((*(v1 + 56) & 1) == 0)
    {
      v28 = *(v1 + 48);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          if (v28 != 4)
          {
            goto LABEL_5;
          }
        }

        else if (v18 != 4 || v28 != 3)
        {
          goto LABEL_5;
        }
      }

      else if (v18 == 1)
      {
        if (v28 != 2)
        {
          goto LABEL_5;
        }
      }

      else if (v18 != 2 || v28 != 1)
      {
        goto LABEL_5;
      }

      v29 = sub_2510F4488();
      v30 = v29 + sub_2510F445C();
      if (v30 > 1.0)
      {
        v30 = 1.0;
      }

      v26 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume;
      *(v1 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume) = v30;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_2510F482C()
{
  sub_2510F655C(v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2510F48B8()
{
  sub_2510F4964();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2510F4964()
{
  if (!qword_27F41DFD0)
  {
    sub_251130B38();
    v0 = sub_251131278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F41DFD0);
    }
  }
}

uint64_t sub_2510F49BC()
{
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F421A30;
  v2 = *(qword_27F421A30 + 16);
  v3 = sub_251130EE8();
  [v2 doubleForKey_];
  v5 = v4;

  *(v0 + 16) = v5;
  v6 = *(v1 + 16);
  v7 = sub_251130EE8();
  [v6 doubleForKey_];
  v9 = v8;

  *(v0 + 24) = v9;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v10 = OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress_lastPartialGestureTime;
  v11 = sub_251130B38();
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  v12 = v0 + OBJC_IVAR____TtC12HeadGestures29HGPartialGestureAudioProgress____lazy_storage___lastPartialGestureVolume;
  *v12 = 0;
  *(v12 + 8) = 1;
  return v0;
}

uint64_t sub_2510F4B24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  return v1;
}

uint64_t sub_2510F4B98()
{
  v1 = v0;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_251130BE8();
  __swift_project_value_buffer(v2, qword_27F421A38);
  v3 = sub_251130BC8();
  v4 = sub_251131178();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2510F2000, v3, v4, "[HGAudioPlayer] dealloc", v5, 2u);
    MEMORY[0x25306CC10](v5, -1, -1);
  }

  (*(*v1 + 264))();
  v6 = *(v1 + 32);

  v7 = *(v1 + 48);

  v8 = OBJC_IVAR____TtC12HeadGestures13HGAudioPlayer__isFreeToStop;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t sub_2510F4D14()
{
  sub_2510F4B98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2510F4D94(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2510F4DCC()
{
  sub_2510F68D0(319, &qword_27F41DFF0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2510F4EB8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0A0, &qword_251132A40);
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0A8, &qword_251132A48);
  v35 = *(v32 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0B0, &qword_251132A50);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v36 = a1;
  v22 = *(v2 + 16);
  swift_beginAccess();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0B8, &qword_251132A58);
  sub_2510F6658(&qword_27F41E0C0, &qword_27F41E0B8, &qword_251132A58);
  sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38);
  sub_251130D08();
  (*(v5 + 8))(v8, v4);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2510F6328;
  *(v24 + 24) = v2;
  sub_2510F6658(&qword_27F41E0D0, &qword_27F41E0A0, &qword_251132A40);

  v25 = v30;
  sub_251130D38();

  (*(v31 + 8))(v13, v25);
  sub_2510F6658(&qword_27F41E0D8, &qword_27F41E0A8, &qword_251132A48);

  v26 = v32;
  sub_251130CF8();

  (*(v35 + 8))(v16, v26);
  sub_2510F6658(&qword_27F41E0E0, &qword_27F41E0B0, &qword_251132A50);
  v27 = v33;
  v28 = sub_251130CD8();
  (*(v34 + 8))(v21, v27);
  return v28;
}

void sub_2510F53E4(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_251130E18();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_251130E38();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v37);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a1;
  v14 = *(a2 + 16);
  v15 = [v40 headGesture];
  v16 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture;
  swift_beginAccess();
  v17 = *&v14[v16];

  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 >= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = v15;
  }

  v19 = sub_25112F9FC(v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  v39 = a3;
  if (*(*(v17 + 56) + v19) == 1)
  {

LABEL_11:
    v29 = *(a2 + 24);
    v30 = swift_allocObject();
    v31 = v40;
    *(v30 + 16) = a2;
    *(v30 + 24) = v31;
    aBlock[4] = sub_2510F6278;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511147B8;
    aBlock[3] = &block_descriptor;
    v32 = _Block_copy(aBlock);

    v33 = v40;
    sub_251130E28();
    v41 = MEMORY[0x277D84F90];
    sub_2510F6610(&qword_27F41E080, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
    sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
    sub_2511312A8();
    MEMORY[0x25306C010](0, v13, v9, v32);
    _Block_release(v32);
    (*(v38 + 8))(v9, v6);
    (*(v10 + 8))(v13, v37);

    goto LABEL_12;
  }

  v21 = *(a2 + 16);
  v22 = sub_25111795C([v40 headGesturePart]);
  v23 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture;
  swift_beginAccess();
  v24 = *&v21[v23];

  if (!*(v24 + 16))
  {
    goto LABEL_17;
  }

  v25 = sub_25112F9FC(v22);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v28 = *(*(v24 + 56) + v25);

  if (v28 == 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  v34 = v40;
  *v39 = v40;

  v35 = v34;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2510F5854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2510F5874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2510F5914()
{
  v1 = *v0;
  v2 = sub_251130F18();
  v3 = MEMORY[0x25306BDF0](v2);

  return v3;
}

uint64_t sub_2510F5950()
{
  v1 = *v0;
  sub_251130F18();
  sub_251130F88();
}

uint64_t sub_2510F59A4()
{
  v1 = *v0;
  sub_251130F18();
  sub_251131598();
  sub_251130F88();
  v2 = sub_2511315B8();

  return v2;
}

uint64_t sub_2510F5A20(uint64_t a1, id *a2)
{
  result = sub_251130EF8();
  *a2 = 0;
  return result;
}

uint64_t sub_2510F5A98(uint64_t a1, id *a2)
{
  v3 = sub_251130F08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2510F5B18@<X0>(uint64_t *a1@<X8>)
{
  sub_251130F18();
  v2 = sub_251130EE8();

  *a1 = v2;
  return result;
}

uint64_t sub_2510F5B68()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_251130BB8();
}

uint64_t sub_2510F5BB4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_251130BA8();
}

uint64_t sub_2510F5C0C()
{
  sub_251131598();
  v1 = *v0;
  swift_getWitnessTable();
  sub_251130BA8();
  return sub_2511315B8();
}

void *sub_2510F5C74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_2510F5C98@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2510F5D34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_251130F18();
  v6 = v5;
  if (v4 == sub_251130F18() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_251131518();
  }

  return v9 & 1;
}

uint64_t sub_2510F5DBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_251130B98();
}

uint64_t sub_2510F5E28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251130EE8();

  *a2 = v5;
  return result;
}

uint64_t sub_2510F5E70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_251130F18();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2510F5E9C(uint64_t a1)
{
  v2 = sub_2510F6610(&qword_27F41E158, type metadata accessor for MLModelMetadataKey);
  v3 = sub_2510F6610(&qword_27F41E160, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2510F5F58(void *a1)
{
  v2 = v1;
  v21 = a1;
  v20 = sub_2511311D8();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2511311A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_251130E38();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2510F65C4();
  v19[0] = "dioProgress";
  v19[1] = v11;
  sub_251130E28();
  v23 = MEMORY[0x277D84F90];
  sub_2510F6610(&qword_27F41E0F8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0);
  sub_2511312A8();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v20);
  *(v1 + 24) = sub_251131208();
  *(v1 + 32) = 0;
  *(v1 + 40) = 1028443341;
  v12 = type metadata accessor for HGPartialGestureAudioProgress(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_2510F49BC();
  *(v2 + 48) = v15;
  v16 = v21;
  *(v2 + 16) = v21;
  swift_beginAccess();
  v22 = 0;
  v17 = v16;
  sub_251130C68();
  swift_endAccess();
  return v2;
}

uint64_t sub_2510F6238()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2510F6328(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a1 & a2;
  v4 = *v2;
  if (a1 & a2)
  {
    (*(v4 + 272))();
  }

  else
  {
    (*(v4 + 280))(nullsub_1, 0);
  }

  return v3 & 1;
}

uint64_t sub_2510F63B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2510F63F0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_2510F647C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2510F64EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2510F655C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2510F65C4()
{
  result = qword_27F41E0F0;
  if (!qword_27F41E0F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E0F0);
  }

  return result;
}

uint64_t sub_2510F6610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2510F6658(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_2510F68D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2510F692C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E170, &qword_251132E08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E178, &qword_251132E10);
  v24 = *(v21 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E180, &qword_251132E18);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v25 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E188, &qword_251132E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E190, &qword_251132E28);
  sub_2510F6658(&qword_27F41E198, &qword_27F41E188, &qword_251132E20);
  sub_251130DA8();

  sub_251130BF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1A0, &qword_251132E30);
  sub_2510F6658(&qword_27F41E1A8, &qword_27F41E170, &qword_251132E08);
  sub_2510F6658(&qword_27F41E1B0, &qword_27F41E1A0, &qword_251132E30);
  sub_251130DB8();
  (*(v3 + 8))(v6, v2);
  sub_2510F6658(&qword_27F41E1B8, &qword_27F41E178, &qword_251132E10);
  sub_2510F72AC();
  v15 = v21;
  sub_251130DE8();
  (*(v24 + 8))(v9, v15);
  sub_2510F6658(&qword_27F41E1C8, &qword_27F41E180, &qword_251132E18);
  v16 = v22;
  v17 = sub_251130D88();
  (*(v23 + 8))(v14, v16);
  v25 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1D0, &qword_251132E38);
  sub_2510F6658(&qword_27F41E1D8, &qword_27F41E1D0, &qword_251132E38);
  v18 = sub_251130CD8();

  return v18;
}

char *sub_2510F6DCC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, char **a3@<X8>)
{
  v7 = a1[5];
  v48[4] = a1[4];
  v48[5] = v7;
  v49[0] = a1[6];
  *(v49 + 9) = *(a1 + 105);
  v8 = a1[1];
  v48[0] = *a1;
  v48[1] = v8;
  v9 = a1[3];
  v48[2] = a1[2];
  v48[3] = v9;
  v47 = MEMORY[0x277D84F90];
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v53 = a2[3];
  v54 = v12;
  v51 = v10;
  v52 = v11;
  v13 = a2[5];
  v14 = a2[6];
  v15 = a2[7];
  *(v57 + 9) = *(a2 + 121);
  v56 = v14;
  v57[0] = v15;
  v55 = v13;
  if (sub_2510F7300(&v51) == 1)
  {
    v16 = a1[5];
    v44 = a1[4];
    v45 = v16;
    v46[0] = a1[6];
    *(v46 + 9) = *(a1 + 105);
    v17 = a1[1];
    v40 = *a1;
    v41 = v17;
    v18 = a1[3];
    v42 = a1[2];
    v43 = v18;
    nullsub_1(&v40);
    v19 = v45;
    a2[5] = v44;
    a2[6] = v19;
    a2[7] = v46[0];
    *(a2 + 121) = *(v46 + 9);
    v20 = v41;
    a2[1] = v40;
    a2[2] = v20;
    v21 = v43;
    a2[3] = v42;
    a2[4] = v21;
    result = sub_251109414(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(result + 2);
    v23 = *(result + 3);
    if (v24 >= v23 >> 1)
    {
      result = sub_251109414((v23 > 1), v24 + 1, 1, result);
    }

    *(result + 2) = v24 + 1;
    v25 = &result[128 * v24];
    v26 = a1[5];
    *(v25 + 6) = a1[4];
    *(v25 + 7) = v26;
    *(v25 + 8) = a1[6];
    *(v25 + 137) = *(a1 + 105);
    v27 = a1[1];
    *(v25 + 2) = *a1;
    *(v25 + 3) = v27;
    v28 = a1[3];
    *(v25 + 4) = a1[2];
    *(v25 + 5) = v28;
LABEL_5:
    *a3 = result;
    return result;
  }

  v49[6] = v55;
  v49[7] = v56;
  v50[0] = v57[0];
  *(v50 + 9) = *(v57 + 9);
  v49[2] = v51;
  v49[3] = v52;
  v49[4] = v53;
  v49[5] = v54;
  v29 = sub_2511111B8(v48, 0.04);
  if (!v3)
  {
    sub_2510F7064(v29);
    result = v47;
    if (*(v47 + 16))
    {
      v33 = a1[5];
      v44 = a1[4];
      v45 = v33;
      v46[0] = a1[6];
      *(v46 + 9) = *(a1 + 105);
      v34 = a1[1];
      v40 = *a1;
      v41 = v34;
      v35 = a1[3];
      v42 = a1[2];
      v43 = v35;
      v36 = v47;
      nullsub_1(&v40);
      result = v36;
      v37 = v45;
      a2[5] = v44;
      a2[6] = v37;
      a2[7] = v46[0];
      *(a2 + 121) = *(v46 + 9);
      v38 = v41;
      a2[1] = v40;
      a2[2] = v38;
      v39 = v43;
      a2[3] = v42;
      a2[4] = v39;
    }

    goto LABEL_5;
  }

  sub_2510F731C(&v40);
  v30 = v45;
  a2[5] = v44;
  a2[6] = v30;
  a2[7] = v46[0];
  *(a2 + 121) = *(v46 + 9);
  v31 = v41;
  a2[1] = v40;
  a2[2] = v31;
  v32 = v43;
  a2[3] = v42;
  a2[4] = v32;
  return swift_willThrow();
}

uint64_t sub_2510F7064(uint64_t result)
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

  result = sub_251109414(result, v12, 1, v3);
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

  memcpy((v3 + (v8 << 7) + 32), (v6 + 32), v2 << 7);

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

uint64_t sub_2510F7150(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E190, &qword_251132E28);
  sub_2510F6658(&qword_27F41E1E8, &qword_27F41E190, &qword_251132E28);
  return sub_251130FF8();
}

uint64_t sub_2510F71E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1E0, &qword_251132E40);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_2510F72AC()
{
  result = qword_27F41E1C0;
  if (!qword_27F41E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E1C0);
  }

  return result;
}

uint64_t sub_2510F7300(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_2510F731C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 2;
  return result;
}

uint64_t sub_2510F7340()
{
  v1 = *v0;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  return sub_2511315B8();
}

uint64_t sub_2510F73B4()
{
  v1 = *v0;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  return sub_2511315B8();
}

unint64_t sub_2510F73F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2510FC3A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_2510F742C()
{
  if (qword_27F41DF80 != -1)
  {
    swift_once();
  }

  v0 = qword_27F41DF78;
  v1 = qword_27F41E200;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F41E1F8;
  v3 = objc_allocWithZone(type metadata accessor for HGConfiguration());
  v4 = v2;
  v5 = [v3 initWithMlConfig:v1 audioFeedbackConfig:v4 requestPartGestures:0];

  qword_27F41E1F0 = v5;
}

id HGConfiguration.__allocating_init(withML:audioFeedbackConfig:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithMlConfig:a1 audioFeedbackConfig:a2 requestPartGestures:0];

  return v5;
}

id sub_2510F75FC()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2510F76B0(uint64_t a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2510F77B4()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2510F7868(uint64_t a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2510F78C0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_2510F79C4()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F7A5C(char a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F7B58()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F7BF0(char a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F7CE8()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2510F7D90(char a1)
{
  v3 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_2510F7DE4();
}

void sub_2510F7DE4()
{
  v1 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = NSUserName();
    v3 = sub_251130F18();
    v5 = v4;

    if (v3 == 1953460082 && v5 == 0xE400000000000000)
    {
    }

    else
    {
      v6 = sub_251131518();

      if ((v6 & 1) == 0)
      {
        HGSetTemporaryDirectorySuffix();
        if (qword_27F41DFA8 != -1)
        {
          swift_once();
        }

        v13 = *(qword_27F421A30 + 16);
        v14 = sub_251130EE8();
        v12 = [v13 BOOLForKey_];

        goto LABEL_14;
      }
    }

    v7 = v0;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_251130BE8();
    __swift_project_value_buffer(v8, qword_27F421A38);
    v9 = sub_251130BC8();
    v10 = sub_251131188();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2510F2000, v9, v10, "Raw Data logging will be disabled due to running as root", v11, 2u);
      MEMORY[0x25306CC10](v11, -1, -1);
    }

    v12 = 0;
    v0 = v7;
LABEL_14:
    *(v0 + v1) = v12;
  }
}

void (*sub_2510F7FF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2510F805C;
}

void sub_2510F805C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_2510F7DE4();
  }
}

id HGConfiguration.init(mlConfig:audioFeedbackConfig:requestPartGestures:)(uint64_t a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR___HGConfigurationInternal_singleDelivery] = 0;
  v3[OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging] = 0;
  v7 = OBJC_IVAR___HGConfigurationInternal_gesturePartRepeatTimeout;
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v8 = qword_27F421A30;
  v9 = *(qword_27F421A30 + 16);
  v10 = sub_251130EE8();
  [v9 floatForKey_];
  v12 = v11;

  *&v3[v7] = v12;
  v13 = OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableNodVelocity;
  v14 = *(v8 + 16);
  v15 = sub_251130EE8();
  [v14 floatForKey_];
  v17 = v16;

  *&v3[v13] = v17;
  v18 = OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableShakeVelocity;
  v19 = *(v8 + 16);
  v20 = sub_251130EE8();
  [v19 floatForKey_];
  v22 = v21;

  *&v3[v18] = v22;
  *&v3[OBJC_IVAR___HGConfigurationInternal_mlConfig] = a1;
  *&v3[OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig] = a2;
  v3[OBJC_IVAR___HGConfigurationInternal_requestPartGestures] = a3 & 1;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for HGConfiguration();
  return objc_msgSendSuper2(&v24, sel_init);
}

id HGConfiguration.init(withML:audioFeedbackConfig:)(void *a1, void *a2)
{
  v5 = [v2 initWithMlConfig:a1 audioFeedbackConfig:a2 requestPartGestures:0];

  return v5;
}

uint64_t sub_2510F8400()
{
  v1 = v0;
  sub_251131358();
  MEMORY[0x25306BDC0](0xD00000000000002ALL, 0x80000002511359A0);
  v2 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v3, v4);

  MEMORY[0x25306BDC0](0xD000000000000012, 0x80000002511359D0);
  v5 = OBJC_IVAR___HGConfigurationInternal_singleDelivery;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v6, v7);

  MEMORY[0x25306BDC0](0xD000000000000018, 0x80000002511359F0);
  v8 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v9, v10);

  MEMORY[0x25306BDC0](0x436F69647561202CLL, 0xEF203A6769666E6FLL);
  v11 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = sub_2510FA3DC();
  v15 = v14;

  MEMORY[0x25306BDC0](v13, v15);

  return 0;
}

id HGConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2510F8700()
{
  v0 = objc_allocWithZone(type metadata accessor for HGAudioFeedbackConfiguration(0));
  result = HGAudioFeedbackConfiguration.init(enableAudioFeedback:enableWaitingTone:audioSessionID:)(1, 0, 0);
  qword_27F41E1F8 = result;
  return result;
}

uint64_t sub_2510F87FC()
{
  v1 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F8894(char a1)
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F898C()
{
  v1 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F8A24(char a1)
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2510F8B54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  return v1;
}

uint64_t sub_2510F8C38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_251130CB8();
}

uint64_t sub_2510F8CA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  *a2 = v5;
  return result;
}

uint64_t sub_2510F8D24(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_251130CB8();
}

void (*sub_2510F8D94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_251130C98();
  return sub_2510F8E38;
}

void sub_2510F8E38(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2510F8EA0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  return swift_endAccess();
}

uint64_t sub_2510F8F18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C88();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2510F909C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  return swift_endAccess();
}

uint64_t sub_2510F9110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2510F9248(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal__enableWaitingTone;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  swift_endAccess();
  return sub_2510F93B8;
}

void sub_2510F93B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_251130C88();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_251130C88();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_2510F9568()
{
  v1 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2510F9600(int a1)
{
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id HGAudioFeedbackConfiguration.init(enableAudioFeedback:enableWaitingTone:audioSessionID:)(char a1, char a2, int a3)
{
  v6 = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture] = v6;
  v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode] = 0;
  v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback] = a1;
  swift_beginAccess();
  v10 = a2;
  sub_251130C68();
  swift_endAccess();
  *&v3[OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for HGAudioFeedbackConfiguration(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_2510F9E44();

  return v7;
}

uint64_t sub_2510F97C8(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131198();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315394;
    if (a2)
    {
      v11 = 0x656C62616E45;
    }

    else
    {
      v11 = 0x656C6261736944;
    }

    if (a2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_2510FAC50(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = 0xE500000000000000;
    v15 = 0x656B616853;
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E55;
    if (a1 == 1)
    {
      v17 = 6582094;
      v16 = 0xE300000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (a1)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0x756F72476B636142;
    }

    if (a1)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0xEA0000000000646ELL;
    }

    v20 = sub_2510FAC50(v18, v19, v26);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_2510F2000, v7, v8, "[AudioFeedbackConfig] %s audio feedback for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v10, -1, -1);
    MEMORY[0x25306CC10](v9, -1, -1);
  }

  if (a1 >= 4)
  {
    a1 = 4;
  }

  v21 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture;
  swift_beginAccess();
  v22 = *(v3 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + v21);
  *(v3 + v21) = 0x8000000000000000;
  sub_2510FB348(a2 & 1, a1, isUniquelyReferenced_nonNull_native, sub_25112F9FC, sub_251127FD4, sub_251126A88);
  *(v3 + v21) = v25;
  return swift_endAccess();
}

uint64_t sub_2510F9AF0(int64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131198();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315394;
    if (a2)
    {
      v11 = 0x656C62616E45;
    }

    else
    {
      v11 = 0x656C6261736944;
    }

    if (a2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_2510FAC50(v11, v12, v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v14 = 0xE900000000000074;
        v16 = 0x66654C656B616853;
        goto LABEL_21;
      }

      if (a1 == 4)
      {
        v14 = 0xEA00000000007468;
        v16 = 0x676952656B616853;
LABEL_21:
        v17 = sub_2510FAC50(v16, v14, v24);

        *(v9 + 14) = v17;
        _os_log_impl(&dword_2510F2000, v7, v8, "[AudioFeedbackConfig] %s audio feedback for %s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v10, -1, -1);
        MEMORY[0x25306CC10](v9, -1, -1);
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v14 = 0xE500000000000000;
        v16 = 0x7055646F4ELL;
        goto LABEL_21;
      }

      if (a1 == 2)
      {
        v14 = 0xE700000000000000;
        v15 = 1147432782;
LABEL_18:
        v16 = v15 | 0x6E776F00000000;
        goto LABEL_21;
      }
    }

    v14 = 0xE700000000000000;
    v15 = 1852534389;
    goto LABEL_18;
  }

LABEL_22:

  v18 = sub_25111795C(a1);
  v19 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture;
  swift_beginAccess();
  v20 = *(v3 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + v19);
  *(v3 + v19) = 0x8000000000000000;
  sub_2510FB348(a2 & 1, v18, isUniquelyReferenced_nonNull_native, sub_25112F9FC, sub_251127FE8, sub_251126A9C);
  *(v3 + v19) = v23;
  return swift_endAccess();
}

uint64_t sub_2510F9E44()
{
  v1 = v0;
  v68 = MEMORY[0x277D84F90];
  sub_25111B8C4(0, 5, 0);
  v2 = 0;
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForPartGesture;
  while (1)
  {
    v4 = byte_286331190[v2 + 32];
    if (!byte_286331190[v2 + 32])
    {
      swift_beginAccess();
      v16 = *(v1 + v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v1 + v3);
      *(v1 + v3) = 0x8000000000000000;
      v19 = sub_25112F9FC(0);
      v21 = v18[2];
      v22 = (v20 & 1) == 0;
      v12 = __OFADD__(v21, v22);
      v23 = v21 + v22;
      if (v12)
      {
        goto LABEL_57;
      }

      v24 = v20;
      if (v18[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v19;
          sub_251127FE8();
          v19 = v30;
          v26 = v18;
          if ((v24 & 1) == 0)
          {
LABEL_22:
            v26[(v19 >> 6) + 8] |= 1 << v19;
            *(v26[6] + v19) = 0;
            *(v26[7] + v19) = 0;
            v31 = v26[2];
            v12 = __OFADD__(v31, 1);
            v29 = v31 + 1;
            if (v12)
            {
              goto LABEL_61;
            }

            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_251126A9C(v23, isUniquelyReferenced_nonNull_native);
        v19 = sub_25112F9FC(0);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_62;
        }
      }

      v26 = v18;
      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_16:
      *(v26[7] + v19) = 0;
      goto LABEL_24;
    }

    swift_beginAccess();
    v5 = *(v1 + v3);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + v3);
    *(v1 + v3) = 0x8000000000000000;
    v8 = sub_25112F9FC(v4);
    v10 = v7[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v7[3] >= v13)
    {
      if ((v6 & 1) == 0)
      {
        v27 = v8;
        sub_251127FE8();
        v8 = v27;
        v26 = v7;
        if ((v14 & 1) == 0)
        {
LABEL_18:
          v26[(v8 >> 6) + 8] |= 1 << v8;
          *(v26[6] + v8) = v4;
          *(v26[7] + v8) = 1;
          v28 = v26[2];
          v12 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v12)
          {
            goto LABEL_58;
          }

LABEL_23:
          v26[2] = v29;
          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_251126A9C(v13, v6);
      v8 = sub_25112F9FC(v4);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_62;
      }
    }

    v26 = v7;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_13:
    *(v26[7] + v8) = 1;
LABEL_24:
    *(v1 + v3) = v26;
    swift_endAccess();
    v33 = *(v68 + 16);
    v32 = *(v68 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      sub_25111B8C4((v32 > 1), v33 + 1, 1);
    }

    ++v2;
    *(v68 + 16) = v34;
    if (v2 == 5)
    {

      v69 = MEMORY[0x277D84F90];
      sub_25111B8C4(0, 5, 0);
      v35 = 0;
      v36 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioFeedbackForGesture;
      while (1)
      {
        v37 = byte_2863311B8[v35 + 32];
        if ((v37 - 1) > 1u)
        {
          swift_beginAccess();
          v48 = *(v1 + v36);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          v50 = *(v1 + v36);
          *(v1 + v36) = 0x8000000000000000;
          v51 = sub_25112F9FC(v37);
          v53 = v50[2];
          v54 = (v52 & 1) == 0;
          v12 = __OFADD__(v53, v54);
          v55 = v53 + v54;
          if (v12)
          {
            goto LABEL_55;
          }

          v56 = v52;
          if (v50[3] < v55)
          {
            sub_251126A88(v55, v49);
            v51 = sub_25112F9FC(v37);
            if ((v56 & 1) != (v57 & 1))
            {
              goto LABEL_63;
            }

            goto LABEL_41;
          }

          if (v49)
          {
LABEL_41:
            v58 = v50;
            if ((v56 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v62 = v51;
            sub_251127FD4();
            v51 = v62;
            v58 = v50;
            if ((v56 & 1) == 0)
            {
LABEL_48:
              v58[(v51 >> 6) + 8] |= 1 << v51;
              *(v58[6] + v51) = v37;
              *(v58[7] + v51) = 0;
              v63 = v58[2];
              v12 = __OFADD__(v63, 1);
              v61 = v63 + 1;
              if (v12)
              {
                goto LABEL_60;
              }

              goto LABEL_49;
            }
          }

          *(v58[7] + v51) = 0;
          goto LABEL_50;
        }

        swift_beginAccess();
        v38 = *(v1 + v36);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(v1 + v36);
        *(v1 + v36) = 0x8000000000000000;
        v41 = sub_25112F9FC(v37);
        v43 = v40[2];
        v44 = (v42 & 1) == 0;
        v12 = __OFADD__(v43, v44);
        v45 = v43 + v44;
        if (v12)
        {
          goto LABEL_56;
        }

        v46 = v42;
        if (v40[3] >= v45)
        {
          if ((v39 & 1) == 0)
          {
            v59 = v41;
            sub_251127FD4();
            v41 = v59;
            v58 = v40;
            if ((v46 & 1) == 0)
            {
LABEL_44:
              v58[(v41 >> 6) + 8] |= 1 << v41;
              *(v58[6] + v41) = v37;
              *(v58[7] + v41) = 1;
              v60 = v58[2];
              v12 = __OFADD__(v60, 1);
              v61 = v60 + 1;
              if (v12)
              {
                goto LABEL_59;
              }

LABEL_49:
              v58[2] = v61;
              goto LABEL_50;
            }

            goto LABEL_39;
          }
        }

        else
        {
          sub_251126A88(v45, v39);
          v41 = sub_25112F9FC(v37);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_63;
          }
        }

        v58 = v40;
        if ((v46 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_39:
        *(v58[7] + v41) = 1;
LABEL_50:
        *(v1 + v36) = v58;
        swift_endAccess();
        v65 = *(v69 + 16);
        v64 = *(v69 + 24);
        v66 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          sub_25111B8C4((v64 > 1), v65 + 1, 1);
        }

        ++v35;
        *(v69 + 16) = v66;
        if (v35 == 5)
        {
        }
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
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
  sub_251131538();
  __break(1u);
LABEL_63:
  result = sub_251131538();
  __break(1u);
  return result;
}

uint64_t sub_2510FA3DC()
{
  v1 = v0;
  sub_251131358();
  MEMORY[0x25306BDC0](0xD00000000000002DLL, 0x8000000251135A30);
  v2 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v3, v4);

  MEMORY[0x25306BDC0](0xD000000000000015, 0x8000000251135A60);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  if (v8)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v8)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v5, v6);

  return 0;
}

id sub_2510FA5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2510FA6FC(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = sub_2511309E8();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = type metadata accessor for HGMLConfiguration(0);
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR___HGMLConfigurationInternal_testModelURL;
  v13(&v15[OBJC_IVAR___HGMLConfigurationInternal_testModelURL], 1, 1, v12);
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_windowSize] = 30;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_stride] = 5;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_modelType] = a4;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGateOpenConfScoreThresholdNod] = a1;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGestureConfScoreThresholdNod] = a1;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numWindowsInPoolNod] = 8;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_maxNumBackgroundPredictionsNod] = 4;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numConsecutivePredictionsNod] = 3;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minTimeBetweenPoolsNod] = 0x3FD0000000000000;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGateOpenConfScoreThresholdShake] = a2;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minGestureConfScoreThresholdShake] = a2;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numWindowsInPoolShake] = 8;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_maxNumBackgroundPredictionsShake] = 4;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_numConsecutivePredictionsShake] = 3;
  *&v15[OBJC_IVAR___HGMLConfigurationInternal_minTimeBetweenPoolsShake] = 0x3FD0000000000000;
  swift_beginAccess();
  sub_2510FC478(v11, &v15[v16]);
  swift_endAccess();
  v20.receiver = v15;
  v20.super_class = v14;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  result = sub_2510FC410(v11);
  *a5 = v17;
  return result;
}

id sub_2510FA9C0(void *a1, void **a2)
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

id sub_2510FAA44(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t sub_2510FAB80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2510FABF4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2510FAC50(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2510FAC50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2510FAD1C(v11, 0, 0, 1, a1, a2);
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
    sub_2510FC4E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2510FAD1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2510FAE28(a5, a6);
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
    result = sub_251131398();
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

uint64_t sub_2510FAE28(uint64_t a1, unint64_t a2)
{
  v4 = sub_2510FAE74(a1, a2);
  sub_2510FAFA4(&unk_286331168);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2510FAE74(uint64_t a1, unint64_t a2)
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

  v6 = sub_2510FB090(v5, 0);
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

  result = sub_251131398();
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
        v10 = sub_251130FC8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2510FB090(v10, 0);
        result = sub_251131338();
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

uint64_t sub_2510FAFA4(uint64_t result)
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

  result = sub_2510FB104(result, v12, 1, v3);
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

void *sub_2510FB090(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E330, &qword_251133040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2510FB104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E330, &qword_251133040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2510FB1F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_OWORD *sub_2510FB208(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25112EB00(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_251127E54();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2511267D8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_25112EB00(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_251131538();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2510FC400(a1, v20);
  }

  else
  {
    sub_2510FB5C8(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_2510FB348(char a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  result = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a3 & 1) == 0)
  {
    v23 = result;
    a5();
    result = v23;
    goto LABEL_8;
  }

  a6(v20, a3 & 1);
  v24 = *v10;
  result = a4(a2);
  if ((v21 & 1) == (v25 & 1))
  {
LABEL_8:
    v26 = *v10;
    if (v21)
    {
      *(v26[7] + result) = a1 & 1;
      return result;
    }

    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + result) = a1 & 1;
    v27 = v26[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v19)
    {
      v26[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_251131538();
  __break(1u);
  return result;
}

unint64_t sub_2510FB4A0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25112F9FC(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_251128424();
    result = v17;
    goto LABEL_8;
  }

  sub_2511276A8(v14, a2 & 1);
  v18 = *v4;
  result = sub_25112F9FC(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a1;
    *(v20[7] + 8 * result) = a3;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_251131538();
  __break(1u);
  return result;
}

_OWORD *sub_2510FB5C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2510FC400(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_2510FB630(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

id keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_2510FB78C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_2510F7DE4();
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_12Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_2510FB8C0@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2510FB918(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_2510FBCF0()
{
  sub_2510FC1BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2510FC1BC()
{
  if (!qword_27F41DFF0)
  {
    v0 = sub_251130CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F41DFF0);
    }
  }
}

void sub_2510FC214()
{
  sub_2510FC2E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2510FC2E4()
{
  if (!qword_27F41E318)
  {
    sub_2511309E8();
    v0 = sub_251131278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F41E318);
    }
  }
}

unint64_t sub_2510FC350()
{
  result = qword_27F41E320;
  if (!qword_27F41E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E320);
  }

  return result;
}

unint64_t sub_2510FC3A4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_2510FC400(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2510FC410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2510FC478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2510FC4E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2510FC554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E338, "܈");
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = v35 - v4;
  v36 = sub_2511311D8();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2511311A8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_251130E38();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v0[2] = MEMORY[0x277D84FA0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E340, &unk_2511330D0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v37 = v13;
  swift_allocObject();
  v0[3] = sub_251130C38();
  v16 = sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
  v0[5] = 0;
  v0[6] = 0;
  v35[0] = &OBJC_IVAR____TtC12HeadGestures23HGConfirmationRegulator_kConfirmationArrivalDiff;
  v35[1] = v16;
  v0[4] = 0;
  sub_251130E28();
  v41 = MEMORY[0x277D84F90];
  sub_2510FF820(&qword_27F41E0F8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0);
  sub_2511312A8();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v36);
  v0[7] = sub_251131208();
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v17 = qword_27F421A30;
  v18 = *(qword_27F421A30 + 16);
  v19 = sub_251130EE8();
  [v18 doubleForKey_];
  v21 = v20;

  v1[8] = v21;
  v22 = *(v17 + 16);
  v23 = sub_251130EE8();
  [v22 doubleForKey_];
  v25 = v24;

  v1[9] = v25;
  v26 = *(v17 + 16);
  v27 = sub_251130EE8();
  [v26 doubleForKey_];
  v29 = v28;

  v1[10] = v29;
  v41 = v1[3];
  swift_allocObject();
  swift_weakInit();
  sub_2510FE944(0, &qword_27F41E348, off_2796ABC58);
  sub_2510F6658(&qword_27F41E350, &qword_27F41E340, &unk_2511330D0);

  v30 = v38;
  sub_251130CE8();

  sub_2510F6658(&qword_27F41E358, &qword_27F41E338, "܈");
  v31 = v40;
  v32 = sub_251130CD8();
  (*(v39 + 8))(v30, v31);
  v33 = v1[4];
  v1[4] = v32;

  return v1;
}

void *sub_2510FCACC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_251130B38();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251130B88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  v18 = result;
  v47 = v7;
  v48 = v4;
  v50 = a2;
  swift_beginAccess();
  v19 = v18[2];

  v20 = [v16 uuid];
  sub_251130B68();

  LOBYTE(v20) = sub_2511033FC(v15, v19);

  v21 = *(v9 + 8);
  v21(v15, v8);
  if (v20)
  {

    a2 = v50;
LABEL_4:
    *a2 = 0;
    return result;
  }

  v22 = [v16 uuid];
  sub_251130B68();

  swift_beginAccess();
  sub_2510FE98C(v15, v13);
  v21(v15, v8);
  swift_endAccess();
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v23 = sub_251130BE8();
  __swift_project_value_buffer(v23, qword_27F421A38);
  v51 = v16;
  v24 = sub_251130BC8();
  v25 = sub_251131178();

  if (os_log_type_enabled(v24, v25))
  {
    v46 = v25;
    v26 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52[0] = v45;
    *v26 = 136315650;
    v27 = [v51 headGesture];
    if (v27)
    {
      v28 = 0xE700000000000000;
      v29 = 0x6E776F6E6B6E55;
      if (v27 == 1)
      {
        v29 = 6582094;
        v28 = 0xE300000000000000;
      }

      v30 = v27 == 2;
      if (v27 == 2)
      {
        v31 = 0x656B616853;
      }

      else
      {
        v31 = v29;
      }

      if (v30)
      {
        v32 = 0xE500000000000000;
      }

      else
      {
        v32 = v28;
      }
    }

    else
    {
      v32 = 0xEA0000000000646ELL;
      v31 = 0x756F72476B636142;
    }

    v33 = sub_2510FAC50(v31, v32, v52);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = [v51 uuid];
    sub_251130B68();

    sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0]);
    v35 = sub_251131508();
    v37 = v36;
    v21(v15, v8);
    v38 = sub_2510FAC50(v35, v37, v52);

    *(v26 + 14) = v38;
    *(v26 + 22) = 2048;
    v39 = [v51 timestamp];
    v40 = v47;
    sub_251130AF8();

    sub_251130AE8();
    v42 = v41;
    (*(v49 + 8))(v40, v48);
    *(v26 + 24) = v42;
    _os_log_impl(&dword_2510F2000, v24, v46, "[CR] Fired %s %s %f", v26, 0x20u);
    v43 = v45;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v43, -1, -1);
    MEMORY[0x25306CC10](v26, -1, -1);
  }

  v44 = v51;
  *v50 = v51;

  return v44;
}

uint64_t sub_2510FD048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E380, &qword_2511330E8);
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E388, &qword_2511330F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v23 = a1;
  v24 = a2;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E390, &qword_2511330F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E398, &qword_251133100);
  sub_2510F6658(&qword_27F41E3A0, &qword_27F41E390, &qword_2511330F8);
  sub_251130D18();

  sub_2510F6658(&qword_27F41E3A8, &qword_27F41E388, &qword_2511330F0);
  v15 = sub_251130CD8();
  (*(v11 + 8))(v14, v10);
  v16 = *(v3 + 40);
  *(v3 + 40) = v15;

  if (*(v3 + 32))
  {
    v24 = *(v3 + 32);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();

    sub_251130CF8();

    sub_2510F6658(&qword_27F41E3B0, &qword_27F41E380, &qword_2511330E8);
    v18 = v22;
    v19 = sub_251130CD8();
    (*(v21 + 8))(v9, v18);
    v20 = *(v3 + 32);
    *(v3 + 32) = v19;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2510FD434@<X0>(void **a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v91 = a3;
  v92 = a4;
  v6 = sub_251130B38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - v11;
  v13 = sub_251130B88();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v13);
  v86 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *a2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v18 = sub_251130BE8();
  v19 = __swift_project_value_buffer(v18, qword_27F421A38);
  v20 = v16;
  v85 = v19;
  v21 = v20;
  v22 = sub_251130BC8();
  v23 = sub_251131178();

  v24 = os_log_type_enabled(v22, v23);
  v93 = v21;
  v90 = v6;
  if (v24)
  {
    v94 = v17;
    v25 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v95[0] = v83;
    *v25 = 136315650;
    v26 = [v21 headGesture];
    v84 = v7;
    if (v26)
    {
      v27 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E55;
      if (v26 == 1)
      {
        v28 = 6582094;
        v27 = 0xE300000000000000;
      }

      v29 = v26 == 2;
      if (v26 == 2)
      {
        v30 = 0x656B616853;
      }

      else
      {
        v30 = v28;
      }

      if (v29)
      {
        v31 = 0xE500000000000000;
      }

      else
      {
        v31 = v27;
      }
    }

    else
    {
      v30 = 0x756F72476B636142;
      v31 = 0xEA0000000000646ELL;
    }

    v32 = sub_2510FAC50(v30, v31, v95);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = v93;
    v34 = [v93 uuid];
    v35 = v86;
    sub_251130B68();

    sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0]);
    v36 = v88;
    v37 = sub_251131508();
    v39 = v38;
    (*(v87 + 8))(v35, v36);
    v40 = sub_2510FAC50(v37, v39, v95);

    *(v25 + 14) = v40;
    *(v25 + 22) = 2048;
    v41 = [v33 timestamp];
    sub_251130AF8();

    sub_251130AE8();
    v43 = v42;
    v7 = v84;
    v6 = v90;
    (*(v84 + 8))(v12, v90);
    *(v25 + 24) = v43;
    _os_log_impl(&dword_2510F2000, v22, v23, "[CR HR]:%s %s %f", v25, 0x20u);
    v44 = v83;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v44, -1, -1);
    MEMORY[0x25306CC10](v25, -1, -1);

    v17 = v94;
  }

  else
  {
  }

  v94 = v17;
  v45 = sub_251130BC8();
  v46 = sub_251131178();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v95[0] = v48;
    *v47 = 136315650;
    v49 = [v94 headGesture];
    if (v49)
    {
      v50 = 0xE700000000000000;
      v51 = 0x6E776F6E6B6E55;
      if (v49 == 1)
      {
        v51 = 6582094;
        v50 = 0xE300000000000000;
      }

      v52 = v49 == 2;
      if (v49 == 2)
      {
        v53 = 0x656B616853;
      }

      else
      {
        v53 = v51;
      }

      if (v52)
      {
        v54 = 0xE500000000000000;
      }

      else
      {
        v54 = v50;
      }
    }

    else
    {
      v54 = 0xEA0000000000646ELL;
      v53 = 0x756F72476B636142;
    }

    v56 = sub_2510FAC50(v53, v54, v95);

    *(v47 + 4) = v56;
    *(v47 + 12) = 2080;
    v57 = [v94 uuid];
    v58 = v86;
    sub_251130B68();

    sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0]);
    v59 = v88;
    v60 = sub_251131508();
    v62 = v61;
    (*(v87 + 8))(v58, v59);
    v63 = sub_2510FAC50(v60, v62, v95);

    *(v47 + 14) = v63;
    *(v47 + 22) = 2048;
    v55 = &off_2796AC000;
    v64 = [v94 timestamp];
    sub_251130AF8();

    sub_251130AE8();
    v66 = v65;
    v6 = v90;
    (*(v7 + 8))(v12, v90);
    *(v47 + 24) = v66;
    _os_log_impl(&dword_2510F2000, v45, v46, "[CR MR]:%s %s %f", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v48, -1, -1);
    MEMORY[0x25306CC10](v47, -1, -1);
  }

  else
  {

    v55 = &off_2796AC000;
  }

  v67 = [v94 v55[127]];
  sub_251130AF8();

  sub_251130AE8();
  v69 = v68;
  v70 = *(v7 + 8);
  v70(v12, v6);
  v71 = [v93 v55[127]];
  v72 = v89;
  sub_251130AF8();

  sub_251130AE8();
  v74 = v73;
  v70(v72, v6);
  v75 = vabdd_f64(v69, v74);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v77 = *(Strong + 80);

    if (v75 < v77)
    {
LABEL_31:
      v78 = 1;
      goto LABEL_34;
    }
  }

  else if (v75 < 0.8)
  {
    goto LABEL_31;
  }

  v78 = 0;
LABEL_34:
  v79 = v94;
  v80 = v92;
  *v92 = v94;
  *(v80 + 8) = v78;

  return v79;
}

uint64_t sub_2510FDC14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      v4 = *(result + 40);
      v1 = result;
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3B8, &qword_251133108);
      sub_2510F6658(&qword_27F41E3C0, &qword_27F41E3B8, &qword_251133108);
      v2 = sub_251130D48();

      result = v1;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(result + 48);
    *(result + 48) = v2;
  }

  return result;
}

uint64_t sub_2510FDD4C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;

  sub_251130C18();
}

uint64_t sub_2510FDD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_251130E18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251130E38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_251130E58();
  v73 = *(v75 - 8);
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v75);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v65 - v16;
  v17 = sub_251130B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x28223BE20](v17);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  if (*a1)
  {
    v69 = v5;
    v70 = v4;
    v24 = *(a1 + 8);
    v25 = qword_27F41DFB0;
    v26 = v23;
    v67 = v9;
    v68 = v8;
    if (v24 == 1)
    {
      if (v25 != -1)
      {
        swift_once();
      }

      v27 = sub_251130BE8();
      __swift_project_value_buffer(v27, qword_27F421A38);
      v28 = v26;

      v29 = sub_251130BC8();
      v30 = sub_251131178();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock = v66;
        *v31 = 136315394;
        v32 = [v28 uuid];
        LODWORD(v65) = v30;
        v33 = v32;
        sub_251130B68();

        sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0]);
        v34 = sub_251131508();
        v35 = v28;
        v37 = v36;
        (*(v18 + 8))(v22, v17);
        v38 = sub_2510FAC50(v34, v37, &aBlock);
        v28 = v35;

        *(v31 + 4) = v38;
        *(v31 + 12) = 2048;
        *(v31 + 14) = *(a2 + 72);
        _os_log_impl(&dword_2510F2000, v29, v65, "[CR] Immediately firing %s after %fs", v31, 0x16u);
        v39 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x25306CC10](v39, -1, -1);
        MEMORY[0x25306CC10](v31, -1, -1);
      }

      v66 = *(a2 + 56);
      sub_251130E48();
      v40 = *(a2 + 72);
      v41 = v71;
      sub_251130E68();
      v73 = *(v73 + 8);
      (v73)(v15, v75);
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = v28;
      *(v43 + 24) = v42;
      v81 = sub_2510FF8B0;
      v82 = v43;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      v44 = &block_descriptor_33;
    }

    else
    {
      if (v25 != -1)
      {
        swift_once();
      }

      v45 = sub_251130BE8();
      __swift_project_value_buffer(v45, qword_27F421A38);
      v28 = v26;

      v46 = sub_251130BC8();
      v47 = sub_251131178();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock = v66;
        *v48 = 136315394;
        v49 = [v28 uuid];
        LODWORD(v65) = v47;
        v50 = v49;
        sub_251130B68();

        sub_2510FF820(&qword_27F41E360, MEMORY[0x277CC95F0]);
        v51 = sub_251131508();
        v52 = v28;
        v54 = v53;
        (*(v18 + 8))(v22, v17);
        v55 = sub_2510FAC50(v51, v54, &aBlock);
        v28 = v52;

        *(v48 + 4) = v55;
        *(v48 + 12) = 2048;
        *(v48 + 14) = *(a2 + 64);
        _os_log_impl(&dword_2510F2000, v46, v65, "[CR] Postpone firing %s after %fs", v48, 0x16u);
        v56 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x25306CC10](v56, -1, -1);
        MEMORY[0x25306CC10](v48, -1, -1);
      }

      v66 = *(a2 + 56);
      sub_251130E48();
      v57 = *(a2 + 64);
      v41 = v71;
      sub_251130E68();
      v73 = *(v73 + 8);
      (v73)(v15, v75);
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      *(v59 + 16) = v28;
      *(v59 + 24) = v58;
      v81 = sub_2510FF7EC;
      v82 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      v44 = &block_descriptor_0;
    }

    v79 = sub_2511147B8;
    v80 = v44;
    v60 = _Block_copy(&aBlock);
    v65 = v28;

    v61 = v72;
    sub_251130E28();
    v76 = MEMORY[0x277D84F90];
    sub_2510FF820(&qword_27F41E080, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
    sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
    v62 = v74;
    v63 = v70;
    sub_2511312A8();
    v64 = v66;
    MEMORY[0x25306BFD0](v41, v61, v62, v60);
    _Block_release(v60);

    (*(v69 + 8))(v62, v63);
    (*(v67 + 8))(v61, v68);
    (v73)(v41, v75);
  }

  return result;
}

uint64_t sub_2510FE6D0(void *a1)
{
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251130B08();
  v7 = sub_251130AA8();
  (*(v3 + 8))(v6, v2);
  [a1 setTimestamp_];

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 24);

    v10 = a1;
    sub_251130C28();
  }

  return result;
}

uint64_t sub_2510FE810()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48))
    {
      v1 = *(result + 48);

      sub_251130C08();
    }
  }

  return result;
}

uint64_t sub_2510FE880()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_2510FE904()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2510FE944(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2510FE98C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251130B88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_251130EA8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2510FF820(&qword_27F41E370, MEMORY[0x277CC95F0]);
      v23 = sub_251130ED8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2510FEFC8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2510FEC6C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_251130B88();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E378, &qword_2511330E0);
  result = sub_251131318();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0]);
      result = sub_251130EA8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2510FEFC8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_251130B88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2510FEC6C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2510FF26C();
      goto LABEL_12;
    }

    sub_2510FF4A4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0]);
  v15 = sub_251130EA8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2510FF820(&qword_27F41E370, MEMORY[0x277CC95F0]);
      v23 = sub_251130ED8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251131528();
  __break(1u);
  return result;
}

void *sub_2510FF26C()
{
  v1 = v0;
  v2 = sub_251130B88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E378, &qword_2511330E0);
  v7 = *v0;
  v8 = sub_251131308();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2510FF4A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_251130B88();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E378, &qword_2511330E0);
  v10 = sub_251131318();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2510FF820(&qword_27F41E368, MEMORY[0x277CC95F0]);
      result = sub_251130EA8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2510FF820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2510FF8B8(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4A0, &qword_251133278);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);
  v13 = type metadata accessor for HGCoreAnalyticsManager.HGCAStartEvent(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v16);
  if (*((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v27 = v1;
    sub_251131078();
    v2 = v27;
  }

  sub_251131098();
  swift_endAccess();

  sub_251100ADC(v29);
  v17 = &unk_27F421000;
  if (*(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer))
  {
    v18 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionDataProvider);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
    sub_251130C78();
    swift_endAccess();
    sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38);
    sub_251130DF8();
    (*(v4 + 8))(v7, v3);
    sub_2510F6658(&qword_27F41E4A8, &qword_27F41E4A0, &qword_251133278);
    v19 = sub_251130CD8();
    (*(v28 + 8))(v11, v8);
    v20 = sub_2510F4EB8(v19);

    v30 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0B8, &qword_251132A58);
    v27 = v2;
    v17 = &unk_27F421000;
    sub_2510F6658(&qword_27F41E0C0, &qword_27F41E0B8, &qword_251132A58);
    v2 = v27;
    v21 = sub_251130E08();
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask);
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask) = v21;

  v23 = *(v2 + v17[265]);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  sub_251130C78();
  swift_endAccess();
  sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38);
  sub_251130DF8();
  (*(v4 + 8))(v7, v3);
  *(swift_allocObject() + 16) = v29;
  sub_2510F6658(&qword_27F41E4A8, &qword_27F41E4A0, &qword_251133278);
  swift_unknownObjectRetain();
  v24 = sub_251130E08();

  (*(v28 + 8))(v11, v8);
  v25 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask);
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask) = v24;
}

void sub_2510FFE54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v80 = a1;
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B8, &qword_251133280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v63 - v9;
  v10 = sub_251131268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4C0, &qword_251133288);
  v70 = *(v68 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4C8, &qword_251133290);
  v74 = *(v18 - 8);
  v75 = v18;
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v18);
  v72 = &v63 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E098, &qword_251132A38);
  v69 = *(v71 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4D0, &qword_251133298);
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v76 = &v63 - v26;
  v27 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);
  v28 = type metadata accessor for HGCoreAnalyticsManager.HGCAStopEvent(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v31);
  if (*((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((*(v27 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_251131078();
    v3 = v2;
  }

  sub_251131098();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4D8, &unk_2511332A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251133110;
  v33 = *(v3 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask);
  *(inited + 32) = v33;
  v34 = *(v3 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask);
  *(inited + 40) = v34;
  v79 = v3;
  v35 = *(v3 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask);
  *(inited + 48) = v35;
  if (v33)
  {

    swift_retain_n();

    sub_251130C08();

    if (!v34)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v34)
  {
LABEL_5:

    sub_251130C08();
  }

LABEL_6:

  if (v35)
  {
    sub_251130C08();
  }

  sub_251125540();
  v36 = v80;
  if (v80)
  {
    v37 = *(v79 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer);
    if (v37)
    {
      sub_25110300C(v80);
      v38 = qword_27F41DFB0;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = sub_251130BE8();
      __swift_project_value_buffer(v39, qword_27F421A38);
      v40 = sub_251130BC8();
      v41 = sub_251131198();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2510F2000, v40, v41, "[Session] Start waiting for FTS signal, will force release FTS after 2s.", v42, 2u);
        MEMORY[0x25306CC10](v42, -1, -1);
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
      v66 = v23;
      sub_251130C78();
      swift_endAccess();
      LOBYTE(v82) = 1;
      sub_251130C58();
      v43 = v14;
      sub_251131258();
      v44 = *(v11 + 56);
      v45 = v67;
      v64 = v10;
      v44(v67, 1, 1, v10);
      v46 = [objc_opt_self() mainRunLoop];
      v82 = v46;
      v47 = sub_251131248();
      v48 = v73;
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);
      sub_2510FE944(0, &qword_27F41E4E0, 0x277CBEB88);
      sub_2510F6658(&qword_27F41E4E8, &qword_27F41E4C0, &qword_251133288);
      sub_25110301C();
      v65 = v37;
      v49 = v72;
      v50 = v68;
      sub_251130D58();
      sub_251103084(v48, &qword_27F41E4B0, &unk_251133520);

      sub_251103084(v45, &qword_27F41E4B8, &qword_251133280);
      (*(v11 + 8))(v43, v64);
      (*(v70 + 8))(v17, v50);
      sub_2510F6658(&qword_27F41E0C8, &qword_27F41E098, &qword_251132A38);
      sub_2510F6658(&qword_27F41E4F8, &qword_27F41E4C8, &qword_251133290);
      v51 = v75;
      v52 = v76;
      v53 = v71;
      v54 = v66;
      sub_251130D68();
      (*(v74 + 8))(v49, v51);
      (*(v69 + 8))(v54, v53);
      v55 = swift_allocObject();
      v57 = v80;
      v56 = v81;
      *(v55 + 16) = v80;
      *(v55 + 24) = v56;
      sub_25110300C(v57);
      sub_2510F6658(&qword_27F41E500, &qword_27F41E4D0, &qword_251133298);
      v58 = v78;
      v59 = sub_251130E08();

      sub_251102FFC(v57);
      (*(v77 + 8))(v52, v58);
      v60 = *(v79 + OBJC_IVAR____TtC12HeadGestures9HGSession_cleanupTask);
      *(v79 + OBJC_IVAR____TtC12HeadGestures9HGSession_cleanupTask) = v59;
    }

    else
    {

      v36(v61);
      sub_251102FFC(v36);
    }
  }
}

void sub_251100848(unsigned __int8 *a1, void (*a2)(void))
{
  v3 = *a1;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_251130BE8();
  __swift_project_value_buffer(v4, qword_27F421A38);
  v5 = sub_251130BC8();
  v6 = sub_251131178();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_2510F2000, v5, v6, "[Session] Current FTS signal: %{BOOL}d", v7, 8u);
    MEMORY[0x25306CC10](v7, -1, -1);
  }

  if (v3)
  {
    v8 = sub_251130BC8();
    v9 = sub_251131198();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2510F2000, v8, v9, "[Session] audio finished playing, free to execute completion", v10, 2u);
      MEMORY[0x25306CC10](v10, -1, -1);
    }

    a2();
  }
}

uint64_t sub_2511009C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);
  v2 = type metadata accessor for HGCoreAnalyticsManager.HGCAPipelineResetEventEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v5);
  if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_251131078();
  }

  sub_251131098();
  swift_endAccess();

  if (*(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask);

    sub_251130C08();
  }

  return sub_2511015F0();
}

uint64_t sub_251100ADC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E488, &unk_251133260);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  if (*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher))
  {
    v14[1] = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E390, &qword_2511330F8);
    sub_2510F6658(&qword_27F41E3A0, &qword_27F41E390, &qword_2511330F8);
    sub_251130D28();

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    *(swift_allocObject() + 16) = a1;
    sub_2510F6658(&qword_27F41E490, &qword_27F41E488, &unk_251133260);
    swift_unknownObjectRetain_n();
    v12 = sub_251130D48();

    (*(v5 + 8))(v9, v4);
    v13 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask);
    *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251100D60(void **a1, id *a2)
{
  v4 = sub_251130B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = *a1;
  v13 = [*a2 uuid];
  sub_251130B68();

  v14 = [v12 uuid];
  sub_251130B68();

  LOBYTE(v14) = sub_251130B58();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  return v14 & 1;
}

void sub_251100EC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 == 3)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_251130BE8();
    __swift_project_value_buffer(v4, qword_27F421A38);
    oslog = sub_251130BC8();
    v5 = sub_251131198();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2510F2000, oslog, v5, "Pipeline finsihed", v6, 2u);
      MEMORY[0x25306CC10](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_251130BE8();
    __swift_project_value_buffer(v8, qword_27F421A38);
    v9 = sub_251130BC8();
    v10 = sub_251131188();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      sub_2510F72AC();
      swift_allocError();
      *v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2510F2000, v9, v10, "Pipeline encountered an error %@", v11, 0xCu);
      sub_251103084(v12, &qword_27F41E498, &qword_251133270);
      MEMORY[0x25306CC10](v12, -1, -1);
      MEMORY[0x25306CC10](v11, -1, -1);
    }

    if (v3 == 1)
    {
      v15 = sub_251130BC8();
      v16 = sub_251131198();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2510F2000, v15, v16, "Pipeline reseting", v17, 2u);
        MEMORY[0x25306CC10](v17, -1, -1);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_2511009C4();
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_251100ADC(a3);
      }
    }
  }
}

void sub_2511011E8(id *a1, void *a2)
{
  v3 = *a1;
  if ([*a1 headGesture] || !objc_msgSend(v3, sel_headGesturePart))
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_251130BE8();
    __swift_project_value_buffer(v4, qword_27F421A38);
    v5 = v3;
    v6 = sub_251130BC8();
    v7 = sub_251131198();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27[0] = v9;
      *v8 = 136315138;
      v10 = HGHeadGestureResult.description()();
      v11 = sub_2510FAC50(v10._countAndFlagsBits, v10._object, v27);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_2510F2000, v6, v7, "[Gesture Result]: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25306CC10](v9, -1, -1);
      MEMORY[0x25306CC10](v8, -1, -1);
    }

    if (qword_27F41DFA0 != -1)
    {
      swift_once();
    }

    v12 = qword_27F421A00;
    v13 = [v5 headGesture];
    v14 = type metadata accessor for HGCoreAnalyticsManager.HGCAGestureDetectionEvent(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    *(swift_allocObject() + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAGestureDetectionEvent_detectedGesture) = v13;
    sub_251130B08();
    swift_beginAccess();

    MEMORY[0x25306BE60](v17);
    if (*((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*(v12 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_251131078();
    }

    sub_251131098();
    swift_endAccess();

    if (a2)
    {
      [a2 didDetectedWithHeadGesture_];
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v18 = sub_251130BE8();
    __swift_project_value_buffer(v18, qword_27F421A38);
    v19 = v3;
    v20 = sub_251130BC8();
    v21 = sub_251131198();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v24 = HGHeadGestureResult.description()();
      v25 = sub_2510FAC50(v24._countAndFlagsBits, v24._object, v27);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_2510F2000, v20, v21, "[Part Result]: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25306CC10](v23, -1, -1);
      MEMORY[0x25306CC10](v22, -1, -1);
    }

    if (a2)
    {

      [a2 didDetectedWithHeadGesture_];
    }
  }
}

uint64_t sub_2511015F0()
{
  v1 = v0;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3D8, &qword_251133208);
  v129 = *(v130 - 8);
  v2 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v115 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3E0, &qword_251133210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v122 = &v115 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3E8, &qword_251133218);
  v120 = *(v121 - 8);
  v8 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v115 - v9;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3F0, &qword_251133220);
  v146 = *(v134 - 8);
  v10 = *(v146 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v115 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E3F8, &qword_251133228);
  v147 = *(v135 - 8);
  v12 = *(v147 + 64);
  v13 = MEMORY[0x28223BE20](v135);
  v118 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v125 = &v115 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E400, &qword_251133230);
  v142 = *(v143 - 8);
  v16 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v140 = &v115 - v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E408, &qword_251133238);
  v144 = *(v145 - 8);
  v18 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = &v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E410, &qword_251133240);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v139 = &v115 - v23;
  v24 = OBJC_IVAR____TtC12HeadGestures9HGSession_config;
  type metadata accessor for HGBuffer();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  *(v25 + 32) = MEMORY[0x277D84F90];
  *(v25 + 40) = v26;
  *(v25 + 48) = v26;
  *(v25 + 56) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = v26;
  *(v25 + 16) = xmmword_251133120;
  v27 = OBJC_IVAR____TtC12HeadGestures9HGSession_buffer;
  v28 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_buffer);
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_buffer) = v25;

  v29 = type metadata accessor for HGPredictionAggregator();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_251119B24(&unk_2863312D0, v26);
  v33 = OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator;
  v34 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator);
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator) = v32;

  v35 = *(v1 + v24);
  v36 = type metadata accessor for HGPartGestureRecognizer();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = v35;
  v40 = sub_25112BE94(v39);
  v148 = v39;

  v41 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer);
  v124 = OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer) = v40;

  type metadata accessor for HGMotionStateRecognizer();
  swift_allocObject();
  v42 = sub_25110E600();
  v43 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer);
  v137 = OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer) = v42;

  type metadata accessor for HGDataRegulator();
  v44 = swift_allocObject();
  sub_2510F731C(v153);
  v45 = v153[5];
  v44[5] = v153[4];
  v44[6] = v45;
  v44[7] = *v154;
  *(v44 + 121) = *&v154[9];
  v46 = v153[1];
  v44[1] = v153[0];
  v44[2] = v46;
  v47 = v153[3];
  v44[3] = v153[2];
  v44[4] = v47;
  v48 = OBJC_IVAR____TtC12HeadGestures9HGSession_regulator;
  v49 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_regulator);
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_regulator) = v44;

  v50 = type metadata accessor for HGHeuristicHeadGestureRecognizer();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_251110EA4();
  v54 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer);
  v126 = OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer) = v53;

  v55 = *(v36 + 48);
  v56 = *(v36 + 52);
  v57 = swift_allocObject();
  *(v57 + 16) = 1;
  *(v57 + 24) = sub_251120B48(&unk_286331280);
  *(v57 + 32) = xmmword_251133130;
  *(v57 + 48) = xmmword_251133140;
  *(v57 + 64) = 5;
  sub_251130A88();
  *(v57 + 48) = xmmword_251133150;
  *(v57 + 32) = 0x3FD999999999999ALL;
  v58 = OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer;
  v59 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer);
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer) = v57;

  type metadata accessor for HGConfirmationRegulator();
  swift_allocObject();
  v60 = sub_2510FC554();
  v61 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator);
  v127 = OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator;
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator) = v60;

  if (!*(v1 + v48))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!*(*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionDataProvider) + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v149 = sub_2510F692C(v63);

  v64 = OBJC_IVAR___HGConfigurationInternal_enableRawDataLogging;
  v65 = v148;
  result = swift_beginAccess();
  v66 = v65[v64] == 1;
  v123 = v58;
  if (v66)
  {
    if (!*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v67 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder);

    v68 = sub_2511292E0(v149);

    v149 = v68;
  }

  v138 = v21;
  if (!*(v1 + v33))
  {
    goto LABEL_23;
  }

  v116 = v5;
  v117 = v4;
  if (!*(v1 + v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v69 = v20;
  v136 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_mlRecognizer);
  v152 = v149;
  swift_retain_n();

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E418, &qword_251133248);
  type metadata accessor for HGMLInput();
  v71 = sub_2510F6658(&qword_27F41E420, &qword_27F41E418, &qword_251133248);
  v72 = v139;
  v132 = v70;
  v131 = v71;
  sub_251130CE8();

  sub_2510F6658(&qword_27F41E428, &qword_27F41E410, &qword_251133240);
  v73 = sub_251130CD8();

  (*(v138 + 8))(v72, v69);
  v74 = sub_2511187E8(v73);

  v152 = v74;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E430, &qword_251133250);
  v75 = sub_2510FE944(0, &qword_27F41E348, off_2796ABC58);
  sub_2510F6658(&qword_27F41E438, &qword_27F41E430, &qword_251133250);
  v76 = v140;
  v139 = v75;
  sub_251130CE8();

  sub_2510F6658(&qword_27F41E440, &qword_27F41E400, &qword_251133230);
  v77 = v141;
  v78 = v143;
  sub_251130D98();
  (*(v142 + 8))(v76, v78);
  sub_2510F6658(&qword_27F41E448, &qword_27F41E408, &qword_251133238);
  v79 = v145;
  v80 = sub_251130CD8();

  (*(v144 + 8))(v77, v79);
  v152 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E390, &qword_2511330F8);
  v82 = sub_2510F6658(&qword_27F41E3A0, &qword_27F41E390, &qword_2511330F8);
  v83 = sub_251130CD8();

  v84 = OBJC_IVAR___HGConfigurationInternal_requestPartGestures;
  v85 = v148;
  result = swift_beginAccess();
  if (v85[v84] == 1)
  {
    v86 = *(v1 + v127);
    if (v86)
    {
      if (*(v1 + v126))
      {
        if (*(v1 + v123))
        {
          v144 = v82;
          v145 = v81;
          if (*(v1 + v137))
          {
            v151 = v149;
            swift_retain_n();

            v148 = v86;
            v87 = v133;
            sub_251130CE8();

            v88 = sub_2510F6658(&qword_27F41E458, &qword_27F41E3F0, &qword_251133220);
            v89 = v134;
            v142 = v88;
            v90 = sub_251130D88();

            v91 = *(v146 + 8);
            v146 += 8;
            v141 = v91;
            (v91)(v87, v89);
            v151 = v90;

            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E460, &qword_251133258);
            v93 = sub_2510F6658(&qword_27F41E468, &qword_27F41E460, &qword_251133258);
            v94 = v125;
            v143 = v92;
            v140 = v93;
            sub_251130CE8();

            sub_2510F6658(&qword_27F41E470, &qword_27F41E3F8, &qword_251133228);
            v95 = v135;
            v96 = sub_251130CD8();
            v97 = *(v147 + 8);
            v147 += 8;
            v97(v94, v95);
            v98 = sub_25110FA0C(v96);

            v99 = sub_2510FD048(v83, v98);

            if (*(v1 + v124))
            {
              if (*(v1 + v137))
              {
                v151 = v149;
                swift_retain_n();

                v100 = v133;
                sub_251130CE8();

                v101 = v134;
                v102 = sub_251130D88();

                (v141)(v100, v101);
                v151 = v102;

                v103 = v118;
                sub_251130CE8();

                v104 = v119;
                v105 = v135;
                sub_251130D38();
                v97(v103, v105);
                sub_2510F6658(&qword_27F41E478, &qword_27F41E3E8, &qword_251133218);
                v106 = v121;
                v107 = sub_251130CD8();
                (*(v120 + 8))(v104, v106);
                v151 = v107;
                v150 = v99;
                v108 = v122;
                sub_251130D78();

                sub_2510F6658(&qword_27F41E480, &qword_27F41E3E0, &qword_251133210);
                v109 = v117;
                v83 = sub_251130CD8();

                (*(v116 + 8))(v108, v109);
                goto LABEL_17;
              }

LABEL_31:
              __break(1u);
              return result;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:
  if (*(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer))
  {
    v151 = v83;

    v110 = v128;
    sub_251130D38();

    sub_2510F6658(&qword_27F41E450, &qword_27F41E3D8, &qword_251133208);
    v111 = v130;
    v112 = sub_251130CD8();
    (*(v129 + 8))(v110, v111);
    v151 = v112;
    v113 = sub_251130CD8();

    v83 = v113;
  }

  else
  {
  }

  v114 = *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher);
  *(v1 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher) = v83;
}

id sub_25110292C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  result = sub_251117398(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251102958()
{
  v1 = OBJC_IVAR____TtC12HeadGestures9HGSession_id;
  v2 = sub_251130B88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_mlRecognizer);

  v4 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer);

  v5 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_caManager);

  v6 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator);

  v7 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_buffer);

  v8 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_regulator);

  v9 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder);

  v10 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer);

  v11 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer);

  v12 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator);

  v13 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer);

  v14 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer);

  v15 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher);

  v16 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask);

  v17 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask);

  v18 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask);

  v19 = *(v0 + OBJC_IVAR____TtC12HeadGestures9HGSession_cleanupTask);

  return v0;
}

uint64_t sub_251102AE8()
{
  sub_251102958();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGSession()
{
  result = qword_27F41E3C8;
  if (!qword_27F41E3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251102B94()
{
  result = sub_251130B88();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_251102C64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12HeadGestures9HGSession_id;
  v5 = sub_251130B88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_251102CE0()
{
  v1 = sub_251130B88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v11[0] = 0x3A6E6F6973736553;
  v11[1] = 0xE800000000000000;
  (*(v2 + 16))(v5, v6 + OBJC_IVAR____TtC12HeadGestures9HGSession_id, v1);
  v7 = sub_251130B48();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x25306BDC0](v7, v9);

  return v11[0];
}

unint64_t sub_251102E18()
{
  result = qword_27F41E368;
  if (!qword_27F41E368)
  {
    sub_251130B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E368);
  }

  return result;
}

uint64_t sub_251102EC4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_251102F1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251102F54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251102F9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_251102FDC(unsigned __int8 *a1)
{
  result = *(v1 + 16);
  if (result)
  {
    return [result didStartStreamingWithIsStreaming_];
  }

  return result;
}

uint64_t sub_251102FFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25110300C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25110301C()
{
  result = qword_27F41E4F0;
  if (!qword_27F41E4F0)
  {
    sub_2510FE944(255, &qword_27F41E4E0, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E4F0);
  }

  return result;
}

uint64_t sub_251103084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2511030E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251103124(void *a1)
{
  v2 = v1;
  sub_251130B78();
  v4 = OBJC_IVAR____TtC12HeadGestures9HGSession_caManager;
  if (qword_27F41DFA0 != -1)
  {
    swift_once();
  }

  *(v2 + v4) = qword_27F421A00;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_aggregator) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_buffer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_regulator) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStateRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_partGesturesRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_confirmationRegulator) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_heuristicRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_sensitivePartGestureRecognizer) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_resultPublisher) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_headGesturesTask) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionStatusTask) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_waitingToneTask) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_cleanupTask) = 0;
  v5 = OBJC_IVAR____TtC12HeadGestures9HGSession_config;
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_config) = a1;
  v6 = objc_allocWithZone(type metadata accessor for HGHeadphoneMotionDataProvider());

  v7 = a1;
  v8 = [v6 init];
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_motionDataProvider) = v8;
  type metadata accessor for HGMLHeadGesturesClassifier();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_mlRecognizer) = sub_2511181B4(v7);
  v9 = *(v2 + v5);
  v10 = OBJC_IVAR___HGConfigurationInternal_audioFeedbackConfig;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  v13 = 0;
  if (v11[v12] == 1)
  {
    v14 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
    swift_beginAccess();
    if (*&v11[v14])
    {
      v15 = type metadata accessor for HGCustomizedAudioPlayer();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v13 = sub_251109F20(v11);
    }

    else
    {
      v18 = type metadata accessor for HGSystemAudioPlayer();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = v11;
      v13 = sub_2511167FC(v21);
    }
  }

  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer) = v13;
  type metadata accessor for HGDataCollector();
  swift_allocObject();
  v22 = sub_251128E98();
  v23 = *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder);
  *(v2 + OBJC_IVAR____TtC12HeadGestures9HGSession_recorder) = v22;

  sub_2511015F0();
  return v2;
}

uint64_t sub_2511033FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2511052C0(&qword_27F41E368, MEMORY[0x277CC95F0]), v9 = sub_251130EA8(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2511052C0(&qword_27F41E370, MEMORY[0x277CC95F0]);
      v17 = sub_251130ED8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_251103614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_251131598();
  sub_251130F88();
  v7 = sub_2511315B8();
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
    if (v12 || (sub_251131518() & 1) != 0)
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

uint64_t sub_25110370C()
{
  v1 = [v0 modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_2511052C0(&qword_27F41E158, type metadata accessor for MLModelMetadataKey);
  v3 = sub_251130E88();

  if (!*(v3 + 16) || (v4 = sub_25112EB84(*MEMORY[0x277CBFE90]), (v5 & 1) == 0))
  {
LABEL_7:

    return 0;
  }

  sub_2510FC4E8(*(v3 + 56) + 32 * v4, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E530, &unk_251133350);
  if (swift_dynamicCast())
  {
    if (*(v12 + 16))
    {
      v6 = sub_25112EA1C(0x64695F746C6F62, 0xE700000000000000);
      if (v7)
      {
        v8 = (*(v12 + 56) + 16 * v6);
        v10 = *v8;
        v9 = v8[1];

        return v10;
      }
    }

    goto LABEL_7;
  }

  return 0;
}

id sub_25110394C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  v6 = sub_251103614(a1, a2, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x8000000251135550 == a2 || (sub_251131518() & 1) != 0)
  {
    sub_2510FE944(0, &qword_27F41E518, 0x277CBFEF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E520, &qword_251133340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2511332B0;
    sub_2511312F8();
    sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
    *(inited + 72) = sub_251131238();
    sub_251120C28(inited);
    swift_setDeallocating();
    sub_251103084(inited + 32, &qword_27F41E528, &qword_251133348);
    return sub_25112DD98();
  }

  if ((a1 != 0x62614C7373616C63 || a2 != 0xEA00000000006C65) && (sub_251131518() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_251130EE8();
  v10 = [objc_opt_self() featureValueWithString_];

  return v10;
}

uint64_t sub_251103BE4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_251103E0C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FooModel();
  v3 = objc_msgSendSuper2(&v8, sel_initInterfaceAndMetadataWithCompiledArchive_error_, a1, v9);
  if (v3)
  {
    v4 = v9[0];
  }

  else
  {
    v5 = v9[0];
    sub_251130978();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_251103F60(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for FooModel();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_251104178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FooModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2511041F4(void *a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  v3 = qword_27F41DFB0;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_251130BE8();
  __swift_project_value_buffer(v5, qword_27F421A38);
  v6 = sub_251130BC8();
  v7 = sub_251131168();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2510F2000, v6, v7, "[HGModel] using v1 model", v8, 2u);
    MEMORY[0x25306CC10](v8, -1, -1);
  }

  return v2;
}

void sub_2511042EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 16);
  v6 = *(v5 + OBJC_IVAR___HGMLConfigurationInternal_modelType);
  if (v6 == 1)
  {
    v7 = [objc_allocWithZone(type metadata accessor for FooModel()) init];
    v8 = *(v0 + 24);
    *(v0 + 24) = v7;
  }

  else
  {
    if (!v6)
    {
      v9 = OBJC_IVAR___HGMLConfigurationInternal_testModelURL;
      swift_beginAccess();
      sub_251104BEC(v5 + v9, v4);
      v10 = sub_251104E84(v4);
      sub_251103084(v4, &qword_27F41E328, qword_251134070);
      if (v10)
      {
        v11 = *(v0 + 24);
        *(v0 + 24) = v10;

        return;
      }
    }

    sub_2511313B8();
    __break(1u);
  }

  MEMORY[0x2821F96F8]();
}

void sub_251104494()
{
  if (*(*(v0 + 16) + OBJC_IVAR___HGMLConfigurationInternal_modelType) == 1)
  {
    return;
  }

  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_28;
  }

  v2 = v1;
  v3 = [v2 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_2510FE944(0, &qword_27F41E508, 0x277CBFEE0);
  v5 = sub_251130E88();

  sub_251104908(v5);
  v7 = v6;
  v9 = v8;

  if (!v7)
  {
    goto LABEL_28;
  }

  if ([v9 type] == 5)
  {

    v10 = [v9 multiArrayConstraint];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    v12 = [v10 shape];

    sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
    v13 = sub_251131058();
    v14 = v13;
    if (v13 >> 62)
    {
      if (sub_2511313C8())
      {
LABEL_8:

        if ((v14 & 0xC000000000000001) == 0)
        {
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v15 = *(v14 + 32);
            goto LABEL_11;
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_25:
        v15 = MEMORY[0x25306C180](0, v14);
LABEL_11:
        v16 = v15;

        v17 = [v16 integerValue];

        if (v17 == 30)
        {
          goto LABEL_12;
        }

LABEL_28:
        sub_2511313B8();
        __break(1u);
        return;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_12:
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v18 = sub_251130BE8();
  __swift_project_value_buffer(v18, qword_27F421A38);
  v19 = v2;
  v20 = sub_251130BC8();
  v21 = sub_251131198();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    v24 = sub_25110370C();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v24 = 0x6E776F6E6B6E55;
      v26 = 0xE700000000000000;
    }

    v27 = sub_2510FAC50(v24, v26, &v28);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2510F2000, v20, v21, "[HGEspressoV1Model] ML model version: %s loaded.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25306CC10](v23, -1, -1);
    MEMORY[0x25306CC10](v22, -1, -1);
  }

  else
  {
  }
}

void *sub_251104908(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2511312B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_251104B5C(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_251104988(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 24);
  if (!v2)
  {
    result = 0;
    goto LABEL_5;
  }

  v11[0] = 0;
  v4 = v2;
  v5 = [v4 predictionFromFeatures:a1 error:v11];
  if (v5)
  {
    v6 = v5;
    v7 = v11[0];

    type metadata accessor for HGMLOutput();
    result = swift_allocObject();
    *(result + 16) = v6;
LABEL_5:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  v10 = v11[0];
  sub_251130978();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_251104A8C()
{

  return swift_deallocClassInstance();
}

void *sub_251104B5C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_251104BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_251104C5C(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FooModel();
  v5 = objc_msgSendSuper2(&v10, sel_initDescriptionOnlyWithSpecification_configuration_error_, a1, a2, v11);
  if (v5)
  {
    v6 = v11[0];
  }

  else
  {
    v7 = v11[0];
    sub_251130978();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_251104D24(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2511309A8();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_2511309E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_251130978();

    swift_willThrow();
    v11 = sub_2511309E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_251104E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32[-v4];
  v6 = sub_2511309E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v32[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v32[-v21];
  sub_251104BEC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_251103084(v5, &qword_27F41E328, qword_251134070);
    type metadata accessor for HGEspressoV1Model();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = sub_251130EE8();
    v26 = sub_251130EE8();
    v27 = [v24 URLForResource:v25 withExtension:v26];

    if (!v27)
    {

      return 0;
    }

    sub_2511309B8();

    (*(v7 + 32))(v17, v14, v6);
    sub_2510FE944(0, &qword_27F41E538, 0x277CBFF20);
    (*(v7 + 16))(v11, v17, v6);
    v28 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v31 = sub_251104D24(v11, v28);

    (*(v7 + 8))(v17, v6);
  }

  else
  {
    (*(v7 + 32))(v22, v5, v6);
    sub_2510FE944(0, &qword_27F41E538, 0x277CBFF20);
    (*(v7 + 16))(v20, v22, v6);
    v29 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v31 = sub_251104D24(v20, v29);

    (*(v7 + 8))(v22, v6);
  }

  return v31;
}

uint64_t sub_2511052C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25110533C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25110539C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_251105410(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v70[1] = a5;
  v71 = a6;
  v72 = a4;
  v73[2] = *MEMORY[0x277D85DE8];
  v9 = sub_251130988();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2511309E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v70 - v20;
  sub_251130998();
  v73[0] = a3;
  v73[1] = v72;
  (*(v10 + 104))(v13, *MEMORY[0x277CC91D0], v9);
  sub_251105D08();
  sub_2511309D8();
  (*(v10 + 8))(v13, v9);
  v22 = *(v15 + 8);
  v22(v19, v14);
  v72 = sub_2511309C8();
  v24 = v23;
  v22(v21, v14);
  v25 = a1;
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v28 = sub_251130EE8();
  v73[0] = 0;
  LODWORD(a3) = [v27 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:v73];

  if (a3)
  {
    v29 = qword_27F41DFB0;
    v30 = v73[0];
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = sub_251130BE8();
    __swift_project_value_buffer(v31, qword_27F421A38);

    v32 = sub_251130BC8();
    v33 = sub_251131198();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_2510FAC50(v25, a2, v73);
      _os_log_impl(&dword_2510F2000, v32, v33, "[HGFileUtil] Directory created at %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25306CC10](v35, -1, -1);
      MEMORY[0x25306CC10](v34, -1, -1);
    }

    v36 = [v26 defaultManager];
    v37 = v72;
    v38 = sub_251130EE8();
    v39 = [v36 fileExistsAtPath_];

    if (v39)
    {

      v40 = sub_251130BC8();
      v41 = sub_251131198();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v73[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_2510FAC50(v37, v24, v73);
        _os_log_impl(&dword_2510F2000, v40, v41, "[HGFileUtil] File already exists at %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x25306CC10](v43, -1, -1);
        MEMORY[0x25306CC10](v42, -1, -1);
      }

LABEL_22:

      v63 = sub_251130EE8();

      v64 = [objc_opt_self() fileHandleForWritingAtPath_];

      result = v64;
      goto LABEL_23;
    }

    v55 = [v26 defaultManager];
    v56 = sub_251130EE8();
    if (v71 >> 60 == 15)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_251130A38();
    }

    v59 = [v55 createFileAtPath:v56 contents:v57 attributes:0];

    v40 = sub_251130BC8();
    if (v59)
    {
      v60 = sub_251131198();

      if (os_log_type_enabled(v40, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v73[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_2510FAC50(v37, v24, v73);
        _os_log_impl(&dword_2510F2000, v40, v60, "[HGFileUtil] Empty file created at %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x25306CC10](v62, -1, -1);
        MEMORY[0x25306CC10](v61, -1, -1);
      }

      goto LABEL_22;
    }

    v66 = sub_251131188();

    if (os_log_type_enabled(v40, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73[0] = v68;
      *v67 = 136315138;
      v69 = sub_2510FAC50(v37, v24, v73);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_2510F2000, v40, v66, "[HGFileUtil] Error creating file at %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x25306CC10](v68, -1, -1);
      MEMORY[0x25306CC10](v67, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v44 = v73[0];

    v45 = sub_251130978();

    swift_willThrow();
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v46 = sub_251130BE8();
    __swift_project_value_buffer(v46, qword_27F421A38);
    v47 = v45;
    v48 = sub_251130BC8();
    v49 = sub_251131188();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v73[0] = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = sub_251131548();
      v54 = sub_2510FAC50(v52, v53, v73);

      *(v50 + 4) = v54;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x25306CC10](v51, -1, -1);
      MEMORY[0x25306CC10](v50, -1, -1);
    }

    else
    {
    }
  }

  result = 0;
LABEL_23:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_251105D08()
{
  result = qword_27F41E540;
  if (!qword_27F41E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E540);
  }

  return result;
}

void sub_251105D5C(void *a1, unint64_t a2, void *a3, char a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  sub_251131158();
  if (a2 >> 60 != 15)
  {
    v20[0] = a1;
    v20[1] = a2;
    sub_251106058(a1, a2);
    sub_2511060AC();
    sub_251131148();
    sub_251106100(a1, a2);
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v20[0] = 0;
  if (![a3 closeAndReturnError_])
  {
    v18 = v20[0];
    v19 = sub_251130978();

    swift_willThrow();
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_251130BE8();
    __swift_project_value_buffer(v8, qword_27F421A38);
    v9 = v19;
    v10 = sub_251130BC8();
    v11 = sub_251131188();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v19;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_2510F2000, v10, v11, "[HGDataCollector] Error when trying to write to file %@", v12, 0xCu);
      sub_251105FF0(v13);
      MEMORY[0x25306CC10](v13, -1, -1);
      MEMORY[0x25306CC10](v12, -1, -1);
    }

    else
    {
    }

LABEL_14:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v16 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F9840]();
}

uint64_t sub_251105FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E498, &qword_251133270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251106058(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2511060AC()
{
  result = qword_27F41E548;
  if (!qword_27F41E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E548);
  }

  return result;
}

uint64_t sub_251106100(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251106114(a1, a2);
  }

  return a1;
}

uint64_t sub_251106114(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_251106168()
{
  v26 = objc_opt_self();
  v0 = [v26 defaultManager];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = [v3 bundlePath];

  sub_251130F18();
  sub_251130FE8();
  sub_251130F98();
  v5 = sub_251130EE8();

  v6 = [v0 fileExistsAtPath_];

  v7 = [v2 bundleForClass_];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 bundlePath];
LABEL_9:
    v21 = v9;

    sub_251130F18();
    v28 = sub_251130FE8();
    sub_251130F98();
    return v28;
  }

  v10 = [v7 resourcePath];

  if (v10)
  {
    sub_251130F18();

    v27 = sub_251130FE8();
    sub_251130F98();
    v11 = [v26 defaultManager];
    v12 = sub_251130EE8();
    v13 = [v11 fileExistsAtPath_];

    if (v13)
    {
      return v27;
    }
  }

  v15 = [v26 defaultManager];
  v16 = [v2 mainBundle];
  v17 = [v16 0x2796ACD78];

  sub_251130F18();
  sub_251130FE8();
  sub_251130F98();
  v18 = sub_251130EE8();

  v19 = [v15 fileExistsAtPath_];

  v20 = [v2 mainBundle];
  v8 = v20;
  if (v19)
  {
    v9 = [v20 0x2796ACD78];
    goto LABEL_9;
  }

  v22 = [v20 resourcePath];

  if (v22)
  {
    sub_251130F18();

    v29 = sub_251130FE8();
    sub_251130F98();
    v23 = [v26 defaultManager];
    v24 = sub_251130EE8();
    v25 = [v23 fileExistsAtPath_];

    if (v25)
    {
      return v29;
    }
  }

  return 0;
}

unint64_t sub_2511066C8()
{
  sub_251131358();

  if (*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected))
  {
    v1 = 5457241;
  }

  else
  {
    v1 = 20302;
  }

  if (*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected))
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  MEMORY[0x25306BDC0](v1, v2);

  MEMORY[0x25306BDC0](0x696D616572747320, 0xEB000000003A676ELL);
  v3 = [*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager) isDeviceMotionActive];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 5457241;
  }

  else
  {
    v5 = 20302;
  }

  if (v4)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x25306BDC0](v5, v6);

  return 0xD00000000000001BLL;
}

void sub_2511067FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager);
  if ([v1 isDeviceMotionAvailable] && (objc_msgSend(v1, sel_isDeviceMotionActive) & 1) == 0)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v2 = sub_251130BE8();
    __swift_project_value_buffer(v2, qword_27F421A38);
    v3 = sub_251130BC8();
    v4 = sub_251131198();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2510FAC50(0x29287472617473, 0xE700000000000000, v13);
      _os_log_impl(&dword_2510F2000, v3, v4, "HGHeadphoneMotionManager:%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x25306CC10](v6, -1, -1);
      MEMORY[0x25306CC10](v5, -1, -1);
    }

    v7 = *(v0 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_2511072A8;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25112FA00;
    v13[3] = &block_descriptor_1;
    v9 = _Block_copy(v13);

    [v1 startDeviceMotionUpdatesToQueue:v7 withHandler:v9];
    _Block_release(v9);
    v10 = sub_251130BC8();
    v11 = sub_251131198();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2510F2000, v10, v11, "HGHeadphoneMotionManager: started", v12, 2u);
      MEMORY[0x25306CC10](v12, -1, -1);
    }
  }
}

void sub_251106AA4(void *a1, void *a2)
{
  v4 = sub_251130B38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v11 = sub_251130BE8();
    __swift_project_value_buffer(v11, qword_27F421A38);
    v12 = a2;
    v13 = sub_251130BC8();
    v14 = sub_251131188();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v49 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_251131548();
      v19 = sub_2510FAC50(v17, v18, &v49);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2510F2000, v13, v14, "HeadPhoneMotionError: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25306CC10](v16, -1, -1);
      MEMORY[0x25306CC10](v15, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v20 = v7;
    v21 = a1;
    sub_251130B08();
    sub_251130AE8();
    v23 = v22;
    (*(v5 + 8))(v9, v20);
    sub_251112740(v21, &v42, v23);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = *(Strong + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject);
      v53 = v46;
      v54 = v47;
      v55[0] = v48[0];
      *(v55 + 9) = *(v48 + 9);
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v52 = v45;
      v26 = Strong;
      sub_251130C28();
      v39 = v46;
      v40 = v47;
      v41[0] = v48[0];
      *(v41 + 9) = *(v48 + 9);
      v35 = v42;
      v36 = v43;
      v37 = v44;
      v38 = v45;
      nullsub_1(&v35);
      v27 = &v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
      v53 = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64];
      v54 = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80];
      v55[0] = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96];
      *(v55 + 9) = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105];
      v49 = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
      v50 = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16];
      v51 = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32];
      v52 = *&v26[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48];
      v28 = v38;
      v30 = v35;
      v29 = v36;
      *(v27 + 2) = v37;
      *(v27 + 3) = v28;
      *v27 = v30;
      *(v27 + 1) = v29;
      v32 = v40;
      v31 = v41[0];
      v33 = v39;
      *(v27 + 105) = *(v41 + 9);
      *(v27 + 5) = v32;
      *(v27 + 6) = v31;
      *(v27 + 4) = v33;
      sub_2511082D0(&v49);
    }
  }
}

void sub_251106E6C()
{
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v1 = sub_251130BE8();
  __swift_project_value_buffer(v1, qword_27F421A38);
  v2 = sub_251130BC8();
  v3 = sub_251131198();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2510FAC50(0x2928706F7473, 0xE600000000000000, &v9);
    _os_log_impl(&dword_2510F2000, v2, v3, "HGHeadphoneMotionManager:%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25306CC10](v5, -1, -1);
    MEMORY[0x25306CC10](v4, -1, -1);
  }

  [*(v0 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_cmMotionManager) stopDeviceMotionUpdates];
  oslog = sub_251130BC8();
  v6 = sub_251131198();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2510F2000, oslog, v6, "HGHeadphoneMotionManager: stopped", v7, 2u);
    MEMORY[0x25306CC10](v7, -1, -1);
  }
}

id sub_251107184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGHeadphoneMotionDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HGHeadphoneMotionDataProvider()
{
  result = qword_27F41E5B8;
  if (!qword_27F41E5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251107270()
{
  MEMORY[0x25306CC70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2511072C8()
{
  v1 = v0;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_251130BE8();
  __swift_project_value_buffer(v2, qword_27F421A38);
  v3 = sub_251130BC8();
  v4 = sub_251131198();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2510FAC50(0xD000000000000024, 0x80000002511369C0, &v7);
    _os_log_impl(&dword_2510F2000, v3, v4, "HGHeadphoneMotionManager:%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25306CC10](v6, -1, -1);
    MEMORY[0x25306CC10](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected) = 1;
}

void sub_25110741C()
{
  v1 = v0;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_251130BE8();
  __swift_project_value_buffer(v2, qword_27F421A38);
  v3 = sub_251130BC8();
  v4 = sub_251131198();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2510FAC50(0xD000000000000027, 0x8000000251136990, &v7);
    _os_log_impl(&dword_2510F2000, v3, v4, "HGHeadphoneMotionManager:%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25306CC10](v6, -1, -1);
    MEMORY[0x25306CC10](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures29HGHeadphoneMotionDataProvider_headphoneConnected) = 0;
}

uint64_t static HGUtils.headGestureToString(headGesture:)(uint64_t a1)
{
  v1 = 0x656B616853;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 6582094;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x756F72476B636142;
  }
}

uint64_t static HGUtils.headGesturePartToString(headGesturePart:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x676952656B616853;
      }

      goto LABEL_8;
    }

    return 0x66654C656B616853;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v1 = 1147432782;
        return v1 | 0x6E776F00000000;
      }

LABEL_8:
      v1 = 1852534389;
      return v1 | 0x6E776F00000000;
    }

    return 0x7055646F4ELL;
  }
}

uint64_t static HGUtils.getCurrentModelVersion()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_2511309E8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_251104E84(v3);
  sub_2510FC410(v3);
  if (v5 && (v6 = v5, v7 = sub_25110370C(), v9 = v8, v6, v6, v9))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for HGUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HGUtils(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_251107858()
{
  v1 = v0;
  sub_251131358();
  MEMORY[0x25306BDC0](0x6E6F697461746F52, 0xEB00000000203A58);
  v2 = v0[2];
  v3 = [v2 description];
  v4 = sub_251130F18();
  v6 = v5;

  MEMORY[0x25306BDC0](v4, v6);

  MEMORY[0x25306BDC0](0x697461746F520A2CLL, 0xED0000203A596E6FLL);
  v7 = v1[3];
  v8 = [v7 description];
  v9 = sub_251130F18();
  v11 = v10;

  MEMORY[0x25306BDC0](v9, v11);

  MEMORY[0x25306BDC0](0x697461746F520A2CLL, 0xED0000203A5A6E6FLL);
  v12 = v1[4];
  v13 = [v12 description];
  v14 = sub_251130F18();
  v16 = v15;

  MEMORY[0x25306BDC0](v14, v16);

  MEMORY[0x25306BDC0](0xD000000000000011, 0x8000000251136A80);
  v17 = v1[5];
  v18 = [v17 description];
  v19 = sub_251130F18();
  v21 = v20;

  MEMORY[0x25306BDC0](v19, v21);

  MEMORY[0x25306BDC0](0xD000000000000011, 0x8000000251136AA0);
  v22 = v1[6];
  v23 = [v22 description];
  v24 = sub_251130F18();
  v26 = v25;

  MEMORY[0x25306BDC0](v24, v26);

  MEMORY[0x25306BDC0](0xD000000000000011, 0x8000000251136AC0);
  v27 = v1[7];
  v28 = [v27 description];
  v29 = sub_251130F18();
  v31 = v30;

  MEMORY[0x25306BDC0](v29, v31);

  MEMORY[0x25306BDC0](10, 0xE100000000000000);
  return 0;
}

id sub_251107B58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461746F52 && a2 == 0xE900000000000058 || (sub_251131518() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6E6F697461746F52 && a2 == 0xE900000000000059 || (sub_251131518() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6E6F697461746F52 && a2 == 0xE90000000000005ALL || (sub_251131518() & 1) != 0)
  {
    v5 = 32;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6172656C65636341 && a2 == 0xED0000586E6F6974 || (sub_251131518() & 1) != 0)
  {
    v5 = 40;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6172656C65636341 && a2 == 0xED0000596E6F6974 || (sub_251131518() & 1) != 0)
  {
    v5 = 48;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6172656C65636341 && a2 == 0xED00005A6E6F6974 || (sub_251131518() & 1) != 0)
  {
    v5 = 56;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_251107E48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_251107F18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  return v1;
}

uint64_t sub_251107F8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor;
  if (*&v0[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor])
  {

    sub_251130C08();

    v7 = *&v0[v6];
  }

  *&v0[v6] = 0;

  sub_251109DCC();
  v8 = [objc_opt_self() mainRunLoop];
  v9 = *MEMORY[0x277CBE640];
  v10 = sub_251131248();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_251131228();

  sub_251109E18(v5);
  v18 = v11;
  sub_251131218();
  sub_251109E80();
  v12 = sub_251130C48();

  v18 = v12;
  *(swift_allocObject() + 16) = v0;
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6B0, &unk_251133640);
  sub_2510F6658(&qword_27F41E6B8, &qword_27F41E6B0, &unk_251133640);
  v14 = sub_251130E08();

  v15 = *&v1[v6];
  *&v1[v6] = v14;
}

uint64_t sub_2511081E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  *a2 = v5;
  return result;
}

uint64_t sub_251108260(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_251130CB8();
}

uint64_t sub_2511082D0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 104);
  v4 = *(a1 + 80);
  v73[4] = *(a1 + 64);
  v73[5] = v4;
  v74[0] = *(a1 + 96);
  *(v74 + 9) = *(a1 + 105);
  v5 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v5;
  v6 = *(a1 + 48);
  v73[2] = *(a1 + 32);
  v73[3] = v6;
  if (sub_2510F7300(v73) == 1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
    v70 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
    v71 = v7;
    v72[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
    *(v72 + 9) = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
    v8 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
    v66 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
    v67 = v8;
    v9 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
    v68 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
    v69 = v9;
    result = sub_2510F7300(&v66);
    if (result != 1)
    {
      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v11 = sub_251130BE8();
      __swift_project_value_buffer(v11, qword_27F421A38);
      v12 = sub_251130BC8();
      v13 = sub_251131198();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2510F2000, v12, v13, "HGMotionDataProvider started receiving sensor data...", v14, 2u);
        MEMORY[0x25306CC10](v14, -1, -1);
      }

      if (qword_27F41DFA0 != -1)
      {
        swift_once();
      }

      v15 = qword_27F421A00;
      v16 = type metadata accessor for HGCoreAnalyticsManager.HGCAMotionDataReceivedEvent(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_251130B08();
      swift_beginAccess();

      MEMORY[0x25306BE60](v19);
      if (*((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_251131078();
      }

      sub_251131098();
      swift_endAccess();

      return sub_251107F8C();
    }

    return result;
  }

  v20 = (v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
  v21 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
  v70 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
  v71 = v21;
  v72[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
  *(v72 + 9) = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
  v22 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
  v66 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
  v67 = v22;
  v23 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
  v68 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
  v69 = v23;
  if (sub_2510F7300(&v66) == 1)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v24 = sub_251130BE8();
    __swift_project_value_buffer(v24, qword_27F421A38);
    v25 = sub_251130BC8();
    v26 = sub_251131198();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2510F2000, v25, v26, "HGMotionDataProvider data stream stopped...", v27, 2u);
      MEMORY[0x25306CC10](v27, -1, -1);
    }

    v28 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor;
    if (*(v2 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor))
    {
      v29 = *(v2 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor);

      sub_251130C08();

      v30 = *(v2 + v28);
    }

    *(v2 + v28) = 0;
  }

  v31 = v20[5];
  v64[4] = v20[4];
  v64[5] = v31;
  v65[0] = v20[6];
  *(v65 + 9) = *(v20 + 105);
  v32 = v20[1];
  v64[0] = *v20;
  v64[1] = v32;
  v33 = v20[3];
  v64[2] = v20[2];
  v64[3] = v33;
  result = sub_2510F7300(v64);
  if (result != 1)
  {
    v34 = *(v65 + 1) - v3;
    v35 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_samplingRatePool;
    v36 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_samplingRatePool);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v35) = v36;
    if ((result & 1) == 0)
    {
      result = sub_251109514(0, *(v36 + 16) + 1, 1, v36);
      v36 = result;
      *(v2 + v35) = result;
    }

    v37 = *(v36 + 16);
    v38 = *(v36 + 24);
    v39 = v37 + 1;
    v40 = 1.0 / v34;
    if (v37 >= v38 >> 1)
    {
      v60 = v36;
      v61 = *(v36 + 16);
      result = sub_251109514((v38 > 1), v37 + 1, 1, v60);
      v37 = v61;
      v36 = result;
    }

    *(v36 + 16) = v39;
    *(v36 + 8 * v37 + 32) = v40;
    *(v2 + v35) = v36;
    if (v37 >= 0x18)
    {
      v41 = v37 + 1;
      v42 = (v37 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v43 = v36 + 48;
      v44 = 0.0;
      v45 = v42;
      do
      {
        v46 = *v43;
        v44 = v44 + *(v43 - 16) + *(v43 - 8) + *v43 + *(v43 + 8);
        v43 += 32;
        v45 -= 4;
      }

      while (v45);
      if (v41 != v42)
      {
        v47 = v37 - v42 + 1;
        v48 = (v36 + 32 * (v41 >> 2) + 32);
        do
        {
          v49 = *v48++;
          v44 = v44 + v49;
          --v47;
        }

        while (v47);
      }

      *(v2 + v35) = MEMORY[0x277D84F90];

      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v50 = v44 / v39;
      v51 = sub_251130BE8();
      __swift_project_value_buffer(v51, qword_27F421A38);
      v52 = sub_251130BC8();
      v53 = sub_251131178();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v50;
        _os_log_impl(&dword_2510F2000, v52, v53, "HGMotionDataProvider current sampling rate: %f Hz", v54, 0xCu);
        MEMORY[0x25306CC10](v54, -1, -1);
      }

      if (qword_27F41DFA0 != -1)
      {
        swift_once();
      }

      v55 = qword_27F421A00;
      v56 = type metadata accessor for HGCoreAnalyticsManager.HGCASamplingRateEvent(0);
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      *(swift_allocObject() + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager21HGCASamplingRateEvent_currentSamplingRate) = v50;
      sub_251130B08();
      swift_beginAccess();

      MEMORY[0x25306BE60](v59);
      if (*((*(v55 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v62 = *((*(v55 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_251131078();
      }

      sub_251131098();
      swift_endAccess();
    }
  }

  return result;
}

char *sub_2511089B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E680, &unk_251133508);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E078, &unk_251132EC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E688, &qword_251133518);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v0[v12] = sub_251130C38();
  v16 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider__isStreamingData;
  LOBYTE(v32[0]) = 0;
  sub_251130C68();
  (*(v8 + 32))(&v1[v16], v11, v7);
  *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher] = 0;
  v17 = OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue;
  *&v1[v17] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_streamingStatueMonitor] = 0;
  *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_samplingRatePool] = MEMORY[0x277D84F90];
  v18 = &v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
  sub_2510F731C(v32);
  v19 = v32[5];
  *(v18 + 4) = v32[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v33[0];
  *(v18 + 105) = *(v33 + 9);
  v20 = v32[1];
  *v18 = v32[0];
  *(v18 + 1) = v20;
  v21 = v32[3];
  *(v18 + 2) = v32[2];
  *(v18 + 3) = v21;
  v22 = type metadata accessor for HGMotionDataProvider();
  v31.receiver = v1;
  v31.super_class = v22;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = *&v23[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue];
  v25 = v23;
  [v24 setMaxConcurrentOperationCount_];
  v30 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2510F6658(&qword_27F41E690, &qword_27F41E688, &qword_251133518);

  sub_251130CF8();

  sub_2510F6658(&qword_27F41E698, &qword_27F41E680, &unk_251133508);
  v26 = sub_251130CD8();
  (*(v3 + 8))(v6, v2);
  v27 = *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher];
  *&v25[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataPublisher] = v26;

  (*((*MEMORY[0x277D85000] & *v25) + 0x130))(v28);

  return v25;
}

void sub_251108E24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x138))();
  }
}

void sub_251108EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x140))();
  }
}

uint64_t sub_251108F60(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
  v4 = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80];
  v25[4] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64];
  v25[5] = v4;
  v26[0] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96];
  *(v26 + 9) = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105];
  v5 = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16];
  v25[0] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion];
  v25[1] = v5;
  v6 = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48];
  v25[2] = *&a2[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32];
  v25[3] = v6;
  result = sub_2510F7300(v25);
  if (result != 1)
  {
    v8 = *&v26[1];
    sub_251130AE8();
    if (vabdd_f64(v8, v9) <= 1.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v23[0]) = 1;
      v20 = a2;
    }

    else
    {
      sub_2510F731C(v21);
      v10 = *(v3 + 5);
      v23[4] = *(v3 + 4);
      v23[5] = v10;
      v24[0] = *(v3 + 6);
      *(v24 + 9) = *(v3 + 105);
      v11 = *(v3 + 1);
      v23[0] = *v3;
      v23[1] = v11;
      v12 = *(v3 + 3);
      v23[2] = *(v3 + 2);
      v23[3] = v12;
      v13 = v21[0];
      v14 = v21[1];
      v15 = v21[3];
      *(v3 + 2) = v21[2];
      *(v3 + 3) = v15;
      *v3 = v13;
      *(v3 + 1) = v14;
      v16 = v21[4];
      v17 = v21[5];
      v18 = v22[0];
      *(v3 + 105) = *(v22 + 9);
      *(v3 + 5) = v17;
      *(v3 + 6) = v18;
      *(v3 + 4) = v16;
      sub_2511082D0(v23);
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = a2;
    }

    return sub_251130CB8();
  }

  return result;
}

id sub_2511091F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGMotionDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HGMotionDataProvider()
{
  result = qword_27F41E640;
  if (!qword_27F41E640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251109344()
{
  sub_2510FC1BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

char *sub_251109414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6D0, &qword_251133588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 7;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_251109514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E650, &qword_2511334D8);
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

char *sub_251109618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E678, &qword_251133500);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_25110971C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E670, &qword_2511334F8);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_251109820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C8, &qword_251133580);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_251109924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E668, &qword_2511334F0);
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

char *sub_251109A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E660, &unk_251134950);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251109B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C0, &unk_251134640);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251109C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E658, &unk_2511334E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_251109D4C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_251109D84()
{
  MEMORY[0x25306CC70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_251109DCC()
{
  result = qword_27F41E6A0;
  if (!qword_27F41E6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E6A0);
  }

  return result;
}

uint64_t sub_251109E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251109E80()
{
  result = qword_27F41E6A8;
  if (!qword_27F41E6A8)
  {
    sub_251131218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E6A8);
  }

  return result;
}

uint64_t sub_251109ED8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251109F20(_BYTE *a1)
{
  v21 = sub_251130E18();
  v24 = *(v21 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251130E38();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode) = 0;
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_renderAlgo) = 3;
  v11 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
  swift_beginAccess();
  sub_25112D144(a1[v11], v27);
  v12 = v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager;
  v13 = v27[1];
  *v12 = v27[0];
  *(v12 + 16) = v13;
  *(v12 + 32) = v28;
  v14 = a1;
  v15 = sub_2510F5F58(v14);

  v16 = *(v15 + 24);
  aBlock[4] = sub_25110DA08;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_57;
  v17 = _Block_copy(aBlock);
  swift_retain_n();
  v18 = v16;
  sub_251130E28();
  v25 = MEMORY[0x277D84F90];
  sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  v19 = v21;
  sub_2511312A8();
  MEMORY[0x25306C010](0, v9, v5, v17);
  _Block_release(v17);

  (*(v24 + 8))(v5, v19);
  (*(v22 + 8))(v9, v23);

  return v15;
}

id sub_25110A2B8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  result = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result stop];
  result = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result stop];
  result = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [result stop];
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);

  return [v3 stop];
}

void sub_25110A384(void *a1)
{
  v2 = v1;
  v4 = sub_251130B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  if (*(v9 + v10) != 1)
  {
    return;
  }

  v11 = (v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  v12 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 16);
  v13 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 24);
  v14 = [a1 headGesture];
  if (v14 != 2)
  {
    if (v14 != 1)
    {
      goto LABEL_19;
    }

    v13 = v12;
  }

  if (v13)
  {
    v79 = v5;
    v81 = (v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
    v15 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
    if (v15)
    {
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      *(v17 + 24) = v16;
      aBlock[4] = sub_25110D934;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25110B424;
      aBlock[3] = &block_descriptor_47;
      v18 = _Block_copy(aBlock);
      v19 = v13;
      v20 = v15;
      v21 = a1;

      v80 = v19;
      [v20 scheduleBuffer:v19 completionCallbackType:2 completionHandler:v18];
      _Block_release(v18);

      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v22 = sub_251130BE8();
      __swift_project_value_buffer(v22, qword_27F421A38);
      v23 = v21;

      v24 = sub_251130BC8();
      v25 = sub_251131178();

      if (!os_log_type_enabled(v24, v25))
      {

        v44 = v81;
LABEL_39:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock[0]) = 0;

        sub_251130CB8();
LABEL_61:
        v77 = *v44;
        v78 = *v44;
        sub_25110D264(v2, v77);

        return;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315650;
      v28 = [v23 headGesture];
      if (v28)
      {
        v29 = 0xE700000000000000;
        v30 = 0x6E776F6E6B6E55;
        if (v28 == 1)
        {
          v30 = 6582094;
          v29 = 0xE300000000000000;
        }

        v31 = v28 == 2;
        if (v28 == 2)
        {
          v32 = 0x656B616853;
        }

        else
        {
          v32 = v30;
        }

        if (v31)
        {
          v33 = 0xE500000000000000;
        }

        else
        {
          v33 = v29;
        }
      }

      else
      {
        v32 = 0x756F72476B636142;
        v33 = 0xEA0000000000646ELL;
      }

      v45 = sub_2510FAC50(v32, v33, aBlock);

      *(v26 + 4) = v45;
      *(v26 + 12) = 2080;
      v46 = [v23 uuid];
      sub_251130B68();

      sub_25110D874(&qword_27F41E360, MEMORY[0x277CC95F0]);
      v47 = sub_251131508();
      v49 = v48;
      (*(v79 + 8))(v8, v4);
      v50 = sub_2510FAC50(v47, v49, aBlock);

      *(v26 + 14) = v50;
      *(v26 + 22) = 2048;
      v44 = v81;
      if (*v81)
      {
        v51 = *v81;

        [v51 volume];
        v53 = v52;

        *(v26 + 24) = v53;
        _os_log_impl(&dword_2510F2000, v24, v25, "[Audio] Playing Audio feedback %s UUID: %s at volume %f", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v27, -1, -1);
        MEMORY[0x25306CC10](v26, -1, -1);

        goto LABEL_39;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

LABEL_19:
  v35 = *v11;
  v34 = v11[1];
  v36 = [a1 headGesturePart];
  if ((v36 - 1) < 2)
  {
    v34 = v35;
    if (!v35)
    {
      return;
    }

LABEL_25:
    v37 = (v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
    v38 = *(v2 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
    if (!v38)
    {
LABEL_65:
      __break(1u);
LABEL_66:

      __break(1u);
      goto LABEL_67;
    }

    v39 = v34;
    [v38 scheduleBuffer:v39 atTime:0 options:2 completionHandler:0];
    if ([a1 headGesturePart] == 2)
    {
      v42 = *v37;
      if (!*v37)
      {
        goto LABEL_63;
      }

      v43 = 0.0;
      LODWORD(v40) = -1110651699;
    }

    else if ([a1 headGesturePart] == 1)
    {
      v42 = *v37;
      if (!*v37)
      {
        goto LABEL_63;
      }

      v43 = 0.0;
      LODWORD(v40) = 1036831949;
    }

    else if ([a1 headGesturePart] == 3)
    {
      v42 = *v37;
      if (!*v37)
      {
        goto LABEL_63;
      }

      v40 = 0.0;
      LODWORD(v43) = -1.0;
    }

    else
    {
      if ([a1 headGesturePart] != 4)
      {
        goto LABEL_44;
      }

      v42 = *v37;
      if (!*v37)
      {
        goto LABEL_63;
      }

      v40 = 0.0;
      LODWORD(v43) = 1.0;
    }

    LODWORD(v41) = LODWORD(v40);
    [v42 setPosition_];
LABEL_44:
    v54 = *v37;
    if (*v37)
    {
      v79 = v5;
      v80 = v39;
      v81 = v37;
      v55 = *(v2 + 48);
      v56 = v54;
      sub_2510F44B4([a1 headGesturePart]);
      *&v57 = v57;
      [v56 setVolume_];

      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v58 = sub_251130BE8();
      __swift_project_value_buffer(v58, qword_27F421A38);
      v59 = a1;

      v60 = sub_251130BC8();
      v61 = sub_251131178();

      if (!os_log_type_enabled(v60, v61))
      {

        v44 = v81;
        goto LABEL_61;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315650;
      v64 = [v59 headGesturePart];
      if (v64 > 2)
      {
        if (v64 != 3)
        {
          if (v64 == 4)
          {
            v65 = v63;
            v66 = 0xEA00000000007468;
            v67 = 0x676952656B616853;
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v65 = v63;
        v66 = 0xE900000000000074;
        v67 = 0x66654C656B616853;
      }

      else
      {
        if (v64 != 1)
        {
          if (v64 == 2)
          {
            v65 = v63;
            v66 = 0xE700000000000000;
            v67 = 0x6E776F44646F4ELL;
            goto LABEL_59;
          }

LABEL_56:
          v65 = v63;
          v67 = 0x6E776F6E6B6E75;
          v66 = 0xE700000000000000;
          goto LABEL_59;
        }

        v65 = v63;
        v66 = 0xE500000000000000;
        v67 = 0x7055646F4ELL;
      }

LABEL_59:
      v68 = sub_2510FAC50(v67, v66, aBlock);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      v69 = [v59 uuid];
      sub_251130B68();

      sub_25110D874(&qword_27F41E360, MEMORY[0x277CC95F0]);
      v70 = sub_251131508();
      v72 = v71;
      (*(v79 + 8))(v8, v4);
      v73 = sub_2510FAC50(v70, v72, aBlock);

      *(v62 + 14) = v73;
      *(v62 + 22) = 2048;
      v44 = v81;
      if (*v81)
      {
        v74 = *v81;

        [v74 volume];
        v76 = v75;

        *(v62 + 24) = v76;
        _os_log_impl(&dword_2510F2000, v60, v61, "[Audio] Playing Audio feedback %s UUID: %s at volume %f", v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v65, -1, -1);
        MEMORY[0x25306CC10](v62, -1, -1);

        goto LABEL_61;
      }

LABEL_67:

      __break(1u);
      return;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((v36 == 3 || v36 == 4) && v34)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25110AD80(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = a3;
  v5 = sub_251130E18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251130E38();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251130B88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v44 = v10;
    v45 = v6;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v20 = sub_251130BE8();
    __swift_project_value_buffer(v20, qword_27F421A38);
    v21 = a2;
    v22 = sub_251130BC8();
    v23 = sub_251131178();

    if (os_log_type_enabled(v22, v23))
    {
      v42 = v23;
      v43 = v5;
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v24 = 136315394;
      v25 = [v21 headGesture];
      if (v25)
      {
        v26 = 0xE700000000000000;
        v27 = 0x6E776F6E6B6E55;
        if (v25 == 1)
        {
          v27 = 6582094;
          v26 = 0xE300000000000000;
        }

        v28 = v25 == 2;
        if (v25 == 2)
        {
          v29 = 0x656B616853;
        }

        else
        {
          v29 = v27;
        }

        if (v28)
        {
          v30 = 0xE500000000000000;
        }

        else
        {
          v30 = v26;
        }
      }

      else
      {
        v30 = 0xEA0000000000646ELL;
        v29 = 0x756F72476B636142;
      }

      v31 = sub_2510FAC50(v29, v30, aBlock);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2080;
      v32 = [v21 uuid];
      sub_251130B68();

      sub_25110D874(&qword_27F41E360, MEMORY[0x277CC95F0]);
      v33 = sub_251131508();
      v35 = v34;
      (*(v15 + 8))(v19, v14);
      v36 = sub_2510FAC50(v33, v35, aBlock);

      *(v24 + 14) = v36;
      _os_log_impl(&dword_2510F2000, v22, v42, "[Audio] Finished playing Audio feedback %s UUID: %s", v24, 0x16u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v37, -1, -1);
      MEMORY[0x25306CC10](v24, -1, -1);

      v5 = v43;
    }

    else
    {
    }

    sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
    v38 = sub_2511311E8();
    v39 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    aBlock[4] = sub_25110D93C;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511147B8;
    aBlock[3] = &block_descriptor_51;
    v40 = _Block_copy(aBlock);

    sub_251130E28();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
    sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
    sub_2511312A8();
    MEMORY[0x25306C010](0, v13, v9, v40);
    _Block_release(v40);

    (*(v45 + 8))(v9, v5);
    return (*(v47 + 8))(v13, v44);
  }

  return result;
}

uint64_t sub_25110B3A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_251130CB8();
  }

  return result;
}

uint64_t sub_25110B424(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_25110B478()
{
  v1 = sub_251130E18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251130E38();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 24);
  aBlock[4] = sub_25110D25C;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_38;
  v10 = _Block_copy(aBlock);

  sub_251130E28();
  v14 = MEMORY[0x277D84F90];
  sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_25110B72C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v2 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (v2)
  {
    v4 = v2;
    sub_25110C9D8(v4, nullsub_1, 0, 1.0);
    v5 = *(a1 + v1);
    v6 = v5;
    sub_25110D264(a1, v5);
  }
}

uint64_t sub_25110B7D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_251130E18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_251130E38();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_25110D238;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  sub_251130E28();
  v20 = MEMORY[0x277D84F90];
  sub_25110D874(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_25110BABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (v3)
  {
    v6 = v3;
    sub_25110C9D8(v6, a2, a3, 0.0);
  }
}

void sub_25110BB34(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode;
  if (!*(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode))
  {
    goto LABEL_3;
  }

  v3 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  if ([v3 isRunning])
  {
    goto LABEL_3;
  }

  v5 = *(a1 + v1);
  if (!v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5;
  v7 = [v3 mainMixerNode];
  v8 = sub_25110C7E0();
  [v3 connect:v6 to:v7 format:v8];

  v9 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode;
  v10 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = *(a1 + v1);
  if (!v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager;
  v13 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  if (!v13)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v11;
  v15 = v10;
  v16 = [v13 format];
  [v3 connect:v15 to:v14 format:v16];

  v17 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode;
  v18 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!v18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = *(a1 + v1);
  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v20 = *(v12 + 16);
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v19;
  v22 = v18;
  v23 = [v20 format];
  [v3 connect:v22 to:v21 format:v23];

  v24 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v25 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v25;
  v27 = [v3 mainMixerNode];
  v28 = *(v12 + 32);
  if (!v28)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v27;
  v30 = [*(v12 + 32) format];
  [v3 connect:v26 to:v29 format:v30];

  v31 = *(a1 + v9);
  if (!v31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v31 setRenderingAlgorithm_];
  v33 = *(a1 + v9);
  if (!v33)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v32) = 1050253722;
  [v33 setReverbBlend_];
  v34 = *(a1 + v1);
  if (!v34)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v34 setListenerPosition_];
  v35 = *(a1 + v17);
  if (!v35)
  {
LABEL_42:
    __break(1u);
    goto _objc_retain_x1;
  }

  [v35 setPosition_];
  v36 = *(a1 + v24);
  if (v36)
  {
    v37 = v28;
    v38 = v36;
    [v38 stop];
    [v38 scheduleBuffer:v37 atTime:0 options:1 completionHandler:0];
    [v38 setVolume_];
  }

  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v39 = sub_251130BE8();
  __swift_project_value_buffer(v39, qword_27F421A38);
  v40 = sub_251130BC8();
  v41 = sub_251131168();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2510F2000, v40, v41, "[HGAudioPlayer] Starting the audio engine", v42, 2u);
    MEMORY[0x25306CC10](v42, -1, -1);
  }

  [v3 prepare];
  v54[0] = 0;
  if (![v3 startAndReturnError_])
  {
    v44 = v54[0];
    v45 = sub_251130978();

    swift_willThrow();
    v46 = v45;
    v47 = sub_251130BC8();
    v48 = sub_251131188();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54[0] = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v51 = sub_251131548();
      v53 = sub_2510FAC50(v51, v52, v54);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2510F2000, v47, v48, "[HGAudioPlayer] Unable to start the AudioEngine: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x25306CC10](v50, -1, -1);
      MEMORY[0x25306CC10](v49, -1, -1);
    }

    else
    {
    }

LABEL_3:
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  v43 = *MEMORY[0x277D85DE8];