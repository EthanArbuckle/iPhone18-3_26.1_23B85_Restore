id getPRUISPosterSnapshotRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterSnapshotRequestClass_softClass;
  v7 = getPRUISPosterSnapshotRequestClass_softClass;
  if (!getPRUISPosterSnapshotRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterSnapshotRequestClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPRUISPosterSnapshotRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E9150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISIncomingCallSnapshotDefinitionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISIncomingCallSnapshotDefinitionClass_softClass;
  v7 = getPRUISIncomingCallSnapshotDefinitionClass_softClass;
  if (!getPRUISIncomingCallSnapshotDefinitionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRSMutablePosterConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSMutablePosterConfigurationClass_softClass;
  v7 = getPRSMutablePosterConfigurationClass_softClass;
  if (!getPRSMutablePosterConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRSMutablePosterConfigurationClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getPRSMutablePosterConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E9310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUCallCapabilitiesFaceTimeAvailabilityChangedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_ptr;
  v8 = getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_ptr;
  if (!getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_block_invoke;
    v4[3] = &unk_1E76E79E0;
    v4[4] = &v5;
    __getTUCallCapabilitiesFaceTimeAvailabilityChangedNotificationSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

id getTUHandleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUHandleClass_softClass;
  v7 = getTUHandleClass_softClass;
  if (!getTUHandleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUHandleClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getTUHandleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E94D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUDialRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUDialRequestClass_softClass_0;
  v7 = getTUDialRequestClass_softClass_0;
  if (!getTUDialRequestClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUDialRequestClass_block_invoke_0;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getTUDialRequestClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E95B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkMCCommunicationServiceTypeAudioCall()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkMCCommunicationServiceTypeAudioCallSymbolLoc_ptr;
  v8 = getkMCCommunicationServiceTypeAudioCallSymbolLoc_ptr;
  if (!getkMCCommunicationServiceTypeAudioCallSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getkMCCommunicationServiceTypeAudioCallSymbolLoc_block_invoke;
    v4[3] = &unk_1E76E79E0;
    v4[4] = &v5;
    __getkMCCommunicationServiceTypeAudioCallSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = +[CNUIIDSRequest IDSServiceForService:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E9770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUCallCapabilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUCallCapabilitiesClass_softClass;
  v7 = getTUCallCapabilitiesClass_softClass;
  if (!getTUCallCapabilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUCallCapabilitiesClass_block_invoke;
    v3[3] = &unk_1E76E79E0;
    v3[4] = &v4;
    __getTUCallCapabilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A31E9850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

id sub_1A31E9DA0()
{
  v0 = objc_opt_self();
  if (qword_1ED854300 != -1)
  {
    swift_once();
  }

  v1 = sub_1A31EA0C4(off_1ED854020);
  if (qword_1ED854008 != -1)
  {
    swift_once();
  }

  v2 = sub_1A31EA49C(off_1ED854018);
  v7 = v1;
  sub_1A31EABF0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v3 = sub_1A34CD350();

  v4 = sub_1A34CD0E0();
  v5 = [v0 descriptorWithKeyDescriptors:v3 description:{v4, v7}];

  return v5;
}

uint64_t sub_1A31E9EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD98);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DE7A0;
  *(v0 + 32) = &type metadata for MonogramAvatarSource;
  *(v0 + 40) = &off_1F1629A00;
  *(v0 + 48) = &off_1F16299B0;
  result = type metadata accessor for MemojiAvatarSource();
  *(v0 + 56) = result;
  *(v0 + 64) = &off_1F1627328;
  *(v0 + 72) = &off_1F16272D0;
  *(v0 + 80) = &type metadata for EmojiAvatarSource;
  *(v0 + 88) = &off_1F162A430;
  *(v0 + 96) = &off_1F162A3E0;
  *(v0 + 104) = &type metadata for PhotosAvatarSource;
  *(v0 + 112) = &off_1F1622140;
  *(v0 + 120) = &off_1F1622198;
  off_1ED854020 = v0;
  return result;
}

uint64_t type metadata accessor for MemojiAvatarSource()
{
  result = qword_1ED854230;
  if (!qword_1ED854230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A31EA004()
{
  result = sub_1A34C99E0();
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

uint64_t sub_1A31EA0C4(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v28 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = &unk_1EB0C7760;
  while (1)
  {
    v5 = (*(*(v28 + 24 * v1 + 16) + 8))();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_1A34CD9B0();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_1A34CD9B0();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1A34CD9B0();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1A34CDB00();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_36;
    }

    v31 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_1A346C218();
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v19 = sub_1A329988C(v30, i, v6);
        v20 = v3;
        v22 = *v21;
        swift_unknownObjectRetain();
        (v19)(v30, 0);
        *(v17 + 8 * i) = v22;
        v3 = v20;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
      swift_arrayInitWithCopy();
    }

    v2 = v31;
    if (v8 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v8);
      v25 = v23 + v8;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  v16 = v12;
  result = sub_1A34CD9B0();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A31EA3B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DAA30;
  v1 = *MEMORY[0x1E695C1C8];
  *(v0 + 32) = *MEMORY[0x1E695C1C8];
  v2 = v1;
  return v0;
}

uint64_t storeEnumTagSinglePayload for GradientDefinition.CenterMovementConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1A31EA440()
{
  if (qword_1ED854248 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A31EA49C(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v28 = a1 + 32;
  v3 = &unk_1EB0C7760;
  while (1)
  {
    v5 = (*(*(v28 + 32 * v1 + 8) + 8))();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_1A34CD9B0();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_1A34CD9B0();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1A34CD9B0();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1A34CDB00();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_36;
    }

    v31 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_1A346C218();
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v19 = sub_1A329988C(v30, i, v6);
        v20 = v3;
        v22 = *v21;
        swift_unknownObjectRetain();
        (v19)(v30, 0);
        *(v17 + 8 * i) = v22;
        v3 = v20;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
      swift_arrayInitWithCopy();
    }

    v2 = v31;
    if (v8 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v8);
      v25 = v23 + v8;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  v16 = v12;
  result = sub_1A34CD9B0();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A31EA778()
{
  if (qword_1ED853FF8 != -1)
  {
    swift_once();
  }
}

id sub_1A31EA7D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DC310;
  v1 = *MEMORY[0x1E695C2E8];
  v5 = *MEMORY[0x1E695C268];
  v2 = *MEMORY[0x1E695C268];
  *(v0 + 32) = *MEMORY[0x1E695C2E8];
  *(v0 + 40) = v2;
  qword_1ED857DD0 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_1A31EA85C()
{
  if (qword_1ED854200 != -1)
  {
    swift_once();
  }
}

id sub_1A31EA8B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34E7C90;
  v1 = *MEMORY[0x1E695C278];
  v2 = *MEMORY[0x1E695C400];
  *(v0 + 32) = *MEMORY[0x1E695C278];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x1E695C1E8];
  *(v0 + 48) = *MEMORY[0x1E695C1E8];
  qword_1ED857DA8 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

double sub_1A31EA95C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDA8);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A34DAA10;
  *(v0 + 32) = &type metadata for PosterConfigurationSource;
  *(v0 + 40) = &off_1F1621F18;
  *(v0 + 48) = &off_1F1621EE8;
  *(v0 + 56) = &off_1F16220A8;
  off_1ED854018 = v0;
  return result;
}

uint64_t sub_1A31EA9CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A34CD9B0();
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
      result = sub_1A34CD9B0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A32D0FF4(&qword_1EB0CA390, &unk_1EB0C7760);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7760);
            v9 = sub_1A329988C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
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

id sub_1A31EAB68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DC310;
  v1 = *MEMORY[0x1E695C420];
  v5 = *MEMORY[0x1E695C438];
  v2 = *MEMORY[0x1E695C438];
  *(v0 + 32) = *MEMORY[0x1E695C420];
  *(v0 + 40) = v2;
  qword_1ED857DA0 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_1A31EABF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A34CD9B0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A34CD9B0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A346C2FC();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A31EA9CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A31EACE0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1A34CD9B0();
LABEL_9:
  result = sub_1A34CDB00();
  *v1 = result;
  return result;
}

uint64_t sub_1A31EADB4(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = objc_allocWithZone(MEMORY[0x1E695CD80]);
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = [v4 init];
  *(v2 + 32) = v6;
  [v6 setStyle_];
  [*(v2 + 32) setFallbackStyle_];
  *(v2 + 40) = [objc_allocWithZone(CNLSApplicationWorkspace) init];
  return v2;
}

uint64_t sub_1A31EAE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A31EAEC8()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ECFF0);
  __swift_project_value_buffer(v0, qword_1EB0ECFF0);
  return sub_1A34CA240();
}

void sub_1A31EB050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGImageRef CNUICircularImageCreate(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  if (a4 <= 0.0)
  {
    goto LABEL_7;
  }

  v8 = a2 * a4;
  v9 = a3 * a4;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CNUIBitmapContextCreate(v8, v9, DeviceRGB);
  if (!v11)
  {
    CGColorSpaceRelease(DeviceRGB);
LABEL_7:
    Image = 0;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  CNUIAddCircleToContextInRect(v11, *MEMORY[0x1E695F058], v14, v8, v9);
  CGContextClip(v12);
  if (v7)
  {
    v7[2](v7, v12, DeviceRGB, v13, v14, v8, v9);
  }

  Image = CGBitmapContextCreateImage(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v12);
LABEL_8:

  return Image;
}

CGContextRef CNUIBitmapContextCreate(int a1, int a2, CGColorSpaceRef space)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CGBitmapContextCreate(0, a1, a2, 8uLL, 4 * a1, space, 1u);
  if (!v5)
  {
    if (CNUIPRLikenessRenderingUtilitiesLog_cn_once_token_1 != -1)
    {
      CNUIBitmapContextCreate_cold_1();
    }

    v6 = CNUIPRLikenessRenderingUtilitiesLog_cn_once_object_1;
    if (os_log_type_enabled(CNUIPRLikenessRenderingUtilitiesLog_cn_once_object_1, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = a1;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_1A31E6000, v6, OS_LOG_TYPE_DEFAULT, "Error creating context of size {%d, %d}", v8, 0xEu);
    }
  }

  return v5;
}

uint64_t ContactEntityProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CoreSpotlightLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpotlightLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E76E86E8;
    v5 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreSpotlightLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
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

unint64_t sub_1A31EB644()
{
  result = qword_1EB0C2DE8[0];
  if (!qword_1EB0C2DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB0C2DE8);
  }

  return result;
}

unint64_t sub_1A31EB69C()
{
  result = qword_1EB0C2DC8;
  if (!qword_1EB0C2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DC8);
  }

  return result;
}

unint64_t sub_1A31EB6FC()
{
  result = qword_1EB0C2DC0;
  if (!qword_1EB0C2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DC0);
  }

  return result;
}

unint64_t sub_1A31EB75C()
{
  result = qword_1EB0C2DD8;
  if (!qword_1EB0C2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DD8);
  }

  return result;
}

unint64_t sub_1A31EB7B4()
{
  result = qword_1EB0C2DD0;
  if (!qword_1EB0C2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DD0);
  }

  return result;
}

unint64_t sub_1A31EB80C()
{
  result = qword_1EB0C2DB8;
  if (!qword_1EB0C2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DB8);
  }

  return result;
}

unint64_t sub_1A31EB860()
{
  result = qword_1EB0C2DB0;
  if (!qword_1EB0C2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DB0);
  }

  return result;
}

unint64_t sub_1A31EB964()
{
  result = qword_1ED854250;
  if (!qword_1ED854250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854250);
  }

  return result;
}

uint64_t sub_1A31EB9C8@<X0>(void *a1@<X8>)
{
  sub_1A31EBB7C();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A31EBA18()
{
  sub_1A31EBB7C();
  sub_1A34C9010();
  return sub_1A34CB0F0();
}

uint64_t sub_1A31EBA78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for SnowglobeAvatarView.Model();
  v5 = swift_allocObject();
  swift_unknownObjectRetain();

  SnowglobeAvatarView.Model.init(contacts:listener:)(v6, a2, a3);
  return v5;
}

uint64_t sub_1A31EBAE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A34CCC60();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A34CCB60();
  result = sub_1A34CA770();
  *a1 = result;
  return result;
}

unint64_t sub_1A31EBB7C()
{
  result = qword_1ED853F28;
  if (!qword_1ED853F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F28);
  }

  return result;
}

uint64_t type metadata accessor for SnowglobeAvatarView.Model()
{
  result = qword_1ED854330;
  if (!qword_1ED854330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A31EBC58()
{
  result = qword_1ED854260;
  if (!qword_1ED854260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854260);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1A31EBCC0()
{
  sub_1A31EBD68();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A31EBD68()
{
  if (!qword_1ED8542E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCB78);
    v0 = sub_1A34CA390();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8542E8);
    }
  }
}

void CNUIAddCircleToContextInRect(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = a4 * 0.5;
  MidX = CGRectGetMidX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidY = CGRectGetMidY(v14);

  CGContextAddArc(a1, MidX, MidY, v10, 0.0, 6.28318531, 1);
}

void CNUIDrawLikenessPlatterInContext(CGContext *a1, CGColorSpace *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = *MEMORY[0x1E69E9840];
  CGContextSaveGState(a1);
  *components = xmmword_1A34D9460;
  v21 = unk_1A34D9470;
  v12 = CGColorCreate(a2, components);
  *v18 = xmmword_1A34D9480;
  v19 = unk_1A34D9490;
  v13 = CGColorCreate(a2, v18);
  v17[0] = v12;
  v17[1] = v13;
  v16 = xmmword_1A34D9450;
  v14 = CGGradientCreateWithColors(a2, [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2], &v16);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v24.y = CGRectGetMaxY(v26);
  v23.x = 0.0;
  v24.x = 0.0;
  v23.y = MinY;
  CGContextDrawLinearGradient(a1, v14, v23, v24, 0);
  CGContextRestoreGState(a1);
  CGGradientRelease(v14);
  CGColorRelease(v12);
  CGColorRelease(v13);
}

uint64_t sub_1A31EC194(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1A31EC1E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_1A34C9010();
  }

  return sub_1A34C9010();
}

uint64_t sub_1A31EC234(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t _s14ContactsUICore30AvatarBackgroundRepresentationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v5 != 1)
      {
        goto LABEL_26;
      }

      sub_1A31EE004(*a2, 1u);
      sub_1A31EE004(v2, 1u);
      LOBYTE(v8) = sub_1A34CC460();
      sub_1A31ECC9C(v2, 1u);
      v9 = v4;
      v10 = 1;
    }

    else
    {
      if (*(a2 + 8))
      {
        goto LABEL_26;
      }

      sub_1A31EE004(*a2, 0);
      sub_1A31EE004(v2, 0);
      v8 = sub_1A34CC460();
      sub_1A31ECC9C(v2, 0);
      v9 = v4;
      v10 = 0;
    }

    sub_1A31ECC9C(v9, v10);
    return v8 & 1;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_26;
    }

    v11 = *(v2 + 16);
    if (v11 == *(v4 + 16))
    {
      if (!v11)
      {
        sub_1A31EE004(*a2, 2u);
        sub_1A31EE004(v2, 2u);
LABEL_37:
        sub_1A31ECC9C(v2, 2u);
        v7 = v4;
        goto LABEL_38;
      }

      if (v2 == v4)
      {
        sub_1A31EE004(*a1, 2u);
        sub_1A31EE004(v2, 2u);
        sub_1A31ECC9C(v2, 2u);
        v7 = v2;
LABEL_38:
        v13 = 2;
        goto LABEL_44;
      }

      v17 = v2 + 32;
      v18 = v4 + 32;
      sub_1A31EE004(*a2, 2u);
      sub_1A31EE004(v2, 2u);
      while (1)
      {
        sub_1A34C9010();
        sub_1A34C9010();
        v19 = sub_1A34CC460();

        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += 8;
        v18 += 8;
        if (!--v11)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_1A31EE004(*a2, 2u);
      sub_1A31EE004(v2, 2u);
    }

    sub_1A31ECC9C(v2, 2u);
    v15 = v4;
    v16 = 2;
    goto LABEL_27;
  }

  if (v3 == 3)
  {
    if (v5 == 3)
    {
      v6 = *(v2 + 16);
      if (v6 == *(v4 + 16))
      {
        if (!v6)
        {
          sub_1A31EE004(*a2, 3u);
          sub_1A31EE004(v2, 3u);
LABEL_42:
          sub_1A31ECC9C(v2, 3u);
          v7 = v4;
          goto LABEL_43;
        }

        if (v2 == v4)
        {
          sub_1A31EE004(*a1, 3u);
          sub_1A31EE004(v2, 3u);
          sub_1A31ECC9C(v2, 3u);
          v7 = v2;
LABEL_43:
          v13 = 3;
          goto LABEL_44;
        }

        v20 = v2 + 32;
        v21 = v4 + 32;
        sub_1A31EE004(*a2, 3u);
        sub_1A31EE004(v2, 3u);
        while (1)
        {
          sub_1A34C9010();
          sub_1A34C9010();
          v22 = sub_1A34CC460();

          if ((v22 & 1) == 0)
          {
            break;
          }

          v20 += 8;
          v21 += 8;
          if (!--v6)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        sub_1A31EE004(*a2, 3u);
        sub_1A31EE004(v2, 3u);
      }

      sub_1A31ECC9C(v2, 3u);
      v15 = v4;
      v16 = 3;
LABEL_27:
      sub_1A31ECC9C(v15, v16);
      return 0;
    }

LABEL_26:
    sub_1A31EE004(*a2, *(a2 + 8));
    sub_1A31EE004(v2, v3);
    sub_1A31ECC9C(v2, v3);
    v15 = v4;
    v16 = v5;
    goto LABEL_27;
  }

  if (v5 != 4 || v4 != 0)
  {
    goto LABEL_26;
  }

  sub_1A31ECC9C(*a1, 4u);
  v7 = 0;
  v13 = 4;
LABEL_44:
  sub_1A31ECC9C(v7, v13);
  return 1;
}

unint64_t sub_1A31EC630()
{
  result = qword_1EB0C2DA8;
  if (!qword_1EB0C2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DA8);
  }

  return result;
}

double sub_1A31EC6B0()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0x3FF0000000000000;
  [v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2];
  return *v5;
}

double sub_1A31EC734(float *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  return (a1[4] + ((((*a1 * v5) + (a1[1] * v6)) + (a1[2] * v7)) + (a1[3] * v8)));
}

double TonalGradientStyle.resolve(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = TonalGradientStyle.colors.getter();
  sub_1A34CCDE0();
  sub_1A34CCE00();
  MEMORY[0x1A58EE2C0](v2);
  sub_1A34CA9D0();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_1A31EC898@<D0>(uint64_t a1@<X8>)
{
  v2 = TonalGradientStyle.colors.getter();
  sub_1A34CCDE0();
  sub_1A34CCE00();
  MEMORY[0x1A58EE2C0](v2);
  sub_1A34CA9D0();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_1A31EC930()
{
  result = qword_1ED853440;
  if (!qword_1ED853440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED853440);
  }

  return result;
}

uint64_t sub_1A31EC980@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1A34CB0B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1A328D790(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1A34CD650();
    v17 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1A31ECB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A31ECCD0();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A31ECBE4(uint64_t a1)
{
  v2 = sub_1A31ECCD0();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1A31ECC58@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  AvatarShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1A31ECC9C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

unint64_t sub_1A31ECCD0()
{
  result = qword_1ED854360;
  if (!qword_1ED854360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854360);
  }

  return result;
}

__n128 AvatarShape.path(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_1A34CB200();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  if (v15)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E697F468], v11);
    sub_1A34CBC90();
  }

  else
  {
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetMidX(v25);
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    CGRectGetMidY(v26);
    sub_1A34CBCF0();
  }

  v16 = v22;
  result = v20;
  v18 = v21;
  *a1 = v20;
  *(a1 + 16) = v18;
  *(a1 + 32) = v16;
  return result;
}

unint64_t sub_1A31ECF04()
{
  result = qword_1ED8542C8;
  if (!qword_1ED8542C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA0D0);
    sub_1A31EF65C();
    sub_1A33BF1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542C8);
  }

  return result;
}

void sub_1A31ED194(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1A31EC194(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A31ED2BC()
{
  if (qword_1ED854350 != -1)
  {
    result = swift_once();
  }

  qword_1ED857DE0 = *(qword_1ED857DD8 + 16);
  return result;
}

uint64_t sub_1A31ED314()
{
  v0 = sub_1A31ED370(qword_1F161AC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DC8);
  result = swift_arrayDestroy();
  qword_1ED857DD8 = v0;
  return result;
}

void *sub_1A31ED370(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB28);
  v3 = sub_1A34CDC60();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1A31ED4A8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1A31ED4A8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A31ED4E4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A31ED550@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SnowglobeAvatarView.Model();
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

uint64_t SnowglobeAvatarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_1A34CB0B0();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB20);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v31 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB28);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v31 - v6;
  v55 = *(v1 + 32);
  v7 = v1[1];
  v53 = *v1;
  v54 = v7;
  type metadata accessor for SnowglobeAvatarView.Model();
  sub_1A31EDC74(&unk_1ED8541F0, type metadata accessor for SnowglobeAvatarView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  if (v45[0] >> 62)
  {
    v8 = sub_1A34CD9B0();
  }

  else
  {
    v8 = *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 != 1)
  {
LABEL_13:
    sub_1A34A3754(&v53);
    v40 = BYTE8(v53);
    v22 = v53;
    v39 = v53;
    v23 = BYTE8(v53);
    sub_1A34C9010();
    if ((v23 & 1) == 0)
    {
      sub_1A34CD650();
      v24 = sub_1A34CBA30();
      sub_1A34CA210();

      v25 = v32;
      sub_1A34CB0A0();
      swift_getAtKeyPath();
      sub_1A3288FDC(&v39, &qword_1EB0CCB30);
      (*(v33 + 8))(v25, v34);
      v22 = v45[0];
    }

    v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB38) + 36)];
    *v26 = v22;
    *(v26 + 4) = 256;
    v27 = swift_allocObject();
    v28 = v54;
    *(v27 + 16) = v53;
    *(v27 + 32) = v28;
    *(v27 + 48) = v55;
    v29 = v36;
    v30 = &v5[*(v37 + 36)];
    *v30 = sub_1A34A4908;
    v30[1] = v27;
    v20 = &qword_1EB0CCB20;
    sub_1A328D790(v5, v29, &qword_1EB0CCB20);
    swift_storeEnumTagMultiPayload();
    sub_1A31F0BF8(&v53, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB40);
    sub_1A34A4910();
    sub_1A34A4A1C();
    sub_1A34CB3E0();
    v21 = v5;
    return sub_1A3288FDC(v21, v20);
  }

  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v9 = v45[0];
  if (!(v45[0] >> 62))
  {
    result = *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  result = sub_1A34CD9B0();
  if (!result)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A58EF310](0, v9);
    goto LABEL_9;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_9:
    v12 = v11;

    v13 = v12;
    v14 = sub_1A34CA650() + OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model_listener;
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v14 + 8);

    v17 = type metadata accessor for CNContactAvatarContact();
    swift_allocObject();
    v18 = sub_1A32F27E4(v13, 1);
    v41 = v17;
    v42 = sub_1A31EDC74(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
    v43 = Strong;
    v39 = v18;
    v44 = v16;
    sub_1A3385F40(v51);
    sub_1A32A43A4(&v39, v45);
    v46 = v51[0];
    v47 = v51[1];
    v48 = v52;
    sub_1A32A4400(&v39);
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    v49 = sub_1A34A4C9C;
    v50 = v19;
    v20 = &qword_1EB0CCB40;
    sub_1A328D790(v45, v36, &qword_1EB0CCB40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB40);
    sub_1A34A4910();
    sub_1A34A4A1C();
    sub_1A34CB3E0();
    v21 = v45;
    return sub_1A3288FDC(v21, v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A31EDC30()
{

  return swift_deallocObject();
}

uint64_t sub_1A31EDC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A31EDCBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvatarView.Model();
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t AvatarView.body.getter()
{
  sub_1A32A43A4(v0, &v6);
  v1 = swift_allocObject();
  v2 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 48) = v8;
  *(v1 + 64) = v9;
  sub_1A32A43A4(v0, &v6);
  v3 = swift_allocObject();
  v4 = v7;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  *(v3 + 48) = v8;
  *(v3 + 64) = v9;
  *&v6 = sub_1A32E68AC;
  *(&v6 + 1) = v1;
  *&v7 = sub_1A32E68F8;
  *(&v7 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A20);
  sub_1A3284D0C(qword_1ED853A08, &qword_1EB0C6A20);
  sub_1A34CC1F0();
}

uint64_t sub_1A31EDE7C()
{
  sub_1A32A43A4(v0, &v6);
  v1 = swift_allocObject();
  v2 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 48) = v8;
  *(v1 + 64) = v9;
  sub_1A32A43A4(v0, &v6);
  v3 = swift_allocObject();
  v4 = v7;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  *(v3 + 48) = v8;
  *(v3 + 64) = v9;
  *&v6 = sub_1A32E8208;
  *(&v6 + 1) = v1;
  *&v7 = sub_1A32E820C;
  *(&v7 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6A20);
  sub_1A3284D0C(qword_1ED853A08, &qword_1EB0C6A20);
  sub_1A34CC1F0();
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore30AvatarBackgroundRepresentationO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1A31EE004(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return sub_1A34C9010();
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

unint64_t sub_1A31EE060()
{
  result = qword_1ED8551C0[0];
  if (!qword_1ED8551C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8551C0);
  }

  return result;
}

unint64_t sub_1A31EE0D8()
{
  result = qword_1ED854E70;
  if (!qword_1ED854E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED854E70);
  }

  return result;
}

uint64_t type metadata accessor for AvatarView.Model()
{
  result = qword_1ED854E40;
  if (!qword_1ED854E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_1A31EE23C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A31EE3B0(v11, 0, 0, 1, a1, a2);
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
    sub_1A31EE354(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

uint64_t sub_1A31EE354(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1A31EE3B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A3310E50(a5, a6);
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
    result = sub_1A34CDB30();
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

uint64_t sub_1A31EE4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A31EE568(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_1A31EE590(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 8 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A31EE608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1A31EE668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore10AvatarViewV5ModelC0C14RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 80) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A31EE6E8()
{
  result = sub_1A34C9780();
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

uint64_t sub_1A31EE7BC()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1ED857E68);
  __swift_project_value_buffer(v0, qword_1ED857E68);
  return sub_1A34CA240();
}

void sub_1A31EE838()
{
  if (qword_1ED854B30 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED857E30;
  v1 = objc_allocWithZone(MEMORY[0x1E695CE18]);

  v2 = [v1 init];
  type metadata accessor for AvatarContactStoreCache();
  v3 = swift_allocObject();
  v4 = v2;
  v5 = sub_1A3406F54(v0, v4, v3);

  qword_1ED857E80 = v5;
}

void *sub_1A31EE910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1A34CD740();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A34CD710();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A34CCED0();
  MEMORY[0x1EEE9AC00](v17 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAF10);
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  *(v18 + 16) = xmmword_1A34ED380;
  v5[2] = a1;
  v5[3] = v18;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a2;
  v19 = sub_1A31EC194(0, &qword_1ED854B50);
  v30[1] = &OBJC_IVAR____TtC14ContactsUICore33ContactStoreChangeHistoryObserver_changeHistoryToken;
  v30[2] = v19;
  v31 = a1;
  sub_1A34C9010();
  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3407414(&unk_1ED854B60, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B30);
  sub_1A32A6864(&qword_1ED854B80, &unk_1EB0C5B30);
  sub_1A34CD960();
  (*(v32 + 104))(v15, *MEMORY[0x1E69E8090], v33);
  v5[7] = sub_1A34CD780();
  sub_1A34CD460();
  v20 = sub_1A34CD4A0();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v31;
  v21[4] = v5;
  v21[5] = v22;
  v23 = v22;
  sub_1A34C9010();
  sub_1A32C2F5C(0, 0, v12, &unk_1A34F41F0, v21);

  sub_1A3288FDC(v12, &qword_1EB0C6110);
  v24 = [objc_opt_self() defaultCenter];
  v25 = *MEMORY[0x1E695C3D8];
  v26 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A3407400;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3403844;
  aBlock[3] = &block_descriptor_22;
  v27 = _Block_copy(aBlock);

  v28 = [v24 addObserverForName:v25 object:0 queue:0 usingBlock:v27];
  _Block_release(v27);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1A31EEDDC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A31EEE14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A31EEE60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A31EC234(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A34C9010();
}

uint64_t sub_1A31EF094(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MonogramSolarium.Container()
{
  result = qword_1ED855070;
  if (!qword_1ED855070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Silhouette.Container()
{
  result = qword_1ED855250;
  if (!qword_1ED855250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AvatarImageView()
{
  result = qword_1ED855110;
  if (!qword_1ED855110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MonogramView()
{
  result = qword_1ED8551A8;
  if (!qword_1ED8551A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A31EF23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A31EF2A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A34CA5F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A31EF2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A31EF358()
{
  sub_1A31EF2F4(319, qword_1ED854EB0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A31EF2F4(319, &unk_1ED854E90, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A31EF454()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A31EF4D8()
{
  if (!qword_1ED854EB0[0])
  {
    sub_1A34CA5D0();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED854EB0);
    }
  }
}

void sub_1A31EF530()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A31EF5B0()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A31EF65C()
{
  result = qword_1ED854E00;
  if (!qword_1ED854E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854E00);
  }

  return result;
}

unint64_t sub_1A31EF6C0()
{
  result = qword_1ED855268;
  if (!qword_1ED855268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED855268);
  }

  return result;
}

void sub_1A31EF714()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A31EF798()
{
  result = qword_1ED854E08;
  if (!qword_1ED854E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854E08);
  }

  return result;
}

void DrawSilhouetteInContext(CGContext *a1, CGImage *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E6996838]);
  CGContextSaveGState(a1);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __DrawSilhouetteInContext_block_invoke;
  v24[3] = &__block_descriptor_40_e5_v8__0l;
  v24[4] = a1;
  v15 = [v24 copy];
  v16 = objc_opt_self();
  v17 = _Block_copy(v16);
  [v14 push:v17];

  if (a3)
  {
    v28.origin.x = a4;
    v28.origin.y = a5;
    v28.size.width = a6;
    v28.size.height = a7;
    v18 = CGPathCreateWithEllipseInRect(v28, 0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __DrawSilhouetteInContext_block_invoke_2;
    v23[3] = &__block_descriptor_40_e5_v8__0l;
    v23[4] = v18;
    v19 = [v23 copy];
    v20 = objc_opt_self();
    v21 = _Block_copy(v20);
    [v14 push:v21];

    CGContextAddPath(a1, v18);
  }

  CGContextClip(a1);
  v29.origin.x = a4;
  v29.origin.y = a5;
  v29.size.width = a6;
  v29.size.height = a7;
  CGContextClipToMask(a1, v29, a2);
  *components = xmmword_1A34D94E0;
  v26 = unk_1A34D94F0;
  CGContextSetFillColor(a1, components);
  v30.origin.x = a4;
  v30.origin.y = a5;
  v30.size.width = a6;
  v30.size.height = a7;
  CGContextFillRect(a1, v30);
  [v14 popAllWithHandler:&__block_literal_global_55];
  v22 = objc_opt_self();
}

uint64_t sub_1A31EFB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AvatarView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_contactID;
  v2 = sub_1A34C9780();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A31EFD1C(*(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 8), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 16), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 24), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 32), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 40), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 48), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 56), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 64), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 72), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 80), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 88), *(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_recipe + 96));

  sub_1A31F08B0(v0 + OBJC_IVAR____TtCV14ContactsUICore10AvatarView5Model_listener);

  return swift_deallocClassInstance();
}

void sub_1A31EFD1C(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  if (a5 >> 3 != 0xFFFFFFFF || a13 >= 8)
  {
    sub_1A31ECC9C(a1, a2);

    sub_1A32890FC(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }
}

uint64_t sub_1A31F0078()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1ED857DB0);
  __swift_project_value_buffer(v0, qword_1ED857DB0);
  return sub_1A34CA240();
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

unint64_t sub_1A31F0158()
{
  result = qword_1ED853FD8;
  if (!qword_1ED853FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB220);
    sub_1A3284D0C(&qword_1ED853FE0, &qword_1EB0CB230);
    sub_1A3425220(&qword_1ED853FA8, &qword_1EB0CB238, &unk_1A34F5970, sub_1A31F06D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FD8);
  }

  return result;
}

__n128 sub_1A31F0240@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CC610();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    sub_1A34CC5E0();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v7 = sub_1A34CC680();

    (*(v4 + 8))(v6, v3);
    sub_1A34CCE10();
    v9 = v8;
    v11 = v10;
    LOBYTE(v19) = 1;
    *&v34 = sub_1A34CC500();
    sub_1A31F0624();
    v12 = sub_1A34CC5B0();
    v28.i8[0] = 0;
    v19 = 0x3FB1EB851EB851ECLL;
    v20 = v7;
    v21 = 0;
    LOWORD(v22) = 1;
    v23 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
    *&v24 = v9;
    *(&v24 + 1) = v11;
    v25 = v12;
    v26 = 0;
  }

  else
  {
    type metadata accessor for AvatarView.Model();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1A34CC690();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v15 = sub_1A34CC680();

    (*(v4 + 8))(v6, v3);
    *&v34 = sub_1A34CC500();
    sub_1A31F0624();
    v16 = sub_1A34CC5B0();
    v33 = 1;
    v27 = 1;
    v19 = v15;
    v20 = 0;
    LOWORD(v21) = 1;
    *(&v21 + 2) = v31;
    HIWORD(v21) = v32;
    v22 = v16;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v26 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB228);
  sub_1A31F0158();
  sub_1A3425220(&qword_1ED853F38, &qword_1EB0CB228, &unk_1A34F5960, sub_1A31F08D8);
  sub_1A34CB3E0();
  v17 = v37[0];
  *(a1 + 32) = v36;
  *(a1 + 48) = v17;
  *(a1 + 57) = *(v37 + 9);
  result = v35;
  *a1 = v34;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A31F0624()
{
  result = qword_1ED853F80;
  if (!qword_1ED853F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F80);
  }

  return result;
}

unint64_t sub_1A31F067C()
{
  result = qword_1ED854258;
  if (!qword_1ED854258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854258);
  }

  return result;
}

unint64_t sub_1A31F06D0()
{
  result = qword_1ED853FB0;
  if (!qword_1ED853FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB240);
    sub_1A31F08D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853FB0);
  }

  return result;
}

uint64_t sub_1A31F0790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  *(v0 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  result = sub_1A34CC590();
  *(v0 + 40) = result;
  qword_1ED857E10 = 0;
  qword_1ED857E18 = 0;
  qword_1ED857E20 = v0;
  byte_1ED857E28 = 2;
  return result;
}

unint64_t sub_1A31F08D8()
{
  result = qword_1ED854660;
  if (!qword_1ED854660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CADB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854660);
  }

  return result;
}

unint64_t sub_1A31F095C()
{
  result = qword_1ED8542E0;
  if (!qword_1ED8542E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542E0);
  }

  return result;
}

uint64_t sub_1A31F09C4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1ED857E38);
  __swift_project_value_buffer(v0, qword_1ED857E38);
  return sub_1A34CA240();
}

unint64_t sub_1A31F0ADC()
{
  result = qword_1EB0C2B50;
  if (!qword_1EB0C2B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC200);
    sub_1A31F08D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2B50);
  }

  return result;
}

uint64_t sub_1A31F0BA8(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 80) & 7 | (a2 << 62);
    *(result + 16) &= 7uLL;
    *(result + 80) = v2;
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = 0xC000000000000000;
    *(result + 88) = 0;
    *(result + 96) = 0;
  }

  return result;
}

unint64_t sub_1A31F0C74()
{
  result = qword_1ED853F78;
  if (!qword_1ED853F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853F78);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for EmojiView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA5D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  sub_1A31ECC9C(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ContactCardSharedProfile();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v2 + 32);

    __swift_destroy_boxed_opaque_existential_0(v2 + 88);
    __swift_destroy_boxed_opaque_existential_0(v2 + 128);
    __swift_destroy_boxed_opaque_existential_0(v2 + 168);
    __swift_destroy_boxed_opaque_existential_0(v2 + 216);
  }

  v3 = (v2 + *(v1 + 20));

  MEMORY[0x1A58F1130](v3 + 3);
  v4 = type metadata accessor for ContactCardConfiguration(0);
  v5 = v3 + v4[9];
  v6 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1A34C93B0();
    v8 = *(v7 - 8);
    v11 = *(v8 + 8);
    v11(v5, v7);

    v9 = *(v6 + 28);
    if (!(*(v8 + 48))(&v5[v9], 1, v7))
    {
      v11(&v5[v9], v7);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for VisualIdentitySaveConfirmation(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = sub_1A34C9780();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for VisualIdentity(0);
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v6 + 28));
  __swift_destroy_boxed_opaque_existential_0(v3 + *(v6 + 32));
  v7 = v3 + *(type metadata accessor for VisualIdentityPair(0) + 20);
  v5(v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v7 + *(v6 + 28));
  __swift_destroy_boxed_opaque_existential_0(v7 + *(v6 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for SharedProfileLink();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1A32B56DC();
  sub_1A32B56DC();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA980();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 36);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6280);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6288);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{

  sub_1A32891B0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  if (*(v0 + 280) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 48);

    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0(v0 + 232);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EditorSheetModifier();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CB5F0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v3 + *(v2 + 48), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for ContactCardLabeledPropertyView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA5D0();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + v1[5]))
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v3 + v1[6]);
  v5 = v3 + v1[7];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A8) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8) + 28);
  v8 = sub_1A34CC670();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C87A0) + 36);
  v10 = sub_1A34CB970();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for ImageCroppingView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA7A0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for ContactCardActions();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v2 + 32);

    __swift_destroy_boxed_opaque_existential_0(v2 + 88);
    __swift_destroy_boxed_opaque_existential_0(v2 + 128);
    __swift_destroy_boxed_opaque_existential_0(v2 + 168);
    __swift_destroy_boxed_opaque_existential_0(v2 + 216);
  }

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CBA00();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for ContactCardActionMenu();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for ContactCardActionRow();
  v4 = v3[6];
  v5 = sub_1A34C93B0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  if (*(v2 + v3[12]))
  {
  }

  v7 = v2 + v3[19];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  MEMORY[0x1A58F1130](v2 + v3[22]);

  __swift_destroy_boxed_opaque_existential_0(v2 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{

  sub_1A31ECC9C(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for ContactCardCustomView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA5D0();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
  }

  v4 = v2 + *(v1 + 20);
  v5 = sub_1A34C93B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = type metadata accessor for ContactCardCustomViewConfiguration(0);

  v9 = *(v8 + 28);
  if (!(*(v6 + 48))(v4 + v9, 1, v5))
  {
    v7(v4 + v9, v5);
  }

  MEMORY[0x1A58F1130](v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  sub_1A338879C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{

  sub_1A32141EC(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{

  sub_1A31ECC9C(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = sub_1A34CB0B0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for ContactCardGeminiPicker();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA7A0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for ContactCardNotes(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v2 + 32);

    __swift_destroy_boxed_opaque_existential_0(v2 + 88);
    __swift_destroy_boxed_opaque_existential_0(v2 + 128);
    __swift_destroy_boxed_opaque_existential_0(v2 + 168);
    __swift_destroy_boxed_opaque_existential_0(v2 + 216);
  }

  sub_1A32141EC(*(v2 + 272), *(v2 + 280));
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CB240();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for ContactCardDetails();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  if (*(v3 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v3 + 32);

    __swift_destroy_boxed_opaque_existential_0(v3 + 88);
    __swift_destroy_boxed_opaque_existential_0(v3 + 128);
    __swift_destroy_boxed_opaque_existential_0(v3 + 168);
    __swift_destroy_boxed_opaque_existential_0(v3 + 216);
  }

  v4 = (v3 + v1[6]);

  MEMORY[0x1A58F1130](v4 + 3);
  v5 = type metadata accessor for ContactCardConfiguration(0);
  v6 = v4 + v5[9];
  v7 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1A34C93B0();
    v9 = *(v8 - 8);
    v12 = *(v9 + 8);
    v12(v6, v8);

    v10 = *(v7 + 28);
    if (!(*(v9 + 48))(&v6[v10], 1, v8))
    {
      v12(&v6[v10], v8);
    }
  }

  return swift_deallocObject();
}

uint64_t SnowglobeAvatarView.Model.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model__contacts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCB70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A31F08B0(v0 + OBJC_IVAR____TtCV14ContactsUICore19SnowglobeAvatarView5Model_listener);

  return swift_deallocClassInstance();
}

void sub_1A31F2CE4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v37.size.width = a4;
  v37.size.height = a5;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v6 = sub_1A34CA9B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A34CA8A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED854350 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED857DD8;
  sub_1A31F31E0();
  sub_1A34CD5B0();
  sub_1A34CD5E0();
  v15 = sub_1A34CD5D0();
  if (*(v14 + 16))
  {
    v16 = sub_1A31ED4A8(v15);
    if (v17)
    {
      v36 = v11;
      v18 = *(v14 + 56) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);

      sub_1A34CD5B0();
      sub_1A34CD5E0();
      v21 = sub_1A34CD5D0();
      if (v21 == *(v20 + 16))
      {
        v22 = v21;
        if (v21)
        {
          v23 = 0;
          v24 = (*&v36 + 8);
          v35 = v20;
          v25 = v20 + 48;
          v36 = v37.size.height / v19;
          do
          {
            sub_1A34CD5B0();
            sub_1A34CD5E0();
            if (v23 < sub_1A34CD5D0())
            {
              sub_1A34CA9C0();
              x = v37.origin.x;
              y = v37.origin.y;
              width = v37.size.width;
              height = v37.size.height;
              CGRectGetMidX(v37);
              v40.origin.x = x;
              v40.origin.y = y;
              v40.size.width = width;
              v40.size.height = height;
              CGRectGetMidY(v40);
              sub_1A34CCDC0();
              v39 = 0;
              v38 = 0;
              sub_1A34CA890();
              (*v24)(v13, v10);
            }

            ++v23;
            v25 += 24;
          }

          while (v22 != v23);
        }

        return;
      }
    }
  }

  if (qword_1EB0C4890 != -1)
  {
    swift_once();
  }

  v30 = sub_1A34CA250();
  __swift_project_value_buffer(v30, qword_1EB0EDD10);
  (*(v7 + 16))(v9, a1, v6);
  v31 = sub_1A34CA230();
  v32 = sub_1A34CD650();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    sub_1A34CD5B0();
    sub_1A34CD5E0();
    v34 = sub_1A34CD5D0();
    (*(v7 + 8))(v9, v6);
    *(v33 + 4) = v34;
    _os_log_impl(&dword_1A31E6000, v31, v32, "Failed to find configuration for subviews: %ld", v33, 0xCu);
    MEMORY[0x1A58F1010](v33, -1, -1);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_1A31F31E0()
{
  result = qword_1ED8542D8;
  if (!qword_1ED8542D8)
  {
    sub_1A34CA9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8542D8);
  }

  return result;
}

uint64_t sub_1A31F3238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A34C9780();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34CA250();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED854BB0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1ED857E50);
  (*(v9 + 16))(v11, v12, v8);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A32F2928(v7);
  sub_1A34C9740();
  (*(v5 + 8))(v7, v4);
  sub_1A34C9ED0();

  sub_1A34C9EA0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1A32F2B24();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_1A32F2B24();
    v19 = v18;
    if (qword_1ED8549E0 != -1)
    {
      swift_once();
    }

    v20 = byte_1ED8549E8;
    v21 = qword_1ED8549F0;
    v22 = qword_1ED8549F8;
    v23 = qword_1ED854478;

    if (v23 != -1)
    {
      swift_once();
    }

    v29[1] = qword_1ED857DE8;
    v29[2] = v17;
    v29[3] = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    sub_1A34C9010();
    sub_1A31F3724(v33);

    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = 0x4059000000000000;
    v24 = v33[1];
    *(a2 + 48) = v33[0];
    *(a2 + 64) = v24;
    *(a2 + 80) = v34;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    sub_1A34C9E80();

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v26 = sub_1A34CA230();
    v27 = sub_1A34CD660();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1A31E6000, v26, v27, "Not generating monogram recipe path since initials are empty", v28, 2u);
      MEMORY[0x1A58F1010](v28, -1, -1);
    }

    sub_1A34C9E80();

    result = __swift_destroy_boxed_opaque_existential_0(a1);
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1A31F3688()
{
  byte_1ED8549E8 = 0;
  result = 700.0;
  *&qword_1ED8549F0 = xmmword_1A34F1560;
  return result;
}

uint64_t sub_1A31F36A4()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1ED857E50);
  __swift_project_value_buffer(v0, qword_1ED857E50);
  return sub_1A34CA240();
}

uint64_t sub_1A31F3724@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = v1[4];
  v8 = v1[5];
  v26[0] = v4;
  v26[1] = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v9 = *(v3 + 24);

  sub_1A34C9010();
  os_unfair_lock_lock(v9 + 6);
  sub_1A32ACB48(&v9[4], &v20);
  os_unfair_lock_unlock(v9 + 6);
  v18 = v21;
  v16 = v20;
  v10 = v22;

  if (v10 == 255)
  {
    *&v20 = v3;
    *(&v20 + 1) = v4;
    *&v21 = v5;
    BYTE8(v21) = v6;
    v22 = v7;
    v23 = v8;
    sub_1A32A9900(v24);
    v19 = v24[1];
    v17 = v24[0];
    LOBYTE(v10) = v25;
    v14 = *(v3 + 24);
    MEMORY[0x1EEE9AC00](v15);
    sub_1A34C9010();
    os_unfair_lock_lock((v14 + 24));
    sub_1A32ACB64((v14 + 16));
    os_unfair_lock_unlock((v14 + 24));
    sub_1A32ACB80(v26);

    v13 = v17;
    v12 = v19;
  }

  else
  {
    result = sub_1A32ACB80(v26);
    v12 = v18;
    v13 = v16;
  }

  *a1 = v13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  return result;
}

uint64_t type metadata accessor for MonogramSpec.LookupKey()
{
  result = qword_1ED8549C0;
  if (!qword_1ED8549C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A31F3914()
{
  sub_1A31F39F8(319, &qword_1ED854A00);
  if (v0 <= 0x3F)
  {
    sub_1A31F39F8(319, &qword_1ED854630);
    if (v1 <= 0x3F)
    {
      sub_1A31F39F8(319, &qword_1ED854638);
      if (v2 <= 0x3F)
      {
        sub_1A31F3A94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A31F39F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A34CD890();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A31F3A44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A31F3A94()
{
  if (!qword_1ED854A30)
  {
    sub_1A34C9120();
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED854A30);
    }
  }
}

unint64_t sub_1A31F3B10()
{
  result = qword_1ED853748[0];
  if (!qword_1ED853748[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6FF8);
    sub_1A31F0C74();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED853748);
  }

  return result;
}

double sub_1A31F3BC8(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  result = *&a1;
  if ((a2 | a4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1A31F3C28(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A34CD1E0();

    return sub_1A34CD2A0();
  }

  return result;
}

uint64_t sub_1A31F3CC4()
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v78 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v81 = &v78 - v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v78 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v78 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DE7A0;
  *(inited + 56) = &type metadata for DefaultMonogramSpecs;
  *(inited + 64) = &off_1F1624288;
  *(inited + 96) = &type metadata for SFProSpecs;
  *(inited + 104) = &off_1F1624270;
  *(inited + 136) = &type metadata for SFProCondensedSpecs;
  *(inited + 144) = &off_1F1624258;
  *(inited + 176) = &type metadata for SFProRoundedSpecs;
  *(inited + 184) = &off_1F1624240;
  v9 = sub_1A31F4364(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A00);
  swift_arrayDestroy();
  v82 = sub_1A31F7CBC(MEMORY[0x1E69E7CC0]);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v88 = v9;

  v15 = 0;
  v84 = v14;
  for (i = v10; ; v10 = i)
  {
    v16 = v15;
    if (!v13)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v15 = v16;
LABEL_9:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v15 << 6);
      v19 = v88;
      v20 = *(v88 + 48);
      v83 = type metadata accessor for MonogramSpec.LookupKey();
      v21 = *(*(v83 - 8) + 72);
      v22 = v86;
      sub_1A31F5D70(v20 + v21 * v18, v86);
      v23 = *(v19 + 56) + 96 * v18;
      v24 = v87;
      sub_1A31F55F8(v23, v22 + *(v87 + 48));
      v25 = v5;
      sub_1A328D790(v22, v5, &qword_1EB0C99E8);
      v26 = *(v24 + 48);
      v27 = *v5;
      sub_1A31F6B94(v5);
      if (v27 != 6)
      {
        break;
      }

      sub_1A3288FDC(v22, &qword_1EB0C99E8);
      sub_1A31F60B0(&v5[v26]);
      v16 = v15;
      v14 = v84;
      v10 = i;
      if (!v13)
      {
LABEL_6:
        while (1)
        {
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v15 >= v14)
          {
            v76 = v88;

            return v76;
          }

          v13 = *(v10 + 8 * v15);
          ++v16;
          if (v13)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    v78 = v21;
    v79 = v27;
    sub_1A31F60B0(&v5[v26]);
    v28 = v82;
    if (v82[2] && (v29 = sub_1A31F7DCC(v79), (v30 & 1) != 0))
    {
      v31 = *(v28[7] + 8 * v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC8];
    }

    v32 = v86;
    v33 = v81;
    sub_1A328D790(v86, v81, &qword_1EB0C99E8);
    v34 = v80;
    sub_1A328D790(v32, v80, &qword_1EB0C99E8);
    v35 = (v34 + *(v87 + 48));
    v36 = v35[3];
    v92 = v35[2];
    v93 = v36;
    v37 = v35[5];
    v94 = v35[4];
    v95 = v37;
    v38 = v35[1];
    v90 = *v35;
    v91 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v31;
    v41 = sub_1A31F56D4(v33);
    v42 = v31[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
LABEL_39:
      __break(1u);
      break;
    }

    v45 = v40;
    if (v31[3] >= v44)
    {
      v5 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A31F8190();
      }
    }

    else
    {
      sub_1A31F6378(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_1A31F56D4(v81);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_43;
      }

      v41 = v46;
      v5 = v25;
    }

    v48 = v78;
    v49 = v89;
    if (v45)
    {
      sub_1A31F7A88(&v90, v89[7] + 96 * v41);
    }

    else
    {
      v89[(v41 >> 6) + 8] |= 1 << v41;
      sub_1A31F5D70(v81, v49[6] + v41 * v48);
      v50 = (v49[7] + 96 * v41);
      v51 = v91;
      *v50 = v90;
      v50[1] = v51;
      v52 = v92;
      v53 = v93;
      v54 = v95;
      v50[4] = v94;
      v50[5] = v54;
      v50[2] = v52;
      v50[3] = v53;
      v55 = v49[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_41;
      }

      v49[2] = v57;
    }

    v58 = v79;
    v59 = *(v87 + 48);
    v60 = v81;
    sub_1A31F6B94(v81);
    sub_1A31F6B94(v80);
    sub_1A31F60B0(&v60[v59]);
    v61 = v82;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v61;
    v63 = sub_1A31F7DCC(v58);
    v65 = v61[2];
    v66 = (v64 & 1) == 0;
    v56 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v56)
    {
      break;
    }

    if (v61[3] >= v67)
    {
      if ((v62 & 1) == 0)
      {
        v74 = v63;
        v75 = v64;
        sub_1A33DE1FC();
        v64 = v75;
        v63 = v74;
      }
    }

    else
    {
      v68 = v64;
      sub_1A31F7E38(v67, v62);
      v63 = sub_1A31F7DCC(v58);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_44;
      }

      v64 = v68;
    }

    v70 = v86;
    v71 = v90;
    v82 = v90;
    if (v64)
    {
      *(*(v90 + 56) + 8 * v63) = v49;

      sub_1A3288FDC(v70, &qword_1EB0C99E8);
    }

    else
    {
      *(v90 + 8 * (v63 >> 6) + 64) |= 1 << v63;
      *(*(v71 + 48) + v63) = v58;
      *(*(v71 + 56) + 8 * v63) = v49;
      sub_1A3288FDC(v70, &qword_1EB0C99E8);
      v72 = v82[2];
      v56 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v56)
      {
        goto LABEL_42;
      }

      v82[2] = v73;
    }

    v14 = v84;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1A34CDE90();
  __break(1u);
LABEL_44:
  result = sub_1A34CDE90();
  __break(1u);
  return result;
}

uint64_t sub_1A31F4330()
{
  result = sub_1A31F3CC4();
  qword_1ED857DF0 = result;
  *algn_1ED857DF8 = v1;
  return result;
}

uint64_t sub_1A31F4364(void *a1)
{
  v2 = type metadata accessor for MonogramSpec.LookupKey();
  v87 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v89 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v80 = v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A08);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v75 - v13;
  v15 = a1[2];
  if (v15 == 1)
  {
    v16 = a1[7];
    v17 = a1[8];
    __swift_project_boxed_opaque_existential_1(a1 + 4, v16);
    return (*(v17 + 16))(v16, v17);
  }

  v19 = sub_1A31F4B50(MEMORY[0x1E69E7CC0]);
  if (!v15)
  {
    return v19;
  }

  v86 = v8;
  v75[1] = v2;
  v20 = 0;
  v77 = a1 + 4;
  v85 = v14;
  v76 = v15;
  v84 = v11;
LABEL_6:
  sub_1A31EE4BC(&v77[5 * v20], v97);
  v78 = v20 + 1;
  v21 = v98;
  v22 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v23 = (*(v22 + 16))(v21, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v19;
  v25 = 1 << *(v23 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v23 + 64);
  v79 = (v25 + 63) >> 6;
  v81 = v23;

  v28 = v23 + 64;
  v29 = 0;
  for (i = v23 + 64; ; v28 = i)
  {
    v88 = isUniquelyReferenced_nonNull_native;
    if (!v27)
    {
      break;
    }

    v30 = v29;
LABEL_22:
    v33 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v81;
    v36 = v80;
    sub_1A31F5D70(*(v81 + 48) + *(v87 + 72) * v34, v80);
    sub_1A31F55F8(*(v35 + 56) + 96 * v34, &v90);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
    v38 = &v11[*(v37 + 48)];
    sub_1A31F604C(v36, v11);
    v39 = v93;
    *(v38 + 2) = v92;
    *(v38 + 3) = v39;
    v40 = v95;
    *(v38 + 4) = v94;
    *(v38 + 5) = v40;
    v41 = v91;
    *v38 = v90;
    *(v38 + 1) = v41;
    (*(*(v37 - 8) + 56))(v11, 0, 1, v37);
LABEL_23:
    v42 = v11;
    v43 = v86;
    sub_1A31F6BF0(v42, v86);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99C0);
      v46 = v85;
      (*(*(v45 - 8) + 56))(v85, 1, 1, v45);
    }

    else
    {
      v47 = *(v44 + 48);
      v82 = v19;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99C0);
      v49 = *(v48 + 48);
      v46 = v85;
      sub_1A31F5D70(v43, v85);
      sub_1A31F55F8(v43 + v47, v46 + v49);
      v19 = v82;
      sub_1A3288FDC(v43, &qword_1EB0C99E8);
      (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99C0);
    v51 = (*(*(v50 - 8) + 48))(v46, 1, v50);
    v11 = v84;
    if (v51 == 1)
    {

      __swift_destroy_boxed_opaque_existential_0(v97);
      v20 = v78;
      if (v78 == v76)
      {
        return v19;
      }

      goto LABEL_6;
    }

    v52 = (v46 + *(v50 + 48));
    v53 = v46;
    v54 = v89;
    sub_1A31F604C(v53, v89);
    v55 = v52[3];
    v92 = v52[2];
    v93 = v55;
    v56 = v52[5];
    v94 = v52[4];
    v95 = v56;
    v57 = v52[1];
    v90 = *v52;
    v91 = v57;
    v59 = sub_1A31F56D4(v54);
    v60 = v19[2];
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_42;
    }

    v63 = v58;
    if (v19[3] >= v62)
    {
      if (v88)
      {
        v19 = v96;
        if (v58)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1A31F8190();
        v19 = v96;
        if (v63)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1A31F6378(v62, v88 & 1);
      v64 = sub_1A31F56D4(v89);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_44;
      }

      v59 = v64;
      v19 = v96;
      if (v63)
      {
LABEL_10:
        sub_1A31F6B94(v89);
        sub_1A31F7A88(&v90, v19[7] + 96 * v59);
        goto LABEL_11;
      }
    }

    v19[(v59 >> 6) + 8] |= 1 << v59;
    sub_1A31F604C(v89, v19[6] + *(v87 + 72) * v59);
    v66 = (v19[7] + 96 * v59);
    v67 = v91;
    *v66 = v90;
    v66[1] = v67;
    v68 = v92;
    v69 = v93;
    v70 = v95;
    v66[4] = v94;
    v66[5] = v70;
    v66[2] = v68;
    v66[3] = v69;
    v71 = v19[2];
    v72 = __OFADD__(v71, 1);
    v73 = v71 + 1;
    if (v72)
    {
      goto LABEL_43;
    }

    v19[2] = v73;
LABEL_11:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v79 <= v29 + 1)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v79;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v79)
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
      (*(*(v74 - 8) + 56))(v11, 1, 1, v74);
      v27 = 0;
      v29 = v32;
      goto LABEL_23;
    }

    v27 = *(v28 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1A34CDE90();
  __break(1u);
  return result;
}

unint64_t sub_1A31F4B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA808);
    v7 = sub_1A34CDC60();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v9, v5, &qword_1EB0C99C0);
      result = sub_1A31F56D4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MonogramSpec.LookupKey();
      result = sub_1A31F5B24(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for MonogramSpec.LookupKey);
      v16 = (v7[7] + 96 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = *(v8 + 5);
      v16[4] = *(v8 + 4);
      v16[5] = v20;
      v16[2] = v18;
      v16[3] = v19;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
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

uint64_t sub_1A31F4D50()
{
  sub_1A31F4DC4(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 16))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_1A31F4DC4@<X0>(uint64_t *a1@<X8>)
{
  v27 = &type metadata for MonogramSpec;
  v28 = &off_1F1624110;
  v1 = swift_allocObject();
  v26 = v1;
  *(v1 + 48) = &type metadata for MetricsCenteringStrategy;
  *(v1 + 56) = &off_1F1629BA8;
  *(v1 + 24) = 1;
  *(v1 + 26) = 4;
  *(v1 + 16) = 0x4059000000000000;
  *(v1 + 64) = xmmword_1A34ED7B0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 96) = MEMORY[0x1E69E7CC0];
  *(v1 + 104) = 0;
  v25 = 0;
  v24[0] = swift_getKeyPath();
  v24[1] = 1;
  v29 = 0;
  v21 = &type metadata for MonogramSpec;
  v22 = &off_1F1624110;
  v3 = swift_allocObject();
  v20 = v3;
  *(v3 + 48) = &type metadata for MetricsCenteringStrategy;
  *(v3 + 56) = &off_1F1629BA8;
  *(v3 + 24) = 1;
  *(v3 + 26) = 4;
  *(v3 + 16) = 0x4059000000000000;
  *(v3 + 64) = xmmword_1A34ED7C0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 96) = v2;
  *(v3 + 104) = 0;
  v19 = 0;
  v18[0] = swift_getKeyPath();
  v18[1] = 2;
  v23 = 0;
  v15 = &type metadata for MonogramSpec;
  v16 = &off_1F1624110;
  v4 = swift_allocObject();
  v14 = v4;
  *(v4 + 48) = &type metadata for MetricsCenteringStrategy;
  *(v4 + 56) = &off_1F1629BA8;
  *(v4 + 24) = 1;
  *(v4 + 26) = 4;
  *(v4 + 16) = 0x4059000000000000;
  *(v4 + 64) = xmmword_1A34ED7C0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = v2;
  *(v4 + 104) = 0;
  v13 = 0;
  v12[0] = swift_getKeyPath();
  v12[1] = 3;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99F8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A34DD060;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A10);
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_1F1624458;
  v7 = swift_allocObject();
  *(v5 + 32) = v7;
  sub_1A328D790(v24, v7 + 16, &qword_1EB0C9A10);
  *(v5 + 96) = v6;
  *(v5 + 104) = &off_1F1624458;
  v8 = swift_allocObject();
  *(v5 + 72) = v8;
  sub_1A328D790(v18, v8 + 16, &qword_1EB0C9A10);
  *(v5 + 136) = v6;
  *(v5 + 144) = &off_1F1624458;
  v9 = swift_allocObject();
  *(v5 + 112) = v9;
  sub_1A328D790(v12, v9 + 16, &qword_1EB0C9A10);
  a1[3] = &type metadata for MonogramSpecGroup;
  a1[4] = &off_1F1624440;
  *a1 = v5;
  sub_1A3288FDC(v12, &qword_1EB0C9A10);
  sub_1A3288FDC(v18, &qword_1EB0C9A10);
  return sub_1A3288FDC(v24, &qword_1EB0C9A10);
}

uint64_t sub_1A31F5090()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A31F50D0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1A31F5164()
{
  type metadata accessor for MonogramSpec.LookupKey();
  result = sub_1A34CDBE0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1A31F5220();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A31F5220()
{
  result = qword_1ED854928[0];
  if (!qword_1ED854928[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED854928);
  }

  return result;
}

uint64_t sub_1A31F528C(uint64_t a1, void (*a2)(uint64_t *, char *))
{
  v4 = v2;
  v6 = (v2 + *(a1 + 32));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = sub_1A31F4B50(MEMORY[0x1E69E7CC0]);
  v13[2] = *(a1 + 16);
  v13[3] = v4;
  v11 = sub_1A31F5B8C(v10, a2, v13, v9);

  return v11;
}

unint64_t sub_1A31F5368()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v13 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99B8);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99C0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A34DAA10;
  v6 = v5 + v4;
  v7 = v3[14];
  v8 = sub_1A34C9120();
  v9 = *(*(v8 - 8) + 56);
  v9(v2, 1, 1, v8);
  *v6 = 6;
  v10 = *(type metadata accessor for MonogramSpec.LookupKey() + 32);
  v9((v6 + v10), 1, 1, v8);
  *v6 = 6;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v6 + 17) = 514;
  sub_1A31F5588(v2, v6 + v10);
  sub_1A31F55F8(v13[1], v6 + v7);
  v11 = sub_1A31F4B50(v5);
  swift_setDeallocating();
  sub_1A3288FDC(v6, &qword_1EB0C99C0);
  swift_deallocClassInstance();
  return v11;
}

uint64_t sub_1A31F5588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1A31F5644(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A31F56D4(unsigned __int8 *a1)
{
  sub_1A34CDF20();
  sub_1A31F5740();
  v2 = sub_1A34CDF70();

  return sub_1A31F59C4(a1, v2);
}

uint64_t sub_1A31F5740()
{
  v1 = sub_1A34C9120();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = *v0;
  sub_1A34CDF40();
  if (v8 != 6)
  {
    MEMORY[0x1A58EF750](v8);
  }

  if (v0[16] == 1)
  {
    sub_1A34CDF40();
  }

  else
  {
    v9 = *(v0 + 1);
    sub_1A34CDF40();
    MEMORY[0x1A58EF750](v9);
  }

  if (v0[17] != 2)
  {
    sub_1A34CDF40();
  }

  sub_1A34CDF40();
  if (v0[18] != 2)
  {
    sub_1A34CDF40();
  }

  sub_1A34CDF40();
  v10 = type metadata accessor for MonogramSpec.LookupKey();
  sub_1A328D790(&v0[*(v10 + 32)], v7, &qword_1EB0CA800);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1A34CDF40();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1A34CDF40();
  sub_1A31F5644(&qword_1ED854A40, MEMORY[0x1E69680B8]);
  sub_1A34CCFE0();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1A31F59C4(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for MonogramSpec.LookupKey() - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1A33E1434(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MonogramSpec.LookupKey);
      v13 = sub_1A31F6D70(v8, a1);
      sub_1A33E0988(v8, type metadata accessor for MonogramSpec.LookupKey);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1A31F5B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A31F5B8C(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v24 - v8;
  v28 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v26 = a4;

  v16 = 0;
  while (v13)
  {
    v27 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v26;
    v21 = *(v26 + 48);
    v22 = type metadata accessor for MonogramSpec.LookupKey();
    sub_1A31F5D70(v21 + *(*(v22 - 8) + 72) * v19, v9);
    sub_1A31F55F8(*(v20 + 56) + 96 * v19, &v9[*(v24 + 48)]);
    v23 = v27;
    v25(&v28, v9);
    v5 = v23;
    result = sub_1A3288FDC(v9, &qword_1EB0C99E8);
    if (v23)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v28;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v27 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A31F5D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramSpec.LookupKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A31F5DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for MonogramSpec.LookupKey();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  sub_1A328D790(a2, v12, &qword_1EB0C99E8);
  v19 = *(v10 + 56);
  sub_1A31F604C(v12, v18);
  sub_1A31F60B0(&v12[v19]);
  v20 = v29;
  v21 = type metadata accessor for ConditionalMonogramSpecs();
  (*(v6 + 16))(v8, v20 + *(v21 + 28), a4);
  swift_setAtWritableKeyPath();
  sub_1A31F5D70(v18, v15);
  sub_1A328D790(v28, v12, &qword_1EB0C99E8);
  v22 = &v12[*(v10 + 56)];
  v23 = *(v22 + 3);
  v31[2] = *(v22 + 2);
  v31[3] = v23;
  v24 = *(v22 + 5);
  v31[4] = *(v22 + 4);
  v31[5] = v24;
  v25 = *(v22 + 1);
  v31[0] = *v22;
  v31[1] = v25;
  sub_1A31F6104(v31, v15);
  sub_1A31F6B94(v18);
  return sub_1A31F6B94(v12);
}

uint64_t sub_1A31F604C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramSpec.LookupKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A31F6104(_OWORD *a1, unsigned __int8 *a2)
{
  if (*(a1 + 4))
  {
    v4 = a1[3];
    v10[2] = a1[2];
    v10[3] = v4;
    v5 = a1[5];
    v10[4] = a1[4];
    v10[5] = v5;
    v6 = a1[1];
    v10[0] = *a1;
    v10[1] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1A31F61D0(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1A31F6B94(a2);
    *v2 = v9;
  }

  else
  {
    sub_1A3288FDC(a1, &qword_1EB0C99D8);
    sub_1A3491564(a2, v10);
    sub_1A31F6B94(a2);
    return sub_1A3288FDC(v10, &qword_1EB0C99D8);
  }

  return result;
}

uint64_t sub_1A31F61D0(_OWORD *a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MonogramSpec.LookupKey();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1A31F56D4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1A31F8190();
      goto LABEL_7;
    }

    sub_1A31F6378(v16, a3 & 1);
    v22 = sub_1A31F56D4(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A31F6A5C(a2, v10, type metadata accessor for MonogramSpec.LookupKey);
      return sub_1A31F6AC4(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1A34CDE90();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 96 * v13;

  return sub_1A31F7A88(a1, v20);
}

uint64_t sub_1A31F6378(uint64_t a1, int a2)
{
  v3 = v2;
  v66 = sub_1A34C9120();
  v5 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for MonogramSpec.LookupKey();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA808);
  v67 = a2;
  result = sub_1A34CDC50();
  v14 = result;
  if (*(v12 + 16))
  {
    v59 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v64 = (v5 + 48);
    v61 = (v5 + 32);
    v60 = (v5 + 8);
    v21 = result + 64;
    v22 = v70;
    v62 = v10;
    while (v19)
    {
      v29 = __clz(__rbit64(v19));
      v30 = (v19 - 1) & v19;
LABEL_15:
      v33 = v29 | (v15 << 6);
      v69 = v30;
      v34 = *(v12 + 48);
      v68 = *(v65 + 72);
      v35 = v34 + v68 * v33;
      if (v67)
      {
        sub_1A33E1530(v35, v22, type metadata accessor for MonogramSpec.LookupKey);
        v36 = (*(v12 + 56) + 96 * v33);
        v38 = v36[4];
        v37 = v36[5];
        v39 = v36[2];
        v74 = v36[3];
        v75 = v38;
        v76 = v37;
        v40 = v36[1];
        v71 = *v36;
        v72 = v40;
        v73 = v39;
      }

      else
      {
        sub_1A33E1434(v35, v22, type metadata accessor for MonogramSpec.LookupKey);
        sub_1A31F55F8(*(v12 + 56) + 96 * v33, &v71);
      }

      sub_1A34CDF20();
      v41 = *v22;
      sub_1A34CDF40();
      if (v41 != 6)
      {
        MEMORY[0x1A58EF750](v41);
      }

      v42 = v70;
      if (v70[16] == 1)
      {
        sub_1A34CDF40();
      }

      else
      {
        v43 = *(v70 + 1);
        sub_1A34CDF40();
        v44 = v43;
        v42 = v70;
        MEMORY[0x1A58EF750](v44);
      }

      if (v42[17] != 2)
      {
        sub_1A34CDF40();
      }

      sub_1A34CDF40();
      if (v70[18] != 2)
      {
        sub_1A34CDF40();
      }

      sub_1A34CDF40();
      sub_1A328D790(&v70[*(v10 + 32)], v9, &qword_1EB0CA800);
      v45 = v66;
      if ((*v64)(v9, 1, v66) == 1)
      {
        sub_1A34CDF40();
      }

      else
      {
        v46 = v14;
        v47 = v12;
        v48 = v63;
        (*v61)(v63, v9, v45);
        sub_1A34CDF40();
        sub_1A33E1CA8(&qword_1ED854A40, MEMORY[0x1E69680B8]);
        sub_1A34CCFE0();
        v49 = v48;
        v12 = v47;
        v14 = v46;
        v10 = v62;
        (*v60)(v49, v45);
      }

      result = sub_1A34CDF70();
      v50 = -1 << *(v14 + 32);
      v51 = result & ~v50;
      v52 = v51 >> 6;
      v22 = v70;
      if (((-1 << v51) & ~*(v21 + 8 * (v51 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v50) >> 6;
        while (++v52 != v54 || (v53 & 1) == 0)
        {
          v55 = v52 == v54;
          if (v52 == v54)
          {
            v52 = 0;
          }

          v53 |= v55;
          v56 = *(v21 + 8 * v52);
          if (v56 != -1)
          {
            v23 = __clz(__rbit64(~v56)) + (v52 << 6);
            goto LABEL_7;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v51) & ~*(v21 + 8 * (v51 >> 6)))) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1A33E1530(v22, *(v14 + 48) + v68 * v23, type metadata accessor for MonogramSpec.LookupKey);
      v24 = (*(v14 + 56) + 96 * v23);
      v25 = v73;
      v26 = v74;
      v27 = v76;
      v24[4] = v75;
      v24[5] = v27;
      v24[2] = v25;
      v24[3] = v26;
      v28 = v72;
      *v24 = v71;
      v24[1] = v28;
      ++*(v14 + 16);
      v19 = v69;
    }

    v31 = v15;
    while (1)
    {
      v15 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v15 >= v20)
      {
        break;
      }

      v32 = v16[v15];
      ++v31;
      if (v32)
      {
        v29 = __clz(__rbit64(v32));
        v30 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    if ((v67 & 1) == 0)
    {

      v3 = v59;
      goto LABEL_46;
    }

    v57 = 1 << *(v12 + 32);
    v3 = v59;
    if (v57 >= 64)
    {
      bzero(v16, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v57;
    }

    *(v12 + 16) = 0;
  }

LABEL_46:
  *v3 = v14;
  return result;
}

uint64_t sub_1A31F6A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A31F6AC4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MonogramSpec.LookupKey();
  result = sub_1A33F1C9C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MonogramSpec.LookupKey);
  v11 = (a4[7] + 96 * a1);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a3[5];
  v11[4] = a3[4];
  v11[5] = v13;
  v14 = a3[3];
  v11[2] = a3[2];
  v11[3] = v14;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_1A31F6B94(uint64_t a1)
{
  v2 = type metadata accessor for MonogramSpec.LookupKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A31F6BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A31F6C60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A31F6CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A31F6D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1A31F6D70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1A34C9120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99C8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *a1;
  v16 = *a2;
  if (v15 == 6)
  {
    if (v16 != 6)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return v17;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = a1[17];
  v19 = a2[17];
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
    {
      return v17;
    }
  }

  v20 = a1[18];
  v21 = a2[18];
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v17 = 0;
  if (v21 != 2 && ((v21 ^ v20) & 1) == 0)
  {
LABEL_21:
    v22 = v12;
    v23 = *(type metadata accessor for MonogramSpec.LookupKey() + 32);
    v24 = *(v22 + 48);
    sub_1A328D790(&a1[v23], v14, &qword_1EB0CA800);
    sub_1A328D790(&a2[v23], &v14[v24], &qword_1EB0CA800);
    v25 = *(v5 + 48);
    if (v25(v14, 1, v4) == 1)
    {
      if (v25(&v14[v24], 1, v4) == 1)
      {
        sub_1A3288FDC(v14, &qword_1EB0CA800);
        return 1;
      }

      goto LABEL_26;
    }

    sub_1A328D790(v14, v10, &qword_1EB0CA800);
    if (v25(&v14[v24], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_26:
      sub_1A3288FDC(v14, &qword_1EB0C99C8);
      return 0;
    }

    (*(v5 + 32))(v7, &v14[v24], v4);
    sub_1A31F5644(&qword_1EB0C99D0, MEMORY[0x1E69680B8]);
    v27 = sub_1A34CD040();
    v28 = *(v5 + 8);
    v28(v7, v4);
    v28(v10, v4);
    sub_1A3288FDC(v14, &qword_1EB0CA800);
    return (v27 & 1) != 0;
  }

  return v17;
}

uint64_t sub_1A31F717C()
{
  v0 = sub_1A31F74D4();
  v15 = &type metadata for AnisotropicCenteringStrategy;
  v16 = &off_1F1629D90;
  v1 = swift_allocObject();
  *&v14 = v1;
  *(v1 + 40) = &type metadata for MetricsCenteringStrategy;
  *(v1 + 48) = &off_1F1629BA8;
  *(v1 + 16) = 1;
  *(v1 + 18) = 4;
  *(v1 + 80) = &type metadata for CompositeCentroidCenteringStrategy;
  *(v1 + 88) = &off_1F1629D80;
  *(v1 + 56) = 0;
  KeyPath = swift_getKeyPath();
  sub_1A31EE4BC(&v14, v13);
  v13[8] = &type metadata for MonogramSpecGroup;
  v13[9] = &off_1F1624440;
  v13[5] = v0;
  v12 = KeyPath;
  swift_bridgeObjectRetain_n();
  __swift_destroy_boxed_opaque_existential_0(&v14);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A28);
  v15 = v3;
  v16 = &off_1F1624458;
  v4 = swift_allocObject();
  *&v14 = v4;
  *(v4 + 56) = v3;
  *(v4 + 64) = &off_1F1624458;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  v6 = swift_getKeyPath();
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9A30);
  *(v5 + 64) = &off_1F1624410;
  v7 = swift_allocObject();
  *(v5 + 32) = v7;
  sub_1A328D790(&v12, v7 + 16, &unk_1EB0C9A30);
  *(v5 + 24) = 1;
  *(v5 + 16) = v6;
  *(v5 + 72) = 0;
  v8 = swift_getKeyPath();
  *(v4 + 24) = 0;
  *(v4 + 16) = v8;
  *(v4 + 72) = 0;
  sub_1A3288FDC(&v12, &unk_1EB0C9A30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  *(inited + 56) = &type metadata for MonogramSpecGroup;
  *(inited + 64) = &off_1F1624440;
  *(inited + 32) = v0;
  sub_1A31EE568(&v14, inited + 72);
  v10 = sub_1A31F4364(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A00);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1A31F7408()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1A31F7448()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1A31F7488()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1A31F74D4()
{
  v20 = &type metadata for MonogramSpec;
  v21 = &off_1F1624110;
  v0 = swift_allocObject();
  v19 = v0;
  *(v0 + 48) = &type metadata for MetricsCenteringStrategy;
  *(v0 + 56) = &off_1F1629BA8;
  *(v0 + 24) = 1;
  *(v0 + 26) = 4;
  *(v0 + 16) = 0x4059000000000000;
  *(v0 + 64) = xmmword_1A34ED7D0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  *(v0 + 104) = 0;
  v18 = 0;
  v17[0] = swift_getKeyPath();
  v17[1] = 1;
  v22 = 0;
  v14 = &type metadata for MonogramSpec;
  v15 = &off_1F1624110;
  v2 = swift_allocObject();
  v13 = v2;
  *(v2 + 48) = &type metadata for MetricsCenteringStrategy;
  *(v2 + 56) = &off_1F1629BA8;
  *(v2 + 24) = 1;
  *(v2 + 26) = 4;
  *(v2 + 16) = 0x4059000000000000;
  *(v2 + 64) = xmmword_1A34ED7A0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  *(v2 + 96) = v1;
  *(v2 + 104) = 0xBFEE147AE147AE14;
  v12 = 0;
  v11[0] = swift_getKeyPath();
  v11[1] = 2;
  v16 = 0;
  v3 = swift_allocObject();
  *(v3 + 48) = &type metadata for MetricsCenteringStrategy;
  *(v3 + 56) = &off_1F1629BA8;
  *(v3 + 24) = 1;
  *(v3 + 26) = 4;
  *(v3 + 16) = 0x4059000000000000;
  *(v3 + 64) = xmmword_1A34ED7E0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 96) = v1;
  *(v3 + 104) = 0xBFDE147AE147AE14;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99F8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A34DD060;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9A10);
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_1F1624458;
  v7 = swift_allocObject();
  *(v5 + 32) = v7;
  sub_1A328D790(v17, v7 + 16, &qword_1EB0C9A10);
  *(v5 + 96) = v6;
  *(v5 + 104) = &off_1F1624458;
  v8 = swift_allocObject();
  *(v5 + 72) = v8;
  sub_1A328D790(v11, v8 + 16, &qword_1EB0C9A10);
  *(v5 + 136) = v6;
  *(v5 + 144) = &off_1F1624458;
  v9 = swift_allocObject();
  *(v5 + 112) = v9;
  *(v9 + 16) = KeyPath;
  *(v9 + 24) = 3;
  *(v9 + 32) = 0;
  *(v9 + 40) = v3;
  *(v9 + 64) = &type metadata for MonogramSpec;
  *(v9 + 72) = &off_1F1624110;
  *(v9 + 80) = 0;
  sub_1A3288FDC(v11, &qword_1EB0C9A10);
  sub_1A3288FDC(v17, &qword_1EB0C9A10);
  return v5;
}

unint64_t sub_1A31F77A4()
{
  result = sub_1A34CDBE0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1A31F5220();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A31F7880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  sub_1A328D790(a2, v21 - v12, &qword_1EB0C99E8);
  v14 = &v13[*(v11 + 56)];
  v15 = *(v14 + 5);
  v23[4] = *(v14 + 4);
  v23[5] = v15;
  v16 = *(v14 + 3);
  v23[2] = *(v14 + 2);
  v23[3] = v16;
  v17 = *(v14 + 1);
  v23[0] = *v14;
  v23[1] = v17;
  sub_1A31F6B94(v13);
  v18 = type metadata accessor for ModifiedMonogramSpecs();
  (*(v7 + 16))(v9, a3 + *(v18 + 28), a4);
  swift_setAtWritableKeyPath();
  sub_1A328D790(a2, v13, &qword_1EB0C99E8);
  v19 = *(v11 + 56);
  sub_1A31F55F8(v23, v22);
  sub_1A31F6104(v22, v13);
  sub_1A31F60B0(v23);
  return sub_1A31F60B0(&v13[v19]);
}

uint64_t sub_1A31F7AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v9 = type metadata accessor for MonogramSpec.LookupKey();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  sub_1A328D790(a2, v8, &qword_1EB0C99E8);
  v15 = *(v6 + 56);
  sub_1A31F604C(v8, v14);
  sub_1A31F60B0(&v8[v15]);
  LOBYTE(v22[0]) = *(a3 + 8);
  swift_setAtWritableKeyPath();
  sub_1A31F5D70(v14, v11);
  sub_1A328D790(a2, v8, &qword_1EB0C99E8);
  v16 = &v8[*(v6 + 56)];
  v17 = *(v16 + 3);
  v22[2] = *(v16 + 2);
  v22[3] = v17;
  v18 = *(v16 + 5);
  v22[4] = *(v16 + 4);
  v22[5] = v18;
  v19 = *(v16 + 1);
  v22[0] = *v16;
  v22[1] = v19;
  sub_1A31F6104(v22, v11);
  sub_1A31F6B94(v14);
  return sub_1A31F6B94(v8);
}

void *sub_1A31F7CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA818);
  v3 = sub_1A34CDC60();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1A31F7DCC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1A31F7DCC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A31F7DCC(unsigned __int8 a1)
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](a1);
  v2 = sub_1A34CDF70();

  return sub_1A31F80C8(a1, v2);
}

uint64_t sub_1A31F7E38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA818);
  v30 = a2;
  result = sub_1A34CDC50();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v20);
      result = sub_1A34CDF70();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A31F80C8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A31F813C()
{
  result = qword_1ED854A08;
  if (!qword_1ED854A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854A08);
  }

  return result;
}

void *sub_1A31F8190()
{
  v1 = v0;
  v2 = type metadata accessor for MonogramSpec.LookupKey();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA808);
  v6 = *v0;
  v7 = sub_1A34CDC40();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1A33E1434(*(v6 + 48) + v22, v5, type metadata accessor for MonogramSpec.LookupKey);
        v21 *= 96;
        sub_1A31F55F8(*(v6 + 56) + v21, v30);
        result = sub_1A33E1530(v5, *(v8 + 48) + v22, type metadata accessor for MonogramSpec.LookupKey);
        v23 = (*(v8 + 56) + v21);
        v24 = v30[2];
        v25 = v30[3];
        v26 = v30[5];
        v23[4] = v30[4];
        v23[5] = v26;
        v23[2] = v24;
        v23[3] = v25;
        v27 = v30[1];
        *v23 = v30[0];
        v23[1] = v27;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1A31F83EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v62 - v9;
  v69 = sub_1A34CDFF0();
  v10 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  *a4 = 6;
  v13 = *(type metadata accessor for MonogramSpec.LookupKey() + 32);
  v14 = sub_1A34C9120();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v67 = v14;
  v68 = v13;
  v65 = v15 + 56;
  v66 = v16;
  (v16)(a4 + v13, 1, 1);
  *a4 = a3;
  *(a4 + 8) = sub_1A34CD1D0();
  *(a4 + 16) = 0;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v70 = a1;
  v71 = a2;
  v72 = 0;
  v73 = v17;

  result = sub_1A34CD220();
  if (!v19)
  {
    v38 = 0;
    goto LABEL_48;
  }

  v20 = result;
  v21 = v19;
  v63 = (v10 + 8);
  while (1)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      return result;
    }

    if ((v21 & 0x1000000000000000) != 0)
    {
      v27 = sub_1A34CD1B0();
    }

    else
    {
      if ((v21 & 0x2000000000000000) != 0)
      {
        v24 = v20;
      }

      else
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          v23 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_1A34CDB30();
        }

        v24 = *v23;
      }

      v25 = v24;
      v26 = (__clz(~v24) - 24) << 16;
      if (v25 < 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 65541;
      }
    }

    v28 = 4 * v22;
    if (4 * v22 == v27 >> 14)
    {
      result = sub_1A31F8A7C(v20, v21);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_96;
      }

      sub_1A34CE000();
      v29 = sub_1A34CDFC0();
      (*v63)(v12, v69);
      if (v29)
      {
        break;
      }
    }

    if ((sub_1A34CCFF0() & 1) == 0)
    {

      goto LABEL_40;
    }

    if ((v21 & 0x1000000000000000) != 0)
    {
      if (v28 != sub_1A34CD1B0() >> 14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v21 & 0x2000000000000000) != 0)
      {
        v31 = v20;
      }

      else
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          v30 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v30 = sub_1A34CDB30();
        }

        v31 = *v30;
      }

      v32 = v31;
      v33 = (__clz(~v31) - 24) << 16;
      if (v32 < 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 65541;
      }

      if (v28 != v34 >> 14)
      {
        goto LABEL_38;
      }
    }

    result = sub_1A31F8A7C(v20, v21);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_98;
    }

    sub_1A34CE000();
    v35 = sub_1A34CDFE0();
    (*v63)(v12, v69);
    if (v35)
    {
      break;
    }

LABEL_38:
    if ((sub_1A34CD000() & 1) == 0)
    {
      break;
    }

    v36 = sub_1A34CCFF0();

    if ((v36 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_40:
    result = sub_1A34CD220();
    v20 = result;
    v21 = v37;
    v38 = 0;
    v39 = v10;
    if (!v37)
    {
      goto LABEL_49;
    }
  }

LABEL_46:
  v38 = 1;
LABEL_48:
  v39 = v10;
LABEL_49:

  *(a4 + 17) = v38;
  v70 = a1;
  v71 = a2;
  v72 = 0;
  v73 = v17;

  result = sub_1A34CD220();
  if (v40)
  {
    v41 = result;
    v42 = v40;
    v43 = (v39 + 8);
    while (1)
    {
      if ((v42 & 0x2000000000000000) != 0)
      {
        v44 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v44 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (!v44)
      {
        goto LABEL_95;
      }

      if ((v42 & 0x1000000000000000) != 0)
      {
        v49 = sub_1A34CD1B0();
      }

      else
      {
        if ((v42 & 0x2000000000000000) != 0)
        {
          v46 = v41;
        }

        else
        {
          if ((v41 & 0x1000000000000000) != 0)
          {
            v45 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v45 = sub_1A34CDB30();
          }

          v46 = *v45;
        }

        v47 = v46;
        v48 = (__clz(~v46) - 24) << 16;
        if (v47 < 0)
        {
          v49 = v48;
        }

        else
        {
          v49 = 65541;
        }
      }

      v50 = 4 * v44;
      if (4 * v44 == v49 >> 14)
      {
        result = sub_1A31F8A7C(v41, v42);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_97;
        }

        sub_1A34CE000();
        v51 = sub_1A34CDFD0();
        (*v43)(v12, v69);
        if (v51)
        {
          goto LABEL_90;
        }
      }

      if ((sub_1A34CD000() & 1) == 0)
      {

        goto LABEL_85;
      }

      if ((v42 & 0x1000000000000000) != 0)
      {
        if (v50 == sub_1A34CD1B0() >> 14)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if ((v42 & 0x2000000000000000) != 0)
        {
          v53 = v41;
        }

        else
        {
          if ((v41 & 0x1000000000000000) != 0)
          {
            v52 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v52 = sub_1A34CDB30();
          }

          v53 = *v52;
        }

        v54 = v53;
        v55 = (__clz(~v53) - 24) << 16;
        if (v54 < 0)
        {
          v56 = v55;
        }

        else
        {
          v56 = 65541;
        }

        if (v50 == v56 >> 14)
        {
LABEL_81:
          result = sub_1A31F8A7C(v41, v42);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_99;
          }

          sub_1A34CE000();
          v57 = sub_1A34CDFE0();
          (*v43)(v12, v69);
          if (v57)
          {
LABEL_90:

LABEL_91:
            v60 = 1;
            goto LABEL_93;
          }
        }
      }

      if ((sub_1A34CD000() & 1) == 0)
      {
        goto LABEL_90;
      }

      v58 = sub_1A34CCFF0();

      if ((v58 & 1) == 0)
      {
        goto LABEL_91;
      }

LABEL_85:
      result = sub_1A34CD220();
      v41 = result;
      v42 = v59;
      v60 = 0;
      if (!v59)
      {
        goto LABEL_93;
      }
    }
  }

  v60 = 0;
LABEL_93:

  *(a4 + 18) = v60;
  v61 = v64;
  sub_1A34C90F0();

  v66(v61, 0, 1, v67);
  return sub_1A31F5588(v61, a4 + v68);
}

unint64_t sub_1A31F8A7C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1A31F8BCC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1A34CDAC0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1A34CDB30() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1A31F8BCC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A33A8D2C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A33A8DA0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

double sub_1A31F8C64@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != 6)
  {
    if (*(a3 + 16))
    {
      v7 = a1;
      v8 = sub_1A31F7DCC(*a1);
      a1 = v7;
      if (v9)
      {
        v10 = *(*(a3 + 56) + 8 * v8);

        sub_1A31F8DC4(v7, v10, v15);

        if (v16)
        {
LABEL_7:
          v11 = v17;
          *(a4 + 32) = v16;
          *(a4 + 48) = v11;
          v12 = v19;
          *(a4 + 64) = v18;
          *(a4 + 80) = v12;
          result = *v15;
          v14 = v15[1];
          *a4 = v15[0];
          *(a4 + 16) = v14;
          return result;
        }

        sub_1A3288FDC(v15, &qword_1EB0C99D8);
        a1 = v7;
      }
    }
  }

  sub_1A31F8DC4(a1, a2, v15);
  if (v16)
  {
    goto LABEL_7;
  }

  sub_1A3288FDC(v15, &qword_1EB0C99D8);
  *a4 = 0x4059000000000000;
  *(a4 + 32) = &type metadata for MetricsCenteringStrategy;
  *(a4 + 40) = &off_1F1629BA8;
  *(a4 + 8) = 1;
  *(a4 + 10) = 4;
  result = 47.0;
  *(a4 + 48) = xmmword_1A34ED7A0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = MEMORY[0x1E69E7CC0];
  *(a4 + 88) = 0;
  return result;
}

uint64_t sub_1A31F8DC4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for MonogramSpec.LookupKey();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  if (*(a2 + 16) && (v16 = sub_1A31F56D4(a1), (v17 & 1) != 0))
  {
    result = sub_1A31F55F8(*(a2 + 56) + 96 * v16, &v71);
    v19 = v74;
    a3[2] = v73;
    a3[3] = v19;
    v20 = v76;
    a3[4] = v75;
    a3[5] = v20;
    v21 = v72;
    *a3 = v71;
    a3[1] = v21;
  }

  else
  {
    v62 = a1;
    v56 = a3;
    v57 = (&v71 + 8);
    v23 = a2 + 64;
    v22 = *(a2 + 64);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v24 = 1 << *(a2 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v61 = a2;

    v64 = 0;
    v28 = 0;
    v58 = v12;
    if (!v26)
    {
      goto LABEL_10;
    }

    do
    {
      while (1)
      {
        v33 = v28;
LABEL_17:
        v36 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v37 = v36 | (v33 << 6);
        v38 = v61;
        v39 = v59;
        sub_1A31F5D70(*(v61 + 48) + *(v60 + 72) * v37, v59);
        sub_1A31F55F8(*(v38 + 56) + 96 * v37, &v65);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
        v41 = &v58[*(v40 + 48)];
        v42 = v39;
        v12 = v58;
        sub_1A31F604C(v42, v58);
        v43 = v68;
        *(v41 + 2) = v67;
        *(v41 + 3) = v43;
        v44 = v70;
        *(v41 + 4) = v69;
        *(v41 + 5) = v44;
        v45 = v66;
        *v41 = v65;
        *(v41 + 1) = v45;
        (*(*(v40 - 8) + 56))(v12, 0, 1, v40);
        v35 = v33;
LABEL_18:
        sub_1A31F6BF0(v12, v15);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
        if ((*(*(v46 - 8) + 48))(v15, 1, v46) == 1)
        {

          sub_1A328D790(v57, v56, &qword_1EB0C99D8);
          return sub_1A3288FDC(&v71, &qword_1EB0C99F0);
        }

        v47 = &v15[*(v46 + 48)];
        v48 = v63;
        sub_1A31F604C(v15, v63);
        v49 = *(v47 + 3);
        v67 = *(v47 + 2);
        v68 = v49;
        v50 = *(v47 + 5);
        v69 = *(v47 + 4);
        v70 = v50;
        v51 = *(v47 + 1);
        v65 = *v47;
        v66 = v51;
        sub_1A31F92FC(v48);
        v53 = v52;
        sub_1A31F6B94(v48);
        if (v64 >= v53)
        {
          break;
        }

        v29 = v57;
        result = sub_1A3288FDC(v57, &qword_1EB0C99D8);
        v30 = v68;
        v29[2] = v67;
        v29[3] = v30;
        v31 = v70;
        v29[4] = v69;
        v29[5] = v31;
        v32 = v66;
        *&v71 = v53;
        v64 = v53;
        v28 = v35;
        *v29 = v65;
        v29[1] = v32;
        if (!v26)
        {
          goto LABEL_10;
        }
      }

      result = sub_1A31F60B0(&v65);
      v28 = v35;
    }

    while (v26);
LABEL_10:
    if (v27 <= v28 + 1)
    {
      v34 = v28 + 1;
    }

    else
    {
      v34 = v27;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v33 >= v27)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C99E8);
        (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
        v26 = 0;
        goto LABEL_18;
      }

      v26 = *(v23 + 8 * v33);
      ++v28;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1A31F92FC(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = sub_1A34C9120();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = 0;
  v17 = *v1;
  if (v17 != 6)
  {
    v18 = *a1;
    v19 = v17 == v18;
    v20 = 2;
    if (!v19)
    {
      v20 = -10;
    }

    if (v18 == 6)
    {
      v16 = 0;
    }

    else
    {
      v16 = v20;
    }
  }

  if ((v1[16] & 1) == 0 && (a1[16] & 1) == 0)
  {
    if (*(v1 + 1) == *(a1 + 1))
    {
      v16 |= 1uLL;
    }

    else
    {
      v16 -= 5;
    }
  }

  v21 = v1[17];
  if (v21 != 2)
  {
    v22 = a1[17];
    if (v22 != 2)
    {
      if ((v22 ^ v21))
      {
        v16 -= 5;
      }

      else
      {
        ++v16;
      }
    }
  }

  v23 = v1[18];
  v36 = v5;
  if (v23 != 2)
  {
    v24 = a1[18];
    if (v24 != 2)
    {
      if ((v24 ^ v23))
      {
        v25 = __OFSUB__(v16, 5);
        v16 -= 5;
        if (!v25)
        {
          goto LABEL_24;
        }

        __break(1u);
      }

      v25 = __OFADD__(v16++, 1);
      if (v25)
      {
LABEL_35:
        __break(1u);
        return;
      }
    }
  }

LABEL_24:
  v26 = a1;
  v27 = type metadata accessor for MonogramSpec.LookupKey();
  sub_1A328D790(&v1[*(v27 + 32)], v8, &qword_1EB0CA800);
  v28 = *(v10 + 48);
  if (v28(v8, 1, v9) == 1)
  {
LABEL_27:
    sub_1A3288FDC(v8, &qword_1EB0CA800);
    return;
  }

  v34 = v12;
  v35 = v16;
  v29 = *(v10 + 32);
  v29(v15, v8, v9);
  v8 = v36;
  sub_1A328D790(&v26[*(v27 + 32)], v36, &qword_1EB0CA800);
  if (v28(v8, 1, v9) == 1)
  {
    (*(v10 + 8))(v15, v9);
    goto LABEL_27;
  }

  v30 = v34;
  v29(v34, v8, v9);
  sub_1A31F5644(&qword_1EB0C99D0, MEMORY[0x1E69680B8]);
  v31 = sub_1A34CD040();
  v32 = *(v10 + 8);
  v32(v30, v9);
  v32(v15, v9);
  if (v31)
  {
    if (!__OFADD__(v35, 1))
    {
      return;
    }

    __break(1u);
  }

  if (__OFSUB__(v35, 5))
  {
    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_1A31F96C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

CTFontRef __swiftcall MonogramFont.platformFont(size:)(Swift::Double size)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  if (v4 <= 2)
  {
    v7 = *MEMORY[0x1E69658B8];
    if (!*MEMORY[0x1E69658B8])
    {
      __break(1u);
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA948);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DAA10;
    v9 = *MEMORY[0x1E6965898];
    *(inited + 32) = *MEMORY[0x1E6965898];
    v10 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9198);
    result = swift_initStackObject();
    *(result + 1) = xmmword_1A34DAA10;
    v4 = MEMORY[0x1E69658E0];
    v11 = *MEMORY[0x1E69658E0];
    if (*MEMORY[0x1E69658E0])
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v4 == 3)
  {
    goto LABEL_10;
  }

  if (v4 != 4)
  {
    goto LABEL_13;
  }

  v7 = *MEMORY[0x1E69658C8];
  if (!*MEMORY[0x1E69658C8])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  v9 = *MEMORY[0x1E6965898];
  *(inited + 32) = *MEMORY[0x1E6965898];
  v10 = inited + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9198);
  result = swift_initStackObject();
  *(result + 1) = xmmword_1A34DAA10;
  v11 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
LABEL_15:
    *(result + 4) = v11;
    v12 = result + 32;
    v13 = result;
    type metadata accessor for CFString(0);
    *(v13 + 8) = v14;
    *(v13 + 5) = v7;
    v15 = v9;
    v16 = v11;
    v17 = v7;
    v18 = sub_1A31F9D3C(v13);
    swift_setDeallocating();
    sub_1A3288FDC(v12, &qword_1EB0C91B0);
    *(inited + 40) = v18;
    sub_1A31FA154(inited, &qword_1EB0CABC0);
    swift_setDeallocating();
    sub_1A3288FDC(v10, &qword_1EB0CA950);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA958);
    sub_1A31F9F18(&qword_1ED854618);
    v19 = sub_1A34CCF70();

    v35 = CTFontDescriptorCreateWithAttributesAndOptions();

    v20 = CTFontCreateWithFontDescriptor(v35, size, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C30);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1A34DAA10;
    v22 = *MEMORY[0x1E69658F8];
    *(v21 + 32) = *MEMORY[0x1E69658F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C38);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1A34DAA10;
    *(v23 + 32) = 2003072104;
    *(v23 + 40) = v6;
    v24 = sub_1A31FA2C8(v23);
    swift_setDeallocating();
    *(v21 + 40) = v24;
    v25 = v22;
    sub_1A31FA154(v21, &qword_1EB0CABB0);
    swift_setDeallocating();
    sub_1A3288FDC(v21 + 32, &qword_1EB0C5C40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C48);
    v26 = sub_1A34CCF70();

    v27 = CTFontDescriptorCreateWithAttributes(v26);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v20, 0.0, 0, v27);

    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1A34DAA10;
    *(v29 + 32) = v25;
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1A34DAA10;
    *(v30 + 32) = 2003265652;
    *(v30 + 40) = v5;
    v31 = sub_1A31FA2C8(v30);
    swift_setDeallocating();
    *(v29 + 40) = v31;
    sub_1A31FA154(v29, &qword_1EB0CABB0);
    swift_setDeallocating();
    sub_1A3288FDC(v29 + 32, &qword_1EB0C5C40);
    v32 = sub_1A34CCF70();

    v33 = CTFontDescriptorCreateWithAttributes(v32);
    v34 = CTFontCreateCopyWithAttributes(CopyWithAttributes, 0.0, 0, v33);

    return v34;
  }

  __break(1u);
LABEL_10:
  v7 = *MEMORY[0x1E69658A8];
  if (!*MEMORY[0x1E69658A8])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  v9 = *MEMORY[0x1E6965898];
  *(inited + 32) = *MEMORY[0x1E6965898];
  v10 = inited + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9198);
  result = swift_initStackObject();
  *(result + 1) = xmmword_1A34DAA10;
  v11 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_13:
  v7 = *MEMORY[0x1E69658D0];
  if (!*MEMORY[0x1E69658D0])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DAA10;
  v9 = *MEMORY[0x1E6965898];
  *(inited + 32) = *MEMORY[0x1E6965898];
  v10 = inited + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9198);
  result = swift_initStackObject();
  *(result + 1) = xmmword_1A34DAA10;
  v11 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1A31F9D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CABC8);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, &v11, &qword_1EB0C91B0);
      v5 = v11;
      result = sub_1A31F9E64(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A31FA144(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A31F9E64(uint64_t a1)
{
  sub_1A34CDF20();
  type metadata accessor for CFString(0);
  sub_1A33E1CA8(&qword_1ED854628, type metadata accessor for CFString);
  sub_1A34C9B60();
  v2 = sub_1A34CDF70();

  return sub_1A31FA038(a1, v2);
}

uint64_t sub_1A31F9F18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A31FA038(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1A33E1CA8(&qword_1ED854628, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A34C9B50();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

_OWORD *sub_1A31FA144(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1A31FA154(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);

      result = sub_1A31F9E64(v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v6;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
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

uint64_t sub_1A31FA25C()
{
  swift_getWitnessTable();

  return sub_1A34C9B50();
}

unint64_t sub_1A31FA2C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CABB8);
    v3 = sub_1A34CDC60();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A31ED4A8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1A31FA3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CABA8);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, &v11, &unk_1EB0C7F00);
      v5 = v11;
      result = sub_1A31FA5B8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A31FA144(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A31FA4F8()
{
  result = qword_1ED8545E0;
  if (!qword_1ED8545E0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8545E0);
  }

  return result;
}

uint64_t sub_1A31FA5BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = *(v4 + 112);
  v50 = *(v4 + 96);
  v51 = v8;
  v52 = *(v4 + 128);
  v9 = *(v4 + 152);
  v53 = *(v4 + 144);
  v10 = *(v4 + 48);
  *&v46.tx = *(v4 + 32);
  v47 = v10;
  v11 = *(v4 + 80);
  v48 = *(v4 + 64);
  v49 = v11;
  v12 = *(v4 + 16);
  *&v46.a = *v4;
  *&v46.c = v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(v14 + 8);
  sub_1A31FA7D8(v4, &v37);
  v16 = v15(v4, v13, v14, a3, a4);
  v18 = v17;
  v37.a = 1.0;
  v37.b = 0.0;
  v37.c = 0.0;
  v37.d = 1.0;
  v37.tx = 0.0;
  v37.ty = 0.0;
  CGAffineTransformTranslate(&v28, &v37, a3 * 0.5, a4 * 0.5);
  v37 = v28;
  CGAffineTransformTranslate(&transform, &v37, -v16, -v18);
  v19 = v9;
  v20 = CGPathCreateMutableCopyByTransformingPath(v19, &transform);

  if (v20)
  {

    v19 = v20;
  }

  v32 = v50;
  v33 = v51;
  v34 = v52;
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  *&v35 = v53;
  *(&v35 + 1) = v19;
  v44 = v53;
  v45 = v19;
  sub_1A31FA7D8(&v28, &v27);
  result = sub_1A31FA954(&v37);
  v22 = v33;
  a2[6] = v32;
  a2[7] = v22;
  v23 = v35;
  a2[8] = v34;
  a2[9] = v23;
  v24 = v29;
  a2[2] = *&v28.tx;
  a2[3] = v24;
  v25 = v31;
  a2[4] = v30;
  a2[5] = v25;
  v26 = *&v28.c;
  *a2 = *&v28.a;
  a2[1] = v26;
  return result;
}

void sub_1A31FA820(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = (a1 + 80);
    if (a2 != 1)
    {
      v2 = (a1 + 48);
    }
  }

  else
  {
    v2 = (a1 + 16);
  }

  CGRectGetMidX(*v2);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t MonogramSolarium.Container.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCCD0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCCD8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCCE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  if (*(v0 + *(type metadata accessor for MonogramSolarium.Container() + 24)) == 1)
  {
    sub_1A31FAC78(v9);
    v10 = sub_1A34CAC60();
    v11 = sub_1A34CBA90();
    v12 = &v9[*(v7 + 36)];
    *v12 = v10;
    v12[8] = v11;
    sub_1A328D790(v9, v6, &qword_1EB0CCCE0);
    swift_storeEnumTagMultiPayload();
    sub_1A34A7F38();
    sub_1A34A7FC4();
    sub_1A34CB3E0();
    v13 = v9;
    v14 = &qword_1EB0CCCE0;
  }

  else
  {
    sub_1A31FAC78(v3);
    sub_1A328D790(v3, v6, &qword_1EB0CCCD0);
    swift_storeEnumTagMultiPayload();
    sub_1A34A7F38();
    sub_1A34A7FC4();
    sub_1A34CB3E0();
    v13 = v3;
    v14 = &qword_1EB0CCCD0;
  }

  return sub_1A3288FDC(v13, v14);
}

uint64_t sub_1A31FAC78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v34 - v4;
  v5 = type metadata accessor for MonogramSolarium.Container();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34CA5D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A34CAD60();
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + v5[6]))
  {
    *&v35 = v5;
    v17 = v9;
    v18 = v6;
    v19 = *(v14 + 20);
    v20 = *MEMORY[0x1E697F468];
    *&v34 = v14;
    v21 = sub_1A34CB200();
    v22 = &v16->i8[v19];
    v6 = v18;
    v9 = v17;
    v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = v35;
    (*(*(v21 - 8) + 104))(v22, v20, v21);
    *v16 = vdupq_n_s64(0x4044000000000000uLL);
    sub_1A34A8C60(&qword_1EB0CCD18, MEMORY[0x1E697EAF0]);
  }

  else
  {
    sub_1A31FB248();
  }

  v23 = sub_1A34CCA20();
  v24 = v2 + v5[7];
  v25 = *(v24 + 8);
  *&v38 = *v24;
  BYTE8(v38) = v25;
  sub_1A31EE004(v38, v25);
  sub_1A34A7D38(v12);
  sub_1A32E821C(v12, &v42);
  (*(v10 + 8))(v12, v9);
  sub_1A31ECC9C(v38, BYTE8(v38));
  v26 = v42;
  v35 = *v43;
  v34 = *&v43[16];
  sub_1A31FB29C(v2, v8);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = swift_allocObject();
  sub_1A31FB300(v8, v28 + v27);
  v42 = v23;
  *v43 = v26;
  *&v43[8] = v35;
  *&v43[24] = v34;
  v44 = 256;
  v45 = v40;
  v46 = v41;
  v47 = sub_1A31FBB34;
  v48 = 0;
  v49 = sub_1A31FBCD4;
  v50 = v28;
  v29 = v2 + v5[5];
  v30 = *(v29 + 16);
  v38 = *v29;
  v39 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCD20);
  sub_1A34CC740();
  v31 = v36;
  v32 = sub_1A34A81CC(v36);
  MEMORY[0x1EEE9AC00](v32);
  *(&v34 - 2) = v2;
  sub_1A34A86B0(v31, sub_1A34A8B9C, (&v34 - 2), v37);
  sub_1A3288FDC(&v42, &qword_1EB0CCCE8);
  return sub_1A3288FDC(v31, &qword_1EB0CB200);
}

uint64_t sub_1A31FB110()
{
  v1 = type metadata accessor for MonogramSolarium.Container();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A34CA5D0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_1A31ECC9C(*(v0 + v2 + *(v1 + 28)), *(v0 + v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

unint64_t sub_1A31FB248()
{
  result = qword_1ED8544A8;
  if (!qword_1ED8544A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8544A8);
  }

  return result;
}

uint64_t sub_1A31FB29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramSolarium.Container();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A31FB300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramSolarium.Container();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MonogramFakeSolarium.Initials()
{
  result = qword_1ED854560;
  if (!qword_1ED854560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A31FB3C0()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A31FB45C()
{
  result = qword_1ED854578;
  if (!qword_1ED854578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854578);
  }

  return result;
}

uint64_t sub_1A31FB4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MonogramView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BC0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BC8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BD8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = v1[3];
  v15 = v1[5];
  v33 = v1[4];
  v34 = v15;
  v16 = v1[1];
  v30[0] = *v1;
  v30[1] = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v31 = v1[2];
  v32 = v17;
  v20 = v1[5];
  v27 = v33;
  v28 = v20;
  v23 = v19;
  v24 = v18;
  v35 = *(v1 + 12);
  v29 = *(v1 + 12);
  v25 = v31;
  v26 = v14;
  sub_1A31FA9C4(v30, v36);
  sub_1A31FB45C();
  sub_1A34CC1F0();
  v36[4] = v27;
  v36[5] = v28;
  v37 = v29;
  v36[0] = v23;
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v26;
  sub_1A32AC15C(v36);
  sub_1A328D790(v13, v7, &qword_1EB0C5BD8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BE0);
  sub_1A32AC1B0();
  sub_1A32AC26C();
  sub_1A34CB3E0();
  sub_1A328D790(v10, v4, &qword_1EB0C5BD0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5BE8);
  sub_1A32AC358();
  sub_1A32AC3E4();
  sub_1A34CB3E0();
  sub_1A3288FDC(v10, &qword_1EB0C5BD0);
  return sub_1A3288FDC(v13, &qword_1EB0C5BD8);
}

unint64_t sub_1A31FB8AC()
{
  result = qword_1ED8544C0;
  if (!qword_1ED8544C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CCD10);
    sub_1A31FB964();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8544C0);
  }

  return result;
}

unint64_t sub_1A31FB964()
{
  result = qword_1ED854588;
  if (!qword_1ED854588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854588);
  }

  return result;
}

uint64_t sub_1A31FB9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A31FBA1C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

unint64_t sub_1A31FBA1C()
{
  result = qword_1ED854580;
  if (!qword_1ED854580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854580);
  }

  return result;
}

unint64_t sub_1A31FBA74()
{
  result = qword_1ED854590;
  if (!qword_1ED854590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854590);
  }

  return result;
}

unint64_t sub_1A31FBAD0()
{
  result = qword_1ED8544C8;
  if (!qword_1ED8544C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CC218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8544C8);
  }

  return result;
}

uint64_t sub_1A31FBB34@<X0>(void *a1@<X8>)
{
  result = sub_1A34CA7C0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A31FBB60()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1A31FBC5C(v1, v2, v3, v4, v5);
  sub_1A34CC500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCD10);
  sub_1A31FB8AC();
  sub_1A34CC1F0();
  sub_1A32891B0(v1, v2, v3, v4, v5);
}

uint64_t sub_1A31FBC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
    return sub_1A34C9010();
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A31FBC88(uint64_t a1)
{
  v2 = sub_1A31FBA1C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1A31FBCD4()
{
  type metadata accessor for MonogramSolarium.Container();

  return sub_1A31FBD44();
}

uint64_t sub_1A31FBD44()
{
  type metadata accessor for MonogramSolarium.Container();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CCD20);
  return sub_1A34CC750();
}

CGFloat sub_1A31FBDC0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v9 = *v5;
  v10 = *(v5 + 24);
  v16 = *(v5 + 8);
  v17 = v10;
  v18 = *(v5 + 40);
  if (a5 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a5;
  }

  v15.a = 1.0;
  v15.b = 0.0;
  v15.c = 0.0;
  v15.d = 1.0;
  v15.tx = 0.0;
  v15.ty = 0.0;
  CGAffineTransformScale(&v14, &v15, v11 / v9, v11 / v9);
  CGAffineTransformTranslate(&v15, &v14, a2, a3);
  sub_1A34CBCE0();
  result = v14.a;
  v13 = *&v14.c;
  *a1 = *&v14.a;
  *(a1 + 16) = v13;
  *(a1 + 32) = LOBYTE(v14.tx);
  return result;
}

void sub_1A31FC2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _safeImageDataType(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = CGImageSourceGetTypeWithData();
  if (!v2 || ([&unk_1F1646048 containsObject:v2] & 1) == 0)
  {

LABEL_5:
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1A31FD088()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1A34CAAB0();
  }

  else
  {
    sub_1A34CA8D0();
  }

  return sub_1A34CAC30();
}

uint64_t sub_1A31FD0F0()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1A34CAAB0();
    sub_1A34CAC30();
    sub_1A3284EE0();
  }

  else
  {
    sub_1A34CA8D0();
    sub_1A34CAC30();
    sub_1A3284D54(&qword_1EB0C1010, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1A31FD1E4()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1A34CB7A0();

    return sub_1A34CAC30();
  }

  else
  {
    sub_1A34CAD90();
    swift_getWitnessTable();
    sub_1A34CB4E0();
    sub_1A34CAC30();
    sub_1A34CD890();
    swift_getWitnessTable();
    sub_1A34CAD90();
    swift_getWitnessTable();
    sub_1A34CB4E0();
    return sub_1A34CAC30();
  }
}

uint64_t sub_1A31FD348()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1A34CB7A0();
    sub_1A34CAC30();
  }

  else
  {
    sub_1A34CAD90();
    swift_getWitnessTable();
    sub_1A34CB4E0();
    sub_1A34CAC30();
    sub_1A34CD890();
    swift_getWitnessTable();
    sub_1A34CAD90();
    swift_getWitnessTable();
    sub_1A34CB4E0();
    sub_1A34CAC30();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1A31FD580@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A31FD5C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A34CD110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A31FD5F8(uint64_t a1, int a2)
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

uint64_t sub_1A31FD618(uint64_t result, int a2, int a3)
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

uint64_t sub_1A31FD674(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A31FD730(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A31FD82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 8);
    if (v4 > 4)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A31FD8E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A31FD990()
{

  return swift_deallocObject();
}

uint64_t sub_1A31FD9CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A31FDA9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A31FDADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A31FDB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A31FDC9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A31FDCF8()
{

  return swift_deallocObject();
}

uint64_t sub_1A31FDD38(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C69B0);
  v4 = sub_1A34CD410();
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

uint64_t sub_1A31FDDF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C69B0);
  v6 = sub_1A34CD410();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1A31FDEBC()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A31FDF20()
{
  type metadata accessor for UserInputRequestHandler();
  swift_getWitnessTable();
  sub_1A34CB4F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PendingUserInputRequest();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1A34CB3F0();
  type metadata accessor for SheetOrFullScreenCoverItemModifier();
  sub_1A34CAC30();
  sub_1A34CB3F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A31FE248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactCardConfiguration(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A31FE308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactCardConfiguration(0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A31FE418()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A31FE554()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A31FE5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34CA5D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A31FE67C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34CA5D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A31FE734(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A31FE7F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A31FE8A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C70);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C78);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[10];
      goto LABEL_5;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1A31FEA8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C70);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5C78);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA600);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A31FEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisualIdentityPair(0);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A31FED3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VisualIdentityPair(0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A31FEE38@<X0>(_BYTE *a1@<X8>)
{
  sub_1A32B4C78();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A31FEF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A34CB050();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A31FEF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1A31FF04C@<D0>(uint64_t a1@<X8>)
{
  sub_1A33573BC(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1A31FF09C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5CA0);
  sub_1A32B40FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A31FF114()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F20);
  sub_1A3284D0C(&qword_1EB0C5F28, &qword_1EB0C5F18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA450);
  sub_1A34CADD0();
  sub_1A32B52CC(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A31FF2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A31FF34C()
{
  sub_1A34CC8A0();
  sub_1A34CB970();
  sub_1A34CAC30();
  sub_1A34CB6F0();
  sub_1A34CAC30();
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F40);
  swift_getWitnessTable();
  sub_1A32BB0A0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1A32BB0A0(&unk_1EB0C0708, MEMORY[0x1E6980270]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C5F48);
  sub_1A32BB0E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A32BB1DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A31FF698@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_1EB0EDA90;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A31FF6F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_1EB0EDA90;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1A31FF758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 33);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A31FF80C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 33) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5FB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A31FF8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A34C9F60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A31FF978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A34C9F60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A31FFA48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A31FFA88()
{

  return swift_deallocObject();
}

uint64_t sub_1A31FFAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1A31FFBA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6140);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A31FFC88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A34C9FB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A31FFD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A34C9FB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A31FFDE0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A31FFE6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A31FFEB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A31FFEFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A31FFF34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1A31FFFB8@<D0>(_OWORD *a1@<X8>)
{
  sub_1A32C7D90();
  sub_1A34CB0E0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A320000C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A34CB200();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A3200084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A34CB200();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A320027C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A32003BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C62C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6278);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}